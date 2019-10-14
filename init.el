;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  EMACS CONFIGURATION   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq user (getenv "USER"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                PACKAGE.EL                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate installed packages with elpa
(package-initialize)

;; Add other source of packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                GENERAL                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; utf-8 used ?
(setq locale-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;;copy file name path
(defun my-put-file-name-on-clipboard ()
  "Put the current file name on the clipboard"
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (concat (buffer-file-name)) )))
    (when filename
      (with-temp-buffer
        (insert filename)
        (clipboard-kill-region (point-min) (point-max)))
      (message filename))))

(global-set-key "\C-x9" 'my-put-file-name-on-clipboard)

;; Rename a buffer
(global-set-key "\C-cw" 'rename-buffer)

;; Show time in the mode line.
(setq display-time-24hr-format 1)

;; disable parenthesis display delay
(setq show-paren-delay 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#c5c8c6"))
 '(asm-comment-char 59)
 '(beacon-color "#cc6666")
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(dired-garbage-files-regexp
   "\\(?:\\.\\(?:aux\\|bak\\|dvi\\|pyc\\|__pycached__\\|log\\|orig\\|rej\\|toc\\)\\)\\'")
 '(dired-omit-files "__pycache__\\|__init__.py")
 '(display-time-mode t)
 '(fci-rule-color "#373b41")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(flycheck-flake8-error-level-alist
   (quote
    (("^E9.*$" . error)
     ("^F82.*$" . error)
     ("^F83.*$" . error)
     ("^D.*$" . info)
     ("^N.*$" . info)
     ("^W503$"))))
 '(flycheck-flake8rc ".flake8")
 '(flycheck-idle-change-delay 0)
 '(flycheck-python-flake8-executable
   "/home/jpaille/meilleursagents/apps/MediaAPI/.venv/bin/flake8")
 '(frame-background-mode (quote dark))
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "vendors" "static" "node_modules" ".venv")))
 '(grep-save-buffers nil)
 '(ido-create-new-buffer (quote always))
 '(ido-default-file-method (quote selected-window))
 '(ido-everywhere t)
 '(ido-ignore-buffers
   (quote
    ("^((?!fun-apps).)*$" "*Completions*" "*Shell Command Output*" "*Messages*")))
 '(ido-mode (quote both) nil (ido))
 '(ido-show-dot-for-dired nil)
 '(js-indent-level 4)
 '(line-number-mode 1)
 '(mark-even-if-inactive t)
 '(package-selected-packages
   (quote
    (doom-themes js2-mode yaml-mode git-link groovy-mode py-isort auto-complete highlight-quoted diredfl color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized tide terraform-mode rjsx-mode projectile plsql pinentry nodejs-repl magit keychain-environment jedi hackernews format-sql dockerfile-mode docker-tramp company bash-completion autopair yasnippet web-mode pkg-info multiple-cursors markdown-mode flycheck epl proceed)))
 '(safe-local-variable-values
   (quote
    ((pytest-binary . "/home/jpaille/meilleursagents/apps/MarketAPI/.venv/bin/pytest")
     (pytest-binary . "/home/jpaille/meilleursagents/apps/Tools/.venv/bin/pytest")
     (pytest-binary . "/home/jpaille/meilleursagents/apps/MediaAPI/.venv/bin/pytest")
     (pytest-binary . "/home/jpaille/meilleursagents/apps/www/.venv/bin/pytest")
     (pytest-venv-value . "True")
     (pytest-venv-key . "TEST_ACTIVE")
     (pytest-args . "-s -Wignore -vv")
     (jedi:server-args "--virtual-env" "/home/jpaille/meilleursagents/apps/MarketAPI/.venv")
     (jedi:server-args "--virtual-env" "/home/jpaille/meilleursagents/apps/Tools/.venv")
     (jedi:server-args "--virtual-env" "/home/jpaille/meilleursagents/apps/MediaAPI/.venv")
     (jedi:server-args "--virtual-env" "/home/jpaille/meilleursagents/apps/www/.venv"))))
 '(show-paren-mode t)
 '(tab-width 11)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))

;; smooth scrolling
(setq scroll-step 1)

;; '(epa-string ((t (:foreground "red"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-hunk-heading-highlight ((t nil)))
 '(minibuffer-prompt ((t (:foreground "red"))))
 '(web-mode-html-tag-custom-face ((t (:inherit web-mode-warning-face))))
 '(web-mode-html-tag-face ((t (:foreground "red")))))

 ;; '(comint-highlight-prompt ((t (:inherit dired-flangged))))

 ;; '(custom-link ((t (:inherit change-log-date))))
 ;; '(custom-visibility ((t (:inherit web-mode-constant-face :height 0.8))))

 ;; '(font-lock-builtin-face ((t (:foreground "blue" :weight bold))))
 ;; '(font-lock-comment-face ((t (:foreground "brown"))))
 ;; '(font-lock-function-name-face ((t (:foreground "magenta" :weight bold))))

 ;; '(hi-blue ((t (:foreground "red" :underline t))))
 ;; '(highlight ((t (:weight bold))))
 ;; '(ido-first-match ((t (:foreground "green" :weight bold))))
;;'(mode-line-inactive ((t (:inherit mode-line :background "color-238" :foreground "#969896" :weight normal))))
;; '(button ((t (:inherit magit-branch))))
;; '(match ((t (:foreground "magenta"))))

 ;; '(diff-added ((t (:inherit diff-changed))))
 ;; '(diff-changed ((t (:foreground "green"))))
 ;; '(diff-header ((t nil)))
 ;; '(diff-removed ((t (:foreground "red"))))
 ;; '(ediff-current-diff-A ((t (:background "white" :foreground "blue3"))))
 ;; '(ediff-current-diff-B ((t (:underline "red"))))
 ;; '(ediff-even-diff-A ((t (:foreground "red3" :weight bold))))
 ;; '(ediff-even-diff-B ((t (:foreground "red3" :weight bold :underline "red"))))

 ;; '(magit-branch ((t (:foreground "LightSkyBlue4"))))
 ;; '(magit-item-highlight ((t (:inherit nil))))
 ;; '(magit-log-head-label-head ((t (:foreground "green" :box 1))))
 ;; '(magit-log-head-label-local ((t (:foreground "LightSkyBlue4" :box 1))))
 ;; '(magit-log-head-label-remote ((t (:foreground "OliveDrab4" :box 1))))
 ;; '(magit-log-head-label-tags ((t (:foreground "green" :box 1))))
 ;; '(magit-tag ((t (:foreground "goldenrod4"))))

;; '(smerge-lower ((t nil)))
;;  '(smerge-markers ((t (:background "red"))))
;;  '(smerge-refined-added ((t (:inherit smerge-refined-change))))
;;  '(smerge-refined-removed ((t nil)))
;;  '(smerge-upper ((t nil)))




;; Hightlight current line.
(global-hl-line-mode t)

;; Highlight region.
(transient-mark-mode 1) ;; ?When enabled, the region is highlighted whenever the mark is active.

;; disable backup
(setq backup-inhibited t)

;;disable auto save
(setq auto-save-default nil)

;; disable lock file system
(setq create-lockfiles nil)

;; disable menu_bar
(menu-bar-mode -1)

;; edit in search bar
(global-set-key (kbd "M-s") 'isearch-edit-string)



;;;;;;;
;;;;;;; whitespace general handling
;;;;;;;

;; Show/delete trailing spaces disable for shell-mode
(setq-default show-trailing-whitespace nil)
(global-set-key [f6] 'delete-trailing-whitespace)

;; show white spaces
(global-set-key (kbd "C-x w") 'whitespace-mode)

;; undo
(global-set-key (kbd "C-w") 'undo)

;; make whitespace-mode use just basic coloring
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

;;;;;;;;;;;

;; short answers
(fset 'yes-or-no-p 'y-or-n-p)

;; navigation shortcuts.
(ffap-bindings)
(global-set-key  (kbd "C-x C-d") 'ffap-other-window)


(defun move_fast_down()
(interactive)
(forward-line 4))

(defun move_fast_up()
(interactive)
(forward-line -4))

(global-set-key  (kbd "M-n") 'move_fast_down)
(global-set-key  (kbd "M-p") 'move_fast_up)
(global-set-key  (kbd "C-q") 'move-beginning-of-line)

(define-key ctl-x-map "\'" 'ctl-x-4-prefix)
(global-set-key (kbd "C-x \' b") 'switch-to-buffer-other-window)
(global-set-key (kbd "C-x \' f") 'find-file-other-window)

;;global-set-key (kbd "C-x \"") 'split-window-horizontally)
;;(global-set-key (kbd "C-x é") 'split-window-vertically)

;;(global-set-key (kbd "C-x à") 'delete-window)
(global-set-key (kbd "ESC <up>") 'enlarge-window)
(global-set-key (kbd "ESC <down>") 'shrink-window)
(global-set-key (kbd "ESC <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "ESC <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-x -") 'beginning-of-buffer)
(global-set-key (kbd "C-x =") 'end-of-buffer)
;;(global-set-key (kbd "M-:") 'dabbrev-expand)
(global-set-key (kbd "C-x l") 'find-file-at-point) ;; shell need to be sync
(global-set-key (kbd "C-x C-f") 'ido-find-file) ;; shell need to be sync
(global-set-key (kbd "C-x c") 'comment-region)
(global-set-key (kbd "C-x v") 'uncomment-region)

(defun go_to_conf()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "C-x <home>") 'go_to_conf)


;; revert buffer
(global-set-key (kbd "<C-f5>") 'revert-buffer)



;; time
(defun now ()
  "Insert string for the current time formatted like '2:34'."
  (interactive)                 ; permit invocation in minibuffer
  (insert (format-time-string "%-I:%M")))

(defun today ()
    "Insert string for today's date nicely formatted in American style,
e.g. Sunday, September 17, 2000."
    (interactive)                 ; permit invocation in minibuffer
    (insert (format-time-string "%A, %B %e, %Y")))
(global-set-key (kbd "C-c t") 'now)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               multiple-cursor                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'multiple-cursors)
(global-set-key (kbd "M-3") 'mc/mark-next-like-this)
(global-set-key (kbd "M-4") 'mc/skip-to-next-like-this)
(global-set-key (kbd "M-5") 'mc/unmark-next-like-this)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               IDO                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ido)
(ido-mode t)
(ido-everywhere t)

;;(setq ido-use-filename-at-point 'guess)

;; create buffer
(setq ido-create-new-buffer 'always)

;; make ido display choices vertically
;;(setq ido-separator "\n")

;; display any item that contains the chars you typed
;;(setq ido-enable-flex-matching t)

;;(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;; (define-key ido-completion-map (kbd "M-n") 'ido-next-match)
;; (define-key ido-completion-map (kbd "M-p") 'ido-prev-match)
;; (define-key ido-completion-map (kbd "C-p") 'ido-prev-work-directory)
;; (define-key ido-completion-map (kbd "C-n") 'ido-next-work-directory))

;;qd-hook 'ido-setup-hook 'ido-define-keys)

;; remove useless buffer from buffer list
(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
			   "*Messages*"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               DIRED                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'dired-load-hook
           (function (lambda ()
                       (load "dired-x")
                       )))
(setq dired-omit-mode t)

(defun dired-dotfiles-toggle ()
  "Show/hide dot-files"
  (interactive)
  (when (equal major-mode 'dired-mode)
    (if (or (not (boundp 'dired-dotfiles-show-p)) dired-dotfiles-show-p) ; if currently showing
	(progn
	  (set (make-local-variable 'dired-dotfiles-show-p) nil)
	  (message "h")
	  (dired-mark-files-regexp "^\\\.")
	  (dired-do-kill-lines))
      (progn (revert-buffer) ; otherwise just revert to re-show
	     (set (make-local-variable 'dired-dotfiles-show-p) t)))))

(global-set-key (kbd "C-x <end>") 'dired-dotfiles-toggle)

(add-hook 'dired-mode-hook 'diredfl-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               BUFFER                                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; buffer listy direct
(global-set-key (kbd "C-x b") 'switch-to-buffer)

;; Only display files
;;(fset 'bufferlistfiles
;;      "\C-xbT")
(global-set-key (kbd "C-x n") 'buffer-menu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                PYTEST                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(load-file "~/.emacs.d/my_packages/ma-pytest.el")
(defun ma-pytest-python-setup ()
  (ma-pytest-minor-mode)
  )

(add-hook 'python-mode-hook 'ma-pytest-python-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                PYTHON                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-hook 'python-mode-hook 'jedi:setup)


(setq jedi:complete-on-dot t)

(setq jedi:server-args
      '("--virtual-env" "/home/jpaille/meilleursagents/apps/MediaAPI/.venv")
      )

;; Restart a jedi server with local jedi:server-args (.dir-locals) arg to point to right venv.
(defun jk ()
  (interactive)
  (jedi:stop-all-servers)
  (jedi:start-server)
)

(defun jedi-custom-keys ()
  (local-set-key (kbd "C-x p") 'jedi:goto-definition)
  (local-set-key (kbd "C-x ]") 'jedi:goto-definition-pop-marker)
)

(add-hook 'jedi-mode-hook 'jedi-custom-keys)


;; import debug python
(fset 'include
   "import ipdb; ipdb.set_trace()")
(global-set-key (kbd "C-x i") 'include)


;; sort package

(global-set-key (kbd "C-c i") 'py-isort-buffer)

;; auto-complete
(load "auto-complete.el")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)


(defun flycheck-python-setup ()
  (flycheck-mode))

(add-hook 'python-mode-hook #'flycheck-python-setup)

(global-set-key (kbd "C-x j") 'flycheck-mode)


;; auto pairing

(require 'autopair)
(autopair-global-mode) ;; to enable in all buffers

(require 'python)
(define-key python-mode-map (kbd "C-c C-u") 'python-nav-backward-up-list)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               SNIPPET                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; SNIPPET YAS
;; activate yas-mode in python mode

(require 'yasnippet)
(yas-global-mode 1)
(yas-reload-all)
(add-hook 'python-mode-hook 'yas-minor-mode)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-o") 'yas-expand)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                HTML                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Never user tabs but spaces
(add-hook 'html-mode-hook
          (lambda()
	    (setq sgml-basic-offset 4)
            (setq indent-tabs-mode nil)))


;; set better shortcuts to move from tag to tag
(defun html-mode-keys ()
  (local-set-key (kbd "C-M-n") 'sgml-skip-tag-forward)
  (local-set-key (kbd "C-M-p") 'sgml-skip-tag-backward)
  (local-set-key (kbd "C-c :") 'sgml-close-tag)
  )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                MAKO                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'web-mode)
;;(add-to-list 'auto-mode-alist '("\\.mako\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.underscore?\\'" . web-mode))
(setq web-mode-engines-alist '(("django" . "\\.html\\'") ))
;;(setq web-mode-engines-alist '(("underscore" . "\\.underscore\\'")))

(defun web-mode-keys ()
 ;; (local-set-key (kbd "C-M-n") 'web-mode-element-end)
;;  (local-set-key (kbd "C-M-p") 'web-mode-element-beginning)
  (local-set-key (kbd "C-c o") 'web-mode-element-insert)
  (setq indent-tabs-mode nil)
)

(add-hook 'web-mode-hook 'web-mode-keys)

(add-hook 'html-mode-hook 'html-mode-keys)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)


(set-face-attribute 'web-mode-html-attr-name-face nil :foreground "Pink3")


;; ;; import debug python
;; (fset 'include-css-border
;;    "border: 1px solid black; /*TO REMOVE*/")
;; (global-set-key (kbd "C-c i") 'include-css-border)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                MAGIT                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; magit status in current window
(global-set-key [f5] 'magit-status)
;; (setq magit-display-buffer-function
;;       (lambda (buffer)
;;         (display-buffer
;;          buffer (if (and (derived-mode-p 'magit-mode)
;;                          (memq (with-current-buffer buffer major-mode)
;;                                '(magit-process-mode
;;                                  magit-revision-mode
;;                                  magit-diff-mode
;;                                  magit-stash-mode
;;                                  magit-status-mode)))
;;                     nil
;;                   '(display-buffer-same-window)))))


;; for grep mode deactivate C-xg
(with-eval-after-load 'magit
  (define-key magit-file-mode-map "\C-xg" nil))

(global-set-key "\C-xg" 'rgrep)

(global-set-key [f5] 'magit-status)

(global-set-key [f6] 'go-to-magit-ma)

(defun go-to-magit-ma()
  (interactive)
  (switch-to-buffer "magit: meilleursagents")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                C                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (global-set-key (kbd "M-c") 'compile)
;; (global-set-key (kbd "C-x n") 'next-error)

(setq-default gdb-many-windows t)

;;hearder guards
(define-auto-insert
(cons "\\.\\([Hh]\\|hh\\|hpp\\)\\'" "My C / C++ header")
'(nil
     ""
  (let* ((noext (substring buffer-file-name 0 (match-beginning 0)))
        (nopath (file-name-nondirectory noext))
     (ident (concat (upcase nopath) "_H")))
    (concat "#ifndef	" ident "\n"
      "#define	" ident  "\n\n\n"
       "\n\n#endif // " ident "\n"))
))
(global-set-key [f12] 'auto-insert)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                SHELL                                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'shell)

;; Git grep
(defun git_grep()
  "shorcut for grep with git"
(interactive)
(insert "git gr \"\"")
(backward-char 1))
(global-set-key "\C-cg" 'git_grep)


;; vpn
(fset 'code
   "!9@T2cJv")
(global-set-key (kbd "C-c 3") 'code)

;; move fast like everywhere
(defun mp-add-shell-keys ()
  (setq-default show-trailing-whitespace nil)
  (local-set-key (kbd "C-x C-e") 'comint-show-maximum-output)
  (define-key (kbd "M-,") 'comint-previous-input))

;;(add-hook 'shell-mode-hook 'mp-add-shell-keys)

(define-key shell-mode-map (kbd "M-p") nil)
(define-key shell-mode-map (kbd "M-n") nil)
(define-key shell-mode-map (kbd "C-c RET") nil)
(global-set-key  (kbd "M-o") 'comint-previous-input)
(global-set-key  (kbd "M-m") 'comint-next-input)


;; shell-resync-dirs
(global-set-key "\M-\r" 'shell-resync-dirs)

;; shortcut shell
(defun spawn-shell (name)
  (interactive "MName of shell buffer to create: ")
  (pop-to-buffer (get-buffer-create (generate-new-buffer-name name)))
  (shell (current-buffer)))
(global-set-key (kbd "M-.") 'spawn-shell)

(defun start-shells()
  (get-buffer-create "*shell*")
  (get-buffer-create "*oo*")
  (shell "*shell*")
  (shell "*oo*"))
(start-shells)

;; go to prompt
(global-set-key (kbd "C-c e") 'comint-goto-process-mark)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                TODO                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun todo()
  (interactive)
  (switch-to-buffer-other-window "*tmp*")
  (find-file "~/todo/todo")
  (kill-buffer "*tmp*"))
(global-set-key (kbd "C-x [") 'todo_direct)

(defun todo_direct()
  (interactive)
  (find-file "~/todo/todo"))

(global-set-key (kbd "C-c [") 'todo)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                PHP                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                TRAMP                                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (setq tramp-default-method "ssh")
;; (add-to-list 'tramp-default-proxies-alist
;;          '("cargolms02" nil "/ssh:master@infraansible.cines.fr:"))

;; (defun infra-shell ()
;;   (interactive)
;;   (let ((default-directory "/ssh:master@infraansible.cines.fr:/"))
;;     (shell)))
(add-hook 'comint-exec-hook
	        (lambda () (set-process-query-on-exit-flag (get-buffer-process (current-buffer)) nil)))

(defun anr-shell (buffer)
  "Opens a new shell buffer where the given buffer is located."
  (interactive "sBuffer: ")
  (pop-to-buffer (concat "*" buffer "*"))
  (unless (eq major-mode 'shell-mode)
    (dired buffer)
    (shell buffer)
    (delete-region (point-min) (point-max))
    (comint-simple-send (get-buffer-process (current-buffer))
			(concat "export PS1=\"\033[33m" buffer "\033[0m:\033[35m\\W\033[0m>\"")))
  (setq inhibit-read-only 42)
)

(defun connect_cargo ()
  (interactive)
  (find-file "/ssh:cargo:/"))

(defun connect_infraansible ()
  (interactive)
  (find-file "/ssh:infraansible:/"))

;; (global-set-key (kbd "C-c 6") 'connect_infraansible)
;; (global-set-key (kbd "C-c 4") 'connect_cargo)
;; (global-set-key (kbd "C-c 5") 'anr-shell)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                MYSQL                                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; capitalize keywords
(add-hook 'sql-mode-hook 'sqlup-mode)
(add-hook 'sql-interactive-mode-hook 'sqlup-mode)

;; active autocomplete for sql-mode
(add-to-list 'ac-modes 'sql-mode)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                MARKDOWN                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'markdown-mode)
(define-key markdown-mode-map (kbd "M-p") nil)
(define-key markdown-mode-map (kbd "M-n") nil)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                POMODORO                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defvar *pomodoro-directory* "/home/jpaille/pomodoro_analyzer/pomodoro_files/")

(defun get-pomodoro-filename()
  (concat (format-time-string "%Y-%m-%d") ".txt"))


(get-pomodoro-filename)


(defun get-pomodoro-filepath ()
    "The pomodoro filename will be the current date."
    (concat *pomodoro-directory* (get-pomodoro-filename)))


(defun get-time ()
  (format-time-string "%-H:%M"))

(defun start-pomodoro ()
  (interactive)
  (go-to-pomodoro-file)
  (end-of-buffer)
  (insert (concat "\n" "p: " (get-time) "\n"))
  (message "**START POMODORO")
  )


(defun end-pomodoro ()
  (interactive)
  (go-to-pomodoro-file)
  (end-of-buffer)
  (insert (concat "\n" "b: " (get-time) "\n"))
  (message "STOP POMODORO")
  )

(defun task-time ()
  (interactive)
  (end-of-line)
  (insert (concat " t=" (get-time)))
  )


(defun interrupt-pomodoro ()
  (interactive)
  (set-buffer  (get-pomodoro-filename))
  (end-of-buffer)
  (insert (concat "\n" "i: " (get-time) "\n"))
  (message "INTERRUPT POMODORO")
  )

(defun small-interrupt-pomodoro ()
  (interactive)
  (set-buffer  (get-pomodoro-filename))
  (end-of-buffer)
  (insert (concat "\n" "X: "))
  (message "SM INTERRUPT POMODORO")
  )


(defun go-to-pomodoro-file ()
  (interactive)
  (if (eq (get-buffer (get-pomodoro-filename)) nil)
      (find-file (get-pomodoro-filepath))
    )
  (switch-to-buffer (get-pomodoro-filename))
  (save-buffer)
)

(global-set-key (kbd "C-c =") 'start-pomodoro)
(global-set-key (kbd "C-c -") 'end-pomodoro)
(global-set-key (kbd "C-c DEL") 'interrupt-pomodoro)
(global-set-key (kbd "<f12>") 'interrupt-pomodoro)
(global-set-key (kbd "<f1>") 'small-interrupt-pomodoro)
(global-set-key (kbd "C-c \\") 'go-to-pomodoro-file)

(defun pomodoro-stats ()
  (interactive)
  (switch-to-buffer (get-pomodoro-filename))
  (save-buffer)
  (term "/bin/bash")
  (term-line-mode)
  (term-send-raw-string "po")
  (term-send-input))

(global-set-key (kbd "<f9>") 'task-time)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                MAN                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'man)
(define-key Man-mode-map (kbd "M-p") nil)
(define-key Man-mode-map (kbd "M-n") nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                ASM                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (setq make-backup-files nil)
(autoload 'asm-mode-custom "/home/julien/.emacs.d/elpa/asm-mode-custom/asm-mode-custom.el")
(setq auto-mode-alist
       (append '(("\\.asm\\'" . asm-mode-custom) ("\\.inc\\'" . auto-mode-alist))
 	      auto-mode-alist))
;; (setq asm86-inst-func-offset 3)
(defun modify-tab-asm ()
  (setq tab-width 11)
    )
(add-hook 'asm-mode-custome-hook 'modify-tab-asm)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                MAKEFILE                            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun disable-c-c ()
(local-set-key "\C-c" ctl-x-map)
)

(add-hook 'makefile-gmake-mode-hook 'disable-c-c)

  (require 'doom-themes)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                THEME                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; describe-text-properties : GET FACES AT POIJN T

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each
;; theme may have their own settings.
(load-theme 'doom-one t)
