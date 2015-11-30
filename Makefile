SITE=_slink
BLOG=$(SITE)/chorus/blog
DRAFT=$(SITE)/chorus-draft/blog
JEKYLL=jekyll
DRAFT_FLAGS=--config _config.yml,_draft.yml --drafts

develop:
	$(JEKYLL) serve --watch $(DRAFT_FLAGS) --destination $(DRAFT)

build:
	$(JEKYLL) build --destination $(BLOG)

draft:
	$(JEKYLL) build $(DRAFT_FLAGS) --destination $(DRAFT)

both: build draft

clean:
	rm -r $(DRAFT) $(BLOG)

.PHONY: build develop clean
