OUT = out
OUT_HTML = $(OUT)/html
OUT_GMI = $(OUT)/gmi

PAGES = index.m4 about.m4 contact.m4
BLOG_PAGES = $(shell find src/blog -name "*.m4" -type f)
PROJECT_PAGES = $(shell find src/projects -name "*.m4" -type f)
HTML_PAGES = $(addprefix src/,$(PAGES:.m4=.html))
GMI_PAGES = $(addprefix src/,$(PAGES:.m4=.gmi))

all: html gmi

html: $(OUT_HTML)

gmi: $(OUT_GMI)

$(OUT_HTML): $(HTML_PAGES) $(BLOG_PAGES:.m4=.html) $(PROJECT_PAGES:.m4=.html) src/articles.html style.css
	@rm -rf $(OUT_HTML) $(OUT_HTML)~
	@mkdir -p $(OUT_HTML)~
	@mkdir $(OUT_HTML)~/blog
	@mkdir $(OUT_HTML)~/projects
	@printf 'CP	%s\n' '$(OUT_HTML)'
	@cp -r $(HTML_PAGES) style.css $(OUT_HTML)~
	@cp -r $(BLOG_PAGES:.m4=.html) $(OUT_HTML)~/blog
	@cp -r $(PROJECT_PAGES:.m4=.html) $(OUT_HTML)~/projects
	@cp -r src/articles.html $(OUT_HTML)~/blog/index.html
	@mv $(OUT_HTML)~ $(OUT_HTML)

$(OUT_GMI): $(GMI_PAGES) $(BLOG_PAGES:.m4=.gmi) $(PROJECT_PAGES:.m4=.gmi) src/articles.gmi
	@rm -rf $(OUT_GMI) $(OUT_GMI)~
	@mkdir -p $(OUT_GMI)~
	@mkdir $(OUT_GMI)~/blog
	@mkdir $(OUT_GMI)~/projects
	@printf 'CP	%s\n' '$(OUT_GMI)'
	@cp -r $(GMI_PAGES) $(OUT_GMI)~
	@cp -r $(BLOG_PAGES:.m4=.gmi) $(OUT_GMI)~/blog
	@cp -r $(PROJECT_PAGES:.m4=.gmi) $(OUT_GMI)~/projects
	@cp -r src/articles.gmi $(OUT_GMI)~/blog/index.gmi
	@mv $(OUT_GMI)~ $(OUT_GMI)

%.html: %.m4 lib/common.m4 lib/blog.m4 lib/html.m4
	@printf 'M4	%s\n' "$@"
	@awk -f lib/html.awk $< | m4 -P lib/common.m4 lib/html.m4 lib/blog.m4 - > $@~
	@mv $@~ $@

%.gmi: %.m4 lib/common.m4 lib/blog.m4 lib/gemtext.m4
	@printf 'M4	%s\n' "$@"
	@m4 -P lib/common.m4 lib/gemtext.m4 lib/blog.m4 $< > $@~
	@mv $@~ $@

src/articles.m4: $(BLOG_PAGES)
	@m4 -P lib/indexer.m4 $^ | sort -r | ./lib/index_gen.sh > $@~
	@mv "$@~" "$@"

.PHONY: clean serve

clean:
	rm -f $(HTML_PAGES) $(BLOG_PAGES:.m4=.html) $(PROJECT_PAGES:.m4=.html) src/articles.html
	rm -f $(GMI_PAGES) $(BLOG_PAGES:.m4=.gmi) $(PROJECT_PAGES:.m4=.gmi) src/articles.gmi
	rm -f src/articles.m4 src/articles.m4
	rm -rf $(OUT)

serve: html
	python -m http.server -d $(OUT_HTML) 8080
