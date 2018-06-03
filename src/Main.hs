module Main where

import Brick
import Graphics.Vty.Attributes

type AppState = Int

app :: App AppState () String
app =
  App
  { appDraw = const []                          :: AppState -> [Widget String]
  , appChooseCursor =
      const . const Nothing                     :: AppState -> [CursorLocation String] -> Maybe (CursorLocation String)
  , appHandleEvent =
      (\appState _ -> Brick.continue appState)  :: AppState -> BrickEvent String () -> EventM String (Next AppState)
  , appStartEvent = return                      :: AppState -> EventM String AppState
  , appAttrMap = const (attrMap (defAttr) ([])) :: AppState -> AttrMap
  }

main :: IO ()
main = do
  let initialState = 5
  defaultMain app initialState >>= print
