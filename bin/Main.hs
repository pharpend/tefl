module Main where

import Options.Applicative

main :: IO ()
main =
  do result <- customExecParser nicePrefs emptyParser
     print result
  where
    emptyParser = infoHelper (pure NoResult) mempty
    nicePrefs = defaultPrefs { prefDisambiguate = True
                             , prefShowHelpOnError = True
                             }

data Result = NoResult
  deriving Show

infoHelper :: Parser a -> InfoMod a -> ParserInfo a
infoHelper x = info (helper <*> x)
