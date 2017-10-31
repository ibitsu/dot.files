(cond
 ((eq window-system 'w32)
  (load "~/.emacs.d/init_win32.el"))
 ((or (eq window-system 'ns) (eq window-system 'mac))
  (load "~/.emacs.d/init_osx.el"))
 ((or (eq system-type 'gnu/linux))
  (load "~/.emacs.d/init_linux.el"))
)
