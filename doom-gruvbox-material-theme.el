(require 'doom-themes)

;; Compiler pacifier
(defvar modeline-bg)

;;
;;; Variables

(defgroup doom-gruvbox-material-theme nil
  "Options for `gruvbox-material' theme."
  :group 'doom-themes)

(defcustom doom-gruvbox-material-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-gruvbox-material-theme
  :type '(choice integer boolean))

(defcustom gruvbox-material-dark-variant nil
  "A choice of \"hard\" or \"soft\" can be used to change the
background contrast. All other values default to \"medium\"."
  :group 'doom-gruvbox-material-theme
  :type  'string)

;;
;;; Theme palette

;; https://github.com/sainnhe/gruvbox-material/tree/master
(cond
 ((equal doom-gruvbox-material-dark-variant "hard")
  ;;    name                  UI        256       16
  (setq p/bg-dim           '("#141617" "#1c1c1c" "black")
        p/bg0              '("#1d2021" "#262626" "brightblack")
        p/bg1              '("#282828" "#303030" "brightblack")
        p/bg2              '("#282828" "#303030" "brightblack")
        p/bg3              '("#3c3836" "#4e4e4e" "brightblack")
        p/bg4              '("#3c3836" "#4e4e4e" "brightblack")
        p/bg5              '("#504945" "#4e4e4e" "brightblack")
        p/bg-diff-red      '("#3c1f1e" "#5f0000" "red")
        p/bg-diff-green    '("#32361a" "#5f5f00" "green")
        p/bg-diff-blue     '("#0d3138" "#005f5f" "blue")
        p/bg-statusline1   '("#282828" "#303030" "brightblack")
        p/bg-statusline2   '("#32302f" "#303030" "brightblack")
        p/bg-statusline3   '("#504945" "#4e4e4e" "brightblack")
        p/bg-current-word  '("#32302f" "#303030" "brightblack")
        p/bg-visual-red    '("#442e2d" "#5f3030" "red")
        p/bg-visual-green  '("#333e34" "#005f5f" "green")
        p/bg-visual-blue   '("#2e3b3b" "#005f5f" "blue")
        p/bg-visual-yellow '("#473c29" "#5f5f00" "yellow")
        p/bg-visual-purple '("#3c333b" "#5f005f" "magenta")
        p/bg-red           '("#ea6962" "#d75f5f" "red")
        p/bg-green         '("#a9b665" "#afaf87" "green")
        p/bg-yellow        '("#d8a657" "#d7af5f" "yellow")
        p/fg0              '("#d4be98" "#d7af87" "brightwhite")
        p/fg1              '("#ddc7a1" "#dfd7af" "brightwhite")
        p/red              '("#ea6962" "#d75f5f" "red")
        p/green            '("#a9b665" "#afaf87" "green")
        p/blue             '("#7daea3" "#87afaf" "blue")
        p/yellow           '("#d8a657" "#d7af5f" "yellow")
        p/purple           '("#d3869b" "#d787af" "magenta")
        p/orange           '("#e78a4e" "#ffaf5f" "yellow")
        p/aqua             '("#89b482" "#87af87" "green")
        p/grey0            '("#7c6f64" "#767676" "brightblack")
        p/grey1            '("#928374" "#87875f" "brightblack")
        p/grey2            '("#a89984" "#afaf87" "brightblack")))
 ((equal doom-gruvbox-material-dark-variant "soft")
  ;;    name                  UI        256       16
  (setq p/bg-dim           '("#252423" "#1c1c1c" "black")
        p/bg0              '("#32302f" "#262626" "brightblack")
        p/bg1              '("#3c3836" "#303030" "brightblack")
        p/bg2              '("#3c3836" "#303030" "brightblack")
        p/bg3              '("#504945" "#4e4e4e" "brightblack")
        p/bg4              '("#504945" "#4e4e4e" "brightblack")
        p/bg5              '("#665c54" "#5f5f5f" "brightblack")
        p/bg-diff-red      '("#472322" "#5f0000" "red")
        p/bg-diff-green    '("#3d4220" "#5f5f00" "green")
        p/bg-diff-blue     '("#0f3a42" "#005f5f" "blue")
        p/bg-statusline1   '("#3c3836" "#303030" "brightblack")
        p/bg-statusline2   '("#46413e" "#444444" "brightblack")
        p/bg-statusline3   '("#5b534d" "#5f5f5f" "brightblack")
        p/bg-current-word  '("#45403d" "#444444" "brightblack")
        p/bg-visual-red    '("#543937" "#5f3030" "red")
        p/bg-visual-green  '("#424a3e" "#005f5f" "green")
        p/bg-visual-blue   '("#404946" "#005f5f" "blue")
        p/bg-visual-yellow '("#574833" "#5f5f00" "yellow")
        p/bg-visual-purple '("#4b3e45" "#5f005f" "magenta")
        p/bg-red           '("#ea6962" "#d75f5f" "red")
        p/bg-green         '("#a9b665" "#afaf87" "green")
        p/bg-yellow        '("#d8a657" "#d7af5f" "yellow")
        p/fg0              '("#d4be98" "#d7af87" "brightwhite")
        p/fg1              '("#ddc7a1" "#dfd7af" "brightwhite")
        p/red              '("#ea6962" "#d75f5f" "red")
        p/green            '("#a9b665" "#afaf87" "green")
        p/blue             '("#7daea3" "#87afaf" "blue")
        p/yellow           '("#d8a657" "#d7af5f" "yellow")
        p/purple           '("#d3869b" "#d787af" "magenta")
        p/orange           '("#e78a4e" "#ffaf5f" "yellow")
        p/aqua             '("#89b482" "#87af87" "green")
        p/grey0            '("#7c6f64" "#767676" "brightblack")
        p/grey1            '("#928374" "#87875f" "brightblack")
        p/grey2            '("#afaf87" "#afaf87" "brightblack")))
 (t   ;; doom-gruvbox-material-dark-variant "medium")
  ;;    name                  UI        256       16
  (setq p/bg-dim           '("#1b1b1b" "#1c1c1c" "black")
        p/bg0              '("#282828" "#262626" "brightblack")
        p/bg1              '("#32302f" "#303030" "brightblack")
        p/bg2              '("#32302f" "#303030" "brightblack")
        p/bg3              '("#45403d" "#444444" "brightblack")
        p/bg4              '("#45403d" "#444444" "brightblack")
        p/bg5              '("#5a524c" "#5f5f5f" "brightblack")
        p/bg-diff-red      '("#402120" "#5f0000" "red")
        p/bg-diff-green    '("#34381b" "#5f5f00" "green")
        p/bg-diff-blue     '("#0e363e" "#005f5f" "blue")
        p/bg-statusline1   '("#32302f" "#303030" "brightblack")
        p/bg-statusline2   '("#3a3735" "#303030" "brightblack")
        p/bg-statusline3   '("#504945" "#4e4e4e" "brightblack")
        p/bg-current-word  '("#3c3836" "#303030" "brightblack")
        p/bg-visual-red    '("#4c3432" "#5f3030" "red")
        p/bg-visual-green  '("#3b4439" "#005f5f" "green")
        p/bg-visual-blue   '("#374141" "#005f5f" "blue")
        p/bg-visual-yellow '("#4f422e" "#5f5f00" "yellow")
        p/bg-visual-purple '("#443840" "#5f005f" "magenta")
        p/bg-red           '("#ea6962" "#d75f5f" "red")
        p/bg-green         '("#a9b665" "#afaf87" "green")
        p/bg-yellow        '("#d8a657" "#d7af5f" "yellow")
        p/fg0              '("#d4be98" "#d7af87" "brightwhite")
        p/fg1              '("#ddc7a1" "#dfd7af" "brightwhite")
        p/red              '("#ea6962" "#d75f5f" "red")
        p/green            '("#a9b665" "#afaf87" "green")
        p/blue             '("#7daea3" "#87afaf" "blue")
        p/yellow           '("#d8a657" "#d7af5f" "yellow")
        p/purple           '("#d3869b" "#d787af" "magenta")
        p/orange           '("#e78a4e" "#ffaf5f" "yellow")
        p/aqua             '("#89b482" "#87af87" "green")
        p/grey0            '("#7c6f64" "#767676" "brightblack")
        p/grey1            '("#928374" "#87875f" "brightblack")
        p/grey2            '("#a89984" "#afaf87" "brightblack"))))

;;
;;; Theme definition

(def-doom-theme doom-gruvbox-material
    "Dark theme with pastel 'retro groove' colors."
  :family 'doom-gruvbox-material
  :background-mode 'dark

  ;; https://user-images.githubusercontent.com/58662350/213884037-97bb9a1b-cc5a-46c1-8d44-877cd85b1cdc.png
  ;; name               gui       256      16
  ((bg               '("#32302f" "#262626" nil          ))   ; bg0
   (bg-alt           '("#32302f" "#262626" nil          ))   ; bg0
   (bg-alt2          '("#46413e" "#5b534d" "brown"      ))   ; bg_statusline2 (for region, selection etc.)

   ;; Base colors
   (base0            '("#252423" "#1c1c1c"   "black"      )) ; bg_dim
   (base1            '("#3c3836" "#3a3a3a" "brightblack"))   ; bg1
   (base2            '("#3c3836" "#403c3a" "brightblack"))   ; bg2
   (base3            '("#504945" "#4e4e4e" "brightblack"))   ; bg3
   (base4            '("#504945" "#504945" "brightblack"))   ; bg4
   (base5            '("#665c54" "#5f5f5f" "brightblack"))   ; bg5
   (base6            '("#665c54" "#665c54" "brightblack"))   ; bg5
   (base7            '("#7c6f64" "#767676" "brightblack"))   ; grey0
   (base8            '("#7c6f64" "#767676" "brightwhite"))   ; grey0
   (fg
    (cond ((equal gruvbox-material-dark-variant "hard") '("#ebdbb2" "#d7d7af" "brightwhite"))   ; fg0_h
          ((equal gruvbox-material-dark-variant "soft") '("#d4be98" "#d4be98" "brightwhite"))   ; fg0_s
          (t                                            '("#d4be98" "#d4be98" "brightwhite")))) ; fg0_s
   (fg-alt
    (cond ((equal gruvbox-material-dark-variant "hard") '("#ebdbb2" "#d7d7af" "brightwhite"))   ; fg1_h
          ((equal gruvbox-material-dark-variant "soft") '("#ddc7a1" "#d7c6af" "brightwhite"))   ; fg1_s
          (t                                            '("#ddc7a1" "#d7c6af" "brightwhite")))) ; fg1_s

   ;; Palette colors
   (grey             '("#a89984" "#afaf87" "brightblack"))   ; grey2
   (magenta          '("#d3869b" "#d787af" "magenta"))       ; purple
   (violet           '("#d3869b" "#d787af" "brightmagenta")) ; purple
   (teal             '("#89b482" "#87af87" "green"))         ; aqua
   (red
    (cond ((equal gruvbox-material-dark-variant "hard") '("#fb4934" "#ff5f5f" "red"))          ; red_h
          ((equal gruvbox-material-dark-variant "soft") '("#ea6962" "#d75f5f" "red"))          ; red_s
          (t                                            '("#ea6962" "#d75f5f" "red"))))        ; red_s
   (orange
    (cond ((equal gruvbox-material-dark-variant "hard") '("#fe8019" "#ff8700" "orange"))       ; orange_h
          ((equal gruvbox-material-dark-variant "soft") '("#e78a4e" "#d7875f" "orange"))       ; orange_s
          (t                                            '("#e78a4e" "#d7875f" "orange"))))     ; orange_s
   (yellow
    (cond ((equal gruvbox-material-dark-variant "hard") '("#fabd2f" "#ffd75f" "yellow"))       ; yellow_h
          ((equal gruvbox-material-dark-variant "soft") '("#d8a657" "#d7af5f" "yellow"))       ; yellow_s
          (t                                            '("#d8a657" "#d7af5f" "yellow"))))     ; yellow_s
   (dark-yellow
    (cond ((equal gruvbox-material-dark-variant "hard") '("#fabd2f" "#ffd75f" "yellow"))       ; yellow_h
          ((equal gruvbox-material-dark-variant "soft") '("#d8a657" "#d7af5f" "yellow"))       ; yellow_s
          (t                                            '("#d8a657" "#d7af5f" "yellow"))))     ; yellow_s
   (green
    (cond ((equal gruvbox-material-dark-variant "hard") '("#b8bb26" "#afaf00" "green"))        ; green_h
          ((equal gruvbox-material-dark-variant "soft") '("#a9b665" "#afaf87" "green"))        ; green_s
          (t                                            '("#a9b665" "#afaf87" "green"))))      ; green_s
   (dark-green
    (cond ((equal gruvbox-material-dark-variant "hard") '("#b8bb26" "#afaf00" "green"))        ; green_h
          ((equal gruvbox-material-dark-variant "soft") '("#a9b665" "#afaf87" "green"))        ; green_s
          (t                                            '("#a9b665" "#afaf87" "green"))))      ; green_s
   (blue
    (cond ((equal gruvbox-material-dark-variant "hard") '("#7daea3" "#87afaf" "brightblue"))   ; blue_h
          ((equal gruvbox-material-dark-variant "soft") '("#7daea3" "#87afaf" "brightblue"))   ; blue_s
          (t                                            '("#7daea3" "#87afaf" "brightblue")))) ; blue_s
   (dark-blue
    (cond ((equal gruvbox-material-dark-variant "hard") '("#7daea3" "#87afaf" "blue"))         ; blue_h
          ((equal gruvbox-material-dark-variant "soft") '("#7daea3" "#87afaf" "blue"))         ; blue_s
          (t                                            '("#7daea3" "#87afaf" "blue"))))       ; blue_s
   (cyan
    (cond ((equal gruvbox-material-dark-variant "hard") '("#8ec07c" "#87af87" "brightcyan"))   ; aqua_h
          ((equal gruvbox-material-dark-variant "soft") '("#89b482" "#87afaf" "brightcyan"))   ; aqua_s
          (t                                            '("#89b482" "#87afaf" "brightcyan")))) ; aqua_s
   (dark-cyan
    (cond ((equal gruvbox-material-dark-variant "hard") '("#8ec07c" "#87af87" "cyan"))         ; aqua_h
          ((equal gruvbox-material-dark-variant "soft") '("#89b482" "#87afaf" "cyan"))         ; aqua_s
          (t                                            '("#89b482" "#87afaf" "cyan"))))       ; aqua_s

   ;; Extra colors
   (bg-visual-yellow '("#574833" "#5f5f00" "yellow"))
   (bg-visual-red    '("#543937" "#5f0000" "red"))
   (bg-visual-green  '("#424a3c" "#005f00" "green"))
   (bg-diff-red      '("#472322" "#5f0000" "red"))
   (bg-diff-green    '("#3d4220" "#5f5f00" "green"))

   ;; face categories
   (highlight      yellow)
   (vertical-bar   bg-alt2)
   (selection      bg-alt2)
   (builtin        orange)
   (comments       (doom-blend yellow base8 0.5))
   (doc-comments   (doom-darken green 0.15))
   (constants      violet)
   (functions      green)
   (keywords       red)
   (methods        green)
   (operators      fg)
   (type           yellow)
   (strings        green)
   (variables      blue)
   (numbers        violet)
   (region         bg-alt2)
   (error          red)
   (warning        yellow)
   (success        green)

   (vc-modified    cyan)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (-modeline-pad
    (when doom-gruvbox-material-padded-modeline
      (if (integerp doom-gruvbox-material-padded-modeline)
          doom-gruvbox-material-padded-modeline
        4)))
   (modeline-bg bg-alt2)
   (modeline-fg (doom-lighten fg-alt 0.25))
   (modeline-inactive-bg (doom-darken modeline-bg 0.15))
   (modeline-inactive-fg base6)

   ;; FIXME Unknown
   (org-quote `(,(doom-lighten (car bg) 0.05) "#1f1f1f")))

  ;;;; Base theme face overrides
  ((button :foreground cyan :underline t :weight 'bold)
   (cursor :background grey)
   (hl-line :background base2)
   ((line-number &override) :foreground (doom-darken fg-alt 0.4))
   ((line-number-current-line &override) :background base2 :foreground yellow)
   (isearch :foreground base0 :background orange)
   (lazy-highlight :background yellow :foreground base0 :distant-foreground base0 :bold bold)
   ((link &override) :foreground violet)
   (minibuffer-prompt :foreground cyan)
   (mode-line
    :background base0 :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background bg :foreground base4
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-inactive-bg)))

   ;;;; FCI
   (fill-column-indicator :foreground base2 :background nil)
   ;;;; company
   (company-preview-common :foreground cyan)
   (company-tooltip-common :foreground cyan)
   (company-tooltip-common-selection :foreground cyan)
   (company-tooltip-annotation :foreground cyan)
   (company-tooltip-annotation-selection :foreground cyan)
   (company-scrollbar-bg :background base3)
   (company-scrollbar-fg :background cyan)
   (company-tooltip-selection :background bg-alt2)
   (company-tooltip-mouse :background bg-alt2 :foreground nil)
   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground keywords)
   ;;;; doom-emacs
   (+workspace-tab-selected-face :background (doom-darken green 0.35) :foreground fg)
   ;;;; doom-modeline
   (doom-modeline-project-dir :bold t :foreground cyan)
   (doom-modeline-buffer-path :inherit 'bold :foreground green)
   (doom-modeline-buffer-file :inherit 'bold :foreground fg)
   (doom-modeline-buffer-modified :inherit 'bold :foreground yellow)
   (doom-modeline-error :background bg)
   (doom-modeline-buffer-major-mode :foreground green :bold t)
   (doom-modeline-info :bold t :foreground cyan)
   (doom-modeline-bar :background dark-green)
   (doom-modeline-panel :background dark-green :foreground fg)
   ;;;; doom-themes
   (doom-themes-neotree-file-face :foreground fg)
   (doom-themes-neotree-hidden-file-face :foreground (doom-lighten fg-alt 0.25))
   (doom-themes-neotree-media-file-face :foreground (doom-lighten fg-alt 0.25))
   ;;;; emacs-lisp-mode
   (highlight-quoted-symbol :foreground dark-cyan)
   ;;;; ediff <built-in>
   (ediff-fine-diff-A    :background (doom-blend red bg 0.4) :weight 'bold)
   (ediff-current-diff-A :background (doom-blend red bg 0.2))
   ;;;; evil
   (evil-search-highlight-persist-highlight-face :background yellow)
   (evil-ex-substitute-replacement :foreground cyan :strike-through nil :inherit 'evil-ex-substitute-matches)
   ;;;; evil-snipe
   (evil-snipe-first-match-face :foreground "white" :background yellow)
   (evil-snipe-matches-face     :foreground yellow :bold t :underline t)
   ;;;; flycheck
   (flycheck-error   :underline `(:style wave :color ,red)    :background base3)
   (flycheck-warning :underline `(:style wave :color ,yellow) :background base3)
   (flycheck-info    :underline `(:style wave :color ,blue)   :background base3)
   ;;;; dired
   (dired-directory :foreground cyan)
   (dired-marked :foreground yellow)
   (dired-symlink :foreground cyan)
   (dired-header :foreground cyan)
   ;;;; helm
   (helm-swoop-target-line-face :foreground magenta :inverse-video t)
   ;;;; highlight-thing
   (highlight-thing :background (doom-lighten base3 0.03) :distant-foreground fg-alt)
   ;;;; highlight-symbol
   (highlight-symbol-face :background (doom-lighten base3 0.03) :distant-foreground fg-alt)
   ;;;; ivy
   (ivy-current-match :background bg-alt2)
   (ivy-subdir :background nil :foreground cyan)
   (ivy-action :background nil :foreground cyan)
   (ivy-grep-line-number :background nil :foreground cyan)
   (ivy-minibuffer-match-face-1 :background nil :foreground yellow)
   (ivy-minibuffer-match-face-2 :background nil :foreground yellow)
   (ivy-minibuffer-match-highlight :foreground cyan)
   (counsel-key-binding :foreground cyan)
   ;;;; ivy-posframe
   (ivy-posframe :background base3)
   (ivy-posframe-border :background base1)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground dark-cyan)
   ;;;; magit
   (magit-section-heading             :foreground cyan :weight 'bold)
   (magit-branch-current              :underline green :inherit 'magit-branch-local)
   (magit-diff-hunk-heading           :background base3 :foreground fg-alt)
   (magit-diff-hunk-heading-highlight :background bg-alt2 :foreground fg)
   (magit-diff-context                :foreground base3 :foreground fg-alt)
   ;;; ;; magit-diff
   (magit-diff-added                 :background bg-diff-green :foreground fg)
   (magit-diff-added-highlight       :background bg-visual-green :foreground fg)
   (magit-diff-removed               :background bg-diff-red   :foreground fg)
   (magit-diff-removed-highlight     :background bg-visual-red :foreground fg)
   (diff-refine-added   :background (doom-blend bg-visual-green green 0.75))
   (diff-refine-removed :background (doom-blend bg-visual-red   red   0.75))

   ;;;; markdown-mode
   (markdown-header-face :inherit 'bold :foreground green)
   (markdown-header-delimiter-face :foreground orange)
   (markdown-blockquote-face :inherit 'italic :foreground grey)
   (markdown-list-face :foreground grey)
   (markdown-url-face :foreground violet)
   (markdown-pre-face  :foreground cyan)
   (markdown-link-face :inherit 'underline :foreground grey)
   ((markdown-code-face &override) :background base2)
   ;;;; mu4e-view
   (mu4e-header-key-face :foreground red :weight 'bold)
   ;;;; neotree
   (neo-root-dir-face   :foreground cyan)
   (doom-neotree-dir-face :foreground cyan)
   (neo-dir-link-face   :foreground cyan)
   (neo-expand-btn-face :foreground magenta)
   ;;;; outline <built-in>
   ((outline-1 &override) :foreground violet)
   ((outline-2 &override) :foreground cyan)
   ((outline-3 &override) :foreground green)
   ((outline-4 &override) :foreground (doom-lighten violet 0.2))
   ((outline-5 &override) :foreground (doom-lighten dark-cyan 0.25))
   ((outline-6 &override) :foreground (doom-lighten violet 0.4))
   ((outline-7 &override) :foreground (doom-lighten dark-cyan 0.5))
   ((outline-8 &override) :foreground (doom-lighten violet 0.6))
                                        ; ((outline-1 &override) :foreground green)
                                        ; ((outline-2 &override) :foreground green)
                                        ; ((outline-3 &override) :foreground yellow)
                                        ; ((outline-4 &override) :foreground yellow)
                                        ; ((outline-5 &override) :foreground dark-yellow)
                                        ; ((outline-6 &override) :foreground dark-yellow)
   ;;;; org <built-in>
   ((org-code &override) :foreground orange)
   (org-date :foreground green)
   (org-document-info :foreground red)
   (org-document-title :foreground red)
   (org-drawer :foreground (doom-lighten cyan 0.4))
   (org-ellipsis :underline nil :foreground orange)
   (org-formula :foreground green)
   (org-meta-line :foreground comments)
   (org-list-dt :foreground cyan)
                                        ; (org-list-dt :foreground yellow)
   ((org-quote &override) :inherit 'italic :foreground base7 :background org-quote)
   (org-table :foreground cyan)
   (org-tag :foreground (doom-darken comments 0.15) :weight 'normal)
                                        ; (org-tag :foreground yellow :bold nil)
   (org-todo :foreground green :bold 'inherit)
                                        ; (org-todo :foreground yellow :bold 'inherit)
   (org-verbatim :foreground yellow)
   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground orange)
   (rainbow-delimiters-depth-2-face :foreground magenta)
   (rainbow-delimiters-depth-3-face :foreground green)
   (rainbow-delimiters-depth-4-face :foreground blue)
   ;;;; show-paren <built-in>
   ((show-paren-match &override) :foreground 'unspecified :background base5 :bold t)
   ((show-paren-mismatch &override) :foreground 'unspecified :background bg-diff-red)
   ;;;; swiper
   (swiper-line-face :background bg-alt2)
   ;;;; undo-tree
   (undo-tree-visualizer-active-branch-face :foreground cyan)
   (undo-tree-visualizer-current-face :foreground yellow)
   ;;;; vimish-fold
   ((vimish-fold-overlay &override) :inherit 'font-lock-comment-face :background bg-alt2 :weight 'light)
   ((vimish-fold-mouse-face &override) :foreground "white" :background yellow :weight 'light)
   ((vimish-fold-fringe &override) :foreground magenta :background magenta)
   ;;;; web-mode
   (web-mode-html-tag-bracket-face :foreground blue)
   (web-mode-html-tag-face         :foreground cyan)
   (web-mode-html-attr-name-face   :foreground cyan)
   (web-mode-json-key-face         :foreground green)
   (web-mode-json-context-face     :foreground cyan)
   ;;;; which-key
   (which-key-key-face                   :foreground green)
   (which-key-group-description-face     :foreground red)
   (which-key-command-description-face   :foreground blue)
   (which-key-local-map-description-face :foreground orange))

  ;;;; Base theme variable overrides
  ;; ()
  )
