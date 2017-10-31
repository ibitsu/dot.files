;; emacs 24
;; linux
(global-font-lock-mode 0)

(if (not (memq 'time-stamp write-file-hooks))
    (setq write-file-hooks
          (cons 'time-stamp write-file-hooks)))

;; set $HOME
(cd "~/")

;; PATH����
;(add-to-list 'exec-path (expand-file-name "/usr/local/bin" "~/bin" "/sw/bin"))
;(setq exec-path (cons "/usr/local/bin" exec-path))
;(setq exec-path (cons "/sw/bin" exec-path))
;(set exec-path '("/usr/local/bin" "/usr/bin" "/bin" "/sw/bin" "/sw/sbin"
;        "/home/shun/bin" "/usr/local/sbin" "/usr/X11R6/bin" $PATH))

(defconst my-elisp-directory "~/.emacs.d/site-lisp" "The directory for my elisp file.")

(dolist (dir (let ((dir (expand-file-name my-elisp-directory)))
               (list dir (format "%s%d" dir emacs-major-version))))
  (when (and (stringp dir) (file-directory-p dir))
    (let ((default-directory dir))
      (add-to-list 'load-path default-directory)
      (normal-top-level-add-subdirs-to-load-path))))

(setq exec-path
      (append
       (list "/usr/local/bin" "/opt/local/bin" "/opt/local/sbin" "/usr/bin") exec-path)
      )

;(setenv "PATH"
;        (concat '"/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin" (getenv "PATH"))
;        )

;; Emacs�˥��ޥ�ɤΰ��֤�ǧ�������ƻȤ���褦�ˤ���
(dolist (dir (list
              "/sbin"
              "/bin"
              "/usr/sbin"
              "/usr/bin"
              "/usr/local/bin"
              "/opt/local/bin"
              ;; ruby�ξ���ľ�ܻ���
              (expand-file-name "~/.rbenv/versions/1.9.2-p320/bin")
              ;; �⤷����
              ;; (expand-file-name "~/.rbenv/shims")
              ))
  (when (and (file-exists-p dir) (not (member dir exec-path)))
    (setenv "PATH" (concat dir ":" (getenv "PATH")))
    (setq exec-path (append (list dir) exec-path))))


;(setenv "JAVA_HOME" "/Library/Java/Home")
;(setenv "ANT_HOME" "/sw/lib/ant")

(setq load-path
      (cons "/Applications/Emacs24.app/Contents/Resources/site-lisp" load-path)
      )

;;(setenv "LC_ALL" "en")

;;; local settings
;(setq send-mail-function 'smtpmail-send-it)
;;;(setq smtp-default-server "127.0.0.1")
;(setq smtp-default-server "localhost")
;(setq smtp-default-server "mailhost.squi.sh")
;(setq smtp-default-server "mail.lef.to")
;(setq smtp-service "smtp")
;(setq smtp-local-domain "squi.sh")
;(setq smtp-debug-info t)
;(autoload 'smtpmail-send-it "smtpmail")
;(setq user-full-name "shunichiro okada")

;;; Mule-UCS ������
;(require 'un-define) ; Unicode
;(require 'jisx0213)  ; JIS X 0213

;; ʸ��������
(set-language-environment 'Japanese)
;(set-default-coding-systems 'euc-jp)
;(prefer-coding-system 'utf-8)
;(set-keyboard-coding-system 'sjis-mac)
(set-keyboard-coding-system 'utf-8)
;(utf-translate-cjk-mode 1)
(set-terminal-coding-system 'euc-jp)
(setq file-name-coding-system 'utf-8)
;(set-buffer-process-coding-system 'utf-8)
(set-clipboard-coding-system 'sjis-mac)
(setq network-coding-system-alist
      '(("nntp" . (junet-unix . junet-unix))
       (110 . (no-conversion . no-conversion))
       (25 . (no-conversion . no-conversion))
       ))


;; �ե���ȥե�����������
;; see http://d.hatena.ne.jp/kazu-yamamoto/20090123/1232589385
;(setq my-font "-*-*-medium-r-normal--14-*-*-*-*-*-fontset-hiramaru")
;(setq my-font "-*-*-medium-r-normal--12-*-*-*-*-*-fontset-hiramaru")
;(setq fixed-width-use-QuickDraw-for-ascii t)
;(setq mac-allow-anti-aliasing t)
;(if (= emacs-major-version 22)
;    (require 'carbon-font))
;(set-default-font my-font)
;(add-to-list 'default-frame-alist `(font . ,my-font))
(when (= emacs-major-version 23)
  (set-fontset-font
   (frame-parameter nil 'font)
   'japanese-jisx0208
   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (set-fontset-font
   (frame-parameter nil 'font)
   'katakana-jisx0201
   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (set-fontset-font
   (frame-parameter nil 'font)
   'japanese-jisx0212
   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (setq face-font-rescale-alist
  '(("^-apple-hiragino.*" . 1.2)
     (".*osaka-bold.*" . 1.2)
     (".*osaka-medium.*" . 1.2)
     (".*courier-bold-.*-mac-roman" . 1.0)
     (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
     (".*monaco-bold-.*-mac-roman" . 0.9)
     ("-cdac$" . 1.3))))

;;;; �ǥե���ȥե����: DejaVu Sans Mono
;;(set-face-attribute 'default nil
;;                    :family "DejaVu Sans Mono"
;;                    :height 120)
;;;; ���ܸ�ե����: �ҥ饮�δݥ����å� 
;;(set-fontset-font
;; (frame-parameter nil 'font)
;; 'japanese-jisx0208
;; '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;(set-fontset-font
;; (frame-parameter nil 'font)
;; 'katakana-jisx0201
;; '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;(set-fontset-font
;; (frame-parameter nil 'font)
;; 'japanese-jisx0212
;; '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;;;; Unicode �ե����: Lucida Grande
;;(set-fontset-font
;; (frame-parameter nil 'font)
;; 'mule-unicode-0100-24ff
;; '("Lucida Grande" . "iso10646-1"))
;;;;; ����롤���ꥷ��ʸ�� 
;;;;; - iso ���������Ƥ����Τ� DejaVu Sans Mono ��ɽ��
;;;;; - �����Ǥʤ� Unicode �ȼ��Τ�Τ� Lucida Grande ��ɽ�� 
;;;;; - mule-unicode-0100-24ff �����������뤳��
;;;;; �����ʸ���ե����: DejaVu Sans Mono
;;(set-fontset-font
;; (frame-parameter nil 'font)
;; 'cyrillic-iso8859-5
;; '("DejaVu Sans Mono" . "iso10646-1"))
;;;;; ���ꥷ��ʸ���ե����: DejaVu Sans Mono
;;(set-fontset-font
;; (frame-parameter nil 'font)
;; 'greek-iso8859-7
;; '("DejaVu Sans Mono" . "iso10646-1"))


;; font for lion/macbook 17inch 
; �ե졼��Υե���Ȥ�����
(let* ((size 14) ; ASCII�ե���ȤΥ����� [9/10/12/14/15/17/19/20/...]
       (asciifont "Menlo") ; ASCII�ե����
       (jpfont "Hiragino Maru Gothic ProN") ; ���ܸ�ե����
       (h (* size 10))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont)))
  (set-face-attribute 'default nil :family asciifont :height h)
  (set-fontset-font nil 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font nil 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font nil 'katakana-jisx0201 jp-fontspec) ; Ⱦ�ѥ���
  (set-fontset-font nil '(#x0080 . #x024F) fontspec) ; ʬ�����դ���ƥ� 
  (set-fontset-font nil '(#x0370 . #x03FF) fontspec) ; ���ꥷ��ʸ��
)
;;; �ե���ȥ��������������
(dolist (elt '(("^-apple-hiragino.*" . 1.2)
		 (".*osaka-bold.*" . 1.2)
		 (".*osaka-medium.*" . 1.2)
		 (".*courier-bold-.*-mac-roman" . 1.0)
		 (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
		 (".*monaco-bold-.*-mac-roman" . 0.9)))
    (add-to-list 'face-font-rescale-alist elt))
;;; end

;;; GUI(frame,color,etc)
;;�����ȥ����Ȥ��Ƥ�ΤϤ��ޤ������ʤ����
(setq default-frame-alist
      (append (list '(foreground-color . "snow")
                    '(background-color . "black")
                    '(border-color . "black")
                    '(cursor-color . "orange")
                    '(mouse-color . "orange")
                    '(width . 171)
                    '(height . 56)
;                    '(width . 150)
;                    '(height . 44)
                    '(top . 20)
                    '(left . 0)
                    '(vertical-scroll-bars . nil)
            ;;'(font . "fontset-mac")
            ;;'(font . "fontset-shun")
                    )
              default-frame-alist)
      )

;; modeline
;(set-face-foreground 'modeline "snow")
;(set-face-background 'modeline "black")
;;(set-face-foreground 'modeline "black")
;;(set-face-background 'modeline "snow")

;; region/mark
(set-face-foreground 'region "white")
(set-face-background 'region "dim gray")

;; font-lock
(cond (
       (fboundp 'global-font-lock-mode)
       (global-font-lock-mode t)
       ;(setq font-lock-maximum-decoration t)
       (setq font-lock-support-mode 'jit-lock-mode)
       ))

;; colorize tab, zenkaku spaces, trailing white spaces
;; for font-lock aware modes
;(defface my-face-b-1 '((t (:background "gray"))) nil)
;(defface my-face-b-2 '((t (:foreground "red" :underline t))) nil)
;(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
;(defvar my-face-b-1 'my-face-b-1)
;(defvar my-face-b-2 'my-face-b-2)
;(defvar my-face-u-1 'my-face-u-1)

;(defadvice font-lock-mode (before my-font-lock-mode ())
;  (font-lock-add-keywords
;   major-mode
;   '(
;     ("\t" 0 my-face-b-2 append)
;     ("��" 0 my-face-b-1 append)
;     ("[ \t]+$" 0 my-face-u-1 append)
;     )))
;(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
;(ad-activate 'font-lock-mode)

;; editting settings
;; tab is set to 4 spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; autofill
(setq fill-column 80)
(setq text-mode-hook 'turn-on-auto-fill)
(setq default-major-mode 'text-mode)

;; display line-num and column-num in modeline
(line-number-mode 1)
(column-number-mode 1)

;; visual bell
;(setq visible-bell 1)
(setq visible-bell t)

;; shift�Ȱ�ư�ǥ꡼���������
;(pc-selection-mode)

;; �б����륫�å���ɽ������
(show-paren-mode 1)

;; �ޥ����ɥ饰�ǥ��ԡ�
(setq mouse-drag-copy-region t)

;;���ޥ�ɥ�����Meta�����Ȥ�������
;; Command-Key and Option-Key
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;;ưŪά��Ÿ������ʸ����ʸ�������
(setq dabbrev-case-fold-search nil)

;; ����Υ���������֤򵭲�
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/etc/places.txt")

;;�����Ԥ�������ʤ�
;;emacs21�Ǥϥǥե���Ȥ����ꤵ��Ƥ��ޤ���
(setq next-line-add-newlines nil)

;;��ư����message��ɽ�����ʤ�
;(setq inhibit-startup-message t)

;; ���ԤŤĥ������뤹��
(setq scroll-conservatively 1)

;; C-x C-b �ǥХåե��ꥹ�Ȥ򳫤����ˡ�������ɥ���ʬ�䤷�ʤ�
(global-set-key "\C-x\C-b" 'buffer-menu)

; Emacs Lisp info files�ξ��
;(Setq Info-default-directory-list
; '("/usr/local/share/info" "~emacs/info"))
(setq Info-default-directory-list
      (cons (expand-file-name "/usr/local/share/info") Info-default-directory-list )
      )

;;; �Хå����åץե��������¸���ֻ���[2002/03/02]
;; CVS�Ǵ������Ƥ��Ƥ����ꤷ�Ƥ����Ȱ���
;; !path!to!file-name~ ����¸�����
;;
(setq backup-by-copying t)
(setq backup-directory-alist
      '(
        ("^/etc/" . "/home/shun/tmp/etc")
        ("." . "/home/shun/tmp/emacs")
        ))

;;; Wanderlust
(require 'mime-setup)
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
; draft����skk��ư
(add-hook 'wl-mail-setup-hook
          (function
           (lambda ()
             (wl-draft-config-exec)
;             (skk-latin-mode 1)
             )))

;;; from here 20091211

;;���ܸ��ź�եե�����̾��������ɽ��
;;���줬�ʤ��Ȳ����ޤ���
(defvar my-mime-filename-coding-system-for-decode
  '(iso-2022-jp japanese-shift-jis japanese-iso-8bit))
(defun my-mime-decode-filename (filename)
  (let ((rest (eword-decode-string filename)))
    (or (when (and my-mime-filename-coding-system-for-decode
                   (string= rest filename))
          (let ((dcs (mapcar (function coding-system-base)
                             (detect-coding-string filename))))
            (unless (memq 'emacs-mule dcs)
              (let ((pcs my-mime-filename-coding-system-for-decode))
                (while pcs
                  (if (memq (coding-system-base (car pcs)) dcs)
                      (setq rest (decode-coding-string filename (car pcs))
                            pcs nil)
                    (setq pcs (cdr pcs))))))))
        rest)))

(eval-after-load "mime"
  '(defadvice mime-entity-filename (after eword-decode-for-broken-MUA activate)
     "Decode encoded file name for BROKEN MUA."
     (when (stringp ad-return-value)
       (setq ad-return-value (my-mime-decode-filename ad-return-value)))))
(require 'std11)

;; �ե�����̾�����ܸ��ź�եե�����򥨥󥳡��ɤ��� [semi-gnus-ja: 6046]
;(eval-after-load "std11"
;  '(defadvice std11-wrap-as-quoted-string
;     (before encode-string activate)
;     "Encode a string."
;     (require 'eword-encode)
;     (ad-set-arg 0 (eword-encode-string (ad-get-arg 0)))))

(eval-after-load "std11"
  '(defadvice std11-wrap-as-quoted-string (before encode-string activate)
     "Encode a string."
     (require 'eword-encode)
     (ad-set-arg 0 (or (eword-encode-string (ad-get-arg 0)) "" )) ))
;;; to here 20091211

;;; w3m
;; @see http://w3m.sourceforge.net/index.ja.html
;; @see http://emacs-w3m.namazu.org/
;; @version current stable
;;
(require 'mime-w3m)
;(require 'mime-setup)
;(require 'w3m-load)
;(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
;(autoload 'w3m-find-file "w3m" "w3m interface function for local file." t)
;(setq mime-setup-enable-inline-html t)
;;(eval-after-load "semi-setup"     ;;;; <<< 
;;  '(set-alist 'mime-view-type-subtype-score-alist '(text . html) 0))
;;;(setq w3m-use-cookies t) ;; experimental
;(setq mime-w3m-display-inline-images t)

;; browse-url w3m
;(setq browse-url-browser-function 'w3m-browse-url)
;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;(global-set-key "\C-xm" 'browse-url-at-point)
;;(setq browse-url-netscape-program "~/bin/open_navigator.sh")

;(autoload 'w3m-search "w3m-search" "Search QUERY using SEARCH-ENGINE." t)
;(setq w3m-search-default-engine "google-ja")
;(global-set-key "\C-cs" 'w3m-search)
;(setq w3m-mailto-url-function 'wl-draft)

;(autoload 'w3m-weather "w3m-weather" "Display weather report." t)
;(autoload 'w3m-antenna "w3m-antenna" "Report chenge of WEB sites." t)
;(setq w3m-use-form t)
;(setq w3m-command "/opt/local/bin/w3m")
;(setq w3m-home-page "/home/shun/.w3m/bookmark.html")
;(setq w3m-display-inline-image nil)

;; test - comment out on lion 
;(setq mime-setup-enable-inline-html nil)
;(eval-after-load "mime-view"
;  '(progn
;     (autoload 'mime-w3m-preview-text/html "mime-w3m")
;     (ctree-set-calist-strictly
;      'mime-preview-condition
;      '(
;        (type . text)
;        (subtype . html)
;        (body . visible)
;        (body-presentation-method . mime-w3m-preview-text/html)
;        ))
;     (set-alist 'mime-view-type-subtype-score-alist
;                '(text . html) 3)
;     ))

;(eval-after-load "semi-setup"
;  '(set-alist 'mime-view-type-subtype-score-alist '(text . html) 0))

;;; elscreen
(require 'elscreen)
(require 'elscreen-wl)
(require 'elscreen-dnd)
(require 'elscreen-dired)

;autocreate screen
(defmacro elscreen-create-automatically (ad-do-it)
  (` (if (not (elscreen-one-screen-p))
         (, ad-do-it)
       (elscreen-create)
       (elscreen-notify-screen-modification 'force-immediately)
       (elscreen-message "New screen is automatically created"))))
(defadvice elscreen-next (around elscreen-create-automatically activate)
  (elscreen-create-automatically ad-do-it))
(defadvice elscreen-previous (around elscreen-create-automatically activate)
  (elscreen-create-automatically ad-do-it))
(defadvice elscreen-toggle (around elscreen-create-automatically activate)
  (elscreen-create-automatically ad-do-it))

;;; elscreen-dnd.el������Ƥ���
(defvar elscreen-dnd-buffers nil)

  (defadvice x-dnd-handle-drag-n-drop-event (around elscreen-dnd-buffers activate)
    (setq elscreen-dnd-buffers nil)
    (save-window-excursion ad-do-it)
    (when elscreen-dnd-buffers
      (elscreen-goto (car (mapcar
                           (lambda (buffer)
                             (elscreen-find-screen-by-buffer buffer 'create))
                           elscreen-dnd-buffers)))
      (setq elscreen-dnd-buffers nil)
      (elscreen-notify-screen-modification 'force-immediately)))

  (defadvice w32-drag-n-drop (around elscreen-dnd-buffers activate)
    (setq elscreen-dnd-buffers nil)
    (save-window-excursion ad-do-it)
    (when elscreen-dnd-buffers
      (elscreen-goto (car (mapcar
                           (lambda (buffer)
                             (elscreen-find-screen-by-buffer buffer 'create))
                           elscreen-dnd-buffers)))
      (setq elscreen-dnd-buffers nil)
      (elscreen-notify-screen-modification 'force-immediately)))

  (defadvice dnd-handle-one-url (after elscreen-get-dnd-buffers activate)
    (setq elscreen-dnd-buffers
          (cons (current-buffer) elscreen-dnd-buffers)))

;display screen-title in frame title
(defun elscreen-frame-title-update ()
  (when (elscreen-screen-modified-p 'elscreen-frame-title-update)
    (let* ((screen-list (sort (elscreen-get-screen-list) '<))
           (screen-to-name-alist (elscreen-get-screen-to-name-alist))
           (title (mapconcat
                   (lambda (screen)
                     (format "%d%s %s"
                             screen (elscreen-status-label screen)
                             (get-alist screen screen-to-name-alist)))
                   screen-list " ")))
      (if (fboundp 'set-frame-name)
          (set-frame-name title)
        (setq frame-title-format title)))))

(eval-after-load "elscreen"
  '(add-hook 'elscreen-screen-update-hook 'elscreen-frame-title-update))

;; emacs-nav
(add-to-list 'load-path "/home/shun/repos/emacs-nav/")
(require 'nav)
(nav-disable-overeager-window-splitting)
;; Optional: set up a quick key to toggle nav
(global-set-key [f5] 'nav-toggle)

;; markdown-mode
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdonw files" t)
(setq auto-mode-alist
      (cons '("\\.md$" . markdown-mode) auto-mode-alist))

;; evernote-mode
;; Evernote mode
;; �ѥ����̤�
(add-to-list 'load-path
             (expand-file-name "~/.emacs.d/site-lisp/evernote-mode-0_41"))
(require 'evernote-mode)
;; �����Ρ��Ⱥ����������������ȥ�ʤɤ�����
(global-set-key (kbd "C-c e c") 'evernote-create-note)
;; ���������򤷤ƥΡ��Ȥ򳫤�
(global-set-key (kbd "C-c e o") 'evernote-open-note)
;; ������ɤ����Ϥ��ơ�Note:��ɽ�����줿��Tab�ǰ�����ɽ�������
(global-set-key (kbd "C-c e s") 'evernote-search-notes)
;; evernote-create-search����¸���줿������ɤǸ���
(global-set-key (kbd "C-c e S") 'evernote-do-saved-search)
;; ���ߤΥХåե���Evernote�˵�Ͽ
(global-set-key (kbd "C-c e w") 'evernote-write-note)
;; �����ϰϤ�Evernote�˵�Ͽ
(global-set-key (kbd "C-c e p") 'evernote-post-region)
;; Evernote�����ѥ֥饦����ư
(global-set-key (kbd "C-c e b") 'evernote-browser)
;; ��¸�ΥΡ��Ȥ��Խ���ä���
(global-set-key (kbd "C-c e e") 'evernote-change-edit-mode)
;; �桼����̾���Ϥ��ά�Ǥ��롣���ȤΥ��������̾������
(setq evernote-username "ibitsu")
;; ���Ĺ���ѥ���ɤ����ݤʤΤǡ��ǽ�˥��󥹥ȡ��뤷��gpg�Ǵ���
(setq evernote-password-cache t)
;; gpg�ե��������¸���̾�����ѹ�
(setq enh-password-cache-file "~/.emacs.d/evernote-mode.gpg")

;;; twittering-mode
;(load "/home/shun/repos/git/twittering-mode/twittering-mode.el")
;(require 'twittering-mode)
;(setq twittering-username "ibitsu")
;;(setq twittering-password "") ; This is optional
;(twittering-icon-mode)                       ; Show icons (requires wget)
;(setq twittering-tmp-dir "/home/shun/tmp/twittering-mode/cache/") ; Directory to store buddy icons

;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t nil (time))
 '(global-font-lock-mode t nil (font-core))
 '(show-paren-mode t nil (paren))
 '(ssl-certificate-verification-policy 1)
 '(tool-bar-mode nil nil (tool-bar))
 '(transient-mark-mode t))
;;end init_linux.el

