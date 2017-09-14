module Algorithms
    ( getDigits

    ) where

getDigits :: (Integral n) => n -> [n]
getDigits n
        |n == 0 = []
        |n < 9 = [n]
        |n > 9 = getDigits (n `div` 10) ++ [n `mod` 10]
        |_ = []
