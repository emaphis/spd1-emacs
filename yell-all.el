;; yell-all.el


;; ================
;; Data definitons:

;;------------------------------------------------------------------------------
;; Remember the data definition for a list of strings we designed in Lecture 5c:
;; (if this data definition does not look familiar, please review the lecture)
;;------------------------------------------------------------------------------

;; ListOfString is one of: 
;;  - empty
;;  - (cons String ListOfString)
;; interp. a list of strings

(defconst  LS0 nil) 
(defconst  LS1 (cons "a" nil))
(defconst  LS2 (cons "a" (cons "b" nil)))
(defconst  LS3 (cons "c" (cons "b" (cons "a" nil))))

(defun fn-for-los (los) 
  (cond ((null los) (...))
        (t
         (... (first los)
              (fn-for-los (rest los))))))


;; Template rules used: 
;; - one of: 2 cases
;; - atomic distinct: empty
;; - compound: (cons String ListOfString)
;; - atomic non-distinct: (first los) is  String
;; - self-reference: (rest los) is ListOfString



;; =================
;; Functions:

;;----------------------------------------------------------------------------------
;; PROBLEM:
;;
;; Design a function that consumes a list of strings and "yells" each word by 
;; adding "!" to the end of each string.
;;----------------------------------------------------------------------------------


;; ListOfString -> ListOfString
;; produces a list of strings with "!" added to the end of each word
 
(expectations
  (expect nil (yell-all nil))
  (expect (cons "c!" (cons "b!" (cons "a!" nil)))
    (yell-all LS3))
  (expect (cons "hi!" (cons "wait!" (cons "what!" nil)))
    (yell-all (cons "hi" (cons "wait" (cons "what" nil)))) )) 

;(defun yell-all (los) nil) ;stub

(defun yell-all (los)
  "hello"
  (cond ((null los) nil)
        (t
         (cons (concat (first los) "!")
	       (yell-all (rest los))))))

(expectations-execute) ; run automatically when buffer is evaluated
