; -*- coding: latin-3 -*-
; Name: oo.el
; Time-stamp: <2003-11-01 17:10:48 sergei>

; A script to transform eo.aff file (in latin-3) for use with myspell
; for OpenOffice.  Called from `make OO`.

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

; ======== M A I N :
; (defun oo ()
; (interactive)
(goto-char (point-min))


(delete-region (point-min)
	       (progn
		 (re-search-forward "^prefixes$")
		 (match-end 0)))

(while (re-search-forward "#.*$" (point-max) t) (replace-match ""))

(goto-char (point-min))
(while (re-search-forward "^flag +" (point-max) t) (replace-match "#"))
;(goto-char (point-max)) (insert "##\n")
(goto-char (point-min))
(while (re-search-forward "\\s-" (point-max) t)
  (delete-horizontal-space))
(goto-char (point-min))
(while (re-search-forward "^ *
+" (point-max) t) (replace-match ""))

(goto-char (point-min))
(while (re-search-forward "^.+>.+$" (point-max) t)
  (downcase-region (match-beginning 0) (match-end 0))
  (insert ";"))

(goto-char (point-min))
(while (re-search-forward "^\\([^>#;]+\\)>-\\(\\w+\\),-;" (point-max) t)
  (replace-match "\\2 0 \\1;"))
(goto-char (point-min))
(while (re-search-forward
	"^\\([^>;#]+\\)>-\\(\\w+\\),\\([^->,;#]+\\);" (point-max) t)
  (replace-match "\\2 \\3 \\1;"))
(goto-char (point-min))
(while (re-search-forward "^\\([^>;#]+\\)>\\([^>;,#]+\\);" (point-max) t)
  (replace-match "0 \\2 \\1;"))

(goto-char (point-min))
(while (re-search-forward "\\\\\\(.\\)" (point-max) t)
  (replace-match "\\1" ))		; \[, \\, \-
(goto-char (point-min))
(while (search-forward "\\" (point-max) t) (replace-match "!" ))

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
(insert "SET ISO8859-3
TRY oaeinsrltkumvjdpbægfcøAýKMzNhþSPLDUIVJOTEFHB¼ÆRÞCØZ¶G¬¦ÝyqxwWQYXüÜéöÖçäáß
REP 8
REP c æ
REP g ø
REP h ¶
REP j ¼
REP s þ
REP u ý
REP w ý
REP ù ý
\n")

;)	;=== defun oo)

; --- oo.el ends here
