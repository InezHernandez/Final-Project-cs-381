import Data.Char
import Data.Char (ord)
import Data.Char (chr)

-- cipher haskell calculator:
-- in the README we would give the user directions:
-- enter: firstCycle 7 * 10 then they would get back an ascii char -> p
-- then so on, they enter a few more addition, sub, power, etc and get out a few more letter
-- let say pasta, then they would be asked to enter that string that they GOT
-- back into the program secondCycle pasta, then the output would be a Caesar shift of forwards
-- or backwards using succ and pred, atsap etc.
-- below is some pseudo code, but I am having trouble on
-- from the calculation, getting that value and saving it to be able to pass into the ascii converter


data Expr = Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | Mod Expr Expr
          | Sqr Expr
          | Neg Expr
          | Val Int
          deriving (Eq, Show)

--Start implementing definitions

expr :: Expr -> Maybe Int
expr (Add x y) = case (expr x, expr y) of
                 (Just x, Just y) -> Just (x + y)
                 _                -> Nothing
expr (Sub x y) = case (expr x, expr y) of
                 (Just x, Just y) -> Just (x - y)
                 _                -> Nothing
expr (Mul x y) = case (expr x, expr y) of
                 (Just x, Just y) -> Just (x * y)
                 _                -> Nothing
expr (Div x y) = case (expr x, expr y) of
                 (Just x, Just 0) -> Nothing
                 (Just x, Just y) -> Just (x `div` y)
                 _                -> Nothing
expr (Mod x y) = case (expr x, expr y) of
                 (Just x, Just 0) -> Nothing
                 (Just x, Just y) -> Just (x `mod` y)
                 _                -> Nothing
expr (Sqr x)   = case expr x of
                 Just x -> Just (x * x)
                 _      -> Nothing
expr (Neg x)   = case expr x of
                 Just x -> Just (negate x)
                 _      -> Nothing
expr (Val x)   = Just x

--main = do -- my attempt at saving the expr output
-- think it should be like:
-- expr :: Expr -> saveValue
--  expr (Val x) = Just x == saveValue?
--  putStrLn ("Expression is: " ++ x)




-- first get the ascii cipher working!
-- get user input [1 + 2 + 3] CHECK WE GOT THIS DONE!
-- how to pass value to our function?
-- if the value falls between the range 61 - 79 (or 7A)
-- then return a single letter value
-- otherwise return nothing
-- ex: cipher [10 * 7] -> 70 -> p (lowercase chars only for simplicity of design)

-- Pseudo code: (from https://codereview.stackexchange.com/questions/148307/caesar-shift-in-haskell)
-- cypher: lowercase ascii values: from 61 -> 7A
-- we could modify, so that instead of values from zero to whatever
-- we have values from 61 -> 79 shift up or backwards. but this is if we can get to it.
shiftStr :: Int -> [Char] -> [Char]
shiftStr num str
       | num > 0  = shiftStr (num - 1) (map shiftBackwards str)
       | num < 0  = shiftStr (num + 1) (map shiftForwards str)
       | num == 0 = str

shiftForwards :: Char -> Char
shiftForwards 'z' = 'a'
shiftForwards c   = succ c

shiftBackwards :: Char -> Char
shiftBackwards 'a' = 'z'
shiftBackwards c   = pred c

-- attempt to do the int -> Ascii conversion
-- fromEnum / toEnum : fromEnum 'a' == 97 (toEnum 97::Char) == 'a'
--toEnum :: Int -> a
someVal = 97
main = print (chr someVal) -- this is the one we want, but how to dynamically code? instead of 97 we would have someVal

intChar :: Int -> Char
intChar 97 = 'a'
intChar 98 = 'b'
intChar 99 = 'c'
intChar 100 = 'd'
intChar 101 = 'e'
intChar 102 = 'f'
intChar 103 = 'g'
intChar 104 = 'h'
intChar 105 = 'i'
intChar 106 = 'j'
intChar 107 = 'k'
intChar 108 = 'l'
intChar 109 = 'm'
intChar 110 = 'n'
intChar 111 = 'o'
intChar 112 = 'p'
intChar 113 = 'q'
intChar 114 = 'r'
intChar 115 = 's'
intChar 116 = 't'
intChar 117 = 'u'
intChar 118 = 'v'
intChar 119 = 'w'
intChar 120 = 'x'
intChar 121 = 'y'
intChar 122 = 'z'
