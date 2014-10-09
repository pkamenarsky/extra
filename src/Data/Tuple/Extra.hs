
-- | Extra functions for working with tuples.
module Data.Tuple.Extra(
    module Data.Tuple,
    -- * Specialised 'Arrow' functions
    first, second, (***), (&&&),
    -- * More pair operations
    dupe, both,
    -- * Operations on triples
    fst3, snd3, thd3, first3, second3, third3, dupe3, both3,
    ) where

import Data.Tuple
import qualified Control.Arrow as Arrow

infixr 3 ***, &&&

first :: (a -> a') -> (a, b) -> (a', b)
first = Arrow.first

second :: (b -> b') -> (a, b) -> (a, b')
second = Arrow.second

(***) :: (a -> a') -> (b -> b') -> (a, b) -> (a', b')
(***) = (Arrow.***)

(&&&) :: (a -> b) -> (a -> c) -> a -> (b, c)
(&&&) = (Arrow.&&&)

dupe :: a -> (a,a)
dupe x = (x,x)

both :: (a -> b) -> (a, a) -> (b, b)
both f (x,y) = (f x, f y)

fst3 :: (a,b,c) -> a
fst3 (a,b,c) = a

snd3 :: (a,b,c) -> b
snd3 (a,b,c) = b

thd3 :: (a,b,c) -> c
thd3 (a,b,c) = c

first3 :: (a -> a') -> (a, b, c) -> (a', b, c)
first3 f (a,b,c) = (f a, b, c)

second3 :: (b -> b') -> (a, b, c) -> (a, b', c)
second3 f (a,b,c) = (a, f b, c)

third3 :: (c -> c') -> (a, b, c) -> (a, b, c')
third3 f (a,b,c) = (a, b, f c)

dupe3 :: a -> (a,a,a)
dupe3 x = (x,x,x)

both3 :: (a -> b) -> (a, a, a) -> (b, b, b)
both3 f (x,y,z) = (f x, f y, f z)
