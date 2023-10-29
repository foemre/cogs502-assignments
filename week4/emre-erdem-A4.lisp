; COGS502 Assignment 4
; F.O.Emre ERDEM 2030559
; The function "multiply-using-addition-helper" takes four arguments: "a", "b", "acc" (the accumulator), and "counter".
; The accumulator "acc" is incremented by "a" each time the function is recursively called, and "counter" is incremented by 1.
; When "counter" equals "b", the accumulator "acc" contains the result of multiplication, and the recursion stops.
; The function "multiply-using-addition" serves as a clean wrapper around the core logic implemented in "multiply-using-addition-helper".
; This solution was the only one I could come up with that avoids decrementing "b" until it equals zero, thus eliminating the use of subtraction.
(defun multiply-using-addition-helper (a b acc counter)
  (if (= counter b)
      acc
      (multiply-using-addition-helper a b (+ acc a) (+ counter 1))))

(defun multiply-using-addition (a b)
  (multiply-using-addition-helper a b 0 0))
