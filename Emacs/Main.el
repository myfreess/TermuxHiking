(put 'erase-buffer 'disabled nil)
;;行号
(global-linum-mode t)
;;十秒保存一次文件
(setq-default auto-save-timeout 10)
;;50字符自动保存
(setq-default auto-save-interval 100)
;;取消备份
(setq make-backup-files nil)
;;Elpa
(defun mypackage()
  (interactive)
  (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
  (package-initialize)
  (package-refresh-contents)
  (defvar mypackages
	'(geiser hy-mode elixir-mode)
	)
  (mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package))) mypackages)
)
(defun load-custom-config()
(add-to-list 'load-path "~/.emacs.d/scheme")
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)
;;启用evil
;;  git clone https://github.com/emacs-evil/evil ~/.emacs.d/evil
;;  git clone http://www.dr-qubit.org/git/undo-tree.git ~/.emacs.d/undo-tree
;;  git clone https://github.com/emacs-evil/goto-chg.git ~/.emacs.d/goto-chg
;;
(add-to-list 'load-path "~/.emacs.d/EVIL/undo-tree")
(add-to-list 'load-path "~/.emacs.d/EVIL/goto-chg")
(add-to-list 'load-path "~/.emacs.d/EVIL/evil")
(require 'undo-tree)
(global-undo-tree-mode)
(require 'evil)
(evil-mode 1)
;;Geiser
;;Geiser
(setq scheme-program-name "guile")
(setq geiser-active-implementations '(guile))
)
