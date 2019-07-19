module Exercises where

addExclamation :: String -> String
addExclamation x = x ++ "!"

alwaysY :: String -> String
alwaysY x = "y"

dropNine :: String -> String
dropNine = drop 9

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

s = "Curry is awesome"
rvrs :: String
rvrs = z ++ y ++ x
          where x = take 5 s
                y = take 3 (drop 6 s)
                z = drop 9 s ++ " "

main :: IO()
main = putStrLn rvrs
