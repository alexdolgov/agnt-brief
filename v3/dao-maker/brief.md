# Agentic Audit Brief: DAO Maker

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DAO Maker (`dao-maker`)
- Website: [https://daomaker.com/](https://daomaker.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, celo, ethereum, fantom, polygon
- Contract surface: 19 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,351,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DAO Maker in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 19
- Raw deployments: 26
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BuyNLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8cc92cee71e789e6a69e5996cee43fa3bf13ae` | ⚠️ Unaudited |
| DAOFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x598ca79eee092a084b5f168c4196edb80ea22781` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x141ba88b17442f4fe305871c9642e3c1c6307346`; ethereum `0x17aa352f4197d762d14f55f4ddcec47962ea8490`; ethereum `0x6d29767dcd970c7c2d4441566478502cb7f87b45`; ethereum `0x7c27bc15dee9bfff50aa8c9ffd75e52367d1a9ff`; ethereum `0xc8cf20c8ec1cf86eb85101fdfab8312395cb4ef6`; ethereum `0xea7891db42c17ed7a697157d643fd27e333e553e` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xabfb0aa83b427519cc27da5b6357a0ccbd8f531e`; ethereum `0xd07e86f68c7b9f9b215a3ca3e79e74bf94d6a847`; ethereum `0xefee3763000afbffb8551df16800e571b9b66188` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f51bb10119727a7e5ea3538074fb341f56b09ad` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e8def41d8c70de900dd673c08238f77c2747bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47617f799d7e23d2b6c9f77bf2b58d14cf669f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa001cbd8a337afdf2a35273e4b45399cd87cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608926ff4074c2c15c807b8ec250785f9e58d856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6347d8a905111b012bb1ce6121db020fa41f5bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a45b5b7af56b9ee4c22abc3fdffc8bf014182f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b03e2261631912b7cedab85eb0ef099eb079e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db84c4a3cd4359c665b98711bbb4b7450f9357f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fed6da93e0e3d0d8416ccfe3c79c210342d302c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7301df3ced2de2138a294862fcccb184d7cc23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf5180580c3c300cd9714d28813d4907123b0490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddde915b4b1a4d9a83ac166ad6b252d981fdb351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55c9a5da032dffd251bba6400d04a0122b0dde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb62131cfe56b1410bfb109e3c1209917b1f74a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view](https://drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view](https://drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view](https://drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view](https://drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view) | unknown | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view](https://drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view](https://drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view](https://drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2919] drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view — no match: Two contracts in scope: GlobalsAndUtility and Staking. Audit date is Nov 18, 2021.
- [2920] drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view — no match: Three contracts explicitly listed in scope section.
- [2921] drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view — no match: No explicit scope table; contracts inferred from findings and code listings.
- [2922] drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view — no match: Two contracts explicitly named in scope: Staking.sol and GlobalsAndUtility.sol. Audit date from header.
- [2923] drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view — no match: No explicit scope section; contracts inferred from findings sections.
- [2924] drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view — no match: Only one contract Farm.sol is in scope. Date is March 2022, interpreted as end of month.
- [2925] drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view — no match: Only one contract 'Farm' is explicitly in scope. The report references 'Farm' as the target contract in all findings. No other contract names are provided in the scope section or file listing.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view | GlobalsAndUtility | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view | Staking | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view | ERC20Mock | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view | GlobalsAndUtility | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view | Staking | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view | Staking | unmatched — not counted | — | Mentioned in findings as target contract (e.g., Staking::stakeStart()) | no |
| drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view | GlobalsAndUtility | unmatched — not counted | — | Referenced in Listing 3.2 as GlobalsAndUtility.sol | no |
| drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view | Staking | unmatched — not counted | — | listed in scope table and analysis | no |
| drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view | GlobalsAndUtility | unmatched — not counted | — | listed in scope table and analysis | no |
| drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view | Staking | unmatched — not counted | — | mentioned in findings as contract being audited | no |
| drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view | GlobalsAndUtility | unmatched — not counted | — | mentioned in findings as contract being audited | no |
| drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view | Farm | unmatched — not counted | — | listed in scope as contract Farm.sol | no |
| drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view | Farm | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003; mentioned as 'Farm' contract throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=2
- Match method counts: n/a

Zero-match audit list:

- [2919] drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view
- [2920] drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view
- [2921] drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view
- [2922] drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view
- [2923] drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view
- [2924] drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view
- [2925] drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view

Fork inheritance lineage and inherited audits are included when available.
