{-# LANGUAGE OverloadedStrings #-}

module Set1 (hexDecode, hexToBase64, fixedXor) where

import qualified Data.Text as T
import qualified Data.Text.Encoding as Tenc
import Data.ByteString as B
import Data.ByteString.Base16 as B16
import Data.ByteString.Base64 as B64
import Data.Bits (xor)

hexDecode :: ByteString -> ByteString
hexToBase64 :: ByteString -> ByteString
fixedXor :: ByteString -> ByteString -> ByteString


hexDecode s =
  (fst . B16.decode) s

hexToBase64 s = 
   (B64.encode . hexDecode) s

fixedXor a b =
  (B16.encode . B.pack) (B.zipWith xor a b)
