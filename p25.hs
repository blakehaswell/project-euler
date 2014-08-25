fib :: Int -> Integer
fib = (map fib' [0..] !!)
   where fib' 0 = 0
         fib' 1 = 1
         fib' n = fib (n - 2) + fib (n - 1)

firstWithNDigits :: Int -> Int
firstWithNDigits n = head $ dropWhile ((< n) . length . show . fib) [1..]

main :: IO ()
main = print $ firstWithNDigits 1000
