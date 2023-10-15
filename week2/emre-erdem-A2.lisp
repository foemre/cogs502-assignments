(defun ex1_average (x y)
  (/ (+ x y) 2))

(defun ex2_harmonicmean (x y)
  (/ (* x y) (ex1_average x y)))

(defun ex3_formula(x y n)
  (* (/ (expt x n) (- 7 (/ y 2))) 
     (/ (+ (expt y (/ 2 3)) 17) 4)))
