;;; -*- lexical-binding: t -*-

;;
;; Command is Meta on OSX
;;
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;;
;; misc settings
;;
(prefer-coding-system 'utf-8)
(setq make-backup-files nil)
(setq help-window-select t)
(setq inhibit-splash-screen t)
(setq scroll-conservatively 5)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;
;; visual stuff
;;
(setq default-frame-alist
  '(
    (width . 100)
    (height . 50)
    (font . "Source Code Pro-14")))
(tool-bar-mode -1)

;;
;; custom keybindings
;;
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-b") 'buffer-menu)


(provide 'cjb-entry-point)