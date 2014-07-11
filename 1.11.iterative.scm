(define (f n)
  (define (f1 a b c count)
    (cond ((= count 0) c)
          ((= count 1) b)
          ((= count 2) a)
          (else (f1 (+ a
                       (* 2 b)
                       (* 3 c))
                    a
                    b
                    (- count 1))))) 
  (f1 2 1 0 n))
(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
