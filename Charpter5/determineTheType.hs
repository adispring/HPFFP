{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- example = 1

-- x = 5
-- y = x + 5
-- z y = y * 10
-- f = 4 / y

bigNum = (^) 5 $ 10
-- wahoo = bigNum $ 10

x = print
y = print "woohoo"
z = x "Hello world"

a = (+)
b = 5
-- c = b 10

-- f :: f -> g -> h

-- functionH :: [a] -> a
functionH (x:_) = x

-- functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

-- functionS :: (a, b) -> b
functionS (x, y) = y

myFunc :: (x -> y)
       -> (y -> z)
       -> c
       -> (a, x)
       -> (a, z)

myFunc xToy yToz _ (a, x) =
  (a, (yToz (xToy x)))

i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b
c'' x y = x

c' :: a -> b -> b
c' x y = y

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB x =
  bToC $ aToB $ x

a :: (a -> c) -> a -> a
a aToC x = x
