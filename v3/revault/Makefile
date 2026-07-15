COMPONENTS := $(patsubst %/foundry.toml,%,$(wildcard src/*/foundry.toml))

.PHONY: list build clean

list:
	@printf '%s\n' $(COMPONENTS)

build:
	@set -e; for component in $(COMPONENTS); do \
		printf 'Building %s\n' "$$component"; \
		forge build --root "$$component"; \
	done

clean:
	@set -e; for component in $(COMPONENTS); do \
		forge clean --root "$$component"; \
	done
