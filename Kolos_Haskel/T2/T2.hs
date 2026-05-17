dlugoscListy :: [Int] -> Int
dlugoscListy [] = 0
dlugoscListy (x:xs) = 1 + dlugoscListy xs

odwrocenieListy :: [Int] -> [Int]
odwrocenieListy [] = []
odwrocenieListy (x:xs) = odwrocenieListy xs ++ [x]

sumaElem :: [Int] -> Int
sumaElem [] = 0
sumaElem (x:xs) = x + sumaElem xs

oddNum :: [Int] -> [Int]
oddNum [] = []
oddNum (x:xs) = (x + 1) : oddNum xs

deleteNum :: Int -> [Int]  -> [Int]
deleteNum _ [] = []
deleteNum n (x:xs) = 
	if x == n
	then deleteNum n xs
	else x : deleteNum n xs

duplikatNum :: [a] -> [a]
duplikatNum [] = []
duplikatNum (x:xs) = x : x : duplikatNum xs

skalarny :: [Int] -> [Int] -> Int
skalarny [] [] = 0
skalarny (x:xs) (y:ys) = (x * y) + skalarny xs ys


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n-2)


drugiElement :: [Int] -> Int
drugiElement tab = head (tail tab)

skrajne :: [Int] -> [Int]
skrajne tab =  head tab : [last tab]

dodatnie :: [Int] -> [Int]
dodatnie [] = []
dodatnie (x:xs) =
	if x > 0
	then x : dodatnie xs
	else dodatnie xs

iloczynListy :: [Int] -> Int
iloczynListy [] = 1
iloczynListy (x:xs) = x * iloczynListy xs

czyWLiscie :: Int -> [Int] -> Bool
czyWLiscie _ [] = False
czyWLiscie n (x:xs) =
	if x == n
	then True
	else czyWLiscie n xs

zerujUjemne :: [Int] -> [Int]
zerujUjemne [] = []
zerujUjemne (x:xs) = 
	if x < 0
	then 0 : zerujUjemne xs
	else x : zerujUjemne xs

czyZdaje :: (String, Int) -> Bool
czyZdaje (x, y) = y >= 50

podzielZReszta:: Int -> Int -> (Int, Int)
podzielZReszta x y = (x `mod` y, x `div` y)


	
main :: IO ()
main = do
	print "==================="
	print(czyZdaje ("Piotr", 60))
	print(podzielZReszta 10 2)

	print "==================="
	

	let lista = [1, 2, 3]
	print(zerujUjemne [1, -5, 3, -2])





	print(dlugoscListy lista)
	print "Suma elementow"
	print(sumaElem lista)
	print "Nieparzyste"
	print(oddNum lista)
	print "Duplikaty"
	print(duplikatNum lista)
	print "XDDDD"
	print(skrajne lista)

	let lista2 = [x*5 | x <- [5..50]]
	print lista2
	let lista3 = [x | x <- [-5..10], x > 0]
	print lista3