module Funcoes where

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