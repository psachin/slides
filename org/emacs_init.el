;; emacs_init.el

;;; concat all paths
(defvar emacs-home "/home/sachin/"
  "Set default emacs home here.")

(defvar emacs-init-dir ".emacs.d/"
  "Set default emacs init directory here.")

(defun home (path &optional emacs repo)
  "Concat home PATH and REPO path."
  (interactive)
  (concat path emacs repo))

;; load auto-complete
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/popup-el"))
(require 'popup)


;; Load seq, required for beacon. (Included in emacs 25)
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/seq.el"))
(require 'seq)

;; load beacon
(load (home emacs-home emacs-init-dir "plugins/beacon/beacon.el"))
(beacon-mode 1)

(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/auto-complete"))
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (home emacs-home emacs-init-dir "plugins/auto-complete/dict"))
(ac-config-default)
(auto-complete-mode t)

;; autopair
(load (home emacs-home emacs-init-dir "plugins/autopair/autopair.el"))
(require 'autopair)
(autopair-global-mode)

;; insert-shebang
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/insert-shebang"))
(require 'insert-shebang)
(add-hook 'find-file-hook 'insert-shebang)

;; ;; network-status
;; (add-to-list 'load-path "/home/sachin/github/network-status/")
;; (require 'network-status)

;; --------------------
;; hide DOT files with M-o
(require 'dired-x)
(setq dired-omit-files "^\\...+$")
(add-hook 'dired-mode-hook
	  (lambda ()
	    ;; Set dired-x buffer-local variables here.  For example:
	    (dired-omit-mode 1)
	    ))


;; ;; ---------- magit ----------
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/magit/"))
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/magit/contrib")) ; contributed libs
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/git-modes"))
(require 'magit)
;;; --------------------

;; ;; paredit
(load (home emacs-home emacs-init-dir "plugins/paredit.el"))
(require 'paredit)
(add-hook 'clojure-mode-hook 'paredit-mode)
;; ;; --------------------


;;; yasnippet
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/yasnippet"))
(require 'yasnippet)
(yas-global-mode 1)
(setq ac-source-yasnippet nil) ;; for C/C++ code to work with autol-complete-mode

;; collection of snippets
(add-to-list 'yas-snippet-dirs "~/.emacs.d/plugins/yasnippet/yasnippet-snippets")

;; personal snippets
(setq yas-snippet-dirs (append yas-snippet-dirs
			       '( "~/.emacs.d/plugins/yasnippet/snippets")))


;; ;; --------------------

;; ;; slime
;; (add-to-list 'load-path "/home/sachin/cvs/slime/")
;; (setq inferior-lisp-program "/usr/bin/sbcl")
;; (add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
;; (require 'slime)
;; (slime-setup)



;;; Display full pathname for files.
(add-hook 'find-file-hooks
          '(lambda ()
             (setq mode-line-buffer-identification 'buffer-file-truename)))


;; ;; google-contacts
;; (load-file (home emacs-home emacs-init-dir "plugins/oauth2-0.9.el"))
;; (require 'oauth2)
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/google-contacts/"))
;; (require 'google-contacts)

;;; enable for all programming modes
(add-hook 'prog-mode-hook 'subword-mode)

;;; multiple-cursors
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/multiple-cursors.el/"))
(require 'multiple-cursors)

;; ;; tea -time
;; ;;(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/tea-time/"))
;; ;; (require 'tea-time)

;; ;; log all the keys
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/command-log-mode/"))
;; (require 'command-log-mode)

;;; python-jedi --------------------------------------------------
;;; Depends on: epc, deferred
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-epc/"))
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-deferred/"))
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-ctable/"))
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-python-environment/"))
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-jedi/"))

(require 'deferred)
(require 'concurrent)
(require 'epc)
(require 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
;; ;; --------------------------------------------------


;; network-status
(add-to-list 'load-path "/home/sachin/github/anaconda-mode/anaconda-mode.el")
;; (require 'anaconda-mode)

;; ;;; org2blog
;; ;; dependencies
;; ;; xml-rpc
(load (home emacs-home emacs-init-dir "plugins/xml-rpc.el"))
(require 'xml-rpc)

(add-to-list 'load-path "/home/sachin/github/metaweblog.el/")
(require 'metaweblog)

;; ;; org2blog
(setq load-path (cons "/home/sachin/github/org2blog/" load-path))
(load "/home/sachin/github/org2blog/wp-blog-alist") ;for blog entry
(require 'org2blog-autoloads)
;; ---------------------

;; ;;; org-mode 8.2.x
;; ;; org-mode old version is @
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/org-mode/lisp"))
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/org-mode/contrib/list"))
;; (add-to-list 'load-path ()"/plugins/org-mode/lisp")
(add-to-list 'load-path "/home/sachin/github/org-mode/lisp" t)
(add-to-list 'load-path "/home/sachin/github/org-mode/contrib/lisp" t)

;; ;; org-mode source syntax highlighting
;; ;; http://praveen.kumar.in/2012/03/10/org-mode-latex-and-minted-syntax-highlighting/
(require 'ox-latex)
;; (add-to-list 'org-latex-classes
;;              '("beamer"
;;                "\\documentclass\[presentation\]\{beamer\}"
;;                ("\\section\{%s\}" . "\\section*\{%s\}")
;;                ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
;;                ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))
;; (require 'ox-beamer)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)
(setq org-src-fontify-natively t)
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))


;; ;; extending support for other languages so that we can execute them
;; ;; in org mode
;; ;; http://www.johndcook.com/blog/2012/02/09/python-org-mode/
(org-babel-do-load-languages
 'org-babel-load-languages '((python . t)
			     (R . t)
			     (shell . t)
			     (awk . t)
			     (clojure . t)
			     (emacs-lisp . t)))

;; ;; for octopress
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/orgmode-octopress/"))
;; (require 'org-octopress)

;; ;; org-reveal
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/org-reveal/"))
;; (require 'ox-reveal)
;; ;; for reveal.js
;; (setq org-reveal-root "/home/sachin/Downloads/reveal.js-2.5.0")



;; ;;; for clojure
;; ;; ac-slime
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/ac-slime/"))
;; (require 'ac-slime)

;;; rainbow-delimiter
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/rainbow-delimiters/"))
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; (global-rainbow-delimiters-mode)

;; ;; markdown-mode
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/markdown-mode/"))
(require 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; ;;; clojure
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/clojure-mode/"))
;; (require 'clojure-mode)
;; ;; clojure cheatsheet (requires 'helm and 'nrepl)
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/clojure-cheatsheet/"))
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/helm/"))
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/nrepl/"))
;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/swank-clojure/"))
;; (require 'helm-config)
;; (require 'nrepl)
;; (require 'clojure-cheatsheet)
;; (require 'clojure-test-mode)
;; ;; (require 'swank-clojure)
;; ;; --------------------

;;; flycheck
;;(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/flycheck/"))
;;(require 'flycheck)

;;; hacker news client for emacs
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/hackernews.el/"))
(require 'hackernews)

;; ;;; benchmarking
;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/benchmark-init-el/"))
;; ;; (require 'benchmark-init)
;; ;; (benchmark-init/install)

;; ;;; Increase emacs loading performance - by jwiegley
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/use-package/"))
;; (require 'use-package)

;; (add-to-list 'load-path "/home/sachin/github/proxy-mode/")
;; (require 'proxy-mode)
;; '(proxy-mode t)

;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/web-mode/"))
;; ;; (require 'web-mode)
;; ;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; ;; smartparens
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/smartparens/"))
;; (require 'smartparens-config)
;; (show-smartparens-global-mode +1)

;;; --------------------
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-ac-ispell/"))
(require 'ac-ispell)

(custom-set-variables
 '(ac-ispell-requires 4))

(eval-after-load "auto-complete"
  '(progn
     (ac-ispell-setup)))

(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setup)
(add-hook 'org-mode-hook 'ac-ispell-ac-setup)
;; ;; --------------------

;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/pylookup/"))
;; (eval-when-compile (require 'pylookup))


;; (setq pylookup-program (concat (home emacs-home emacs-init-dir "plugins/pylookup/") "pylookup.py"))
;; (setq pylookup-db-file (concat (home emacs-home emacs-init-dir "plugins/pylookup/") "pylookup.db"))

;; ;; set search option if you want
;; ;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

;; ;; to speedup, just load it on demand
;; (autoload 'pylookup-lookup "pylookup"
;;     "Lookup SEARCH-TERM in the Python HTML indexes." t)

;; (autoload 'pylookup-update "pylookup"
;;     "Run pylookup-update and create the database at `pylookup-db-file'." t)

(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/python-pep8/"))
(require 'python-pep8)

;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/haskell-mode/"))
;; (require 'haskell-mode-autoloads)
;; (add-to-list 'Info-default-directory-list (home emacs-home emacs-init-dir "plugins/haskell-mode/"))
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; ;; Haskell specifig settings (please visit
;; ;; https://github.com/nominolo/scion for install/configure
;; ;; instructions)
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/scion/emacs"))
;; (require 'scion)

;; (setq scion-program "/home/sachin/.cabal/bin/scion-server")

;; (defun my-haskell-hook ()
;;   ;; Whenever we open a file in Haskell mode, also activate Scion
;;   (scion-mode 1)
;;   ;; Whenever a file is saved, immediately type check it and
;;   ;; highlight errors/warnings in the source.
;;   (scion-flycheck-on-save 1))
;; (add-hook 'haskell-mode-hook 'my-haskell-hook)

;; ;; Use ido-mode completion (matches anywhere, not just beginning)
;; ;;
;; ;; WARNING: This causes some versions of Emacs to fail so badly
;; ;; that Emacs needs to be restarted.
;; (setq scion-completing-read-function 'ido-completing-read)

;; ;;; config for ipython-notebook

;; ;; emacs-websocket
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-websocket/"))
;; (require 'websocket)

;; ;; emacs-request
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-request/"))
;; (require 'request)

;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-ipython-notebook/lisp/"))
;; (require 'ein)

;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/w3-4.0.49/"))
;; (require 'w3)

;; ;; ;; powerline
;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-powerline/"))
;; ;; (require 'cl)
;; ;; (require 'powerline)

;; ;; (setq powerline-arrow-shape 'arrow) ;; best for small fonts

;; ;; (custom-set-faces
;; ;;  '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
;; ;;  '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;; ;; (setq powerline-color1 "grey22")
;; ;; (setq powerline-color2 "grey35")

;; ;; --------------------
;; ;;; milkpostman poweline
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/powerline/"))
;; (require 'powerline)
;; (powerline-default-theme)

;;; flyspell
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/flyspell/"))
(add-hook 'text-mode-hook 'turn-on-flyspell)

;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-color-theme-solarized/"))
;; ;; (require 'color-theme-solarized)

(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/hidepw/"))
(require 'hidepw)
(add-to-list 'auto-mode-alist
	     '("\\.gpg\\'" . (lambda () (hidepw-mode))))

;; ;; cider for clojure
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/cider/"))
;; (require 'cider)

;; ;; auto complete for clang
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/auto-complete-clang/"))
;; (require 'auto-complete-clang)


;; ;;; Setup for o-blog
;; (load (home emacs-home emacs-init-dir "plugins/htmlize-1.39.el"))
;; (require 'htmlize)

;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/o-blog/"))
;; (require 'o-blog)
;; ;;; Setup for o-blog ends here.

;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/helm/"))
;; (require 'helm-config)

(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/nyan-mode/"))
(require 'nyan-mode)

;; (load (home emacs-home emacs-init-dir "plugins/uniquify.el"))
;; (require 'uniquify)

;; ;; (load (home emacs-home emacs-init-dir "plugins/appt.el"))
;; ;; (require 'appt)
;; ;; (setq appt-message-warning-time 0)	;0 mmin before warning
;; ;; (setq dairy-file "~/dairy")		;dairy file

;; ;; Android mode
;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/android-mode/"))
;; (require 'android-mode)
;; (custom-set-variables '(android-mode-sdk-dir "/home/sachin/Downloads/adt-bundle-linux-x86-20131030/sdk"))

(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/undo-tree/"))
(require 'undo-tree)

(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/company-mode/"))
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; ;; --- js plugin ---
;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/js2-mode/"))
;; ;; (require 'js2-mode)
;; ;; (add-hook 'js-mode-hook 'js2-minor-mode)

;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/skewer-mode/"))
;; ;; ;; (require 'skewer-mode) ;; Called by ac-js2
;; ;; (add-hook 'js2-mode-hook 'skewer-mode)
;; ;; (add-hook 'css-mode-hook 'skewer-css-mode)
;; ;; (add-hook 'html-mode-hook 'skewer-html-mode)

;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/emacs-web-server/"))
;; ;; (require 'simple-httpd)

;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/ac-js2/"))
;; ;; (require 'ac-js2)
;; ;; (add-hook 'js2-mode-hook 'ac-js2-mode)

;; ;; (setq js2-highlight-level 3)		; Syntax highlighting

;; ;; (add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/js2-refactor.el/"))
;; ;; (require 'js2-refactor)
;; ;; ------

;; (if (file-exists-p "/usr/bin/soffice")
;;     (setq org-export-odt-convert-processes
;; 	  "/usr/bin/soffice --headless --convert-to %f%x --outdir %d %i"
;; 	  org-export-odt-preferred-output-format "odt"
;; 	  org-export-odt-convert-process "/usr/bin/soffice")
;;   (message "SOFFICE path not found"))

;; fold-this
(add-to-list 'load-path "/home/sachin/github/fold-this.el")
(require 'fold-this)

;; Git timemachine
(add-to-list 'load-path "/home/sachin/github/git-timemachine")
(require 'git-timemachine)

;; spinner
(add-to-list 'load-path (home emacs-home emacs-init-dir "plugins/spinner.el"))
(require 'spinner)
(spinner-start 'vertical-breathing 20)
;; (spinner-start 'minibox)
;; (spinner-start 'moon)
;; (spinner-start 'triangle)

(provide 'emacs_init)
