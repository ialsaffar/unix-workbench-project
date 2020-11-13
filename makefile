all: README.md index.md

README.md: guessinggame.sh
	echo '# Unix Workbench Guessing Game' > README.md
	echo '' >> README.md
	echo '### Date:' >> README.md
	echo '' >> README.md
	date >> README.md
	echo '' >> README.md
	echo '### Lines of code in gusssinggame.sh:' >> README.md
	echo '' >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo '' >> README.md
	echo '### Author:' >> README.md
	echo '' >> README.md
	echo 'Ibrahim' >> README.md

index.md: README.md
	cat README.md > index.md
