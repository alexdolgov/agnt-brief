# Agentic Audit Brief: SMARDEX Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SMARDEX Ecosystem (`smardex-ecosystem`)
- Website: [https://smardex.io](https://smardex.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 6/9 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,263,024.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SMARDEX Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across arbitrum, base, bsc, ethereum, polygon. Structural roles: 15 core, 9 unclassified, 7 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: core (15), unclassified (9), supporting (7)
- Contract kinds: contract (31)
- Detected standards: ownable (7), erc165 (4), erc20 (4), erc20permit (3), ownable2step (2), accesscontrol (1)
- Frameworks: openzeppelin (22), solady (4), openzeppelin-upgradeable (3), solmate (1), uniswap (1), uniswap-v2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x656cb8...41f01a`, chain 1)
- FarmingRange (`0x7d85c0...a77523`, chain 1)
- Rebalancer (`0xaebcc8...826e03`, chain 1)
- SmardexToken (`0x5de8ab...61beef`, chain 1)
- UniversalRouter (`0x49f66b...0983e1`, chain 1)
- Usdn (`0xde17a0...90dee2`, chain 1)
- UsdnLongFarming (`0xf9d360...6bbe27`, chain 1)
- VaultProxy (`0xf67e2d...b1e886`, chain 1)
- Wusdn (`0x999999...cb1af9`, chain 1)

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 31 (11 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/9 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 11 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/9
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 6 | 66.7% | 2025-03 |
| Guardian | Tier 2 | 4 | 44.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidationRewardsManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254925 | `0x9514d3...db202c` | ✅ Audited |
| Rebalancer | adapter | project_anchor | own_supporting | 0 | ethereum | unit-254927 | `0xaebcc8...826e03` | ✅ Audited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-254921 | `0x49f66b...0983e1` | ✅ Audited |
| Usdn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254931 | `0xde17a0...90dee2` | ✅ Audited |
| WstEthOracleMiddleware | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254929 | `0xc1459f...98eab0` | ✅ Audited |
| Wusdn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254926 | `0x999999...cb1af9` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254923 | `0x7d85c0...a77523` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254941 | `0xb891ae...25a0b9` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254933 | `0x7db73a...a8e46b` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254942 | `0xa5d378...51c5a3` | ⚠️ Unaudited |
| FarmingRangeL2Arbitrum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254937 | `0x53d165...257f69` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254928 | `0xb878dc...84214f` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254939 | `0xa8ef6f...23af33` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254934 | `0x9a1e16...84398f` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254943 | `0xdd4536...0f975a` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254936 | `0x41a00e...611f22` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254930 | `0xc33984...6c0c6f` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254940 | `0xab3699...af545a` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254935 | `0xedd758...eb7b7c` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254944 | `0xf03d13...7b3020` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254938 | `0xda3970...db7b3d` | ⚠️ Unaudited |
| SmardexToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254922 | `0x5de8ab...61beef` | ⚠️ Unaudited |
| Staking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254924 | `0x804970...eb1a31` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254949 | `0xfdc66a...cdd20f` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-254947 | `0x6899fa...06bfa6` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254950 | `0xfd4330...ff2e3f` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254948 | `0xabd587...29b074` | ⚠️ Unaudited |
| UsdnLongFarming | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254932 | `0xf9d360...6bbe27` | ⚠️ Unaudited |
| UsdnProtocolImpl | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254945 | `0x656cb8...41f01a` | ⚠️ Unaudited |
| VaultLib | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254946 | `0xf67e2d...b1e886` | ⚠️ Unaudited |

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
| [12-18-2024_Smardex_USDN.pdf](https://github.com/GuardianAudits/Audits/blob/main/Smardex/12-18-2024_Smardex_USDN.pdf) | Guardian | Audit | 2024-12 | aging | Direct | n/a | matched | 4 | 0 | 0 | 10 | n/a |
| [Bailsec - Smardex USDN - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20USDN%20-%20Final%20Report.pdf) | BailSec | Audit | 2024-05 | stale | Direct | n/a | matched | 5 | 0 | 0 | 11 | n/a |
| [Bailsec - Smardex Ecosystem - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20Ecosystem%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-01 | aging | Direct | n/a | matched | 3 | 0 | 0 | 10 | n/a |
| [Bailsec - Smardex - Router - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20-%20Router%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-03 | aging | Direct | n/a | matched | 1 | 0 | 0 | 21 | n/a |
| [Bailsec - SmarDex - P2P Lending - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20SmarDex%20-%20P2P%20Lending%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2564] 12-18-2024_Smardex_USDN.pdf — matched: No reason recorded
- [2566] Bailsec - Smardex USDN - Final Report.pdf — matched: No reason recorded
- [2567] Bailsec - Smardex Ecosystem - Final Report.pdf — matched: No reason recorded
- [2568] Bailsec - Smardex - Router - Final Report.pdf — matched: No reason recorded
- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf — no match: The report covers two contracts: Spro (main lending contract) and SproLoan (NFT loan token). The audit date is inferred from 'February '2025' on the cover page, using the last day of the month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 12-18-2024_Smardex_USDN.pdf | LiquidationRewardsManager | own contract | LiquidationRewardsManager (selected) `0x9514d3...db202c` — deployed 2025-01-21 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 12-18-2024_Smardex_USDN.pdf | PythOracle | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | Rebalancer | own contract | Rebalancer (selected) `0xaebcc8...826e03` — deployed 2025-01-21 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 12-18-2024_Smardex_USDN.pdf | TickMath | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | Usdn | own contract | Usdn (selected) `0xde17a0...90dee2` — deployed 2024-12-19 16:54:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolActionsLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolActionsLongLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolActionsUtilsLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolCoreLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolFallback | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolLongLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolStorage | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolVaultLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | WstEthOracleMiddleware | own contract | WstEthOracleMiddleware (selected) `0xc1459f...98eab0` — deployed 2025-01-21 17:56:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | ActionsLong | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | ActionsVault | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | DoubleEndedQueue | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | HugeUint | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | LiquidationRewardsManager | own contract | LiquidationRewardsManager (selected) `0x9514d3...db202c` — deployed 2025-01-21 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | OracleMiddleWare | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | Permit2TokenBitfield | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | PythOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | Rebalancer | own contract | Rebalancer (selected) `0xaebcc8...826e03` — deployed 2025-01-21 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | RedstoneOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | SignedMath | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | TickMath | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | Usdn | own contract | Usdn (selected) `0xde17a0...90dee2` — deployed 2024-12-19 16:54:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | WstEthOracleMiddleWare | own contract | WstEthOracleMiddleware (selected) `0xc1459f...98eab0` — deployed 2025-01-21 17:56:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | Wusdn | own contract | Wusdn (selected) `0x999999...cb1af9` — deployed 2025-01-14 15:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ActionsLongLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ActionsUtilsLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ConstantsLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | CoreLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | DoubleEndedQueue | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | LiquidationRewardsManager | own contract | LiquidationRewardsManager (selected) `0x9514d3...db202c` — deployed 2025-01-21 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex Ecosystem - Final Report.pdf | LongLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | OracleMiddleware | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | PythOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | Rebalancer | own contract | Rebalancer (selected) `0xaebcc8...826e03` — deployed 2025-01-21 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex Ecosystem - Final Report.pdf | TickMath | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | WstEthOracleMiddleware | own contract | WstEthOracleMiddleware (selected) `0xc1459f...98eab0` — deployed 2025-01-21 17:56:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex - Router - Final Report.pdf | BytesLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Commands | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Dispatcher | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LidoImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LidoRouter | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LidoRouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LockAndMap | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Path | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Payment | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | PaymentLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | RouterImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | SmardexImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | SmardexSwapRouter | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | SmardexSwapRouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Sweep | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | TransientStorageLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UniswapV2RouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UniversalRouter | own contract | UniversalRouter (selected) `0x49f66b...0983e1` — deployed 2025-01-21 19:21:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex - Router - Final Report.pdf | UsdnProtocolImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UsdnProtocolRouter | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UsdnProtocolRouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | V2SwapRouter | unmatched — not counted | — | — | no |
| Bailsec - SmarDex - P2P Lending - Final Report.pdf | Spro | unmatched — not counted | — | core contract for P2P lending, detailed in detection section | no |
| Bailsec - SmarDex - P2P Lending - Final Report.pdf | SproLoan | unmatched — not counted | — | manages loans as NFTs, detailed in detection section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf9d360...6bbe27` | UsdnLongFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x656cb8...41f01a` | UsdnProtocolImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf67e2d...b1e886` | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 54 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=13

Zero-match audit list:

- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
