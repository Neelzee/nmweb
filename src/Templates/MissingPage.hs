{-# LANGUAGE OverloadedStrings #-}
module Templates.MissingPage where

import Text.Blaze.Html5 as H
import Templates.Head (head_)
import Templates.Root (navbar, footer_)
import Happstack.Server ( toResponse, ok, ServerPart(..), Response(..), path )

missingPage :: ServerPart Response
missingPage = path $ \s -> ok $ toResponse $ missingPage_ s

missingPage_ :: String -> H.Html
missingPage_ s =
  H.html $ do
    head_
    H.body $ do
      navbar
      H.main $ do
        H.h1 $ H.toHtml $ "Can't find " ++ s
        H.p "This is something"
      footer_
