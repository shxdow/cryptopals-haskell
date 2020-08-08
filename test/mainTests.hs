{-# LANGUAGE OverloadedStrings #-}

module Main where

import Test.HUnit
import TestSet1
import System.Exit

main :: IO ()
main = do
  result <- runTestTT TestSet1.testlist
  if (errors result + failures result == 0)
     then
      exitWith ExitSuccess
    else
      exitWith (ExitFailure 1)
