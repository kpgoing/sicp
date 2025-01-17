#lang racket
(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one
    (lambda (f)
        (lambda (x)
            (f x))))
(define two
    (lambda (f)
        (lambda (x)
            (f (f x)))))
(define (add a b)
  (lambda (f)
    (lambda (x)
      ((a f) ((b f) x)))))
(define three (add one two))
(define (addone x)
  (+ x 1))
((three addone) 1)