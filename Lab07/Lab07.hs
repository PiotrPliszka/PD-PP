dlugosc :: [a] -> Int
dlugosc [] = 0
dlugosc (x:xs) = 1 + dlugosc xs

odwrotna :: [a] -> [a]
odwrotna [] = []
odwrotna (x:xs) = odwrotna xs ++ [x]

suma :: Num a => [a] -> a
suma [] = 0
suma (x:xs) = x + suma xs

bliskieNieparzyste :: [Int] -> [Int]
bliskieNieparzyste [] = []
bliskieNieparzyste (x:xs) = (x+1) : bliskieNieparzyste(xs)

usunWszystkie _ [] = []
usunWszystkie n (x:xs) = if x == n then usunWszystkie n xs else x : usunWszystkie n xs

duplikaty :: [Int] -> [Int]
duplikaty [] = []
duplikaty (x:xs) = x : x : duplikaty xs

palindrom :: [Int] -> Bool
palindrom [] = True
palindrom tab = tab == odwrotna tab

iloczynSkalarny :: [Int] -> [Int] -> Int
iloczynSkalarny [] [] = 0
iloczynSkalarny (x:xs) (y:ys) = x * y + iloczynSkalarny xs ys

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

fibList :: Int -> [Int]
fibList n = [fib x | x <- [0..n-1]]

lista = [1,2,3,4,5,6]
main = do
    let lista2 = [4,6,2,5,1,6]
    print(dlugosc lista)
    print(dlugosc lista2)
    print("===============")
    print(odwrotna lista)
    print(odwrotna lista2)
    print("===============")
    print(suma lista)
    print(suma lista2)
    print("===============")
    let lista3 = [2, 4, 6, 8]
    print(bliskieNieparzyste lista3)
    print("===============")
    let lista4 = [2, 3, 4, 2, 3, 5, 2, 3, 6, 2, 1 ,2]
    print(usunWszystkie 2 lista4)
    print("===============")
    let lista5 = [1,2,3]
    print(duplikaty lista5)
    print("===============")
    let lista6 = [2, 3, 5, 3, 2]
    print(palindrom lista6)
    print(palindrom lista4)
    print("===============")
    print(iloczynSkalarny lista lista2)
    print("===============")
    print(fibList 10)

