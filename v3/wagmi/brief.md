# Agentic Audit Brief: WAGMI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: WAGMI (`wagmi`)
- Website: [https://wagmi.com/](https://wagmi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, fantom, metis, polygon, sonic, zksync-era
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $972,965.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WAGMI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across base, bsc, ethereum, fantom, metis, polygon, sonic, zksync-era. Structural roles: 5 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc165 (5), erc20 (5), ownable (5)
- Frameworks: openzeppelin (5), layerzero (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3613ad...c2dc9e`, chain 324)
- OFT (`0xaf20f5...0de7d7`, chain 56)
- OFT (`0x07ed33...5024da`, chain 137)
- OFT (`0x0e0ce4...87d16b`, chain 146)
- OFT (`0xaf20f5...0de7d7`, chain 8453)
- UniswapV3Factory (`0x8112e1...fe5b8a`, chain 1088)
- UnnamedContract (`0xb1f795...d48297`, chain 250)
- WagmiToken (`0x92cc36...b83a67`, chain 1)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-396405 | `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | polygon | unit-396401 | `0x07ed33...5024da` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | sonic | unit-396402 | `0x0e0ce4...87d16b` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | base | unit-396406 | `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | metis | unit-396400 | `0x8112e1...fe5b8a` | ⚠️ Unaudited |
| WagmiToken | token | project_anchor | own_supporting | 0 | ethereum | unit-396399 | `0x92cc36...b83a67` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-396403 | `0xb1f795...d48297` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-396404 | `0x3613ad...c2dc9e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Wagmi-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Wagmi Leverage V1.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf) | Sherlock | Contest | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Wagmi Leverage V1.1 Hacken.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf) | Hacken | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Wagmi Leverage V1.5 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Wagmi Leverage V2.0 Pashov.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Wagmi Leverage V2.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/b60fc16f80b1291d36bd09a443e90f39bcb5d660/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/a58894ebc05005a80e945a2558d583b8e0e05ef2/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11719] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf — no match: No reason recorded
- [11720] Wagmi-security-review.pdf — no match: No reason recorded
- [11721] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf — no match: No reason recorded
- [11722] Wagmi-security-review.pdf — no match: No reason recorded
- [11723] Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf — no match: No reason recorded
- [11724] Wagmi Leverage V1.0 Sherlock.pdf — no match: No reason recorded
- [11725] Wagmi Leverage V1.1 Hacken.pdf — no match: No reason recorded
- [11726] Wagmi Leverage V1.5 Sherlock.pdf — no match: No reason recorded
- [11727] Wagmi Leverage V2.0 Pashov.pdf — no match: No reason recorded
- [11728] Wagmi Leverage V2.0 Sherlock.pdf — no match: No reason recorded
- [14576] Wagmi-security-review.pdf — no match: No reason recorded
- [14577] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Vault | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | UniswapV3SwapExactAmountOut | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.5 Sherlock.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Sherlock.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Sherlock.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Sherlock.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Vault | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityManager | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xaf20f5...0de7d7` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x07ed33...5024da` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0e0ce4...87d16b` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaf20f5...0de7d7` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x92cc36...b83a67` | WagmiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 92 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11719] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf
- [11720] Wagmi-security-review.pdf
- [11721] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf
- [11722] Wagmi-security-review.pdf
- [11723] Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf
- [11724] Wagmi Leverage V1.0 Sherlock.pdf
- [11725] Wagmi Leverage V1.1 Hacken.pdf
- [11726] Wagmi Leverage V1.5 Sherlock.pdf
- [11727] Wagmi Leverage V2.0 Pashov.pdf
- [11728] Wagmi Leverage V2.0 Sherlock.pdf
- [14576] Wagmi-security-review.pdf
- [14577] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
