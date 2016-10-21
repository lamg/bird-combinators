Some combinators by Richard Bird and others
====

> module Control.Combinators
> (
>	fork,
>	cross,
>	(×),
>	compose,
> )
> where
> import Data.Bifunctor (Bifunctor, bimap)

The fork and cross functions are taken from "Thinking functionally
with Haskell" by Richard Bird.

> fork :: (a -> b, a -> c) -> a -> (b, c)
> fork (f, g) x = (f x, g x)

> cross :: Bifunctor p => (a -> b, c -> d) -> p a c -> p b d
> cross = uncurry bimap

> (×) :: Bifunctor p => (a -> b, c -> d) -> p a c -> p b d
> (×) = cross

> compose :: (b -> c, a -> b) -> (a -> c)
> compose = uncurry (.)    