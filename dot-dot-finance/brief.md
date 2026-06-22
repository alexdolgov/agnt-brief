# Agentic Audit Brief: Dot Dot Finance

⚠️ Lifecycle status: DEAD - TVL dropped 100.0% over 90 days

## Project Overview

- Project: Dot Dot Finance (`dot-dot-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T19:29:50.648Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 17 unique implementations (38 raw deployments)
- DeFi Llama TVL: $3,085.99
- On-chain TVL (included contracts): $4,956.54
- TVL by chain: Bsc $4,956.54

## Project Description

Dot Dot Finance is a yield protocol on BSC that allows users to stake LP tokens to earn rewards. It uses token lockers and reward tokens to incentivize liquidity provision and long-term participation.

### Architecture

The DddLpStaker interacts with TokenLocker to manage staked positions, while RewardsToken and ValasRewardsToken are distributed as incentives. Supporting contracts like DotDot and Vyper_contract provide additional logic and integrations.

## Contract Surface Quality

- Indexed contracts: 113; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 75 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 40/43.

## Audit Coverage Summary

- Verified implementations audited: 4/17 (23.5%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 38
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $4,956.54
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $4,956.54 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 23.5% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DddIncentiveDistributor | operational_periphery | bsc | n/a | [`0x462592...596446`](./contracts/bsc-56/0x4625928fcb2ece1aca3dd2b992f7e2e4d9596446/) | ✅ Audited |
| DddLpStaker | core_logic | bsc | n/a | [`0xe8bccc...dbc256`](./contracts/bsc-56/0xe8bcccb79b66e49e7f95d576049cf4b23fdbc256/) | ✅ Audited |
| DotDotVoting | unknown | bsc | n/a | [`0x5e4b85...cee36d`](./contracts/bsc-56/0x5e4b853944f54c8cb568b25d269cd297b8cee36d/) | ✅ Audited |
| LpDepositor | unknown | bsc | n/a | [`0x8189f0...beb1af`](./contracts/bsc-56/0x8189f0afdbf8fe6a9e13c69ba35528ac6abeb1af/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenLocker | token | bsc | n/a | 2 deployments: bsc [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/); bsc `0x51133c...070e0d` | ⚠️ Unaudited |
| LpTokenStaker | core_logic | bsc | n/a | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | ⚠️ Unaudited |
| BondedFeeDistributor | operational_periphery | bsc | n/a | [`0xd4f7b4...d815a0`](./contracts/bsc-56/0xd4f7b4bc46e6e499d35335d270fd094979d815a0/) | ⚠️ Unaudited |
| CoreMinter | unknown | bsc | n/a | [`0x2e3ebb...5af0f6`](./contracts/bsc-56/0x2e3ebb9f3f42ffc3902e75d84cd92cd0505af0f6/) | ⚠️ Unaudited |
| DotDot | unknown | bsc | n/a | [`0x84c973...482bd1`](./contracts/bsc-56/0x84c97300a190676a19d1e13115629a11f8482bd1/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | bsc | n/a | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | bsc | n/a | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xc19956...49dddd`](./contracts/bsc-56/0xc19956eca8a3333671490ef6d6d4329df049dddd/) | ⚠️ Unaudited |
| RewardsToken | token | bsc | n/a | 7 deployments: bsc [`0x151f16...72beba`](./contracts/bsc-56/0x151f1611b2e304ded36661f65506f9d7d172beba/); bsc `0x318aa2...6b3886`; bsc `0x373410...52dace`; bsc `0x578104...117b3a`; bsc `0x833915...8d0d27`; bsc `0xf1e7f8...882c48`; bsc `0xf71a0b...e124ec` | ⚠️ Unaudited |
| ValasMetapoolRewardsToken | core_logic | bsc | n/a | 2 deployments: bsc [`0x8087a9...a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/); bsc `0xf6be0f...4c250d` | ⚠️ Unaudited |
| ValasRewardsToken | token | bsc | n/a | [`0x5b5bd8...0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 14 deployments: bsc [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/); bsc `0x160cae...5d4e76`; bsc `0x19ec9e...0a806d`; bsc `0x245e8b...cfabf5`; bsc `0x2f8e25...9b41be`; bsc `0x41871a...54a5c4`; bsc `0x556ea0...104b63`; bsc `0x592b78...276023`; bsc `0xa7f552...0c6d9f`; bsc `0xab4990...64b6cd`; bsc `0xaf4de8...aaf452`; bsc `0xc377e2...52c874`; bsc `0xc6a752...771a49`; bsc `0xedbb3f...c8ffdc` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-DotDot.pdf](https://github.com/dotdot-ellipsis/dotdot-contracts/blob/main/PeckShield-Audit-Report-DotDot.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | TokenLocker | token | $4,904.66 | Verified native implementation with $4,904.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | LpTokenStaker | core_logic | $51.88 | Verified native implementation with $51.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4f7b4...d815a0`](./contracts/bsc-56/0xd4f7b4bc46e6e499d35335d270fd094979d815a0/) | BondedFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e3ebb...5af0f6`](./contracts/bsc-56/0x2e3ebb9f3f42ffc3902e75d84cd92cd0505af0f6/) | CoreMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84c973...482bd1`](./contracts/bsc-56/0x84c97300a190676a19d1e13115629a11f8482bd1/) | DotDot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x151f16...72beba`](./contracts/bsc-56/0x151f1611b2e304ded36661f65506f9d7d172beba/) | RewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8087a9...a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/) | ValasMetapoolRewardsToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b5bd8...0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ValasRewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
