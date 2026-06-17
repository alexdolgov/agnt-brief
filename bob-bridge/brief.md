# Agentic Audit Brief: BOB Bridge

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:35.677Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 28 unique implementations (56 raw deployments)
- DeFi Llama TVL: $2,692,052.74
- On-chain TVL (included contracts): $202,895.03
- TVL by chain: Ethereum $202,895.03

## Project Description

The DefiLlama bob-bridge entry tracks TVL associated with bridging into the BOB ecosystem. BOB is a Bitcoin-focused EVM L2 / hybrid chain ecosystem for Bitcoin DeFi, combining OP Stack rollup components with products such as BOB Gateway, native BTC access and bridging, BitVM-based Bitcoin security/interop plans, swaps, earn and borrow use cases, and multichain BTC interoperability. Its bridge surface should therefore be described as BOB bridge/TVL infrastructure within this broader Bitcoin DeFi and EVM L2 ecosystem, not only as a generic Ethereum-to-BOB ERC-20, USDC, and NFT bridge.

### Architecture

The BOB Bridge family relies on the Ethereum (L1) family's OP Stack contracts for cross-chain messaging and asset custody. The L1StandardBridge and OptimismPortal2 are shared between the generic L1 infrastructure and the BOB-specific bridge components, while the L2 network uses the L1 dispute and messaging contracts for security.

## Contract Surface Quality

- Indexed contracts: 107; live-surface contracts included: 56 (44 live, 12 unknown).
- Excluded by liveness: 29 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 5/20 live.
- Detected codebases: none
- Unverified dependencies: 64/83.

## Audit Coverage Summary

- Verified implementations audited: 0/28 (0.0%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 28
- Raw deployments: 56
- Audits discovered: 9
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $202,895.03
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 4 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SideToken | token | ethereum | n/a | 2 deployments: ethereum [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/); ethereum `0xbdbb63...323dd1` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0xd0216b...535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | unit-19829 | [`0x96123d...9b1079`](./contracts/ethereum-1/0x96123dbfc3253185b594c6a7472ee5a21e9b1079/) | ⚠️ Unaudited |
| FusionLock | unknown | ethereum | n/a | [`0x61dc14...ce6ff7`](./contracts/ethereum-1/0x61dc14b28d4dbcd6cf887e9b72018b9da1ce6ff7/) | ⚠️ Unaudited |
| KailuaGame | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/); ethereum `0xd37b0b...9e742b`; ethereum `0xe34577...9ca82a`; ethereum `0xe43415...7a053b` | ⚠️ Unaudited |
| KailuaTreasury | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/); ethereum `0x9b3e16...e9263c`; ethereum `0xe99af5...5fb895` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x5d5a09...033e8b`](./contracts/ethereum-1/0x5d5a095665886119693f0b41d8dfee78da033e8b/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | [`0x7ae1d3...c98013`](./contracts/ethereum-1/0x7ae1d3bd877a4c5ca257404ce26be93a02c98013/) | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x0b09ba...7d2a7a`](./contracts/ethereum-1/0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-19822 | [`0x3f6ce1...4ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | unit-19833 | [`0xdda53e...db11c1`](./contracts/ethereum-1/0xdda53e23f8a32640b04d7256e651c1db98db11c1/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17c64e...7195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/); ethereum `0xf027f4...d15dc1` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OPContractsManager | governance | ethereum | n/a | [`0xdfe652...96ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | ethereum | n/a | [`0x2c2da5...2fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0x5493f4...63988f`](./contracts/ethereum-1/0x5493f4677a186f64805fe7317d6993ba4863988f/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b172b...415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/); ethereum `0xb443da...0d6fb4` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | 16 deployments: ethereum [`0x0605f3...8cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/); ethereum `0x07e50a...1ab70b`; ethereum `0x1ffc35...e996a5`; ethereum `0x2dd081...6f15b2`; ethereum `0x33f9c5...a710a3`; ethereum `0x469593...e05dad`; ethereum `0x6753df...2f6776`; ethereum `0x6a3868...21b05e`; ethereum `0x703db8...4914ca`; ethereum `0x7342e0...3ec237`; ethereum `0x7fe001...7d87db`; ethereum `0x82e562...26c8e1`; ethereum `0xa5d58a...e39084`; ethereum `0xbcee72...16fb8b`; ethereum `0xc7bef1...8bc630`; ethereum `0xe3bd00...38702a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xee74fd...79fa7a` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x11c03c...5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/); ethereum `0xb9d8f5...17aad4` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x43ca78...89d12f`](./contracts/ethereum-1/0x43ca789d45234c2251de20da39fdfb272c89d12f/); ethereum `0xa70ddf...703e1c`; ethereum `0xb4899f...fad0b5` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | periphery | ethereum | n/a | [`0x08aed6...056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/) | ⚠️ Unaudited |
| RiscZeroVerifierRouter | adapter | ethereum | n/a | [`0x8eab2d...93d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | unit-19818 (2 proxies) | 2 deployments: ethereum [`0x097f99...9d53cc`](./contracts/ethereum-1/0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc/); ethereum `0xe92520...965c46` | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-19827 | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x0b144e...6fb711`](./contracts/ethereum-1/0x0b144e07a0826182b6b59788c34b32bfa86fb711/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | Contest | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/) | SideToken | token | $202,895.03 | Verified native implementation with $202,895.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0216b...535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61dc14...ce6ff7`](./contracts/ethereum-1/0x61dc14b28d4dbcd6cf887e9b72018b9da1ce6ff7/) | FusionLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/) | KailuaGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f6ce1...4ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b172b...415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 10 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [2712] BOB-Onramp-security-review.pdf
- [2713] BOB-Staking-security-review_2025-10-18.pdf
- [2714] BOB-USDCBridge-security-review.pdf
- [2715] BOB-security-review-August.pdf
- [2716] BOB-security-review-June.pdf
- [2717] BOB-security-review-September.pdf
- [2718] BOB-security-review_2025-03-17.pdf
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
