#lang planet neil/sicp

(define (exp-iter b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((odd? n) (iter (* a b) b (- n 1)))
          (else (iter a (* b b) (/ n 2)))))
  (iter 1 b n))

(exp-iter 1 0)
(exp-iter 1 1)
(exp-iter 1 2)
(exp-iter 2 2)
(exp-iter 2 10)
(exp-iter 2 11)
(exp-iter 3 100)