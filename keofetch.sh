# get the txt file from github gist
curl --request GET -sL \
     --url 'https://gist.githubusercontent.com/Suyash1266/f93c1a2ff017722fb65f7c64b0122a20/raw/d4d509847cef6a7db23724e8f037f05254cd0f5c/mystery.txt'\
     --output "$HOME/mystery.txt"

# run the neofetch command with the txt file as input
neofetch --source "$HOME"/mystery.txt

# remove the txt file
rm "$HOME"/mystery.txt
