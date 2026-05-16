    -- HASKELL NIE DZIAŁA

data Student = Student {
    imie :: String,
    nazwisko :: String,
    indeks :: Int,
    oceny :: [Double]
} deriving (Show, Eq)

type Dziennik = [Student]
studenci :: Dziennik
studenci = [
    Student "Anna" "Nowak" 111111 [4.5, 5.0, 4.0],
    Student "Jan" "Kowalski" 222222 [3.0, 2.0, 3.5],
    Student "Piotr" "Wisniewski" 333333 [],
    Student "Katarzyna" "Wozniak" 444444 [5.0, 5.0, 4.5]
    ]

    -- HASKELL NIE DZIAŁA

pokazStudenta :: Student -> String
pokazStudenta student = show(indeks student) ++ "|" ++ imie student ++ "|" ++ nazwisko student ++ "|" ++ show(oceny student)

pokazStudentow :: Dziennik -> IO()
pokazStudentow [] = putStrLn "Brak studentow"
pokazStudentow dziennik = mapM_ (putStrLn . pokazStudenta) dziennik

znajdzStudenta :: Int -> Dziennik -> Maybe Student
znajdzStudenta _ [] = Nothing
znajdzStudenta nrIndeksu (x:xs)
    | indeks x == nrIndeksu = Just x
    | otherwise = znajdzStudenta nrIndeksu xs

    -- HASKELL NIE DZIAŁA

main = do
    putStrLn "\n===== DZIENNIK OCEN ====="
    putStrLn "1. Pokaz wszystkich studentow"
    putStrLn "2. Znajdz studenta po indeksie"
    putStrLn "3. Dodaj ocene studentowi"
    putStrLn "4. Dodaj studenta"
    putStrLn "5. Pokaz studentow ze srednia >= prog"
    putStrLn "0. Wyjdz"
    putStrLn "Wybierz opcje:"
    
    opcja <- getLine

    case opcja of
        "1" -> do
            pokazStudentow studenci
            main
        "2" -> do
            putStrLn "Podaj nr indeksu: "
            indeks <- getLine
            let numer = read indeks :: Int
            case znajdzStudenta numer studenci of
                Just student -> putStrLn (pokazStudenta student)
                Nothing      -> putStrLn "Nie znaleziono studenta o tym indeksie."
            main
    
-- HASKELL NIE DZIAŁA


