import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

main = do

xmonad $ defaultConfig {
        borderWidth = 1,
        terminal = "urxvtc",
        normalBorderColor = "#000000",
        focusedBorderColor = "#000000",
        -- Rebind Mod to the Windows key
        modMask = mod4Mask
    } `additionalKeys` [
            -- launch a terminal
            ((mod4Mask, xK_Return), spawn "gnome-terminal"),
            ((mod4Mask .|. shiftMask, xK_Return), spawn "urxvtc -e screen -xRR"),
            ((mod4Mask .|. controlMask, xK_Return), spawn "xterm"),
            -- launch dmenu
            -- ((mod4Mask, xK_p), spawn "exe=`dmenu_path | dmenu -nb black -nf cyan -sb black -sf white` && eval \"exec $exe\""),
            ((mod4Mask, xK_p), spawn "dmenu_run -nb black -nf red -sb black -sf white -i -l 10"),
            -- Window Shot
            --  Make this smarter (dates)
            ((controlMask, xK_F6), spawn "scrot -s -e 'mv $f ~/Archives/Screenshots/"),
            -- Screen Shot
            ((controlMask, xK_F5), spawn "scrot -e 'mv $f ~/Archives/Screenshots/'"),
            -- Lock Screen
            ((mod4Mask .|. shiftMask, xK_l), spawn "xscreensaver-command -lock"),
            -- Show ultimate vim
            ((mod4Mask, xK_v), spawn "display ~/Images/vim.png"),
            -- Show ultimate vim
            ((mod4Mask, xK_v), spawn "display ~/Images/vim.png"),
            -- Invert main screen
            ((mod4Mask, xK_i), spawn "~/scripts/rot.sh inverted"),
            -- Normalize main screen
            ((mod4Mask, xK_o), spawn "~/scripts/rot.sh normal"),
            -- Dim main screen
            ((mod4Mask, xK_y), spawn "~/scripts/dim.sh"),
            -- Dimmer
            ((mod4Mask, xK_r), spawn "~/scripts/dimmer.sh"),
            -- Brighten main screen
            ((mod4Mask, xK_u), spawn "~/scripts/brighten.sh"),
            --  Extras
            ((mod4Mask, xK_g), spawn "gimp"),
            ((mod4Mask, xK_s), spawn "skype"),
            ((mod4Mask, xK_b), spawn "blender"),
            -- ((mod4Mask, xK_i), spawn "inkscape")
            -- ((mod4Mask, xK_n), spawn "gksudo zenmap")
            ((mod4Mask, xK_m), spawn "gnome-system-monitor"),
            -- Firefox with profile chooser
            -- Is last because it will never be taken out!
            -- So, no need to mess with commas when copy/pasting future changes
            ((mod4Mask, xK_f), spawn "firefox -ProfileManager -no-remote"),
            -- Chrome
            ((mod4Mask, xK_c), spawn "google-chrome")
        ]
        `additionalKeys` 
        [((m .|. mod4Mask, key), screenWorkspace sc >>= flip whenJust (windows . f))
            | (key, sc) <- zip [xK_w, xK_e] [0..]
            , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
