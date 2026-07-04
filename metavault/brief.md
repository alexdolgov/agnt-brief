# Agentic Audit Brief: Metavault

## Project Overview

- Project: Metavault (`metavault`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.680Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum, linea, polygon
- Contract surface: 30 unique implementations (31 raw deployments)
- DeFi Llama TVL: $10,349.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 59 project-authored contract(s) across 4 chain(s); 14 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 11 common project-authored base contract(s) (metavaultac, governable, mintablebasetoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 102; live-surface contracts included: 31 (14 live, 17 unknown).
- Excluded by liveness: 71 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/13 (7.7%)
- Deployed-live implementations: 13 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 30
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 7.7% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MVX | unknown | polygon | n/a | [`0x2760e4...9f0ed7`](./contracts/polygon-137/0x2760e46d9bb43dafcbecaad1f64b93207f9f0ed7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EsMVX | unknown | polygon | n/a | [`0xd1b2f8...2ead61`](./contracts/polygon-137/0xd1b2f8dff8437be57430ee98767d512f252ead61/) | ⚠️ Unaudited |
| GMVDToken | token | arbitrum | n/a | [`0xfa6929...05679b`](./contracts/arbitrum-42161/0xfa69292726a53d62111c9485c03ac551ba05679b/) | ⚠️ Unaudited |
| GovernanceStaking | unknown | ethereum | n/a | [`0x421624...243b4d`](./contracts/ethereum-1/0x42162457006db4da3a7af5b53dfee5a891243b4d/) | ⚠️ Unaudited |
| MetaVaultAuthority | unknown | ethereum | n/a | [`0x5f11c6...119ac7`](./contracts/ethereum-1/0x5f11c6a8d68cf890ea3c99db1a2a517aba119ac7/) | ⚠️ Unaudited |
| MVD | unknown | ethereum | n/a | [`0x788b6d...1339d1`](./contracts/ethereum-1/0x788b6d2b37aa51d916f2837ae25b05f0e61339d1/) | ⚠️ Unaudited |
| MVLP | unknown | polygon | n/a | [`0x9f4f8b...43a2e8`](./contracts/polygon-137/0x9f4f8bc00f48663b7c204c96b932c29ccc43a2e8/) | ⚠️ Unaudited |
| MvxUnstaker | core_logic | polygon | n/a | [`0x2dca70...5ed986`](./contracts/polygon-137/0x2dca70cf14f9e07ed568432bf6979719455ed986/) | ⚠️ Unaudited |
| NewVester | operational_periphery | polygon | n/a | [`0x543e07...a8db0b`](./contracts/polygon-137/0x543e07eb4a260e10310fbcf2403e97c762a8db0b/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x5979c5...3e7b36`](./contracts/linea-59144/0x5979c5315625276ff99a56f95ee5cc44293e7b36/) | ⚠️ Unaudited |
| StakedMvxTracker | token | polygon | n/a | 2 deployments: polygon [`0xa6ca41...16d59a`](./contracts/polygon-137/0xa6ca41bbf555074ed4d041c1f4551ef48116d59a/); polygon `0xabd6c7...7072eb` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x15a808...c382b5`](./contracts/arbitrum-42161/0x15a808ed3846d25e88ae868de79f1bcb1ac382b5/) | ⚠️ Unaudited |
| VesterWithRatio | operational_periphery | polygon | n/a | [`0x7d3d31...f543fd`](./contracts/polygon-137/0x7d3d31754c11b7409984f421fa9bcd4feaf543fd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1b6c26...75f6a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x413d04...321b2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x436ea1...3a7178` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x13eb69...ade8c0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19dafd...565d7c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2a3d06...21ffaf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6a3e03...6823b0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9a28a6...8c8bf6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9a555c...914c9e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xabdaa6...76e59b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb4a922...9f22fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd41881...3f9b5a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd8ab82...f0c497` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdb6db9...d6724b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd1ba7...0ac9b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3ef1c...599883` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf72c33...f0a5eb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Metavault.Trade_Full_Smart_Contract_Security_Audit.pdf](https://github.com/metavaultorg/trade-contracts/blob/main/Metavault.Trade_Full_Smart_Contract_Security_Audit.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xd1b2f8...2ead61`](./contracts/polygon-137/0xd1b2f8dff8437be57430ee98767d512f252ead61/) | EsMVX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfa6929...05679b`](./contracts/arbitrum-42161/0xfa69292726a53d62111c9485c03ac551ba05679b/) | GMVDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x421624...243b4d`](./contracts/ethereum-1/0x42162457006db4da3a7af5b53dfee5a891243b4d/) | GovernanceStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f11c6...119ac7`](./contracts/ethereum-1/0x5f11c6a8d68cf890ea3c99db1a2a517aba119ac7/) | MetaVaultAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x788b6d...1339d1`](./contracts/ethereum-1/0x788b6d2b37aa51d916f2837ae25b05f0e61339d1/) | MVD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f4f8b...43a2e8`](./contracts/polygon-137/0x9f4f8bc00f48663b7c204c96b932c29ccc43a2e8/) | MVLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2dca70...5ed986`](./contracts/polygon-137/0x2dca70cf14f9e07ed568432bf6979719455ed986/) | MvxUnstaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x543e07...a8db0b`](./contracts/polygon-137/0x543e07eb4a260e10310fbcf2403e97c762a8db0b/) | NewVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5979c5...3e7b36`](./contracts/linea-59144/0x5979c5315625276ff99a56f95ee5cc44293e7b36/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6ca41...16d59a`](./contracts/polygon-137/0xa6ca41bbf555074ed4d041c1f4551ef48116d59a/) | StakedMvxTracker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15a808...c382b5`](./contracts/arbitrum-42161/0x15a808ed3846d25e88ae868de79f1bcb1ac382b5/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7d3d31...f543fd`](./contracts/polygon-137/0x7d3d31754c11b7409984f421fa9bcd4feaf543fd/) | VesterWithRatio | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
