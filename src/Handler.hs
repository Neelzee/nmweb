{-# LANGUAGE OverloadedStrings, BlockArguments #-}
module Handler where

import Control.Monad ( msum )
import Text.Blaze.Html5 as H
import Happstack.Server
  ( toResponse, ok, ok, dir, Method(..), method, ServerPart(..), Response(..)
  , BodyPolicy, defaultBodyPolicy, decodeBody
  )
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
