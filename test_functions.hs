doubleMe x = x + x

product' [] = 1
product' (x:xs) = x * product' xs

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort greater
               where
                 smaller = [a | a <- xs, a < x]
                 greater = [b | b <- xs, b >= x]

throwaway = a `div` length xs
            where
              a = 10
              xs = [1,2,3,4,5]

last' xs = drop (length xs - 1) xs

last'' xs = take 1 (reverse xs)

init' xs = reverse (drop 1 (reverse xs))

init'' xs = take (length xs -1) xs

add' :: Int -> Int -> Int
add' x y = x + y

second xs = head (tail xs)

swap (x,y) = (y,x)

pair x y = (x,y)

double x = x * 2

palindrome xs = reverse xs == xs

twice f x = f x

halve :: [a] -> ([a],[a])
halve xs = (take ((length xs) `div` 2) xs, drop ((length xs) `div` 2) xs)

safetail1 :: Eq a => [a] -> [a]
safetail1 xs = if xs == [] then [] else drop 1 xs

safetail2 :: Eq a => [a] -> [a]
safetail2 xs | xs == [] = []
             | otherwise = drop 1 xs

safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 xs = drop 1 xs

(∨) :: Bool -> Bool -> Bool
a ∨ b | a == b = b
      | otherwise = True

(∧) :: Bool -> Bool -> Bool
a ∧ b = if a == True then b  else False

replicate' :: Int -> a -> [a]
replicate' i a = take i [a | a <- (repeat a)]

pyths :: Int -> [(Int,Int,Int)]
pyths a = [(x,y,z)| x <- [1..a], y <- [x..a], z <- [y..a], x^2 + y^2 == z^2]

perfects :: Int -> [[Int]]
perfects a = [x| x<- [[x | x <- factors b] | b <- [1..a]], sum (init x) == (last x)]

factors :: Int -> [Int]
factors a = [x | x <- [1..a], a `mod` x == 0]

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k',v) <- t, k' == k]

positions :: Eq a => a -> [a] -> [Int]
--Zero-indexed results
positions x xs = find x (zip xs [0..n])
                 where n = length xs - 1

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x * y | (x,y) <- zip xs ys]

(↑) :: Int -> Int -> Int
x ↑ 0 = 1
x ↑ e = x * (x ↑ (e - 1))

and' :: [Bool] -> Bool
and' [a] = a
and' (x:xs) | x == True = and' xs
            | x == False = False

concat' :: [[a]] -> [a]
concat' [] = []
concat' ([]:ys) = concat' ys
concat' ((x:xs):ys) = x : concat' (xs:ys)

replicate'' :: Int -> a -> [a]
replicate'' 0 a = []
replicate'' n a = a : replicate' (n - 1) a

(!!!) :: [a] -> Int -> a
xs !!! 0 = head xs
xs !!! n = (drop 1 xs) !!! (n - 1)

elem' :: Eq a => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs) | a == x = True
               | otherwise = elem' a xs

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | y < x = y : merge (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort [a] = [a]
msort xs = merge (qsort (concat' [x | (x,y) <- halves xs])) (qsort (concat' [y | (x,y) <- halves xs]))

halves :: [a] -> [([a],[a])]
halves xs = [(take ((length xs) `div` 2) xs, drop ((length xs) `div` 2) xs)]

sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs

take' :: Int -> [a] -> [a]
take' 0 xs = []
take' n [] = []
take' n (x:xs) = x : take' (n - 1) xs

last''' :: [a] -> a
last''' [a] = a
last''' (x:xs) = last''' xs

all' :: (a -> Bool) -> [a] -> Bool
all' f xs = and' $ map f xs

any' :: (a -> Bool) -> [a] -> Bool
any' f xs = or $ map f xs

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' f [] = []
takeWhile' f (x:xs) | f x == True = x : takeWhile' f xs
                    | otherwise = takeWhile' f xs

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' f [] = []
dropWhile' f (x:xs) | f x == False = x : dropWhile' f xs
                    | otherwise = dropWhile' f xs

map' :: (a -> a) -> [a] -> [a]
map' f [] = []
map' f (x:xs) = f x : (map' f xs)

compose :: [a -> a] -> (a -> a)
compose = foldr (.) id

--sumsqreven = compose [sum, map (^2), filter even]
sumsqreven = sum . map (^2) . filter even

foldrmap :: (a -> a) -> [a] -> [a]
foldrmap f = foldr (\x xs -> f x : xs) []

foldrfilter :: (a -> Bool) -> [a] -> [a]
foldrfilter p = foldr (\x xs -> if p x == True then x : xs else xs) []

dec2int :: [Int] -> Int
dec2int = foldl (\xs x -> xs * 10 + x) 0

curry' :: (a -> b -> c) -> (a -> (b -> c))
curry' f = (\x -> (\y -> f x y))

uncurry' :: (a -> (b -> a)) -> (a -> b -> a)
uncurry' f = (\x y -> f x y)