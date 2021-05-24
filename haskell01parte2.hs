-- Prática 01 de Haskell - Parte 2
-- Nome: Fernando Kalikosque Laydner Júnior

--import Testando

isVowel2 :: Char -> Bool
isVowel2 x = elem x "aeiouAEIOU"

htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "</li>"

--1
itemize :: [String] -> [String]
itemize x = map htmlItem x

--2
onlyVowels :: String -> String
onlyVowels x = map filter (x isVowel2) 