;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; BEHAVIOR
(setq confirm-kill-emacs nil) ;; making it so emacs doesn't always ask if i wanna quit
(setq-default tab-with 2)

;; huge thanks to kiana for these, just makes j and k do visual lines
(setq evil-respect-visual-line-mode t)
(after! evil
  (evil-define-motion evil-next-line (count)
    "Moves the cursor COUNT lines down."
    :type line
    (let ((line-move-visual evil-respect-visual-line-mode))
      (evil-line-move (or count 1))))
  (evil-define-motion evil-previous-line (count)
    "Move the cursor COUNT lines up."
    :type line
    (let ((line-move-visual evil-respect-visual-line-mode))
      (evil-line-move (- (or count 1))))))

;; VISUAL CHANGES
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 13)) ;; font
(setq display-line-numbers-type 'relative) ;; relative line numbers
(setq doom-theme 'catppuccin) ;; setting the theme
(setq catppuccin-flavor 'mocha)

;; KEYBINDS
(map!
  "C-c M-x" #'kill-buffer
  "C-c C-x" #'kill-current-buffer
  "C-c C-n" ":noh<CR>" ;; stopping searching
  "C-b" ":noh<CR>"
)

(map! :map evil-normal-state-map
  "U" #'evil-redo
  "<backtab>" #'previous-buffer
)

(map! :leader
  :desc "Dired"
  "e" #'dired
)

(map! :map evil-motion-state-map
  "C-b" nil
)

;; ORG MODE
(setq org-directory "~/org/")

(after! org
  (setq
   org-hide-emphasis-markers t
   org-hide-leading-stars nil
   org-todo-keywords '(("TODO(t)"
                        "HOMEWORK(h)"
                        "DONE(d)"))
   org-todo-keyword-faces '(("HOMEWORK" . +org-todo-active)
                            ("DONE" . +org-todo-onhold)
                            ("TODO" . +org-todo-active))))
