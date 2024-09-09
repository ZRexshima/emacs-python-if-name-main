(defun python-if-name-main ()
  "Inserts Python if-name-main clause and moves point to top of buffer."
  (interactive)
  (dotimes (VAR 10)
    (newline))
  (insert "if __name__ == '__main__':")
  (newline)
  (insert "    main()")
  (beginning-of-buffer))

;; optional if-name-main key binding
(keymap-global-set "<f6>" 'python-if-name-main)
