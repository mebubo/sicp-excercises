#lang planet neil/sicp

(define (double x)
  (+ x x))

(define (half x)
  (/ x 2))

(define (mult a b)
  (cond ((= b 1) a)
        ((odd? b) (+ a (mult a (- b 1))))
        (else (double (mult a (half b))))))

(mult 100 100)