module Lib where

import           C02
import           C03
import           C04
import           C05
import           C06
import           C07
import           C08

chapters :: IO ()
chapters = output [c02, c03, c04, c05, c06, c07, c08] 2

output :: [IO ()] -> Integer -> IO ()
output [] _     = pure ()
output (f:fs) i = do
    putStrLn ""
    putStrLn ""
    putStrLn $ "Chapter " ++ show i ++ "."
    putStrLn ""
    f
    output fs (i + 1)

myrev :: [a] -> [a]
myrev []     = []
myrev (x:xs) = myrev xs ++ [x]
