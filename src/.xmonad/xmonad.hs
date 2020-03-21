import XMonad
import XMonad.Config.Xfce
import XMonad.Layout.Spacing

main = xmonad $ def {
    modMask = mod4Mask,
    borderWidth = 3,
    terminal = "$TERMINAL",
    focusedBorderColor = "#005577"
}


-- main = xmonad xfceConfig {
--     modMask = mod4Mask,
--     borderWidth = 2,
--     focusedBorderColor = "#005577"
-- }
