import XMonad

main = xmonad $ def {
    modMask = mod4Mask,
    borderWidth = 3,
    terminal = "$TERMINAL"
}