#!/bin/bash

DOCKUTIL=/usr/local/bin/dockutil

# remove default apps
$DOCKUTIL --remove all --no-restart

# add items to dock
$DOCKUTIL --add '/Applications/System Preferences.app' --position 1 --no-restart 
$DOCKUTIL --add /Applications/Safari.app --after "System Preferences" --no-restart
$DOCKUTIL --add /Applications/Firefox.app --after Safari --no-restart
$DOCKUTIL --add /Applications/Google\ Chrome.app --after Firefox --no-restart
$DOCKUTIL --add /Applications/Mail.app --after "Google Chrome" --no-restart
$DOCKUTIL --add /Applications/Adobe\ Illustrator\ CC\ 2015/Adobe\ Illustrator.app --after Mail --no-restart
$DOCKUTIL --add /Applications/Adobe\ InDesign\ CC\ 2015/Adobe\ InDesign\ CC\ 2015.app/ --after "Adobe Illustrator" --no-restart
$DOCKUTIL --add /Applications/Adobe\ Photoshop\ CC\ 2015/Adobe\ Photoshop\ CC\ 2015.app --after "Adobe InDesign CC 2015" --no-restart
$DOCKUTIL --add /Applications/BusyCal.app --after "Adobe Photoshop CC 2015" --no-restart
$DOCKUTIL --add /Applications/Transmit.app --after "BusyCal" --no-restart
$DOCKUTIL --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app/ --after "Microsoft Remote Desktop" --no-restart
$DOCKUTIL --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app/ --after "Microsoft Word" --no-restart
$DOCKUTIL --add '~' --view list --display folder --no-restart
$DOCKUTIL --add '/Applications' --view list --display folder --position end 
