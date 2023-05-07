module Main where

import Data.List ( intercalate )
import System.Environment (getArgs)

replaceInitial :: Char -> String -> String -> String
replaceInitial orig new str =
  take (n * length new) (cycle new) ++ dropWhile (== orig) str
  where
    n = length (takeWhile (== orig) str)

main :: IO ()
main = do
  args <- argHandler
  file <- lines <$> readFile (head args)
  let spaces = map (replaceInitial '\t' "    ") file
  let semis = map (replaceInitial ' ' ";") spaces
  putStrLn (intercalate "\n" semis)
  where
    argHandler :: IO [String]
    argHandler = do
      x <- getArgs
      if null x then error "Please specify file name" else return x
