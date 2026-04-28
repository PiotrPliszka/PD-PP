swapPair :: (a, b) -> (b, a)
swapPair (x, y) = (y, x)

type Point = (Double, Double)
type Vector = (Double, Double)

vectorFromPoints :: (Double, Double) -> (Double, Double) -> (Double, Double) 
vectorFromPoints (x1, y1) (x2, y2) = (x2-x1, y2-y1)

addVectors :: Vector -> Vector -> Vector
addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)

isOnXAxis :: Point -> Bool
isOnXAxis (x, y) = y == 0

isOnYAxis :: Point -> Bool
isOnYAxis (x, y) = x == 0

orderPair :: (Double, Double) -> (Double, Double)
orderPair (x, y) = if x <= y then (x, y) else (y, x) 

type Book = (String, String, Int)

title :: Book -> String
title(t, _, _) = t

author :: Book -> String
author(_, a, _) = a

year :: Book -> Int
year(_, _, y) = y

sumPair :: (Double, Double) -> Double
sumPair(x, y) = x+y

multiplyPair :: (Double, Double) -> Double
multiplyPair(x, y) = x*y

main = do
    print(swapPair(5, 4))
    print(vectorFromPoints(3, 4) (0, 5))
    print(addVectors(3, 4) (0, 5))
    print(isOnXAxis(0, 5))
    print(isOnXAxis(1, 0))
    print(isOnYAxis(0, 5))
    print(isOnYAxis(1, 0))
    print(orderPair(5, 10))
    let myBook = ("Potop", "Henryk Sienkiewicz", 1886)
    print (title myBook)
    print (author myBook)
    print (year myBook)
    print(sumPair(5, 5))
    print(multiplyPair(2, 10))

