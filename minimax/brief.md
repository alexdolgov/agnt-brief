# Agentic Audit Brief: Minimax

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Minimax (`minimax`)
- Website: [https://www.minimax.finance](https://www.minimax.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T10:56:37.654Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: bsc, fantom
- Contract surface: 74 unique implementations (80 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Minimax is a multi-chain yield aggregator that optimizes user deposits across various DeFi protocols to maximize returns. It offers different strategy tiers (Base, Advanced, Main) and staking mechanisms, managed through upgradeable proxy contracts.

### Architecture

Yield Strategies and Staking contracts are deployed as upgradeable proxies managed by ProxyAdmin, which is part of the Governance & Deployment family. The Deployments and Migrations contracts facilitate the initial setup and cross-chain replication of these core families.

## Contract Surface Quality

- Indexed contracts: 922; live-surface contracts included: 80 (0 live, 80 unknown).
- Excluded by liveness: 739 inactive, 103 singleton, 0 uninitialized.
- Deployment units: 0/46 live.
- Detected codebases: none
- Unverified dependencies: 2/3.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 74
- Raw deployments: 80
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Migrations | operational_periphery | bsc | n/a | 5 deployments: bsc [`0xc9d864...7563f9`](./contracts/bsc-56/0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9/); bsc `0xeb1832...efb93b`; bsc `0xeceeac...24efce`; bsc `0xf0ed2b...a186e7`; bsc `0xf1f7bc...e54003` | ⚠️ Unaudited |
| MinimaxMain | unknown | bsc | n/a | 2 deployments: bsc [`0xc3e86f...9ac140`](./contracts/bsc-56/0xc3e86f9b80fa31f60ffa44b7a9705e36de9ac140/); bsc `0xd9e4d8...f6520e` | ⚠️ Unaudited |
| PositionLib | unknown | bsc | n/a | 2 deployments: bsc [`0xc5238f...824875`](./contracts/bsc-56/0xc5238f06dfdd1d8717fefb1da6d22400a1824875/); bsc `0xe2bbe8...3c5a46` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xbcfc48...b9510d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd40ed...32a85c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf729e...aa8725` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf79f5...86b9e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfbab2...9e4c37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3dbf9...1e9e61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4b0f1...ff457e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4ce07...5b8624` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc575b9...93aecb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f9ea...677d28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e289...dccf81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e510...d8e878` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc708b0...a85ca8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7c1e3...c56fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8e732...a715d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc92196...2c2e45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9c8b6...6d0465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbb93e...262e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbc298...0b1316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc5624...df695c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd4a88...a52c23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd511f...30c14b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcead2a...cf1788` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1035c...28d74e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3698c...e559f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3f452...1af64b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd613c5...b15d0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6622b...1ac88a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7e185...09ec0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8c97a...61c84d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc7ce5...0a7384` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcaeae...404faa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd8e78...ed7d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02b89...f261e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe04a58...1b6f67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0dc50...50274c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3be84...d4f2f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4e2dc...876147` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5cf85...09a70c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe70a5f...ade98f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe80d68...e55225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8a6c9...1f5f62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8fb30...2ee14f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe91122...26b6ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe96274...1b9448` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea4c24...1e22a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc4fa...9e8958` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed4856...496b45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed88bf...424514` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed96af...cec060` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee46ea...b1ff74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee7954...664fd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee8c6f...12c0cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef0670...99e5e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0cf42...919b2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf18181...22da75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2576c...3083ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3977d...4ff8b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf44e92...c249a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf55a04...49cc4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5c3fe...344ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf672a8...014e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf679c5...96b156` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84e2e...aba878` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa4108...36e3f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa5781...802038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc6b34...3f5fa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe2697...9caf5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff9c9d...00251d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2274fb...f1833b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2e3416...898f26` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022) | Hacken | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc9d864...7563f9`](./contracts/bsc-56/0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3e86f...9ac140`](./contracts/bsc-56/0xc3e86f9b80fa31f60ffa44b7a9705e36de9ac140/) | MinimaxMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5238f...824875`](./contracts/bsc-56/0xc5238f06dfdd1d8717fefb1da6d22400a1824875/) | PositionLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13496] DL audit link

Fork inheritance lineage and inherited audits are included when available.
