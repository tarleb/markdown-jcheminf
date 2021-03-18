article.docx: article.md bibliography.bib \
		filters/insert-cito-in-ref.lua \
		filters/extract-cito.lua
	pandoc \
	    --from=markdown \
	    --to=docx \
	    --lua-filter=filters/extract-cito.lua \
	    --citeproc \
	    --lua-filter=filters/insert-cito-in-ref.lua \
	    --csl=journal-of-cheminformatics.csl \
	    --output=$@ \
	    $<
