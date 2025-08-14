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
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-gruvbox-material-light-theme
  :type '(choice integer boolean))

(defcustom doom-gruvbox-material-light-variant nil
  "A choice of \"hard\" or \"soft\" can be used to change the
background contrast. All other values default to \"medium\"."
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
   (base8  palette/grey0)

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
   (dark-red          '("#421E1E" "#5f0000"                 ))
   (dark-aqua         '("#36473A" "#005f5f"                 ))
   (sienna            '("#dd6f48" "d7875f"                  ))
   (lightblue4        '("#66999D" "#5fafaf" "brightblue"    ))
   (burlywood4        '("#BBAA97" "#aafaf87"                ))
   (aquamarine4       '("#83af98" "#87af87"                 ))
   (turquoise4        '("#61ACBB" "#5fafaf" "brightblue"    ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)    ;;
   (builtin        orange)   ;; the require, load, puts, lambda, etc.
   (comments       (doom-blend grey base8 0.5))
   (doc-comments   (doom-darken green 0.15))
   (constants      violet)  ;; the symbols, true, false, etc.
   (functions      yellow)  ;; the definition (name) of the function
   (keywords       red)     ;; the module, class, return, unless, if, end, etc.
   (methods        cyan)    ;; ???
   (operators      blue)    ;; ???
   (type           blue)    ;; the constants and classes/modules names
   (strings        green)   ;; the strings with quotes
   (variables      cyan)    ;; the instance or class variable names, interpolation
   (numbers        violet)  ;; the numbers
   (region         bg-alt2) ;; the selection of the area

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

   ;;;; FIXME: Do we need it?
   (tooltip :background base1 :foreground base6)

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

   ;;;; corfu (instead of company)
   (corfu-current :background base3)
   (corfu-border  :background base3)
   (corfu-default :background base1 :foreground fg)
   (corfu-annotations :foreground comments)

   ;;;; anzu FIXME: Remove
   ;; (anzu-mode-line         :foreground yellow :weight 'bold)
   ;; (anzu-match-1           :background green)
   ;; (anzu-match-2           :background faded-yellow)
   ;; (anzu-match-3           :background aquamarine4)
   ;; (anzu-replace-to        :foreground yellow)
   ;; (anzu-replace-highlight :inherit 'isearch)

   ;;;; centaur-tabs
   (centaur-tabs-unselected :background bg-alt :foreground base4)

   ;;;; company
   (company-scrollbar-bg                      :background base1)
   (company-scrollbar-fg                      :background bg-alt)
   (company-tooltip                           :background bg-alt)
   (company-tooltip-annotation                :foreground green)
   (company-tooltip-annotation-selection      :inherit 'company-tooltip-annotation)
   (company-tooltip-selection                 :foreground violet :background base2)
   (company-tooltip-common                    :foreground blue :underline t)
   (company-tooltip-common-selection          :foreground blue :underline t)
   (company-preview-common                    :foreground base7)
   (company-preview                           :background lightblue4)
   (company-preview-search                    :background turquoise4)
   (company-template-field                    :foreground "black" :background yellow)
   (company-echo-common                       :foreground faded-red)

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

   ;;;; doom-emacs
   (doom-dashboard-banner      :foreground (doom-darken base4 0.3))
   (doom-dashboard-menu-title  :foreground green)
   (doom-dashboard-menu-desc   :foreground green)
   (doom-dashboard-footer-icon :foreground (doom-darken yellow 0.4))
   (doom-dashboard-loaded      :foreground yellow)

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

   ;;;; elfeed
   (elfeed-search-title-face :foreground grey)
   (elfeed-search-date-face :inherit 'font-lock-builtin-face :underline t)
   (elfeed-search-tag-face :inherit 'font-lock-keyword-face)
   (elfeed-search-unread-count-face :inherit 'font-lock-comment-face)
   (elfeed-search-filter-face :inherit 'font-lock-string-face)

   ;;;; flycheck
   (flycheck-info :underline `(:style wave :color ,blue))

   ;;;; git-gutter
   (git-gutter:modified :foreground faded-blue :background blue)
   (git-gutter:added    :foreground faded-green :background green)
   (git-gutter:deleted  :foreground faded-red :backgrond red)
   ;;;; git-gutter+
   (git-gutter+-modified :foreground faded-blue :background blue)
   (git-gutter+-added    :foreground faded-green :background green)
   (git-gutter+-deleted  :foreground faded-red :backgrond red)

   ;;;; helm
   (helm-candidate-number       :background blue :foreground bg)
   (helm-M-x-key                :foreground orange)
   (helm-action                 :foreground base8 :underline t)
   (helm-bookmark-addressbook   :foreground red)
   (helm-bookmark-directory     :foreground violet)
   (helm-bookmark-file          :foreground faded-blue)
   (helm-bookmark-gnus          :foreground magenta)
   (helm-bookmark-info          :foreground turquoise4)
   (helm-bookmark-man           :foreground sienna)
   (helm-bookmark-w3m           :foreground yellow)
   (helm-buffer-directory       :foreground "white" :background blue)
   (helm-buffer-not-saved       :foreground red)
   (helm-buffer-process         :foreground burlywood4)
   (helm-buffer-saved-out       :foreground red)
   (helm-buffer-size            :foreground violet)
   (helm-candidate-number       :foreground green)
   (helm-ff-directory           :foreground violet)
   (helm-ff-executable          :foreground turquoise4)
   (helm-ff-file                :foreground sienna)
   (helm-ff-invalid-symlink     :foreground "white" :background red)
   (helm-ff-prefix              :foreground "black" :background yellow)
   (helm-ff-symlink             :foreground orange)
   (helm-grep-cmd-line          :foreground green)
   (helm-grep-file              :foreground magenta)
   (helm-grep-finish            :foreground turquoise4)
   (helm-grep-lineno            :foreground orange)
   (helm-grep-match             :foreground yellow)
   (helm-grep-running           :foreground red)
   (helm-header                 :foreground aquamarine4)
   (helm-helper                 :foreground aquamarine4)
   (helm-history-deleted        :foreground "black" :background red)
   (helm-history-remote         :foreground faded-red)
   (helm-lisp-completion-info   :foreground faded-orange)
   (helm-lisp-show-completion   :foreground red)
   (helm-locate-finish          :foreground "white" :background aquamarine4)
   (helm-match                  :foreground orange)
   (helm-moccur-buffer          :foreground cyan :underline t)
   (helm-prefarg                :foreground turquoise4)
   (helm-selection              :foreground "white" :background base2)
   (helm-selection-line         :foreground "white" :background base2)
   (helm-separator              :foreground faded-red)
   (helm-source-header          :foreground base5)
   (helm-visible-mark           :foreground "black" :background light3)

   ;;;; ivy
   (ivy-minibuffer-match-face-1     :foreground orange)
   (ivy-minibuffer-match-face-2     :foreground yellow)
   (ivy-minibuffer-match-face-3     :foreground faded-orange)
   (ivy-minibuffer-match-face-4     :foreground faded-yellow)

   ;;;; ivy-posframe
   (ivy-posframe               :background bg-alt)

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

   ;;;; LSP
   (lsp-face-highlight-textual :background bg-visual-blue :foreground blue)

   ;;;; magit
   (magit-bisect-bad                      :foreground faded-red)
   (magit-bisect-good                     :foreground faded-green)
   (magit-bisect-skip                     :foreground faded-yellow)
   (magit-blame-heading                   :foreground base7 :background base2)
   (magit-branch-local                    :foreground blue)
   (magit-branch-current                  :underline blue :inherit 'magit-branch-local)
   (magit-branch-remote                   :foreground green)
   (magit-cherry-equivalent               :foreground violet)
   (magit-cherry-unmatched                :foreground cyan)
   (magit-diff-added                      :foreground green)
   (magit-diff-added-highlight            :foreground green :inherit 'magit-diff-context-highlight)
   (magit-diff-base                       :background faded-yellow :foreground base5)
   (magit-diff-base-highlight             :background faded-yellow :foreground base7)
   (magit-diff-context                    :foreground base1  :foreground base6)
   (magit-diff-context-highlight          :background base1 :foreground base7)
   (magit-diff-hunk-heading               :background base3 :foreground base5)
   (magit-diff-hunk-heading-highlight     :background base2 :foreground base7)
   (magit-diff-hunk-heading-selection     :background base2 :foreground orange)
   (magit-diff-lines-heading              :background faded-orange :foreground base7)
   (magit-diff-removed                    :foreground red)
   (magit-diff-removed-highlight          :foreground red :inherit 'magit-diff-context-highlight)
   (magit-diffstat-added                  :foreground faded-green)
   (magit-diffstat-removed                :foreground faded-red)
   (magit-dimmed                          :foreground base4)
   (magit-hash                            :foreground blue)
   (magit-log-author                      :foreground red)
   (magit-log-date                        :foreground cyan)
   (magit-log-graph                       :foreground base4)
   (magit-process-ng                      :foreground red :weight 'bold)
   (magit-process-ok                      :foreground green :weight 'bold)
   (magit-reflog-amend                    :foreground violet)
   (magit-reflog-checkout                 :foreground blue)
   (magit-reflog-cherry-pick              :foreground green)
   (magit-reflog-commit                   :foreground green)
   (magit-reflog-merge                    :foreground green)
   (magit-reflog-other                    :foreground cyan)
   (magit-reflog-rebase                   :foreground violet)
   (magit-reflog-remote                   :foreground blue)
   (magit-reflog-reset                    :foreground red)
   (magit-refname                         :foreground light4)
   (magit-section-heading                 :foreground yellow :weight 'bold)
   (magit-section-heading-selection       :foreground faded-yellow)
   (magit-section-highlight               :background base1)
   (magit-sequence-drop                   :foreground faded-yellow)
   (magit-sequence-head                   :foreground cyan)
   (magit-sequence-part                   :foreground yellow)
   (magit-sequence-stop                   :foreground green)
   (magit-signature-bad                   :foreground red :weight 'bold)
   (magit-signature-error                 :foreground red)
   (magit-signature-expired               :foreground orange)
   (magit-signature-good                  :foreground green)
   (magit-signature-revoked               :foreground violet)
   (magit-signature-untrusted             :foreground blue)
   (magit-tag                             :foreground yellow)

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
   ;;;; message <built-in>
   (message-header-cc :inherit 'font-lock-variable-name-face)
   (message-header-subject :foreground orange :weight 'bold)
   (message-header-other :inherit 'font-lock-variable-name-face)
   (message-header-name :inherit 'font-lock-keyword-face)
   (message-cited-text :inherit 'font-lock-comment-face)
   (message-mml :foregrond faded-green :weight 'bold)
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

   ;;;; popup
   (popup-face :foreground base6  :background base1)
   (popup-menu-selection-face :foreground fg :background faded-green)
   (popup-menu-mouse-face :foreground fg :background faded-green)
   (popup-tip-face :foreground base5 :background base2)

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-3-face :foreground delimiter-3)
   (rainbow-delimiters-depth-4-face :foreground faded-orange)
   (rainbow-delimiters-depth-7-face :foreground delimiter-3)
   (rainbox-delimiters-depth-8-face :foreground faded-orange)
   (rainbow-delimiters-depth-11-face :foreground delimiter-3)
   (rainbox-delimiters-depth-12-face :foreground faded-orange)
   (rainbow-delimiters-unmatched-face: :foreground fg)

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
