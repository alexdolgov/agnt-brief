# Agentic Audit Brief: BOOKUSD

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: BOOKUSD (`bookusd`)
- Website: [https://www.bookmemebsc.com/](https://www.bookmemebsc.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T02:49:44.586Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 35 unique implementations (42 raw deployments)
- DeFi Llama TVL: $39,223.42
- On-chain TVL (included contracts): $114,871.35
- TVL by chain: Bsc $114,871.35

## Project Description

BOOKUSD is a CDP (Collateralized Debt Position) protocol on BSC that allows users to mint a stablecoin against collateral. It includes farming and staking mechanisms to incentivize liquidity and participation.

### Architecture

The FarmFactory deploys and manages FarmClonable instances, while BurningBooks handles token burning. The TransparentUpgradeableProxy pattern is used for upgradeability across core contracts, sharing a common deployer cluster.

## Contract Surface Quality

- Indexed contracts: 220; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 169 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 0/5 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 2/58.

## Audit Coverage Summary

- Verified implementations audited: 4/14 (28.6%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 35
- Raw deployments: 42
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $114,871.35
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $114,871.35 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 28.6% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BookOfBinance | unknown | bsc | n/a | [`0xc9ad42...83017f`](./contracts/bsc-56/0xc9ad421f96579ace066ec188a7bba472fb83017f/) | ✅ Audited |
| BorrowerOperations | core_logic | bsc | n/a | [`0x91fe15...1c0814`](./contracts/bsc-56/0x91fe1533b5e33a89e37a2494ce1bef74081c0814/) | ✅ Audited |
| RedeemProxy | unknown | bsc | n/a | [`0x82fa44...0b2ef6`](./contracts/bsc-56/0x82fa44be42596119406e45d4d9653a3e8a0b2ef6/) | ✅ Audited |
| TroveManager | governance | bsc | n/a | [`0xfe5d0a...d1ac15`](./contracts/bsc-56/0xfe5d0abb0c4addbb57186133b6fdb7e1fad1ac15/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LQTYToken | token | bsc | n/a | 2 deployments: bsc [`0xafea16...18e00a`](./contracts/bsc-56/0xafea16a14742f10cc5f83bd358e4a9d38718e00a/); bsc `0xfc35bf...e9b7c5` | ⚠️ Unaudited |
| LUSDToken | token | bsc | n/a | 3 deployments: bsc [`0x2d7a5c...830217`](./contracts/bsc-56/0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217/); bsc `0xc28957...cb093d`; bsc `0xd4a1a6...770173` | ⚠️ Unaudited |
| LpTool | unknown | bsc | n/a | [`0x466eaa...4c353d`](./contracts/bsc-56/0x466eaa98d1e6fa238309a5795ce51038614c353d/) | ⚠️ Unaudited |
| LQTYStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x73317c...f089f8`](./contracts/bsc-56/0x73317c7d55bbf7306339cf8423a83e29a8f089f8/); bsc `0x744959...922c15`; bsc `0xd8ec53...8c3a17` | ⚠️ Unaudited |
| MintStakeShare | unknown | bsc | n/a | [`0xf0f14c...cb9b2f`](./contracts/bsc-56/0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f/) | ⚠️ Unaudited |
| MintStakeShareExpansion | unknown | bsc | n/a | [`0x7c3b00...3cb9e2`](./contracts/bsc-56/0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2/) | ⚠️ Unaudited |
| MyOFTAdapter | adapter | bsc | n/a | 2 deployments: bsc [`0x279e63...dbde6e`](./contracts/bsc-56/0x279e63c7f2243500cafce8b3f510bbe6dfdbde6e/); bsc `0x33afd7...b79195` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | [`0x4b556f...76f706`](./contracts/bsc-56/0x4b556f3a476b58be7f35df77edd68fbe5076f706/) | ⚠️ Unaudited |
| StabilityPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x3a11c0...d17fac`](./contracts/bsc-56/0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac/); bsc `0x492f62...f256a5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x98b9c5...31a874`](./contracts/bsc-56/0x98b9c5a163c61563758481d83c917b61a131a874/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x09c163...b9eb3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13a564...6f1c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ef3d1...9889dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2abe9b...702765` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x501a64...46f5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x542323...2e6fb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708583...aedb91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x709099...c9545e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78f933...4e78a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x792e0e...24295e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x981b9e...831ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a78a...7f7aef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa814eb...d8408d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc27377...2d2d11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce1ca5...3a58f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2da7b...9dce7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5f4f2...621e15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9a1c4...c25bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad8cb...b12793` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef3192...16bd35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefa40e...ed48f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BookUSD-v1.0.pdf](https://github.com/BookMemeBsc/bookusd-contracts/blob/main/PeckShield-Audit-Report-BookUSD-v1.0.pdf) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xafea16...18e00a`](./contracts/bsc-56/0xafea16a14742f10cc5f83bd358e4a9d38718e00a/) | LQTYToken | token | $73,460.26 | Verified native implementation with $73,460.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d7a5c...830217`](./contracts/bsc-56/0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217/) | LUSDToken | token | $41,411.08 | Verified native implementation with $41,411.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x466eaa...4c353d`](./contracts/bsc-56/0x466eaa98d1e6fa238309a5795ce51038614c353d/) | LpTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73317c...f089f8`](./contracts/bsc-56/0x73317c7d55bbf7306339cf8423a83e29a8f089f8/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0f14c...cb9b2f`](./contracts/bsc-56/0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f/) | MintStakeShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c3b00...3cb9e2`](./contracts/bsc-56/0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2/) | MintStakeShareExpansion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a11c0...d17fac`](./contracts/bsc-56/0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=20

Fork inheritance lineage and inherited audits are included when available.
