{-# LANGUAGE OverloadedStrings, BlockArguments #-}

module Main where

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
import Handler ( handler )

htmxUrl :: AttributeValue
htmxUrl = "https://cdn.jsdelivr.net/npm/htmx.org@2.0.8/dist/htmx.min.js"

conf :: Conf
conf = nullConf { port = 3000 }

main :: IO ()
main = do
  putStrLn $ "Running on port: " ++ show (port conf)
  simpleHTTP conf $ handler

appTemplate :: String -> [H.Html] -> H.Html -> H.Html
appTemplate title headers body =
  H.html $ do
    H.head $ do
      H.title (H.toHtml title)
      H.meta ! A.httpEquiv "Content-Type"
        ! A.content "text/html;charset=utf-8"
      sequence headers
      H.body $ do
        body


helloBlaze :: ServerPart Response
helloBlaze =
  ok $ toResponse $
    appTemplate "Hello, Blaze!"
    [ H.meta ! A.name "keywords"
    ! A.content "happstack, blaze, html"
    , H.script ! A.src htmxUrl $ ""
    ]
    (H.p $ do
    "Hello, "
    H.b "blaze-html!"
    H.button
      ! hxPost "/clicked"
      ! hxSwap "outerHTML"
      $ "Click Me"
    )

