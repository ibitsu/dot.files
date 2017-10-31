;;; elmo settings ;;;
;(setq elmo-imap4-default-server "61.200.4.164"
;(setq elmo-imap4-default-server "218.42.157.36"
(setq elmo-imap4-default-server "mailhost.squi.sh"
      elmo-nntp-default-server  "nn1.news.ocn.ad.jp"
      elmo-maildir-folder-path "~/Maildir"
      elmo-localdir-folder-path "~/Mail"
      elmo-msgdb-directory "~/.elmo"
)

(setq elmo-imap4-use-modified-utf7 t) ; 日本語フォルダ対策

;;; smtp via gmail
;;(setq wl-smtp-connection-type 'starttls)
;;
;;(setq wl-smtp-authenticate-type "plain")
;;(setq wl-smtp-posting-user "ibitsu") 
;;(setq wl-smtp-posting-server "smtp.gmail.com")
;;(setq wl-local-domain "gmail.com")
;;;      wl-draft-send-mail-function 'wl-draft-send-mail-with-smtp)

;; IMAP, gmail:
;(setq elmo-imap4-default-server "imap.gmail.com"
;      elmo-imap4-default-user "ibitsu@gmail.com"
;      elmo-imap4-default-authenticate-type 'clear
;      elmo-imap4-default-port '993
;      elmo-imap4-default-stream-type 'ssl
;      ;;for non ascii-characters in folder-names
;      elmo-imap4-use-modified-utf7 t)
;
;;; SMTP
;(setq wl-smtp-connection-type 'starttls
;      wl-smtp-posting-port 587
;      wl-smtp-authenticate-type "plain"
;      wl-smtp-posting-user "ibitsu"
;      wl-smtp-posting-server "smtp.gmail.com"
;      wl-local-domain "gmail.com"
;      wl-message-id-domain "smtp.gmail.com")
;;;

;;; wl settings ;;;
;(setq wl-use-semi t)  
(setq wl-from "shunichiro okada <shun@squi.sh>")
(setq wl-from-shunibitsu "shunichiro okada <shun@ibitsu.org>")
(setq wl-from-shunibitsunet "shunichiro okada <shun@ibitsu.net>")
(setq wl-from-ibitsu "shunichiro okada <ibitsu@ibitsu.org>")
(setq wl-from-gmail "shunichiro okada <ibitsu@gmail.com>")
(setq wl-from-io "rape i/o <me@rape.io>")
(setq wl-from-toc "toc-support@lef.to")
(setq wl-from-bizreach "shunichiro okada <okada@bizreach.co.jp>")
(setq wl-from-left "shunichiro okada <shun@lef.to>")
(setq wl-from-mg "shunichiro okada <shun@mediaguild.jp>")
(setq wl-from-soine "shunichiro okada <shun@soi.ne.jp>")
(setq wl-from-i.d "<i.d@squi.sh>")
(setq wl-from-xg8 "xP` <xg8@squi.sh>")
(setq wl-from-ezweb "<ibitsu@ezweb.ne.jp>")
(setq wl-from-wrench "xP` <x@wren.ch>")
(setq wl-from-sqrt "x <x@sqrt.org>")
(setq wl-from-okadasqrt "shunichiro okada <okada@sqrt.org>")
(setq wl-from-ooosqrt "ooo <ooo@sqrt.org>")
(setq wl-from-ssqrt "shunichiro okada <shun@sqrt.org>")
(setq wl-from-xsquish "xP` <x@squi.sh>")
(setq wl-from-xg8b2unit "shunichiro okada <xg8@b2unit.com>")
(setq wl-from-xb2unit "shunichiro okada <x@b2unit.com>")
(setq wl-from-swrench "shunichiro okada <shun@wren.ch>")
(setq wl-from-gnusic "shunichiro okada <shun@gnusic.net>")
(setq wl-from-ar.ms "shunichiro okada <shun@ar.ms>")
(setq wl-from-pingpong "<ping.pong@isonly.net>")
;(setq wl-smtp-posting-server 	"localhost")
;(setq wl-smtp-posting-server    "127.0.0.1")
;;(setq wl-nntp-posting-server 	"localhost")

;;; default, temporarily gmail as of 7.20.2012
;;(setq wl-smtp-posting-server 	"mailhost.squi.sh")
(setq wl-smtp-posting-server 	"mailhost.ymo.org")
(setq wl-smtp-posting-user      "shun")
(setq wl-smtp-authenticate-type "plain")
(setq wl-smtp-posting-port 587)
;;(setq wl-draft-send-mail-function 'wl-draft-send-mail-with-pop-before-smtp)
;;(setq wl-pop-before-smtp-user "shun")
;;(setq wl-pop-before-smtp-server "mail.lef.to")


;;;;;(setq wl-draft-send-mail-function 'wl-draft-send-mail-with-pop-before-smtp)
;;;;;(setq wl-pop-before-smtp-user "shun")
;;;;;(setq wl-pop-before-smtp-server "mailhost.squi.sh")
;(setq wl-message-id-domain "squi.sh")
;(setq wl-local-domain "squi.sh")
(setq wl-icon-directory "/Applications/Emacs24.app/Contents/Resources/etc/wl/icons")
;(setq wl-icon-directory "/usr/local/share/emacs/22.1.50/etc/wl/icons")
(setq wl-fcc "+fcc")
;(setq wl-organization "\'s \\k \\w \\\! \\\\. \\\s \\h")
;(setq wl-organization "ibitsu")
(setq wl-organization "¿")
;(setq wl-organization "?")
;(setq wl-organization ".org")
(setq wl-organization-wrench "w r e n c h")
(setq wl-organization-glue ":glue")
(setq wl-stay-folder-window t)
;(setq wl-summary-from-width 22)
(setq wl-summary-from-width 24)
;(setq wl-summary-width	118)
(setq wl-summary-width nil)
;(setq wl-message-window-size '(1 . 4))
(setq wl-summary-indent-level 1)
(setq wl-auto-check-folder-name 'none)
(setq wl-folder-window-width 30)
(setq wl-folder-desktop-name "Mail")
(setq wl-draft-reply-buffer-style 'split)
;(setq wl-insert-mail-followup-to t)
(setq wl-insert-mail-reply-to t)
;(setq wl-insert-mail-followup-to "shun@squi.sh")
(setq wl-insert-mail-reply-to "shun@squi.sh")
(setq wl-default-spec "+")
(setq wl-no-cache-folder-list '("^[-$].*"))
(setq wl-interactive-exit nil)
(setq wl-interactive-send t)
(setq wl-summary-move-order 'unread)
(setq wl-summary-move-direction-downward t)
(setq wl-auto-select-first nil)
(setq wl-auto-select-next t)
(setq wl-thread-insert-opened t)
(setq wl-summary-next-no-unread t)
(setq wl-summary-exit-next-move nil)
(setq wl-folder-move-cur-folder t)
;(setq wl-insert-message-id nil)
(setq wl-prefetch-confirm nil)
;(setq wl-prefetch-threshold 1000000)
(setq elmo-message-fetch-threshold 10000000)
(setq elmo-message-fetch-confirm  nil)
;(setq wl-summary-line-format "%n%T%P%M/%D(%W)%h:%m %t%[%17(%c %f%) %] %#%~%s")
(setq wl-demo-background-color "#000000")
;(setq mail-self-blind t)

(setq wl-generate-mailer-string-function
      'wl-generate-user-agent-string-1)

(setq wl-user-mail-address-list
      '("shun@squi.sh" 
        "shun@sqrt.org" 
        "shun@lef.to"
        "shun@mediaguild.jp"
        "shun@soi.ne.jp"
        "okada@sqrt.org" 
        "ooo@sqrt.org" 
        "shun@ar.ms" 
        "x@b2unit.com" 
        "ping.pong@isonly.net" 
        "xg8@b2unit.com" 
        "me@rape.io"
        "shun@ibitsu.org"
        "shun@ibitsu.net"
        "ibitsu@ibitsu.org"
        "okada@ibitsu.org"
        "shun@gnusic.net"
))

;;; draft mode in 21.3.50
(setq font-lock-global-modes '(not wl-draft-mode))
;;(setq font-lock-global-modes '(not wl-draft-mode foo-mode bar-mode))
;;; end 21.3.50 specific

(setq wl-use-petname nil)
(setq wl-summary-showto-folder-regexp ".*")
(setq wl-summary-from-function 'wl-summary-default-from)

(setq  mime-edit-split-message nil)

;;(setq wl-summary-number-column-alist 
;;	(append '(("^%inbox$" . 6) 
;;	wl-summary-number-column-alist)))

;(setq wl-summary-number-column-alist 
;  	(append '(("^%inbox$" . 8)
;  	  ("^\\*.*" . 8))
;  		wl-summary-number-column-alist))

;(setq wl-summary-number-column-alist
;     (append '(("^%inbox$" . 8)) 
;	wl-summary-number-column-alist))

 (setq wl-summary-number-column-alist
    (append '(("^%inbox$" . 6))
               wl-summary-number-column-alist))

;(setq wl-message-id-domain (concat (system-name) ".ar.ms"))

(setq wl-expire-use-log t)
(setq wl-expire-alist
      '(
	("^\\+trash$"   (date 3) remove)
	("^\\+draft$"   (date 7) trash)
;	("^\\+fcc$"  	(number 100) "$fcc;zip")
	("^\\+fcc-2006$"	(date 1) "$fcc-2006;zip")
	("^\\+fcc-2005$"	(date 1) "$fcc-2005;zip")
	("^\\+fcc-2004$"	(date 1) "$fcc-2004;zip")
	("^\\+fcc-2003$"	(date 1) "$fcc-2003;zip")
	("^\\+fcc-2002$"  	(date 1) "$fcc-2002;zip")
	("^\\+55$"		(number 200) remove)
        ("^\\+sc$"              (number 1000) "$sc;zip")
        ("^\\+sc-dev$"          (number 1000) "$sc-dev;zip")
        ("^\\+pd$"              (number 500) "$pd;zip")
        ("^\\+maxmsp$"          (number 200) "$maxmsp;zip")
        ("^\\+frameworks$"      (number 200) "$frameworks;zip")
        ("^\\+wl$"              (number 500) "$wl;zip")
        ("^\\+elips$"           (number 200) "$elips;zip")
        ("^\\+semi-gnus$"       (number 200) remove)
        ("^\\+mule-ja$"         (number 200) remove)
        ("^\\+emacs-w3m$"       (number 200) remove)
        ("^\\+emacs-mime$"      (number 200) remove)
	("^\\+python-ml-jp$"   	(number 200) remove)
	("^\\+ruby$" 		(number 200) remove)
	("^\\+xemacs-beta-ja$"  (number 200) remove)
	("^\\+security-memo$"   (number 200) remove)
	("^\\+php$"   		(number 200) remove)
	("^\\+mindstorm$"   	(number 200) remove)
	("^\\+zzdev$"   	(number 200) "$zzdev;zip")
	("^\\+ICMA$"   		(date 60) remove)
	("^\\+csound$"   	(date 60) remove)
	("^\\+music-dsp$"   	(date 60) remove)
	("^\\+linux-audio-dev$" (date 60) remove)
))

;(make-face-unbold 'wl-highlight-summary-displaying-face)
;(copy-face 'default 'wl-highlight-summary-displaying-face)
(set-face-background 'wl-highlight-demo-face "black") 

(add-hook 'wl-mail-setup-hook
          (function
           (lambda ()
             (save-excursion
               (goto-char 0)
               (replace-regexp "^Bcc: " "Dcc: ")))))

;(defun TT:wl-pack-folder ()
;  (interactive)
;  (let ((folder wl-summary-buffer-folder-name))
;    (if (eq 'localdir (car (elmo-folder-get-spec folder)))
;        (progn
;          (message "Packing %s ..." folder)
;          (call-process "impack" nil nil nil (format "--src=%s" folder))
;          (message "now run sync-all"))
;      (message "You cannot pack this folder."))))

(add-hook 'wl-summary-mode-hook
          (function
           (lambda ()
             (define-key wl-summary-mode-map "\M-o" 'TT:wl-pack-folder))))


(defun TT:wl-inc-mail ()
  (interactive)
  (message "Incing ... ")
  (call-process "imget" nil nil nil)
  (wl-summary-goto-folder wl-default-folder 'force-update))
(add-hook 'wl-summary-mode-hook
          (function
           (lambda ()
             (define-key wl-summary-mode-map "\M-i" 'TT:wl-inc-mail))))

;;;返信時、メーリングリストのシリアルナンバーを削除
(defadvice wl-draft-strip-subject-re (before ys:wl-remove-ml-serial (subject))
  (if (string-match "^\\(([^) ]+[: ][0-9]+)\\|\\[[^] ]+[: ][0-9]+\\]\\) " subject)
      (setq subject (replace-match "" nil t subject))))
(ad-activate 'wl-draft-strip-subject-re)


;; display/ignore header
(setq mime-view-ignored-field-list '("^.*"))
;(setq mime-view-visible-field-list
;      '("^Subject:" "^From:" "^To:" "^Cc:" 
;	"^X-Mailer:" "^X-Newsreader:" "^User-Agent:"
;	"^X-Face:" "^X-Mail-Count:" "^X-ML-COUNT:"))
(setq mime-view-ignored-field-list
      '(".*Received:" ".*Path:" ".*Id:" "^References:"
	"^Replied:" "^Errors-To:"
 	"^Lines:" "^Sender:" ".*Host:" "^Xref:"
 	"^Content-Type:" "^Content-Transfer-Encoding:"
	"^Precedence:"
 	"^Status:" "^X-VM-.*:"
 	"^X-Info:" "^X-PGP" "^X-Face-Version:"
 	"^X-UIDL:" "^X-Dispatcher:"
; 	"^MIME-Version:" "^X-ML" "^Message-I.:"
; 	"^Delivered-To:" "^Mailing-List:"
; 	"^ML-Name:" ; "^mail-count:"
;	"^Reply-To:" "^In-Reply-To:" "Date:"
	"^X-Loop" "^X-List-Help:"
	"^X-Trace:" "^X-Complaints-To:"
    "^X-BeenThere:" "^X-Mailman-Version:" "^List-Unsubscribe:"
    "^List-Archive:" "^List-Post:" "^List-Help:" "^List-Subscribe:"
    "^X-Mailman-Handler:" "^DKIM-Signature:" "^DomainKey-Signature:"
    "^X-Google-Sender-Auth:" "^X-Proofpoint-Virus-Version"
    "^X-Proofpoint-Spam-Details:" "^X-Proofpoint-Spam-Level:"
    "^X-Proofpoint-Spam-Reason:" 
 
))

;; if mailing list, display listname/number 
;;(setq wl-summary-line-format "%n%T%P%M/%D(%W)%h:%m %t%[%17(%c %f%) %] %#%~%s")
(setq elmo-msgdb-extra-fields
      (cons "content-type" elmo-msgdb-extra-fields))
(setq wl-summary-line-format-spec-alist
      (append wl-summary-line-format-spec-alist
      '((?@ (wl-summary-line-attached)))))
;(setq wl-summary-line-format "%n%T%P%1@%M/%D(%W)%h:%m %t%[%17(%c %f%) %] %#%~%s")
(setq wl-summary-line-format "%T%P%1@%M/%D(%W)%h:%m %t%[%17(%c %f%) %] %#%~%s")
;;(setq wl-summary-line-format "%n%T%P%1@%M/%D(%W)%h:%m %t%[%17(%c %f%) %] %s")

;; auto-fill draftmode
(add-hook 'wl-draft-mode-hook
	  '(lambda ()
	     (auto-fill-mode t)
	     (set-fill-column 64)
	     ))


;; with bbdb
;(require 'bbdb-wl)
;(bbdb-wl-setup)
;(add-hook 'wl-mail-setup-hook 'bbdb-insinuate-sendmail)
;;; end bbdb

;;; (multiple signatures)
;(setq load-path (cons "~/lib/elisp" load-path))
;(autoload 'add-signature "c-sig" "c-sig" t)
;(autoload 'delete-signature "c-sig" "c-sig" t)
;(autoload 'insert-signature-eref "c-sig" "c-sig" t)        
;(autoload 'insert-signature-automatically "c-sig" "c-sig" t)
;(autoload 'insert-signature-randomly "c-sig" "c-sig" t)
;
;;; (se1ect multiple signatures interactively)
;;(setq mew-draft-mode-hook
;;      (function (lambda ()
;;        (define-key mew-draft-mode-map "\C-c\C-i" 'insert-signature-eref)))) 

;(defadvice wl-mail-overload-functions
;  (after TT:wl-add-draft-keymap activate)
;  (progn
;    (local-set-key "\C-c\C-i" 'insert-signature-automatically)
;    (local-set-key "\C-c\C-j" 'insert-signature-eref)))



;;;; from here

;;; Enable x-face
;(cond
; ((eq emacs-major-version 22)
;  ; ((eq emacs-major-version 21)
;  ;; You may have no need to use the following one line if you
;  ;; always use T-gnus 6.14.5 revision 07 and later.
;  (autoload 'x-face-decode-message-header "x-face-e21")
;  ;;
;;  (autoload 'x-face-insert "x-face-e21" nil t)
;;  (autoload 'x-face-save "x-face-e21" nil t)
;;  (autoload 'x-face-show "x-face-e21" nil t)
;;  (autoload 'x-face-turn-off "x-face-e21")
;  ;;
;  ;; Show X-Face images when `x-face-insert' is done.
;  (setq x-face-auto-image t)
;  (setq x-face-image-file-directory "~/.xfaces.dir")
;  (setq x-face-image-file-directory-for-save "~/.xfaces.dir")
;  ;;
;  ;; If a file name has no directory component, it should be
;  ;; found in the directory which is specified by the option
;  ;; `x-face-image-file-directory'.
;;  (setq x-face-default-xbm-file "airplane.xbm")
;;;;  (setq x-face-default-xbm-file "godfather.xbm")
;;;;  (setq x-face-default-xbm-file "ibitsu.xbm")
;  (setq x-face-add-x-face-version-header t))
; (t
;  (autoload 'x-face-encode "x-face" "Generate X-Face string(s) from xbm file." t)
;  (autoload 'x-face-insert "x-face" "Insert X-Face fields." t)
;  (autoload 'x-face-save "x-face" "Save X-Face fields to files." t)
;  (autoload 'x-face-view "x-face" "View X-Face fields." t)
;  (autoload 'x-face-ascii-view "x-face" "View X-Face fields as ascii pictures." t)
;  ;;(setq x-face-inhibit-loadup-splash nil)
;  (setq x-face-image-file-directory "~/.xfaces.dir")
;  (setq x-face-image-file-directory-for-save "~/.xfaces.dir")
;  (setq x-face-add-x-face-version-header t)
;))

;(setq wl-highlight-x-face-function 'x-face-decode-message-header)

;       (add-hook 'wl-mail-setup-hook 'x-face-insert)
;;       ;; If you use `wl-draft-insert-x-face-field' instead of
;;       ;; `x-face-insert' for inserting an X-Face, you can highlight
;;       ;; it as an image with the setting of the following hook:
;;       (add-hook 'wl-draft-insert-x-face-field-hook
;;		 (lambda nil
;;		   (x-face-insert wl-x-face-file)))
;;       

;;;; select-xface
;;;(setq load-path (cons "~/lib/elisp" load-path))
;(require 'select-xface)
;(setq select-xface-directory "/home/shun/.xfaces.dir")
;(add-hook 'mew-draft-mode-hook (lambda () (define-key mew-draft-mode-map "\C-c\C-x" 'select-xface)))
;(add-hook 'mail-mode-hook
;          (lambda ()
;            (define-key (current-local-map) "\C-x4x"
;              'select-xface)))
;(setq x-face-image-file-directory "~/.xfaces.dir")
;(setq x-face-image-file-directory-for-save "~/.xfaces.dir")
;;  (setq x-face-default-xbm-file "airplane.xbm")
;;;(setq x-face-default-xbm-file "godfather.xbm")
;;;(setq x-face-default-xbm-file "ibitsu.xbm")
;;(setq x-face-insert-interactive nil)
;;(setq select-xface-add-x-face-version-header t)


;; X-Face utility ¤ò»È¤Ã¤Æ´éÁÞÆþ»þ¤Ë¥á¥Ã¥»¡¼¥¸ÊÔ½¸¥Ð¥Ã¥Õ¥¡¤Ë¥¤¥á¡¼¥¸¤ò½Ð¤¹ 
;; (XEmacs ¤Î¾ì¹ç)
;(add-hook 'select-xface-insert-hook 
;        (lambda () (x-face-xmas-display-x-face 1)))
;;;; end select-xface

;;mhc
;(autoload 'mhc-wl-setup "mhc-wl")
;(add-hook 'wl-init-hook 'mhc-wl-setup)

;template
(setq wl-template-alist
      '(("default"
         ("From" . wl-from)
         ("Mail-Reply-To" . "shun@squi.sh")
;         ("Organization" . "\'s \\k \w \\\! \\\\. \\s \h"))
         ("Organization" . "squi.sh"))
	("ibitsu"
	 ("From" . wl-from-ibitsu)
         (wl-envelope-from . "ibitsu@ibitsu.org")
         ("Mail-Reply-To" . "ibitsu@ibitsu.org")
         ("Organization" . "?"))
	("io"
	 ("From" . wl-from-io)
         (wl-envelope-from . "me@rape.io")
         ("Mail-Reply-To" . "me@rape.io")
	 ("Organization" . "rape i/o"))
    ("mg"
	 ("From" . wl-from-mg)
         (wl-envelope-from . "shun@mediaguild.jp")
         ("Mail-Reply-To" . "shun@mediaguild.jp")
         ("Organization" . "mediaguild"))
    ("bizreach"
	 ("From" . wl-from-bizreach)
         (wl-envelope-from . "okada@bizreach.co.jp")
         ("Mail-Reply-To" . "okada@bizreach.co.jp")
         ("Organization" . "BizReach, Inc."))
    ("left"
	 ("From" . wl-from-left)
         (wl-envelope-from . "shun@lef.to")
         ("Mail-Reply-To" . "shun@lef.to")
         ("Organization" . "LEFT"))
    ("toc"
	 ("From" . wl-from-toc)
         (wl-envelope-from . "shun@lef.to")
         ("Mail-Reply-To" . "toc-support@lef.to")
         ("Organization" . "LEFT"))
    ("soine"
	 ("From" . wl-from-soine)
         (wl-envelope-from . "shun@soi.ne.jp")
         ("Mail-Reply-To" . "shun@soi.ne.jp")
         ("Organization" . "SOI"))
	("shunibitsu"
	 ("From" . wl-from-shunibitsu)
         (wl-envelope-from . "shun@ibitsu.org")
         ("Mail-Reply-To" . "shun@ibitsu.org")
	 ("Organization" . "?"))
	("shunibitsunet"
	 ("From" . wl-from-shunibitsunet)
         (wl-envelope-from . "shun@ibitsu.net")
         ("Mail-Reply-To" . "shun@ibitsu.net")
	 ("Organization" . "?"))
	("gmail"
	 ("From" . wl-from-gmail)
         (wl-envelope-from . "ibitsu@gmail.com")
         ("Mail-Reply-To" . "ibitsu@gmail.com")
	 ("Organization" . "¿"))
	("okadasqrt"
	 ("From" . wl-from-okadasqrt)
         (wl-envelope-from . "okada@sqrt.org")
         ("Mail-Reply-To" . "okada@sqrt.org")
	 ("Organization" . "sqrt.org"))
	("xg8b2unit"
	 ("From" . wl-from-xg8b2unit)
         (wl-envelope-from . "xg8@b2unit.com")	
         ("Mail-Reply-To" . "xg8@b2unit.com"))
;	 ("Organization" . "b2unit.com"))
	("ezweb"
	 ("From" . wl-from-ezweb)
         (wl-envelope-from . "ibitsu@ezweb.ne.jp")	
         ("Mail-Reply-To" . "ibitsu@ezweb.ne.jp"))
	("xb2unit"
	 ("From" . wl-from-xb2unit)
         (wl-envelope-from . "x@b2unit.com")	
         ("Mail-Reply-To" . "x@b2unit.com"))
;	 ("Organization" . "b2unit.com"))
	("wrench"
	 ("From" . wl-from-wrench)
         (wl-envelope-from . "x@wren.ch")
         ("Mail-Reply-To" . "x@wren.ch")
	 ("Organization" . "w r e n c h"))
	("sqrt"
	 ("From" . wl-from-sqrt)
         (wl-envelope-from . "x@sqrt.org")
         ("Mail-Reply-To" . "x@sqrt.org")
	 ("Organization" . "√"))
	("ooosqrt"
	 ("From" . wl-from-ooosqrt)
         (wl-envelope-from . "ooo@sqrt.org")
         ("Mail-Reply-To" . "ooo@sqrt.org")
	 ("Organization" . "√"))
	("ssqrt"
	 ("From" . wl-from-ssqrt)
         (wl-envelope-from . "shun@sqrt.org")
         ("Mail-Reply-To" . "shun@sqrt.org")
	 ("Organization" . "√"))
	("xsquish"
	 ("From" . wl-from-xsquish)
         (wl-envelope-from . "x@squi.sh")
         ("Mail-Reply-To" . "x@squi.sh")
	 ("Organization" . "\'s \\k \w \\\! \\\\. \\s \h"))
	("gnusic"
	 ("From" . wl-from-gnusic)
         (wl-envelope-from . "shun@gnusic.net")
	 ("Mail-Reply-To" . "shun@gnusic.net")
	 ("Organization" . "gnusic"))
	("ar.ms"
	 ("From" . wl-from-ar.ms)
         (wl-envelope-from . "shun@ar.ms")
	 ("Mail-Reply-To" . "shun@ar.ms")
	 ("Organization" . "ar.ms"))
	("pingpong"
	 ("From" . wl-from-pingpong)
         (wl-envelope-from . "ping.pong@isonly.net")
	 ("Mail-Reply-To" . "ping.pong@isonly.net"))
	("swrench"
	 ("From" . wl-from-swrench)
         (wl-envelope-from . "shun@wren.ch")
         ("Mail-Reply-To" . "shun@wren.ch")
	 ("Organization" . "w r e n c h"))
	("xg8"
	 ("From" . wl-from-xg8)
         (wl-envelope-from . "xg8@squi.sh")
         ("Mail-Reply-To" . "xg8@squi.sh")
	 ("Organization" . "\'s \\k \w \\\! \\\\. \\s \h"))
))        

;;; @ SMTP
(setq wl-draft-send-config-alist
        '(
	  ("^From:\\(.*\n[ \t]+\\)*.*ibitsu@gmail\\.com"
           (wl-from . "ibitsu <ibitsu@gmail.com>")
           (wl-smtp-posting-server . "smtp.gmail.com")
	       (wl-smtp-posting-user . "ibitsu")
           (wl-smtp-posting-port . 587)
           (wl-smtp-connection-type . 'starttls)
           (wl-smtp-authenticate-type . "plain")
           (wl-envelope-from . "ibitsu@gmail.com")
           (wl-local-domain . "gmail.com")
           (wl-unique-id-suffix . ".wl")
           (wl-message-id-domain . "gmail.com")
           (wl-insert-message-id . t))
	  ("^From:\\(.*\n[ \t]+\\)*.*shun@ibitsu\\.org"
           (wl-from . "shunichiro okada <shun@ibitsu.org>")
           (wl-smtp-posting-server . "smtp.gmail.com")
	       (wl-smtp-posting-user . "shun@ibitsu.org")
           (wl-smtp-posting-port . 587)
           (wl-smtp-connection-type . 'starttls)
           (wl-smtp-authenticate-type . "plain")
           (wl-envelope-from . "shun@ibitsu.org")
           (wl-local-domain . "ibitsu.org")
           (wl-unique-id-suffix . ".wl")
           (wl-message-id-domain . "ibitsu.org")
           (wl-insert-message-id . t))
	  ("^From:\\(.*\n[ \t]+\\)*.*shun@ibitsu\\.net"
           (wl-from . "shunichiro okada <shun@ibitsu.net>")
           (wl-smtp-posting-server . "smtp.gmail.com")
	       (wl-smtp-posting-user . "shun@ibitsu.net")
           (wl-smtp-posting-port . 587)
           (wl-smtp-connection-type . 'starttls)
           (wl-smtp-authenticate-type . "plain")
           (wl-envelope-from . "shun@ibitsu.net")
           (wl-local-domain . "ibitsu.net")
           (wl-unique-id-suffix . ".wl")
           (wl-message-id-domain . "ibitsu.net")
           (wl-insert-message-id . t))
          ("^From:\\(.*\n[ \t]+\\)*.*shun@squi\\.sh"
           (wl-from . "shunichiro okada <shun@squi.sh>")
           (wl-smtp-posting-server . "mailhost.squi.sh")
           (wl-envelope-from . "shun@squi.sh")
           (wl-local-domain . "squi.sh")
           (wl-unique-id-suffix . ".wl")
           (wl-message-id-domain . "squi.sh")
           (wl-insert-message-id . t))
            ))

(add-hook 'wl-draft-send-hook
		  '(lambda ()
			 (setq wl-draft-config-exec-flag t)
			 (wl-draft-config-exec wl-draft-send-config-alist)
			 ))

;; lsdb
;(require 'lsdb)
;(lsdb-wl-insinuate)
;(add-hook 'wl-draft-mode-hook
;          (lambda ()
;             (define-key wl-draft-mode-map "\M-\t" 'lsdb-complete-name)))

;; shimbun
(setq shimbun-2ch-group-alist
      '(("emacs" . "http://pc.2ch.net/test/read.cgi/unix/1013390142")
        ("Meadow" . "http://pc.2ch.net/test/read.cgi/software/1005469775")
	("emacs-w3m" . "http://pc.2ch.net/test/read.cgi/unix/1013710106")
))

;;; spam-assassin backend
;(setq elmo-spam-scheme 'sa)
;(require 'wl-spam)
;
;(setq elmo-spam-spamassassin-program "ssh")
;(setq elmo-spam-spamassassin-program-arguments
;       '("shun@squi.sh" "spamassassin" "-e"))
;(setq elmo-spam-spamassassin-learn-program "ssh")
;(setq elmo-spam-spamassassin-learn-program-arguments
;       '("shun@squi.sh" "sa-learn"))


;;
;; Set wl-from according to the current folder
;;

;; default email address
(defvar sjg-wl-default-from "shunichiro okada <shun@squi.sh>")

;; email address to use for folders whose names match the regexp
(defvar sjg-wl-folder-from
  '(("shunichiro okada <okada@sqrt.org>"
     (
      "okada@sqrt.org"         ; matches any folder with "somewhere" in the name
      ))
    ("shunichiro okada <xg8@b2unit.com>"
     (
      "b2unit.com"
      ))
    ("<ibitsu@ezweb.ne.jp>"
     (
      "ezweb"
      ))
    ("<ping.pong@isonly.net>"
     (
      "isonly.net"
      ))
    ))

(defun match-in-p (string regexps)
  "Return non-nil if string is matched by any of the regexps."
  (remq nil (mapcar (lambda (re)
                      (string-match re string)
                      )
                    regexps))
  )

(defun sjg-wl-set-from-for-folder (folder-name)
  "Set wl-from according to folder name, taking the first match in sjg-wl-folder-from."
  (interactive "s")
  (let ((matches
         (remq nil (mapcar (lambda (x) 
                             (if (match-in-p folder-name (cadr x)) (car x) nil))
                           sjg-wl-folder-from))))
    (setq wl-from
          (if (null matches)
              sjg-wl-default-from
            (car matches)))
    ))

;(add-hook 'wl-summary-prepared-hook
;  (lambda () (save-excursion
;               (set-buffer wl-summary-buffer-name)
;               (sjg-wl-set-from-for-folder wl-summary-buffer-folder-name))))

;;;


;documented. ex. wl-ja.info(2.14.0)
(set-face-foreground 'wl-highlight-message-headers "white" )
(set-face-foreground 'wl-highlight-message-header-contents "white" )
(set-face-foreground 'wl-highlight-message-important-header-contents "white" )
(set-face-foreground 'wl-highlight-message-important-header-contents2 "white" )
(set-face-foreground 'wl-highlight-message-unimportant-header-contents "white" )
(set-face-foreground 'wl-highlight-message-citation-header "white" )
(set-face-foreground 'wl-highlight-message-cited-text-1 "white" )
(set-face-foreground 'wl-highlight-message-signature "white" )
(set-face-foreground 'wl-highlight-header-separator-face "white" )
;(set-face-foreground 'wl-highlight-summary-important-face "white" ) ;obsolete
(set-face-foreground 'wl-highlight-summary-new-face "white" )
(set-face-foreground 'wl-highlight-summary-displaying-face "white" )
(set-face-foreground 'wl-highlight-thread-indent-face "white" )
(set-face-foreground 'wl-highlight-summary-unread-face "white" )
(set-face-foreground 'wl-highlight-summary-deleted-face "white" )
(set-face-foreground 'wl-highlight-summary-refiled-face "white" )
(set-face-foreground 'wl-highlight-summary-copied-face "white" )
(set-face-foreground 'wl-highlight-summary-target-face "white" )
(set-face-foreground 'wl-highlight-summary-thread-top-face "white" )
(set-face-foreground 'wl-highlight-summary-normal-face "white" )
(set-face-foreground 'wl-highlight-folder-unknown-face "white" )
(set-face-foreground 'wl-highlight-folder-zero-face "white" )
(set-face-foreground 'wl-highlight-folder-few-face "white" )
(set-face-foreground 'wl-highlight-folder-many-face "white" )
(set-face-foreground 'wl-highlight-folder-unread-face "white" )
(set-face-foreground 'wl-highlight-folder-killed-face "white" )
(set-face-foreground 'wl-highlight-folder-opened-face "white" )
(set-face-foreground 'wl-highlight-folder-closed-face "white" )
(set-face-foreground 'wl-highlight-folder-path-face "white" )
(set-face-foreground 'wl-highlight-logo-face "white" )
(set-face-foreground 'wl-highlight-demo-face "white" )

; Only What's new document(2.12.0 -> 2.12.2)
(set-face-foreground 'wl-highlight-summary-disposed-face "white" )
(set-face-foreground 'wl-highlight-summary-prefetch-face "white" )
(set-face-foreground 'wl-highlight-summary-resend-face "white" )
(set-face-foreground 'wl-highlight-summary-answered-face "white" )
(set-face-foreground 'wl-highlight-action-argument-face "white" )

; undocumented(From wl-highlight.el)
(set-face-foreground 'wl-highlight-summary-forwarded-face "white" )
(set-face-foreground 'wl-highlight-summary-flagged-face "white" )
(set-face-foreground 'wl-highlight-summary-disposed-face "white" )
(set-face-foreground 'wl-highlight-summary-forwarded-face "white" )
(set-face-foreground 'wl-highlight-summary-temp-face "white" )
(set-face-foreground 'wl-highlight-summary-low-read-face "white" )
(set-face-foreground 'wl-highlight-summary-high-read-face "white" )
(set-face-foreground 'wl-highlight-summary-low-unread-face "white" )
(set-face-foreground 'wl-highlight-summary-high-unread-face "white" )
