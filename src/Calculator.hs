module Calculator where

import Prelude

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