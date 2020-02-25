import XMonad
import XMonad.Config.Xfce

-- main = xmonad $ def {
--     modMask = mod4Mask,
--     borderWidth = 3,
--     terminal = "$TERMINAL"
-- }


main = xmonad xfceConfig {
    modMask = mod4Mask,
    
}
