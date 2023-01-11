fizzbuzz :: Int -> String
fizzbuzz fizz
  | fizz `mod` 15 == 0 ="FizzBuzz"
  | fizz `mod` 3 == 0 = "Fizz"
  | fizz `mod` 5 == 0 = "Buzz"
  | otherwise = show(fizz)

-- fizzbuzz x = case x of
--     x `mod` 15  -> "FizzBuzz"
--     x `mod` 5  -> "Buzz"
--     x `mod` 3  -> "Fizz"
--     x -> show(x) 式の途中に入れれる