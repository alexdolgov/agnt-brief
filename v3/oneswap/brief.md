# Agentic Audit Brief: OneSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: OneSwap (`oneswap`)
- Website: [https://www.oneswap.net](https://www.oneswap.net)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, coinex-smart-chain, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $226,615.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for OneSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x9f4165009e93b7f5ba61a477ad08cd3d1ad8aa36`, chain 52)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 8 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LockSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01977983a85804f17835f5ea8232bbd9fbeeac38` | ⚠️ Unaudited |
| OneSwapBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a359cb732bfb74e77d282ace88e43db28a5f33` | ⚠️ Unaudited |
| OneSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed3c9089ed0355bc77cf439dc2ed28c4054c8c4` | ⚠️ Unaudited |
| OneSwapGov | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0825577c259aa94728310875368f905afc57c4f` | ⚠️ Unaudited |
| OneSwapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3e0852d664b671222384d654d789b2434a9446` | ⚠️ Unaudited |
| OneSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed3c9089ed0355bc77cf439dc2ed28c4054c8c4` | ⚠️ Unaudited |
| OneSwapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b342c51d1592c41068d5d4b4da4a68c0a04d5a4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | token | project_anchor | own_supporting | 0 | coinex-smart-chain | unit-390459 | `0x9f4165009e93b7f5ba61a477ad08cd3d1ad8aa36` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BEOSIN-Smart contract security audit report-OneSwap.pdf](https://github.com/oneswap/contract_audit_report/blob/master/BEOSIN-Smart%20contract%20security%20audit%20report-OneSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [PeckShield-Audit-Report-OneSwap-v1.0.pdf](https://github.com/oneswap/contract_audit_report/blob/master/PeckShield-Audit-Report-OneSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [SlowMist-Smart Contract Security Audit - OneSwap.pdf](https://github.com/oneswap/contract_audit_report/blob/master/SlowMist-Smart%20Contract%20Security%20Audit%20-%20OneSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24304] BEOSIN-Smart contract security audit report-OneSwap.pdf — no match: Extracted contract names from business security descriptions and audit details. No explicit scope table, but contracts are clearly identified as part of the OneSwap project.
- [24305] PeckShield-Audit-Report-OneSwap-v1.0.pdf — no match: Contracts extracted from 'Target' fields in findings and from the report description. The audit date is from the cover page and version history.
- [24306] SlowMist-Smart Contract Security Audit - OneSwap.pdf — no match: Contracts listed in section 4.1 Contracts Description with function tables.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BEOSIN-Smart contract security audit report-OneSwap.pdf | OneSwapToken | unmatched — not counted | — | mentioned in audit detail 4.1 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | OneSwapPair | unmatched — not counted | — | mentioned in audit detail 4.2 and 4.5 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | OneSwapRouter | unmatched — not counted | — | mentioned in business security section 3.2 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | OneSwapBuyback | unmatched — not counted | — | mentioned in business security section 3.4 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | OneSwapGov | unmatched — not counted | — | mentioned in business security section 3.5 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | LockSend | unmatched — not counted | — | mentioned in business security section 3.6 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | SupervisedSend | unmatched — not counted | — | mentioned in business security section 3.7 and audit detail 4.4 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | OneSwapFactory | unmatched — not counted | — | mentioned in audit detail 4.3 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | IOneSwapPair | unmatched — not counted | — | mentioned in audit detail 4.2 | no |
| BEOSIN-Smart contract security audit report-OneSwap.pdf | ProxyData | unmatched — not counted | — | mentioned in audit detail 4.2 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapBlackList | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapGov | unmatched — not counted | — | Target in findings PVE-002 and PVE-003 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapBuyback | unmatched — not counted | — | Target in findings PVE-004, PVE-011, PVE-015 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapRouter | unmatched — not counted | — | Target in findings PVE-005, PVE-006, PVE-007 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapPair | unmatched — not counted | — | Target in findings PVE-008, PVE-014, PVE-015 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapFactory | unmatched — not counted | — | Target in finding PVE-009 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | OneSwapToken | unmatched — not counted | — | Target in finding PVE-010 | no |
| PeckShield-Audit-Report-OneSwap-v1.0.pdf | SupervisedSend | unmatched — not counted | — | Target in findings PVE-012, PVE-013 | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapBlackList | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | LockSend | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapBuyback | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapFactory | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapGov | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapPair | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapRouter | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | OneSwapToken | unmatched — not counted | — | listed in scope | no |
| SlowMist-Smart Contract Security Audit - OneSwap.pdf | SupervisedSend | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [24304] BEOSIN-Smart contract security audit report-OneSwap.pdf
- [24305] PeckShield-Audit-Report-OneSwap-v1.0.pdf
- [24306] SlowMist-Smart Contract Security Audit - OneSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
