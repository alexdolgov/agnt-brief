# Agentic Audit Brief: Pickle

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

- Project: Pickle (`pickle`)
- Website: [https://pickle.finance/](https://pickle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,984,310.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Pickle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| GnosisSafe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251245 | `0x9d074e...38db17` | ⚠️ Unaudited |
| MasterChef | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-251246 | `0xbd17b1...394b0d` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-251244 | `0x0040e0...278416` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-251247 | `0xd92c7f...eaa0d3` | ⚠️ Unaudited |

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
| [MixBytes_Audit_All_Strategies.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_All_Strategies.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Haechi_Audit.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/pickle-finance/protocol/master/audits/Haechi_Audit.pdf) | Haechi | Audit | 2020-11 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 50 | high |
| [PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [MixBytes_Audit_Curve_Strategy.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_Curve_Strategy.pdf) | MixBytes | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3374] MixBytes_Audit_All_Strategies.pdf — no match: Scope section explicitly lists 18 smart contract files. Date found in header: NOVEMBER 05 2020.
- [3375] Haechi_Audit.pdf — no match: Contracts listed in 'Contracts Subject to Audit' section on page 5. Date from cover page: '9th November 2020'.
- [3376] PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf — no match: No reason recorded
- [3378] MixBytes_Audit_Curve_Strategy.pdf — no match: Scope explicitly lists strategy-curve-scrv-v4_1.sol; StrategyBase is referenced in findings as a contract with fields.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| MixBytes_Audit_All_Strategies.pdf | strategy-cmpd-dai-v1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | crv-locker | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | scrv-voter | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-curve-3crv-v1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-curve-rencrv-v1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-curve-scrv-v3_1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-curve-scrv-v4 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-curve-scrv-v4_1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-uni-eth-dai-lp-v3_1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-uni-eth-usdc-lp-v3_1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-uni-eth-usdt-lp-v3_1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-uni-eth-wbtc-lp-v1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-base | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-curve-base | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-staking-rewards-base | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | strategy-uni-farm-base | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | pickle-jar | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_All_Strategies.pdf | pickle-swap | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | PicklesInTheCitadel.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | controller-v3.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | crv-locker.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | masterchef.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | pickle-jar.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | pickle-swap.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | pickle-token.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | scrv-voter.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | staking-rewards.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-base.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-cmpd-dai-v1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-curve-3crv-v1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-curve-base.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-curve-rencrv-v1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-curve-scrv-v3_1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-curve-scrv-v4.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-curve-scrv-v4_1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-staking-rewards-base.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-uni-eth-dai-lp-v3_1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-uni-eth-usdc-lp-v3_1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-uni-eth-usdt-lp-v3_1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-uni-eth-wbtc-lp-v1.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | strategy-uni-farm-base.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | timelock.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | uni-curve-converter.sol | unmatched — not counted | — | — | no |
| Haechi_Audit.pdf | timelock | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | controller-v3 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | pickle-jar | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | pickle-swap | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | staking-rewards | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | uni-curve-converter | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | masterchef | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | pickle-token | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | PicklesInTheCitadel | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-cmpd-dai-v1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-base | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-curve-base | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-staking-rewards-base | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-uni-farm-base | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | crv-locker | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | scrv-voter | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-curve-3crv-v1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-curve-rencrv-v1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-curve-scrv-v3_1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-curve-scrv-v4 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-curve-scrv-v4_1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-uni-eth-dai-lp-v3_1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-uni-eth-usdc-lp-v3_1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-uni-eth-usdt-lp-v3_1 | unmatched — not counted | — | listed in scope | no |
| Haechi_Audit.pdf | strategy-uni-eth-wbtc-lp-v1 | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf | Gauge | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf | GaugeProxy | unmatched — not counted | — | — | no |
| MixBytes_Audit_Curve_Strategy.pdf | StrategyCurveSCRVv4_1 | unmatched — not counted | — | listed in scope | no |
| MixBytes_Audit_Curve_Strategy.pdf | StrategyBase | unmatched — not counted | — | mentioned in findings as a contract with fields | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 72 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [3374] MixBytes_Audit_All_Strategies.pdf
- [3375] Haechi_Audit.pdf
- [3376] PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf
- [3378] MixBytes_Audit_Curve_Strategy.pdf

Fork inheritance lineage and inherited audits are included when available.
