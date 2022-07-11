{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

import System.Environment
import Codec.BMP
import Data.ByteString

getBitMap :: BMP
getBitMap = packRGBA32ToBMP 16 16 $ pack ([0..255] >>= \n -> [n,n,n,255])

someFunc :: IO ()
someFunc = do
    fileName <- (!! 0) <$> getArgs
    writeBMP fileName getBitMap
