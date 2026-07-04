# Agentic Audit Brief: Fiamma

## Project Overview

- Project: Fiamma (`fiamma`)
- Website: [https://www.fiammalabs.io/](https://www.fiammalabs.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:50.667Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, polygon, sei, unichain
- Contract surface: 64 unique implementations (110 raw deployments)
- DeFi Llama TVL: $1,150,915.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 19 project-authored contract(s) across 7 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 8 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 132; live-surface contracts included: 92 (66 live, 26 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/45 (6.7%)
- Deployed-live implementations: 45 of 64 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/45
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 64
- Raw deployments: 110
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 6.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BtcMirror | unknown | bsc | n/a | [`0x5dca16...05483b`](./contracts/bsc-56/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ✅ Audited |
| FiaBTC | unknown | ethereum | n/a | [`0x22f0e0...3f0e08`](./contracts/ethereum-1/0x22f0e0a4c97ff43546dad16d43ef854c773f0e08/) | ✅ Audited |
| FiaBTC | unknown | bsc | n/a | 4 deployments: ethereum `0x730162...35d073`; ethereum `0xe398f7...02edae`; bsc [`0x6f2c9c...62fb18`](./contracts/bsc-56/0x6f2c9c44e1ff17cbbd8d7cdd3e05f29e4062fb18/); sei `0x8388dc...fa3672` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitVMBridgeV3 | operational_periphery | ethereum | n/a | [`0x756bcc...618a3e`](./contracts/ethereum-1/0x756bcceeda5737238a5b00915e638dca23618a3e/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | ethereum | n/a | [`0xafb253...027524`](./contracts/ethereum-1/0xafb253a80ceb3d1a5eef3994c0d1c92c2f027524/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | unichain | n/a | [`0xcfa380...25e1f7`](./contracts/unichain-130/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | polygon | n/a | [`0xcfa380...25e1f7`](./contracts/polygon-137/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x62c737...81b939`](./contracts/hyperliquid-999/0x62c737ba25b8ce3b2d6650a1dc44fe75e981b939/); hyperliquid `0x7f16fd...9e96fe` | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | sei | n/a | 7 deployments: ethereum `0x19438c...13207c`; ethereum `0x53a662...50f555`; ethereum `0xeaec99...ed1c53`; bsc `0x9b7764...643d17`; bsc `0xcc30d3...ec83c0`; hyperliquid `0xb93752...58ecf3`; sei [`0x0ceda1...0b1e86`](./contracts/sei-1329/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | base | n/a | [`0xcfa380...25e1f7`](./contracts/base-8453/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BitVMBridgeV4 | operational_periphery | arbitrum | n/a | [`0xcfa380...25e1f7`](./contracts/arbitrum-42161/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |
| BtcMirror | unknown | unichain | n/a | 2 deployments: unichain [`0x36a1a6...79f0a7`](./contracts/unichain-130/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); unichain `0x603619...2917e4` | ⚠️ Unaudited |
| BtcMirror | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x60c230...7b061f`](./contracts/hyperliquid-999/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/); hyperliquid `0x7427f3...0f9430` | ⚠️ Unaudited |
| BtcMirror | unknown | base | n/a | 2 deployments: base [`0x36a1a6...79f0a7`](./contracts/base-8453/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); base `0x603619...2917e4` | ⚠️ Unaudited |
| BtcMirror | unknown | arbitrum | n/a | [`0x36a1a6...79f0a7`](./contracts/arbitrum-42161/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/) | ⚠️ Unaudited |
| BtcPeg | unknown | ethereum | n/a | [`0x5dca16...05483b`](./contracts/ethereum-1/0x5dca1687804b50ecf0b2fa69fcba7f416705483b/) | ⚠️ Unaudited |
| BtcPegUpgradeable | unknown | ethereum | n/a | 4 deployments: ethereum [`0x63ec06...59d45f`](./contracts/ethereum-1/0x63ec0656ce47061d2b811050d0bcff8a7f59d45f/); bsc `0x756bcc...618a3e`; hyperliquid `0xafb253...027524`; sei `0x7427f3...0f9430` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e64f7...c0b931`](./contracts/ethereum-1/0x1e64f7641b6ae37395c26d154c6d8457dbc0b931/); ethereum `0x66ee8d...32d50c` | ⚠️ Unaudited |
| BtcTxVerifier | periphery | ethereum | n/a | 4 deployments: ethereum [`0x36a1a6...79f0a7`](./contracts/ethereum-1/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); bsc `0x3c2bce...c5c0a1`; bsc `0x60c230...7b061f`; hyperliquid `0x756bcc...618a3e` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | unichain | n/a | 2 deployments: unichain [`0x9c98f1...c57378`](./contracts/unichain-130/0x9c98f151819bd0abdef58b3b0993ca69c0c57378/); unichain `0xae07d6...35ddd0` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | polygon | n/a | 2 deployments: polygon [`0x9c98f1...c57378`](./contracts/polygon-137/0x9c98f151819bd0abdef58b3b0993ca69c0c57378/); polygon `0xae07d6...35ddd0` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbc9afb...006e85`](./contracts/hyperliquid-999/0xbc9afbd085900e0ae8787267a0dec344ef006e85/); hyperliquid `0xf765b8...bc4a5e` | ⚠️ Unaudited |
| BtcTxVerifier | unknown | base | n/a | 2 deployments: base [`0x1e180f...5914fa`](./contracts/base-8453/0x1e180ff4a9f12451f9daa2242aee09c8e65914fa/); base `0x5b47fe...f76b92` | ⚠️ Unaudited |
| DataVerificationHub | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d2793...cd9b68`](./contracts/ethereum-1/0x2d27933f65f039c6b5763150f4cd24842bcd9b68/); ethereum `0x328c96...1c5865` | ⚠️ Unaudited |
| FiaBTC | unknown | unichain | n/a | [`0x60c230...7b061f`](./contracts/unichain-130/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| FiaBTC | unknown | polygon | n/a | [`0x60c230...7b061f`](./contracts/polygon-137/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| FiaBTC | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ceda1...0b1e86`](./contracts/hyperliquid-999/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/); hyperliquid `0xf78dcf...4cc9a2` | ⚠️ Unaudited |
| FiaBTC | unknown | base | n/a | [`0x60c230...7b061f`](./contracts/base-8453/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| FiaBTC | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x60c230...7b061f`](./contracts/arbitrum-42161/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/); arbitrum `0xf78dcf...4cc9a2` | ⚠️ Unaudited |
| FiaBTCOFTAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x5098aa...680661`](./contracts/hyperliquid-999/0x5098aa08546728d13fb5801b8eb893e724680661/); hyperliquid `0x8089e6...57e86a`; sei `0xa885d5...ee150f`; sei `0xe35776...514b9b` | ⚠️ Unaudited |
| LPManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60c230...7b061f`](./contracts/ethereum-1/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/); ethereum `0x7427f3...0f9430` | ⚠️ Unaudited |
| LPManager | governance | bsc | n/a | [`0x0ceda1...0b1e86`](./contracts/bsc-56/0x0ceda114f533d540c8af2aeb52942c1a4a0b1e86/) | ⚠️ Unaudited |
| LPManager | unknown | unichain | n/a | 2 deployments: unichain [`0x756bcc...618a3e`](./contracts/unichain-130/0x756bcceeda5737238a5b00915e638dca23618a3e/); unichain `0xafb253...027524` | ⚠️ Unaudited |
| LPManager | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x9b7764...643d17`](./contracts/hyperliquid-999/0x9b7764c6819dcf005436f788e166ee8cec643d17/); hyperliquid `0xcfa380...25e1f7` | ⚠️ Unaudited |
| LPManager | unknown | base | n/a | 2 deployments: base [`0x756bcc...618a3e`](./contracts/base-8453/0x756bcceeda5737238a5b00915e638dca23618a3e/); base `0xafb253...027524` | ⚠️ Unaudited |
| LPManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x756bcc...618a3e`](./contracts/arbitrum-42161/0x756bcceeda5737238a5b00915e638dca23618a3e/); arbitrum `0xafb253...027524` | ⚠️ Unaudited |
| OperatorManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ce121...f61c7d`](./contracts/ethereum-1/0x0ce121f83613f0eaf131ee48204b7101e8f61c7d/); ethereum `0xe6ed12...96b84f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa18e79...fc6453`](./contracts/ethereum-1/0xa18e79f726e59cc9d068c7941cd9c4dc4bfc6453/); ethereum `0xd23e84...42c28d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 5 deployments: bsc [`0x7427f3...0f9430`](./contracts/bsc-56/0x7427f38a490f2c7713679fefa113b448ca0f9430/); bsc `0xafb253...027524`; bsc `0xb93752...58ecf3`; bsc `0xc75de2...a442bd`; bsc `0xcfa380...25e1f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x36a1a6...79f0a7`](./contracts/polygon-137/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); polygon `0x603619...2917e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x756bcc...618a3e`](./contracts/polygon-137/0x756bcceeda5737238a5b00915e638dca23618a3e/); polygon `0xafb253...027524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x36a1a6...79f0a7`](./contracts/sei-1329/0x36a1a65947f48a34d1c93bb1ef88b3652d79f0a7/); sei `0x603619...2917e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | n/a | [`0x60c230...7b061f`](./contracts/sei-1329/0x60c230c38af6d86b0277a98a1caeaa345a7b061f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x756bcc...618a3e`](./contracts/sei-1329/0x756bcceeda5737238a5b00915e638dca23618a3e/); sei `0xafb253...027524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | n/a | [`0xcfa380...25e1f7`](./contracts/sei-1329/0xcfa380e51ab0dbcc1bea7d902f11a2e36325e1f7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x34bee5...624a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d086f...3ddaf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x603619...2917e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa56cac...27256b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ceda1...0b1e86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dca16...05483b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x08145b...50d6ba` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | 2 deployments: sei `0x3a2d69...ac504d`; sei `0x90a755...fa0135` | ❓ Unverified |
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
| [Zenith-Bridge-Cairo-Contract.pdf](https://github.com/fiamma-chain/fiamma-audit/blob/main/Zenith-Bridge-Cairo-Contract.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [11582] BitLabs-Bridge-script.pdf
- [11583] MoveBits-Bridge-Aptos-Contract.pdf

Fork inheritance lineage and inherited audits are included when available.
