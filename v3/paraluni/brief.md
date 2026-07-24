# Agentic Audit Brief: Paraluni

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Paraluni (`paraluni`)
- Website: [https://paraluni.org](https://paraluni.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 31 unique implementations (31 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $340,439.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Paraluni in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159369 | `0xf50adb06c8a479cbad42ed115dbc06976ac1ba60` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-159371 | `0x49a6fd247022e073acd740225304270274ba3075` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159365 | `0x55dd249e2cf23adc885e19248d711ccba4161743` | ⚠️ Unaudited |
| ParaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-159370 | `0x633fa755a83b015cccdc451f82c57ea0bd32b4b4` | ⚠️ Unaudited |
| ParaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159364 | `0x48bb5f07e78f32ac7039366533d620c72c389797` | ⚠️ Unaudited |
| ParaRouterPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159366 | `0x7958b0ee6a42b6ad8be40b3db6aa4dc72edb886b` | ⚠️ Unaudited |
| ParaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159363 | `0x43feaca246392c23ee5a0db618fcd81a74b91726` | ⚠️ Unaudited |
| proxyTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159368 | `0xe1d3b7ecf15bb20bc2a40e7a402f67eb9f2bcaed` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-159367 | `0xc19ecae6348b07014fdba912fa53f23f4798969f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a7ef5a3b3b7026a9610559b06d29ac245698dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2df70517f5ec17b430f938cba30f2d9e90bd8446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3204d1cfe6fd0b0626b28650272a829921e90f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a0e080fc830129ead98f849a7ce639eab1fc94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66785ae53a3a45197b09ba50d932abed9ad23051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x712137d631f7de04c107f375790d81f98dcf4ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76d82d92a70109d75a0ceb2b15384dbc37976968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d87431a752c6c8720051103f532fe43f368f1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b53cf417c176264db0f863b9e93b4528fda3ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x905072738158b5e74251c82e6165b62f3eb513a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0a33e6a7d8961e4d8210a70bc67d3e7b0e8135f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa386f30853a7eb7e6a25ec8389337a5c6973421d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc175ba9707ab15e011489e8225f5f912ef3a9b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc614337488006e92671ba1758489dd3bbea8f9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7d4253e79fd16d3d24b674899d97f2d953d0029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xded40f894d056bf0d8e2638e55fc66a07ecdbdaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe12219884d066546fde461103a521724211147ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7d9c5d8a46099478ee6d2da817448e054522643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2051b01e164a4e72df78a6208e6ac15d7b34125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf575090d0f970a2b1187eb4eeca7b32709bc8832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf997374c0c6e958b9bb61d83fe6bda2e460cb666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfad1a38296ac6f26ff9c8c3d46c97fe1d003448e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 22
- Live contracts: 0
- Unknown liveness contracts: 22
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=22

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1a7ef5a3b3b7026a9610559b06d29ac245698dd6` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x2df70517f5ec17b430f938cba30f2d9e90bd8446` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x3204d1cfe6fd0b0626b28650272a829921e90f0e` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x3a0e080fc830129ead98f849a7ce639eab1fc94b` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x66785ae53a3a45197b09ba50d932abed9ad23051` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x712137d631f7de04c107f375790d81f98dcf4ecd` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x76d82d92a70109d75a0ceb2b15384dbc37976968` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x7d87431a752c6c8720051103f532fe43f368f1ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x8b53cf417c176264db0f863b9e93b4528fda3ee9` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0x905072738158b5e74251c82e6165b62f3eb513a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xa0a33e6a7d8961e4d8210a70bc67d3e7b0e8135f` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xa386f30853a7eb7e6a25ec8389337a5c6973421d` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xc175ba9707ab15e011489e8225f5f912ef3a9b2b` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xc614337488006e92671ba1758489dd3bbea8f9dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xc7d4253e79fd16d3d24b674899d97f2d953d0029` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xded40f894d056bf0d8e2638e55fc66a07ecdbdaf` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xe12219884d066546fde461103a521724211147ee` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xe7d9c5d8a46099478ee6d2da817448e054522643` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xf2051b01e164a4e72df78a6208e6ac15d7b34125` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xf575090d0f970a2b1187eb4eeca7b32709bc8832` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xf997374c0c6e958b9bb61d83fe6bda2e460cb666` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |
| unverified unclassified | UnnamedContract<br>`0xfad1a38296ac6f26ff9c8c3d46c97fe1d003448e` | non_address_book | unknown | unknown | unverified | n/a | `0xd5c0bd4a6f30824e13b15282d431063bd01bd7d0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Paraluni-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Paraluni-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21434] PeckShield-Audit-Report-Paraluni-v1.0.pdf — no match: Contracts extracted from findings targets and mentions; no explicit scope table found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Paraluni-v1.0.pdf | MasterChef | unmatched — not counted | — | Target in findings PVE-001, PVE-003, PVE-005, PVE-006, PVE-009, PVE-010 | no |
| PeckShield-Audit-Report-Paraluni-v1.0.pdf | ParaTokenNew | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Paraluni-v1.0.pdf | ParaRouter | unmatched — not counted | — | Target in findings PVE-004, PVE-008 | no |
| PeckShield-Audit-Report-Paraluni-v1.0.pdf | ParaSupply | unmatched — not counted | — | Target in finding PVE-011 | no |
| PeckShield-Audit-Report-Paraluni-v1.0.pdf | MasterChefPeriphery | unmatched — not counted | — | Mentioned in finding PVE-005 and PVE-006 as sharing issues | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21434] PeckShield-Audit-Report-Paraluni-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
