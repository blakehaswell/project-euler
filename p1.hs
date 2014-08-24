multiple :: Integral a => a -> Bool
multiple n = multipleOf 3 n || multipleOf 5 n
    where multipleOf n' = (== 0) . (`mod` n')

main :: IO ()
main = print $ sum (filter multiple ns)
    where ns = [1..999] :: [Int]
