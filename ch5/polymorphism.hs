-- Exercises: Parametricity
f :: a -> a
f1 :: a -> a -> a
f2 ::a -> b -> b

f x = x

f1 x y = x
-- other implementation is f1 x y = y

f2 x y = y
-- This can only have the above implementation
-- The behavior does not change when the
-- concrete types of a & b change