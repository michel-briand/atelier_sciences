VERSION=v1

all: build

.PHONY: emacs-install

emacs-install:
	cp -vf \
		../../.emacs.d/emacs_install.el \
		../../.emacs.d/org-mode_new-init.el \
	.

build: emacs-install
	mkdir -p ~/podman_apt_cache
	podman build \
		-t emacs-builddoc:$(VERSION) \
		-t emacs-builddoc:latest \
		-v ~/podman_apt_cache:/var/cache/apt .
clean:
	rm -f ~/podman_apt_cache/pkgcache.bin
	rm -f ~/podman_apt_cache/srcpkgcache.bin
	rm -f ~/podman_apt_cache/archives/lock

top:
	@if [ -z "$$TOP" ] ; then echo "TOP is not defined"; exit 1; fi

test: top
	podman run --rm -it -v $(TOP):/worktree -w /worktree -e TOP=/worktree emacs-builddoc:latest /bin/bash
