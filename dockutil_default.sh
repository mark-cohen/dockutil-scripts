#!/bin/bash

DOCKUTIL=/usr/local/bin/dockutil

# remove default apps
$DOCKUTIL --remove all --no-restart

# add items to dock
$DOCKUTIL --add '/Applications/System Preferences.app' --position 1 --no-restart
$DOCKUTIL --add '/Applications/Utilities/Terminal.app' --after "System Preferences" --no-restart
$DOCKUTIL --add /Applications/Safari.app --after "Terminal" --no-restart
$DOCKUTIL --add /Applications/Firefox.app --after Safari --no-restart
$DOCKUTIL --add /Applications/Google\ Chrome.app --after Firefox --no-restart
$DOCKUTIL --add /Applications/Server.app --after "Google Chrome" --no-restart
$DOCKUTIL --add '~' --view list --display folder --no-restart
$DOCKUTIL --add '/Applications' --view list --display folder --after "Google Chrome" --no-restart
$DOCKUTIL --add '/Applications/Utilities' --view list --display folder --position end 


#delete the job
rm /Library/LaunchDaemons/com.dockutil.default.plist
# unload the daemon
launchctl remove -w /Library/LaunchDaemons/com.dockutil.default.plist
