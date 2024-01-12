;; COGS502 Assignment 10 F.O.Emre ERDEM 2030559
;; Assuming "main.lisp" is loaded and the path to the *.tsv file is correct, this should work.

(defun get-column (dataframe column-name)
  (let ((column-index (position column-name (first dataframe))))
    (mapcar (lambda (row) (nth column-index row))
            (rest dataframe))))


(defun get-row (dataframe row-index)
  (nth (1+ row-index) dataframe))
