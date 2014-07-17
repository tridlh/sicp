(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n)
  (define (sfp n cnt)
    (cond ((= cnt 0) (timed-prime-test (- n 1)))
          ((prime? n) (sfp (+ 1 n) (- cnt 1)))
          (else (sfp (+ 1 n) cnt))))
  (sfp (+ n 1) 2))
(search-for-primes 2)  
(search-for-primes 1000)  
(search-for-primes 10000)  
(search-for-primes 10000000)  
(search-for-primes 1000000000)  
(search-for-primes 10000000000)  
(search-for-primes 100000000000)  
