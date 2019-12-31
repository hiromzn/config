
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-r") 'scroll-down)
(global-set-key "\C-/" 'undo)

;;
;; tab
;;
(setq default-tab-width 4)

(defun set-tab-width (num &optional local redraw)
  (interactive "nTab Width: ")
  (when local
    (make-local-variable 'tab-width)
    (make-local-variable 'tab-stop-list))
  (setq tab-width num)
  (setq tab-stop-list ())
  (while (<= num 256)
    (setq tab-stop-list `(,@tab-stop-list ,num))
    (setq num (+ num tab-width)))
  (when redraw (redraw-display)) tab-width)

(set-tab-width (setq default-tab-width (setq-default tab-width 8)))

(defvar ctl-q-map (make-keymap))
(define-key global-map (kbd "C-q") ctl-q-map)
(define-key ctl-q-map (kbd "C-q") 'quoted-insert)
(define-key ctl-q-map (kbd "2") (lambda () (interactive) (set-tab-width 2 t t)))
(define-key ctl-q-map (kbd "4") (lambda () (interactive) (set-tab-width 4 t t)))
(define-key ctl-q-map (kbd "8") (lambda () (interactive) (set-tab-width 8 t t)))
