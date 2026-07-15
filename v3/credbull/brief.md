# Agentic Audit Brief: Credbull

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Credbull (`credbull`)
- Website: [https://credbull.io/](https://credbull.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $10,940,088.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Credbull in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x3c499c...5c3359`, chain 137)
- UnnamedContract (`0x8f87e1...83f29b`, chain 137)
- UnnamedContract (`0xb89846...4bb9f9`, chain 137)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/18 live.
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
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 7 aging, 1 stale, 0 unknown
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234473 | `0x3c499c...5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234475 | `0x8f87e1...83f29b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234476 | `0xb89846...4bb9f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Credbull-DeFi_Audit_20241217_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20241217_Hacken.pdf) | Hacken | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Credbull-DeFi_Audit_20241031_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20241031_Hacken.pdf) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Credbull-DeFi_Audit_20240815_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20240815_Hacken.pdf) | Hacken | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Credbull-DeFi_Audit_20240514.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20240514.pdf) | CertiK | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Credbull-CBL_Audit_20241023_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-CBL_Audit_20241023_Hacken.pdf) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024](https://hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf](https://hashlock.com/wp-content/uploads/2025/05/Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf) | Hashlock | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21290] Credbull-DeFi_Audit_20241217_Hacken.pdf — no match: All contracts listed in Appendix 2 Scope table and System Overview section. Date from cover page: 17/12/2024.
- [21291] Credbull-DeFi_Audit_20241031_Hacken.pdf — no match: All contracts listed in Appendix 2 Scope table, plus additional contracts mentioned in System Overview and findings.
- [21292] Credbull-DeFi_Audit_20240815_Hacken.pdf — no match: All contracts listed in Appendix 2: Scope section. Date from cover page: 15/08/2024.
- [21293] Credbull-DeFi_Audit_20240514.pdf — no match: Extracted 15 unique contract names from the audit scope tables. The audit date is explicitly stated as 'Assessed on May 13th, 2024' on the cover page and in the summary.
- [21294] Credbull-CBL_Audit_20241023_Hacken.pdf — no match: All contracts listed in Appendix 2 Scope table, plus additional contracts mentioned in System Overview and findings.
- [21295] hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024 — no match: Only one contract (CBL) is in scope. The report focuses on the Credbull CBL token.
- [21296] Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf — no match: Only one contract in scope: WrappedERC20.sol. Audit date is April 2025, mapped to last day of month.
- [21297] Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf — no match: Only one contract in scope: WrappedERC20.sol. Audit date is April 2025, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Credbull-DeFi_Audit_20241217_Hacken.pdf | AbstractYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | CalcDiscounted | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | CalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | CalcSimpleInterest | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | RedeemOptimizerFIFO | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | Timer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | TripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | LiquidContinuousMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | MultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | TimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | SimpleInterestYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | TripleRateYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITimelock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITimelockOpenEnded | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IComponentToken | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IRedeemOptimizer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ITripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | ICalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241217_Hacken.pdf | IYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | AbstractYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | CalcDiscounted | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | CalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | CalcSimpleInterest | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | RedeemOptimizerFIFO | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | Timer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | TripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | LiquidContinuousMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | MultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | TimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | SimpleInterestYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | TripleRateYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IComponentToken | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ICalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IRedeemOptimizer | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITimelock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITimelockOpenEnded | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | ITripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20241031_Hacken.pdf | IYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | MaturityVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | FixedYieldVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | UpsideVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | WhiteListProvider | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | MaxCapPlugin | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | WhiteListPlugin | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | WindowPlugin | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullFixedYieldVault | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullFixedYieldVaultFactory | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullFixedYieldVaultWithUpside | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullUpsideVaultFactory | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | CredbullWhiteListProvider | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240815_Hacken.pdf | IWhiteListProvider | unmatched — not counted | — | listed in scope | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullBaseVault | unmatched — not counted | — | listed in scope table with ID CBV and CRE | no |
| Credbull-DeFi_Audit_20240514.pdf | UpsideVault | unmatched — not counted | — | listed in scope table with ID UVB and UVU | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullKYCProvider | unmatched — not counted | — | listed in scope table with ID CKY and CKC | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullFixedYieldVaultWithUpside | unmatched — not counted | — | listed in scope table with ID CFY and CFW | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullFixedYieldVault | unmatched — not counted | — | listed in scope table with ID CFV and CYV | no |
| Credbull-DeFi_Audit_20240514.pdf | MaturityVault | unmatched — not counted | — | listed in scope table with ID MVB and MVU | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullFixedYieldVaultFactory | unmatched — not counted | — | listed in scope table with ID CFF and CYF | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullUpsideVaultFactory | unmatched — not counted | — | listed in scope table with ID CUV and CUF | no |
| Credbull-DeFi_Audit_20240514.pdf | CredbullVaultFactory | unmatched — not counted | — | listed in scope table with ID CVF and CRD | no |
| Credbull-DeFi_Audit_20240514.pdf | MaxCapPlug | unmatched — not counted | — | listed in scope table with ID MCP and MAX | no |
| Credbull-DeFi_Audit_20240514.pdf | WhitelistPlugIn | unmatched — not counted | — | listed in scope table with ID WPI and WHI | no |
| Credbull-DeFi_Audit_20240514.pdf | WindowPlugIn | unmatched — not counted | — | listed in scope table with ID WIN and WID | no |
| Credbull-DeFi_Audit_20240514.pdf | FixedYieldVault | unmatched — not counted | — | listed in scope table with ID FYV and FIX | no |
| Credbull-DeFi_Audit_20240514.pdf | ICredbull | unmatched — not counted | — | listed in scope table with ID ICB and ICU | no |
| Credbull-DeFi_Audit_20240514.pdf | IKYCProvider | unmatched — not counted | — | listed in scope table with ID IKY and IKC | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | AbstractYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | CalcDiscounted | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | CalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | CalcSimpleInterest | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | RedeemOptimizerFIFO | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | Timer | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | TripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | LiquidContinuousMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | MultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | TimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | SimpleInterestYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | TripleRateYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IComponentToken | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ICalcInterestMetadata | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IMultiTokenVault | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IRedeemOptimizer | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITimelock | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITimelockAsyncUnlock | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITimelockOpenEnded | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | ITripleRateContext | unmatched — not counted | — | listed in scope table | no |
| Credbull-CBL_Audit_20241023_Hacken.pdf | IYieldStrategy | unmatched — not counted | — | listed in scope table | no |
| hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024 | CBL | unmatched — not counted | — | listed in scope table as 'File: token CBL.sol' | no |
| Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf | WrappedERC20 | unmatched — not counted | — | listed in Audit Scope section as Contract 1 | no |
| Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf | WrappedERC20 | unmatched — not counted | — | listed in Audit Scope section as Contract 1 | no |

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
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 96 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [21290] Credbull-DeFi_Audit_20241217_Hacken.pdf
- [21291] Credbull-DeFi_Audit_20241031_Hacken.pdf
- [21292] Credbull-DeFi_Audit_20240815_Hacken.pdf
- [21293] Credbull-DeFi_Audit_20240514.pdf
- [21294] Credbull-CBL_Audit_20241023_Hacken.pdf
- [21295] hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024
- [21296] Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf
- [21297] Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf

Fork inheritance lineage and inherited audits are included when available.
