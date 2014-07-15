(define (gcd a b)
  (define (ngcd a b n)
    (if (= b 0)
        n
        (ngcd b (remainder a b) (+ 1 n))))
  (ngcd a b 0))
(gcd 206 40)
