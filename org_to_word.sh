export infile=$1
export outfile=$2
pandoc "$infile" \
    -s  \
    --reference-doc=/Users/omeracar/Sync/Docs/github/pandoc/template.docx \
    -F /Users/omeracar/.local/bin/pandoc-crossref  \
    --citeproc \
    --bibliography=/Users/omeracar/Nextcloud/bibliography.bib \
    -f org \
    -t docx \
    -M figPrefix="Figure" \
    --csl=/Users/omeracar/Zotero/styles/nature.csl \
    --pdf-engine=xelatex --mathjax -o "$outfile"
    #-M suppress-bibliography=true \
#    --filter /Users/omeracar/Downloads/pandoc-2.10/bin/pandoc-citeproc \
    #--lua-filter=/Users/omeracar/Docs/zotero.lua \

