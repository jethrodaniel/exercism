module Pangram (isPangram) where

import Data.Char

lower :: String -> String
lower str = [ toLower c | c <- str ]

letters :: String -> String
letters str = filter isLetter str

isPangram :: String -> Bool
isPangram text = all (\c -> toLower c `elem` lower (letters text)) ['a'..'z']
