;-------- ISPELL:
(setq ispell-local-dictionary-alist
      '(
        ("eo"
         "[A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376'\301\304\307\311\326\334\341\344\347\351\366\374]"
         "[^A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376'\301\304\307\311\326\334\341\344\347\351\366\374]"
         "[-]" t ("-d" "eo") "~latin3" iso-8859-3)

        ("epo"
         "[A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376\264\301\304\307\311\326\334\341\344\347\351\366\374]"
         "[^A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376\264\301\304\307\311\326\334\341\344\347\351\366\374]"
         "[-]" t ("-d" "eo") "~latin3a" iso-8859-3)

	 ("eo-x"
	   "[A-Za-z'\\]"
	   "[^A-Za-z'\\]"
	   "[-]" nil ("-d" "eo") "~cxirkaux")

	 ("esperanto-x"
	   "[A-Za-z']" "[^A-Za-z']"
	   "[-]" t ("-C" "-d" "esperanto") "~cxirkaux")))

(setq  ispell-menu-map-needed t
       ispell-menu-map nil)
(load "ispell")  ; reload ISPELL 

(defun eo3spell (&optional apo)
  "Set Esperanto dictionary. C-u makes ´ (xB4, acute accent) the apostrophe letter."
   (interactive "P") 
   (ispell-change-dictionary (if apo "eo" "epo")))

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
