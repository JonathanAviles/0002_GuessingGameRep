readme.md:
	echo "# Guessing Game!" > readme.md
	echo "" >> readme.md
	echo -n "readme.md was created at: " >> readme.md
	date >> readme.md
	echo "" >> readme.md
	echo -n "guessinggame.sh contain the following number of lines: " >> readme.md
	cat guessinggame.sh | wc -l >> readme.md
	echo "" >> readme.md
clean:
	rm readme.md