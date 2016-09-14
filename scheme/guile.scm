;;;; -*- scheme -*-

(define bye exit)
(define halt exit)

(when (null? %load-path)
      (set! %load-path '()))

(set! %load-path (cons "/usr/local/share/guile/site"  %load-path))
