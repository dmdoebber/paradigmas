--1
elevaQuad :: [Int] -> [Int]
elevaQuad [] = []
elevaQuad lis = (head lis ^2) : elevaQuad(tail lis)

--2
srName :: [String] -> [String]
srName [] = []
srName lis = ("Sr." ++ head lis) : srName(tail lis)

--3
numSpace :: String -> Int
numSpace [] = 0
numSpace lis = if head lis == ' '
    then 1 + numSpace(tail lis)
    else numSpace(tail lis)

--4
aplicaFunc :: [Float] -> [Float]
aplicaFunc [] = []
aplicaFunc lis = ((\x -> 3*x^2+2/x+1)) (head lis) : aplicaFunc (tail lis)

--5
contNeg :: [Int] -> [Int]
contNeg [] = []
contNeg lis = if head lis < 0 
    then (head lis) : contNeg (tail lis) 
    else contNeg (tail lis)

--6
semVogais :: String -> String
semVogais lis = [x | x <- lis, not (elem x "aeiouAEIOU")]

--7
tiraVogais :: [Char] -> [Char]
tiraVogais [] = []
tiraVogais lis = if elem (head lis) "aeiouAEIOU"
    then tiraVogais (tail lis)
    else (head lis) : tiraVogais (tail lis)

--8
codStr :: String -> String
codStr lis = map (\c -> if c/=' ' then '-'; else c) lis

--9
trocaLetra :: [Char] -> [Char]
trocaLetra [] = []
trocaLetra lis = if elem (head lis) "abcdefghijklmnoprstuwxyz"
    then '-' : trocaLetra (tail lis)
    else (head lis) : trocaLetra(tail lis)

--10
contemLetra :: Char -> String -> Bool
contemLetra _"" = False
contemLetra x lis = if x == (head lis) 
    then True 
    else contemLetra x (tail lis)

--11
translate :: [(Float, Float)] -> [(Float, Float)]
translate [] = []
translate lis = ((fst (head lis) + 2.0), (snd (head lis) + 2.0)) : translate (tail lis)

--12
prodVet :: [Int] -> [Int] -> [Int]
prodVet [] [] = []
prodVet lis1 lis2
    | null (lis1) || null (lis2) = []
    | otherwise = ((head lis1) * (head lis2)) : prodVet (tail lis1) (tail lis2)

--13
prodVet2 :: [Int] -> [Int] -> [Int]
prodVet2 lis1 lis2 = zipWith (*) lis1 lis2

--14
geraTabela :: Int -> [(Int, Int)]
geraTabela 0 = []
geraTabela x = aux 1 x

aux :: Int -> Int -> [(Int, Int)]
aux 0 n = []
aux e n = if (e <= n)
    then (e, e^2) : aux (e+1) n
    else []
