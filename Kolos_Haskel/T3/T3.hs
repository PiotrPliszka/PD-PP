zamiana:: (a, a) -> (a, a)
zamiana (x, y) = (y, x)

type Vector = (Double, Double)

liczenieVektora:: (Double, Double) -> (Double, Double) -> Vector
liczenieVektora (a, b) (x, y)= (a-x, b-y)

sumVector :: Vector -> Vector -> Vector
sumVector (x1, y1) (x2, y2) = (x1+x2, y1+y2)

czyNaOsiX :: (Double, Double) -> Bool
czyNaOsiX (_, y) = y == 0


type Book = (String, String, Int)
title :: Book -> String
title (t, _, _) -> t


main = do
	print "======Start========" 
	print(zamiana (5, 2))
	print(zamiana ("Piotr", "Pliszka"))
	print(czyNaOsiX(10, 0))