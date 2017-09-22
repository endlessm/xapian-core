# Need an explicit default target so we don't "make distcheck" by default.
all:
	$(MAKE) -C xapian-core $@

distcheck:
	$(MAKE) -C xapian-core $@
	cp xapian-core/xapian*-core*.tar.xz .

%:
	$(MAKE) -C xapian-core $@

.PHONY: all distcheck
