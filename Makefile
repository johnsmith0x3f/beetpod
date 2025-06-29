HOME := $(shell echo $$HOME)
PWD := $(shell echo $$PWD)
# XDG_CONFIG_HOME := $(shell echo $$XDG_CONFIG_HOME)

build:
	@podman build -t beetpod .

run:
	@podman run --init --rm -it \
		-v "$(HOME)/Music:/root/Music" \
		-v "$(PWD)/bin:/root/.local/bin" \
		-v "$(PWD)/etc:/root/.config/beets" \
		beetpod fish
