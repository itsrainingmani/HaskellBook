-- learn.hs

module Learn where
-- First, we declare the name of our module so
-- it can be imported by name in a project

x = 10 * 5 + y
myResult = x * 5
y = 10

swap :: (any, any) -> (any, any)
swap (a, b) = (b, a)

arithm1 = x * 3 + y
  where x = 3
        y = 1000

arithm2 = x * 5
  where y = 10
        x = 10 * 5 + y

arithm3 = z / x + y
  where x = 7
        y = negate x
        z = y * 10

waxOn = x * 5
  where x = y^2
        y = z + 8
        z = 7

triple x = x * 3

unTriple x = mod x 3

waxOff = triple