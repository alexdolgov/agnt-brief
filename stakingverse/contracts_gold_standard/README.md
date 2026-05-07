# Stakingverse — Verified Contract Sources

Verified Solidity sources for the **7 production contracts** of Stakingverse, fetched directly from each chain's block explorer on **2026-05-07**.

Stakingverse runs on **two chains** with completely different code on each. The `ethereum/` and `lukso/` subdirectories reflect that split.

---

## ethereum/

| Folder | Address | Verified name | Author | Role |
|---|---|---|---|---|
| `ERC1967Proxy_0x8a93a8/` | [`0x8a93a876912c9f03f88bc9114847cf5b63c89f56`](https://etherscan.io/address/0x8a93a876912c9f03f88bc9114847cf5b63c89f56) | `ERC1967Proxy` | Stakingverse-deployed (vanilla OZ proxy) | Vault proxy — entry point users deposit into |
| `EthVault_0x927a83/` | [`0x927a83c679a5e1a6435d6bfaef7f20d4db23e2cc`](https://etherscan.io/address/0x927a83c679a5e1a6435d6bfaef7f20d4db23e2cc) | `EthVault` | **StakeWise** (NOT Stakingverse) | StakeWise V3 EthVault implementation. The proxy above delegates to this. |

The EthVault sources are StakeWise-authored; they are stored here for completeness because Stakingverse's Ethereum vault delegates all logic to this implementation. Audit attribution for this bytecode falls under StakeWise's audit programme (`github.com/stakewise/v3-core/audits/`), not Stakingverse's.

Sources fetched via `etherscan.io` v2 API.

---

## lukso/

| Folder | Address | Verified name | Author | Role |
|---|---|---|---|---|
| `StakingverseVaultProxy_0x9f49a9/` | [`0x9F49a95b0c3c9e2A6c77a16C177928294c0F6F04`](https://explorer.execution.mainnet.lukso.network/address/0x9F49a95b0c3c9e2A6c77a16C177928294c0F6F04) | `TransparentUpgradeableProxy` | Stakingverse | LUKSO vault proxy |
| `StakingverseVault_0x1711b2/` | [`0x1711b2e1b64F38ca33E51b717CFd27ACD1bd2E2D`](https://explorer.execution.mainnet.lukso.network/address/0x1711b2e1b64F38ca33E51b717CFd27ACD1bd2E2D) | `StakingverseVault` | Stakingverse (Universal.Page-derived) | Current vault logic — in production from 2025-03-31 |
| `Vault_0x2cb02e/` | [`0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4`](https://explorer.execution.mainnet.lukso.network/address/0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4) | `Vault` | Universal.Page (upstream) | Original baseline vault impl, deprecated 2025-03-31 |
| `SLYXTokenProxy_0x8a3982/` | [`0x8A3982f0A7d154D11a5f43EEc7F50E52eBBc8F7D`](https://explorer.execution.mainnet.lukso.network/address/0x8A3982f0A7d154D11a5f43EEc7F50E52eBBc8F7D) | `TransparentUpgradeableProxy` | Stakingverse | sLYX token proxy |
| `SLYXToken_0x08b284/` | [`0x08b28405A11348745A3187De2A29C730C53EB29B`](https://explorer.execution.mainnet.lukso.network/address/0x08b28405A11348745A3187De2A29C730C53EB29B) | `SLYXToken` | Stakingverse | Current sLYX logic — LSP7 token in production from 2025-04-19 |

The legacy SLYXToken implementation `0x30790526c7F48E92FAf8772E45c7AeCeeF0B8c91` (deployed 2024-12-29, replaced 2025-04-19) was not fetched into this directory. It is recorded in `manifest_gold_standard.json` for traceability.

Sources fetched via `explorer.execution.mainnet.lukso.network` (Blockscout v2 API).

---

## Provenance / out-of-scope notes

- The Universal.Page upstream `Vault.sol` reference is at `github.com/Universal-Page/contracts/blob/main/src/pool/Vault.sol`. That is not in this directory; it's an upstream codebase relevant only to the legacy LUKSO `Vault_0x2cb02e/` implementation.
- StakeWise's full v3-core repository is at `github.com/stakewise/v3-core`. Only the on-chain-deployed `EthVault` implementation behind Stakingverse's Ethereum proxy is captured here; the rest of the StakeWise codebase (other vault types, OsToken, Keeper, etc.) is out of scope.
- See `agnt-brief/stakingverse/manifest_gold_standard.json` for full per-contract metadata and `agnt-brief/stakingverse/brief_gold_standard.md` for the human-readable brief.
