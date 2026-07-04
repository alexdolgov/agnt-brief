# Agentic Audit Brief: panther-protocol

## Project Overview

- Project: panther-protocol (`panther-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.939Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (immutableownable, utils, claimable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolStakes | unknown | ethereum | n/a | [`0x4a4fc4...1b0a76`](./contracts/ethereum-1/0x4a4fc40d2475f493eca3ec436b924237aa1b0a76/) | ⚠️ Unaudited |
| RewardMaster | unknown | ethereum | n/a | [`0x347a58...7f60fc`](./contracts/ethereum-1/0x347a58878d04951588741d4d16d54b742c7f60fc/) | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0xcf4637...3f10e5`](./contracts/ethereum-1/0xcf463713521af5ce31ad18f6914f3706493f10e5/) | ⚠️ Unaudited |
| StakeRewardAdviser | unknown | ethereum | n/a | [`0x5df8ec...64b050`](./contracts/ethereum-1/0x5df8ec95d8b96ada2b4041d639ab66361564b050/) | ⚠️ Unaudited |
| StakeRewardController2 | unknown | ethereum | n/a | [`0x1b3166...c0086b`](./contracts/ethereum-1/0x1b316635a9ed279995c78e5a630e13aad7c0086b/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xf4d06d...11f899`](./contracts/ethereum-1/0xf4d06d72dacdd8393fa4ea72fdcc10049711f899/) | ⚠️ Unaudited |
| VestingPools | unknown | ethereum | n/a | [`0xb47610...dcf14b`](./contracts/ethereum-1/0xb476104aa9d1f30180a01987fb09b1e96ddcf14b/) | ⚠️ Unaudited |
| VotingPowerInformer | unknown | ethereum | n/a | [`0x3813ac...ba0264`](./contracts/ethereum-1/0x3813acf0fb19ff90e62b0c7ada20c9c67cba0264/) | ⚠️ Unaudited |
| ZKPToken | unknown | ethereum | n/a | [`0x909e34...6fa173`](./contracts/ethereum-1/0x909e34d3f6124c324ac83dcca84b74398a6fa173/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a4fc4...1b0a76`](./contracts/ethereum-1/0x4a4fc40d2475f493eca3ec436b924237aa1b0a76/) | PoolStakes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x347a58...7f60fc`](./contracts/ethereum-1/0x347a58878d04951588741d4d16d54b742c7f60fc/) | RewardMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf4637...3f10e5`](./contracts/ethereum-1/0xcf463713521af5ce31ad18f6914f3706493f10e5/) | RewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5df8ec...64b050`](./contracts/ethereum-1/0x5df8ec95d8b96ada2b4041d639ab66361564b050/) | StakeRewardAdviser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3166...c0086b`](./contracts/ethereum-1/0x1b316635a9ed279995c78e5a630e13aad7c0086b/) | StakeRewardController2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4d06d...11f899`](./contracts/ethereum-1/0xf4d06d72dacdd8393fa4ea72fdcc10049711f899/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb47610...dcf14b`](./contracts/ethereum-1/0xb476104aa9d1f30180a01987fb09b1e96ddcf14b/) | VestingPools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3813ac...ba0264`](./contracts/ethereum-1/0x3813acf0fb19ff90e62b0c7ada20c9c67cba0264/) | VotingPowerInformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x909e34...6fa173`](./contracts/ethereum-1/0x909e34d3f6124c324ac83dcca84b74398a6fa173/) | ZKPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
