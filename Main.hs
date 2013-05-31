module Main where

import Control.Monad
import PSQ as Q
import System.Random
import Unique

main :: IO ()
main = do
    s <- newSource
    ents <- replicateM 200 (entry s)
    let q = fold ents
    print $ Q.atMost 1.5 q

fold :: [(Q.Key, Q.Prio)] -> Q.PSQ ()
fold [] = Q.empty
fold ((u,r):xs) = Q.insert u r () $ fold xs

entry :: UniqueSource -> IO (Q.Key, Q.Prio)
entry s = do
    u <- newUnique s
    r <- randomIO
    return (u,r)
