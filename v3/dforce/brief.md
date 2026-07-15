# Agentic Audit Brief: dForce

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: dForce (`dforce`)
- Website: [https://dforce.network/](https://dforce.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $12,596,653.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for dForce in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x41602c...a53f60`, chain 1)
- UnnamedContract (`0x6050b7...1460c1`, chain 1)
- UnnamedContract (`0xc0d7f1...b31cb3`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
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

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383730 | `0x41602c...a53f60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383731 | `0x6050b7...1460c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383732 | `0xc0d7f1...b31cb3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dForceLending-Audit-Report-Certik-Feb-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certik-Feb-2021.pdf) | CertiK | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [dForceLending-Audit-Report-Certora-Feb-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certora-Feb-2021.pdf) | Certora | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [dForceLending-Audit-Report-Consensys-Mar-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Consensys-Mar-2021.pdf) | Consensys | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf) | Trail of Bits | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12443] dForceLending-Audit-Report-Certik-Feb-2021.pdf — no match: Extracted 23 contract names from the 'Files In Scope' table and file paths. Audit date from cover page.
- [12444] dForceLending-Audit-Report-Certora-Feb-2021.pdf — no match: Audit report explicitly states scope as iToken and Controller contracts. Date from 'January 26th - February 8th 2021'.
- [12445] dForceLending-Audit-Report-Consensys-Mar-2021.pdf — no match: All files listed in Appendix 1 are in scope. PriceOracle.sol explicitly excluded. Date is March 2021, interpreted as end of month.
- [12446] dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf — no match: No reason recorded
- [26281] DIP001_audit_report_2020_03_en_1_0.pdf — no match: Scope table on page 6 lists four contracts: Dispatcher.sol, DispatcherEntrance.sol, CompoundHandler.sol, lendFMeHandler.sol. Also includes DSLibrary/* and interface/* but those are libraries/interfaces, not contracts. Audit date is Feb. 27, 2020 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | Base | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | ERC20 | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | IiToken | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | IPriceOracle | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | Initializable | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | InterestRateModel | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | IFlashloanExecutor | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | IRewardDistributor | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | IControllerInterface | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | IInterestRateModelInterface | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | PriceOracle | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | RewardDistributor | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | SafeRatioMath | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | TokenAdmin | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | TokenERC20 | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | TokenEvent | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | TokenStorage | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | iETH | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certik-Feb-2021.pdf | iToken | unmatched — not counted | — | listed in scope table | no |
| dForceLending-Audit-Report-Certora-Feb-2021.pdf | iToken | unmatched — not counted | — | Scope: iToken and Controller contracts | no |
| dForceLending-Audit-Report-Certora-Feb-2021.pdf | Controller | unmatched — not counted | — | Scope: iToken and Controller contracts | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | Controller | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | iETH | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | FixedInterestRateModel | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | InterestRateModel | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | StablecoinInterestRateModel | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | StandardInterestRateModel | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | IControllerInterface | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | IFlashloanExecutor | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | IInterestRateModelInterface | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | IiToken | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | IPriceOracle | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | IRewardDistributor | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | iToken | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | ERC20 | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | Initializable | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | Ownable | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | SafeRatioMath | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | iMSD | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | MSDController | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | MSD | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | MSDS | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | RewardDistributor | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | Base | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | TokenAdmin | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | TokenERC20 | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | TokenEvent | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-Consensys-Mar-2021.pdf | TokenStorage | unmatched — not counted | — | listed in scope appendix | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | Base | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | Controller | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | FixedInterestRateModel | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | LendingData | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | MSD | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | MSDController | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | MSDS | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | Ownable | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | Proxy | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | RewardDistributor | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | StandardInterestRateModel | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | TokenAdmin | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | TokenERC20 | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | UpgradeableProxy | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | iETH | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | iMSD | unmatched — not counted | — | — | no |
| dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf | iToken | unmatched — not counted | — | — | no |
| DIP001_audit_report_2020_03_en_1_0.pdf | Dispatcher | unmatched — not counted | — | listed in scope table | no |
| DIP001_audit_report_2020_03_en_1_0.pdf | DispatcherEntrance | unmatched — not counted | — | listed in scope table | no |
| DIP001_audit_report_2020_03_en_1_0.pdf | CompoundHandler | unmatched — not counted | — | listed in scope table | no |
| DIP001_audit_report_2020_03_en_1_0.pdf | lendFMeHandler | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 77 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [12443] dForceLending-Audit-Report-Certik-Feb-2021.pdf
- [12444] dForceLending-Audit-Report-Certora-Feb-2021.pdf
- [12445] dForceLending-Audit-Report-Consensys-Mar-2021.pdf
- [12446] dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf
- [26281] DIP001_audit_report_2020_03_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
