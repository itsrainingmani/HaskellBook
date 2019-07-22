-- exercises.hs
module Exercises where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x =
  if x < 0
    then negate x
  else
    x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = (,) (snd x, snd y) (fst x, fst y)


-- Correcting Syntax
x = (+)
addLength :: [a] -> Int
addLength xs = w `x` 1
    where w = length xs

-- identity function anonymous function
-- (\x->x) 20
-- equivalent to id 20
