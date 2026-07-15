# Agentic Audit Brief: Aera

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

- Project: Aera (`aera`)
- Website: [https://www.aera.finance](https://www.aera.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $126,119,552.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Aera in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x833589...a02913`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378464 | `0x833589...a02913` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [634d46596f6b027c1bb27d92_Aera Report.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/634d46596f6b027c1bb27d92_Aera%20Report.pdf) | Unknown | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12621] 2023-09-22.pdf — no match: Extracted from Executive Summary and findings context. Audit date from cover page: September 22, 2023.
- [12622] 634d46596f6b027c1bb27d92_Aera Report.pdf — no match: Extracted from executive summary and findings; report date is October 16, 2022.
- [12623] 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf — no match: Extracted from Executive Summary and findings context. Audit date from report cover page.
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view — no match: Extracted contract names from findings context, test files, and PoC. No explicit scope section found; audit date from report header.
- [12625] 2024-05-15.pdf — no match: All files listed in the Scope section are extracted. The audit date is from the document header: 'May 15, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-09-22.pdf | AeraVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultHooks | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | AeraVaultV1 | unmatched — not counted | — | listed in scope and findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | PermissiveWithdrawalValidator | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IWithdrawalValidator | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IManagerAPI | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IAeraVaultV1 | unmatched — not counted | — | listed in findings | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultV2 | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultHooks | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseSlippageHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CallbackHandler | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CCTPHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | OracleRegistry | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Provisioner | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | SingleDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | PriceAndFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | DelayedFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MultiDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Auth2Step | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Auth | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TransferWhitelistHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TransferBlacklistHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BasicMerkleRootProvider | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CalldataReaderLib | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | HooksLibrary | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Whitelist | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Constants | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | OracleDataLibrary | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IOracle | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IBaseVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Types | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | UniswapV3DexHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockUniswapV3DexHooks | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockFeeVaultFactory | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockERC20 | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | AttackERC20 | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | NestedSwapForkTest | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TestForkBaseHooks | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IMetaAggregationRouterV2 | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | ISwapRouter | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IUniswapV3Pool | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IUniswapV3Factory | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | INonfungiblePositionManager | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | ICallee | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MerkleHelper | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Encoder | unmatched — not counted | — | mentioned in PoC | no |
| 2024-05-15.pdf | ILlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IAeraV2Oracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | ILlamaPayRouterOracleTypes | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | LlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | AbstractAssetOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [12621] 2023-09-22.pdf
- [12622] 634d46596f6b027c1bb27d92_Aera Report.pdf
- [12623] 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view
- [12625] 2024-05-15.pdf

Fork inheritance lineage and inherited audits are included when available.
