-- Copyright 2016 Peter Harpending
--
-- Licensed under the Apache License, Version 2.0 (the "License"); you may not
-- use this file except in compliance with the License.  You may obtain a copy
-- of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
-- License for the specific language governing permissions and limitations under
-- the License.

-- |
-- Module      : Data.Tefl
-- Description : Umbrella module for Tefl library
-- Copyright   : Copyright 2016 Peter Harpending
-- License     : Apache-2.0
-- Maintainer  : peter@harpending.org
-- Stability   : experimental
-- Portability : GHC
--
-- This module only re-exports all of its child modules.

module Data.Tefl where

import qualified Data.ByteString.Lazy as Bl
import Data.Conduit

-- |Lock a single file.
lockFile :: Monad m => FilePath -> LockOptions -> Producer m Bl.ByteString
lockFile = undefined

-- |Lock a directory.
lockDirectory :: Monad m => FilePath -> LockOptions -> Producer m Bl.ByteString
lockDirectory = undefined

-- |Lock either a file or a directory
lock :: Monad m => FilePath -> LockOptions -> Producer m Bl.ByteString
lock = undefined

-- |Shred (securely delete a file)
shredFile :: FilePath -> IO ()
shredFile = undefined

data LockOptions

-- |Dump a file
unlock :: FilePath              -- ^Locked file
       -> FilePath              -- ^New filepath (cannot be the same as the other)
       -> IO ()
unlock = undefined       
