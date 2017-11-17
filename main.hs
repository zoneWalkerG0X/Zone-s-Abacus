import Data.List.Split

main :: IO()
main = do
 putStrLn "Zone's Abacus"
 putStrLn "[operand] [operator] [operand] | +-*/%"
 inpt <- getLine
 let l = splitOn " " inpt
 let a = read (l !! 0)::Float
 let op = l !! 1
 let b = read (l !! 2)::Float

 case op of
  "+" -> putStrLn(show (a + b))
  "-" -> putStrLn(show (a - b))
  "*" -> putStrLn(show (a * b))
  "/" -> putStrLn(show (a / b))
  "%" -> putStrLn(show ((floor a) `mod` (floor b)))
  _ -> putStrLn "Unrecognized operator."
 main	
