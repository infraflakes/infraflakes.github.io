.PHONY: build fmt lint

build:
	cd landing-page && bun install && bun run build
fmt:
	cd landing-page && biome format --write . && biome format .
lint:
	cd landing-page && biome lint --write . && biome lint .
