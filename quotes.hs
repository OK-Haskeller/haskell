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
-- import Data.Text as T

-- quotes :: [(T.Text, T.Text, T.Text)]
-- quotes = [("Why","So","Serious?")]
-- -- quotes = [("Why", "So", "Serious?")] --, ("This", "is", "SPARTA")]
data Role = Gunner
          | PowderMonkey
          | Navigator
          | Captain
          | FirstMate
          deriving (Show, Eq, Ord)

data CrewMember = CrewMember { _name :: String
                             , _role :: Role
                             , _talents :: [String]
                             }
                             deriving (Show, Eq, Ord)
makeLenses ''CrewMember
roster :: S.Set CrewMember
roster = S.fromList[ CrewMember "Grumpy Roger" Gunner ["Juggling", "Arbitrage"]
                   , CrewMember "Long-John Bronze" PowderMonkey ["Origami"]
                , CrewMember "Salty Steve" PowderMonkey ["Charcuterie"]
                , CrewMember "One-eyed Jack" Navigator []
                ]
