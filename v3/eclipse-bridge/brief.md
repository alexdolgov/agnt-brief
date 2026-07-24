# Agentic Audit Brief: Eclipse Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Eclipse Bridge (`eclipse-bridge`)
- Website: [https://www.eclipse.xyz](https://www.eclipse.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 5 unique implementations (6 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $4,747,570.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Eclipse Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2b08d7cf7eaff0f5f6623d9fb09b080726d4be11`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 5 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Eclipse | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6055dc6ff1077eebe5e6d2ba1a1f53d7ef8430de`; ethereum `0x7fd46049829d5d0ce960850ea3438554733a8869` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384168 | `0x2b08d7cf7eaff0f5f6623d9fb09b080726d4be11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-384169 | `0x504392f02ee64d6b51ad3bcf7999e69ebe28b30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02f545d57536bc1e8f12d867731f006aace71e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f7a359c3f33ee8a66bdcbf4c897d25caf90978` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x7fd46049829d5d0ce960850ea3438554733a8869` | non_address_book | unknown | unknown | unverified | n/a | `0xd5ec77040319c7bcfeb45f157f834adf7562a706` |
| unverified unclassified | UnnamedContract<br>`0xd02f545d57536bc1e8f12d867731f006aace71e3` | non_address_book | unknown | unknown | unverified | n/a | `0xbb534a6bd0440727cb5883d037ded7358059d547` |
| unverified unclassified | UnnamedContract<br>`0xf1f7a359c3f33ee8a66bdcbf4c897d25caf90978` | non_address_book | unknown | unknown | unverified | n/a | `0xbb534a6bd0440727cb5883d037ded7358059d547` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [20240313 - Zellic Audit Report.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240313%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240718%20-%20Ottersec%20-%20Eclipse%20Canonical%20Bridge%20Audit%20-%20final.pdf) | Ottersec | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [20240722 - Halborn - V1 Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240722%20-%20Halborn%20-%20V1%20Audit.pdf) | Halborn | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [20241104 - Ottersec Bridge Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20241104%20-%20Ottersec%20Bridge%20Audit.pdf) | Ottersec | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [20241104 - Zellic Bridge Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20241104%20-%20Zellic%20Bridge%20Audit.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20343] 20240313 - Zellic Audit Report.pdf — no match: Scope section lists programs: Mailbox, EtherBridge, Router, Registry, Treasury. Also mentions Solidity and Rust files but no specific file paths. Audit date from cover page and header.
- [20344] 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf — no match: Scope section lists two programs: eclipse and sysgy. Additional contracts (EtherBridge, Mailbox, Treasury, CommonContainer) are referenced in findings as part of the audited codebase.
- [20345] 20240722 - Halborn - V1 Audit.pdf — no match: Scope section lists four Solidity files in src/v1/. Audit engagement dates: July 22-26, 2024.
- [20346] 20241104 - Ottersec Bridge Audit.pdf — no match: The scope section describes the program as 'syzygy' but does not list individual contracts. However, the findings explicitly reference Treasury and CanonicalBridge contracts with file paths, indicating they are in scope.
- [20347] 20241104 - Zellic Bridge Audit.pdf — no match: Scope section lists three programs: Treasury, CanonicalBridge, Upgrader0to1. DeployV1.s is a deployment script mentioned in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20240313 - Zellic Audit Report.pdf | Mailbox | unmatched — not counted | — | listed in scope section as a program | no |
| 20240313 - Zellic Audit Report.pdf | EtherBridge | unmatched — not counted | — | listed in scope section as a program | no |
| 20240313 - Zellic Audit Report.pdf | Router | unmatched — not counted | — | listed in scope section as a program | no |
| 20240313 - Zellic Audit Report.pdf | Registry | unmatched — not counted | — | listed in scope section as a program | no |
| 20240313 - Zellic Audit Report.pdf | Treasury | unmatched — not counted | — | listed in scope section as a program | no |
| 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf | eclipse | unmatched — not counted | — | listed in scope table | no |
| 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf | sysgy | unmatched — not counted | — | listed in scope table | no |
| 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf | EtherBridge | unmatched — not counted | — | mentioned in findings OS-ECB-ADV-00 and OS-ECB-SUG-01 | no |
| 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf | Mailbox | unmatched — not counted | — | mentioned in findings OS-ECB-ADV-02 and OS-ECB-SUG-01 | no |
| 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf | Treasury | unmatched — not counted | — | mentioned in finding OS-ECB-SUG-01 | no |
| 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf | CommonContainer | unmatched — not counted | — | mentioned in finding OS-ECB-SUG-01 | no |
| 20240722 - Halborn - V1 Audit.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| 20240722 - Halborn - V1 Audit.pdf | Mailbox | unmatched — not counted | — | listed in scope | no |
| 20240722 - Halborn - V1 Audit.pdf | EtherBridge | unmatched — not counted | — | listed in scope | no |
| 20240722 - Halborn - V1 Audit.pdf | CommonContainer | unmatched — not counted | — | listed in scope | no |
| 20241104 - Ottersec Bridge Audit.pdf | Treasury | unmatched — not counted | — | Referenced in findings OS-ECS-SUG-00 and OS-ECS-SUG-01 with file paths and code snippets. | no |
| 20241104 - Ottersec Bridge Audit.pdf | CanonicalBridge | unmatched — not counted | — | Referenced in findings OS-ECS-SUG-00 and OS-ECS-SUG-01 with file paths and code snippets. | no |
| 20241104 - Zellic Bridge Audit.pdf | Treasury | unmatched — not counted | — | Listed in scope section as a program. | no |
| 20241104 - Zellic Bridge Audit.pdf | CanonicalBridge | unmatched — not counted | — | Listed in scope section as a program. | no |
| 20241104 - Zellic Bridge Audit.pdf | Upgrader0to1 | unmatched — not counted | — | Listed in scope section as a program. | no |
| 20241104 - Zellic Bridge Audit.pdf | DeployV1.s | unmatched — not counted | — | Mentioned in finding 3.3 as a deployment script. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [20343] 20240313 - Zellic Audit Report.pdf
- [20344] 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf
- [20345] 20240722 - Halborn - V1 Audit.pdf
- [20346] 20241104 - Ottersec Bridge Audit.pdf
- [20347] 20241104 - Zellic Bridge Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
