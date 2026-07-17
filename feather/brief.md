# Agentic Audit Brief: Feather

## Project Overview

- Project: Feather (`feather`)
- Website: [https://app.feather.zone/](https://app.feather.zone/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.761Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: celo, klaytn, sei
- Contract surface: 10 unique implementations (15 raw deployments)
- DeFi Llama TVL: $16,939,129.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 9 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (14 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 9 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 15
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
| AdaptiveCurveIrm | unknown | sei | n/a | [`0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4`](./contracts/sei-1329/0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4/) | ⚠️ Unaudited |
| Bundler3 | unknown | sei | n/a | [`0xf9457356f18a3349bb317ac144c3bcc62e5761ad`](./contracts/sei-1329/0xf9457356f18a3349bb317ac144c3bcc62e5761ad/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | sei | n/a | 6 deployments: sei [`0x015f10a56e97e02437d294815d8e079e1903e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/); sei `0x50715ae180ff0ea799dc8ab635c2d876e528bfe8`; sei `0x8e181221d5602d4cf2b87f3a817c0dac680a7223`; sei `0x948fcc6b7f68f4830cd69db1481a9e1a142a4923`; sei `0x94e6a8714f36cd7220560638882fc137ab5eb79c`; sei `0xbd183661d2e8cefa31799fe3a4cc6f2127963dc5` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | sei | n/a | [`0x8dea49ec5bd5aeac8bcf96b3e187f59354118291`](./contracts/sei-1329/0x8dea49ec5bd5aeac8bcf96b3e187f59354118291/) | ⚠️ Unaudited |
| Morpho | unknown | sei | n/a | [`0xc9cdac20fceaaf616f7eb0bb6cd2c69dcfa9094c`](./contracts/sei-1329/0xc9cdac20fceaaf616f7eb0bb6cd2c69dcfa9094c/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | sei | n/a | [`0x4bd68c2ff3274207ec07ed281c915758b6f23f07`](./contracts/sei-1329/0x4bd68c2ff3274207ec07ed281c915758b6f23f07/) | ⚠️ Unaudited |
| PreLiquidationFactory | registry | sei | n/a | [`0x65ed61058ceb4895b7d62437bacea39b04f6d27b`](./contracts/sei-1329/0x65ed61058ceb4895b7d62437bacea39b04f6d27b/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | sei | n/a | [`0xd878509446be2c601f0f032f501851001b159d6b`](./contracts/sei-1329/0xd878509446be2c601f0f032f501851001b159d6b/) | ⚠️ Unaudited |
| SafeProxy | unknown | celo | n/a | [`0x81c76f62f7e05dec75800150ba5a23f62e2f091f`](./contracts/celo-42220/0x81c76f62f7e05dec75800150ba5a23f62e2f091f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | `0x6ba8f7039bc7d79c1959cb8e409dff2ba05a133e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4`](./contracts/sei-1329/0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xf9457356f18a3349bb317ac144c3bcc62e5761ad`](./contracts/sei-1329/0xf9457356f18a3349bb317ac144c3bcc62e5761ad/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x65ed61058ceb4895b7d62437bacea39b04f6d27b`](./contracts/sei-1329/0x65ed61058ceb4895b7d62437bacea39b04f6d27b/) | PreLiquidationFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xd878509446be2c601f0f032f501851001b159d6b`](./contracts/sei-1329/0xd878509446be2c601f0f032f501851001b159d6b/) | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
