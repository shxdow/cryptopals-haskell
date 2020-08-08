{-# LANGUAGE OverloadedStrings #-}

module TestSet1 (testlist) where

import Test.HUnit
import Set1

problem1 = TestCase $ assertEqual "Problem 1: Convert hex to base64" "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t" (Set1.hexToBase64 "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")
problem2 = TestCase $ assertEqual "Problem 2: Fixed XOR" "746865206b696420646f6e277420706c6179" (Set1.fixedXor (Set1.hexDecode("1c0111001f010100061a024b53535009181c")) (Set1.hexDecode("686974207468652062756c6c277320657965")))
-- problem3 = TestCase $ assertEqual "Problem 3: Fixed XOR" "asdasa" (Set1.fixedXor "aaaa" "00")

testlist = TestList [
              TestLabel "Problem 1" problem1,
              TestLabel "Problem 2" problem2
              -- TestLabel "Problem 3" problem3
           ]
