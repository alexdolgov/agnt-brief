# SX1155NFTFactory — Foundry package

This directory is an isolated verified source bundle and a standalone Foundry root.
Isolation preserves the verifier's source paths and prevents compiler or filename collisions with other components.

From this directory:

```sh
forge build
```

From the project directory:

```sh
forge build --root "src/SX1155NFTFactory"
```

Foundry selects Solidity versions from the source pragmas. Build output and cache files stay under `.foundry/`.
