(deftemplate persona 
(multislot nombre 
 (type STRING)) 
) 

(defrule leer-fichero
=>
(open nombres.txt fichero "r")
(bind ?fichero (readline fichero))
    (while (neq ?fichero EOF)
	(printout t ?fichero crlf)
	(assert (nombre (fichero)))
	(bind ?fichero (readline fichero)))
(close fichero)
) 