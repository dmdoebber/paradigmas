import Data.Char

--1
addSuffix :: String -> [String] -> [String]
addSuffix suf lis = [x ++ suf | x <- lis ]

--2
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs) = if length x < 5
    then 1 + countShorts xs
    else countShorts xs

--3
countShortsLC :: [String] -> Int
countShortsLC lis = length [x | x <- lis, (length x) < 5]

--4
ciclo :: Int -> [Int] -> [Int]
ciclo 0_ = []
ciclo _[] = []
ciclo n lis = if n /= 0
    then lis ++ ciclo (n-1) lis
    else []

--5
numera :: [String] -> [(Int,String)]
numera lis = auxNum 1 lis

auxNum :: Int -> [String] -> [(Int,String)]
auxNum _ [] = []
auxNum i (x:xs) = (i, x) : auxNum (i+1) xs

--6
--A) Encontra um x que é par na lista de 1 ate 5, e para esse x, vai encontrar todos os y impares possiveis de x+1 até 6, juntando e fazendo uma lista de tuplas.
--B) Concatena todas as combinações possiveis das duas listas de string.
--C) Concatena todos os caracteres restantes da string, com o char '-' e junta tudo em uma string só.

--7
crossProduct :: [a] -> [b] -> [(a,b)]
crossProduct [] _ = []
crossProduct (x:xs) y = pairWithAll x y ++ crossProduct xs y

pairWithAll :: a -> [b] -> [(a,b)]
pairWithAll _ [] = []
pairWithAll x (y:ys) = (x, y) : pairWithAll x ys

--8
genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
genRects n (x, y) = [((fromIntegral x)+xs, fromIntegral y, 5.5, 5.5) | xs <- [0.0, 5.5..5.5*(fromIntegral n-1)]]

--9
inverte :: [(Int, Int)] -> ([Int],[Int])
inverte [] = ([],[])
inverte (x:xs) = (fst x : (fst (inverte xs)), snd x :(snd(inverte xs)))

--10
funcLis lis = ([fst x | x <- lis], [snd x | x <- lis])

--11
funcAO lis = (map fst lis,map snd lis)

--12
isCpfOk :: [Int] -> Bool
isCpfOk cpf =
    let digitos1 = take 9 cpf
        dv1 = auxCPF 10 digitos1
        digitos2 = digitos1 ++ [dv1]
        dv2 = auxCPF 11 digitos2
    in dv1 == cpf !! 9 && dv2 == cpf !! 10

main = do
    let cpf = "12345678909"
        digitos = (map digitToInt cpf)
        result = isCpfOk digitos
    putStrLn (show result)

auxCPF :: Int -> [Int] -> Int
auxCPF n x = if e < 2 then 0 else 11 - e
    where e = mod (sum $ zipWith (*) x [n, n-1..2]) 11
