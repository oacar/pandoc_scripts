export infile=$1
export outfile=$2
pandoc "$infile" \
    -s  \
    --reference-doc=/Users/omeracar/Docs/github/pandoc/template.docx \
    -F /Users/omeracar/.local/bin/pandoc-crossref  \
    -M suppress-bibliography=true \
    --citeproc \
    --bibliography=/Users/omeracar/OneDrive\ -\ University\ of\ Pittsburgh/bibliography/bibliography.bib \
    -f markdown \
    -t docx \
    --csl=/Users/omeracar/Zotero/styles/nature.csl \
    --pdf-engine=xelatex --mathjax -o "$outfile"


#    --filter /Users/omeracar/Downloads/pandoc-2.10/bin/pandoc-citeproc \
    #--lua-filter=/Users/omeracar/Docs/zotero.lua \

