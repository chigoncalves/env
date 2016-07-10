;;;; -*- mode: lisp -*-

(setf
 *print-right-margin* 100
 *print-case* :downcase                     ; Show downcase package name.
 *load-verbose* nil)	                    ; Disable verbosity when loading files.

;;; Remove `:NIL' no we can use `#+nil' trick.
(when (boundp '*features*)
  (setf *features* (remove-if #'(lambda (elt) (eql :nil elt)) *features*)))

;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames #P"chi.d/local/share/lisp/common-lisp/quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
