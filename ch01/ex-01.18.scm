#lang planet neil/sicp

(define (double x)
  (+ x x))

(define (half x)
  (/ x 2))

(define (mult-iter a b)
  (define (iter x a b)
    (cond ((= b 0) x)
          ((odd? b) (iter (+ x a) a (- b 1)))
          (else (iter x (double a) (half b)))))
  (iter 0 a b))

(mult-iter 100 0)
(mult-iter 1 1)
(mult-iter 1 2)
(mult-iter 2 1)
(mult-iter 2 2)
(mult-iter 10000 10000)
