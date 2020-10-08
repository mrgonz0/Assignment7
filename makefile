#!bin/make
all : Report.html Report.pdf
	pandoc content.md -s --mathjax -f markdown -t pdf -o Report.pdf
Report.html : content.md
	pandoc content.md -s --mathjax -f markdown -t html -o Report.html
content.md : preamble.txt litreview.txt approach.txt results.txt conclusion.txt
	cat preamble.txt litreview.txt approach.txt results.txt conclusion.txt > content.md
