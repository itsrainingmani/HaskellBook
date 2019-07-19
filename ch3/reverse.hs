-- reverse.hs
module Reverse where

rvrs :: String -> String
rvrs x = z ++ y ++ w
      where w = take 5 x
            y = take 3 (drop 6 x)
            z = (drop 9 x) ++ " "

main :: IO()
main = print $ rvrs "Curry is awesome"