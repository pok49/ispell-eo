; -*- coding: utf-8 -*-
; Name: oo.el
; Time-stamp: <2024-01-13 23:58:50 sergio>

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

;; ======== M A I N :
;(defun oo ()
;(interactive)
(goto-char (point-min))
(delete-region (point-min)
	       (progn
		 (re-search-forward "^prefixes$")
		 (match-end 0)))

(while (re-search-forward "#.*$" nil t) (replace-match ""))

(goto-char (point-min))
(while (search-forward "^'" nil t) (replace-match "’"))

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
(setq buffer-file-coding-system 'utf-8-unix)
(goto-char (point-min))
(insert "SET utf-8
NAME		esperanto
VERSION		4.2
HOME		https://github.com/pok49/ispell-eo
AUTHOR		Sergio Pokrovskij
EMAIL		sergio.pokrovskij(ĉe)gmail(punkto)com
COPYRIGHT	GPL 2.0
#
MIDWORD -
RARE ?
BAD !
#
REP 8
REP cx c
REP gx ĝ
REP hx ĥ
REP jx ĵ
REP sx ŝ
REP ux ŭ
REP rn m
REP m rn
#
MAP 7
MAP cĉê
MAP gĝ
MAP hĥ
MAP jĵ
MAP sŝ
MAP uŭwù
MAP Iilt
#\n")
;)	;=== defun oo)

; --- oo.el ends here
