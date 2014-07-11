(define (sine angle)
  (define (sine1 angle n)
    (if (not (> (abs angle) 0.1))
      n
      (sine1 (/ angle 3.0) (+ n 1))))
  (sine1 angle 0))
; The step should be increase at O(angle), 
; for each time the angle divide by 3 while 
; step increase 1.
; However, the step can be measured as O(log(sine1))
; for the result increase at rate of cubic meanwhile. 
(sine 12.15)
(sine 0.1)
(sine 0.3)
(sine 0.9)
(sine 2.7)
(sine 8.1)
(sine 24.3)
(sine 24.4)
