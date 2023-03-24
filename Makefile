OUT = out
PAGES = index.m4 about.m4 contact.m4
BLOG_PAGES = $(shell find src/blog -name "*.m4" -type f)
HTML_PAGES = $(addprefix src/,$(PAGES:.m4=.html))

all: html

html: $(HTML_PAGES) $(BLOG_PAGES:.m4=.html) style.css
	rm -rf $(OUT) .$(OUT)
	mkdir .$(OUT)
	mkdir .$(OUT)/blog
	cp -rv $(HTML_PAGES) style.css .$(OUT)
	cp -rv $(BLOG_PAGES:.m4=.html) .$(OUT)/blog
	mv .$(OUT) $(OUT)

%.html: %.m4
	@printf 'HTML	%s\n' "$^"
	@awk -f lib/html.awk $^ | m4 -P lib/common.m4 lib/html.m4 lib/blog.m4 - > $@~
	@mv $@~ $@

.PHONY: clean serve

clean:
	rm -f $(HTML_PAGES) $(BLOG_PAGES:.m4=.html)
	rm -rf $(OUT)

serve: html
	python -m http.server -d $(OUT) 8080