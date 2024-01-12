; COGS502 Assignment 11-12 F.O.Emre ERDEM 2030559

; TAKE uses 'cond' to handle different combinations of 'row' and 'column'. 
; Returns specific element, row, column, or nil based on provided arguments.
(defun take (dataframe row column)
  (cond
    ((and row column) (nth (nth row (rest dataframe)) (position column (first dataframe))))
    (row (nth (1+ row) dataframe))
    (column (get-column dataframe column))
    (t nil)))


; ADD-COLUMN copies the dataframe and appends the new column name to the header.
; Iterates over each row, adding data from 'column-data' or 'T' if data is exhausted. 
(defun add-column (dataframe column-name column-data)
  (let ((new-dataframe (copy-list dataframe)))
    (setf (first new-dataframe) (append (first new-dataframe) (list column-name)))
    (dolist (row (rest new-dataframe))
      (let ((data (pop column-data)))
        (if data
            (push data row)
            (push 'T row))))
    (reverse new-dataframe)))


; MAP-COLUMNS finds indices of specified columns and maps a function over these columns.
; Applies the function to corresponding elements of the specified columns in each row.
(defun map-columns (dataframe columns function)
  (let ((column-indices (mapcar (lambda (col) (position col (first dataframe))) columns)))
    (mapcar (lambda (row)
              (apply function (mapcar (lambda (index) (nth index row)) column-indices)))
            (rest dataframe))))
