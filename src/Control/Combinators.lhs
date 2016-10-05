Some combinators by Richard Bird and others
====

> module Control.Combinators where
> import Data.Bifunctor (Bifunctor, bimap)

The fork and cross functions are taken from "Thinking functionally
with Haskell" by Richard Bird.

> fork :: (a -> b, a -> c) -> a -> (b, c)
> fork (f, g) x = (f x, g x)

> cross :: Bifunctor p => (a -> b, c -> d) -> p a c -> p b d
> cross = uncurry bimap

> compose :: (b -> c, a -> b) -> (a -> c)
> compose = uncurry (.)    