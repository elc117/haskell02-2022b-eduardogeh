isFever :: Float -> Bool
isFever temp = temp > 37.8

hasFever :: [Float] -> [Float]
hasFever = filter isFever

hasFever' :: [Float] -> [Float]
hasFever' = filter (\x -> x>37.8) 

itemize :: [String] -> [String]
itemize = map (\x -> "<li>" ++ x ++ "</li>")

circleArea :: Float -> Float
circleArea x = x^2*pi

bigCircles :: Float -> [Float] -> [Float]
bigCircles x = filter (\y -> circleArea y > x)

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine = filter (\(_, temp) -> temp > 37.8)

agesIn :: [Int] -> Int -> [Int]
agesIn x y = map (\x -> y-x) x

startsWithA :: String -> Bool
startsWithA s = head s == 'A'

applySuperName:: String -> String
applySuperName str = if startsWithA str then "Super" ++ str else str

superNames :: [String] -> [String]
superNames x = map applySuperName x

onlyShorts :: [String] -> [String]
onlyShorts x = filter (\x -> (length x) < 5) x


main = do
  print(hasFever [30, 39, 37.9, 40, 35])
  print(hasFever' [30, 39, 37.9, 40, 35])
  print(itemize ["teste", "item"])
  print(bigCircles 40.0 [2.0, 5.0, 8.0])
  print(quarentine [("Fulano", 38),("Beltrano", 37)])
  print(agesIn [2002, 2003, 2005] 2023)
  print(superNames ["Amanda","Cleber", "Ana"])
  print(onlyShorts ["amanda", "ana", "julia", "lara"])
  
