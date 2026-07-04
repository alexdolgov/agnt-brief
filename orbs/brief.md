# Agentic Audit Brief: orbs

## Project Overview

- Project: orbs (`orbs`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.152Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

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
| DateTime | unknown | ethereum | n/a | [`0xd8ddbb...c9014b`](./contracts/ethereum-1/0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b/) | ⚠️ Unaudited |
| OrbsGuardians | unknown | ethereum | n/a | [`0xd64b1b...d5e711`](./contracts/ethereum-1/0xd64b1bf6fcab5add75041c89f61816c2b3d5e711/) | ⚠️ Unaudited |
| OrbsRewardsDistribution | unknown | ethereum | n/a | [`0xb2969e...b7a7a0`](./contracts/ethereum-1/0xb2969e54668394bca9b8af61bc39b92754b7a7a0/) | ⚠️ Unaudited |
| OrbsRewardsDistributionForStaking | unknown | ethereum | n/a | [`0xb52daf...39bd0c`](./contracts/ethereum-1/0xb52daf3f853bf570814d6aea1ec7bff30339bd0c/) | ⚠️ Unaudited |
| OrbsToken | unknown | ethereum | n/a | [`0xff56cc...08b0fa`](./contracts/ethereum-1/0xff56cc6b1e6ded347aa0b7676c85ab0b3d08b0fa/) | ⚠️ Unaudited |
| OrbsValidators | unknown | ethereum | n/a | [`0x240faa...84f00f`](./contracts/ethereum-1/0x240faa45557c61b6959162660e324bb90984f00f/) | ⚠️ Unaudited |
| OrbsValidatorsRegistry | unknown | ethereum | n/a | [`0x56a689...871f0a`](./contracts/ethereum-1/0x56a6895fd37f358c17cbb3f14a864ea5fe871f0a/) | ⚠️ Unaudited |
| OrbsVoting | unknown | ethereum | n/a | [`0x30f855...865d2d`](./contracts/ethereum-1/0x30f855afb78758aa4c2dc706fb0fa3a98c865d2d/) | ⚠️ Unaudited |
| StakingContract | unknown | ethereum | n/a | [`0x01d59a...2656c3`](./contracts/ethereum-1/0x01d59af68e2dcb44e04c50e05f62e7043f2656c3/) | ⚠️ Unaudited |

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
| ethereum | [`0xd8ddbb...c9014b`](./contracts/ethereum-1/0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b/) | DateTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd64b1b...d5e711`](./contracts/ethereum-1/0xd64b1bf6fcab5add75041c89f61816c2b3d5e711/) | OrbsGuardians | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2969e...b7a7a0`](./contracts/ethereum-1/0xb2969e54668394bca9b8af61bc39b92754b7a7a0/) | OrbsRewardsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb52daf...39bd0c`](./contracts/ethereum-1/0xb52daf3f853bf570814d6aea1ec7bff30339bd0c/) | OrbsRewardsDistributionForStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff56cc...08b0fa`](./contracts/ethereum-1/0xff56cc6b1e6ded347aa0b7676c85ab0b3d08b0fa/) | OrbsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x240faa...84f00f`](./contracts/ethereum-1/0x240faa45557c61b6959162660e324bb90984f00f/) | OrbsValidators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56a689...871f0a`](./contracts/ethereum-1/0x56a6895fd37f358c17cbb3f14a864ea5fe871f0a/) | OrbsValidatorsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30f855...865d2d`](./contracts/ethereum-1/0x30f855afb78758aa4c2dc706fb0fa3a98c865d2d/) | OrbsVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d59a...2656c3`](./contracts/ethereum-1/0x01d59af68e2dcb44e04c50e05f62e7043f2656c3/) | StakingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
