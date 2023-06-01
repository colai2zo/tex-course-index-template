#!/bin/bash
more_entries=true
read -p "Book: " bookno
while [ "$more_entries" = true ]; do
	read -p "Subcategory (enter for general): " category
	read -p "Page number: " pageno
	read -p "Entry: " entry
	if [[ "$category" = "t" || "$category" = "T" ]]; then
		sed -i "/Tools Placeholder/a\\\\\\\\indexentry{200@\\\\textbf{Tools}!$entry\|book{$bookno}}{$pageno}" main.idx
	elif [[ "$category" = "w" || "$category" = "W" ]]; then
		sed -i "/WSTG Placeholder/a\\\\\\\\indexentry{100@\\\\textbf{WSTG}!$entry\|book{$bookno}}{$pageno}" main.idx
	else
		sed -i "/Book $bookno Placeholder/a\\\\\\\\indexentry{$entry\|book{$bookno}}{$pageno}" main.idx
	fi
	read -p "Press q to quit, any other key to continue: " quit
	if [[ "$quit" = "q" || "$quit" = "Q" ]] 
	then
		more_entries=false
	fi
done
makeindex main.idx -s lib/std.ist
pdflatex -synctex=1 -interaction=nonstopmode main.tex
cp main.idx main.idx.bak
rm main.ilg main.ind main.aux main.synctex.gz
