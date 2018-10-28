module LeapYear (isLeapYear) where

divisible_by :: Integral a => a -> a -> Bool
divisible_by a b = a `rem` b == 0

isLeapYear :: Integer -> Bool
isLeapYear year =
  year `divisible_by` 4
    && ((year `divisible_by` 400) || not (year `divisible_by` 100))

