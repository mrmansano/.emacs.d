;;; private/mrmansano/autoload/evil.el

;;;###autoload (autoload '+mrmansano:multi-next-line "private/mrmansano/autoload/evil" nil t)
(evil-define-motion +mrmansano:multi-next-line (count)
  "Move down 6 lines."
  :type line
  (let ((line-move-visual (or visual-line-mode (derived-mode-p 'text-mode))))
    (evil-line-move (* 6 (or count 1)))))

;;;###autoload (autoload '+mrmansano:multi-previous-line "private/mrmansano/autoload/evil" nil t)
(evil-define-motion +mrmansano:multi-previous-line (count)
  "Move up 6 lines."
  :type line
  (let ((line-move-visual (or visual-line-mode (derived-mode-p 'text-mode))))
    (evil-line-move (- (* 6 (or count 1))))))

;;;###autoload (autoload '+mrmansano:cd "private/mrmansano/autoload/evil" nil t)
(evil-define-command +mrmansano:cd ()
  "Change `default-directory' with `cd'."
  (interactive "<f>")
  (cd input))

;;;###autoload (autoload '+mrmansano:kill-all-buffers "private/mrmansano/autoload/evil" nil t)
(evil-define-command +mrmansano:kill-all-buffers (&optional bang)
  "Kill all buffers. If BANG, kill current session too."
  (interactive "<!>")
  (if bang
      (+workspace/kill-session)
    (doom/kill-all-buffers)))

;;;###autoload (autoload '+mrmansano:kill-matching-buffers "private/mrmansano/autoload/evil" nil t)
(evil-define-command +mrmansano:kill-matching-buffers (&optional bang pattern)
  "Kill all buffers matching PATTERN regexp. If BANG, only match project
buffers."
  (interactive "<a>")
  (doom/kill-matching-buffers pattern bang))
