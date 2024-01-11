;;; plus-word.el --- completing Ispell dictionary

(require 'ispell)

(defvar ispell-root
  "$HOME/Git/ispell-eo"
; (expand-file-name (concat (file-name-directory (buffer-file-name nil)) "/.."))
  "*Where the source of your ispell dictionary lives")

(defun +word (&optional quietly continue)
  "Try to guess where the word under or before the cursor should be placed
in the source dictionary database.  Try to guess the radix and find the
occurrences thereof.

With a prefix argument (or if CONTINUE is non-nil),
resume interrupted treatment of a buffer or region.

This will check or reload the dictionary.  Use \\[ispell-change-dictionary]
or \\[ispell-region] to update the Ispell process.
"
  (interactive (list nil current-prefix-arg))
  (if continue
      (ispell-continue)
    (if (interactive-p)
	(setq following ispell-following-word
	      quietly ispell-quietly))
    (ispell-accept-buffer-local-defs)	; use the correct dictionary
    (let ((cursor-location (point))	; retain cursor location
	  (word (ispell-get-word t))
	  start end poss new-word)
      ;; De-structure return word info list.
      (setq start (car (cdr word))
	    end (car (cdr (cdr word)))
	    word (car word))

      ;; now check spelling of word if it has 2 or more characters.
      (cond
       ((> (length word) 1)
	(ispell-send-string "%\n")	; put in verbose mode
	(ispell-send-string (concat "^" word "\n"))
	;; wait until ispell has processed word
	 (while (progn
		  (ispell-accept-output)
		  (not (string= "" (car ispell-filter)))))
	;;(ispell-send-string "!\n") ;back to terse mode.
	(setq ispell-filter (cdr ispell-filter)) ; remove extra \n
	(if (and ispell-filter (listp ispell-filter))
	    (if (> (length ispell-filter) 1)
		(error "Ispell and its process have different character maps.")
	      (setq poss (ispell-parse-output (car ispell-filter)))))
	(cond ((eq poss t)
	       (or quietly
		   (message "%s jam estas konata"
			    (funcall ispell-format-word word))))
	      ((stringp poss)
	       (or quietly
		   (message "%s deriveblas el %s"
			    (funcall ispell-format-word word)
			    (funcall ispell-format-word poss))))
	      ((null poss) (message "Error in ispell process"))
	      
	      (t			; prompt for correct word.
	       (let ((guess (car (cdr (cdr (cdr poss)))))
		     (regulesprimo "\\<"))
;                   (print guess)
;                 (find-file "~/opt-pok/eo/iloj/ispell-nova/eo/vortoj.l3")
                 (find-file (concat ispell-root "/src/vortoj.l3"))
		 (cond
                  (guess
                   (while (let ((string-i (car guess)))
                            (string-match
                             "\\([^+-]+\\+\\)?\\(\\w\\w+\\)\\(-\\w+\\)?\\+[^+]+$"
                             string-i)
                            (setq regulesprimo
                                  (concat regulesprimo
                                          (match-string 2 string-i)
                                          "\\>"))
                            (setq guess (cdr guess)))
                     (setq regulesprimo (concat regulesprimo "\\|\\<")))
;                       (goto-char (point-min))
                   (occur (downcase regulesprimo))
                   (switch-to-buffer "*Occur*"))
                  ((null guess)
;                     (let ((regulesprimo (concat "\\<" word))
                     (let ((sercxesprimo (concat "\t" (downcase word)))
                           (n (+ 2 (length word))))
                       (kill-new (format "=\t%s/\n" word))
                       (while
                           (progn
                             (goto-char (point-min))
                             (and
                              (> (setq n (1- n)) 1)
                              (null (search-forward
                                     (substring sercxesprimo 0 n)
                                     nil t)))))
                       (beginning-of-line))))))))))))

(defun provu ()
  "Try derivations from the current line (typically from vortoj.l3)"
  (interactive)
  (let ((cxeno
	 (buffer-substring (line-beginning-position) (line-end-position)))
	(coding-system-for-write 'iso-8859-3))
    (when (string-match "\\\\" cxeno)
      (setq cxeno (replace-match "\\\\134" nil t cxeno)))
    (when (string-match "`" cxeno)
      (setq cxeno (replace-match "\\\\140" nil t cxeno)))
;    (message (format "%s/tools/pr3 \"%s\"" ispell-root cxeno))
    (shell-command
     (format "%s/tools/pr3 \"%s\"" ispell-root cxeno))))
       

(global-set-key [f12] '+word)
(global-set-key [M-f12] 'provu)

(provide 'plus-word)
