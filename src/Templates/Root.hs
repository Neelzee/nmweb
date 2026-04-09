{-# LANGUAGE OverloadedStrings #-}
module Templates.Root where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A hiding (method, dir)
import Templates.Head (head_)
import Happstack.Server ( toResponse, ok, ServerPart(..), Response(..), nullDir )
import Htmx ( hxPost, hxSwap )

root :: ServerPart Response
root = do
  nullDir
  ok $ toResponse $ root_

root_ :: H.Html
root_ =
  H.html $ do
    head_
    H.body $ do
      navbar
      H.main $ do
        H.h1 "Hello"
        H.p "This is something"
        H.button
          ! hxPost "/clicked"
          ! hxSwap "outerHTML"
          $ "Click Me"
      footer_


navbar :: H.Html
navbar =
  H.nav $ do
    H.a ! A.href "/" $ "/root"
    H.a ! A.href "/projects" $ "/projects"
    H.a ! A.href "/about" $ "/about"


footer_ :: H.Html
footer_ =
  H.footer $ do
    H.a ! A.href "https://github.com/Neelzee" $ "/GitHub"
