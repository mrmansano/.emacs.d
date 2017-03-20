;;; private/mrmansano/autoload/mrmansano.el

;;;###autoload
(defun +mrmansano/install-snippets ()
  "Install my snippets from https://github.com/mrmansano/emacs-snippets into
private/mrmansano/snippets."
  (interactive)
  (doom-fetch :github "mrmansano/emacs-snippets"
              (expand-file-name "snippets" (doom-module-path :private 'mrmansano))))

;;;###autoload
(defun +mrmansano/find-in-templates ()
  "Browse through snippets folder"
  (interactive)
  (projectile-find-file-in-directory +file-templates-dir))

;;;###autoload
(defun +mrmansano/find-in-snippets ()
  "Browse through snippets folder"
  (interactive)
  (projectile-find-file-in-directory +mrmansano-snippets-dir))

;;;###autoload
(defun +mrmansano/find-in-dotfiles ()
  (interactive)
  (projectile-find-file-in-directory (expand-file-name ".dotfiles" "~")))

;;;###autoload
(defun +mrmansano/find-in-emacsd ()
  (interactive)
  (projectile-find-file-in-directory doom-emacs-dir))

;;;###autoload
(defun +mrmansano/browse-emacsd ()
  (interactive)
  (let ((default-directory doom-emacs-dir))
    (call-interactively (command-remapping 'find-file))))

;;;###autoload
(defun +mrmansano/browse-dotfiles ()
  (interactive)
  (let ((default-directory (expand-file-name ".dotfiles" "~")))
    (call-interactively (command-remapping 'find-file))))

;;;###autoload
(defun +mrmansano/find-in-notes ()
  (interactive)
  (projectile-find-file-in-directory +org-dir))

;;;###autoload
(defun +mrmansano/browse-notes ()
  (interactive)
  (let ((default-directory +org-dir))
    (call-interactively (command-remapping 'find-file))))


