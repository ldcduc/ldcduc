# for MacOS only
[ "$1" == "true" ] && flag=true || flag=false
echo $flag
defaults write com.apple.finder CreateDesktop $flag
killall Finder
