
(global-set-key [f5] 'goto-line)


(add-to-list 'load-path "~/.emacs.d/edje-mode.el")
(add-to-list 'auto-mode-alist '("\\.edc$" . edje-mode))
(autoload 'edje-mode "edje-mode")

(c-add-style
 "e17"
 '("gnu"
   (indent-tabs-mode . nil)
   (tab-width . 8)
   (c-offsets-alist
    .
    ((defun-block-intro . 3)
     (statement-block-intro . 3)
     (case-label . 1)
     (statement-case-intro . 3)
     (inclass . 3)
     ))))

(c-add-style
 "enna"
 '("stroustrup"
   (indent-tabs-mode . nil)
   (tab-width . 4)
   (c-basic-offset . 4)))

(defun evas-c-mode-hooks ()
  (let ((path (buffer-file-name)))
    (cond
     ((string-match "/evas/src/" path) (c-set-style "e17"))
     ((string-match "/svn/e" path) (c-set-style "e17"))
     ((string-match "/e17_src/" path) (c-set-style "e17"))
     ((string-match "/efl/" path) (c-set-style "e17"))
     ((string-match "/Enna-Media-Server/" path) (c-set-style "e17"))
     )
    )
  )
(add-hook 'c-mode-common-hook 'evas-c-mode-hooks)



(defun enna-c-mode-hooks ()
  (let ((path (buffer-file-name)))
    (cond
     ((string-match "/enna/" path) (c-set-style "enna"))
     )
    )
  )
(add-hook 'c-mode-common-hook 'enna-c-mode-hooks)



(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/edje-mode.el")
(add-to-list 'auto-mode-alist '("\\.edc$" . edje-mode))
(autoload 'edje-mode "edje-mode")
(add-to-list 'auto-mode-alist '("\\.azy$" . c-mode))

(require 'web-mode) 
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)


(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")
(load-theme 'solarized-dark t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
