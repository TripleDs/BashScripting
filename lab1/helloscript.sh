# helloscript.sh
# This script displays the string "Hello World!"

# This is a silly way of creating the output text by starting with something else and stream editing it in a pipleine

# start with echoing a string similar to the output we want
# then use a sed to change the b to an o, and l to a ll, and the ol to an orl
# then use tr to translate lower case ha to a capital and again to a w to upper-case
# last use awk to fix the space in the middle and add !, using ascii codes
 
echo -n "helb wold" |
	sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |
	tr "h" "H"|
	tr "w" "W"|
	awk '{print $1 "\x20" $2 "\41"}'

