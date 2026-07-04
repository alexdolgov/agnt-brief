# Agentic Audit Brief: Ellipsis Finance

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:46.366Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 20 unique implementations (46 raw deployments)
- DeFi Llama TVL: $1,070,786.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 23 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 135; live-surface contracts included: 46 (41 live, 5 unknown).
- Excluded by liveness: 89 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/15 (26.7%)
- Deployed-live implementations: 15 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/15
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 20
- Raw deployments: 46
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 13.3% | 2021-04 |
| PeckShield | Tier 2 | 2 | 13.3% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EllipsisToken2 | token | bsc | n/a | [`0xaf4105...ce9d71`](./contracts/bsc-56/0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71/) | ✅ Audited |
| IncentiveVoting | unknown | bsc | n/a | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | ✅ Audited |
| LpTokenStaker | core_logic | bsc | n/a | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | ✅ Audited |
| MerkleDistributor | operational_periphery | bsc | n/a | [`0xa7bd1f...52b9ff`](./contracts/bsc-56/0xa7bd1fb19d0af2739431dd1d318a8a04cd52b9ff/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveStableSwapNG | operational_periphery | bsc | n/a | [`0xe6e290...741cd4`](./contracts/bsc-56/0xe6e2905f54baf7625f4943b74c50338362741cd4/) | ⚠️ Unaudited |
| EllipsisLpStaking | unknown | bsc | n/a | [`0x5b74c9...8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | bsc | n/a | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | ⚠️ Unaudited |
| PancakeStableSwap | unknown | bsc | n/a | 2 deployments: bsc [`0x169f65...1787ef`](./contracts/bsc-56/0x169f653a54acd441ab34b73da9946e2c451787ef/); bsc `0xc2f5b9...bf43fe` | ⚠️ Unaudited |
| PancakeStableSwapTwoPool | core_logic | bsc | n/a | [`0x852594...f0e4fc`](./contracts/bsc-56/0x85259443fad3dc9ecfafe62f043a020992f0e4fc/) | ⚠️ Unaudited |
| RewardsToken | token | bsc | n/a | 9 deployments: bsc [`0x052e56...7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/); bsc `0x143d70...1ded79`; bsc `0x151f16...72beba`; bsc `0x2a435e...be5640`; bsc `0x373410...52dace`; bsc `0x578104...117b3a`; bsc `0x833915...8d0d27`; bsc `0xa2520f...17eaf8`; bsc `0xf1e7f8...882c48` | ⚠️ Unaudited |
| TokenLocker | token | bsc | n/a | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | ⚠️ Unaudited |
| ValasMetapoolRewardsToken | core_logic | bsc | n/a | 2 deployments: bsc [`0x8087a9...a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/); bsc `0xf6be0f...4c250d` | ⚠️ Unaudited |
| ValasRewardsToken | token | bsc | n/a | [`0x5b5bd8...0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 17 deployments: bsc [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/); bsc `0x160cae...5d4e76`; bsc `0x19ec9e...0a806d`; bsc `0x245e8b...cfabf5`; bsc `0x2477fb...b00bf9`; bsc `0x2f8e25...9b41be`; bsc `0x41871a...54a5c4`; bsc `0x556ea0...104b63`; bsc `0x8d7408...8d1e52`; bsc `0xa7f552...0c6d9f`; bsc `0xab4990...64b6cd`; bsc `0xaf4de8...aaf452`; bsc `0xb4c0a7...ada122`; bsc `0xc377e2...52c874`; bsc `0xc6a752...771a49`; bsc `0xedbb3f...c8ffdc`; bsc `0xfd4afe...d766da` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1037f8...086925` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a2d34...a7dda9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98cfa2...5ba049` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca9090...d383e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8552e...475d9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [www.curve.finance/audits](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [11900] www.curve.finance/audits

Fork inheritance lineage and inherited audits are included when available.
