# Agentic Audit Brief: Sorare Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sorare Bridge (`sorare-bridge`)
- Website: [https://sorare.com/](https://sorare.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 67 unique implementations (211 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,840,787.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sorare Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: none
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Proxy (`0xf5c9f9...995826`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 1 of 67 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 67
- Raw deployments: 211
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllVerifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5d8cc5...012ac5`; ethereum `0x61d338...57bf4b`; ethereum `0x62bca4...a25379`; ethereum `0xf65c11...bc9d57`; ethereum `0xfbea22...815f12` | ⚠️ Unaudited |
| CairoBootloaderProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x18186a...011db8`; ethereum `0x1dd894...d02e2d`; ethereum `0x2503ed...2a5576`; ethereum `0x33e759...17e387`; ethereum `0xabf068...82c115` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f58e2...ee41a0`; ethereum `0x1fee20...39aa43`; ethereum `0xb2419f...ca5c6f` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2cabd6...3570ae`; ethereum `0xd4c404...d3f458` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x473124...5bdb60` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc8c212...0eb46c`; ethereum `0xcc5b2c...3c92f2` | ⚠️ Unaudited |
| Committee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x16ba0f...0aa295`; ethereum `0x1e6014...6169cb`; ethereum `0x879cd5...bbbe32`; ethereum `0x894729...7a32c0`; ethereum `0x8a8e80...2e2bb1`; ethereum `0x90ceb3...ee9542` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x087452...e7fe6a`; ethereum `0x140586...b16e23`; ethereum `0x16c65b...9e1435`; ethereum `0x1f5459...8d9d13`; ethereum `0x5e1cc8...adb387`; ethereum `0x5f1a71...d249ea`; ethereum `0x7737ae...e90e46`; ethereum `0x8d588a...31f3d1`; ethereum `0x913527...8c954a`; ethereum `0x986083...94380a`; ethereum `0x98bfc8...da2035`; ethereum `0xa5e413...44af64`; ethereum `0xaa766b...192b17`; ethereum `0xbd01f2...ae7e2d`; ethereum `0xc31f31...c46527`; ethereum `0xc3c63f...6ae01e`; ethereum `0xcd05ae...a231d5`; ethereum `0xdf9929...1ef52b`; ethereum `0xf15f83...6df027`; ethereum `0xf17bcb...d83212`; ethereum `0xf8b8d5...d1ab93`; ethereum `0xfd0068...92431a` | ⚠️ Unaudited |
| CpuFrilessVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x024b2f...eee393`; ethereum `0x04d4e6...fe6d73`; ethereum `0x17a571...6f08d8`; ethereum `0x2ac2e9...eb461a`; ethereum `0x2d70ec...93a604`; ethereum `0x4922f8...308863`; ethereum `0x52ab70...933f5a`; ethereum `0x5cf08f...f04279`; ethereum `0x5f7bb9...5a8563`; ethereum `0x7a4f7a...b3d8d3`; ethereum `0x92043f...abe513`; ethereum `0x975dbd...c1a33d`; ethereum `0xaf7ceb...8643af`; ethereum `0xb6ee53...39c927`; ethereum `0xceab2e...3aa325`; ethereum `0xe1e66e...db9d57`; ethereum `0xe6557b...7f4e93`; ethereum `0xeca5da...bc10a3`; ethereum `0xef6476...a4e1ba`; ethereum `0xf1e64e...f167ea`; ethereum `0xf85849...aaedca`; ethereum `0xfedc9d...287f9e` | ⚠️ Unaudited |
| CpuOods | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x0c6dec...7799b5`; ethereum `0x1144d6...9bbe43`; ethereum `0x3016f9...f3897b`; ethereum `0x4df0ad...7ec10a`; ethereum `0x4f4451...d3c79e`; ethereum `0x4f7952...288938`; ethereum `0x85c0fc...7726c2`; ethereum `0x897c26...0cfc66`; ethereum `0x8ad328...25b129`; ethereum `0x9a7201...cf6e54`; ethereum `0xa7abcd...968490`; ethereum `0xa98f9c...7b89e4`; ethereum `0xb597f7...e6874d`; ethereum `0xb755f6...3a1f12`; ethereum `0xc22fea...c1b7de`; ethereum `0xc874c0...2d81ef`; ethereum `0xe97ca0...7b8302`; ethereum `0xf2add9...f59625`; ethereum `0xf336bc...624a4c`; ethereum `0xf35f6d...794983`; ethereum `0xf769f7...87a6b3`; ethereum `0xfceeb1...f9f2f9` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0b2d74...05a6b5`; ethereum `0x52c4bb...5fb3c5`; ethereum `0x8528e4...1dd321`; ethereum `0x8a9edf...e7c13f`; ethereum `0xace04f...6fb547` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0xc5ca4c...2abd8a`; ethereum `0xcc45ee...ee0790`; ethereum `0xd14fd3...013a15`; ethereum `0xfc4988...e9437c`; ethereum `0xffc5df...fd9457` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8b2d...bc4446` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8260d7...ea2ece`; ethereum `0x8ab85d...5532f4` | ⚠️ Unaudited |
| ForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07228f...dd8764`; ethereum `0x0d7c8d...fe083a`; ethereum `0x3799ad...d437a1` | ⚠️ Unaudited |
| FriStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x689f88...443045`; ethereum `0x932457...474363`; ethereum `0xe74999...c1064b`; ethereum `0xecf98a...9eda6d`; ethereum `0xf6b83c...c5e1b1` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcc9289...f9fd2b` | ⚠️ Unaudited |
| GpsFactRegistryAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x472fa7...917388`; ethereum `0x5339ab...db5143`; ethereum `0x575dd6...60b531`; ethereum `0x6e3abc...8b3bae`; ethereum `0x733872...ddd1fb`; ethereum `0xfa6a50...a9e16d` | ⚠️ Unaudited |
| GpsStatementVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x45769d...630f17`; ethereum `0x522b28...905068`; ethereum `0x894c4a...8b7fc3`; ethereum `0x9bca5c...cac1f8`; ethereum `0xa739b1...ac338f`; ethereum `0xb1eda3...b32b84` | ⚠️ Unaudited |
| MemoryPageFactRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x076cf2...8479e5`; ethereum `0x280675...3edecd`; ethereum `0x963750...bfdd8b`; ethereum `0xa9b7e2...0dfd2e`; ethereum `0xefbcce...9acef8` | ⚠️ Unaudited |
| MerkleStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01378d...5bcca0`; ethereum `0x03e291...0821fe`; ethereum `0x0d62ba...57a830`; ethereum `0x26ec18...e0d386`; ethereum `0xfc359d...902607` | ⚠️ Unaudited |
| ModifyUpgradeDelayExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00e34...8b6d49` | ⚠️ Unaudited |
| OnchainVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1688ab...b5d339`; ethereum `0x2d5428...8e720a`; ethereum `0xb2ed00...98f31f` | ⚠️ Unaudited |
| OrderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x518c4a...14ddf8`; ethereum `0x806d43...b97fe6`; ethereum `0x886322...90c0bd` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x8426e8...bf3e41`; ethereum `0x9bcf13...a3456d`; ethereum `0xb2f8b8...efee54`; ethereum `0xc91a01...47986f`; ethereum `0xf7896d...658e2d` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0fed12...4fec92`; ethereum `0x4a971c...75a0d1`; ethereum `0x8c2a01...14516f`; ethereum `0xbbaf3b...3dde07`; ethereum `0xd85c64...609928` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c075a...617378`; ethereum `0x626211...11f3dd` | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc43f55...6b4ea3` | ⚠️ Unaudited |
| PerpetualState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9c11...40d4a0` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3fed7b...368545`; ethereum `0xebfea8...fd2481` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x970d1f...811c7f`; ethereum `0xb3788a...132be6`; ethereum `0xb53532...6e50db` | ⚠️ Unaudited |
| ReplaceEscapeVerifierExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bb55...eca560` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1390f5...a27a07`; ethereum `0x3071be...2714e7`; ethereum `0xc0251e...ba491a` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x49401d...ac7378`; ethereum `0x4edd62...a7ac9b`; ethereum `0x7d2375...f9a055`; ethereum `0xb8563a...6f43ac`; ethereum `0xe6785c...caffee` | ⚠️ Unaudited |
| StarkExchange | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392763 | `0xf5c9f9...995826` | ⚠️ Unaudited |
| StarkExchangeMigrationV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5fdcca...8e27e9` | ⚠️ Unaudited |
| StarkExState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c3a4e...9929a2`; ethereum `0x4b9b30...2af010`; ethereum `0x86d8f9...e13773`; ethereum `0xedb67d...e4793a` | ⚠️ Unaudited |
| Starknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc109c...2a6955` | ⚠️ Unaudited |
| StarknetERC20Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e233...2a381b` | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xbb3400...747605`; ethereum `0xf6080d...f92816` | ⚠️ Unaudited |
| StarknetEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f3...6dbe37` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xae0ee0...48d419` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x283751...d9b5b4` | ⚠️ Unaudited |
| StarkPerpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5a7a...cfe643` | ⚠️ Unaudited |
| StarkPerpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c0df8...1cc2d3`; ethereum `0xd54f50...2d69c8` | ⚠️ Unaudited |
| TokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2dbc18...912afb`; ethereum `0x853685...467687`; ethereum `0x97aa96...bd529e`; ethereum `0xa4e952...00469e`; ethereum `0xf677a1...d57713` | ⚠️ Unaudited |
| TransferRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9a12...70d27a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020517...1f43bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b72b9...b7d322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f400c...190c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2823d6...544b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae851...cfc859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45697c...e6784f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x514393...de1e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x579b2d...55a589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59aafd...1646a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eab21...df77be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64e48e...0db43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655584...639d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f6e52...bfd614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fb...52e096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0dff...39bf10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd387d1...030c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75f0b...825fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe75534...f3f9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5af62...6dd2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc126e...f6f5a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf5c9f9...995826` | StarkExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
