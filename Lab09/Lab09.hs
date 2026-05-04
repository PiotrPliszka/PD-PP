priceWithVat :: Double -> Double
priceWithVat netPrice = 
    let vat = 1.23
    in netPrice * vat


bmiCategory :: Double -> Double -> String
bmiCategory weight height
    | bmi < 18.5  = "niedowaga"
    | bmi < 25.0 = "Waga prawidlowa"
    | bmi < 30.0 = "Nadwaga"
    | otherwise  = "Otylosc"
    where
    bmi = weight / (height * height)

safeDivide :: Double -> Double -> Maybe Double
safeDivide licznik mianownik = 
    case mianownik of
        0 -> Nothing
        _ -> Just(licznik/mianownik)

data Student = Student
    { studentName :: String
    , studentPoints :: Int
    } deriving Show

studentPassed :: Student -> Bool
studentPassed student = studentPoints student >= 50

passedStudents :: [Student] -> [Student]
passedStudents students = filter studentPassed students

failedStudents :: [Student] -> [Student]
failedStudents students = filter (not . studentPassed) students

data Product = Product
    { productName :: String
    , productPrice :: Double
    } deriving Show


applyDiscount :: Double -> Product -> Product
applyDiscount percent product = 
    product { productPrice = oldPrice - (oldPrice * percent / 100) }
    where
    oldPrice = productPrice product

isExpensiveProduct :: Product -> Bool
isExpensiveProduct p = productPrice p > 100

productDescription :: Product -> String
productDescription product = 
    "Produkt: " ++ productName product ++ ", Cena: " ++ show (productPrice product) ++ "zl"


main = do
    print(priceWithVat 1000)
    print(bmiCategory 65 1.7)
    print(safeDivide 10 2)
    print(safeDivide 10 0)

    let student1 = Student "Piotrek" 100
    let student2 = Student "Dawid" 1
    print(studentPassed student1)
    print(studentPassed student2)

    let studentTab = [Student "Kamil" 51, Student "Anna" 32, Student "Marek" 1, Student "Piotrek" 91]
    print(passedStudents studentTab)
    print(failedStudents studentTab)

    let product1 = Product "Okulary" 199.99
    let product2 = Product "Kosa" 50.0

    print(applyDiscount 25 product1)

    print(isExpensiveProduct product1)
    print(isExpensiveProduct product2)

    print(productDescription product1)

