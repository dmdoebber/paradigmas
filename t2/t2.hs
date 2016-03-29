somaQuad :: Int -> Int -> Int
somaQuad x y = (x^2) + (y^2)

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = if head lis1 == head lis2 then True else False

srName :: [String] -> [String]
srName lis = map("Sr." ++) lis

contSpace :: [Char] -> Int
contSpace lis = length (filter (== ' ') lis)

funcList :: [Float] -> [Float]
funcList lis = map((\n -> 3*n^2 +2/n +1)) lis

contNeg :: [Int] -> [Int]
contNeg lis = filter( < 0) lis

contUmCem :: [Int] -> [Int]
contUmCem lis = filter ((\x -> x > 0 && x < 101))lis

maisNovos :: [Int] -> [Int]
maisNovos lis = filter ((\x -> 1970 <= 2016-x)) lis

retornaPares :: [Int] -> [Int]
retornaPares lis = filter (even) lis

charFound :: Char -> String -> Bool
charFound _ "" = False
charFound x y = if x == (head y) then True else charFound x (tail y)

--takeWhile (\x -> x+5 <30) [5..40]

ultimaLetra :: [String] -> [String]
ultimaLetra lis =  filter ((\x -> last x == 'a')) lis
