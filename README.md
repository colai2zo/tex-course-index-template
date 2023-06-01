# TeX Course Indexer
Forked from https://github.com/dhondta/tex-course-index-template to add easy-append scripts. See their repo for a full README. This version adds a script add_entry.sh which aids the writer in quickly appending entries to the index.

## Instructions

1. sudo apt install texlive-latex-base -y
2. `cd src`
3. `chmod u+x *.sh`
4. Edit data.tex with general course information
5. To add entries you can use the script add_entry.sh
It will ask you which book you are adding entries for and then loop through and add entries by specifying a page number and then the entry text.
It will continue until you tell it to quit, at which point it will compile the file into main.pdf.
Optionally, you can add different headings. Currently it is configured for Tools and WSTG and the script will add to those sections by selecting "t" or "w" in the subcategory prompt respectively. You can feel free to add your own custom headings, but if you want the script to include them you'll need to modify it for now.
