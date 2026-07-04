# Agentic Audit Brief: Firebird

## Project Overview

- Project: Firebird (`firebird`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:51.662Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: polygon
- Contract surface: 24 unique implementations (33 raw deployments)
- DeFi Llama TVL: $17,520.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 35 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 6 common project-authored base contract(s) (ownableupgradesafe, contextupgradesafe, erc20upgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 28 (19 live, 9 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/18 (11.1%)
- Deployed-live implementations: 18 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/20
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 24
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 10.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FireBirdRouter | adapter | polygon | n/a | [`0xf6fa9e...20bfac`](./contracts/polygon-137/0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac/) | ✅ Audited |
| FireBirdZap | unknown | polygon | n/a | 2 deployments: polygon [`0x43659c...ff3dfc`](./contracts/polygon-137/0x43659cd896e93620aecc5e74a4e3b76f98ff3dfc/); polygon `0xa3dd48...14d6bf` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FirebirdReserveFund | unknown | polygon | n/a | 2 deployments: polygon [`0x5d53c9...6618e4`](./contracts/polygon-137/0x5d53c9f5017198333c625840306d7544516618e4/); polygon `0xd01224...0a1211` | ⚠️ Unaudited |
| FirebirdReserveFund | unknown | polygon | n/a | [`0xa632fa...665038`](./contracts/polygon-137/0xa632fa6fa83790ff843c48fab013f0fbc5665038/) | ⚠️ Unaudited |
| HopeReferral | unknown | polygon | n/a | 2 deployments: polygon [`0x3150cc...f63961`](./contracts/polygon-137/0x3150cc5bf0168098440794d1a8ec2eff1ff63961/); polygon `0xe5c46e...0c28d8` | ⚠️ Unaudited |
| mHopeStakingPool | unknown | polygon | n/a | 2 deployments: polygon [`0x0c80da...5abb04`](./contracts/polygon-137/0x0c80da180f82b82c85939198d7f64bc4dc5abb04/); polygon `0x3f8136...1d65ec` | ⚠️ Unaudited |
| mHopeStakingPool | core_logic | polygon | n/a | [`0xd57e13...e00797`](./contracts/polygon-137/0xd57e13058eb5d9a017a0d3c3b222c5f339e00797/) | ⚠️ Unaudited |
| MHopeStakingPoolV2 | unknown | polygon | n/a | [`0xb829b0...b4ea5f`](./contracts/polygon-137/0xb829b0aafe8c42ed40050051e49221d191b4ea5f/) | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | polygon | n/a | [`0xef7e34...59cd7b`](./contracts/polygon-137/0xef7e3401f70ae2e49e3d2af0a30d2978a059cd7b/) | ⚠️ Unaudited |
| StableSwapRouter | unknown | polygon | n/a | [`0x26ffd8...67d300`](./contracts/polygon-137/0x26ffd8cf4492b468d5412ddca9e1dd089b67d300/) | ⚠️ Unaudited |
| StakePoolController | core_logic | polygon | n/a | 2 deployments: polygon [`0xe13910...128e87`](./contracts/polygon-137/0xe13910c475edfc99e66236772ee29b4dfd128e87/); polygon `0xeaf08f...2c3047` | ⚠️ Unaudited |
| StakePoolCreator | unknown | polygon | n/a | 2 deployments: polygon [`0x998055...44b3a7`](./contracts/polygon-137/0x998055f2ae6003addd804b3aaf088932d244b3a7/); polygon `0xf95b43...261093` | ⚠️ Unaudited |
| StakePoolEpochRewardCreator | unknown | polygon | n/a | [`0x96f33c...38d696`](./contracts/polygon-137/0x96f33c5dfd4bf6f2f379e98e2fc640ca0538d696/) | ⚠️ Unaudited |
| Timelock | governance | polygon | n/a | [`0xe59511...2328e1`](./contracts/polygon-137/0xe59511c0ef42fb3c419ac2651406b7b8822328e1/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x0e70c0...7cef06`](./contracts/polygon-137/0x0e70c03dd6ee9da67d4174ba31ae64722a7cef06/); polygon `0xd78c47...c1e660` | ⚠️ Unaudited |
| UpgradableProxy | unknown | polygon | n/a | [`0xe9a8b6...dd21d4`](./contracts/polygon-137/0xe9a8b6ea3e7431e6befca51258cb472df2dd21d4/) | ⚠️ Unaudited |
| ValueToHopeLocker | unknown | polygon | n/a | 2 deployments: polygon [`0x5bae9d...c81f8b`](./contracts/polygon-137/0x5bae9d51214a531c2ff1787b5594e65468c81f8b/); polygon `0x828be2...548a25` | ⚠️ Unaudited |
| ValueToHopeLocker | unknown | polygon | n/a | [`0xf6abab...4979e0`](./contracts/polygon-137/0xf6ababcca97d40d0a61560f57f383e36714979e0/) | ⚠️ Unaudited |
| VotingEscrowToken | unknown | polygon | n/a | 2 deployments: polygon [`0x12bdad...947af3`](./contracts/polygon-137/0x12bdad0abfccb9d88e9cc047f1e4cfab94947af3/); polygon `0x2dcbab...da42fd` | ⚠️ Unaudited |
| VotingEscrowToken | operational_periphery | polygon | n/a | [`0xd53f4e...31dee4`](./contracts/polygon-137/0xd53f4e2fd7dce0381282af7d2b06bd7b5031dee4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x012497...2d35d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x224e95...afe397` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bfbf7...c5e365` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3ceb9...e2bc18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Firebird-Swap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Firebird-Swap-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
