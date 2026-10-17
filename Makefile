IN_FILE=resume.md
BASE_FILENAME := ${basename ${IN_FILE}}
OUT_DIR=output
# The PDF is printed from the HTML page, so it uses the same stylesheet (templates/template.css, @media print)
CHROME ?= google-chrome

.PHONY: all clean

all: html pdf docx

html: init
	pandoc \
		--standalone \
		--include-in-header templates/template.css \
		--lua-filter=pdc-links-target-blank.lua \
		--from markdown \
		--to html \
		--output ${OUT_DIR}/${BASE_FILENAME}.html \
		--metadata pagetitle="Sebastian Daberdaku · Resume" \
		${IN_FILE}; \
	cp ${OUT_DIR}/${BASE_FILENAME}.html ${OUT_DIR}/index.html

pdf: html
	${CHROME} \
		--headless \
		--no-sandbox \
		--disable-gpu \
		--no-pdf-header-footer \
		--virtual-time-budget=10000 \
		--print-to-pdf=${OUT_DIR}/${BASE_FILENAME}.pdf \
		file://$(abspath ${OUT_DIR}/${BASE_FILENAME}.html)

docx: init
	pandoc \
		--standalone \
		--output ${OUT_DIR}/${BASE_FILENAME}.docx \
		${IN_FILE}

init:
	mkdir -p ${OUT_DIR}

clean:
	rm -f ${OUT_DIR}/*
