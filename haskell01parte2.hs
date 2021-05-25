-- Prática 01 de Haskell - Parte 2
-- Nome: Fernando Kalikosque Laydner Júnior

isVowel2 :: Char -> Bool
isVowel2 x = elem x "aeiouAEIOU"

htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "</li>"

isElderly :: Int -> Bool
isElderly x 
  | x >= 65 = True
  | x < 65 = False

isLongWord :: String -> Bool
isLongWord s = length s > 10

isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False

isBetween60and80 :: Int -> Bool
isBetween60and80 x = x >= 60 && x <= 80

isSpace :: Char -> Bool
isSpace x = x == ' '

circleArea :: Float -> Float
circleArea x = pi * x^2

--1
itemize :: [String] -> [String]
itemize x = map htmlItem x

--2
onlyVowels :: String -> String
onlyVowels = filter isVowel2

--3
onlyElderly :: [Int] -> [Int]
onlyElderly = filter isElderly

--4
onlyLongWords :: [String] -> [String]
onlyLongWords = filter isLongWord

--5
onlyEven :: [Int] -> [Int]
onlyEven = filter isEven

--6
onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 = filter isBetween60and80

--7
countSpaces :: String -> Int
countSpaces = length . filter isSpace

--8
calcAreas :: [Float] -> [Float]
calcAreas = map circleArea

--9
charFound :: Char -> String -> Bool
charFound x str = any (== x) str