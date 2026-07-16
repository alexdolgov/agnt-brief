# Building the verified contracts with Foundry

Each `src/<component>/` directory is a standalone Foundry root containing one exact verified source bundle.
Components are intentionally not flattened together because their source paths and compiler requirements can conflict.

## Build one component

```sh
forge build --root "src/CErc20"
```

## Build every component

```sh
make build
```

Generated artifacts and caches are written below each component's `.foundry/` directory and ignored by Git.
See each component's `component.json` for its deployments, audit links, source-path remaps, and build command.
