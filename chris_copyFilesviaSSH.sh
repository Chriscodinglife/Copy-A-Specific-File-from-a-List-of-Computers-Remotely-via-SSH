# Christian Orellana
# October 2019

# Copy Files Via SSH

## REFERENCES

# https://stackoverflow.com/questions/3710946/copying-files-across-computers-using-ssh-and-mac-os-x-terminal


## VARIABLES

computers=(
"enter list of computer name shere"
)

file="enter file path here"

## FUNCTIONS

getFiles() {

	for computer in "${computers[@]}"
	do 
		echo "Getting File from Computer: $computer"
		scp admin@$computer:$file /Users/admin/Desktop/SSH/$computer/$file
	done
}

## RUN CODE

mkdir /Users/admin/Desktop/SSH/
getFiles


exit 0
