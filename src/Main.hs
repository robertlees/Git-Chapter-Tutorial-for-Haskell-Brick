{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE CPP #-}
module Main where

#if !(MIN_VERSION_base(4,11,0))
import Data.Monoid ((<>))
#endif
import Brick
import Brick.Widgets.Table
import Brick.Widgets.Center (center)

ui :: Widget ()
ui = center $ renderTable leftTable <+>
              padLeft (Pad 5) (renderTable rightTableA <=>
                               renderTable rightTableC)
                               

innerTable :: Table ()
innerTable =
    surroundingBorder False $
    table [ [txt "abc", txt "abc"]
          , [txt "abc", txt "abc"]
          ]

leftTable :: Table ()
leftTable =
    setDefaultColAlignment AlignCenter $
    table [ [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "1"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "2"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "3"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "4"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "", txt "🞅", txt "", txt "", txt "", txt "", txt "", txt "" ,txt "", txt "", txt "5"]
          , [txt "", txt "", txt "" ,txt "", txt "🞅", txt "", txt "⏺", txt "⏺", txt "", txt "", txt "", txt "", txt "" ,txt "", txt "", txt "6"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "⏺", txt "", txt "🞅", txt "", txt "⏺", txt "", txt "", txt "" ,txt "", txt "",txt "7"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "⏺", txt "", txt "⏺", txt "🞅" , txt "", txt "", txt "" ,txt "", txt "", txt "8"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "⏺", txt "", txt "⏺", txt "", txt "", txt "", txt "", txt "" ,txt "", txt "", txt "9"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "", txt "⏺", txt "", txt "🞅", txt "⏺", txt "", txt "", txt "" ,txt "", txt "", txt "10"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "", txt "", txt "", txt "", txt "", txt "", txt "", txt "" ,txt "", txt "",txt "11"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "⊗" ,txt "", txt "", txt "12"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "13"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "14"]
          , [txt "", txt "", txt "" ,txt "", txt "", txt "" , txt "", txt "", txt "", txt "" , txt "", txt "", txt "" ,txt "", txt "", txt "15"]
          , [txt "  1 ", txt "  2 ", txt "  3 ", txt "  4 ", txt "  5 ", txt "  6 ", txt "  7 ", txt "  8 ",txt "  9 ", txt "  10", txt "  11", txt "  12", txt "  13", txt "  14", txt "  15",txt "    "]
          ]

rightTableA :: Table ()
rightTableA =
    rowBorders False $
    setDefaultColAlignment AlignCenter $
    table [ [txt "Current",     txt "⏺"]
          , [txt "player", txt "    "]
          ]

-- rightTableB :: Table ()
-- rightTableB =
--     columnBorders False $
--     setDefaultColAlignment AlignCenter $
--     table [ [txt "A",       txt "table"]
--           , [txt "without", txt "column borders"]
--           ]

rightTableC :: Table ()
rightTableC =
    rowBorders False $
    setDefaultColAlignment AlignCenter $
    table [ [txt "Winner ",     txt "⏺"]
            ,[txt " ",     txt "    "]
          ]

main :: IO ()
main = simpleMain ui
