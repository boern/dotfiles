;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; config the frame
;; Start maximised (cross-platf)
;;(set-frame-position (selected-frame) 0 0)
;;(add-hook 'window-setup-hook 'toggle-frame-maximized t)
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;(add-to-list 'default-frame-alist '(fullscreen . fullheight))
;; (setq initial-frame-alist '((top . 0) (left . 0) (width . 120) (height . 36)))
(setq initial-frame-alist '((top . 30) (left . 30) (width . 138) (height . 40)))


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Boern"
      user-mail-address "boern.x@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; (setq doom-font (font-spec :family "Menlo" :size 15)
;;       doom-variable-pitch-font (font-spec :family "Menlo") ; inherits `doom-font''s :size
;;       doom-unicode-font (font-spec :family "Menlo" :size 15)
;;       doom-big-font (font-spec :family "Menlo" :size 19))


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-monokai-pro)
;; (setq doom-theme 'doom-material)
;; (setq doom-theme 'doom-one-light)
;; (setq doom-theme 'doom-vibrant)
(setq doom-theme 'doom-one)

(use-package! doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  ;; (load-theme 'doom-one-light t)
  ;; (load-theme 'doom-material t)
  ;; (load-theme 'doom-vibrant t)
  ;; (load-theme 'doom-tokyo-night t)
  ;; (load-theme 'doom-material-dark t)
  ;; (load-theme 'doom-molokai t)
  ;; (load-theme 'doom-monokai-pro)
  (load-theme 'doom-one t)
  ;; (load-theme 'doom-plain)
  ;;(setq doom-font(font-spec :family "Fira Code" :height 13))
  ;;(setq doom-font (font-spec :family "monospace" :size 16 :weight 'semi-light))
  (setq doom-font (font-spec :family "Fira Code" :size 15)
       doom-variable-pitch-font (font-spec :family "Fira Code") ; inherits `doom-font''s :size
       doom-symbol-font (font-spec :family "Fira Code" :size 15)
       doom-big-font (font-spec :family "Fira Code" :size 19))

  ;; (setq doom-font (font-spec :family "Monaco" :size 15)
  ;;       doom-variable-pitch-font (font-spec :family "Monaco") ; inherits `doom-font''s :size
  ;;       doom-symbol-font (font-spec :family "Monaco" :size 15)
  ;;       doom-big-font (font-spec :family "Monaco" :size 18))

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ;; (doom-themes-neotree-config)
  ;; or for treemacs users
  ;; use "doom-colors" for less minimal icon theme
  ;; (setq doom-themes-treemacs-theme "doom-colors")
  (setq doom-themes-treemacs-theme "default")
  ;; (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; config splash
;;(setq fancy-splash-image "~/.doom.d/mars.jpg")
(setq fancy-splash-image "~/.doom.d/euler2.png")

;;(setq doom-dashboard-widget-banner "ultra")

;; ace-windows
;; changes the ace-window display to show a white letter with a red background.
(use-package! ace-window
  :config
  (global-set-key (kbd "M-o") 'ace-window)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (setq aw-background nil)
  ;; (custom-set-faces!
  ;;   '(aw-leading-char-face
  ;;     :foreground "white" :background "red"
  ;;     :weight bold :height 6 :box (:line-width 10 :color "red")))
  ;; (defvar aw-dispatch-alist
  ;;   '((?x aw-delete-window "Delete Window")
  ;;     (?m aw-swap-window "Swap Windows")
  ;;     (?M aw-move-window "Move Window")
  ;;     (?c aw-copy-window "Copy Window")
  ;;     (?j aw-switch-buffer-in-window "Select Buffer")
  ;;     (?n aw-flip-window)
  ;;     (?u aw-switch-buffer-other-window "Switch Buffer Other Window")
  ;;     (?c aw-split-window-fair "Split Fair Window")
  ;;     (?v aw-split-window-vert "Split Vert Window")
  ;;     (?b aw-split-window-horz "Split Horz Window")
  ;;     (?o delete-other-windows "Delete Other Windows")
  ;;     (?? aw-show-dispatch-help))
  ;;   "List of actions for `aw-dispatch-default'.")

  )

;; enable the windmove key bind.
;; us 'C-c-arrow' to navigation the windwos
(use-package! windmove
  :config
  (global-set-key (kbd "C-c <left>")  'windmove-left)
  (global-set-key (kbd "C-c <right>") 'windmove-right)
  (global-set-key (kbd "C-c <up>")    'windmove-up)
  (global-set-key (kbd "C-c <down>")  'windmove-down)
  )

;; winner-mode是Emacs自带全局模式，打开(winner-mode t)之后，就可以用M-x 选择
;; winner-undo或winner-redo 恢复之前的窗口布局.
(use-package! winner
  :config
  (winner-mode t)
  )

;; windresize
;; M-x windresize enable resize mode
;; use up/down/left/right arrow key to resize the window
;; press Return to exit resize mode

;; edwina
;; ref -> https://github.com/ajgrf/edwina
;; (use-package! edwina
;;   :config
;;   (setq display-buffer-base-action '(display-buffer-below-selected))
;;   (edwina-setup-dwm-keys)
;;   (edwina-mode 1))


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Key Configuration for Doom as Vanilla Emacs
;;(setq evil-default-state 'emacs)

;; aweshell
(use-package! aweshell
  :config
  (setq eshell-up-ignore-case t)
  ;; If you got error that random space insert
  ;; you perhaps need turn off aweshell-auto-suggestion-p
  ;;(setq aweshell-auto-suggestion-p nil)
  (setq eshell-up-print-parent-dir t))
;; eshell-autojump
(use-package! eshell-autojump)

;; direnv
;; ref -> https://github.com/wbolster/emacs-direnv
(use-package! direnv
  :config
  (direnv-mode)
  (setq direnv-always-show-summary t)
  (setq direnv-show-paths-in-summary t)
  (setq direnv-use-faces-in-summary t)
  )

;; projectile
;; ref -> https://docs.projectile.mx/projectile/usage.html
;; ref ->https://github.com/ericdanan/counsel-projectile
(use-package! projectile
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map))
  :config
  ;;Adding Custom Project Types for pipenv project
  ;; (projectile-register-project-type 'pipenv'("Pipfile")
  ;;                                   :compile "pipenv install"
  ;;                                   :test-dir "test"
  ;;                                   :run "pipenv run")
  ;; Set a list of folders which Projectile is automatically going to check for projects on startup.
  ;;(setq projectile-project-search-path '("~/projects/" "~/work/"))
  (setq projectile-project-search-path '("~/workspace/" ))
  (setq projectile-completion-system 'ivy)
  ;;如果希望在每个目录中都使用 Projectile（即使没有项目文件）
  (setq projectile-require-project-root nil)
  )

;; magit
;; ref -> https://github.com/hlissner/doom-emacs/blob/develop/modules/tools/magit/README.org
;; ref -> https://github.com/magit/magit#getting-started
(after! magit
  (setq magit-revision-show-gravatars '("^Author:     " . "^Commit:     "))
  (setq magit-diff-refine-hunk 'all))
;; configures Magit to use delta when displaying diffs.
(use-package! magit-delta
  :hook (magit-mode . magit-delta-mode))


;; treemacs
;; ref -> https://github.com/Alexander-Miller/treemacs/
(use-package! treemacs
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                   (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay        0.5
          treemacs-directory-name-transformer      #'identity
          treemacs-display-in-side-window          t
          treemacs-eldoc-display                   t
          treemacs-file-event-delay                5000
          treemacs-file-extension-regex            treemacs-last-period-regex-value
          treemacs-file-follow-delay               0.2
          treemacs-file-name-transformer           #'identity
          treemacs-follow-after-init               t
          treemacs-expand-after-init               t
          treemacs-git-command-pipe                ""
          treemacs-goto-tag-strategy               'refetch-index
          treemacs-indentation                     2
          treemacs-indentation-string              " "
          treemacs-is-never-other-window           nil
          treemacs-max-git-entries                 5000
          treemacs-missing-project-action          'ask
          treemacs-move-forward-on-expand          nil
          treemacs-no-png-images                   nil
          treemacs-no-delete-other-windows         t
          treemacs-project-follow-cleanup          nil
          treemacs-persist-file                    (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                        'left
          treemacs-read-string-input               'from-child-frame
          treemacs-recenter-distance               0.1
          treemacs-recenter-after-file-follow      nil
          treemacs-recenter-after-tag-follow       nil
          treemacs-recenter-after-project-jump     'always
          treemacs-recenter-after-project-expand   'on-distance
          treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask")
          treemacs-show-cursor                     nil
          treemacs-show-hidden-files               t
          treemacs-silent-filewatch                nil
          treemacs-silent-refresh                  nil
          treemacs-sorting                         'alphabetic-asc
          treemacs-select-when-already-in-treemacs 'move-back
          treemacs-space-between-root-nodes        t
          treemacs-tag-follow-cleanup              t
          treemacs-tag-follow-delay                1.5
          treemacs-user-mode-line-format           nil
          treemacs-user-header-line-format         nil
          treemacs-width                           38
          treemacs-width-is-initially-locked       t
          treemacs-workspace-switch-cleanup        nil)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode 'always)

    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple)))

    ;;(treemacs-hide-gitignored-files-mode nil)
    )
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag))
  )

(use-package! treemacs-evil
  :after (treemacs evil))

(use-package! treemacs-projectile
  :after (treemacs projectile))

(use-package! treemacs-icons-dired
  :after (treemacs dired)
  :config (treemacs-icons-dired-mode))

(use-package! treemacs-magit
  :after (treemacs magit))

;; (use-package! treemacs-persp ;;treemacs-perspective if you use perspective.el vs. persp-mode
;;   :after (treemacs persp-mode) ;;or perspective vs. persp-mode
;;   :config (treemacs-set-scope-type 'Perspectives))

(use-package! treemacs-persp
  :when (featurep! :ui workspaces)
  :after (treemacs persp-mode)
  :config
  (treemacs-set-scope-type 'Perspectives))

(after! treemacs
  (defun +treemacs--init ()
    (require 'treemacs)
    (let ((origin-buffer (current-buffer)))
      (cl-letf (((symbol-function 'treemacs-workspace->is-empty?)
                 (symbol-function 'ignore)))
        (treemacs--init))
      (unless (bound-and-true-p persp-mode)
        (dolist (project (treemacs-workspace->projects (treemacs-current-workspace)))
          (treemacs-do-remove-project-from-workspace project)))
      (with-current-buffer origin-buffer
        (let ((project-root (or (doom-project-root) default-directory)))
          (treemacs-do-add-project-to-workspace
           (treemacs--canonical-path project-root)
           (doom-project-name project-root)))
        (setq treemacs--ready-to-follow t)
        (when (or treemacs-follow-after-init treemacs-follow-mode)
          (treemacs--follow))))))


;; Drag-Stuff
(use-package! drag-stuff
  :config
  (setq drag-stuff-global-mode 1)
  (drag-stuff-define-keys))

;; company
(after! js2-mode
  (set-company-backend! 'js2-mode 'company-tide 'company-yasnippet))

(after! sh-script
  (set-company-backend! 'sh-mode
    '(company-shell :with company-yasnippet)))

(after! cc-mode
  (set-company-backend! 'c-mode
    '(:separate company-irony-c-headers company-irony)))

;; ivy config
(use-package! ivy
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq enable-recursive-minibuffers t)
  ;; enable this if you want `swiper' to use it
  ;; (setq search-default-mode #'char-fold-to-regexp)
  (global-set-key "\C-s" 'swiper)
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "<f6>") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
  (setq ivy-use-selectable-prompt t)
  )

;; snails
;; ref -> https://github.com/manateelazycat/snails
;; (use-package! snails
;;   :init
;;   (setq snails-use-exec-path-from-shell nil)
;;   :config
;;   (define-key snails-mode-map [remap next-line] #'snails-select-next-item)
;;   )
;; (use-package! snails)
;;(require 'subr)
;; (use-package! subr)
;; (with-eval-after-load "snails"
;;   (fset 'string-replace 'replace-regexp-in-string))

;; python
(use-package! python
  :config
  (setq +python-ipython-repl-args '("-i" "--simple-prompt"))
  (setq +python-jupyter-repl-args '("--simple-prompt"))
  )


;; pyenv
;;(require 'pyenv-mode)
;; (use-package! pyenv-mode
;;   :config
;;   (pyenv-mode))                         ;

;; (defun projectile-pyenv-mode-set ()
;;   "Set pyenv version matching project name."
;;   (let ((project (projectile-project-name)))
;;     (if (member project (pyenv-mode-versions))
;;         (pyenv-mode-set project)
;;       (pyenv-mode-unset))))
;; (add-hook! 'projectile-after-switch-project-hook 'projectile-pyenv-mode-set)

;; pyright
;; (use-package! lsp-pyright
;;   :hook (python-mode . (lambda ()
;;                           (require 'lsp-pyright)
;;                           (lsp))))  ; or lsp-deferred

;; pipenv
;; ref -> https://github.com/pwalsh/pipenv.el
;; (use-package! pipenv
;;   :hook (python-mode . pipenv-mode)
;;   :init
;;                                         ;(setq pipenv-with-projectile t)
;;   (setq
;;    pipenv-projectile-after-switch-function
;;    #'pipenv-projectile-after-switch-extended))

;; dired-subtree config
(use-package! dired-subtree
  :defer t
  :bind (:map dired-mode-map
              ("TAB" . dired-subtree-cycle)))

;; neotree config
(setq-default neo-autorefresh t)

;; emacs exec path config
(use-package! exec-path-from-shell
  :if (memq window-system '(ns x  mac))
  :config (exec-path-from-shell-initialize))

;; ein config
;; (use-package! ein
;;   :config
;;   (setq ein:worksheet-enable-undo nil)
;;   (setq ein:output-area-inlined-images t)
;;   )

;; emacs-jupyter config
;; (use-package! jupyter
;;   :config
;;   (setq jupyter-repl-echo-eval-p t))

;; ranger config
(use-package! ranger
  :config
  (setq ranger-preview-file t)
  (setq ranger-show-literal nil)
  (setq ranger-show-hidden t)
  (setq ranger-dont-show-binary t)
  (setq ranger-footer-delay 0.2)
  (setq ranger-preview-delay 0.040)
  (setq ranger-header-func 'ranger-header-line)
  (setq ranger-parent-header-func 'ranger-parent-header-line)
  (setq ranger-preview-header-func 'ranger-preview-header-line)
  ;;(setq ranger-cleanup-on-disable t)
  ;;(setq ranger-cleanup-eagerly t)
  )

;; rust config
;; Note: If you are developing rust in emacs and would like to use emacs-racer, you can do so in a lorri direnv by setting
;;(setq racer-rust-src-path nil) ;; read from shell-nix
;;(setq racer-cmd "racer")
;; (after! rustic
;;   ;; (setq rustic-lsp-server 'rls))
;;   (setq rustic-lsp-server 'rust-analyzer)
;;   (setq rustic-lsp-client 'eglot))

;; nix-mode
(use-package! nix-mode
  :mode "\\.nix\\'")

;; emoji
;; ref -> https://github.com/iqbalansari/emacs-emojify
(use-package! emojify
  :hook (after-init . global-emojify-mode))

;; Org-Mode Config
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (julia . t)
   (python . t)
   (jupyter . t)
   (ein . t)))

;; clipetty
(use-package! clipetty
  :hook (after-init . global-clipetty-mode)
  :config
  (setq clipetty-assume-nested-mux nil)
  (setq clipetty-tmux-ssh-tty "tmux show-environment SSH_TTY")
  )

;; beacon
(use-package! beacon
  :config
  (beacon-mode 1))

;; TRAMP config
(after! tramp
  (setq tramp-default-method "ssh")
  ;; (setq tramp-inline-compress-start-size 1000)
  ;; (setq tramp-copy-size-limit 10000)
  ;; (setq vc-handled-backends '(Git))
  ;; (setq tramp-use-ssh-controlmaster-options nil)
  ;; (setq projectile--mode-line "Projectile")
  (setq tramp-debug-buffer t)
  (setq tramp-verbose 1))
;; (eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

;; interactive log  mode
;; (use-package! interaction-log
;;   :config
;;   (interaction-log-mode 1))

;; undo tree config
(use-package! undo-tree
  :config
  (global-undo-tree-mode 1)
  (defadvice undo-tree-visualizer-mode (after undo-tree-face activate)
    (buffer-face-mode)))

;; Cannot find gls (GNU ls) on macos
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))
