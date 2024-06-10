#!/bin/tcsh -f
rm paper.pdf
rm paper.aux
#rm paper.bbl
#rm text/aliases/*.aux text/conclusions/*.aux text/event_selection/*.aux text/motivation/*.aux text/setups/*.aux text/title_page/*.aux text/toc/*.aux text/appendix/*.aux text/rad_corr/rad_corr.aux text/sys_err/*.aux text/bin_corr/*.aux text/cross_sction/*.aux
pdflatex paper
bibtex paper
pdflatex paper
pdflatex paper
evince paper.pdf >& /dev/null
rm paper.log paper.aux paper.toc paper.out paper.blg paperNotes.bib
