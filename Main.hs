main :: IO ()

main = do
  putStrLn "Hello Mart"
  if in_range__ 1 5 3
    then putStrLn "TRUE"
    else putStrLn "FALSE"
  putStr (show (10 `add` 20))
  putStr "\n"
  putStr (show (factorial 5))
  putStr "\n"
  putStr (show (fac 5))

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