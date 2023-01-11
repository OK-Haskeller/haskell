{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE InstanceSigs #-}
import Control.Lens
import Control.Applicative
import Data.Char
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.Text as T

data Promotion a =
    Promotion { _item :: a
              , _discountPercentage :: Double
              }
    deriving ( Show )
-- makeLenses ''Promotion

item :: Lens ( Promotion a ) ( Promotion b ) a b
item = lens getter setter
  where
    getter :: Promotion a -> a
    getter = _item
    setter :: Promotion a -> b -> Promotion b
    setter promo newItem = promo { _item = newItem }