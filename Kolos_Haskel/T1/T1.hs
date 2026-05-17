dodawanieLiczb :: Int -> Int -> Int
dodawanieLiczb x y  = x + y

odejmowanieLiczb :: Int -> Int -> Int
odejmowanieLiczb x y = x - y

zawszeAbs :: Int -> Int
zawszeAbs x = 
	if x < 0
	then  x * (-1)
	else x

ileDoPelnoletnosci :: Int -> Int
ileDoPelnoletnosci x=
	if x < 18
	then 18 - x
	else 0

czyPrzedzial :: Int -> Int -> Int -> Bool
czyPrzedzial x y z=
	if (x < y && z > y) || (x > y && z < y)
	then True
	else False

czyPelnoletni :: Int -> Bool
czyPelnoletni x = x >= 18


poleProstokata :: Int -> Int -> Int
poleProstokata x y = x * y

obwodProstokata :: Int -> Int -> Int
obwodProstokata x y = (x * 2) + (y * 2)

sredniaOcen :: Double -> Double -> Double -> Double
sredniaOcen x y z = 
	let suma = x + y + z
	in suma / 3

cenaBiletu :: Int -> Int
cenaBiletu x = 
	if x < 12
	then 15
	else 25

signumX :: Int -> Int
signumX x = 
	if x > 0
	then 1
	else 
		if x == 0
		then 0
		else (-1)

czyZdal :: Int -> Bool -> Bool
czyZdal x y =
	if x >= 50 && y
	then True
	else False 

darmowaDostawa :: Double -> Bool -> Bool
darmowaDostawa x y =
	if x >= 150 || y
	then True
	else False

czyParzysta :: Int -> Bool
czyParzysta x =
	if x `mod` 2 == 0
	then True
	else False

ileGodzin :: Int -> Int
ileGodzin x = x `mod` 60



main = do
	print "Dodawnaie liczb 3 i 5:"
	print(dodawanieLiczb 3 5)
	print "Odejmowanie liczby 5 i 2:"
	print(odejmowanieLiczb 5 2)
	print "Zawsze dodatania"
	print(zawszeAbs (-5))
	print "Ile brakuje do Pelnoletnosci"
	print(ileDoPelnoletnosci 15)
	print "Czy liczba jest w przedziale"
	print(czyPrzedzial 5 10 15)
	print "Czy jest pelnoletni"
	print(czyPelnoletni 18)
	print "Zadanka Gemini"
	print (poleProstokata 5 2)
	print (obwodProstokata 5 2)
	print "srednia 5 2 1"
	print (sredniaOcen 5 2 1)
	print "Cena biletu dla 11-latka"
	print(cenaBiletu 11)
