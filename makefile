README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Date and Time of Build" >> README.md
	date >> README.md
	echo "\n## Lines of Code" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md
