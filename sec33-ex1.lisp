;;; take integers from 1 to Ndays
;;; shuffle (knuth shuffle, probably exists in Alexandria library
;;; For each month get a list of days, find their median (again alexandria?)
;;; On the list of median find the number of concordant pairs C (expected value is 33)
;;; Get their distribution and estimate P(C<=11)
;;; How to solve this analytically?

(defparameter *Ndays-regular* '(31 28 31 30 31 30 31 31 30 31 30 31))
(defparameter *Ndays-leap* '(31 29 31 30 31 30 31 31 30 31 30 31))
