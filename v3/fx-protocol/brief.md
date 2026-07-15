# Agentic Audit Brief: fx Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: fx Protocol (`fx-protocol`)
- Website: [https://fx.aladdin.club](https://fx.aladdin.club)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, blast, bsc, ethereum, linea, polygon
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $198,959,837.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for fx Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, blast, bsc, ethereum, linea, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: abstract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x365acc...65bb09`, chain 1)
- UnnamedContract (`0x376669...488f55`, chain 1)
- UnnamedContract (`0x53805a...633726`, chain 1)
- UnnamedContract (`0x56bc0e...9ce789`, chain 1)
- UnnamedContract (`0xe063f0...703ae2`, chain 1)
- UnnamedContract (`0x62c686...3beeac`, chain 56)
- UnnamedContract (`0xa64f68...74b3de`, chain 56)
- UnnamedContract (`0xf9e10d...980e94`, chain 56)
- UnnamedContract (`0xa7580d...2c4617`, chain 137)
- UnnamedContract (`0xc608df...b4e763`, chain 137)
- UnnamedContract (`0xc752c6...32b991`, chain 137)
- UnnamedContract (`0x179f38...cf7cad`, chain 42161)
- UnnamedContract (`0x55380f...da42c5`, chain 42161)
- UnnamedContract (`0xc608df...b4e763`, chain 42161)
- UnnamedContract (`0xc608df...b4e763`, chain 59144)
- UnnamedContract (`0xc608df...b4e763`, chain 81457)
- TransparentUpgradeableProxy (`0x07d171...945f9a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
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
| FxUSDCompounder4626 | adapter | project_anchor | own_supporting | 1 | ethereum | unit-240578 | `0x07d171...945f9a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240562 | `0x365acc...65bb09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240563 | `0x376669...488f55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240564 | `0x53805a...633726` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240565 | `0x56bc0e...9ce789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240566 | `0xe063f0...703ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240573 | `0x62c686...3beeac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240574 | `0xa64f68...74b3de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240575 | `0xf9e10d...980e94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240567 | `0xa7580d...2c4617` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240568 | `0xc608df...b4e763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240569 | `0xc752c6...32b991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240570 | `0x179f38...cf7cad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240571 | `0x55380f...da42c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240572 | `0xc608df...b4e763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240576 | `0xc608df...b4e763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240577 | `0xc608df...b4e763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SECBIT_f(x)_V2_Report_v1.4_20250107.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_V2_Report_v1.4_20250107.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 26 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13165] SECBIT_f(x)_V2_Report_v1.4_20250107.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | AaveFundingPool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | BasePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FlashLoanCallbackFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FlashLoanFacetBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FlashLoans | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FxUSDBasePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FxUSDBasePoolFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FxUSDRegeneracy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | GaugeRewarder | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | LSDPriceOracleBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | MigrateFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PegKeeper | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolConstant | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolErrors | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolStorage | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PositionLogic | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | ProtocolFees | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | ReservePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | RouterManagementFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | SpotPriceOracleBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | StETHPriceOracle | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | TickBitmap | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | TickLogic | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | TickMath | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x07d171...945f9a` | FxUSDCompounder4626 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13165] SECBIT_f(x)_V2_Report_v1.4_20250107.pdf

Fork inheritance lineage and inherited audits are included when available.
