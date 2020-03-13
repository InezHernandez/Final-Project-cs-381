module Calculator where

data Expr = Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | Mod Expr Expr
          | Sqr Expr
          | Neg Expr
          | Val Int
          deriving (Eq, Show)

-- Start implementing definitions

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
