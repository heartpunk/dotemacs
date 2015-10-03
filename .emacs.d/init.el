;;;; a Just Good Enough™ emacs config ;;;;

; this is the result of a chats with @nicolasartman. I just followed his advice
; for a basic setup, and then added evil mode on top of it. 

;;;; thanks for checking it out? lol. ;;;;


;; melpa
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
;; end melpa


;; ido
(require 'ido)
(ido-mode t)
(ido-everywhere 1)
;; end ido


;; ido-ubiquitous
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)
;; end ido-ubiquitous


;; smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
;; end smex


;;;; NOTE ;;;;
;; if you aren't used to vim, you might as well remove this ;;

;; evil
(push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)

(require 'evil)
(evil-mode 1)
;; end evil

;; cider mode hax
(add-to-list 'exec-path "/usr/local/bin")
;; end cider mode hax
