module Uwuify where

  convChar :: Char -> Char
  convChar 'r' = 'w'
  convChar 'l' = 'w'
  convChar x = x

  uwuify :: String -> String
  uwuify = map convChar