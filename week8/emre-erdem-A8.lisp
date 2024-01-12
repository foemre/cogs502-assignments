;; COGS 502 Assignment 8 F.O.Emre ERDEM 2030559
;; Ex.4-40
(defun explode (lst)
  (if (null lst)
      nil
      (append (repeat-symbol (car lst) (cadr lst)) 
              (explode (cddr lst)))))

(defun repeat-symbol (symbol count)
  (if (= count 0)
      nil
      (cons symbol (repeat-symbol symbol (1- count)))))


;; Ex.4-57
(defun findlast (item lst)
  (findlast-helper item lst 0 nil))

(defun findlast-helper (item lst current-index last-index)
  (cond ((null lst) last-index)  ; End of list, return the last index found
        ((eql (car lst) item)
         (findlast-helper item (cdr lst) (1+ current-index) current-index))  ; Found item, update last-index
        (t (findlast-helper item (cdr lst) (1+ current-index) last-index))))  ; Item not found, continue
