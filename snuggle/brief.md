# Agentic Audit Brief: Snuggle

## Project Overview

- Project: Snuggle (`snuggle`)
- Website: [https://snuggle.fi/](https://snuggle.fi/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-19T06:14:39.041Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base
- Contract surface: 23 unique implementations (57 raw deployments)
- DeFi Llama TVL: $1,001,156.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Snuggle is a liquidity manager that automates concentrated liquidity positions across multiple decentralized exchanges. It uses vaults to manage user deposits and optimize yields through position adapters and reward strategies.

### Architecture

Both families share the same core vault logic (SnuggleVaultUpgradeable) and adapter pattern, but the Snuggle family extends functionality with reward adapters, governance contracts, and additional DEX support. The Base family appears to be a subset deployment, while the Snuggle family represents the full protocol suite with shared infrastructure like proxy admin and staking.

## Contract Surface Quality

- Indexed contracts: 142; live-surface contracts included: 57 (56 live, 1 unknown).
- Excluded by liveness: 61 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 1/13 live.
- Detected codebases: none
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 12/23 (52.2%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 57
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 52.2% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromePositionAdapter | adapter | base | n/a | 2 deployments: base [`0x0aedee...9794d1`](./contracts/base-8453/0x0aedeed5ad8d45d3d928fb872161efaa559794d1/); base `0xe3efa7...f79589` | ✅ Audited |
| AerodromeRewardAdapter | adapter | base | n/a | [`0xcb16cb...d77306`](./contracts/base-8453/0xcb16cb2cd32768c65418b22385888bd2c8d77306/) | ✅ Audited |
| FeeTransferHelper | periphery | arbitrum | n/a | 3 deployments: base `0x613ba8...28b1f3`; arbitrum [`0x59c2a1...349461`](./contracts/arbitrum-42161/0x59c2a172e52a61c4f1bb6dbdcab41b76d9349461/); arbitrum `0xbfd8cf...0cabae` | ✅ Audited |
| PancakeSwapPositionAdapter | adapter | base | n/a | 4 deployments: base [`0x0c0ba0...1b39e5`](./contracts/base-8453/0x0c0ba0b81a4ac60321c2414bdcef24c5851b39e5/); base `0xad35ec...bf0a71`; arbitrum `0x78bb36...bd4589`; arbitrum `0xf20bc2...2b84d9` | ✅ Audited |
| PancakeSwapRewardAdapter | adapter | arbitrum | n/a | 4 deployments: base `0x63de14...18b1cf`; arbitrum [`0x4cd1a0...62a065`](./contracts/arbitrum-42161/0x4cd1a0b610117a688998325e3779e858ff62a065/); arbitrum `0x6af9c5...8d19a8`; arbitrum `0xb668e7...69f7c9` | ✅ Audited |
| ProxyAdmin | governance | base | n/a | 3 deployments: base [`0x269dc2...cca86f`](./contracts/base-8453/0x269dc2f974abed1c7a55a447758fcaef2dcca86f/); arbitrum `0x8bca45...e037df`; arbitrum `0x999a74...a891de` | ✅ Audited |
| ReferralTracker | unknown | base | n/a | 3 deployments: base [`0x2536a7...68d9ee`](./contracts/base-8453/0x2536a771111861bc0be61bd986f0c2dc0f68d9ee/); arbitrum `0x6915b5...01cd00`; arbitrum `0xb52cca...e4705e` | ✅ Audited |
| SnuggleRebalanceLib | unknown | base | n/a | [`0xf84b57...1dcddc`](./contracts/base-8453/0xf84b575e4e6d9fc07a3f2b863cb6a23cc11dcddc/) | ✅ Audited |
| StakingManager | governance | arbitrum | n/a | 3 deployments: base `0x3f928d...a270c1`; arbitrum [`0x020ed2...9948bd`](./contracts/arbitrum-42161/0x020ed29a0b1ced89c4309b32709a2a97699948bd/); arbitrum `0xd977c0...e2b40d` | ✅ Audited |
| TreasurySplitter | operational_periphery | arbitrum | n/a | 3 deployments: base `0x93d0d1...a9ec12`; arbitrum [`0x8c7d96...c176f6`](./contracts/arbitrum-42161/0x8c7d966b6bee480bf96b41870ccb89559ac176f6/); arbitrum `0xafe51c...84c92a` | ✅ Audited |
| UniswapV3Adapter | adapter | arbitrum | n/a | 4 deployments: base `0xca4cf9...debabd`; base `0xf757c9...f33010`; arbitrum [`0x76bdb4...c44ef2`](./contracts/arbitrum-42161/0x76bdb43d2ec3b190087076649224f47a58c44ef2/); arbitrum `0xa6e465...be082c` | ✅ Audited |
| ViewHelper | periphery | arbitrum | n/a | 4 deployments: base `0x286490...ce18bd`; base `0x298028...976a1c`; arbitrum [`0x0ef66d...3da5b6`](./contracts/arbitrum-42161/0x0ef66de171293285a8f8ffd0d0d564ca093da5b6/); arbitrum `0x4a14af...a19df9` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotPositionAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x19ec46...47f217`](./contracts/arbitrum-42161/0x19ec46eb3cbcec146de2d9b4336187e4f147f217/); arbitrum `0xbfbf7d...9a8956` | ⚠️ Unaudited |
| KeepersHelper | operational_periphery | arbitrum | n/a | 5 deployments: base `0x60431b...563345`; arbitrum [`0x0e7edc...8f9869`](./contracts/arbitrum-42161/0x0e7edc3856349ed0126f863cc39fc9bc008f9869/); arbitrum `0x408229...ea716f`; arbitrum `0x71b55e...7f30f7`; arbitrum `0xc962c9...8ad7d6` | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x80c7dd...a314de`](./contracts/arbitrum-42161/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | n/a | [`0x0fc730...4fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/) | ⚠️ Unaudited |
| QuoterV2 | periphery | arbitrum | n/a | [`0xb048bb...e25997`](./contracts/arbitrum-42161/0xb048bbc1ee6b733fffcfb9e9cef7375518e25997/) | ⚠️ Unaudited |
| SliverConfig | governance | arbitrum | n/a | [`0xe7b13b...e299f1`](./contracts/arbitrum-42161/0xe7b13bb95d5fc2ae028187d50e4f083573e299f1/) | ⚠️ Unaudited |
| SnuggleHedgeHelper | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x8b3a79...03ef9f`](./contracts/arbitrum-42161/0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f/); arbitrum `0xb1364a...feada7` | ⚠️ Unaudited |
| SnuggleVaultAdminSatellite | core_logic | arbitrum | n/a | 3 deployments: base `0x5a332c...e4d271`; arbitrum [`0x1195c0...fe6dce`](./contracts/arbitrum-42161/0x1195c074f898b7644ba732407619c9804dfe6dce/); arbitrum `0x454059...d7d3f4` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x1638b6...894f9d`](./contracts/arbitrum-42161/0x1638b6a0477bf09163531279dc535d6c40894f9d/); arbitrum `0x572351...9cd430`; arbitrum `0xa86b81...a85c68` | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x1b81d6...13eb14`](./contracts/arbitrum-42161/0x1b81d678ffb9c0263b24a97847620c99d213eb14/); arbitrum `0xa55582...839ef5` | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | unit-35995 | [`0x1f721e...339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | ⚠️ Unaudited |

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
| [DL audit link](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [security review](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 35 | high |
| [AUDIT PARTNERAudited by Valves SecurityValves Security is one of the top security firms in the industry. We have also been audited by multiple independent researchers and white hat groups, with more third-party audits to come.Visit Valves Security →](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0e7edc...8f9869`](./contracts/arbitrum-42161/0x0e7edc3856349ed0126f863cc39fc9bc008f9869/) | KeepersHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe7b13b...e299f1`](./contracts/arbitrum-42161/0xe7b13bb95d5fc2ae028187d50e4f083573e299f1/) | SliverConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b3a79...03ef9f`](./contracts/arbitrum-42161/0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f/) | SnuggleHedgeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1195c0...fe6dce`](./contracts/arbitrum-42161/0x1195c074f898b7644ba732407619c9804dfe6dce/) | SnuggleVaultAdminSatellite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1638b6...894f9d`](./contracts/arbitrum-42161/0x1638b6a0477bf09163531279dc535d6c40894f9d/) | SnuggleVaultUpgradeable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 9 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=36

Zero-match audit list:

- [3119] DL audit link
- [11989] AUDIT PARTNERAudited by Valves SecurityValves Security is one of the top security firms in the industry. We have also been audited by multiple independent researchers and white hat groups, with more third-party audits to come.Visit Valves Security →

Fork inheritance lineage and inherited audits are included when available.
