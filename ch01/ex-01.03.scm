#lang planet neil/sicp

(define (square x) (* x x))

(define (sum-of-squares a b) (+ (square a) (square b)))

(define (order-is a b c) (and (<= a b) (<= b c)))

(define (first-is-min a b c) (or (order-is a b c) (order-is a c b)))

(define (sum-of-squares-of-two-larger a b c)
  (cond ((first-is-min a b c) (sum-of-squares b c))
        ((first-is-min b a c) (sum-of-squares a c))
        (else (sum-of-squares a b))))

(sum-of-squares-of-two-larger 1 2 3)
(sum-of-squares-of-two-larger 2 1 3)
(sum-of-squares-of-two-larger 3 1 2)
(sum-of-squares-of-two-larger 2 2 2)
