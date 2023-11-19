;; COGS502 Assignment 7 F.O.Emre ERDEM 2030559
;; The IMPLODE function recursively processes a list of symbols, replacing consecutive 
;; repetitions of a symbol with the symbol and its repetition count.
;; It uses optional parameters: 'current' to track the current symbol being processed, 
;; 'count' for the number of times 'current' has appeared consecutively, and 'acc' 
;; as the accumulator for the result list.
;; The 'current-supplied-p' flag checks if 'current' is explicitly provided in recursive calls, 
;; distinguishing between an actual nil symbol in the list and the initial default state.

(defun implode (lst &optional (current nil current-supplied-p) (count 0) (acc nil))
  (cond
    ((null lst) (if (null current) acc (reverse (cons count (cons current acc))))) ; end of list
    ((not current-supplied-p) (implode (cdr lst) (car lst) 1 acc)) ; first symbol
    ((eql (car lst) current) (implode (cdr lst) current (+ count 1) acc)) ; same symbol
    (t (implode (cdr lst) (car lst) 1 (cons count (cons current acc)))))) ; new symbol