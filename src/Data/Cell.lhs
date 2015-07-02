> -- | Module:    Data.Cell
> -- Description: Generic cellular data representation library
> -- Copyright:   © 2015 Patryk Zadarnowski <pat@jantar.org>
> -- License:     BSD3
> -- Maintainer:  pat@jantar.org
> -- Stability:   experimental
> -- Portability: portable
> --
> -- In this structure, each /cell/ of data is annotated
> -- with information about its relation to the following
> -- cell in the stream, namely /end of cell/, /end of row/
> -- and /end of table/ conditions. In addition, in order
> -- to achieve truly-constant memory usage irrespective of
> -- individual cell size, we allow individual cells to be
> -- subdivided further into /parts/, as indicated by the
> -- /end of part/ condition. Logically, this subdivision
> -- into parts is supposed to be purely operational and
> -- have no semantic significance, similarly to subdivision
> -- of lazy bytestrings into chunks.

> module Data.Cell (
>   Cell (..), CellDelimiter (..)
> ) where

> -- | Type used to represent individual data cells.

> data Cell a = Cell a CellDelimiter
>   deriving (Eq, Ord, Show)

> instance Functor Cell where
>   fmap f (Cell x d) = Cell (f x) d

> -- | Cell delimiter

> data CellDelimiter =
>     EOP    -- ^ end of a partial cell content
>   | EOC    -- ^ end of a complete data cell
>   | EOR    -- ^ end of a complete row of cells
>   | EOT    -- ^ end of an entire table
>   deriving (Eq, Ord, Show, Enum)
