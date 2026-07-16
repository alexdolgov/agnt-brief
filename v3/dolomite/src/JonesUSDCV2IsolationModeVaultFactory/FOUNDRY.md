# JonesUSDCV2IsolationModeVaultFactory — Foundry package

This directory is an isolated verified source bundle and a standalone Foundry root.
Isolation preserves the verifier's source paths and prevents compiler or filename collisions with other components.

From this directory:

```sh
forge build
```

From the project directory:

```sh
forge build --root "src/JonesUSDCV2IsolationModeVaultFactory"
```

Foundry selects Solidity versions from the source pragmas. Build output and cache files stay under `.foundry/`.
