;;; Package -- Summary

;;; Commentary:
;;; Code:
(setq gc-cons-threshold (* 50 1000 1000))
(add-to-list 'load-path "~/.config/emacs/elpaca/builds/org")
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(setq backup-directory-alist '(("." . "~/.config/emacs/backup_files"))
      backup-by-copying t    ;; Don't delink hardlinks
      version-control t      ;; use version numbers on backups
      delete-old-versions t  ;; automatically delete excess backups
      kept-new-versions 20   ;; how many of the newest versions to keep
      kept-old-versions 5    ;; and how many of the old
      )
(setq display-line-numbers-type 'relative)
(setq font-lock-maximum-decoration t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4dcf06273c9f5f0e01cea95e5f71c3b6ee506f192d75ffda639d737964e2e14e" "80214de566132bf2c844b9dee3ec0599f65c5a1f2d6ff21a2c8309e6e70f9242" default))
 '(evil-undo-system 'undo-fu)
 '(go-impl-aliases-alist '(("hh" . "http.Handler") ("irw" . "io.ReadWriter")))
 '(lsp-tailwindcss-emmet-completions t)
 '(lsp-ui-doc-position 'at-point)
 '(org-support-shift-select t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-ex-substitute-matches ((t (:inherit diff-removed :foreground unspecified :background unspecified))))
 '(evil-ex-substitute-replacement ((t (:inherit diff-added :foreground unspecified :background unspecified))))
 '(evil-goggles-change-face ((t (:inherit diff-removed))))
 '(evil-goggles-delete-face ((t (:inherit diff-removed))))
 '(evil-goggles-paste-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
 '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
 '(evil-goggles-yank-face ((t (:inherit diff-changed))))
 '(evil-traces-change ((t (:inherit diff-removed))))
 '(evil-traces-copy-preview ((t (:inherit diff-added))))
 '(evil-traces-copy-range ((t (:inherit diff-changed))))
 '(evil-traces-delete ((t (:inherit diff-removed))))
 '(evil-traces-global-match ((t (:inherit diff-added))))
 '(evil-traces-global-range ((t (:inherit diff-changed))))
 '(evil-traces-join-indicator ((t (:inherit diff-added))) t)
 '(evil-traces-join-range ((t (:inherit diff-changed))))
 '(evil-traces-move-preview ((t (:inherit diff-added))))
 '(evil-traces-move-range ((t (:inherit diff-removed))))
 '(evil-traces-normal ((t (:inherit diff-changed))))
 '(evil-traces-shell-command ((t (:inherit diff-changed))))
 '(evil-traces-substitute-range ((t (:inherit diff-changed))))
 '(evil-traces-yank ((t (:inherit diff-changed)))))

;; Performace 

(defun teamacs/display-startup-time()
	(message "Emacs  loaded in %s with %d garbage collection"
	    (format "%.2f seconds"
		(float-time
		    (time-subtract after-init-time before-init-time)))
		    gcs-done))

(add-hook 'emacs-startup-hook #'teamacs/display-startup-time)
(setq gc-cons-threshold (* 2 1000 1000))
