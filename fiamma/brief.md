# Agentic Audit Brief: Fiamma

## Project Overview

- Project: Fiamma (`fiamma`)
- Website: [https://www.fiammalabs.io/](https://www.fiammalabs.io/)
- Lifecycle: active (Tier 0, 46% below peak)
- Generated: 2026-06-17T07:00:45.277Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, polygon, sei, unichain
- Contract surface: 34 unique implementations (56 raw deployments)
- DeFi Llama TVL: $1,150,915.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fiamma Labs' DefiLlama-listed Bridge/FIABTC product is a Bitcoin-to-EVM liquidity protocol that issues FIABTC, a 1:1 Bitcoin-backed asset, on supported EVM chains. The covered protocol uses a trust-minimized bridge design emphasizing BitVM2 and zero-knowledge proof mechanics to support moving Bitcoin liquidity into EVM ecosystems; it should be distinguished from the broader Fiamma Labs product suite shown on the homepage, including Ride social trading and the FIRE earn/trade app.

### Architecture

The Fiamma family relies on BitVMBridgeV4 to manage cross-chain message passing and asset locking, while FiaBTC serves as the wrapped token representation. Supporting contracts like BtcTxVerifier and DataVerificationHub provide transaction validation, and LPManager/BtcMirror handle liquidity and mirroring across chains.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 56 (55 live, 1 unknown).
- Excluded by liveness: 0 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 7/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/18 (16.7%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 34
- Raw deployments: 56
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 2 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 16.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BtcMirror | unknown | bsc | n/a | [`0x5dca16...05483b`](./contracts/bsc-56/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ✅ Audited |
| FiaBTC | unknown | ethereum | unit-27345 | [`0x22f0e0...3f0e08`](./contracts/ethereum-1/0x22f0e0a4c97ff43546dad16d43ef854c773f0e08/) | ✅ Audited |
| FiaBTC | unknown | bsc | n/a | 4 deployments: ethereum `0x730162...35d073`; ethereum `0xe398f7...02edae`; bsc [`0x6f2c9c...62fb18`](./contracts/bsc-56/0x6f2c9c44e1ff17cbbd8d7cdd3e05f29e4062fb18/); sei `0x8388dc...fa3672` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitVMBridgeV3 | operational_periphery | ethereum | n/a | [`0x756bcc...618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | ethereum | unit-27349 | [`0xafb253...027524`](./contracts/ethereum-1/0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524/) | ⚠️ Unaudited |
| BitVMBridgeV4 | unknown | unichain | unit-27351 | [`0xcfa380...25e1f7`](./contracts/unichain-130/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | unknown | polygon | unit-27352 | [`0xcfa380...25e1f7`](./contracts/polygon-137/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | sei | n/a | 7 deployments: ethereum `0x19438c...13207c`; ethereum `0x53a662...50f555`; ethereum `0xeaec99...ed1c53`; bsc `0x9b7764...643d17`; bsc `0xcc30d3...ec83c0`; hyperliquid `0xb93752...58ecf3`; sei [`0x0ceda1...0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| BitVMBridgeV4 | unknown | base | unit-27363 | [`0xcfa380...25e1f7`](./contracts/base-8453/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | unknown | arbitrum | unit-27364 | [`0xcfa380...25e1f7`](./contracts/arbitrum-42161/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BtcPeg | unknown | ethereum | n/a | [`0x5dca16...05483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ⚠️ Unaudited |
| BtcPegUpgradeable | unknown | ethereum | n/a | 4 deployments: ethereum [`0x63ec06...59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/); bsc `0x756bcc...618a3e`; hyperliquid `0xafb253...027524`; sei `0x7427f3...0f9430` | ⚠️ Unaudited |
| BtcTxVerifier | periphery | ethereum | n/a | 4 deployments: ethereum [`0x36a1a6...79f0a7`](./contracts/ethereum-1/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); bsc `0x3c2bce...c5c0a1`; bsc `0x60c230...7b061f`; hyperliquid `0x756bcc...618a3e` | ⚠️ Unaudited |
| FiaBTCOFTAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x5098aa...680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/); hyperliquid `0x8089e6...57e86a`; sei `0xa885d5...ee150f`; sei `0xe35776...514b9b` | ⚠️ Unaudited |
| LPManager | governance | bsc | n/a | [`0x0ceda1...0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 5 deployments: bsc [`0x7427f3...0f9430`](./contracts/bsc-56/0x7427f38a490f2c7713679fefa113b448ca0f9430/); bsc `0xafb253...027524`; bsc `0xb93752...58ecf3`; bsc `0xc75de2...a442bd`; bsc `0xcfa380...25e1f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | unit-27359 | [`0x60c230...7b061f`](./contracts/sei-1329/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | unit-27362 | [`0xcfa380...25e1f7`](./contracts/sei-1329/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x34bee5...624a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d086f...3ddaf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x603619...2917e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa56cac...27256b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x08145b...50d6ba` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3d5776...0dba83` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x43f4f5...6609ee` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x48c730...4e3c22` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5d71e8...bf5ea6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5dca16...05483b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5e6c08...94a8c4` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x8a4442...8cdc53` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9fbb54...74e6e8` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbd7be9...a75fcc` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbff393...7db5c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf68b3d...c8179f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BitLabs-Bridge-script.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/BitLabs-Bridge-script.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [MoveBits-Bridge-Aptos-Contract.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/MoveBits-Bridge-Aptos-Contract.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Zenith-Bridge-Cairo-Contract.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/Zenith-Bridge-Cairo-Contract.pdf) | unknown | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x756bcc...618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | BitVMBridgeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0ceda1...0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dca16...05483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | BtcPeg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63ec06...59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/) | BtcPegUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36a1a6...79f0a7`](./contracts/ethereum-1/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | BtcTxVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5098aa...680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/) | FiaBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ceda1...0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | LPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=10

Zero-match audit list:

- [11582] BitLabs-Bridge-script.pdf
- [11583] MoveBits-Bridge-Aptos-Contract.pdf

Fork inheritance lineage and inherited audits are included when available.
