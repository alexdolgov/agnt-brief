# Agentic Audit Brief: ODOS

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ODOS (`odos`)
- Website: [https://app.odos.xyz](https://app.odos.xyz)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T10:21:03.732Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, fraxtal, linea, mantle, mode, optimism, polygon, scroll, sonic, unichain, zksync-era
- Contract surface: 94 unique implementations (120 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ODOS is a DEX aggregator that optimizes token swaps across multiple liquidity sources to provide users with the best execution prices. It also supports limit orders, allowing users to set specific price conditions for trades.

### Architecture

The ODOS family represents the current active router (V3), while the V2 SOR Router Deployments are archived legacy contracts. The Limit Order Deployments family operates independently but likely integrates with the same off-chain order matching infrastructure.

## Contract Surface Quality

- Indexed contracts: 601; live-surface contracts included: 120 (118 live, 2 unknown).
- Excluded by liveness: 478 inactive, 3 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/4 (50.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 90
- Unique implementations: 94
- Raw deployments: 120
- Audits discovered: 7
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 4 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 2 | 50.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OdosRouterV2 | adapter | base | n/a | 14 deployments: ethereum `0xcf5540...772559`; optimism `0xca4239...fe9680`; bsc `0x89b8aa...7d850e`; unichain `0x640972...46a1f3`; polygon `0x4e3288...5d92bf`; sonic `0xac041d...5f2e9d`; fraxtal `0x56c85a...e98210`; mantle `0xd9f4e8...c26745`; base [`0x19ceea...6095a1`](./contracts/base-8453/0x19ceead7105607cd444f5ad10dd51356436095a1/); mode `0x7e15eb...784874`; arbitrum `0xa669e7...be4e13`; avalanche `0x88de50...a3e9fc`; linea `0x2d8879...72f414`; scroll `0xbfe03c...35e0b1` | ✅ Audited |
| OdosRouterV3 | adapter | ethereum | n/a | [`0x0d05a7...4a0d05`](./contracts/ethereum-1/0x0d05a7d3448512b78fa8a9e46c4872c88c4a0d05/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OdosLimitOrderRouter | adapter | bsc | n/a | 14 deployments: ethereum `0x5f7963...14dae1`; optimism `0xcbf382...826ef8`; bsc [`0x0d4ab1...1af3b2`](./contracts/bsc-56/0x0d4ab12e62d17f037d43f018da18ff623e1af3b2/); unichain `0x372d96...e2ff2b`; polygon `0x930529...2d5336`; sonic `0xb9cbd8...b7f330`; fraxtal `0x5e0afa...1d9a09`; mantle `0xa05a88...edafbb`; base `0xedeafd...53d97a`; mode `0x8073e2...13e681`; arbitrum `0x743265...3b064e`; avalanche `0xcc0126...0e045e`; linea `0xb3a9b5...741069`; scroll `0x468633...e5deda` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xca73ed...5de679`](./contracts/base-8453/0xca73ed1815e5915489570014e024b7ebe65de679/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (90)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x107d4f...97688b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a22c1...4c1d66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28104d...f33f95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76edf8...5fee99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8376f...eed86d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb28ca7...53cf82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd768d1...54ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebe9bf...a445fa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x525f91...d6bf20` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa565bb...ab9e63` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb8fc6b...f1e77c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbdff6f...3da051` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xda87da...fad046` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf03740...d5237b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb2139...3fd671` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x156062...df1d38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a2bd...be506f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x388084...d6513e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f3454...2d9ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69bac3...f092e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82155e...9639bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88548c...1ded18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b57dc...b2659c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbef11c...769a98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6315d...ae59df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf4234...1ead74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf44f8...ae469f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda4f2e...34a9ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecdfcb...0353e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cb961...acc521` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x221a4c...85ca64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62b3e9...5211a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d3d65...ef103a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb094d9...23a380` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x12b6bc...2a7167` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a40da...71e330` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3a5d6a...116ba3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x535b5c...3d2de1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x53f11e...49e409` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b6631...e6836f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8842a8...3b64f7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x97c16e...b74805` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc7080e...71499e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea2c45...ae5e23` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5e0afa...1d9a09` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd0c22a...12f7cd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x210864...124699` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x221a4c...85ca64` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x261ffd...b71a96` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x413c26...506f42` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6166bd...d7c687` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x765149...261714` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf82ab7...0e14f0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1c4404...1476ff` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3f0f8a...64197f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bba93...20e4f7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x74ab8c...d98e73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60a52d...5b35d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x611787...7c275d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f31b5...207805` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x788257...5bfbd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb6e4...f570dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bc12a...145704` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb44612...8201bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb701cf...94a4d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf44de...f35e09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xebd371...3bb6df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef79d7...7fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01eb9b...c4c84b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03222a...4e25e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05e3d7...0af74a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10c184...1033d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12b6bc...2a7167` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14adf5...28f495` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19ceea...6095a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x220260...ea799d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fed6e...6a3513` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf81342...e4e50c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0df90f...d23340` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28104d...f33f95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38e9fc...1aa9ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f0f8a...64197f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x452064...1ee6c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x523005...f00b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f31b5...207805` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x866bd6...fb8c37` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb44612...8201bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf052ce...d45629` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf73f77...a7de60` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb66e9...f7d35a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/odos) | CertiK | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Odos - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Odos%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | 14 | high |
| [here](https://docs.odos.xyz/assets/files/Odos%20Cross-Chain%20Contracts%20-%20Zellic%20Audit%20Report-de98534d548ea64a891b1d9ecba51aee.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [here](https://docs.odos.xyz/assets/files/Odos%20Router%20V3%20-%20Zellic%20Audit%20Report-0e74f369988309bbd589267e44357d06.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [Halborn Website](https://www.halborn.com/audits/odos/limit-orders) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Odos Cross-Chain Contracts - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Odos%20Cross-Chain%20Contracts%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Odos Router V3 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Odos%20Router%20V3%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0d4ab1...1af3b2`](./contracts/bsc-56/0x0d4ab12e62d17f037d43f018da18ff623e1af3b2/) | OdosLimitOrderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 87 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=20

Zero-match audit list:

- [13603] DL audit link
- [13605] here
- [13607] Halborn Website
- [13608] Odos Cross-Chain Contracts - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
