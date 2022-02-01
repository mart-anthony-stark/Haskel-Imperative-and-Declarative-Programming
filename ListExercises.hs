--1. Create a function elem that returns True if an element is in a given list and returns
--False otherwise

elem :: (Eq a) => a -> [a] -> Bool
elem _ [] = FALSE
elem e (x:xs) = (e==x) || elem e xs

--2. Create a function nub that removes all duplicates from a given list
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
  | x `elem` xs = nub xs
  | otherwise = x:nub xs