## Dock
# Automatically hide or show the Dock
defaults write com.apple.dock autohide -bool true
killall Dock

## terminal
TERM_PROFILE='Pro_Custom';
TERM_PATH='./terminal/';
CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')";
    
echo ${TERM_PROFILE}
echo ${CURRENT_PROFILE}
if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
    # open "$TERM_PATH$TERM_PROFILE.terminal"
    defaults write com.apple.Terminal "Default Window Settings" -string "$TERM_PROFILE"
    defaults write com.apple.Terminal "Startup Window Settings" -string "$TERM_PROFILE"
fi
defaults import com.apple.Terminal "$HOME/Library/Preferences/com.apple.Terminal.plist"
