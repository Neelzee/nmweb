{-# LANGUAGE OverloadedStrings #-}
module Templates.Head where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A hiding (method, dir)

htmxUrl :: AttributeValue
htmxUrl = "https://cdn.jsdelivr.net/npm/htmx.org@2.0.8/dist/htmx.min.js"

head_ :: H.Html
head_ =
  H.head $ do
    H.title "NMWeb"
    H.meta ! A.httpEquiv "Content-Type"
           ! A.content "text/html;charset=utf-8"
    H.script ! A.src htmxUrl $ ""
