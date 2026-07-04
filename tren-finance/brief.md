# Agentic Audit Brief: Tren Finance

## Project Overview

- Project: Tren Finance (`tren-finance`)
- Website: [https://www.tren.finance/](https://www.tren.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.447Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, base
- Contract surface: 38 unique implementations (43 raw deployments)
- DeFi Llama TVL: $25.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 16 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (trenbase, configurableaddresses). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 70; live-surface contracts included: 43 (12 live, 31 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/6 (66.7%)
- Deployed-live implementations: 7 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 38
- Raw deployments: 43
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 16.7% (ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 2 | 28.6% | 2024-10 |
| Consensys Diligence | Tier 1 | 1 | 14.3% | 2022-03 |
| unknown | Tier 2 | 1 | 14.3% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowerOperations | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x12fa13...b28fef`](./contracts/arbitrum-42161/0x12fa1398d6695051dd474f32ef7b47b936b28fef/); arbitrum `0x6bbe88...6886ff`; arbitrum `0x727d45...32d341`; arbitrum `0xc0493e...f17344` | ✅ Audited |
| Hypervisor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa571e2...a3da1f`](./contracts/arbitrum-42161/0xa571e2f54e7d032fc9509480b620af5d46a3da1f/); arbitrum `0xd95691...00129c` | ✅ Audited |
| SingleLiquidityProvider | unknown | arbitrum | n/a | [`0xdc4a31...1df11b`](./contracts/arbitrum-42161/0xdc4a311f0d852934d9b51c0eac7c7e13ea1df11b/) | ✅ Audited |
| TrenBoxStorage | unknown | arbitrum | n/a | [`0x182473...10cec8`](./contracts/arbitrum-42161/0x1824738d10c49514bc8375ab0d728fbf7d10cec8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveStableSwapNG | operational_periphery | arbitrum | n/a | [`0x4bd135...4e58b4`](./contracts/arbitrum-42161/0x4bd135524897333bec344e50ddd85126554e58b4/) | ⚠️ Unaudited |
| DebtToken | token | arbitrum | n/a | [`0xd4fe6e...10239f`](./contracts/arbitrum-42161/0xd4fe6e1e37dfcf35e9eeb54d4cca149d1c10239f/) | ⚠️ Unaudited |
| TrenToken | token | base | n/a | 2 deployments: base [`0x45bc45...f891b5`](./contracts/base-8453/0x45bc451818502c45b7e9f628b9e1a72247f891b5/); base `0xa77e22...25c282` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x06830d...a356b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08a346...ff5c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09ba07...0da274` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b43b9...09cda2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f0b27...1ce0ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1418b5...e59089` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x162e7c...f4628f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18512f...a4a150` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20ea10...8b9f3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x262c4a...1f7707` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3135cb...47d1e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b57fe...37fc89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d87c8...af138e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b7cec...550619` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6396c5...f10d94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x682733...7ea2ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c6528...6168b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73ff08...53a31a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x754ae6...cf0db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96396b...d69bfa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96c253...4aa9b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb91b4a...3766ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc44329...c644f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbb6ee...db07a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7c3ef...0820bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7fa72...88b584` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebb44b...549dda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeef734...9e5000` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1eaec...9af7dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf8c964...739c56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc3a33...e10b0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Tren Finance_Zokyo_audit_report_Nov19th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Tren%20Finance/Tren%20Finance_Zokyo_audit_report_Nov19th_2024.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [omniscia.io/reports/tren-finance-protocol-implementation-669a7ac304bcc60018f62232](https://omniscia.io/reports/tren-finance-protocol-implementation-669a7ac304bcc60018f62232) | Omniscia | Audit | 2024-10 | aging | Direct | contract_name | 5 | medium |
| [www.halborn.com/audits/tren-finance/hooks-contracts](https://www.halborn.com/audits/tren-finance/hooks-contracts) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gamma Security Review (Jan 2024).pdf](https://github.com/GammaStrategies/hypervisor/blob/master/Gamma%20Security%20Review%20(Jan%202024).pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [ConsenSys-Diligence-Audit-28-03-22.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/ConsenSys-Diligence-Audit-28-03-22.pdf) | Consensys Diligence | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [AE_Gamma_audit_09_03_22.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/AE_Gamma_audit_09_03_22.pdf) | Consensys Diligence | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xd4fe6e...10239f`](./contracts/arbitrum-42161/0xd4fe6e1e37dfcf35e9eeb54d4cca149d1c10239f/) | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45bc45...f891b5`](./contracts/base-8453/0x45bc451818502c45b7e9f628b9e1a72247f891b5/) | TrenToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: contract_name=1, extraction_exact=9

Zero-match audit list:

- [14028] www.halborn.com/audits/tren-finance/hooks-contracts
- [14029] Gamma Security Review (Jan 2024).pdf

Fork inheritance lineage and inherited audits are included when available.
