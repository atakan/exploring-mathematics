;;; Chapter 2, Section 6: Greatest Common Divisor

(defun gcd-rec (a b)
  (if (zerop b)
      (values a)
      (values (gcd-rec b (mod a b)))))

(defun gcd-iter (a b)
  (let ((r 0))
    (loop while (> b 0)
	  do (setf r (mod a b)
		   a b
		   b r))
    (values a)))

;;; TODO: use ideas in https://www.cs.cmu.edu/Groups/AI/html/faqs/lang/lisp/part1/faq-doc-2.html to write a tail-rec version and try with Euler phi function stuff.

(defun euler-phi (n &key (gcd #'gcd-rec))
  "the number of elements in 1...n that are prime to n.
   example: CL-USER> (euler-phi 30000000 :gcd #'gcd-iter)
   somehow the iterative and recursive forms seem to run in similar times.
   did not try with tail recursion yet, neither with any compiler optimization."
  (let ((phi 0))
    (loop for i from 1 to (1- n)
	  do (when (= (gcd i n) 1) (incf phi)))
    (return-from euler-phi phi)))
  
