# Agentic Audit Brief: SMARDEX Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SMARDEX Ecosystem (`smardex-ecosystem`)
- Website: [https://smardex.io](https://smardex.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 58 unique implementations (107 raw deployments)
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

- Logic-topography rows: 31; live-surface rows included: 31 (12 live, 19 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/9 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 11 of 58 unique; 47 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/58
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 58
- Raw deployments: 107
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
| BailSec | Tier 2 | 6 | 10.3% | 2025-03 |
| Guardian | Tier 2 | 4 | 6.9% | 2024-12 |

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

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d198...5cbaf7` | ⚠️ Unaudited |
| AiWhitelister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e0b1...3b737d` | ⚠️ Unaudited |
| AutoSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x346c0c...b3f920`; ethereum `0x7e473d...d69231`; ethereum `0x865d61...e82e3e`; ethereum `0xf25768...f6a9d4` | ⚠️ Unaudited |
| AutoSwapperL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: ethereum `0x2d2a9a...d384ed`; bsc `0x41a00e...611f22`; bsc `0xcff24a...fa9835`; polygon `0x561a55...52db32`; polygon `0x8ef71f...709d30`; base `0x02fb61...9f3e02`; base `0x7240aa...907e38`; arbitrum `0x89c64b...f0cc54`; arbitrum `0xd978bb...a9e75b` | ⚠️ Unaudited |
| DoubleEndedQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30246d...883f14` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x49e936...60dcce`; ethereum `0xe47f8b...e8b44a`; bsc `0x7bc796...76458c`; polygon `0x2662b8...81ad6c`; base `0xedd758...eb7b7c`; arbitrum `0x267277...44fcc9` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254923 | `0x7d85c0...a77523` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254941 | `0xb891ae...25a0b9` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254933 | `0x7db73a...a8e46b` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254942 | `0xa5d378...51c5a3` | ⚠️ Unaudited |
| FarmingRangeL2Arbitrum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254937 | `0x53d165...257f69` | ⚠️ Unaudited |
| FarmingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1bc7...98daf5` | ⚠️ Unaudited |
| PUMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x24575e...b70e6e`; ethereum `0x44a7d8...fed13f` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25c4b9...034837`; ethereum `0xc049c7...8a2b1f` | ⚠️ Unaudited |
| RewardManagerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0x8ef71f...709d30`; polygon `0x391bec...4c8deb`; base `0xd978bb...a9e75b` | ⚠️ Unaudited |
| RewardManagerL2Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c622d...94cbc9` | ⚠️ Unaudited |
| RewardManagerWithdrawable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x40a8ee...d6f3cf`; bsc `0xde0ceb...04055a`; polygon `0xab3699...af545a`; base `0xccfdbe...13cf2c` | ⚠️ Unaudited |
| RewardManagerWithdrawableArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x863799...a97c41` | ⚠️ Unaudited |
| SmarDexDegen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x85bcb7...ec16a5`; bsc `0xd48d45...be78a7`; polygon `0x671e5e...867837`; base `0x45f23f...bc6d6e`; arbitrum `0x894abf...11b739` | ⚠️ Unaudited |
| SmardexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3aedcb...2d7e81`; ethereum `0x743337...882abb`; ethereum `0x7753f3...e76a1d` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254928 | `0xb878dc...84214f` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254939 | `0xa8ef6f...23af33` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254934 | `0x9a1e16...84398f` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254943 | `0xdd4536...0f975a` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254936 | `0x41a00e...611f22` | ⚠️ Unaudited |
| SmardexPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3a4b8...420179` | ⚠️ Unaudited |
| SmardexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x340386...8b1764`; ethereum `0x3cd435...a5d13c`; ethereum `0x926c77...56f92a`; ethereum `0x9a5132...d9ea44`; ethereum `0xb3ef1c...2245eb`; ethereum `0xef2f9b...6d3f60`; bsc `0x391bec...4c8deb`; polygon `0xa8ef6f...23af33`; base `0x5c622d...94cbc9`; arbitrum `0xdd4536...0f975a` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254930 | `0xc33984...6c0c6f` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254940 | `0xab3699...af545a` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254935 | `0xedd758...eb7b7c` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254944 | `0xf03d13...7b3020` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254938 | `0xda3970...db7b3d` | ⚠️ Unaudited |
| SmardexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x037768...043a0c`; ethereum `0x1b6476...8a2670`; ethereum `0x337cdb...83bc67`; ethereum `0x52e7b2...d8736e`; ethereum `0x825f1c...e07fff`; ethereum `0xa333c0...fa1f3f`; ethereum `0xa8e3b7...29b08b`; ethereum `0xc1d81e...7c63e9`; ethereum `0xd60c2e...020848`; ethereum `0xd82b36...32da53`; ethereum `0xedcd18...61f1ec` | ⚠️ Unaudited |
| SmardexToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254922 | `0x5de8ab...61beef` | ⚠️ Unaudited |
| Staking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254924 | `0x804970...eb1a31` | ⚠️ Unaudited |
| TickMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2434...41e943` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254949 | `0xfdc66a...cdd20f` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-254947 | `0x6899fa...06bfa6` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254950 | `0xfd4330...ff2e3f` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254948 | `0xabd587...29b074` | ⚠️ Unaudited |
| UsdnLongFarming | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254932 | `0xf9d360...6bbe27` | ⚠️ Unaudited |
| UsdnProtocolActionsLongLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc374...ae2a45` | ⚠️ Unaudited |
| UsdnProtocolActionsUtilsLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf13fa...2b7ffe` | ⚠️ Unaudited |
| UsdnProtocolCoreLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de8af...cfba38` | ⚠️ Unaudited |
| UsdnProtocolFallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e615...3959c0` | ⚠️ Unaudited |
| UsdnProtocolImpl | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254945 | 2 deployments: ethereum `0x271df5...a4c498`; ethereum `0x656cb8...41f01a` | ⚠️ Unaudited |
| UsdnProtocolLongLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932a77...4a3455` | ⚠️ Unaudited |
| UsdnProtocolSettersLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea10c7...7f136a` | ⚠️ Unaudited |
| UsdnProtocolVaultLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a3b25...6d53eb` | ⚠️ Unaudited |
| Usdnr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82957d...49269b` | ⚠️ Unaudited |
| VaultLib | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254946 | `0xf67e2d...b1e886` | ⚠️ Unaudited |
| WusdnVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d149...24d967` | ⚠️ Unaudited |

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
| ethereum | `0x271df5...a4c498` | UsdnProtocolImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf67e2d...b1e886` | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
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
