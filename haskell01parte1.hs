-- Prática 01 de Haskell - Parte 1
-- Nome: Fernando Kalikosque Laydner Júnior

square :: Int -> Int
square x = x^2

--1
sumSquares :: Int -> Int -> Int
sumSquares x y = square x + square y

--2
circleArea :: Float -> Float
circleArea x = pi * x^2

--3
age :: Int -> Int -> Int
age x y = y - x

--4
isElderly :: Int -> Bool
isElderly x 
  | x >= 65 = True
  | x < 65 = False

--5
htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "</li>"

--6
startsWithA :: String -> Bool
startsWithA x = (head x) == 'A'

--7
isVerb :: String -> Bool
isVerb x = (last x) == 'r'

--8
isVowel :: Char -> Bool
isVowel x = elem x "aeiou"

--9
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = (head x) == (head y)

--10
isVowel2 :: Char -> Bool
isVowel2 x = elem x "aeiouAEIOU"
