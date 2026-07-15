# Agentic Audit Brief: Hord

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hord (`hord`)
- Website: [https://www.hord.fi/](https://www.hord.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $302,051.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Hord in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x086a6d...4eec14`, chain 1)
- UnnamedContract (`0x29a5f0...63d574`, chain 1)
- UnnamedContract (`0x51b2f8...b61c92`, chain 1)
- UnnamedContract (`0x8b7819...27eadc`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 4 of 14 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b93c...c4f03b` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c2ca...1d3ac8` | ⚠️ Unaudited |
| HordCongress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604fab...82517f` | ⚠️ Unaudited |
| HordCongressMembersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3be9...1312ef` | ⚠️ Unaudited |
| HordTicketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b063c...487007` | ⚠️ Unaudited |
| HordTicketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3083f8...754f04` | ⚠️ Unaudited |
| HordToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a969...a43448` | ⚠️ Unaudited |
| MaintainersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aedfb...bfc31c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3558...082125` | ⚠️ Unaudited |
| TokensFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c8e7...883373` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241982 | `0x086a6d...4eec14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241983 | `0x29a5f0...63d574` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241984 | `0x51b2f8...b61c92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241985 | `0x8b7819...27eadc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Zokyo]() 22.2.2023](https://github.com/zokyo-sec/audit-reports/blob/main/Hord/Zokyo_Hord%20audit%20report.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [[Diligence Audit]() 23.2.2023](https://uploads-ssl.webflow.com/6048790ad5157f01d7437c77/64526aa73efdd91541f426a9_644438e70d01ac4d026eff8c_Hord%20audit%20report.pdf) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [[Zokyo]() 19.9.2023](https://github.com/zokyo-sec/audit-reports/blob/main/Hord/Hord_Zokyo_audit_report_Sep19_2023.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29739] [Zokyo]() 22.2.2023 — no match: Scope explicitly lists HETH.sol and HordETHStakingManager.sol. TokensFarmSDK.sol is mentioned as an external dependency, not in scope.
- [29740] [Diligence Audit]() 23.2.2023 — no match: Contracts explicitly listed in 'Contracts Audited' section: HETH and HordETHStakingManager.
- [29741] [Zokyo]() 19.9.2023 — matched: Three contracts explicitly listed in scope: StakingConfiguration.sol, HordETHStakingManager.sol, HordETHStakingWithdrawalManager.sol. Audit date from cover page: September 19th 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Zokyo]() 22.2.2023 | HETH | unmatched — not counted | — | listed in scope | no |
| [Zokyo]() 22.2.2023 | HordETHStakingManager | unmatched — not counted | — | listed in scope | no |
| [Diligence Audit]() 23.2.2023 | HETH | unmatched — not counted | — | listed in 'Contracts Audited' section | no |
| [Diligence Audit]() 23.2.2023 | HordETHStakingManager | unmatched — not counted | — | listed in 'Contracts Audited' section | no |
| [Zokyo]() 19.9.2023 | StakingConfiguration | own contract | 0x51b2f8… (selected) `0x51b2f8...b61c92` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Zokyo]() 19.9.2023 | HordETHStakingManager | unmatched — not counted | — | listed in scope | no |
| [Zokyo]() 19.9.2023 | HordETHStakingWithdrawalManager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=1

Zero-match audit list:

- [29739] [Zokyo]() 22.2.2023
- [29740] [Diligence Audit]() 23.2.2023

Fork inheritance lineage and inherited audits are included when available.
