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
