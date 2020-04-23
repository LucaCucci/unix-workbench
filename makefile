all: create_readme.md

create_readme.md:
	touch README.md
	echo "# Unix Workbench" > README.md
	echo "" >> README.md
	echo "### Makefile execution time" >> README.md
	echo "Execution time is: `date +%c`" >> README.md
	echo "" >> README.md
	echo "### Count line number" >> README.md
	echo "Number of line in script are `wc -l guessingame.sh | egrep -o "[0-9]+"`" >> README.md

clean:
	rm README.md
