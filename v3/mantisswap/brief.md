# Agentic Audit Brief: MantisSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: MantisSwap (`mantisswap`)
- Website: [https://mantissa.finance](https://mantissa.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon, polygon-zkevm
- Contract surface: 11 unique implementations (13 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $182,787.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MantisSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across polygon, polygon-zkevm. Structural roles: 7 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (7), supporting (2), core (1)
- Contract kinds: contract (10)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GnosisSafeProxy (`0x56dc54...b95e71`, chain 137)
- MNT (`0xe92175...eeae04`, chain 137)
- UnnamedContract (`0x12d41b...d98215`, chain 1101)
- UnnamedContract (`0x375488...e736bf`, chain 1101)
- UnnamedContract (`0x3b92b5...7073f4`, chain 1101)
- UnnamedContract (`0x4af97f...db3e77`, chain 1101)
- UnnamedContract (`0x9b7bce...aefe4b`, chain 1101)
- UnnamedContract (`0xfe825c...3947a8`, chain 1101)

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 40.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterMantis | unknown | project_anchor | own_supporting | 1 | polygon | unit-388878 | `0x2c1ded...8b6d1e` | ✅ Audited |
| Pool | unknown | project_anchor | own_supporting | 1 | polygon | unit-388881 | `0x62ba5e...7166ad` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-388879 | `0x56dc54...b95e71` | ⚠️ Unaudited |
| LP | unknown | project_anchor | own_supporting | 3 | polygon | unit-388880 (3 proxies) | 3 deployments: polygon `0x4b3bfc...23e64b`; polygon `0xe03aec...13b889`; polygon `0xe8a1ea...ce1820` | ⚠️ Unaudited |
| MNT | unknown | project_anchor | own_supporting | 0 | polygon | unit-388877 | `0xe92175...eeae04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388871 | `0x12d41b...d98215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388872 | `0x375488...e736bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388873 | `0x3b92b5...7073f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388874 | `0x4af97f...db3e77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388875 | `0x9b7bce...aefe4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388876 | `0xfe825c...3947a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-MantisSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd](https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13459] PeckShield-Audit-Report-MantisSwap-v1.0.pdf — matched: Contracts extracted from findings targets. No explicit scope table found, but contracts are clearly audited.
- [13460] omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd — matched: Extracted 10 contracts from the 'Contracts Assessed' table. Audit date is the latest commit date (August 12th 2023) from the revision table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | veMNT | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | Marketplace | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | MasterMantis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2c1ded...8b6d1e` — deployed 2023-03-20 13:49:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | Rewarder | unmatched — not counted | — | Target in finding PVE-003 | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | LP | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x4b3bfc...23e64b` — deployed 2023-03-20 13:50:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe8a1ea...ce1820` — deployed 2023-03-20 13:50:36+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe03aec...13b889` — deployed 2023-03-20 13:50:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | MNTS | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Marketplace | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | MasterMantis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2c1ded...8b6d1e` — deployed 2023-03-20 13:49:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Pool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ba5e...7166ad` — deployed 2023-03-20 13:50:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | PoolHelper | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | PoolVolatile | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Rewarder | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Vesting | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | veMNT | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x4b3bfc...23e64b` | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe92175...eeae04` | MNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 10 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
