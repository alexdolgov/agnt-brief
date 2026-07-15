# Agentic Audit Brief: HOPE Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: HOPE Money (`hope-money`)
- Website: [https://docs.hope.money/](https://docs.hope.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (40 raw deployments)
- Coverage basis: 3/3 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,307,534.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for HOPE Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 4 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (4), core (1)
- Contract kinds: contract (5)
- Detected standards: erc20 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (1), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- StakingHOPE (`0xf5c6d9...9fd4d8`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/3 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 3 of 27 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/27
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 40
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 11.1% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HOPE | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387318 | 2 deployments: ethereum `0x8f9bd4...03c61e`; ethereum `0xc353bf...68f98e` | ✅ Audited |
| LT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387319 | 2 deployments: ethereum `0x9ed143...9a735b`; ethereum `0xd708e5...8ed019` | ✅ Audited |
| StakingHOPE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387317 | `0xf5c6d9...9fd4d8` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ApprovedTokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca1f5...173c78` | ⚠️ Unaudited |
| BurnerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d80a7...966066` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x60498d...7285bb`; ethereum `0x99040c...2bb697` | ⚠️ Unaudited |
| GaugeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8b270...b4dd7e` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b38e...e2bdb1` | ⚠️ Unaudited |
| GaugeFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdedd17...3c48ed`; ethereum `0xe0530d...898a84` | ⚠️ Unaudited |
| HOPE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4a14f...848e84` | ⚠️ Unaudited |
| HopeSwapBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd32864...acea42` | ⚠️ Unaudited |
| HopeSwapBurnerBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x370606...91e149`; ethereum `0xfda6a3...8e3026` | ⚠️ Unaudited |
| HToken | token | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x1fc2dd...2c9386`; ethereum `0x25126f...403907`; ethereum `0x396856...a4323e`; ethereum `0x58792e...f74d90`; ethereum `0x5dd30e...303572`; ethereum `0x6090f3...51b749`; ethereum `0xb3cc0a...334e62` | ⚠️ Unaudited |
| LightTeamVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6a1207...9d82c3`; ethereum `0xdd42df...e54513` | ⚠️ Unaudited |
| LightTeamVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x045087...a20a91`; ethereum `0xedb47d...b3c0bc` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94afb2...b2688f` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc53c83...e87a35` | ⚠️ Unaudited |
| PoolGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f954d...7908aa` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0f98...a3bd39` | ⚠️ Unaudited |
| RestrictedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e63ff...881edd` | ⚠️ Unaudited |
| RockXETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf1376b...df51f4` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377a83...8700cb` | ⚠️ Unaudited |
| SwapFeeToVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9c43...f42f23` | ⚠️ Unaudited |
| UnderlyingBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd61fd6...cadc97` | ⚠️ Unaudited |
| UnderlyingBurnerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77b3cf...ee5f29` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219bd2...5051e9` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe909f3...b67400` | ⚠️ Unaudited |

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
| [CertiK-Audit-for-LightDAO-II-v1.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/CertiK-Audit-for-LightDAO-II-v1.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [PeckShield-Audit-Report-HOPE-v1.2.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/PeckShield-Audit-Report-HOPE-v1.2.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [SlowMist Audit Report - LightDAO Phase1_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase1_en-us.pdf) | SlowMist | Audit | 2023-02 | stale | Direct | address | matched | 3 | 2 | 0 | 9 | high |
| [SlowMist Audit Report - LightDAO Phase2_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | address | no match | 0 | 0 | 0 | 15 | high |
| [- [Audits]()](https://docs.hope.money/appendix/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17436] CertiK-Audit-for-LightDAO-II-v1.pdf — no match: Extracted 16 contract names from the audit scope table and findings. The audit date is explicitly stated as 'Verified on Apr 20th, 2023' and 'Delivered on 04/20/2023'.
- [17437] PeckShield-Audit-Report-HOPE-v1.2.pdf — no match: Extracted contract names from findings sections where they are explicitly listed as targets. Audit date from cover page and latest audit report date.
- [17438] SlowMist Audit Report - LightDAO Phase1_en-us.pdf — matched: Contracts extracted from visibility tables and code overview sections. Audit date from audit result table: 2023.02.03 - 2023.02.16, using end date.
- [17439] SlowMist Audit Report - LightDAO Phase2_en-us.pdf — no match: Extracted 15 contracts from scope sections, code overview, and deployed addresses. Audit date from audit result table: 2023.02.20 - 2023.03.01, using end date.
- [17440] - [Audits]() — no match: The document is an index page listing audit reports with links, but does not contain the actual audit report content or scope details. No contract names or audit dates are extractable from this page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2Router01 | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2Router02 | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | LightSwapBurner | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UnderlyingBurner | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | FeeDistributor | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | GombocFeeDistributor | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2Factory | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2Pair | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | BurnerManager | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | SwapFeeToVault | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | ApprovedTokenManager | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | Context | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | Ownable | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2Migrator | unmatched — not counted | — | listed in audit scope table | no |
| CertiK-Audit-for-LightDAO-II-v1.pdf | UniswapV2LiquidityMathLibrary | unmatched — not counted | — | mentioned in finding UVL-01 | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | PoolGauge | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract with _withdraw() function | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | HopeSwapBurner | unmatched — not counted | — | Mentioned in finding PVE-002 as target contract with burn() function | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | UnderlyingBurner | unmatched — not counted | — | Mentioned in finding PVE-002 as target contract with burn() function | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | SwapFeeToVault | unmatched — not counted | — | Mentioned in finding PVE-003 as target contract with burn() and withdrawAdminFee() functions | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | GaugeController | unmatched — not counted | — | Mentioned in finding PVE-004 as example contract with privileged owner functions | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | GaugeFeeDistributor | unmatched — not counted | — | Mentioned in finding PVE-005 as target contract with claimableTokens() and _claim() functions | no |
| PeckShield-Audit-Report-HOPE-v1.2.pdf | FeeDistributor | unmatched — not counted | — | Mentioned in finding PVE-005 as target contract alongside GaugeFeeDistributor | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | AgentManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | HOPESalesAgent | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | LT | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x9ed143...9a735b` — deployed 2023-04-18 03:00:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | HOPE | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc353bf...68f98e` — deployed 2023-04-17 18:49:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | Minter | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | StakingHOPE | own contract | StakingHOPE (selected) `0xf5c6d9...9fd4d8` — deployed 2023-04-18 03:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | VotingEscrow | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | PoolGomboc | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | GombocController | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | GombocFactory | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | AbsGomboc | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase1_en-us.pdf | AbsExternalLTRewardDistributor | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UniswapV2Factory | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UniswapV2Pair | unmatched — not counted | — | listed in scope and code location | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | Context | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | ApprovedTokenManager | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UniswapV2Migrator | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UniswapV2Router01 | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UniswapV2Router02 | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | BurnerManager | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | FeeDistributor | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | GombocFeeDistributor | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | LightSwapBurner | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | SwapFeeToVault | unmatched — not counted | — | listed in scope and deployed address | no |
| SlowMist Audit Report - LightDAO Phase2_en-us.pdf | UnderlyingBurner | unmatched — not counted | — | listed in scope and deployed address | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: address=3

Zero-match audit list:

- [17436] CertiK-Audit-for-LightDAO-II-v1.pdf
- [17437] PeckShield-Audit-Report-HOPE-v1.2.pdf
- [17439] SlowMist Audit Report - LightDAO Phase2_en-us.pdf
- [17440] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
