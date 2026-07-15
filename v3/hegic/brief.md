# Agentic Audit Brief: Hegic

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hegic (`hegic`)
- Website: [https://www.hegic.co](https://www.hegic.co)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,119,546.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hegic. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: ownable (3), erc20 (2), chainlinkaggregator (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ef61e...c7f69a`, chain 1)
- UnnamedContract (`0x396124...8723bd`, chain 1)
- UnnamedContract (`0x840a1a...7e515b`, chain 1)
- UnnamedContract (`0xf40300...bee88c`, chain 1)
- EACAggregatorProxy (`0x5f4ec3...5b8419`, chain 1)
- HegicERCPool (`0x20dd9e...ad5de7`, chain 1)
- HegicETHOptions (`0xefc0ee...9ecfa2`, chain 1)
- HegicETHPool (`0x878f15...4e140b`, chain 1)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 75.0% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HegicERCPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387224 | `0x20dd9e...ad5de7` | ✅ Audited |
| HegicETHOptions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387229 | `0xefc0ee...9ecfa2` | ✅ Audited |
| HegicETHPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387228 | `0x878f15...4e140b` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387226 | `0x5f4ec3...5b8419` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387223 | `0x1ef61e...c7f69a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387225 | `0x396124...8723bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387227 | `0x840a1a...7e515b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387230 | `0xf40300...bee88c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf](https://github.com/hegic/contracts/blob/main/packages/herge/docs/PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [PeckShield-Audit-Report-Hegic-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Hegic-v1.0.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | n/a | matched | 3 | 0 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7286] PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf — no match: No reason recorded
- [11793] PeckShield-Audit-Report-Hegic-v1.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf | CoverPool | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf | HegicInverseStrategy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf | HegicStrategy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf | OperationalTreasury | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicERCPool | own contract | HegicERCPool (selected) `0x20dd9e...ad5de7` — deployed 2020-10-10 22:33:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicETHOptions | own contract | HegicETHOptions (selected) `0xefc0ee...9ecfa2` — deployed 2020-10-14 17:57:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicETHPool | own contract | HegicETHPool (selected) `0x878f15...4e140b` — deployed 2020-10-10 22:12:29+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicETHRewards | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicRewards | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicStakingETH | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicStakingWBTC | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicWBTCOptions | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | HegicWBTCRewards | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hegic-v1.0.pdf | IHegicOptions | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5f4ec3...5b8419` | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=3

Zero-match audit list:

- [7286] PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
