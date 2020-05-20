function compare_message {
if ! [[ $1 =~ ^[0-9]+$ ]]
then
	echo "please enter a positive integer number!"
elif [[ $1 -gt $2 ]]
then
	echo "your guess was too high!"
elif [[ $1 -lt $2 ]]
then
	echo "your guess was too low"
else
	echo "Congratulations! Your guess was right! :)"
fi
}
number_of_files=$(ls -p -A | grep -v / | wc -l)
while :
do
	read -p "How many files are in this directory? Your guess: " guessing_number
	compare_message $guessing_number $number_of_files
	if [[ $guessing_number -eq $number_of_files ]]
	then
		break	
	fi
done
