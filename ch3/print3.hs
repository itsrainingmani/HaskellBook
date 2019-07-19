-- print3.hs
module Print3 where

myGreeting :: String
-- The above line reads: "myGreeting has the type String"
myGreeting = "hello" ++ " world!"

hello :: String
-- String is a type synonym for [Char]
hello = "hello"

world :: String
world = "world!"

-- myGreeting, hello and world are defined at the top level of the module
-- so they can be available anywhere else

main :: IO()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]