# Agentic Audit Brief: Moonlander

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Moonlander (`moonlander`)
- Website: [https://moonlander.trade/](https://moonlander.trade/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: cronos
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $28,802,478.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Moonlander in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x02ae2e...717a05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-247987 | `0x071788...0e9034` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | unit-247990 | `0x378881...ede8dd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | unit-247992 | `0x544923...bea6d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-247994 | `0x6f27c8...21f2f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-247996 | `0x7ec427...ed3a04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-247997 | `0x8dbebe...68917e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | unit-247998 | `0xb4c700...27df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-247999 | `0xb7fe13...06330d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-248000 | `0xbf438c...f849cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-248001 | `0xe6f635...fbeec9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/IHQZ6Vmev6plus94YkdG/Moonlander MVP.pdf](https://1526723574-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqIzWy3A4lZ5sKJXOvWiF%2Fuploads%2FIHQZ6Vmev6plus94YkdG%2FMoonlander%20MVP.pdf) | Certik | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf](https://1526723574-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqIzWy3A4lZ5sKJXOvWiF%2Fuploads%2FKAwS1HzDvXlBppfwxlR1%2FMoonlander%20MVP%20Earn.pdf) | Certik | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf](https://1526723574-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqIzWy3A4lZ5sKJXOvWiF%2Fuploads%2Fk8MEuRvd2c2zjtj1Zhht%2FMoonlander%20RWA.pdf) | Certik | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf](https://1526723574-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqIzWy3A4lZ5sKJXOvWiF%2Fuploads%2FaaTOMbrWySzgO2dtj0xl%2FMoonlander%20Binary%20Option.pdf) | Certik | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf](https://1526723574-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqIzWy3A4lZ5sKJXOvWiF%2Fuploads%2FLqklCkmL1kZhKBoEASP2%2FMoolander%201-Click%20Trading.pdf) | Certik | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20840] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/IHQZ6Vmev6plus94YkdG/Moonlander MVP.pdf — no match: No reason recorded
- [20841] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf — no match: All 15 files listed in the Audit Scope table are included. The audit date is explicitly stated as 'CertiK Assessed on May 29th, 2025' in the header and summary.
- [20842] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf — no match: All 16 files listed in the Audit Scope table are included. The audit date is explicitly stated as 'CertiK Assessed on Jun 24th, 2025'.
- [20843] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf — no match: All contracts listed in the Audit Scope appendix of the report.
- [20844] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf — no match: All contracts listed in the appendix under 'Audit Scope' are included. The audit date is explicitly stated as 'CertiK Assessed on Dec 24th, 2025' and 'Final report published on 12/24/2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | CM | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | FM | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | FeeDistributor | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | RewardDistributor | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | RewardRouter | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | RewardTracker | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | Vester | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | MLP | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | MlpManagerFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | LibMlpManager | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | IBurnable | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | IRewardDistributor | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | IRewardRouter | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | IRewardTracker | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf | IVester | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | TradingPortalFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | LimitOrderFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | IWZKCRO | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | TransferHelper | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | LibPythPrice | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | LibPriceFacade | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | LibPairsManager | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | ITradingClose | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | ITradingPortal | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | IPriceFacade | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | IPairsManager | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | ILimitOrder | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | TradingCloseFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | PriceFacadeFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | PairsManagerFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf | PythPriceFacet | unmatched — not counted | — | listed in audit scope table | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | FmVesting | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | TransferHelper | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | PriceFacadeFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | LibPriceFacade | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | TradingConfigFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | PairsManagerFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | TradingPortalFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | TradingOpenFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | TradingCloseFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | TradingCheckerFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | PythPriceFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | LimitOrderFacet | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | LibTradingConfig | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | LibPythPrice | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | LibPairsManager | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | ITradingConfig | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | IPriceFacade | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | IPythPrice | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | IPairsManager | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | ITradingClose | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | ITradingPortal | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | ITradingOpen | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | ITradingChecker | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf | ILimitOrder | unmatched — not counted | — | listed in Audit Scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | TradingPortalFacet | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | TradingCheckerFacet | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | LibEIP712 | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | LibPairsManager | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | PairsManagerFacet | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | LimitOrderFacet | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | LibLimitOrder | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | LibPriceFacade | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | LibTrading | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | ITradingReader | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | ITradingPortal | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | ITradingOpen | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | ITradingChecker | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | ITrading | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | IPairsManager | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | ILimitOrder | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | TradingReaderFacet | unmatched — not counted | — | listed in scope appendix | no |
| spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf | TradingOpenFacet | unmatched — not counted | — | listed in scope appendix | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 73 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [20840] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/IHQZ6Vmev6plus94YkdG/Moonlander MVP.pdf
- [20841] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/KAwS1HzDvXlBppfwxlR1/Moonlander MVP Earn.pdf
- [20842] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/k8MEuRvd2c2zjtj1Zhht/Moonlander RWA.pdf
- [20843] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/aaTOMbrWySzgO2dtj0xl/Moonlander Binary Option.pdf
- [20844] spaces/qIzWy3A4lZ5sKJXOvWiF/uploads/LqklCkmL1kZhKBoEASP2/Moolander 1-Click Trading.pdf

Fork inheritance lineage and inherited audits are included when available.
