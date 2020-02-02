import XMonad
import XMonad.Layout.Gaps

main = xmonad $ def {
	modMask = mod4Mask,
	borderWidth = 2,
	terminal = "$TERMINAL"
}