# Makefile for compiling RMarkdown documents
HANDOUTS=$(patsubst %.Rmd, %.html, $(wildcard *.Rmd))

# Top level
all: $(HANDOUTS)
	@printf "\nDone!"

# Main level
%.html: %.Rmd
	@printf "\nRendering %s ..." "$<"
	@R -q -e 'rmarkdown::render("$<", quiet = T)' > /dev/null 2>&1
	@printf "\nUpdated date in %s to %s" "assets/css/$(*F).css" "$(shell date '+%Y-%m-%d')"
	@sed -i '' -r "s/[12][0-9]{3}-[01][0-9]-[0-3][0-9]/$(shell date '+%Y-%m-%d')/g" \
		assets/css/$(*F).css
	@printf "\nRendering complete for %s" "$<"

# purge auxillary files
purge:
	@rm -f *.html

# clean directory (excluding .Rmd file)
clean: purge

.PHONY: all purge clean