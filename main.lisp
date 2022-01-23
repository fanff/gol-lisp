(setf *random-state* (make-random-state t))


(defparameter world (make-array '(5 5) :initial-element 0 ))


(setf (aref world 1 0 ) 1)

(setf (aref world 3 2 ) 1)



(defun iterrow ( w n f)  
  ;;
  ;; iterrate over the nth row of world from the fth index
  ;;
  (if (= f (array-dimension world 0 )) 
    '()
    (append (list (aref w n f)) (iterrow w n (+ f 1) ) )
    )
  )

(defun showWorld_it (w n f )
  (if (>= f (array-dimension world 1)) 
	'()
    	(append (print (iterrow world f 0 ) ) 
		(showWorld_it w n (+ f 1) ))
    )
)

(defun showWorld ( w )  
   (showWorld_it w 0 0 )
)


(showWorld world )




#|
(defun iter ( w  n ) 
  (if (= n 0)
    w
    ( iter(w (- n 1)))))


iter( 3,3)
|#



