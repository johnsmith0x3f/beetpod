HOME := $(shell echo $$HOME)
XDG_CONFIG_HOME := $(shell echo $$XDG_CONFIG_HOME)

build:
	@podman build -t beetpod .

run:
	@podman run --init --rm -it \
		-v "$(HOME)/Music:/root/Music" \
		-v "$(XDG_CONFIG_HOME)/beets:/root/.config/beets" \
		beetpod fish
