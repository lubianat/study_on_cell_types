#!/bin/bash

for filename in ./*.md; do
	sed -e 's_\\section{_# _g' -e 's_\\subsection{_## _g'  -e 's_\\subsubsection{_### _g' -i $filename
	
	sed -e 's_}__g' -i $filename
	done	
