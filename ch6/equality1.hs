data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  -- deriving (Ord, Show)
  deriving Show

data Date =
  Date DayOfWeek Int deriving Show
-- adding deriving Show to the end of the datatypes allows
-- us to print the datatype value in the REPL

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _     = False

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _   Fri = LT
  compare _   _   = EQ

instance Eq Date where
  (==) (Date weekday dayOfMonth)
        (Date weekday' dayOfMonth') =
          weekday == weekday' && dayOfMonth == dayOfMonth'