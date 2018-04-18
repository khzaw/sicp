(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Tests
(= (new-if (= 2 3) 0 5) 5)
(= (new-if (= 1 1) 0 5) 0)

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 16)

;; It hits maximum recursion depth because MIT-scheme uses applicative-order evaluation
;; which will expands all arguments to a function before evaluating it causing the else-cklause to expand infinitely.
;; The if expression, evaluates the predicate first, before evaluating a respective clause depending on the value (if or else)
