# Agentic Audit Brief: GOLDSTATION

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: GOLDSTATION (`goldstation`)
- Website: [https://goldstation.io](https://goldstation.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, kaia
- Contract surface: 3 unique implementations (6 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,748,120.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for GOLDSTATION in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x27397b...63d4ff`, chain 8217)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 3 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-386859 | `0x27397b...63d4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 4 deployments: kaia `0x347e5c...62ae88`; kaia `0x4836cc...0cd95e`; kaia `0x4d55b0...dc8954`; kaia `0x6569b1...47dc76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b27d7...64281d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SlowMist Audit Report - GoldCollateralManager.pdf](https://github.com/CrederLabs/audit/blob/main/GoldCollateralManager/SlowMist%20Audit%20Report%20-%20GoldCollateralManager.pdf) | SlowMist | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Certik_Audit_Report_Goldstation_V3.pdf](https://github.com/CrederLabs/audit/blob/main/GoldstationV3/Certik_Audit_Report_Goldstation_V3.pdf) | CertiK | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 65 | high |
| [Certik_Audit_Report_STAN_Token.pdf](https://github.com/CrederLabs/audit/blob/main/StanToken/Certik_Audit_Report_STAN_Token.pdf) | CertiK | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2860] SlowMist Audit Report - GoldCollateralManager.pdf — no match: Only one contract, GoldCollateralManager, is in scope. The goldNFTContract is mentioned but explicitly stated as not in audit scope.
- [2861] Certik_Audit_Report_Goldstation_V3.pdf — no match: Extracted 69 contract names from the audit scope table. The audit date is explicitly stated as 'Assessed on Dec 12th, 2024'.
- [2862] Certik_Audit_Report_STAN_Token.pdf — no match: Only one contract (StanToken) is in scope. Audit date is explicitly stated as 'Assessed on Mar 5th, 2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SlowMist Audit Report - GoldCollateralManager.pdf | GoldCollateralManager | unmatched — not counted | — | Listed in scope section and throughout report as the main contract audited. | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PeripheryImmutableState | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PeripheryPayments | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PoolInitializer | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Quoter | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | QuoterV2 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | CallbackValidation | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PoolAddress | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | SqrtPriceMathPartial | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NFTDescriptorEx | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NonfungiblePositionManager | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | SwapRouter | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | V3Migrator | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | BitMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | FullMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | SafeCast | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | TickBitmap | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PancakeV3Factory | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PancakeV3Pool | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PancakeV3PoolDeployer | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PancakeV3LmPool | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PancakeV3LmPoolDeployer | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | MasterChefV3KeeperV1 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | MasterChefV3KeeperV2 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | MasterChefV3Receiver | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | MasterChefV3ReceiverV2 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | MasterChefV3 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | BlockTimestamp | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | ERC721Permit | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | LiquidityManagement | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PeripheryValidation | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | SelfPermit | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PairFlash | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PancakeInterfaceMulticall | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | TickLens | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | BytesLib | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | ChainId | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | HexStrings | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NFTDescriptor | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NFTSVG | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | OracleLibrary | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Path | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PositionKey | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | PositionValue | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | TokenRatioSortOrder | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NonfungibleTokenPositionDescriptorOffChain | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | NonfungibleTokenPositionDescriptorOffChainV2 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | LiquidityMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | SwapMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Tick | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | TickMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | UnsafeMath | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | LmTick | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_Goldstation_V3.pdf | Enumerable | unmatched — not counted | — | listed in scope table | no |
| Certik_Audit_Report_STAN_Token.pdf | StanToken | unmatched — not counted | — | Listed in Audit Scope table with SHA256 checksum. | no |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 67 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [2860] SlowMist Audit Report - GoldCollateralManager.pdf
- [2861] Certik_Audit_Report_Goldstation_V3.pdf
- [2862] Certik_Audit_Report_STAN_Token.pdf

Fork inheritance lineage and inherited audits are included when available.
