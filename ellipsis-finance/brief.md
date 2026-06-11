# Agentic Audit Brief: Ellipsis Finance

⚠️ Lifecycle status: DEAD - TVL dropped 18.6% over 90 days

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-11T12:04:32.070Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-d9fc
- Chains: bsc
- Contract surface: 22 unique implementations (130 raw deployments)
- DeFi Llama TVL: $1,095,739.94
- On-chain TVL (included contracts): $59,039.41
- TVL by chain: Bsc $59,039.41

## Project Description

Ellipsis Finance is a historical Curve-like decentralized exchange on BNB Chain/BSC for low-slippage stablecoin and pegged-asset swaps, with related locking, fee distribution, and incentive/voting mechanisms. This description should be sourced to DefiLlama and historical documentation; the current homepage is disabled or unavailable.

### Architecture

All contracts belong to a single product family sharing the Ellipsis ecosystem. The Vyper_contracts serve as the core AMM pools, while EllipsisToken2 is the governance token. TokenLocker locks tokens for voting power, MultiFeeDistribution distributes fees, FeeDistributor handles fee allocation, IncentiveVoting manages gauge weights, and EllipsisLpStaking allows staking LP tokens for rewards.

## Audit Coverage Summary

- Verified implementations audited: 5/17 (29.4%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 22
- Raw deployments: 130
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $8,967.41
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $8,967.41 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 3 | 17.6% | 2021-04 |
| PeckShield | Tier 2 | 2 | 11.8% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EllipsisToken2 | token | bsc | [`0xaf4105...ce9d71`](./contracts/bsc-56/0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71/) | ✅ Audited |
| LpTokenStaker | core_logic | bsc | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | ✅ Audited |
| FeeConverter | unknown | bsc | [`0x604348...0dd3f6`](./contracts/bsc-56/0x604348a7e98113e14c318605c458fbfb3b0dd3f6/) | ✅ Audited |
| IncentiveVoting | unknown | bsc | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | ✅ Audited |
| MerkleDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x60a8ad...7bca18`](./contracts/bsc-56/0x60a8ad8470189033789c1053b0c6f89eb27bca18/); bsc `0xa7bd1f...52b9ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenLocker | token | bsc | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | ⚠️ Unaudited |
| CryptoFeeConverter | unknown | bsc | [`0x1bd9d9...88ec56`](./contracts/bsc-56/0x1bd9d93c074d64eafa2fbd8f11e11aa0a488ec56/) | ⚠️ Unaudited |
| CryptoSwapRewardsToken | token | bsc | [`0x19301e...6b9f99`](./contracts/bsc-56/0x19301e0a5cb34d0e665af745b1056d43926b9f99/) | ⚠️ Unaudited |
| EllipsisLpStaking | unknown | bsc | [`0x5b74c9...8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | bsc | 3 deployments: bsc [`0x2412be...8c5160`](./contracts/bsc-56/0x2412bee313737ce7ab5ea9558fdfe24d918c5160/); bsc `0x9ab99d...a2356c`; bsc `0xde40f0...4d6e3d` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | bsc | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | ⚠️ Unaudited |
| FixedRewardsToken | token | bsc | 3 deployments: bsc [`0x6a7354...6f6b99`](./contracts/bsc-56/0x6a7354a81a5fa0895d7e70a24027ce3cbb6f6b99/); bsc `0x89db37...d77eb4`; bsc `0xe284c1...c9df8c` | ⚠️ Unaudited |
| LegacyPoolFeeConverter | core_logic | bsc | [`0xc24855...8dd191`](./contracts/bsc-56/0xc24855a485c36f32e890580f673c295e208dd191/) | ⚠️ Unaudited |
| MetapoolFeeConverter | core_logic | bsc | 2 deployments: bsc [`0x46e019...d5379e`](./contracts/bsc-56/0x46e0193fd33ea52f1232b0da201f7a8c46d5379e/); bsc `0xdd6df5...a27b66` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | bsc | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | ⚠️ Unaudited |
| RewardsToken | token | bsc | 20 deployments: bsc [`0x052e56...7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/); bsc `0x143d70...1ded79`; bsc `0x151f16...72beba`; bsc `0x18796c...8e033a`; bsc `0x2a435e...be5640`; bsc `0x2bad28...096b7d`; bsc `0x373410...52dace`; bsc `0x4c2915...9a10b2`; bsc `0x4d3e88...482f5d`; bsc `0x578104...117b3a`; bsc `0x679dbb...4ffa24`; bsc `0x833915...8d0d27`; bsc `0x9f99b2...f1f5ac`; bsc `0xa2520f...17eaf8`; bsc `0xbc5b58...8edc2d`; bsc `0xbcf37d...c72793`; bsc `0xcd5b31...529aea`; bsc `0xd86bf2...3244e2`; bsc `0xe69b03...0173ad`; bsc `0xf1e7f8...882c48` | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | 84 deployments: bsc [`0x00d09e...191c8c`](./contracts/bsc-56/0x00d09eed98a8d603d23ba07f9dc87cc0b2191c8c/); bsc `0x07d9e2...fc03c4`; bsc `0x081c55...c7071d`; bsc `0x0bc3a8...557e56`; bsc `0x119ccf...b8c9e4`; bsc `0x147597...ddb5fd`; bsc `0x1583e5...4e5727`; bsc `0x160cae...5d4e76`; bsc `0x19ec9e...0a806d`; bsc `0x1c7816...1df1e6`; bsc `0x1e9768...43226c`; bsc `0x245e8b...cfabf5`; bsc `0x2477fb...b00bf9`; bsc `0x266bb3...7c3e63`; bsc `0x269782...20bbcb`; bsc `0x2d0a93...ca474c`; bsc `0x2f8e25...9b41be`; bsc `0x313bbb...8ce28c`; bsc `0x31d236...bf852b`; bsc `0x32db02...2a83cd`; bsc `0x38b345...fb0af0`; bsc `0x394678...5a3ccb`; bsc `0x3d2f8f...a5a8f7`; bsc `0x3e1531...a41009`; bsc `0x41871a...54a5c4`; bsc `0x4763e5...f1eecb`; bsc `0x541383...75d989`; bsc `0x556ea0...104b63`; bsc `0x5a9606...7fd988`; bsc `0x605676...b30154`; bsc `0x60e4ed...249088`; bsc `0x707e83...91e7c0`; bsc `0x7203d1...55cfd0`; bsc `0x72b7c1...30ed01`; bsc `0x780de1...dcfb72`; bsc `0x7b834a...db6296`; bsc `0x7db771...9c5e66`; bsc `0x843353...10932b`; bsc `0x85fdc3...274fa5`; bsc `0x8866c9...1ed306`; bsc `0x8b24a3...4d9a29`; bsc `0x8d7408...8d1e52`; bsc `0x8f2d0c...1824ba`; bsc `0x90c375...6122a5`; bsc `0x958c8b...cf3d96`; bsc `0x972df0...541fff`; bsc `0x9e80f1...7da648`; bsc `0xa0fdc7...a4916d`; bsc `0xa43a1f...c2fea5`; bsc `0xa5d748...c8d871`; bsc `0xa6f532...bb3397`; bsc `0xa71ecd...6e7541`; bsc `0xa7f552...0c6d9f`; bsc `0xa94090...e108f6`; bsc `0xab3821...c164a7`; bsc `0xab4990...64b6cd`; bsc `0xaf4de8...aaf452`; bsc `0xb4c0a7...ada122`; bsc `0xb83832...e1b442`; bsc `0xba7faa...d27a49`; bsc `0xba8c7f...60c727`; bsc `0xc0cd22...f607eb`; bsc `0xc21450...e186c9`; bsc `0xc377e2...52c874`; bsc `0xc6a752...771a49`; bsc `0xc86d71...0981ed`; bsc `0xd11f79...9f90f6`; bsc `0xd78f34...15775b`; bsc `0xdb900f...1fe0f3`; bsc `0xdd4da4...3fae88`; bsc `0xdd9227...5f6e25`; bsc `0xe32eb7...6860dc`; bsc `0xe6537a...0bacad`; bsc `0xe9c648...af45d4`; bsc `0xea0cbe...7d3e2f`; bsc `0xea55a3...d33211`; bsc `0xedbb3f...c8ffdc`; bsc `0xf17814...41015f`; bsc `0xf65bed...4a5870`; bsc `0xf707df...d280f1`; bsc `0xf9ac2e...49eb3f`; bsc `0xfa715e...20fbf2`; bsc `0xfd4afe...d766da`; bsc `0xfd62a9...9f8325` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x1037f8...086925` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8a2d34...a7dda9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x98cfa2...5ba049` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xca9090...d383e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe8552e...475d9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | contract_name | 4 | high |
| [here](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |
| [The Ellipsis codebase is based on code from Curve Finance; [their audits can be found here]().&#x20;](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | TokenLocker | token | $8,967.41 | Verified native implementation with $8,967.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bd9d9...88ec56`](./contracts/bsc-56/0x1bd9d93c074d64eafa2fbd8f11e11aa0a488ec56/) | CryptoFeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19301e...6b9f99`](./contracts/bsc-56/0x19301e0a5cb34d0e665af745b1056d43926b9f99/) | CryptoSwapRewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b74c9...8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | EllipsisLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2412be...8c5160`](./contracts/bsc-56/0x2412bee313737ce7ab5ea9558fdfe24d918c5160/) | FeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a7354...6f6b99`](./contracts/bsc-56/0x6a7354a81a5fa0895d7e70a24027ce3cbb6f6b99/) | FixedRewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc24855...8dd191`](./contracts/bsc-56/0xc24855a485c36f32e890580f673c295e208dd191/) | LegacyPoolFeeConverter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46e019...d5379e`](./contracts/bsc-56/0x46e0193fd33ea52f1232b0da201f7a8c46d5379e/) | MetapoolFeeConverter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x052e56...7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/) | RewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00d09e...191c8c`](./contracts/bsc-56/0x00d09eed98a8d603d23ba07f9dc87cc0b2191c8c/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=6

Zero-match audit list:

- [11900] The Ellipsis codebase is based on code from Curve Finance; [their audits can be found here]().&#x20;

Fork inheritance lineage and inherited audits are included when available.
