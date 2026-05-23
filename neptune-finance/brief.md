# Agentic Audit Brief: Neptune Finance

## Project Overview

- Project: Neptune Finance (`neptune-finance`)
- Website: [https://nept.finance/](https://nept.finance/)
- Lifecycle: active (Tier 0, 84.1% below peak)
- Generated: 2026-05-23T14:23:42.475Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 73 unique implementations (94 raw deployments)
- DeFi Llama TVL: $6,051,685.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Neptune Finance is a lending protocol on Ethereum that enables users to supply and borrow assets, with interest rates determined by market utilization. It provides a decentralized platform for earning yield on deposits and accessing liquidity through overcollateralized loans.

### Architecture

The protocol appears to have a single product family focused on borrow rate retrieval, with no explicit shared infrastructure contracts identified in the provided inventory.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 73
- Raw deployments: 94
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DadFab | unknown | ethereum | 2 deployments: ethereum [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/); ethereum `0xe5df61...2f012f` | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | token | ethereum | 6 deployments: ethereum [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/); ethereum `0x2c6739...f95636`; ethereum `0x59adcf...62b6a4`; ethereum `0x97bf1f...b71e0e`; ethereum `0x9aed7a...d6727b`; ethereum `0xc0562b...395e57` | ⚠️ Unaudited |
| GemFab | unknown | ethereum | 2 deployments: ethereum [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/); ethereum `0x552f35...ec30e9` | ⚠️ Unaudited |
| GemPit | unknown | ethereum | 3 deployments: ethereum [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/); ethereum `0x9dc6c5...4c37e5`; ethereum `0xf5b59c...ad8d55` | ⚠️ Unaudited |
| MiniMeTokenFactory | registry | ethereum | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | 2 deployments: ethereum [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/); ethereum `0x4a67d9...bac0fe` | ⚠️ Unaudited |
| NEC | unknown | ethereum | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | governance | ethereum | 2 deployments: ethereum [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/); ethereum `0x904249...cb7640` | ⚠️ Unaudited |
| TapFab | unknown | ethereum | 2 deployments: ethereum [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/); ethereum `0xc2baca...98ab50` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 5 deployments: ethereum [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/); ethereum `0x3721a8...ed3b57`; ethereum `0xabdf14...fae01f`; ethereum `0xdac17f...831ec7`; ethereum `0xf64456...7a17c0` | ⚠️ Unaudited |
| TopFab | unknown | ethereum | 2 deployments: ethereum [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/); ethereum `0x9dda49...380c49` | ⚠️ Unaudited |
| TubFab | unknown | ethereum | 2 deployments: ethereum [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/); ethereum `0xec4d29...d28356` | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | 2 deployments: ethereum [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/); ethereum `0x68fd08...6ea216` | ⚠️ Unaudited |
| WETH | token | ethereum | 3 deployments: ethereum [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/); ethereum `0x5503e7...a2808e`; ethereum `0xaec71b...3bc33d` | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff0eb5...489010` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report](https://github.com/oak-security/audit-reports/blob/main/Neptune/2024-01-09%20Audit%20Report%20-%20Neptune%20Updates%20v1.0.pdf) | Oak Security | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [2023-04-09 Audit Report - Neptune Protocol v1.0.pdf](https://github.com/oak-security/audit-reports/blob/main/Neptune/2023-04-09%20Audit%20Report%20-%20Neptune%20Protocol%20v1.0.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2024-12-23 Audit Report - Neptune Updates 2 v1.1.pdf](https://github.com/oak-security/audit-reports/blob/main/Neptune/2024-12-23%20Audit%20Report%20-%20Neptune%20Updates%202%20v1.1.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2394] Audit Report
- [2395] 2023-04-09 Audit Report - Neptune Protocol v1.0.pdf
- [2396] 2024-12-23 Audit Report - Neptune Updates 2 v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
