build:
	podman build -t beetpod .

run:
	podman run --rm -it beetpod zsh
