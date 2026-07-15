# Agentic Audit Brief: Pika Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Pika Protocol (`pika-protocol`)
- Website: [https://pikaprotocol.com](https://pikaprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: optimism
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: 2/7 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $401,558.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pika Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across optimism. Structural roles: 4 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (3)
- Contract kinds: contract (7)
- Detected standards: pausable (1)
- Frameworks: openzeppelin (7), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FeeCalculator (`0xe3451b...b4d7c1`, chain 10)
- FundingManager (`0x8af150...c2636c`, chain 10)
- OrderBook (`0x6c420e...4160b1`, chain 10)
- PikaPerpV4 (`0x8c9b6a...16d25e`, chain 10)
- PikaPriceFeedPyth (`0xeab7bd...f239f7`, chain 10)
- PositionManager (`0xcabe9b...716db1`, chain 10)
- VaultFeeReward (`0x0e431e...e1011a`, chain 10)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/7 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 28.6% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrderBook | unknown | project_anchor | own_supporting | 0 | optimism | unit-390895 | `0x6c420e...4160b1` | ✅ Audited |
| PositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-390898 | `0xcabe9b...716db1` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeCalculator | unknown | project_anchor | own_supporting | 0 | optimism | unit-390899 | `0xe3451b...b4d7c1` | ⚠️ Unaudited |
| FundingManager | governance | project_anchor | own_supporting | 0 | optimism | unit-390896 | `0x8af150...c2636c` | ⚠️ Unaudited |
| PikaPerpV4 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390897 | `0x8c9b6a...16d25e` | ⚠️ Unaudited |
| PikaPriceFeedPyth | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-390900 | `0xeab7bd...f239f7` | ⚠️ Unaudited |
| VaultFeeReward | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390894 | `0x0e431e...e1011a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/pikaprotocol](https://skynet.certik.com/projects/pikaprotocol) | CertiK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | n/a | matched | 2 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13678] skynet.certik.com/projects/pikaprotocol — no match: The provided text is a project overview page from CertiK Skynet, not a full audit report. It mentions an audit delivered on 6/15/2021 but does not list any specific contracts in scope.
- [13679] PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf — no match: No reason recorded
- [13680] PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf | PikaPerpV2 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf | PikaStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | CommonHealthCheck | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | OrderBook | own contract | OrderBook (selected) `0x6c420e...4160b1` — deployed 2024-01-27 15:50:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | Pika | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | PikaPerpV3 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | PositionManager | own contract | PositionManager (selected) `0xcabe9b...716db1` — deployed 2024-01-27 15:57:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | SharerV4 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xe3451b...b4d7c1` | FeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8af150...c2636c` | FundingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8c9b6a...16d25e` | PikaPerpV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xeab7bd...f239f7` | PikaPriceFeedPyth | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0e431e...e1011a` | VaultFeeReward | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [13678] skynet.certik.com/projects/pikaprotocol
- [13679] PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
