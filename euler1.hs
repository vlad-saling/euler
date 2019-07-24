module Main where
    import Data.List (union)
    main = putStrLn (show ans)
    -- ans =  sum [ x | x <- [0..999], (mod x 3) == 0 || (mod x 5) == 0] source & credit: https://github.com/nayuki/Project-Euler-solutions/blob/master/haskell/p001.hs
    ans = sum (union [3,6..999] [5,10..999])  -- source & credit: https://wiki.haskell.org/Euler_problems/1_to_10
