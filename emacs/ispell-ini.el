; -*- coding: utf-8-unix -*-
(setq ispell-local-dictionary-alist
      (list
       (list "eo"
         (encode-coding-string "[-'A-Za-z\\{}ĈĉĜĝĤĥĴĵŜŝŬŭäöüßÄÖÜàáâçèéêëìíîïıñòóôşùúûżÀÁÂÇÈÉÊËÌÍÎÏİÑÒÓÔŞÙÚÛŻ]" 'latin-3)
         (encode-coding-string "[^-'A-Za-z\\{}ĈĉĜĝĤĥĴĵŜŝŬŭäöüßÄÖÜàáâçèéêëìíîïıñòóôşùúûżÀÁÂÇÈÉÊËÌÍÎÏİÑÒÓÔŞÙÚÛŻ]" 'latin-3)
         "" t '("-d" "eo") "~latin3" 'iso-8859-3)

	'("eo-utf8" "[-’[:alpha:]]" "[^-'’[:alpha:]]"
;	'("eo-utf8" "[-’A-Za-zĈĉĜĝĤĥĴĵŜŝŬŭø]" "[^-'’A-Za-zĈĉĜĝĤĥĴĵŜŝŬŭø]"
	 "" t ("-d" "eo") "~utf8" utf-8)

	'("esperanto-utf8"
         "[A-Za-z\xC4\x89\xC4\x9D\xC4\xA5\xC4\xB5\xC5\x9D\xC5\xAD\xC4\x88\xC4\x9C\xC4\xA4\xC4\xB4\xC5\x9C\xC5\xAC\xC3\x81\xC3\xA1\xC3\x84\xC3\xA4\xC3\x87\xC3\xA7\xC3\xA9\xC3\x89\xC3\xB6\xC3\x96\xC3\xB8\xC3\x98\xC3\xBC\xC3\x9C]"
         "[^A-Za-z\xC4\x89\xC4\x9D\xC4\xA5\xC4\xB5\xC5\x9D\xC5\xAD\xC4\x88\xC4\x9C\xC4\xA4\xC4\xB4\xC5\x9C\xC5\xAC\xC3\x81\xC3\xA1\xC3\x84\xC3\xA4\xC3\x87\xC3\xA7\xC3\xA9\xC3\x89\xC3\xB6\xC3\x96\xC3\xB8\xC3\x98\xC3\xBC\xC3\x9C]"
	   "[-']" t ("-C" "-d" "esperanto")
	   "~utf8" utf-8)

	  '("eo-ux"
	   "[A-Za-z'\\]"
	   "[^A-Za-z'\\]"
	   "-" nil ("-d" "eo") "~cxirkaux")

	  '("esperanto"			; TeX
	   "[A-Za-z^\\]" "[^A-Za-z^\\]"
	   "[-'^`\"]" t ("-C") "~tex")

	  '("esperanto-l3"
	   "[A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376]"
	   "[^A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376]"
	   "[-'\\{}]" t ("-C" "-d" "esperanto") "~latin3" iso-8859-3)

	  '("esperanto-cxirkaux"
	   "[A-Za-z]" "[^A-Za-z]"
	   "[-']" t ("-C" "-d" "esperanto") "~cxirkaux")
))
(setq  ispell-menu-map-needed t
       ispell-menu-map nil)
(load "ispell")  ; reload ISPELL 

(global-set-key "\C-ci3"
                (lambda (permissive) "set Esperanto dictionary"
                  (interactive "P") 
;                 (ispell-change-dictionary "esperanto")
                  (ispell-change-dictionary
		   (if permissive "esperanto-l3" "eo-latin3"))
;                 (setq diction-ruleset "eo")
))
(global-set-key "\C-ci8"
                (lambda () "set Esperanto dictionary (UTF-8)"
                  (interactive)
                  (ispell-change-dictionary "eo-utf8")
))
(global-set-key "\C-ciu"
                (lambda (permissive) "set cxirkaux dictionary"
                  (interactive "P") 
                  (ispell-change-dictionary
		   (if permissive "esperanto-ux" "eo-ux"))
))
(global-set-key "\C-cia"
                (lambda () "set English dictionary"
                  (interactive)
                  (ispell-change-dictionary "english")
                  (setq diction-ruleset "en")
))
(global-set-key "\C-cip"
                (lambda () "set Russian dictionary"
                  (interactive)
                  (ispell-change-dictionary "russian")
))
;for easy switching between English, Russian and Esperanto.

;And some other short-cuts:
(global-set-key "\C-cib" 'ispell-buffer)
(global-set-key "\C-cic" 'ispell-change-dictionary)
(global-set-key "\C-cim" 'ispell-message)
(global-set-key "\C-cir" 'ispell-region)
(global-set-key "\C-ciw" 'ispell-complete-word)
(global-set-key "\C-ciy" 'flyspell-mode)

(autoload 'flyspell-mode "flyspell" "On-the-fly ispell." t)
