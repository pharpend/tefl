module Main where

import Options.Applicative

data Result = Encrypt FilePath FilePath
            | Decrypt FilePath
  deriving Show

main :: IO ()
main =
  do result <- customExecParser nicePrefs entireParser
     print result
  where
    nicePrefs = defaultPrefs { prefDisambiguate = True
                             , prefShowHelpOnError = True
                             }
    entireParser = infoHelper parserList tlDesc
    parserList =
      altConcat $
        fmap subparser [ encryptPI
                       , decryptPI
                       ]
    tlDesc =
      mconcat [ fullDesc
              , progDesc "tefl - Trivially Easy File Locker"
              ]

encryptPI :: Mod CommandFields Result
encryptPI =
  command "encrypt" $
    infoHelper (Encrypt <$> strOption (mconcat [ short 'i'
                                               , long "input-file"
                                               , long "input"
                                               , help "The directory to encrypt"
                                               ])
                        <*> strOption (mconcat [ short 'o'
                                               , long "output-file"
                                               , long "output"
                                               , help "The output-file. Usually blah.tar.gpg"
                                               ]))
               (mconcat [ fullDesc
                        , progDesc "Encrypt a directory to a file"
                        ])

decryptPI :: Mod CommandFields Result
decryptPI =
  command "decrypt" $
    infoHelper (fmap Decrypt
                     (strOption (mconcat [ short 'i'
                                         , long "input-file"
                                         , long "input"
                                         , help "The .tar.gpg file to decrypt"
                                         ])))
               (mconcat [ fullDesc
                        , progDesc "Decrypt a tefl archive"
                        ])

altConcat :: (Alternative f, Foldable t) => t (f a) -> f a
altConcat = foldl (<|>) empty

infoHelper :: Parser a -> InfoMod a -> ParserInfo a
infoHelper x = info (helper <*> x)
