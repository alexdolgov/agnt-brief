# Agentic Audit Brief: Fiamma

## Project Overview

- Project: Fiamma (`fiamma`)
- Website: [https://www.fiammalabs.io/](https://www.fiammalabs.io/)
- Lifecycle: active (Tier 0, 46% below peak)
- Generated: 2026-06-10T23:17:10.990Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: bsc, ethereum, hyperliquid, sei
- Contract surface: 33 unique implementations (78 raw deployments)
- DeFi Llama TVL: $1,150,915.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fiamma Labs' DefiLlama-listed Bridge/FIABTC product is a Bitcoin-to-EVM liquidity protocol that issues FIABTC, a 1:1 Bitcoin-backed asset, on supported EVM chains. The covered protocol uses a trust-minimized bridge design emphasizing BitVM2 and zero-knowledge proof mechanics to support moving Bitcoin liquidity into EVM ecosystems; it should be distinguished from the broader Fiamma Labs product suite shown on the homepage, including Ride social trading and the FIRE earn/trade app.

### Architecture

The Fiamma family relies on BitVMBridgeV4 to manage cross-chain message passing and asset locking, while FiaBTC serves as the wrapped token representation. Supporting contracts like BtcTxVerifier and DataVerificationHub provide transaction validation, and LPManager/BtcMirror handle liquidity and mirroring across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 33
- Raw deployments: 78
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BitVMBridgeV3 | operational_periphery | ethereum | [`0x756bcc...618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | sei | 10 deployments: ethereum `0x19438c...13207c`; ethereum `0x53a662...50f555`; ethereum `0xafb253...027524`; ethereum `0xeaec99...ed1c53`; bsc `0x9b7764...643d17`; bsc `0xcc30d3...ec83c0`; hyperliquid `0x62c737...81b939`; hyperliquid `0x7f16fd...9e96fe`; hyperliquid `0xb93752...58ecf3`; sei [`0x0ceda1...0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| BtcMirror | unknown | bsc | 3 deployments: bsc [`0x5dca16...05483b`](./contracts/bsc-56/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/); hyperliquid `0x60c230...7b061f`; hyperliquid `0x7427f3...0f9430` | ⚠️ Unaudited |
| BtcPeg | unknown | ethereum | [`0x5dca16...05483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ⚠️ Unaudited |
| BtcPegUpgradeable | unknown | ethereum | 4 deployments: ethereum [`0x63ec06...59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/); bsc `0x756bcc...618a3e`; hyperliquid `0xafb253...027524`; sei `0x7427f3...0f9430` | ⚠️ Unaudited |
| BtcTxVerifier | periphery | ethereum | 8 deployments: ethereum [`0x1e64f7...c0b931`](./contracts/ethereum-1/0x1e64f7641b6ae37395c26d154c6d8457dbc0b931/); ethereum `0x36a1a6...79f0a7`; ethereum `0x66ee8d...32d50c`; bsc `0x3c2bce...c5c0a1`; bsc `0x60c230...7b061f`; hyperliquid `0x756bcc...618a3e`; hyperliquid `0xbc9afb...006e85`; hyperliquid `0xf765b8...bc4a5e` | ⚠️ Unaudited |
| DataVerificationHub | unknown | ethereum | 2 deployments: ethereum [`0x2d2793...cd9b68`](./contracts/ethereum-1/0x2d27933f65f039c6b5763150f4cd24842bcd9b68/); ethereum `0x328c96...1c5865` | ⚠️ Unaudited |
| FiaBTC | unknown | hyperliquid | 7 deployments: ethereum `0x22f0e0...3f0e08`; ethereum `0x730162...35d073`; ethereum `0xe398f7...02edae`; bsc `0x6f2c9c...62fb18`; hyperliquid [`0x0ceda1...0b1e86`](./contracts/hyperliquid-999/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/); hyperliquid `0xf78dcf...4cc9a2`; sei `0x8388dc...fa3672` | ⚠️ Unaudited |
| FiaBTCOFTAdapter | adapter | hyperliquid | 4 deployments: hyperliquid [`0x5098aa...680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/); hyperliquid `0x8089e6...57e86a`; sei `0xa885d5...ee150f`; sei `0xe35776...514b9b` | ⚠️ Unaudited |
| LPManager | governance | bsc | 5 deployments: ethereum `0x60c230...7b061f`; ethereum `0x7427f3...0f9430`; bsc [`0x0ceda1...0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/); hyperliquid `0x9b7764...643d17`; hyperliquid `0xcfa380...25e1f7` | ⚠️ Unaudited |
| OperatorManager | governance | ethereum | 2 deployments: ethereum [`0x0ce121...f61c7d`](./contracts/ethereum-1/0x0ce121f83613f0eaf131ee48204b7101e8f61c7d/); ethereum `0xe6ed12...96b84f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | 10 deployments: ethereum `0xd23e84...42c28d`; bsc `0x7427f3...0f9430`; bsc `0xafb253...027524`; bsc `0xb93752...58ecf3`; bsc `0xc75de2...a442bd`; bsc `0xcfa380...25e1f7`; sei [`0x36a1a6...79f0a7`](./contracts/sei-1329/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); sei `0x60c230...7b061f`; sei `0xafb253...027524`; sei `0xcfa380...25e1f7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x3a2d69b6b3598058c7507055239ad4dec6ac504d) | proxy | sei | `0x90a755...fa0135` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34bee5...624a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d086f...3ddaf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x603619...2917e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa18e79...fc6453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa56cac...27256b` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x08145b...50d6ba` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x3a2d69...ac504d` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x3d5776...0dba83` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x43f4f5...6609ee` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x48c730...4e3c22` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x5d71e8...bf5ea6` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x5dca16...05483b` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x5e6c08...94a8c4` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x603619...2917e4` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x756bcc...618a3e` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x8a4442...8cdc53` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9fbb54...74e6e8` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xbd7be9...a75fcc` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xbff393...7db5c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xf68b3d...c8179f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x756bcc...618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | BitVMBridgeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0ceda1...0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | BitVMBridgeV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5dca16...05483b`](./contracts/bsc-56/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | BtcMirror | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dca16...05483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | BtcPeg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63ec06...59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/) | BtcPegUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e64f7...c0b931`](./contracts/ethereum-1/0x1e64f7641b6ae37395c26d154c6d8457dbc0b931/) | BtcTxVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5098aa...680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/) | FiaBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ceda1...0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | LPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
