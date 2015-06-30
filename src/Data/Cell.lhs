> -- | Module:      Data.Cell
> --   Description: Generic cellular data representation library
> --   Copyright:   © 2015 Patryk Zadarnowski <pat@jantar.org>
> --   License:     BSD3
> --   Maintainer:  pat@jantar.org
> --   Stability:   experimental
> --   Portability: portable

> module Data.Cell (
>   Cell (..), CellDelimiter (..)
> ) where

> -- | Individual cell type

> data Cell a = Cell a CellDelimiter
>   deriving (Eq, Ord, Show)

> -- | Cell delimiter

> data CellDelimiter =
>     EOP    -- ^ end of partial cell content
>   | EOC    -- ^ end of cell
>   | EOR    -- ^ end of row
>   | EOT    -- ^ end of table
>   deriving (Eq, Ord, Show, Enum)
