VERSION=v1

build:
	mkdir -p ~/podman_apt_cache
	podman build \
		-t emacs-builddoc:$(VERSION) \
		-t emacs-builddoc:latest \
		-v ~/podman_apt_cache:/var/cache/apt .
clean:
	rm -f ~/podman_apt_cache/pkgcache.bin
	rm -f ~/podman_apt_cache/srcpkgcache.bin
	rm -f ~/podman_apt_cache/archives/lock
