(SETQ l1 '(V B N J H))
(SETQ l2 '((Y U I) (H J K)(8) 78))
(SETQ l3 '(dg FG HJ K L (O 0 9)))

;1
(   
    (
        lambda (a b c)
        (print 
              (LIST (CAR a) (CAR b) (CAR c)) ;объединения голов трех списков в один список
        )
    )
    l1 l2 l3
)

;2
(DEFUN newList (a b c)
    (LIST (NTH 2 a) (NTH 3 b) (NTH 5 c)) ; создания нового списка из элементов нескольких исходных списков
 )
 
 (print (newList l1 l2 l3))

;3
(DEFUN isNumber (n1 n2)
   ( if (AND ( NUMBERP n1)( NUMBERP n2) )
        (LIST  (+ n1 n2) (* n1 n2)) ;создание списка из сумы и произведения ,если n1 n2 числа
    ( LIST (ATOM n1) (ATOM n2))    ;создание списки проверки на атомарность  
   )
)

(print (isNumber 1 '(nkcc mxs sksks)))
(print (isNumber 1 3))
(print (isNumber 1 'd))