; -*- coding: utf-8 -*-
;-------- Checked with ispell.el v. 22.1 & Emacs v. 27.1 in Linux Mint 21.3:
(require 'ispell)
(defconst ispell-letter-apostrophe "ʼ")
(defconst ispell-right-quote "’")

; (defcustom ispell-apostrophe ispell-right-quote
;   "Choose the character to represent apostrophe in corrections at \"epo\" spell-check. There are 2 options:
; - “Right quote” is \"single right quotation mark\" ’ (U+2019).
; - “Letter apostrophe” is ʼ (U+02BC)."
;   :type '(choice (const :tag "right quote" ispell-right-quote)
;                  (other :tag "letter apostrophe" ispell-letter-apostrophe))
;   :group 'ispell)

(defvar ispell-apostrophe ispell-right-quote
"The character to represent apostrophe in corrections at \"epo\" spell-check. There are 2 options:
 - “Right quote” is \"single right quotation mark\" ’ (U+2019).
 - “Letter apostrophe” is ʼ (U+02BC).
To change its value please use the function ‘ispell-set-apostrophe’.")

(defun ispell-set-apostrophe (&optional which)
  "Sets ‘ispell-apostrophe’.
If prefixed with 1, set it to letter-apostrophe ʼ (single unpaired sign).
If prefixed with 1, set it to right quote ’ (the 2nd of the paired quotes).
Without prefix, toggle between them."
  (interactive "N")
  (setq ispell-apostrophe
        (cond
         ((= which 1) ispell-letter-apostrophe)
         ((= which 2) ispell-right-quote)
         (t (if (equal ispell-apostrophe ispell-right-quote)
                ispell-letter-apostrophe
              ispell-right-quote))))
  (message "ispell-apostrophe is set to %s" ispell-apostrophe))

(setq ispell-local-dictionary-alist
      '(("eo"
         "[A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376'\301\304\307\311\326\334\341\344\347\351\366\374]"
         "[^A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376'\301\304\307\311\326\334\341\344\347\351\366\374]"
         "[-]" nil ("-d" "eo") "~latin3" iso-8859-3)

        ("epo"
         "[A-Za-zĜĈŬŜĴĤĝĉŭhŝĵĥʼ’ÀÁÂàáâÄäÇçĊċÈÉÊËèéêëĞğĠġĦħÌÍÎÏİìíîïıÑñÒÓÔÖòóôöŞşÙÚÛÜùúûüßŻż]"
         "[^A-Za-zĜĈŬŜĴĤĝĉŭhŝĵĥʼ’ÀÁÂàáâÄäÇçĊċÈÉÊËèéêëĞğĠġĦħÌÍÎÏİìíîïıÑñÒÓÔÖòóôöŞşÙÚÛÜùúûüßŻż]"
         "[-'’]" nil ("-d" "eo") "~epo" iso-8859-3)

	 ("eo-x"
	   "[A-Za-z'\\]" "[^A-Za-z'\\]"
	   "[-]" nil ("-d" "eo") "~cxirkaux")

	 ("esperanto-x"
	   "[A-Za-z']" "[^A-Za-z']"
	   "[-]" nil ("-C" "-d" "esperanto") "~cxirkaux")))

(setq  ispell-menu-map-needed t
       ispell-menu-map nil)
; (load "ispell")  ; reload ISPELL 

(defun eo3spell (&optional apo)
  "Set Esperanto dictionary. With ‘C-u’, use a curly apostrophe.
(See the ‘ispell-apostrophe’ variable)."
   (interactive "P") 
   (ispell-change-dictionary (if apo "epo" "eo")))

(global-set-key "\C-ci3" 'eo3spell)

(global-set-key "\C-cix"
  (lambda (&optional permissive) "Set Eo-cxirkaux dictionary"
    (interactive "P")
    (ispell-change-dictionary (if permissive "esperanto-x" "eo-x"))))

(global-set-key "\C-cia"
		(lambda () "set English dictionary"
		  (interactive)
		  (ispell-change-dictionary "american")
		  (setq diction-ruleset "en")))
(global-set-key "\C-cif"
		(lambda () "set French dictionary (Latin-1)"
		  (interactive)
		  (ispell-change-dictionary "francais")))
(global-set-key "\C-cip"
		(lambda () "set Russian dictionary"
		  (interactive)
		  (ispell-change-dictionary "russian")))
;for easy switching between English, Russian and Esperanto.

;And some other short-cuts:
(global-set-key "\C-cib" 'ispell-buffer)
(global-set-key "\C-cic" 'ispell-change-dictionary)
(global-set-key "\C-cim" 'ispell-message)
(global-set-key "\C-cir" 'ispell-region)
(global-set-key "\C-ciw" 'ispell-complete-word)
(global-set-key "\C-ciy" 'flyspell-mode)

(autoload 'flyspell-mode "flyspell" "On-the-fly ispell." t)

; -------------- The Quotes:
(defun insert-guillemets (&optional start end)
  "Make a pair of « quotes » and be positioned to type inside of them."
  (interactive "r")
  (if (use-region-p)
      (progn (goto-char end) (insert ?») (goto-char start) (insert ?«))
    (progn (insert "«»") (backward-char))))

(defun insert-99-66 (&optional start end)
  "Make a pair of 99-66 quotes and be positioned to type inside of them."
  (interactive "r")
  (if (use-region-p)
      (progn (goto-char end) (insert ?“) (goto-char start) (insert ?„))
    (progn (insert "„“") (backward-char))))

(defun insert-66-99 (&optional start end)
  "Make a pair of 66-99 quotes and be positioned to type inside of them."
  (interactive "r")
  (if (use-region-p)
      (progn (goto-char end) (insert ?”) (goto-char start) (insert ?“))
    (progn (insert "“”") (backward-char))))

(defun insert-<> (&optional start end)
  "Make a pair of ‹ quotes › and be positioned to type inside of them."
  (interactive "r")
  (if (use-region-p)
      (progn (goto-char end) (insert ?›) (goto-char start) (insert ?‹))
    (progn (insert "‹›") (backward-char))))

(defun ispell-insert-apostrophe ()
  "Insert a curly apostrophe according to ‘ispell-apostrophe’"
  (interactive)
  (insert ispell-apostrophe))

(global-set-key "\C-c\"" 'insert-guillemets)
(global-set-key "\C-c9" 'insert-99-66)
(global-set-key "\C-c6" 'insert-66-99)
(global-set-key "\C-c<" 'insert-<>)
(global-set-key "\C-ci'" 'ispell-insert-apostrophe)


; --------------- Based on “Ispell and Apostrophes”
; [http://endlessparentheses.com/ispell-and-apostrophes.html]
; by Artur Malabarba (for Emacs 24.4 or newer):

;;; Don't send ‹ʼ› to the subprocess.
(defun iconv-apostrophe (args)
  (cond
   ((equal ispell-current-dictionary "epo")
    (cons (replace-regexp-in-string "[ʼ’]" "´" (car args))
          (cdr args)))
   (t args)))
(advice-add #'ispell-send-string :filter-args #'iconv-apostrophe)

;;; Convert ‹´› back to ‹ʼ› from the subprocess.
(defun oconv-apostrophe (args)
  (cons (replace-regexp-in-string
         "´\\|^'"
         ispell-apostrophe
         (car args))
        (cdr args)))
(advice-add #'ispell-parse-output :filter-args #'oconv-apostrophe)




