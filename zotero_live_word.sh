
export infile=$1
export outfile=$2
pandoc "$infile" \
    -s  \
    --lua-filter=/Users/omeracar/Sync/Docs/zotero.lua \
    --reference-doc=/Users/omeracar/Sync/Docs/github/pandoc/template.docx \
    -F /Users/omeracar/.local/bin/pandoc-crossref  \
    -M suppress-bibliography=true \
    -f markdown \
    -t docx \
    --pdf-engine=xelatex --mathjax -o "$outfile"

    #--filter /Users/omeracar/Downloads/pandoc-2.10/bin/pandoc-citeproc \
#    --bibliography=/Users/omeracar/OneDrive\ -\ University\ of\ Pittsburgh/bibliography/bibliography.bib \

