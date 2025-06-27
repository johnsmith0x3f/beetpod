HOME := $(shell echo $$HOME)
XDG_CACHE_HOME := $(shell echo $$XDG_CACHE_HOME)
XDG_CONFIG_HOME := $(shell echo $$XDG_CONFIG_HOME)

build:
	podman build -t beetpod .

run:
	podman run --rm -it \
		-v "$(HOME)/Music:/root/Music" \
		-v "$(XDG_CACHE_HOME)/beets:/root/.cache/beets" \
		-v "$(XDG_CONFIG_HOME)/beets:/root/.config/beets" \
		beetpod zsh
