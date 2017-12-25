-- let x = 3; y = 1000 in x * 3 + y

x3y       = x * 3 + y
  where x = 3
        y = 1000


xDependy  = x * 5
  where y = 10
        x = 10 * 5 + y

zDyDx     = z / x + y
  where x = 7
        y = negate x
        z = y * 10

waxOn = x * 5
  where z = 7
        x = y ^ 2 -- y's definition can after it's reference
        y = z + 8

triple x = x * 3

waxOff x = x ^ 2
