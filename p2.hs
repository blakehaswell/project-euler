fibs :: (Eq a, Num a) => a -> a
fibs 1 = 1
fibs 2 = 2
fibs n = fibs (n - 1) + fibs (n - 2)

fibsUnder :: (Enum a, Num a, Ord a) => a -> [a]
fibsUnder limit = takeWhile (< limit) . map fibs $ [1..]

main :: IO ()
main = print $ sum . filter even $ fibsUnder (4000000 :: Int)
