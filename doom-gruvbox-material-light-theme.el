;;; doom-gruvbox-material-light-theme.el --- inspired by sainnhe's Gruvbox Material -*- lexical-binding: t; no-byte-compile: t; -*-
(require 'doom-themes)

;; Compiler pacifier
(defvar modeline-bg)

;;
;;; Variables

(defgroup doom-gruvbox-material-light-theme nil
  "Options for the `doom-gruvbox-material-light' theme."
  :group 'doom-themes)

(defcustom doom-gruvbox-material-light-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-gruvbox-material-light-theme
  :type '(choice integer boolean))

(defcustom doom-gruvbox-material-light-variant nil
  "A choice of \"hard\" or \"soft\" can be used to change the background contrast.
All other values default to \"medium\"."
  :group 'doom-gruvbox-material-light-theme
  :type  'string)

;;
;;; Color variants

(cond
 ((equal doom-gruvbox-material-light-variant "hard")
  ;;    name                        UI        256       16
  (setq palette/bg-dim           '("#000000" "#000000" "unknown")
        ))
 ((equal doom-gruvbox-material-light-variant "soft")
  ;;    name                        UI        256       16
  (setq palette/bg-dim           '("#ebdbb2" "#000000" "unknown")
        palette/bg0              '("#f2e5bc" "#000000" "unknown")
        palette/bg1              '("#eddeb5" "#000000" "unknown")
        palette/bg2              '("#ebdbb2" "#000000" "unknown")
        palette/bg3              '("#e6d5ae" "#000000" "unknown")
        palette/bg4              '("#dac9a5" "#000000" "unknown")
        palette/bg5              '("#d5c4a1" "#000000" "unknown")
        palette/bg-diff-red      '("#f7d9b9" "#000000" "unknown")
        palette/bg-diff-green    '("#dfe1b4" "#000000" "unknown")
        palette/bg-diff-blue     '("#dbddbf" "#000000" "unknown")
        palette/bg-statusline1   '("#ebdbb2" "#000000" "unknown")
        palette/bg-statusline2   '("#ebdbb2" "#000000" "unknown")
        palette/bg-statusline3   '("#dac9a5" "#000000" "unknown")
        palette/bg-current-word  '("#ebdbb2" "#000000" "unknown")
        palette/bg-visual-red    '("#efd2b3" "#000000" "unknown")
        palette/bg-visual-green  '("#d7d9ae" "#000000" "unknown")
        palette/bg-visual-blue   '("#d3d5b8" "#000000" "unknown")
        palette/bg-visual-yellow '("#f3deaa" "#000000" "unknown")
        palette/bg-visual-purple '("#e8d4ba" "#000000" "unknown")
        palette/bg-red           '("#ae5858" "#000000" "unknown")
        palette/bg-green         '("#6f8352" "#000000" "unknown")
        palette/bg-yellow        '("#a96b2c" "#000000" "unknown")
        palette/fg0              '("#654735" "#000000" "unknown")
        palette/fg1              '("#4f3829" "#000000" "unknown")
        palette/red              '("#c14a4a" "#000000" "unknown")
        palette/green            '("#6c782e" "#000000" "unknown")
        palette/blue             '("#45707a" "#000000" "unknown")
        palette/yellow           '("#b47109" "#000000" "unknown")
        palette/purple           '("#945e80" "#000000" "unknown")
        palette/orange           '("#c35e0a" "#000000" "unknown")
        palette/aqua             '("#4c7a5d" "#000000" "unknown")
        palette/grey0            '("#a89984" "#000000" "unknown")
        palette/grey1            '("#928374" "#000000" "unknown")
        palette/grey2            '("#7c6f64" "#000000" "unknown")
        ))
 (t   ;; doom-gruvbox-material-light-variant "medium"
  ;;    name                        UI        256       16
  (setq palette/bg-dim           '("#000000" "#000000" "unknown")
        )))

;;
;;; Theme definition

(def-doom-theme doom-gruvbox-material-light
    "Light theme with pastel 'retro groove' colors."
  :family 'doom-gruvbox-material
  :background-mode 'light

  ((bg      palette/bg0)
   (bg-alt  palette/bg-current-word)
   (bg-alt2 palette/bg-statusline3)  ; for region, selection etc.

   (fg      palette/fg0)
   (fg-alt  palette/fg1)

   (base0  palette/bg-dim)
   (base1  palette/bg1)
   (base2  palette/bg2)
   (base3  palette/bg3)
   (base4  palette/bg4)
   (base5  palette/bg5)
   (base6  palette/bg5)
   (base7  palette/grey0)
   (base8  palette/grey1)

   (red       palette/red)
   (orange    palette/orange)
   (yellow    palette/yellow)
   (green     palette/green)
   (teal      palette/aqua)
   (blue      palette/blue)
   (cyan      palette/aqua)
   (magenta   palette/purple)
   (violet    palette/purple)
   (grey      palette/grey2)

   (dark-blue palette/blue)
   (dark-cyan palette/aqua)

   ;; Extra colors
   (bg-visual-red    palette/bg-visual-red)
   (bg-visual-green  palette/bg-visual-green)
   (bg-visual-blue   palette/bg-visual-blue)
   (bg-visual-yellow palette/bg-visual-yellow)
   (bg-visual-purple palette/bg-visual-purple)
   (bg-diff-red      palette/bg-diff-red)
   (bg-diff-green    palette/bg-diff-green)
   (bg-diff-blue     palette/bg-diff-blue)
   (bg-red           palette/bg-red)
   (bg-green         palette/bg-green)
   (bg-yellow        palette/bg-yellow)

   ;; Extra FIXME: Get rid of it
   (delimiter-3       '("#8ec07c" "#87af87"                 ))
   (light3            '("#665c54" "#626262" "grey"          ))
   (light4            '("#7c6f64" "#767676" "grey"          ))
   (faded-red         '("#cc241d" "#d75f5f" "red"           ))
   (faded-green       '("#98971a" "#afaf00" "green"         ))
   (faded-yellow      '("#d79921" "#ffaf00" "yellow"        ))
   (faded-blue        '("#458588" "#87afaf" "blue"          ))
   (faded-orange      '("#d65d0e" "#ff8700" "brightorange"  ))
   (faded-aqua        '("#689d6a" "#87af87" "brightcyan"    ))
   (dark-aqua         '("#36473A" "#005f5f"                 ))
   (sienna            '("#dd6f48" "d7875f"                  ))
   (burlywood4        '("#BBAA97" "#aafaf87"                ))
   (aquamarine4       '("#83af98" "#87af87"                 ))
   (turquoise4        '("#61ACBB" "#5fafaf" "brightblue"    ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)   ; ???
   (builtin        orange)  ; the require, load, puts, lambda, etc.
   (comments       (doom-blend grey base8 0.5))
   (doc-comments   (doom-darken green 0.15))
   (constants      violet)  ; the symbols, true, false, etc.
   (functions      yellow)  ; the definition (name) of the function
   (keywords       red)     ; the module, class, return, unless, if, end, etc.
   (methods        cyan)    ; ???
   (operators      blue)    ; ???
   (type           blue)    ; the constants and classes/modules names
   (strings        green)   ; the strings with quotes
   (variables      cyan)    ; the instance or class variable names, interpolation
   (numbers        violet)  ; the numbers
   (region         bg-alt2) ; the selection of the area

   (error          red)
   (warning        orange)
   (success        green)

   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (-modeline-pad
    (when doom-gruvbox-material-light-padded-modeline
      (if (integerp doom-gruvbox-material-light-padded-modeline)
          doom-gruvbox-material-light-padded-modeline
        4)))

   (modeline-fg     'unspecified)
   (modeline-fg-alt (doom-blend violet base4 0.2))

   (modeline-bg bg-alt)
   (modeline-bg-l bg-alt)
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ;;;; Base theme face overrides
  ((cursor :background (doom-lighten fg 0.1))

   ;;;; Current line and line number
   (hl-line :background base0)
   ((line-number &override) :foreground (doom-lighten fg-alt 0.45))
   ((line-number-current-line &override) :foreground orange)

   ;;;; isearch
   (isearch        :foreground bg-visual-yellow :background orange)
   (isearch-fail   :foreground bg-visual-red    :background bg-red)
   (lazy-highlight :foreground bg-visual-yellow :background bg-yellow :distant-foreground fg :bold bold)

   ;; TODO: Maybe improve?
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground highlight)

   ;;;; FCI
   (fill-column-indicator :foreground base2 :background nil)

   ;;;; nav-flash (current line flashing on big move)
   (nav-flash-face :background bg-alt2)

   ;;;; goggles (areas highlight on action)
   (goggles-changed :background bg-visual-blue)
   (goggles-removed :background bg-visual-red)
   (goggles-added   :background bg-visual-green)

   ;;;; corfu (autocomplete popup)
   (corfu-default     :background bg-alt :foreground fg)
   (corfu-current     :background bg-alt2)
   (corfu-border      :background base4)
   (corfu-bar         :background fg)
   (corfu-annotations :foreground comments)

   ;;;; doom-emacs
   (doom-dashboard-banner      :foreground grey)
   (doom-dashboard-menu-title  :foreground blue)
   (doom-dashboard-menu-desc   :foreground violet)
   (doom-dashboard-footer-icon :foreground violet)
   (doom-dashboard-loaded      :foreground yellow)

   ;;;; lsp
   (lsp-face-highlight-textual :background bg-visual-blue :foreground blue)

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground blue)
   (rainbow-delimiters-depth-2-face :foreground violet)
   (rainbow-delimiters-depth-3-face :foreground cyan)
   (rainbow-delimiters-depth-4-face :foreground orange)
   (rainbow-delimiters-depth-5-face :foreground green)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground blue)
   (rainbow-delimiters-depth-8-face :foreground violet)
   (rainbow-delimiters-depth-9-face :foreground cyan)

   ;;;; tooltip
   ;;;; TODO: Not sure where it is applied
   (tooltip :background bg-alt :foreground fg)

   ;;;; flycheck
   ;;;; FIXME: On Emacs load this is not applied
   (flycheck-error   :underline `(:style wave :color ,red)    :background base3)
   (flycheck-warning :underline `(:style wave :color ,yellow) :background base3)
   (flycheck-info    :underline `(:style wave :color ,cyan)   :background base3)

   ;;;; doom-modeline
   (doom-modeline-project-dir       :bold t        :foreground blue)
   (doom-modeline-buffer-path       :inherit 'bold :foreground green)
   (doom-modeline-buffer-file       :inherit 'bold :foreground fg)
   (doom-modeline-buffer-modified   :inherit 'bold :foreground orange)
   (doom-modeline-buffer-major-mode :inherit 'bold :foreground violet)

   (doom-modeline-error   :foreground red)
   (doom-modeline-warning :foreground yellow)
   (doom-modeline-info    :foreground cyan)

   ;;;; popup (hints and popups?)
   ;;;; TODO: Define rest
   ;; (popup-face :foreground fg  :background bg-alt)
   ;; (popup-menu-selection-face :foreground fg :background bg-alt2)
   ;; (popup-menu-mouse-face :foreground fg :background bg-alt2)
   ;; (popup-tip-face :foreground fg :background bg-alt)

   ;;;; consult
   (consult-highlight-match :foreground bg-visual-yellow :background bg-yellow)
   ;;(consult-highlight-mark ??)
   ;; (consult-grep-context :foreground orange)
   ;; (consult-separator) ; line number?

   ;;;; diff
   (diff-refine-added :foreground bg-alt :background bg-green)
   (diff-refine-removed :foreground bg-alt :background bg-red)

   ;;;; magit
   (magit-section-highlight                                                :background bg-alt2)
   (magit-diff-hunk-heading           :foreground bg-alt                   :background (doom-lighten fg 0.4))
   (magit-diff-hunk-heading-highlight :foreground bg-alt                   :background (doom-lighten fg 0.1))
   (magit-diff-hunk-heading-selection :foreground bg-alt                   :background orange)
   (magit-diff-lines-boundary         :foreground bg-alt                   :background orange)
   (magit-diff-context                :foreground (doom-lighten fg 0.4)    :background bg)
   (magit-diff-context-highlight      :foreground fg                       :background bg)
   (magit-diff-lines-heading          :foreground bg-alt                   :background orange)
   (magit-diff-added                  :foreground (doom-lighten green 0.4) :background bg-diff-green)
   (magit-diff-added-highlight        :foreground green                    :background (doom-darken bg-diff-green 0.02))
   (magit-diff-removed                :foreground (doom-lighten red 0.4)   :background bg-diff-red)
   (magit-diff-removed-highlight      :foreground red                      :background (doom-darken bg-diff-red 0.02))
   (magit-hash                        :foreground yellow)
   (magit-tag                         :foreground yellow)
   (magit-branch-remote               :foreground teal)
   (magit-branch-local                :foreground green)

   ;;;; magit pop-up with options
   (transient-heading                 :foreground blue)
   (transient-key-stay                :foreground violet)
   (transient-key-exit                :foreground orange)
   (transient-inactive-argument       :foreground base8)
   (transient-argument                :foreground violet :bold t)
   (transient-value                   :foreground green  :bold t)
   ;;;; inherited by transient-unreachable
   (shadow                            :foreground base7)

   ;;
   ;; XXX: TO BE VERIFIED
   ;;

   ;;;; centaur-tabs
   (centaur-tabs-unselected :background bg-alt :foreground base4)

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;;;; doom-modeline
   (doom-modeline-bar :background highlight)

   ;;;; diredfl
   (diredfl-autofile-name :foreground base5)
   (diredfl-compressed-file-name :foreground base5)
   (diredfl-compressed-file-suffix :foreground faded-blue)
   (diredfl-dir-priv :foreground blue :backgtround dark-blue)
   (diredfl-exec-priv :foreground blue :backgrond dark-blue)
   (diredfl-file-name :foreground base5)
   (diredfl-file-suffix :foreground light4)
   (diredfl-link-priv :foreground magenta)
   (diredfl-no-priv :foreground base5)
   (diredfl-number :foreground yellow)
   (diredfl-other-priv :foreground violet)
   (diredfl-rare-priv :foreground base5)
   ;;;; diredp
   (diredp-file-name :foreground base5)
   (diredp-file-suffix :foreground light4)
   (diredp-compressed-file-suffix :foreground faded-blue)
   (diredp-dir-name :foreground faded-blue)
   (diredp-symlink :foreground orange)
   (diredp-date-time :foreground light3)
   (diredp-number :foreground faded-blue)
   (diredp-no-priv :foreground base4)
   (diredp-other-priv :foreground base2)
   (diredp-rare-priv :foreground base4)
   (diredp-ignored-file-name :foreground base5)
   (diredp-dir-priv :foreground faded-blue :background dark-blue)
   ((diredp-dir-exec-priv &inherit diredp-dir-priv))
   (diredp-link-priv :foreground faded-aqua)

   ;;;; diff-mode
   (diff-changed                   :foreground base6)
   (diff-removed                   :foreground red)
   (diff-indicator-changed         :inherit 'diff-changed)
   (diff-indicator-added           :inherit 'diff-added)
   (diff-indicator-removed         :inherit 'diff-removed)

   ;;;; ediff <built-in>
   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))

   ;;;; js2-mode
   (js2-warning                    :underline `(:style wave :color ,yellow))
   (js2-error                      :underline `(:style wave :color ,red))
   (js2-external-variable          :underline `(:style wave :color ,cyan))
   (js2-jsdoc-tag                  :foreground grey)
   (js2-jsdoc-type                 :foreground light4)
   (js2-jsdoc-value                :foreground light3)
   (js2-function-param             :foreground cyan)
   (js2-function-call              :foreground blue)
   (js2-instance-member            :foreground orange)
   (js2-private-member             :foreground yellow)
   (js2-private-function-call      :foreground faded-aqua)
   (js2-jsdoc-html-tag-name        :foreground light4)
   (js2-jsdoc-html-tag-delimiter   :foreground light3)

   ;;;; markdown-mode
   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   ((markdown-code-face &override)       :background base1)
   (mmm-default-submode-face :background base1)
   (markdown-header-face-1          :foreground blue)
   (markdown-header-face-2          :foreground yellow)
   (markdown-header-face-3          :foreground violet)
   (markdown-header-face-4          :foreground red)
   (markdown-header-face-5          :foreground green)
   (markdown-header-face-6          :foreground dark-cyan)

   ;;;; mu4e
   (mu4e-highlight-face :foreground green)
   (mu4e-unread-face :foreground blue :weight 'bold)
   (mu4e-header-key-face :foreground green :weight 'bold)

   ;;;; outline <built-in>
   ((outline-1 &override) :foreground red)
   ((outline-2 &override) :foreground orange)

   ;;;; org <built-in>
   (org-agenda-date-today       :foreground base7 :weight 'bold :italic t)
   (org-agenda-done             :foreground cyan)
   (org-agenda-structure        :inherit 'font-lock-comment-face)
   (org-archived                :foreground base7 :weight 'bold)
   (org-block                   :background base1 :extend t)
   (org-block-begin-line        :background base2 :extend t)
   (org-block-end-line          :background base2 :extend t)
   (org-date                    :foreground blue :underline t)
   (org-deadline-announce       :foreground faded-red)
   (org-document-info           :foreground faded-blue)
   (org-document-title          :foreground faded-blue)
   (org-done                    :foreground cyan :weight 'bold :bold t)
   (org-drawer                  :inherit 'font-lock-function-name-face)
   (org-ellipsis                :foreground light4)
   (org-footnote                :foreground cyan :underline t)
   (org-formula                 :foreground yellow)
   (org-headline-done           :foreground cyan)
   (org-latex-and-related       :foreground blue)
   (org-level-1                 :foreground blue)
   (org-level-2                 :foreground yellow)
   (org-level-3                 :foreground violet)
   (org-level-4                 :foreground red)
   (org-level-5                 :foreground green)
   (org-level-6                 :foreground cyan)
   (org-level-7                 :foreground faded-blue)
   (org-level-8                 :foreground orange)
   (org-link                    :foreground faded-aqua :underline t)
   (org-scheduled               :foreground yellow)
   (org-scheduled-previously    :foreground faded-red)
   (org-scheduled-today         :foreground blue)
   (org-sexp-date               :foreground faded-blue :underline t)
   (org-table                   :foreground blue)
   (org-tag                     :bold t :weight 'bold)
   (org-time-grid               :foreground faded-orange)
   (org-todo                    :foreground red :weight 'bold :bold t)
   (org-upcoming-deadline       :inherit 'font-lock-keyword-face)
   (org-warning                 :foreground red :weight 'bold :bold t)
   ;;;; org-habit
   (org-habit-clear-face          :background faded-blue)
   (org-habit-clear-future-face   :background blue)
   (org-habit-ready-face          :background faded-green)
   (org-habit-ready-future-face   :background green)
   (org-habit-alert-face          :background faded-yellow)
   (org-habit-alert-future-face   :background yellow)
   (org-habit-overdue-face        :background faded-red)
   (org-habit-overdue-future-face :background red)

   ;;;; swiper
   (swiper-line-face    :background base3 :foreground base0)
   (swiper-match-face-1 :inherit 'unspecified :background base1  :foreground base5)
   (swiper-match-face-2 :inherit 'unspecified :background orange :foreground base0 :weight 'bold)
   (swiper-match-face-3 :inherit 'unspecified :background violet :foreground base1 :weight 'bold)
   (swiper-match-face-4 :inherit 'unspecified :background green  :foreground base2 :weight 'bold)
   (swiper-background-match-face-1 :inherit 'unspecified :background base2)
   (swiper-background-match-face-2 :inherit 'unspecified :background base3)
   (swiper-background-match-face-3 :inherit 'unspecified :background base4)
   (swiper-background-match-face-4 :inherit 'unspecified :background base5)

   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;;;; vterm
   (vterm-color-black   :background grey    :foreground base1)
   (vterm-color-red     :background red     :foreground faded-red)
   (vterm-color-green   :background green   :foreground faded-green)
   (vterm-color-yellow  :background yellow  :foreground faded-yellow)
   (vterm-color-blue    :background blue    :foreground faded-blue)
   (vterm-color-magenta :background violet  :foreground magenta)
   (vterm-color-cyan    :background cyan    :foreground faded-aqua)
   (vterm-color-white   :background base7   :foreground light4)
   ;;;; web-mode
   (web-mode-current-element-highlight-face :background dark-blue :foreground bg)
   ;;;; wgrep <built-in>
   (wgrep-face :background base1)

   ;;;; whitespace <built-in> FIXME: verify
   (whitespace-trailing    :foreground bg-red :background base1)
   (whitespace-line        :foreground bg-red :background base1)
   (whitespace-indentation :foreground base4  :background bg)
   (whitespace-empty))

  ;;;; Base theme variable overrides-
  ;; ()
  )

;;; doom-gruvbox-material-light-theme.el ends here
