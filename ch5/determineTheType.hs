{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- simple example
example = 1

w = y * 10
    where y = x + 5
          x = 5
-- w :: Num a => a

z y = y * 10
      where y = x + 5
            x = 5
-- z :: Num a => p -> a

f = 4 / y
    where y = x + 5
          x = 5
-- f :: Fractional a => a

f = x ++ y ++ z
    where x = "Julie"
          y = " <3 "
          z = "Haskell"
-- f :: [Char] || f :: String