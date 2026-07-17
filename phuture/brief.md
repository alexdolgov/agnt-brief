# Agentic Audit Brief: Phuture

## Project Overview

- Project: Phuture (`phuture`)
- Website: [https://www.phuture.finance](https://www.phuture.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.106Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: avalanche, ethereum
- Contract surface: 10 unique implementations (13 raw deployments)
- DeFi Llama TVL: $29,887.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 16 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (phutureindex, indexlayout). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 13 (9 live, 4 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/6 (66.7%)
- Deployed-live implementations: 6 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 10
- Raw deployments: 13
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 16.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 42.9% | 2022-08 |
| Code4rena | Tier 1 | 1 | 14.3% | 2022-04 |
| MiloTruck | Tier 2 | 1 | 14.3% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IndexRegistry | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3dad1208afec6eccda25169a5d16119ce2ba76bd`](./contracts/avalanche-43114/0x3dad1208afec6eccda25169a5d16119ce2ba76bd/); avalanche `0xadc391e6a9c43adbc6bcf2210ecf4351714b219a` | ✅ Audited |
| IndexRouter | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6a676ff024215942706071c84e086cd0af361270`](./contracts/avalanche-43114/0x6a676ff024215942706071c84e086cd0af361270/); avalanche `0xd6dd95610fc3a3579a2c32fe06158d8bfb8f4ee9` | ✅ Audited |
| IndexRouter | unknown | avalanche | n/a | [`0xab90ed00f49028b2d00ac6b9a62316c1bcd4719f`](./contracts/avalanche-43114/0xab90ed00f49028b2d00ac6b9a62316c1bcd4719f/) | ✅ Audited |
| ManagedIndex | unknown | avalanche | n/a | 2 deployments: ethereum `0x632806bf5c8f062932dd121244c9fbe7becb8b48`; avalanche [`0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0`](./contracts/avalanche-43114/0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IndexRouterV2 | unknown | avalanche | n/a | [`0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82`](./contracts/avalanche-43114/0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82/) | ⚠️ Unaudited |
| ManagedIndexFactory | unknown | avalanche | n/a | [`0x6d825ce7f220c6cc03fe156f28be6318e6546ca8`](./contracts/avalanche-43114/0x6d825ce7f220c6cc03fe156f28be6318e6546ca8/) | ⚠️ Unaudited |
| OrderingExecutor | unknown | avalanche | n/a | [`0xe9b38d900445685cb7232259c95a96150fdd5585`](./contracts/avalanche-43114/0xe9b38d900445685cb7232259c95a96150fdd5585/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x0f5c321ba2543c3fbb8cf150babe1fdd37a719d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13b613b426c385a25412823420964a908b251f60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64e627240547c388a73a58e476db87674844bea8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/phuture](https://skynet.certik.com/projects/phuture) | CertiK | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2022-04-phuture](https://code4rena.com/reports/2022-04-phuture) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Phuture-FRPVault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Phuture-FRPVault-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Phuture V2 - Renascence Audit Report.pdf](https://github.com/Renascence-Labs/portfolio/blob/main/reports/Phuture%20V2%20-%20Renascence%20Audit%20Report.pdf) | MiloTruck | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Agent Exchange - Renascence Audit Report.pdf](https://github.com/Renascence-Labs/portfolio/blob/main/reports/Agent%20Exchange%20-%20Renascence%20Audit%20Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Phuture-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Phuture-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82`](./contracts/avalanche-43114/0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82/) | IndexRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6d825ce7f220c6cc03fe156f28be6318e6546ca8`](./contracts/avalanche-43114/0x6d825ce7f220c6cc03fe156f28be6318e6546ca8/) | ManagedIndexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe9b38d900445685cb7232259c95a96150fdd5585`](./contracts/avalanche-43114/0xe9b38d900445685cb7232259c95a96150fdd5585/) | OrderingExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=1, extraction_exact=6

Zero-match audit list:

- [13672] skynet.certik.com/projects/phuture
- [13675] PeckShield-Audit-Report-Phuture-FRPVault-v1.0.pdf
- [13677] Agent Exchange - Renascence Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
