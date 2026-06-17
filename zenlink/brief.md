# Agentic Audit Brief: Zenlink

⚠️ Lifecycle status: DECLINING - TVL dropped 1.4% over 90 days

## Project Overview

- Project: Zenlink (`zenlink`)
- Website: [https://zenlink.pro](https://zenlink.pro)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:42.676Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: moonbeam, moonriver
- Contract surface: 7 unique implementations (14 raw deployments)
- DeFi Llama TVL: $3,863,075.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zenlink is a Polkadot-ecosystem cross-chain decentralized exchange (DEX) and AMM protocol, with deployments and liquidity across chains including Bifrost, Astar, Moonbeam, and Moonriver. It supports token swaps, liquidity provision, and fee earning through liquidity pools, including standard AMM and stable-swap functionality. The currently listed contract surface covers only Moonbeam and Moonriver and should not be treated as representative of Zenlink's full current cross-chain footprint or total protocol TVL without adding the missing Bifrost and Astar contracts.

### Architecture

The Zenlink AMM family is the sole product family, with Factory contracts deploying and managing StableSwap pools, while the ZenlinkToken serves as the protocol's native token. All contracts are deployed across Moonbeam and Moonriver, sharing the same AMM infrastructure.

## Contract Surface Quality

- Indexed contracts: 252; live-surface contracts included: 14 (11 live, 3 unknown).
- Excluded by liveness: 238 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 8/12.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Farming | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/); moonbeam `0xd67083...9661f4`; moonriver `0xf4ec12...2a72f8` | ⚠️ Unaudited |
| Router | adapter | moonriver | n/a | 4 deployments: moonbeam `0x5c93cb...49887a`; moonbeam `0x7a3909...fcab71`; moonriver [`0x1006ff...242fa6`](./contracts/moonriver-1285/0x1006fff14e20fcc7d5975d4e81421becfb242fa6/); moonriver `0xe6fe3d...8b35ca` | ⚠️ Unaudited |
| StableSwap | unknown | moonriver | n/a | [`0x7bde79...f434d1`](./contracts/moonriver-1285/0x7bde79ad4ae9023ac771f435a1dc6efdf3f434d1/) | ⚠️ Unaudited |
| SwapRouterV1 | adapter | moonbeam | n/a | 2 deployments: moonbeam [`0x571111...572242`](./contracts/moonbeam-1284/0x5711112f7bce2dbbc95cf946db9eef0ca6572242/); moonriver `0xfb45b5...ea1508` | ⚠️ Unaudited |
| ZenlinkToken | token | moonriver | n/a | 2 deployments: moonbeam `0x3fd9b6...39100c`; moonriver [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0xe43ef4...ff42b0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe4fd20...cbfbc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://beosin.com/audits/Stable-swap_202309291700.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1006ff...242fa6`](./contracts/moonriver-1285/0x1006fff14e20fcc7d5975d4e81421becfb242fa6/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x7bde79...f434d1`](./contracts/moonriver-1285/0x7bde79ad4ae9023ac771f435a1dc6efdf3f434d1/) | StableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x571111...572242`](./contracts/moonbeam-1284/0x5711112f7bce2dbbc95cf946db9eef0ca6572242/) | SwapRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2439] DL audit link

Fork inheritance lineage and inherited audits are included when available.
