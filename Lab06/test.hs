maxOfTwo :: Int -> Int -> Int
maxOfTwo a b = if a > b then a else b

sumTwo :: Int -> Int -> Int
sumTwo x y = x + y

mult :: Int -> Int -> Int
mult x y = x * y

czyPelnoletni :: Int -> String
czyPelnoletni wiek = 
    if wiek >= 18 
    then "nie" 
    else "tak"

minOfTwo :: Int -> Int -> Int
minOfTwo a b = if a < b then a else b

wPrzedziale :: Int -> Int -> Int -> Bool
wPrzedziale x a b = if x >= a && x <= b then True else False 

czyWeekend :: Int -> Bool
czyWeekend x = if x == 6 || x == 7 then True else False

main = do
  print("Imie i Nazwisko")
  print(maxOfTwo 3 7)
  print(sumTwo 5 5)
  print(mult 3 2)
  print(czyPelnoletni 29)
  print(minOfTwo 5 20)
  print(wPrzedziale 5 10 20)
  print(czyWeekend 5)