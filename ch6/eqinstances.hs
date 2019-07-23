newtype TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn i1) (TisAn i2) =
    i1 == i2

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two i1 i2) (Two i1' i2') =
    i1 == i1' && i2 == i2'

data StringOrInt =
    TisAnInt    Int
  | TisAString  String

instance Eq StringOrInt where
  (==) (TisAnInt i1) (TisAnInt i2) =
    i1 == i2
  (==) (TisAString s1) (TisAString s2) =
    s1 == s2
  (==) _ _ = False

data Pair a =
  Pair a a deriving Show

instance Eq a => Eq (Pair a) where
  (==) (Pair i1 i2) (Pair i1' i2') =
    i1 == i1' && i2 == i2'

data Tuple a b =
  Tuple a b deriving Show

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple i1 i2) (Tuple i1' i2') =
    i1 == i1' && i2 == i2'

data Which a =
    ThisOne a
  | ThatOne a deriving Show

instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') =
    x == x'
  (==) (ThatOne y) (ThatOne y') =
    y == y'
  (==) _ _ = False

data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello x') =
    x == x'
  (==) (Goodbye y) (Goodbye y') =
    y == y'
  (==) _ _ = False