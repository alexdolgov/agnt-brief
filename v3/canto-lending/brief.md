# Agentic Audit Brief: Canto Lending

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Canto Lending (`canto-lending`)
- Website: [https://canto.io/lending](https://canto.io/lending)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: canto, ethereum
- Contract surface: 18 unique implementations (83 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,029,500.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Canto Lending in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0355e3...33c2f1`, chain 7700)
- UnnamedContract (`0x3c96dc...49b16b`, chain 7700)
- UnnamedContract (`0x5e23dc...4bcc5c`, chain 7700)
- UnnamedContract (`0x617383...bd277a`, chain 7700)
- UnnamedContract (`0x6b46ba...7315a9`, chain 7700)
- UnnamedContract (`0x830b98...ec6030`, chain 7700)
- UnnamedContract (`0x897709...a8d6f8`, chain 7700)
- UnnamedContract (`0xb49a39...b503e3`, chain 7700)
- UnnamedContract (`0xb65ec5...0ca488`, chain 7700)
- UnnamedContract (`0xc0d657...322557`, chain 7700)
- UnnamedContract (`0xd5dbf5...a4d4cf`, chain 7700)
- UnnamedContract (`0xd6a97e...580800`, chain 7700)
- UnnamedContract (`0xde59f0...89ca2e`, chain 7700)
- UnnamedContract (`0xee6024...49504c`, chain 7700)
- UnnamedContract (`0xf0cd6b...16b49f`, chain 7700)
- UnnamedContract (`0xf1f89d...24459c`, chain 7700)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 18 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 18
- Raw deployments: 83
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| CantoOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c03b...b5b220` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | canto | n/a | 66 deployments: canto `0x000000...000000`; canto `0x03f734...0b5e5f`; canto `0x04a724...648d9d`; canto `0x04e524...41900c`; canto `0x0c6cc7...39f43c`; canto `0x0e356b...40f2a3`; canto `0x1a4407...fe728c`; canto `0x1d2063...a85aa9`; canto `0x210b88...3d18c6`; canto `0x216400...718c8b`; canto `0x252631...7e31d5`; canto `0x260fcd...89a571`; canto `0x2bdf6c...bd964b`; canto `0x2db30a...a5c775`; canto `0x2fd02c...e219c6`; canto `0x2fed02...75f57c`; canto `0x308386...fb7b19`; canto `0x35db1f...7df833`; canto `0x395e6c...579fe3`; canto `0x3bee0a...80d0d8`; canto `0x40e41d...9678b2`; canto `0x45bafa...20589b`; canto `0x463e7d...74417a`; canto `0x46970b...18c2b8`; canto `0x4777dc...49928c`; canto `0x477eaf...57346f`; canto `0x4ced98...bd4228`; canto `0x4e71a2...e1e503`; canto `0x4f6dcf...5378aa`; canto `0x4fc300...e88b40`; canto `0x56c03b...b5b220`; canto `0x5fd55a...7ff687`; canto `0x637490...5a77c1`; canto `0x63c8fe...b03f67`; canto `0x648a5a...8e402d`; canto `0x760a17...10570c`; canto `0x79ecce...90ec08`; canto `0x80b5a3...87adcd`; canto `0x826551...d7a07b`; canto `0x831f74...fa44ed`; canto `0x85156b...9bd083`; canto `0x905d3d...06718b`; canto `0x90fccb...eb961b`; canto `0x9160c5...97d5b7`; canto `0x9290c8...793618`; canto `0x94d288...bbcecd`; canto `0x9514c0...5c231f`; canto `0x957199...e7228c`; canto `0xa252ee...825a8e`; canto `0xa51436...7fb77e`; canto `0xb2c551...d1dc81`; canto `0xbed263...26e190`; canto `0xc03955...12af22`; canto `0xc0ce84...7432f3`; canto `0xc51534...df3566`; canto `0xca0323...96410a`; canto `0xca11bd...76ca11`; canto `0xd567b3...a05e75`; canto `0xdb91f7...ead2db`; canto `0xe38706...c1cfba`; canto `0xe536cf...1a2c1a`; canto `0xebe265...d6c36d`; canto `0xeceeef...898265`; canto `0xecf044...095b44`; canto `0xf301c9...93f37f`; canto `0xfb8255...1df03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381701 | `0x0355e3...33c2f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381702 | `0x3c96dc...49b16b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381703 | `0x5e23dc...4bcc5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381704 | `0x617383...bd277a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381705 | `0x6b46ba...7315a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381706 | `0x830b98...ec6030` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381707 | `0x897709...a8d6f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381708 | `0xb49a39...b503e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381709 | `0xb65ec5...0ca488` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381710 | `0xc0d657...322557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381711 | `0xd5dbf5...a4d4cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381712 | `0xd6a97e...580800` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381713 | `0xde59f0...89ca2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381714 | `0xee6024...49504c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381715 | `0xf0cd6b...16b49f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381716 | `0xf1f89d...24459c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/audits/2022-06-canto-contest](https://code4rena.com/audits/2022-06-canto-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/audits/2022-06-canto-v2-contest](https://code4rena.com/audits/2022-06-canto-v2-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/reports/2022-07-canto](https://code4rena.com/reports/2022-07-canto) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [code4rena.com/reports/2021-08-gravitybridge](https://code4rena.com/reports/2021-08-gravitybridge) | Code4rena | Contest | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2761] code4rena.com/audits/2022-06-canto-contest — no match: The provided text is a contest summary from Code4rena for the Canto contest, but it does not list any specific contracts in scope. The audit date is inferred from the end date of the contest.
- [2762] code4rena.com/audits/2022-06-canto-v2-contest — no match: The provided text is a contest summary from Code4rena for 'Canto v2 contest', but it does not list any specific contracts in scope. The audit date is inferred from the end date of the contest.
- [2763] code4rena.com/reports/2022-07-canto — no match: Scope explicitly lists two files: BaseV1-core.sol and BaseV1-periphery.sol. Audit date from report header.
- [14465] code4rena.com/reports/2021-08-gravitybridge — no match: Scope mentions 12 smart contracts but only Gravity.sol and CosmosERC20 are named in the report. Other contracts are not explicitly listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2022-07-canto | BaseV1-core | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-07-canto | BaseV1-periphery | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2021-08-gravitybridge | Gravity | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2021-08-gravitybridge | CosmosERC20 | unmatched — not counted | — | deployed in Gravity.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [2761] code4rena.com/audits/2022-06-canto-contest
- [2762] code4rena.com/audits/2022-06-canto-v2-contest
- [2763] code4rena.com/reports/2022-07-canto
- [14465] code4rena.com/reports/2021-08-gravitybridge

Fork inheritance lineage and inherited audits are included when available.
