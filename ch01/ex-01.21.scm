#lang planet neil/sicp

(define (smallest-divisor n)
  (define (divides? a b)
    (= 0 (remainder b a)))
  (define (iter current max)
    (cond ((> current max) n)
          ((divides? current n) current)
          (else (iter (+ current 1) max))))
  (iter 2 (/ n 2)))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)