# Agentic Audit Brief: Index Coop

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Index Coop (`index-coop`)
- Website: [https://www.indexcoop.com/](https://www.indexcoop.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,716,769.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Index Coop. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across ethereum, polygon. Structural roles: 9 core, 7 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (9), unclassified (7)
- Contract kinds: contract (16)
- Detected standards: erc20 (8), ownable (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 16; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/indexcoop/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242579 | `0x403970...ddd742` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242582 | `0xa420cf...f1c766` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242586 | `0x2622c4...9ab12b` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242594 | `0x76fe46...ebf3fa` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242597 | `0xc4a1bf...cec23c` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242602 | `0xf41acb...fe2da1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242600 | `0xe86636...e419db` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242583 | `0xf42ecd...6e4b25` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242578 | `0x33d63b...4cf5f1` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242580 | `0x47110d...7eb44f` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242585 | `0x130ce4...0bb8d2` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242588 | `0x340f41...ae6abc` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242590 | `0x3ad707...d66473` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242592 | `0x4f0258...f1e609` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242598 | `0xd6ca86...dbbc14` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242601 | `0xf287d9...2c7976` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242581 | `0x84ce03...ae97c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242584 | `0x0bd75d...70dd70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242587 | `0x314598...90da52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242589 | `0x3885f8...ad7f0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242591 | `0x3bd4ca...25a0af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242593 | `0x70e86d...f5eba9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242595 | `0x9c4218...eaef71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242596 | `0xb97f5a...3b714a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242599 | `0xe7ca68...27b045` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)](https://gist.github.com/bernard-wagner/8a96ae7b9746ba8394dc6c16202a6b64) | iosiro | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [immunefi.com/bug-bounty/indexcoop/information](https://immunefi.com/bug-bounty/indexcoop/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [www.openzeppelin.com/news/set-protocol-audit](https://www.openzeppelin.com/news/set-protocol-audit) | OpenZeppelin | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2024] IndexIcUSDAuditReport.md — no match: Scope section explicitly lists 12 contracts from two repos. Audit date is the end of review period (9/17/24).
- [2025] IndexPRTAuditReport.md — no match: No reason recorded
- [2026] IndexDIMv3AuditReport.md — no match: Only one contract in scope: DebtIssuanceModuleV3. Audit dates: 5/8/24 - 5/10/24, end date used.
- [3576] 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) — no match: No reason recorded
- [3581] code4rena.com/reports/2022-06-notional-coop — no match: Scope section explicitly states 5 smart contracts, but only 4 are named in the report text. Extracted all contracts mentioned in findings and codebase.
- [14847] immunefi.com/bug-bounty/indexcoop/information — no match: The document is a bug bounty program description, not an audit report. No contracts are explicitly listed in scope; only 'Total Assets in Scope: 7' is mentioned without names.
- [14852] www.openzeppelin.com/news/set-protocol-audit — no match: All contracts explicitly listed in scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| IndexIcUSDAuditReport.md | TargetWeightWrapExtension | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | CustomOracleNAVIssuanceModule | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | SetValuer | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | PriceOracle | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | PreciseUnitOracle | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | ERC4626Oracle | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | RebasingComponentModule | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | WrapModuleV2 | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | AaveV2WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | AaveV3WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | CompoundV3WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | ERC4626WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexPRTAuditReport.md | Prt | unmatched — not counted | — | — | no |
| IndexPRTAuditReport.md | PrtFeeSplitExtension | unmatched — not counted | — | — | no |
| IndexPRTAuditReport.md | SignedSnapshotStakingPool | unmatched — not counted | — | — | no |
| IndexPRTAuditReport.md | SnapshotStakingPool | unmatched — not counted | — | — | no |
| IndexDIMv3AuditReport.md | DebtIssuanceModuleV3 | unmatched — not counted | — | listed in scope | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | AaveLeverageModule | unmatched — not counted | — | — | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | AaveV2 | unmatched — not counted | — | — | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | DebtIssuanceModuleV2 | unmatched — not counted | — | — | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | IssuanceValidationUtils | unmatched — not counted | — | — | no |
| code4rena.com/reports/2022-06-notional-coop | wfCashERC4626 | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | NotionalTradeModule | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | wfCashBase | unmatched — not counted | — | mentioned in findings and codebase | no |
| code4rena.com/reports/2022-06-notional-coop | wfCashLogic | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | WrappedfCashFactory | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | DebtIssuanceModule | unmatched — not counted | — | mentioned in findings (M-08) | no |
| www.openzeppelin.com/news/set-protocol-audit | IController | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IManagerIssuanceHook | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IOracle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IOracleAdapter | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | ISetToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | AddressArrayUtils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | ExplicitERC20 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | PreciseUnitMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | Controller | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | PriceOracle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | SetToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | SetTokenCreator | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IntegrationRegistry | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | ModuleBase | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | Invoke | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | Position | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | BasicIssuanceModule | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | StreamingFeeModule | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 45 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [2024] IndexIcUSDAuditReport.md
- [2025] IndexPRTAuditReport.md
- [2026] IndexDIMv3AuditReport.md
- [3576] 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)
- [3581] code4rena.com/reports/2022-06-notional-coop
- [14852] www.openzeppelin.com/news/set-protocol-audit

Fork inheritance lineage and inherited audits are included when available.
