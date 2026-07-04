# Agentic Audit Brief: Dot Dot Finance

## Project Overview

- Project: Dot Dot Finance (`dot-dot-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.226Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 22 unique implementations (43 raw deployments)
- DeFi Llama TVL: $2,698.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 32 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 37 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 43 (38 live, 5 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/17 (23.5%)
- Deployed-live implementations: 17 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/17
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 22
- Raw deployments: 43
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

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
| BondedFeeDistributor | operational_periphery | bsc | n/a | [`0xd4f7b4...d815a0`](./contracts/bsc-56/0xd4f7b4bc46e6e499d35335d270fd094979d815a0/) | ⚠️ Unaudited |
| CoreMinter | unknown | bsc | n/a | [`0x2e3ebb...5af0f6`](./contracts/bsc-56/0x2e3ebb9f3f42ffc3902e75d84cd92cd0505af0f6/) | ⚠️ Unaudited |
| DotDot | unknown | bsc | n/a | [`0x84c973...482bd1`](./contracts/bsc-56/0x84c97300a190676a19d1e13115629a11f8482bd1/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | bsc | n/a | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | bsc | n/a | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | ⚠️ Unaudited |
| LpTokenStaker | core_logic | bsc | n/a | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xc19956...49dddd`](./contracts/bsc-56/0xc19956eca8a3333671490ef6d6d4329df049dddd/) | ⚠️ Unaudited |
| RewardsToken | token | bsc | n/a | 7 deployments: bsc [`0x151f16...72beba`](./contracts/bsc-56/0x151f1611b2e304ded36661f65506f9d7d172beba/); bsc `0x318aa2...6b3886`; bsc `0x373410...52dace`; bsc `0x578104...117b3a`; bsc `0x833915...8d0d27`; bsc `0xf1e7f8...882c48`; bsc `0xf71a0b...e124ec` | ⚠️ Unaudited |
| TokenLocker | token | bsc | n/a | 2 deployments: bsc [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/); bsc `0x51133c...070e0d` | ⚠️ Unaudited |
| ValasMetapoolRewardsToken | core_logic | bsc | n/a | 2 deployments: bsc [`0x8087a9...a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/); bsc `0xf6be0f...4c250d` | ⚠️ Unaudited |
| ValasRewardsToken | token | bsc | n/a | [`0x5b5bd8...0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 14 deployments: bsc [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/); bsc `0x160cae...5d4e76`; bsc `0x19ec9e...0a806d`; bsc `0x245e8b...cfabf5`; bsc `0x2f8e25...9b41be`; bsc `0x41871a...54a5c4`; bsc `0x556ea0...104b63`; bsc `0x592b78...276023`; bsc `0xa7f552...0c6d9f`; bsc `0xab4990...64b6cd`; bsc `0xaf4de8...aaf452`; bsc `0xc377e2...52c874`; bsc `0xc6a752...771a49`; bsc `0xedbb3f...c8ffdc` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-DotDot.pdf](https://github.com/dotdot-ellipsis/dotdot-contracts/blob/main/PeckShield-Audit-Report-DotDot.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd4f7b4...d815a0`](./contracts/bsc-56/0xd4f7b4bc46e6e499d35335d270fd094979d815a0/) | BondedFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e3ebb...5af0f6`](./contracts/bsc-56/0x2e3ebb9f3f42ffc3902e75d84cd92cd0505af0f6/) | CoreMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84c973...482bd1`](./contracts/bsc-56/0x84c97300a190676a19d1e13115629a11f8482bd1/) | DotDot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3670c1...17ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4695e5...9bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcce949...4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | LpTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4076cc...a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc19956...49dddd`](./contracts/bsc-56/0xc19956eca8a3333671490ef6d6d4329df049dddd/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x151f16...72beba`](./contracts/bsc-56/0x151f1611b2e304ded36661f65506f9d7d172beba/) | RewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22a93f...a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8087a9...a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/) | ValasMetapoolRewardsToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b5bd8...0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ValasRewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bc3a8...557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
