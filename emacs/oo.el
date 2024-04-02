; -*- coding: utf-8 -*-
; Name: oo.el
; Time-stamp: <2024-03-25 13:25:26 sergio>

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
      (end-of-line) (delete-backward-char 1))
    (goto-char eol) (insert (format "%d" i)))))

;; ======== M A I N :
(let ((apo (getenv "apostro")) ap)
;  (message "apo==/%s/\n" apo)
  (cond
   ((equal apo "a") (setq ap "'"))
   ((equal apo "q") (setq ap "’"))
   ((equal apo "u") (setq ap "ʼ"))
   (t (error "Wrong APO: |%s|\n" apo)))
;   (message "apo==|%s|, ap==|%s|\n" apo ap)
   (goto-char (point-min))
   (while (re-search-forward "´\\|\\^'" nil t) (replace-match ap)))
; (message "arg = " )

(goto-char (point-min))
(delete-region (point-min)
	       (progn
		 (re-search-forward "^prefixes$")
		 (match-end 0)))

(while (re-search-forward "#.*$" nil t) (replace-match ""))

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
(while (re-search-forward "^\\([^>#;]+\\)>-\\([’[:alpha:]]+\\),-;" nil t)
  (replace-match "\\2 0 \\1;"))
(goto-char (point-min))
(while (re-search-forward
	"^\\([^>;#]+\\)>-\\([’[:alpha:]]+\\),\\([^->,;#]+\\);" nil t)
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
