IN_FILE=resume.md
BASE_FILENAME := ${basename ${IN_FILE}}
OUT_DIR=output

.PHONY: all clean

all: html pdf docx rtf

html: init
	pandoc \
		--standalone \
		--include-in-header templates/template.css \
		--lua-filter=pdc-links-target-blank.lua \
		--from markdown \
		--to html \
		--output ${OUT_DIR}/${BASE_FILENAME}.html \
		--metadata pagetitle=${BASE_FILENAME} \
		${IN_FILE}; \
	cp ${OUT_DIR}/${BASE_FILENAME}.html ${OUT_DIR}/index.html

pdf: init
	pandoc \
		--standalone \
		--template templates/template.tex \
		--from markdown \
		--to context \
		--variable papersize=A4 \
		--output ${OUT_DIR}/${BASE_FILENAME}.tex \
		${IN_FILE} > /dev/null; \
	mtxrun --version
	mtxrun \
		--path=${OUT_DIR} \
		--result=${BASE_FILENAME}.pdf \
		--script context ${BASE_FILENAME}.tex > ${OUT_DIR}/context_${BASE_FILENAME}.log
	cat ${OUT_DIR}/context_${BASE_FILENAME}.log
	rm ${OUT_DIR}/context_${BASE_FILENAME}.log; \
	rm ${OUT_DIR}/${BASE_FILENAME}.log; \
	rm ${OUT_DIR}/${BASE_FILENAME}.tex; \
	rm ${OUT_DIR}/${BASE_FILENAME}.tuc

docx: init
	pandoc \
		--standalone \
		--output ${OUT_DIR}/${BASE_FILENAME}.docx \
		${IN_FILE}

rtf: init
	pandoc \
		--standalone \
		--output ${OUT_DIR}/${BASE_FILENAME}.rtf \
		${IN_FILE}

init: 
	mkdir -p ${OUT_DIR}

clean:
	rm -f ${OUT_DIR}/*
