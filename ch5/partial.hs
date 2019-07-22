-- partial.hs

-- we ues the double colon to assign a type
-- making the trpe concrete will eliminate
-- the typeclass constraint
addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

-- non commutative example of partial function
-- application
subtractStuff :: Integer -> Integer -> Integer
subtractStuff x y = x - y - 10
subtractOne = subtractStuff 1

-- nest func args with lambdas to de-sugar
-- automatic currying
nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

curriedFunction :: Integer -> Bool -> Integer
curriedFunction i b = i + nonsense b

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = i + nonsense b

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonNested :: Integer -> Bool -> Integer
anonNested = \i -> \b -> i + (nonsense b)
