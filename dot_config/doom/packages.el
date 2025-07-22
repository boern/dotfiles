;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)


;; aweshell
(package! aweshell
  :recipe (:host github :repo "manateelazycat/aweshell"))
;; eshell-autojump
(package! eshell-autojump)
;; eshell-autojump install from github
;;(package! eshell-autojump
;;  :recipe (:host github :repo "coldnew/eshell-autojump"))

;; direnv
(package! direnv :built-in 'prefer)

;; move text
;;(package! move-text :disable t)

;; drag-stuff
;; Drag Stuff is a minor mode for Emacs that makes it possible to drag stuff (words, region, lines)
;; around in Emacs.
;; ref -> https://github.com/rejeep/drag-stuff.el
(package! drag-stuff
  :recipe (:host github :repo "rejeep/drag-stuff.el"))

;; lpy
;;(package! lpy)

;; windresize
;; To use it, type M-x windresize; this puts Emacs in a state
;; where the up/down and left/right arrow keys resize the window
;; dimensions.  To return Emacs to its ordinary state, type RET.
;; ref -> https://elpa.gnu.org/packages/windresize.html
(package! windresize)

;; ripgrep
(package! ripgrep)

;; magit-delta
;; This Emacs package provides a minor mode which configures Magit to use delta when displaying diffs.
;; first to install delta,ref -> https://github.com/dandavison/delta
;; second to install magit-delta package, ref -> https://github.com/dandavison/magit-delta
;; magit-delta config ref config.el.
(package! magit-delta)

;; treemacs
(package! treemacs-icons-dired)

;; python
;; lsp-pyright
(package! lsp-pyright)
;; pyenv
(package! pyenv-model
  :recipe (:host github :repo "pythonic-emacs/pyenv-mode"))

;; snails
;;ref -> https://github.com/manateelazycat/snails
;; (package! snails :recipe (:host github
;;                            :repo "manateelazycat/snails"))
;; (package! subr)

;; snippets
;; (package! doom-snippets :ignore t)
;; If you want to replace it with yasnippet's default snippets
;; (package! yasnippet-snippets)

;; edwina
;;(package! edwina)

;;dired-subtree
(package! dired-subtree)

;; exec path
(package! exec-path-from-shell)

;; ace-windows
(package! ace-window)

;; emacs-jupter
(package! jupyter)

;; math-preview
(package! math-preview)

;; websocket-client
;; (package! websocket-client
;;   :recipe (:host github :repo "felipeochoa/websocket-client"))

;; ranger
(package! ranger)

;; treemacs-persp
(package! treemacs-persp)

;; nix-mode
;;(package! nix-mode)
(package! emojify)

;; clipetty
;; refer to https://github.com/spudlyo/clipetty
(package! clipetty)

;; log view
;;ref -> https://github.com/doublep/logview
(package! logview :recipe (:host github
                           :repo "doublep/logview"))

;; beacon
(package! beacon)

;; command log mode
(package! command-log-mode)

;; interaction-log
;; (package! interaction-log)

;; undo tree
(package! undo-tree)
