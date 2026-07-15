# Agentic Audit Brief: PureSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PureSwap (`pureswap`)
- Website: [https://app.pureswap.xyz/](https://app.pureswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $220,801.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PureSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x009cf7...cea9b0`, chain 56)
- UnnamedContract (`0x1ee38d...08e6fb`, chain 56)
- UnnamedContract (`0x2170ed...f933f8`, chain 56)
- UnnamedContract (`0x23396c...49d6fc`, chain 56)
- UnnamedContract (`0x3c3f20...df3b91`, chain 56)
- UnnamedContract (`0x3c6919...f0012a`, chain 56)
- UnnamedContract (`0x55d398...197955`, chain 56)
- UnnamedContract (`0x5e7409...e396a1`, chain 56)
- UnnamedContract (`0x94b418...aad07e`, chain 56)
- UnnamedContract (`0xbb4cdb...bc095c`, chain 56)
- UnnamedContract (`0xdf4dbf...0e388a`, chain 56)
- UnnamedContract (`0xdf7952...0dba07`, chain 56)
- UnnamedContract (`0xe7e53a...97e149`, chain 56)
- UnnamedContract (`0xe9e7ce...087d56`, chain 56)
- UnnamedContract (`0xfee8a1...380849`, chain 56)
- PureChef (`0xb8692d...09adb8`, chain 56)
- PureToken (`0x481f05...ad89bc`, chain 56)
- SingleChef (`0x63621a...47b0f4`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/36 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 18 of 21 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| PureChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-391250 | `0xb8692d...09adb8` | ⚠️ Unaudited |
| PureMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7d7c0...082698` | ⚠️ Unaudited |
| PureSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x208382...395958` | ⚠️ Unaudited |
| PureSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e8743...87f305` | ⚠️ Unaudited |
| PureToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-391235 | `0x481f05...ad89bc` | ⚠️ Unaudited |
| SingleChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-391240 | `0x63621a...47b0f4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391228 | `0x009cf7...cea9b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391229 | `0x1ee38d...08e6fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391230 | `0x2170ed...f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391231 | `0x23396c...49d6fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391232 | `0x3c3f20...df3b91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391233 | `0x3c6919...f0012a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391237 | `0x55d398...197955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391238 | `0x5e7409...e396a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391245 | `0x94b418...aad07e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391251 | `0xbb4cdb...bc095c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391255 | `0xdf4dbf...0e388a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391256 | `0xdf7952...0dba07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391257 | `0xe7e53a...97e149` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391258 | `0xe9e7ce...087d56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391260 | `0xfee8a1...380849` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK Audit Report for Pureswap.pdf](https://github.com/PureSwap2020/pureswap-contracts/blob/main/CertiK%20Audit%20Report%20for%20Pureswap.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21437] CertiK Audit Report for Pureswap.pdf — no match: Extracted all contracts from the audit scope table. The audit date is derived from 'Delivery Date Apr 30, 2023' in the summary.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK Audit Report for Pureswap.pdf | MPSMigrator | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | MTPMockToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | MULMulticall | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | OPSOwnable | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PBPPureBar | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PCPPureChef | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PMPPureMaker | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PRPPureRoll | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PTPPureToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SCPSingleChef | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | TPSGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IERIERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | ISMISwapMining | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SERSafeERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SMPSafeMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | LICENSE | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSFPureSwapERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSFPureSwapFactory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSPPureSwapPair | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSRPureSwapRouter | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | README | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IECIERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUVUniswapV2Callee | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUEUniswapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUFUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUPUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IURUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUSUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IWEIWETH | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | MATMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SMSSafeMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | THPTransferHelper | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | UQPUQ112x112 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | UVLUniswapV2Library | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xb8692d...09adb8` | PureChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x481f05...ad89bc` | PureToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63621a...47b0f4` | SingleChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21437] CertiK Audit Report for Pureswap.pdf

Fork inheritance lineage and inherited audits are included when available.
