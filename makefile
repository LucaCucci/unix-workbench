create_readme.md:
	touch README.md
	echo "# Unix Workbench" > README.md
	echo "" >> README.md
	echo "### Makefile execution time" >> README.md
	echo "Execution time is: `date +%c`" >> README.md
	echo "" >> README.md
	echo "### Count line number" >> README.md
	echo -n "Number of line in script are `wc -l guessingame.sh | egrep -o "[0-9]+"`" >> README.md

all: create_readme.md
