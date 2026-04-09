{-# LANGUAGE OverloadedStrings, BlockArguments #-}
module Handler where

import Control.Monad (msum)
import Data.Char (toLower)
import Text.Blaze ((!))
import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A hiding (method, dir)
import Happstack.Server
  ( nullConf, simpleHTTP, toResponse, ok, port, Conf, ok, dir, seeOther
  , FromReqURI(..), path, Method(..), method, ServerPart(..), Response(..)
  , BodyPolicy, defaultBodyPolicy, decodeBody
  )
import Utils.Htmx ( hxPost, hxSwap )
import Templates.Root ( root )
import Templates.MissingPage ( missingPage )


handler :: ServerPart Response
handler =
  do
    decodeBody myPolicy
    msum [ clicked
         , root
         , missingPage
         ]

clicked :: ServerPart Response
clicked = do
  dir "clicked" $ do
    method POST
    ok $ toResponse $ (H.div "Clicked!")

myPolicy :: BodyPolicy
myPolicy = (defaultBodyPolicy "/tmp/" 0 1000 1000)
