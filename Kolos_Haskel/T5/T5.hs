podsumujWygrane :: [(String, Bool, Int)] -> Int
podsumujWygrane [] = 0
podsumujWygrane ((_, t, num):xs) =
	if t
	then num + podsumujWygrane xs
	else podsumujWygrane xs



kalkulatorBiletow :: Int -> Int
kalkulatorBiletow num
	| num < 18 = 10
	| num > 65 = 5
	| otherwise = 20

evenNum :: Int -> Bool
evenNum num = num `mod` 2 == 0

data Pracownik = Pracownik 
	{
		imiePracownika :: String,
		stanowisko :: String,
		pensja :: Double
	}deriving Show

dajPodwyzke :: Pracownik -> Pracownik
dajPodwyzke pracownik = pracownik {pensja = pensja pracownik * 1.15}

opisOceny :: Int -> String
opisOceny num =
	case num of
	5 -> "Bardzo dobry"
	4 -> "Dobry"
	3 -> "Dostateczny"
	_ -> "Niedostateczny"


zaliczenia :: [(String, Int)] -> [String]
zaliczenia [] = []
zaliczenia ((name, point):xs) = 
	if point >= 50
	then name : zaliczenia xs
	else zaliczenia xs


odleglosci :: [(Double, Double)] -> [Double]
odleglosci [] = []
odleglosci ((x, y):xs) = [sqrt(x^2 + y^2)] ++ odleglosci xs


poleProstokata Int -> Int -> Int
poleProstokata a b = a * b

szescian Int -> Int
szescian a = a^3

wPrzedziale :: Int -> Int -> Int -> Bool
wPrzedziale a b c 
	| a < b && b < c = True
	| a > b && b > c	= True
	| otherwise = False

iloczyn :: [Int] -> Int
iloczyn [] = 1
iloczyn (x:xs) = x * iloczyn xs

najmniejszy :: [Int] -> Int
najmniejszy [x] = x
najmniejszy (x:xs) = 
	if x < minReszta
	then x
	else minReszta
	where
	minReszta = najmniejszy xs

czyWLiscie :: Int -> [Int] -> Bool
czyWLiscie _ [] = False
czyWLiscie n (x:xs) =
	if n == x
	then True
	else czyWLiscie n xs

potroj :: [a] -> [a]
potroj [] = []
potroj (x:xs) = x : x : x : potroj xs

czyRosnaca :: [Int] -> Bool
czyRosnaca [] = True
czyRosnaca (x:y:xs) =
	if x < y
	then czyRosnaca (y:xs)
	else False

gen :: Int -> [Int]
gen x = [2^y | y <- [1..x]]


odwrot :: (Int, Int, Int) -> (Int, Int, Int)
odwrot (x, y, z) = (z, y, x)


type Movie = (String, String, Double)
movieTitle :: Movie -> String
movieTitle (t, _, _) = t
movieDirector :: Movie -> String
movieDirector (_, d, _) = d
movieRating :: Movie -> Double
movieRating (_, _, o) = o


priceAfterDiscount :: Double -> Double -> Double
priceAfterDiscount price dis = price * (dis / 100) 

temperatureCategory :: Double -> String
temperatureCategory x
	| x < 10 = "Zimno"
	| x >= 10 && x <= 25 = "Ciepło"
	| otherwise = "Gorąco"

safeRoot :: Double -> Maybe Double
safeRoot x 
	| x < 0     = Nothing
 	| otherwise = Just (sqrt x)

data Employee = Employee
	{
		empName :: String,
		empSalary :: Double
	} deriving Show

isWellPaid :: Employee -> Bool
isWellPaid emp = empSalary emp >= 6000

wellPaidEmployees :: [Employee] -> [Employee]
wellPaidEmployees tab = filter isWellPaid tab

data Car = Car
{
	carBrand :: String,
	carYear :: Int,
	carMileage :: Double
}deriving SHow

driveCar :: Double -> Car -> Car
driveCar x car = car {carMileage = carMileage car +  x}

carDiscription :: Car -> String
carDiscription car = carBrand car ++ show(carYear car)

isVintage :: Car -> Bool
isVinrage car = 2026 - carYear car >=25 




main = do
	print "+++++++++++++++"
	print(podsumujWygrane [("Aleksander", True, 15), ("Sam", False, 8), 	("Bartosz", True, 22)])
	print "=========================="
	print(kalkulatorBiletow 20)
	print([x^3 | x <- [1..20], evenNum x])
	print "==================="
	let p1 = Pracownik "Pliska" "Chuj" 1000
	print(dajPodwyzke p1)
	print "============="
	print(opisOceny 5)
	print "============"
	print(zaliczenia [("Jan", 45), ("Anna", 80), ("Piotr", 50)])	
	print(odleglosci [(3.0, 4.0), (0.0, 5.0), (6.0, 8.0)])



