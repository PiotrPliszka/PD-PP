priceWithVat :: Double -> Double
priceWithVat cena = cenaPodatek
	where 
	cenaPodatek = cena * 1.23



bmiCategory :: Double -> Double -> String
bmiCategory weight height 
	| bmi < 18.5 = "niedowaga"
        | bmi < 25.0 = "Waga prawidlowa"
        | bmi < 30.0 = "Nadwaga"
        | otherwise  = "Otylosc"
        where
        bmi = weight / (height * height)

safeDivide :: Double -> Double -> Maybe Double
safeDivide x y =
	case y of 
	0 -> Nothing
	_ -> Just (x/y)

data Student  = Student
	{
		studentName :: String,
		studentPoint :: Int
	} deriving Show

studentPassed :: Student -> Bool
studentPassed sdt = studentPoint sdt >= 50

passedStudents :: [Student] -> [Student]
passedStudents [] = []
passedStudents (x:xs) =
	if studentPoint x >= 50
	then x : passedStudents xs 
	else	passedStudents xs

stdFilter :: [Student] -> [Student]
stdFilter = filter((>= 50) . studentPoint)

data Product = Product 
	{
		productName :: String,
		productPrice :: Double
	}deriving (Show)

applyDiscount :: Double -> Product -> Product
applyDiscount x produkt = produkt {productPrice = newPrice}
	where
	newPrice = oldPrice - discount
	discount = (oldPrice * x) / 100
	oldPrice = productPrice produkt


main = do
	let produkt1 = Product "Golara" 100
	print(applyDiscount 50 produkt1)
	


	print "=========Start========="
	print(priceWithVat 100)
	print(safeDivide 5 5)
	
	let student1 = Student "Piotr" 30
	let student2 = Student "Dawid" 50
	let student3 = Student "Bartosz" 60
	print(studentPassed student1)

	let studentTab = [student1, student2, student3]
	print(passedStudents studentTab)
	