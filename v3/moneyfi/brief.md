# Agentic Audit Brief: MoneyFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: MoneyFi (`moneyfi`)
- Website: [https://app.moneyfi.fund/](https://app.moneyfi.fund/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, optimism
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $357,150.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for MoneyFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations excluded (9 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154057 | `0x3e5248...c300fd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154056 | `0xc5224b...ba1c07` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-154063 | `0x0f93ea...f131db` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-154047 | `0x1efa94...c71832` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-154067 | `0x0ccbcd...cc9f6e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-154065 | `0x16fe43...e916a2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-154066 | `0xd9ec31...064fc2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-154059 | `0x0f92f5...f1e1e4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-154058 | `0x322d52...d20d4d` | ⚠️ Unaudited |
| MoneyFiAerodromeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-154055 | `0x85affe...37293d` | ⚠️ Unaudited |
| MoneyFiCCTPV1CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154044 | `0x103f24...0ebcdb` | ⚠️ Unaudited |
| MoneyFiCCTPV1Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154043 | `0x0cda33...f4c8df` | ⚠️ Unaudited |
| MoneyFiController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-154045 | `0x1b37b5...cb3164` | ⚠️ Unaudited |
| MoneyFiCrossChainRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154042 | `0x067430...6bad05` | ⚠️ Unaudited |
| MoneyFiFundVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-154061 | `0x0228a8...c197b7` | ⚠️ Unaudited |
| MoneyFiPancakeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-154049 | `0xf5d465...5dbed1` | ⚠️ Unaudited |
| MoneyFiReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-154052 | `0x39a183...d684a5` | ⚠️ Unaudited |
| MoneyFiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154041 | `0x034c02...6da85f` | ⚠️ Unaudited |
| MoneyFiStartegyUpgradeableAllBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-154054 | `0x477101...37b1cc` | ⚠️ Unaudited |
| MoneyFiStrategyUpgradeableAllBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154039 | `0x03afbc...f42593` | ⚠️ Unaudited |
| MoneyFiTokenLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-154040 | `0x0f3347...7b7181` | ⚠️ Unaudited |

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
| [spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf (also discovered via alternate URL)](https://2898747492-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fam6xzGQtSU5N7yZGyGed%2Fuploads%2FLA452vR32YgoDQOejJWc%2F20250919-MoneyFI-Final-Audit-Report.pdf?alt=media&token=70d0fa74-85a7-44d7-bd9f-b5a33786c766) | MoveBit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf (also discovered via alternate URL)](https://2898747492-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fam6xzGQtSU5N7yZGyGed%2Fuploads%2FqRjyhPQBZHT9D7TXDcAt%2F202507111748-MoneyFI-Final-Audit-Report.pdf?alt=media&token=b84e2cde-9577-4725-a354-64209d034455) | Beosin | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MoneyFi Aptos](https://moneyfi-1.gitbook.io/docs/security-and-risks/security-audits/moneyfi-aptos.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MoneyFi Universal (EVM)](https://moneyfi-1.gitbook.io/docs/security-and-risks/security-audits/moneyfi-universal-evm.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21400] spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf — no match: Extracted 9 contract names from the 'Files in Scope' table. Audit date is the report date: Thu Sep 18 2025.
- [21401] spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf — no match: Only one contract, MoneyFiFundVault, is in scope. The Router contract is mentioned as an external dependency, not audited.
- [24246] MoneyFi Aptos — no match: The provided text is a documentation index page with a link to an audit report, but the actual report content is not included. No contract names or audit date could be extracted.
- [24247] MoneyFi Universal (EVM) — no match: The provided text is a documentation index page with a link to an audit report, but the actual audit report content is not included. No contract names or scope information can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_tapp | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_thala | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_aries | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | storage | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | vault | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | access_control | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_hyperion | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | wallet_account | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf | MoneyFiFundVault | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [21400] spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf
- [21401] spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf
- [24246] MoneyFi Aptos
- [24247] MoneyFi Universal (EVM)

Fork inheritance lineage and inherited audits are included when available.
