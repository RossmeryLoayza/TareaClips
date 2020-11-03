(defglobal ?*varAdiv* = 15)

(defrule adivinarNumero
(bind ?x (read))
=>
(while (neq ?x ?varAdiv)
(if  (> ?x ?varAdiv) 
   then (printout  t " El numero es menor") 
   else (if (> ?varAdiv ?x) then (printout  t "El numero es mayor"))))
(printout  t " El numero ingresado es el correcto!"))