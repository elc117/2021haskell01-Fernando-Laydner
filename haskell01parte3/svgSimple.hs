import Text.Printf

--Novidades printf, import, como funciona +- um arquivo svg e a criação de arquivos com writeFile.



-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com alguns círculos, de cores variadas, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 250 250 310 "rgb(255, 131, 0, 1)") ++ 
  (svgCircle 60 60 40 "rgb(0, 0, 0, 1)") ++ 
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.4)") ++ 
  (svgCircle 120 120 40 "rgb(10, 14, 105, 0.5)") ++ 
  (svgCircle 150 150 50 "rgb(105, 14, 105, 0.6)") ++ 
  (svgCircle 180 180 40 "rgb(105, 140, 105, 0.7)") ++ 
  (svgCircle 210 210 50 "rgb(85, 14, 25, 0.8)") ++ 
  (svgCircle 240 240 40 "rgb(66, 66, 66, 0.9)") ++ 
  (svgCircle 270 270 50 "rgb(255, 255, 255, 1)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
