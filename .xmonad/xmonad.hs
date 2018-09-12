import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
-- import XMonad.Hooks.ManageHelpers
-- import XMonad.Layout.Spacing
import XMonad.Layout.ResizableTile
import XMonad.Hooks.InsertPosition

-- import XMonad.Hooks.EwmhDesktops
import XMonad.Actions.PhysicalScreens

import qualified XMonad.StackSet as W

-- Custom PP, configure it as you like. It determines what is being written to the bar. . wrap "[" "]"
myPP :: PP
myPP = xmobarPP {ppCurrent = xmobarColor "#81a2be" ""
                ,ppTitle = xmobarColor "#c5c8c6" "" . shorten 40
                ,ppSep="  |  "
                ,ppLayout = xmobarColor "#ECF0F1" "" . formatLayout
                }
  where formatLayout x
          | x == "Full" = x
          | otherwise = ""

-- Key binding to toggle the gap for the bar.
toggleStrutsKey :: XConfig t -> (KeyMask, KeySym)
toggleStrutsKey XConfig { XMonad.modMask = modMask' } = (modMask', xK_b)

-- Main configuration, override the defaults to your liking.
myConfig = defaultConfig { terminal = "st"
                         , focusedBorderColor = "#ecf0f1"
                         , normalBorderColor = "#3772ab"
                         , borderWidth = 2
                         , workspaces = ["1", "2", "3"]
                         , focusFollowsMouse = False
                         , layoutHook = ResizableTall 1 (3/100) (8/16) [] ||| Full }
                         `additionalKeys`
                         (
                           [ ((mod1Mask, xK_p), spawn "dmenu_run -fn '-*-*-*-*-*-*-18-*-*-*-*-*-*-*'")
                           , ((mod1Mask .|. shiftMask, xK_l), spawn "slock")
                           , ((mod1Mask, xK_a), sendMessage MirrorShrink)
                           , ((mod1Mask, xK_z), sendMessage MirrorExpand)] ++
                           [ ((mod1Mask .|. mask, key), f sc)
                           | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
                           , (f, mask) <- [(viewScreen def, 0), (sendToScreen def, shiftMask)]]
                         )
                         `removeKeys` []

main :: IO ()
main = do
    xmonad =<< statusBar "~/scripts/statusbar" myPP toggleStrutsKey myConfig
