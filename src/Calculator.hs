module Calculator where

import Prelude hiding (Negate)
import Data.Floating

data Expr = Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | Mod Expr Expr
          | Sqr Expr
          | Neg Expr
          | Val Int 
          deriving (Show)

--Start implementing 

addExpr :: Expr -> Expr -> Int

subExpr :: Expr -> Expr -> Int

mulExpr :: Expr -> Expr -> Int

divExpr :: Expr -> Expr -> Float

modExpr :: Expr -> Expr -> Int

sqrExpr :: Expr -> Int

negExpr :: Expr -> Int