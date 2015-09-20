#lang planet neil/sicp

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (f-i n)
  (define (f-iter x x+1 x+2 count)
    (if (= 0 count)
        x
        (f-iter x+1 x+2 (+ (* 3 x) (* 2 x+1) x+2) (- count 1))))
  (f-iter 0 1 2 n))

(f 0)
(f 1)
(f 3)
(f 5)

(f-i 0)
(f-i 1)
(f-i 3)
(f-i 5)
(f-i 100)