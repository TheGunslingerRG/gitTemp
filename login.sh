#!/bin/bash

#Unmount Windows Partition
/Library/Scripts/Bowdoin/WinUMount.sh

# Set the correct locale so that the clock won't show the odd military time hybrid

defaults write /Users/$1/Library/Preferences/.GlobalPreferences AppleLocale en_us

# Set the current user as a member of the _developer group to allow them to run the performance tools in xCode correctly.

dscl . -append /Groups/_developer GroupMembership ${1}

exit 0
