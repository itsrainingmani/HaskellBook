-- keep your typeclass instances for a type
-- in the same file as that type

data Trivial = Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True

-- (==) Trivial' Trivial' = True