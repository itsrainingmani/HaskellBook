-- print3Broken.hs
module Print3Broken where

greeting :: String
greeting = "Yarrrr"

printSecond :: IO()
printSecond = putStrLn greeting

main :: IO()
main = do
  putStrLn greeting
  printSecond