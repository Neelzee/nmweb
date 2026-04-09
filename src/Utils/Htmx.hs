{-# LANGUAGE OverloadedStrings #-}
module Utils.Htmx where

import Text.Blaze.Internal (attribute, Attribute, AttributeValue)

hxBoost_ :: AttributeValue -> Attribute
hxBoost_ = attribute "hx-boost" " hx-boost=\""

hxBoost :: Attribute
hxBoost = hxBoost_ "true"

hxConfirm :: AttributeValue -> Attribute
hxConfirm = attribute "hx-confirm" " hx-confirm=\""


hxDelete :: AttributeValue -> Attribute
hxDelete = attribute "hx-delete" " hx-delete=\""


hxDisable_ :: AttributeValue -> Attribute
hxDisable_ = attribute "hx-disable" " hx-disable=\""


hxDisable :: Attribute
hxDisable = hxDisable_ ""


hxDisinherit :: AttributeValue -> Attribute
hxDisinherit = attribute "hx-disinherit" " hx-disinherit=\""


hxEncoding_ :: AttributeValue -> Attribute
hxEncoding_ = attribute "hx-encoding" " hx-encoding=\""


hxEncoding :: Attribute
hxEncoding = hxEncoding_ "multipart/form-data"


hxExt :: AttributeValue -> Attribute
hxExt = attribute "hx-ext" " hx-ext=\""


hxGet :: AttributeValue -> Attribute
hxGet = attribute "hx-get" " hx-get=\""


hxHeaders :: AttributeValue -> Attribute
hxHeaders = attribute "hx-headers" " hx-headers=\""


hxHistoryElt_ :: AttributeValue -> Attribute
hxHistoryElt_ = attribute "hx-history-elt" " hx-history-elt=\""


hxHistoryElt :: Attribute
hxHistoryElt = hxHistoryElt_ ""


hxInclude :: AttributeValue -> Attribute
hxInclude = attribute "hx-include" " hx-include=\""


hxParams :: AttributeValue -> Attribute
hxParams = attribute "hx-params" " hx-params=\""


hxPatch :: AttributeValue -> Attribute
hxPatch = attribute "hx-patch" " hx-patch=\""


hxPost :: AttributeValue -> Attribute
hxPost = attribute "hx-post" " hx-post=\""


hxPreserve_ :: AttributeValue -> Attribute
hxPreserve_ = attribute "hx-preserve" " hx-preserve=\""


hxPreserve :: Attribute
hxPreserve = hxPreserve_ ""


hxPrompt :: AttributeValue -> Attribute
hxPrompt = attribute "hx-prompt" " hx-prompt=\""


hxPushUrl :: AttributeValue -> Attribute
hxPushUrl = attribute "hx-push-url" " hx-push-url=\""


hxPut :: AttributeValue -> Attribute
hxPut = attribute "hx-put" " hx-put=\""


hxRequest :: AttributeValue -> Attribute
hxRequest = attribute "hx-request" " hx-request=\""


hxSelect :: AttributeValue -> Attribute
hxSelect = attribute "hx-select" " hx-select=\""


-- | Deprecated. Use "Text.Blaze.Htmx.ServerSentEvents" instead.
hxSse_ :: AttributeValue -> Attribute
hxSse_ = attribute "hx-sse" " hx-sse=\""


hxSwap :: AttributeValue -> Attribute
hxSwap = attribute "hx-swap" " hx-swap=\""


hxSwapOob :: AttributeValue -> Attribute
hxSwapOob = attribute "hx-swap-oob" " hx-swap-oob=\""


hxSync :: AttributeValue -> Attribute
hxSync = attribute "hx-sync" " hx-sync=\""


hxTarget :: AttributeValue -> Attribute
hxTarget = attribute "hx-target" " hx-target=\""


hxTrigger :: AttributeValue -> Attribute
hxTrigger = attribute "hx-trigger" " hx-trigger=\""


hxVals :: AttributeValue -> Attribute
hxVals = attribute "hx-vals" " hx-vals=\""


-- | Deprecated. Use 'hxVals'.
hxVars_ :: AttributeValue -> Attribute
hxVars_ = attribute "hx-vars" " hx-vars=\""


-- | Deprecated. Use "Text.Blaze.Htmx.WebSockets" instead.
hxWs_ :: AttributeValue -> Attribute
hxWs_ = attribute "hx-ws" " hx-ws=\""

