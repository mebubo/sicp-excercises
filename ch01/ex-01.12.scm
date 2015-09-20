#lang planet neil/sicp

(define (pascal row col)
  (if (or (= col 1) (= col row))
      1
      (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col))))

(pascal 1 1)
(pascal 5 4)

