;; -*- lexical-binding: t -*-

;; cjb-keybindings.el - custom keys
;; NOTE: This file has to come *after* requiring 'evil-config

;; normal ones
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "M-/") 'hippie-expand)

;; evil-specific ones, maybe should go in evil-config...
(defvar cjb/leader-key ",")
(defun cjb/leader (&rest keys)
  "Fake in Vim leader mappings for evil-mode; works with any # of keys"
  (apply 'concat
         (cons cjb/leader-key keys)))

(define-key evil-normal-state-map (kbd "C-j") 'cjb/evil-down-ten)
(define-key evil-normal-state-map (kbd "C-k") 'cjb/evil-up-ten)
(define-key evil-normal-state-map (kbd "C-y") 'yank)
(define-key evil-normal-state-map (kbd "M-y") 'yank-pop)
(define-key evil-normal-state-map (kbd (cjb/leader "`")) 'visual-line-mode)
(define-key evil-normal-state-map (kbd (cjb/leader "b")) 'ido-switch-buffer)
(define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line)
(define-key evil-insert-state-map (kbd "C-e") 'end-of-line)

;; key-chord ones
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

;; Bookmark View
(add-hook 'bookmark-bmenu-mode-hook
          (lambda () (local-set-key (kbd "j") 'evil-next-line)))

(add-hook 'bookmark-bmenu-mode-hook
          (lambda () (local-set-key (kbd "k") 'evil-previous-line)))

;; Dired
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key dired-mode-map (kbd "^")
              (lambda () (interactive) (find-alternate-file "..")))))


(provide 'cjb-keybindings)
