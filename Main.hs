
main = do
  putStrLn "Hello Mart"
  if in_range__ 1 5 3
    then putStrLn "TRUE"
    else putStrLn "FALSE"
  putStrLn (show (10 `add` 20))
  putStrLn (show (factorial 5))
  putStrLn (show (fac 5))
  putStrLn (show (fact 5))
  putStrLn (show (is_zero 5))
  putStrLn (show (asc 1 5))

--Imperative Programming
--in_range_ min max x =
--  lower_bound = min <= x
--  upper_bound = max >= x
--  return (lower_bound && upper_bound)


--Declarative Programming
in_range :: Integer -> Integer -> Integer -> Bool
in_range min max x =
  let ilb = min <= x
      iub = max >= x
  in
  ilb && iub

-- 'Where' binding
in_range_ min max x = ilb && iub
  where
    ilb = min <= x
    iub = max >= x

--If statement
in_range__ min max x =
  if ilb then iub else False
  where
    ilb = min <= x
    iub = max >= x

--Infix operator
--ghci > :t (+)
--(+) :: Num a => a -> a -> -> a
add a b = a+b
--10 `add` 20

--Recursion
factorial n =
  if n <= 1 then
    1
  else
    n * factorial (n-1)

--Guards
fac n
  | n <= 1 = 1
  | otherwise = n * fac (n-1)

--Pattern matching
is_zero 0 = "TRUE"
is_zero _ = "FALSE"

--Accumulators
fact n = aux n 1
  where
    aux n acc
      | n<=1 = acc
      | otherwise = aux (n-1) (n*acc)

--Lists
nums::[Integer]
nums = [1,2,3,4,5]

--Generating a List
asc :: Int -> Int -> [Int]
asc n m
  | m<n = []
  | m==n = [m]
  | m > n = n : asc (n+1) m