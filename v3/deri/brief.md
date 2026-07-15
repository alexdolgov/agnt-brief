# Agentic Audit Brief: Deri

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Deri (`deri`)
- Website: [https://deri.io/#/index](https://deri.io/#/index)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, blast, bsc, linea, manta-pacific, scroll, zksync-era
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,810,216.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Deri. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, blast, bsc, linea, manta-pacific, polygon, scroll, zksync-era. Structural roles: 3 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (3), supporting (1)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x34fd72...1962d0`, chain 324)
- Gateway (`0x7c4a64...a7ef81`, chain 42161)
- Gateway (`0xe840bb...b88866`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 3 of 7 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/deriprotocol/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Gateway | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-235241 | `0xc8fa78...154ae9` | ⚠️ Unaudited |
| GatewayImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235246 | `0x7c4a64...a7ef81` | ⚠️ Unaudited |
| GatewayImplementation | unknown | project_anchor | own_supporting | 1 | linea | unit-235247 | `0xe840bb...b88866` | ⚠️ Unaudited |
| SwitchOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-235243 | `0x7b56af...be771d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-235244 | `0x2c2e1e...4939ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-235242 | `0x34fd72...1962d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-235245 | `0x601380...5d4605` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-DeriV4-1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV4-1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-DeriV3-1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV3-1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [PeckShield-Audit-Report-Deri-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Deri-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [PeckShield-Audit-Report-DeriV2-v1.0.pdf](https://github.com/peckshield/publications/blob/693bdb69e3e3e422b4f7e1f3130d841e631b4dab/audit_reports/PeckShield-Audit-Report-DeriV2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [skynet.certik.com/projects/deriprotocol](https://skynet.certik.com/projects/deriprotocol) | CertiK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf) | PeckShield | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [immunefi.com/bug-bounty/deriprotocol/information](https://immunefi.com/bug-bounty/deriprotocol/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3690] PeckShield-Audit-Report-DeriV4-1.0.pdf — no match: No explicit scope table found; contracts extracted from finding targets. Audit date from cover page.
- [3691] PeckShield-Audit-Report-DeriV3-1.0.pdf — no match: No reason recorded
- [3692] PeckShield-Audit-Report-Deri-v1.0.pdf — no match: No explicit scope table; contract names extracted from findings targets and mentions.
- [3693] PeckShield-Audit-Report-DeriV2-v1.0.pdf — no match: Extracted contract names from findings targets and code listings. Audit date from cover page and table.
- [3694] skynet.certik.com/projects/deriprotocol — no match: The document is a CertiK Skynet project insight page for Deri Protocol, not a formal audit report. It mentions an audit delivered on 6/3/2021 but does not list any contracts in scope. The only contract address shown is 0xa487bf43cf3b10dffc97a9a744cbb7036965d3b9, but it is not explicitly named as a contract in scope.
- [3695] PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings targets and report mentions.
- [3697] PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf — no match: Extracted contract names from the 'Target' fields in the findings table and detailed results. The audit report focuses on Deri-V4 (Aptos/Supra) and lists specific modules/contracts: i256, gateway, global_state. The audit date is March 27, 2025 from the cover page and version history.
- [3698] immunefi.com/bug-bounty/deriprotocol/information — no match: The document is a bug bounty program description, not an audit report. No specific contract names or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-DeriV4-1.0.pdf | VaultImplementationVenus | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-DeriV4-1.0.pdf | VaultImplementationNone | unmatched — not counted | — | Target in findings PVE-002 and PVE-003 | no |
| PeckShield-Audit-Report-DeriV4-1.0.pdf | SymbolManagerImplementation | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-DeriV3-1.0.pdf | IDToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-DeriV3-1.0.pdf | IERC20 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-DeriV3-1.0.pdf | IVToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-DeriV3-1.0.pdf | IVault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-DeriV3-1.0.pdf | PoolImplementation | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-DeriV3-1.0.pdf | Swapper | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Deri-v1.0.pdf | PerpetualPool | unmatched — not counted | — | Target in findings PVE-001, PVE-003, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Deri-v1.0.pdf | LiquidatorQualifier | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Deri-v1.0.pdf | LToken | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-Deri-v1.0.pdf | PToken | unmatched — not counted | — | Mentioned in finding PVE-004 as a token contract | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | SymbolOracleOffChain | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | PerpetualPool | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-005, and mentioned in scope | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | LToken | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | PToken | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | PerpetualPoolRouter | unmatched — not counted | — | Target in findings PVE-006, PVE-009 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | LendingStrategyUSDT | unmatched — not counted | — | Target in finding PVE-007 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | BTokenOracle1 | unmatched — not counted | — | Target in finding PVE-008 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | BTokenOracle2 | unmatched — not counted | — | Target in finding PVE-008 | no |
| PeckShield-Audit-Report-DeriV2-v1.0.pdf | BTokenSwapper1 | unmatched — not counted | — | Mentioned in code listing for PVE-007 | no |
| PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf | Ownable | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf | BTokenSwapper | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf | EverlastingOption | unmatched — not counted | — | Target in finding PVE-003 and mentioned in conclusion | no |
| PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf | i256 | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf | gateway | ambiguous — not counted | Gateway (proxy) (alternative) `0x7c4a64...a7ef81` — deployed 2023-11-26 07:45:22+03 — liveness: live (current_address_book_code)<br>Gateway (proxy) (alternative) `0xe840bb...b88866` — deployed 2023-11-21 13:58:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf | global_state | unmatched — not counted | — | Target in finding PVE-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x7c4a64...a7ef81` | GatewayImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe840bb...b88866` | GatewayImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2, medium=3
- Match method counts: n/a

Zero-match audit list:

- [3690] PeckShield-Audit-Report-DeriV4-1.0.pdf
- [3691] PeckShield-Audit-Report-DeriV3-1.0.pdf
- [3692] PeckShield-Audit-Report-Deri-v1.0.pdf
- [3693] PeckShield-Audit-Report-DeriV2-v1.0.pdf
- [3694] skynet.certik.com/projects/deriprotocol
- [3695] PeckShield-Audit-Report-DeriV2EverLasting-v1.0.pdf
- [3697] PeckShield-Audit-Report-DeriV4-Supra-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
