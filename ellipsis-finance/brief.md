# Agentic Audit Brief: Ellipsis Finance

⚠️ Lifecycle status: DEAD - TVL dropped 18.6% over 90 days

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:48.547Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 10 unique implementations (34 raw deployments)
- DeFi Llama TVL: $1,095,739.94
- On-chain TVL (included contracts): $59,039.41
- TVL by chain: Bsc $59,039.41

## Project Description

Ellipsis Finance is a historical Curve-like decentralized exchange on BNB Chain/BSC for low-slippage stablecoin and pegged-asset swaps, with related locking, fee distribution, and incentive/voting mechanisms. This description should be sourced to DefiLlama and historical documentation; the current homepage is disabled or unavailable.

### Architecture

All contracts belong to a single product family sharing the Ellipsis ecosystem. The Vyper_contracts serve as the core AMM pools, while EllipsisToken2 is the governance token. TokenLocker locks tokens for voting power, MultiFeeDistribution distributes fees, FeeDistributor handles fee allocation, IncentiveVoting manages gauge weights, and EllipsisLpStaking allows staking LP tokens for rewards.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 96 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 20; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/10 (40.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 34
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
| Hacken | Tier 2 | 2 | 20.0% | 2021-04 |
| PeckShield | Tier 2 | 2 | 20.0% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EllipsisToken2 | token | bsc | n/a | [`0xaf4105...ce9d71`](./contracts/bsc-56/0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71/) | ✅ Audited |
| LpTokenStaker | core_logic | bsc | n/a | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | ✅ Audited |
| IncentiveVoting | unknown | bsc | n/a | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | ✅ Audited |
| MerkleDistributor | operational_periphery | bsc | n/a | [`0xa7bd1f...52b9ff`](./contracts/bsc-56/0xa7bd1fb19d0af2739431dd1d318a8a04cd52b9ff/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenLocker | token | bsc | n/a | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | ⚠️ Unaudited |
| EllipsisLpStaking | unknown | bsc | n/a | [`0x5b74c9...8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | bsc | n/a | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | ⚠️ Unaudited |
| RewardsToken | token | bsc | n/a | 9 deployments: bsc [`0x052e56...7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/); bsc `0x143d70...1ded79`; bsc `0x151f16...72beba`; bsc `0x2a435e...be5640`; bsc `0x373410...52dace`; bsc `0x578104...117b3a`; bsc `0x833915...8d0d27`; bsc `0xa2520f...17eaf8`; bsc `0xf1e7f8...882c48` | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 17 deployments: bsc [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/); bsc `0x160cae...5d4e76`; bsc `0x19ec9e...0a806d`; bsc `0x245e8b...cfabf5`; bsc `0x2477fb...b00bf9`; bsc `0x2f8e25...9b41be`; bsc `0x41871a...54a5c4`; bsc `0x556ea0...104b63`; bsc `0x8d7408...8d1e52`; bsc `0xa7f552...0c6d9f`; bsc `0xab4990...64b6cd`; bsc `0xaf4de8...aaf452`; bsc `0xb4c0a7...ada122`; bsc `0xc377e2...52c874`; bsc `0xc6a752...771a49`; bsc `0xedbb3f...c8ffdc`; bsc `0xfd4afe...d766da` | ⚠️ Unaudited |

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
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |
| [here](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |
| [The Ellipsis codebase is based on code from Curve Finance; [their audits can be found here]().&#x20;](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | TokenLocker | token | $8,967.41 | Verified native implementation with $8,967.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b74c9...8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | EllipsisLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x052e56...7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/) | RewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
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
