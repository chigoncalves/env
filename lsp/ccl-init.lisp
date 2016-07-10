(setf
 *print-case* :downcase           ; Show downcase package name.
 *load-verbose* nil)              ; Disable verbosity when loading files.

#-quicklisp
(let ((quicklisp-init (merge-pathnames "chi.d/local/share/lisp/common-lisp/quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(defun exit ()
  "An alias for `quit'. Provides another alternative to end non Sly/Slim session."
  (quit))
