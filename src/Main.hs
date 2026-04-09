{-# LANGUAGE OverloadedStrings, BlockArguments #-}

module Main where

import Happstack.Server
  ( nullConf, simpleHTTP, port, Conf
  )
import Handler ( handler )


conf :: Conf
conf = nullConf { port = 3000 }

main :: IO ()
main = do
  putStrLn $ "Running on port: " ++ show (port conf)
  simpleHTTP conf $ handler
