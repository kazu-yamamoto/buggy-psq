module Main where

import Control.Monad
import System.IO
import System.Random

import PSQ as Q
import Unique

main :: IO ()
main = do
    let ks = map Unique [1..]
    rs <- replicateM 200 randomIO
    let q = fold $ zip ks rs
    print q
    putStrLn "Before atMost"
    hFlush stdout
    let (xs,q') = Q.atMost 0.5 q -- this causes seqfault with -O2
    print xs
    print q'
    putStrLn "After atMost"

fold :: [(Q.Key, Q.Prio)] -> Q.PSQ ()
fold []         = Q.empty
fold ((u,r):xs) = Q.insert u r () $ fold xs
