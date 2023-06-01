# TeX Course Indexer
Forked from https://github.com/dhondta/tex-course-index-template to add easy-append scripts. See their repo for a full README.

## Instructions

1. sudo apt install texlive-latex-base -y
2. cd src
3. Edit data.tex with general course information
4. To add entries you can use the script add_entry.sh
It will ask you which book you are adding entries for and then loop through and add entries by specifying a page number and then the entry text.
It will continue until you tell it to quit, at which point it will compile the file into main.pdf.
