# Agentic Audit Brief: Blueshift

## Project Overview

- Project: Blueshift (`blueshift`)
- Website: [https://blueshift.fi/](https://blueshift.fi/)
- Lifecycle: active (Tier 0, 67.1% below peak)
- Generated: 2026-05-23T21:26:10.075Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: kava, polygon
- Contract surface: 42 unique implementations (89 raw deployments)
- DeFi Llama TVL: $4,377,263.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Blueshift is a decentralized exchange (DEX) protocol operating on Polygon and Kava, enabling users to swap tokens and provide liquidity. It uses upgradeable proxy contracts for core logic and integrates with wrapped native tokens like WMATIC.

### Architecture

The protocol consists of a single product family where the TransparentUpgradeableProxy serves as the main entry point, delegating to implementation contracts. WMATIC is used as the wrapped native token for operations on Polygon.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 42
- Raw deployments: 89
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DragonLair | unknown | polygon | 2 deployments: polygon [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/); polygon `0xf3e851...953d22` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 2 deployments: polygon [`0xdc05ba...2a3186`](./contracts/polygon-137/0xdc05bacc1f97f874d9d09860a8a93365372a3186/); polygon `0xf8c717...8065f5` | ⚠️ Unaudited |
| Quick | unknown | polygon | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | 3 deployments: polygon [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/); polygon `0x66f312...6990e9`; polygon `0x8e396f...f5e758` | ⚠️ Unaudited |
| StakingRewardsFactory | registry | polygon | 30 deployments: polygon [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/); polygon `0x122cfe...94bef6`; polygon `0x17d0a9...331e39`; polygon `0x29d051...17d503`; polygon `0x3b8fed...9a3417`; polygon `0x3d2360...2c83b6`; polygon `0x421267...809e16`; polygon `0x54806f...f35291`; polygon `0x6a0517...43de22`; polygon `0x6a1b56...551548`; polygon `0x729129...32c4ae`; polygon `0x80f130...67eb49`; polygon `0x8a121a...7d990d`; polygon `0x91f16b...c3908e`; polygon `0x9d451d...f11e80`; polygon `0x9f1700...aab86c`; polygon `0xa239ac...2705b4`; polygon `0xa7f8ea...97486b`; polygon `0xacd9d3...440197`; polygon `0xad41f5...edbffe`; polygon `0xbd20fa...102b69`; polygon `0xbd4b6c...1e7e30`; polygon `0xce2944...e3a354`; polygon `0xe592ed...e00d8f`; polygon `0xe8af51...8ea4a6`; polygon `0xe9944f...42df09`; polygon `0xeaff1f...723d8c`; polygon `0xeba917...f64162`; polygon `0xed113a...42efaf`; polygon `0xf48ac6...3acd02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 5 deployments: polygon [`0x2080a3...4edc83`](./contracts/polygon-137/0x2080a319a4b11d097050722b6b65d09f754edc83/); polygon `0x9b44b2...97f251`; polygon `0xb6b3b5...13c9cb`; polygon `0xeb7b35...3e9550`; polygon `0xf79900...37a4e1` | ⚠️ Unaudited |
| VamToken | token | polygon | 11 deployments: polygon [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/); polygon `0x1bd1fa...9a7fda`; polygon `0x1c165a...be6eec`; polygon `0x4b44cd...bcab4b`; polygon `0x4e1470...5263ef`; polygon `0x547620...fd33e8`; polygon `0x7732d1...9fdcee`; polygon `0xa3900a...59b542`; polygon `0xbee2bd...5adca5`; polygon `0xd8e8b9...6d20e7`; polygon `0xe6df55...24b291` | ⚠️ Unaudited |
| WMATIC | unknown | polygon | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x019901...554481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0e4245...755310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x12fd7e...c3789b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x27e552...1faa2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x35701f...c96f3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3abd79...367b20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4087f5...4eaea8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x55bee1...a3ef1d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x56c216...4e181e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eced2...8c91d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6207a6...af1c8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7b8343...ca2bca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x800618...a6653c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x82831e...3e22a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x96c95d...7e7242` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa5eddb...34959a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7555b...b44f73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac6e4f...7c9c43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadbd83...4e8fb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb28862...2f8bfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb470e9...adf2c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbabbed...cc44f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbeb942...ddb49c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc7efb3...a918ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc91572...f6f690` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce1083...ef743b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcfbf08...8b861f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe03d83...2a2a5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe86ba9...d32599` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf134b2...8c771b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf5399b...323a4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf6ad3c...59adcd` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x493996...2577b1` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x7a6091...6a77e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/blueshift) | CertiK | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | DragonLair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | QuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | StakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2080a3...4edc83`](./contracts/polygon-137/0x2080a319a4b11d097050722b6b65d09f754edc83/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | VamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2594] DL audit link

Fork inheritance lineage and inherited audits are included when available.
