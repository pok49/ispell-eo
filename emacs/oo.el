; -*- coding: utf-8 -*-
; Name: oo.el
; Time-stamp: <2024-04-12 10:45:36 sergio>

; A script to transform eo.aff file (in latin-3) for use with myspell
; for OpenOffice.  Called from `make OO`.

(setq buffer-file-coding-system 'utf-8-unix)

(defun a-fix (pre-suf)
(while (re-search-forward "#\\(\\*\\)?\\(.\\):$" (point-max) t)
  (let ((ast (if (match-string 1) ?Y ?N))
	(sym (elt (match-string 2) 0))
	(i 0)
	eol)
    (replace-match (format "%s %c %c " pre-suf sym ast))
    (setq eol (point))
    (while (progn (forward-char) (looking-at "^\\([^;#]+\\);"))
      (setq i (1+ i))
      (beginning-of-line)
      (insert (format "%s %c " pre-suf sym))
      (end-of-line) (delete-char -1))
    (goto-char eol) (insert (format "%d" i)))))

;; ======== M A I N :
(goto-char (point-min))
(delete-region (point-min)
	       (progn
		 (re-search-forward "^prefixes$")
		 (match-end 0)))
(while (re-search-forward "#.*$" nil t) (replace-match ""))

;; -------- Triobligo de la apostrofoj:
(let ((apo (getenv "apostro")) (n 0) (app (make-string 3 ?Ø t)))
  (message "apo==/%s/\n" apo)
  (when (string-match "a" apo) (aset app n ?') (setq n (1+ n)))
  (when (string-match "q" apo) (aset app n ?’) (setq n (1+ n)))
  (when (string-match "u" apo) (aset app n ?ʼ) (setq n (1+ n)))

  (cond
   ((= n 1)
    (goto-char (point-min))
    (while (re-search-forward "´\\|\\^'" nil t)
      (replace-match (substring app 0 1))))
   ((> n 1)
    (goto-char (point-max))
    (while (search-backward "^'" nil t)
      (let (start0 end0 (kill-whole-line t))
        (beginning-of-line) (setq start0 (point))
        (beginning-of-line 2) (setq end0 (point))
        (copy-region-as-kill start0 end0)
        (while (search-backward "^'" start0 t)
          (replace-match (substring app 0 1)))
        (goto-char start0) (yank)
        (while (search-backward "^'" start0 t)
          (replace-match (substring app 1 2)))
        (goto-char start0)
        (when (= n 3)
          (yank)
          (while (search-backward "^'" start0 t)
            (replace-match (substring app 2 3)))
          (goto-char start0)))))
   (t (error "Wrong APO: |%s|\n" apo))))
;; Backslah flag causes trouble:
(goto-char (point-min))
(while (search-forward "flag *\\\\:" nil t) (replace-match "flag *÷:"))

(goto-char (point-min))
(while (re-search-forward "^flag +" nil t) (replace-match "#"))
;(goto-char (point-max)) (insert "##\n")
(goto-char (point-min))
(while (re-search-forward "\\s-" nil t) (delete-horizontal-space))
(goto-char (point-min))
(while (re-search-forward "^ *
+" (point-max) t) (replace-match ""))

(goto-char (point-min))
(while (re-search-forward "^.+>.+$" nil t)
  (downcase-region (match-beginning 0) (match-end 0))
  (insert ";"))

(goto-char (point-min))
(while (re-search-forward "^\\([^>#;]+\\)>-\\(['’[:alpha:]]+\\),-;" nil t)
  (replace-match "\\2 0 \\1;"))
(goto-char (point-min))
(while (re-search-forward
	"^\\([^>;#]+\\)>-\\(['’[:alpha:]]+\\),\\([^->,;#]+\\);" nil t)
  (replace-match "\\2 \\3 \\1;"))
(goto-char (point-min))
(while (re-search-forward "^\\([^>;#]+\\)>\\([^>;,#]+\\);" nil t)
  (replace-match "0 \\2 \\1;"))

(goto-char (point-min))
(while (re-search-forward "\\\\\\(.\\)" nil t)
  (replace-match "\\1" ))		; \[, \\, \-
(goto-char (point-min))
(while (search-forward "\\" nil t) (replace-match "!" ))

(goto-char (point-min))
(re-search-forward "^suffixes$")
(narrow-to-region (point-min) (point))
(goto-char (point-min))
(a-fix "PFX")
(widen)
(a-fix "SFX")
(goto-char (point-min))
(while (search-forward "!" (point-max) t) (replace-match "\\\\" nil))
(re-search-forward "^suffixes$")
(delete-region (match-beginning 0) (match-end 0))
(goto-char (point-min))

; --- oo.el ends here
