# Agentic Audit Brief: MCDEX

⚠️ Lifecycle status: DEAD - TVL changed 12.2% over 90 days

## Project Overview

- Project: MCDEX (`mcdex`)
- Website: [https://mux.network/](https://mux.network/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-18T02:28:49.471Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: arbitrum, avalanche, bsc, ethereum, fantom, optimism
- Contract surface: 70 unique implementations (94 raw deployments)
- DeFi Llama TVL: $943,029.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MCDEX was a decentralized perpetual exchange protocol. For the mcdex project key, the legacy MCDEX DefiLlama slug should be treated as ceased/dead, with remaining TVL representing user deposits rather than an active broad MUX/MUX3 protocol surface. MUX/MUX3 successor or rebrand contracts and audits should be scoped separately unless the project is explicitly renamed/rescoped as MUX/MUX3.

### Architecture

The MCDEX family serves as the core perpetual trading engine, while chain-specific families (Arbitrum, Avalanche, BNB Chain, Optimism, Fantom) deploy its infrastructure with shared governance and reward contracts. Cross-chain token bridges (MintSwapCanonicalToken) and adapters (e.g., GmxAdapter) connect liquidity across deployments, and multi-sig addresses provide unified governance.

## Contract Surface Quality

- Indexed contracts: 2584; live-surface contracts included: 94 (70 live, 24 unknown).
- Excluded by liveness: 1990 inactive, 500 singleton, 0 uninitialized.
- Deployment units: 6/226 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/30 (16.7%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 70
- Raw deployments: 94
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/mux/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 4 | 13.3% | 2025-02 |
| CertiK | Tier 2 | 1 | 3.3% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralPool | core_logic | arbitrum | n/a | [`0x2f9ac5...f7b909`](./contracts/arbitrum-42161/0x2f9ac5322e6fac446e0b9861cf7f8a0662f7b909/) | ✅ Audited |
| Delegator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa3b5d8...938cf3`](./contracts/arbitrum-42161/0xa3b5d8ac1074120d702798cee04cf1c49a938cf3/); arbitrum `0xf370b9...75eaef` | ✅ Audited |
| LibOrderBook | unknown | arbitrum | n/a | [`0x1b8ac2...2a63ef`](./contracts/arbitrum-42161/0x1b8ac2bdf693457ab25233f2a2865f3e7d2a63ef/) | ✅ Audited |
| LiquidityPoolHop1 | core_logic | avalanche | n/a | [`0x3d44ef...d66475`](./contracts/avalanche-43114/0x3d44efa23a531fae02d8daf9ee8daaac61d66475/) | ✅ Audited |
| Swapper | adapter | arbitrum | n/a | 6 deployments: arbitrum [`0x36b74e...8e424a`](./contracts/arbitrum-42161/0x36b74e1d00aff68e472dbdcf2e35f085878e424a/); arbitrum `0x37c893...a47837`; arbitrum `0x7f6401...7d1337`; arbitrum `0x91d8c0...2cfeb8`; arbitrum `0xd00594...e85706`; arbitrum `0xd822d7...b703a0` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Diamond | unknown | arbitrum | n/a | [`0x53b472...bde744`](./contracts/arbitrum-42161/0x53b47240f9725c9baf4637a1196b1700cfbde744/) | ⚠️ Unaudited |
| GmxAdapter | adapter | arbitrum | n/a | [`0xf89adc...6b72be`](./contracts/arbitrum-42161/0xf89adc4e0f3659e9b69aa4f8606176e8fd6b72be/) | ⚠️ Unaudited |
| GmxV2Adapter | adapter | arbitrum | n/a | 7 deployments: arbitrum [`0x3038fa...31f1bd`](./contracts/arbitrum-42161/0x3038faa722de6f2c9eac80fb15e75bbfef31f1bd/); arbitrum `0x6ccece...d4cc0c`; arbitrum `0x89258c...4ab600`; arbitrum `0x93c68e...ec92cf`; arbitrum `0xcbe6f7...d87c05`; arbitrum `0xd342b2...91ca22`; arbitrum `0xfe2afa...feb115` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | unit-34152 | [`0x7c8126...8068a5`](./contracts/optimism-10/0x7c8126ef43c09c22bf0ccdf7426180e6c48068a5/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-34170 | [`0xf67d9e...964204`](./contracts/bsc-56/0xf67d9ec4f3362589e56ab0dbee448eb7a4964204/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-34175 | [`0x029a4a...c6bfd6`](./contracts/arbitrum-42161/0x029a4a97e892e7270d9b3b90bfef95599bc6bfd6/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | avalanche | unit-34366 | [`0x8564c7...23fc94`](./contracts/avalanche-43114/0x8564c77261094abeee6d60a26d40f8dbaf23fc94/) | ⚠️ Unaudited |
| LibGmx | unknown | arbitrum | n/a | [`0x11c0c4...603bd9`](./contracts/arbitrum-42161/0x11c0c4dd6ce692b2aa2d65da07aa38687f603bd9/) | ⚠️ Unaudited |
| LibGmxV2 | unknown | arbitrum | n/a | [`0x433f76...bbedfb`](./contracts/arbitrum-42161/0x433f7611ef8176b70469dfda659e554ae2bbedfb/) | ⚠️ Unaudited |
| LibOrderBook2 | unknown | arbitrum | n/a | [`0x0035f6...296059`](./contracts/arbitrum-42161/0x0035f6ca0417cd36eb62764bcbbe163e7d296059/) | ⚠️ Unaudited |
| MarketEventUtils | unknown | arbitrum | n/a | [`0x80c874...e7587b`](./contracts/arbitrum-42161/0x80c874e50017996106baf6d551ed9b0706e7587b/) | ⚠️ Unaudited |
| MarketStoreUtils | unknown | arbitrum | n/a | [`0x46ffa9...a5acec`](./contracts/arbitrum-42161/0x46ffa915d87bf915c2d01ac7d4c1c5338fa5acec/) | ⚠️ Unaudited |
| MarketUtils | unknown | arbitrum | n/a | [`0x2a2987...6b8d9f`](./contracts/arbitrum-42161/0x2a2987c407e76782fc422a27240c9821206b8d9f/) | ⚠️ Unaudited |
| MintSwapCanonicalToken | token | optimism | n/a | 7 deployments: optimism [`0x050947...ef0f17`](./contracts/optimism-10/0x0509474f102b5cd3f1f09e1e91feb25938ef0f17/); bsc `0x07145a...b475a7`; bsc `0x81421a...26360c`; bsc `0xf23443...408108`; arbitrum `0x746ba4...b9c3dc`; avalanche `0xaf2d36...94e390`; avalanche `0xde5384...5ff842` | ⚠️ Unaudited |
| Mux3Rebalancer | adapter | arbitrum | unit-34246 (2 proxies) | 2 deployments: arbitrum [`0x6fded1...4d2705`](./contracts/arbitrum-42161/0x6fded16b69ca396e437af47bdad1d0352e4d2705/); arbitrum `0xe27ca8...757029` | ⚠️ Unaudited |
| MuxLpOracle | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x1dc6de...3cb1cf`](./contracts/arbitrum-42161/0x1dc6de1bba19e04c069da8d0a8f367ace33cb1cf/); arbitrum `0x324691...635349`; arbitrum `0x8a71e5...72dbf2`; arbitrum `0xa2288d...58dd58` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | arbitrum | n/a | [`0xea4b1b...a4a58b`](./contracts/arbitrum-42161/0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b/) | ⚠️ Unaudited |
| Perpetual | unknown | ethereum | n/a | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | ⚠️ Unaudited |
| PositionStoreUtils | unknown | arbitrum | n/a | [`0xe1645e...f94f8e`](./contracts/arbitrum-42161/0xe1645e6a4e166ce4811f9fd559b895a9c3f94f8e/) | ⚠️ Unaudited |
| PositionUtils | unknown | arbitrum | n/a | [`0x19b9ec...4f1d8b`](./contracts/arbitrum-42161/0x19b9ecd3fa2dc9272cd815ee05f300534b4f1d8b/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x2257dc...34ed3f`](./contracts/arbitrum-42161/0x2257dc42b363d611898057354c031a670934ed3f/); arbitrum `0x67740d...e58508`; arbitrum `0xe75278...c801e9` | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0xe56a0a...e2b29c`](./contracts/arbitrum-42161/0xe56a0a38c6085c748638948e2c224f98c1e2b29c/) | ⚠️ Unaudited |
| ReaderLite | unknown | arbitrum | n/a | [`0x436c9b...6af525`](./contracts/arbitrum-42161/0x436c9b6182e96b0526dd12f041730854756af525/) | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | arbitrum | n/a | [`0xf61da3...ec6c2c`](./contracts/arbitrum-42161/0xf61da339230c4bb7cafa444bd7ffa4d5d5ec6c2c/) | ⚠️ Unaudited |
| SwapPricingUtils | unknown | arbitrum | n/a | [`0x985c24...79b89c`](./contracts/arbitrum-42161/0x985c24816385c4cce9fa48ca484fa174a279b89c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x0b70ad...ecd07c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0c30b1...5a965b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1305b2...619fd4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x13ccb7...892861` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2e81f4...1a88e6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x30acc1...2f707e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3efe46...5bf82b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x450d81...bf9718` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x480894...91df89` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x55214e...7a9fb6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5898c3...ea2add` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x746ba4...b9c3dc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9d4a8d...7e95ae` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9ea320...ba2adc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb5e423...4f594d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc70107...f04878` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc9296e...f0b404` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdaf206...a99683` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xddade9...39edd2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe60061...5cf8ff` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe6f4e8...7cd8c3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe780d9...1ae9c7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf16f66...63e424` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfcca7f...e9647a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f3f4d...b39d10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43d783...c18e2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4aaf78...8ff455` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57b73a...71e89f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63d0ce...558244` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x724ab9...f21b4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a1bdc...a1fe03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dfb2d...310bd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa2067...dd8fe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc74b3...e599c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcaadf...90d355` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbba17...736a4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd10ab...c97273` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4ce14...3d8dec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2ab53...99cf3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe48a7...081ee0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-Audit-20220601.pdf](https://github.com/mux-world/mux-protocol/blob/main/audit/Certik-Audit-20220601.pdf) | CertiK | Audit | 2022-06 | stale | Direct | contract_name | 1 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/mux/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [DL audit link](https://skynet.certik.com/projects/mux-protocol) | CertiK | Audit | 2022-06 | stale | Direct | contract_name | 0 | n/a |
| [* MUX V3 Trading Protocol contracts have been audited by [Guardian](https://guardianaudits.com/). Please check [here]()](https://github.com/mux-world/mux3-protocol/blob/main/audit/MUX%203%20Protocol%20Report.pdf) | Guardian | Audit | 2025-02 | aging | Direct | contract_name | 10 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x53b472...bde744`](./contracts/arbitrum-42161/0x53b47240f9725c9baf4637a1196b1700cfbde744/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3038fa...31f1bd`](./contracts/arbitrum-42161/0x3038faa722de6f2c9eac80fb15e75bbfef31f1bd/) | GmxV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11c0c4...603bd9`](./contracts/arbitrum-42161/0x11c0c4dd6ce692b2aa2d65da07aa38687f603bd9/) | LibGmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x433f76...bbedfb`](./contracts/arbitrum-42161/0x433f7611ef8176b70469dfda659e554ae2bbedfb/) | LibGmxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0035f6...296059`](./contracts/arbitrum-42161/0x0035f6ca0417cd36eb62764bcbbe163e7d296059/) | LibOrderBook2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a2987...6b8d9f`](./contracts/arbitrum-42161/0x2a2987c407e76782fc422a27240c9821206b8d9f/) | MarketUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x050947...ef0f17`](./contracts/optimism-10/0x0509474f102b5cd3f1f09e1e91feb25938ef0f17/) | MintSwapCanonicalToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dc6de...3cb1cf`](./contracts/arbitrum-42161/0x1dc6de1bba19e04c069da8d0a8f367ace33cb1cf/) | MuxLpOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xea4b1b...a4a58b`](./contracts/arbitrum-42161/0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b/) | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | Perpetual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19b9ec...4f1d8b`](./contracts/arbitrum-42161/0x19b9ecd3fa2dc9272cd815ee05f300534b4f1d8b/) | PositionUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x436c9b...6af525`](./contracts/arbitrum-42161/0x436c9b6182e96b0526dd12f041730854756af525/) | ReaderLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=445

Zero-match audit list:

- [11956] DL audit link

Fork inheritance lineage and inherited audits are included when available.
