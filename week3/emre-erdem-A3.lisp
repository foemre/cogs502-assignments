; COGS502 Assignment 3
; F.O.Emre ERDEM 2030559
; Ex. 2.1. ASCENDINGP checks if the first number is less than or equal to the second, 
; and if the second is less than or equal to the third number; which is equivalent to
; checking if the numbers are in ascending order.
(defun ascendingp (a b c)
  (if (and (<= a b) (<= b c))
      t
      nil))

; Ex. 2.2: Computes the difference 'a - b' once and uses 'signum' to determine its sign.
; 'min' and 'max' functions effectively map the sign to the range (-1, 0, 1), yielding the final result.
(defun compare-difference (a b)
  (let ((diff (- a b)))
    (+ (min (signum diff) 1) 
       (max (signum diff) 0))))