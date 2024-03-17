# ====================
#
# Base
#
# ====================


# Disable auto-capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# ====================
#
# Dock
#
# ====================


# Remove all dock icons
defaults write com.apple.dock persistent-apps -array

# Disable animation at application launch
defaults write com.apple.dock launchanim -bool false

# ====================
#
# Finder
#
# ====================


# Disable animation
defaults write com.apple.finder DisableAllAnimations -bool true

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show files with all extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Display the status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Display the path bar
defaults write com.apple.finder ShowPathbar -bool true

# Put directories in front of sort by name when selecting sort by name
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Search current directory by default when searching
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder
chflags nohidden ~/Library

# ====================
#
# SystemUIServer
#
# ====================

# Display date, day, and time in the menu bar
# defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM HH:mm'

# Display battery level in the menu bar
# defaults write com.apple.menuextra.battery ShowPercent -string "YES"


for app in "Dock" \
	"Finder" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done
