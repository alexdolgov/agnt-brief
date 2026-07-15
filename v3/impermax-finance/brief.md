# Agentic Audit Brief: Impermax Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Impermax Finance (`impermax-finance`)
- Website: [https://impermax.finance/](https://impermax.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, ethereum, fantom, linea, moonriver, optimism, polygon, scroll, zksync-era
- Contract surface: 38 unique implementations (38 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $730,737.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Impermax Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, avalanche, base, blast, ethereum, fantom, linea, moonriver, optimism, polygon, scroll, zksync-era. Structural roles: 9 supporting, 6 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: supporting (9), core (6)
- Contract kinds: contract (15)
- Detected standards: erc20 (4), erc165 (2), ownable (2), erc1967proxy (1)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (2), solmate (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

2 of 35 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

**Router01** (`0x5e1690...43127d`, chain 1)
Origin: cbridge (`0x5e1690...43127d`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Router02** (`0x7c79a1...a83ba0`, chain 137)
Origin: tarot (`0xa516b9...84405f`)
Containment: 87.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- impermaxBorrow(address,address,uint256,bytes)
- impermaxRedeem(address,uint256,bytes)
- isStakedLPToken(address)

Removals (removed from original):
- isVaultToken(address)
- tarotBorrow(address,address,uint256,bytes)
- tarotRedeem(address,uint256,bytes)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5671b2...12ba7d`, chain 1)
- UnnamedContract (`0x8c3736...5b767b`, chain 1)
- UnnamedContract (`0xbb6bba...eecc82`, chain 10)
- UnnamedContract (`0x846019...6a38c4`, chain 137)
- UnnamedContract (`0x89703c...8c6f7b`, chain 137)
- UnnamedContract (`0xbb9227...4064d6`, chain 137)
- UnnamedContract (`0xcb30a6...8bb6cf`, chain 137)
- UnnamedContract (`0xbe9f8c...47991d`, chain 324)
- UnnamedContract (`0x8ab356...ded78d`, chain 1285)
- UnnamedContract (`0x958876...211256`, chain 1285)
- UnnamedContract (`0x270250...afce68`, chain 42161)
- UnnamedContract (`0x4ae891...053466`, chain 42161)
- UnnamedContract (`0x5475ae...eb086f`, chain 42161)
- UnnamedContract (`0x99cf05...3451f5`, chain 42161)
- UnnamedContract (`0x16ed59...461282`, chain 43114)
- UnnamedContract (`0x58fde5...93dce2`, chain 43114)
- UnnamedContract (`0x29c714...41d62f`, chain 81457)
- UnnamedContract (`0x7b816c...f6ef87`, chain 81457)
- BeaconProxy (`0xcf0f95...7c3841`, chain 59144)
- ClonableBeaconProxy (`0x566592...a2d57b`, chain 42161)
- Ibex (`0xf655c8...161dc6`, chain 1)
- IBEX (`0x9f04b6...188e6a`, chain 81457)
- ImpermaxChef (`0xd299d5...4a7caa`, chain 1285)
- MultiBridgeToken (`0x089d3d...f0c824`, chain 43114)
- OptimismMintableERC20 (`0xb8a9a9...dec24f`, chain 8453)
- Router02 (`0x3039c2...9f461f`, chain 43114)
- Router03 (`0x447b4e...713a02`, chain 81457)
- ScrollStandardERC20 (`0x78ab77...1ead5b`, chain 534352)
- SimpleUniswapOracle (`0x3271cc...fa05d5`, chain 137)
- SimpleUniswapOracle (`0xc12e00...47fb6c`, chain 43114)
- UChildERC20Proxy (`0xf972da...b298f6`, chain 137)
- UnnamedContract (`0x60ae5f...624556`, chain 250)
- UnnamedContract (`0xb9f341...cf94fc`, chain 250)

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 35 of 38 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgedToken | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-242471 | `0xcf0f95...7c3841` | ⚠️ Unaudited |
| Ibex | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242440 | `0xf655c8...161dc6` | ⚠️ Unaudited |
| IBEX | unknown | project_anchor | own_supporting | 0 | blast | unit-242467 | `0x9f04b6...188e6a` | ⚠️ Unaudited |
| ImpermaxChef | unknown | project_anchor | own_supporting | 0 | moonriver | unit-242444 | `0xd299d5...4a7caa` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242458 | `0x089d3d...f0c824` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-242468 | `0xb8a9a9...dec24f` | ⚠️ Unaudited |
| Router01 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-242438 | `0x5e1690...43127d` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | polygon | unit-242446 | `0x7c79a1...a83ba0` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | avalanche | unit-242460 | `0x3039c2...9f461f` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | blast | unit-242465 | `0x447b4e...713a02` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-242463 | `0x78ab77...1ead5b` | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-242445 | `0x3271cc...fa05d5` | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242462 | `0xc12e00...47fb6c` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-242470 | `0x566592...a2d57b` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-242469 | `0xf972da...b298f6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242437 | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242439 | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242441 | `0xbb6bba...eecc82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242447 | `0x846019...6a38c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242448 | `0x89703c...8c6f7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242449 | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242450 | `0xcb30a6...8bb6cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242451 | `0x60ae5f...624556` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242452 | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242453 | `0xbe9f8c...47991d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-242442 | `0x8ab356...ded78d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-242443 | `0x958876...211256` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242454 | `0x270250...afce68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242455 | `0x4ae891...053466` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242456 | `0x5475ae...eb086f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242457 | `0x99cf05...3451f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242459 | `0x16ed59...461282` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242461 | `0x58fde5...93dce2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242464 | `0x29c714...41d62f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242466 | `0x7b816c...f6ef87` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-02-08_Impermax.pdf](https://github.com/GuardianAudits/Audits/blob/main/Impermax/2025-02-08_Impermax.pdf) | Guardian | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Bailsec - Impermax - V3 Core - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Impermax%20-%20V3%20Core%20-%20Final%20Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [CertiK Audit Report for impermax-x-uniswapv2-core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/CertiK%20Audit%20Report%20for%20impermax-x-uniswapv2-core.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [SC_impermax_core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/SC_impermax_core.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2FQLbxcYMLJhQNoWJKXQo6%2FImpermax%20Tokenized%20Aerodrome%20Report.pdf?alt=media) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2Fc5KfXIpov0BrQvrkHSFU%2FImpermax-Report.pdf?alt=media) | Guardian, Bailsec, Cantina | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [CertiK Audit Report for IMX.pdf](https://github.com/Impermax-Finance/IMX/blob/main/audit/CertiK%20Audit%20Report%20for%20IMX.pdf) | CertiK | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [SC_impermax_periphery.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-periphery/blob/main/audit/SC_impermax_periphery.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SC_impermax_oracle.pdf](https://github.com/Impermax-Finance/simple-uniswap-oracle/blob/main/audit/SC_impermax_oracle.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13286] 2025-02-08_Impermax.pdf — no match: No reason recorded
- [13287] Bailsec - Impermax - V3 Core - Final Report.pdf — no match: No reason recorded
- [16479] CertiK Audit Report for impermax-x-uniswapv2-core.pdf — no match: Extracted 28 contract names from the audit scope table. Audit date inferred from 'Apr 30th, 2021' in the header.
- [16480] SC_impermax_core.pdf — no match: The provided text is garbled and does not contain any identifiable contract names, scope sections, or audit date.
- [16483] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf — no match: Scope table lists only TokenizedAeroCLPosition.sol; NfpmAeroInteractions and ImpermaxERC721 are referenced in findings but not explicitly in scope table.
- [16484] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf — no match: Scope section 2.1 lists 11 core contracts with file paths. Audit date is June 30, 2025 from cover page and headers.
- [16485] CertiK Audit Report for IMX.pdf — no match: No reason recorded
- [16486] SC_impermax_periphery.pdf — no match: The provided text is incomplete and does not contain any contract names, scope sections, or audit date.
- [16487] SC_impermax_oracle.pdf — no match: The provided text does not contain any audit report content; it appears to be a fragment of a document with page numbers and a URL.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-02-08_Impermax.pdf | BInterestRateModel | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | BSetter | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | CSetter | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ITokenizedUniswapV3Position | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | IUniswapV3AC01 | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ImpermaxV3Borrowable | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ImpermaxV3Collateral | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ImpermaxV3Factory | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | TokenizedUniswapV3Factory | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | TokenizedUniswapV3Position | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | UniswapV3AC01 | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | UniswapV3CollateralMath | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BAllowance | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BDeployer | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BInterestRateModel | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BSetter | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BStorage | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CDeployer | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CSetter | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CStorage | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CollateralMath | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxERC20 | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxERC721 | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3Borrowable | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3Collateral | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3Factory | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3OracleChainlink | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | PoolToken | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedUniswapV3Deployer | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedUniswapV3Factory | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedUniswapV3Position | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedV3Factory | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3CollateralMath | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3OracleTwap | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3Position | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3WeightedOracleLibrary | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | V3Factory | unmatched — not counted | — | — | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BAllowance | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | InterestRateModel | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BSetter | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BStorage | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Borrowable | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | CDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | CSetter | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | CStorage | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Collateral | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Factory | ambiguous — not counted | UnnamedContract (alternative) `0x60ae5f...624556` — liveness: live (current_address_book_code)<br>0x7b816c… (alternative) `0x7b816c...f6ef87` — deployed 2024-03-22 13:13:43+03 — liveness: live (current_address_book_code)<br>0x8c3736… (alternative) `0x8c3736...5b767b` — deployed 2021-02-27 18:56:01+03 — liveness: live (current_address_book_code)<br>0xbb9227… (alternative) `0xbb9227...4064d6` — deployed 2021-05-24 12:14:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ImpermaxERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | PoolToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IBDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IBorrowTracker | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IBorrowable | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ICDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ICollateral | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IImpermaxCallee | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IPoolToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ISimpleUniswapOracle | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | UQ112x112 | unmatched — not counted | — | listed in scope table | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf | TokenizedAeroCLPosition | unmatched — not counted | — | listed in scope table | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf | NfpmAeroInteractions | unmatched — not counted | — | mentioned in findings (L-02) | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf | ImpermaxERC721 | unmatched — not counted | — | mentioned in findings (L-03) | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | CollateralMath | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | ImpermaxV3OracleChainlink | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | TokenizedUniswapV3Position | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | BAllowance | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | BSetter | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | BStorage | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | CSetter | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | CStorage | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | ImpermaxV3Borrowable | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | ImpermaxV3Collateral | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | PoolToken | unmatched — not counted | — | listed in scope section 2.1 | no |
| CertiK Audit Report for IMX.pdf | ClaimAggregator | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Distributor | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | FarmingPool | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IBorrowTracker | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IBorrowable | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IClaimable | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IFarmingPool | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IImx | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IVester | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Imx | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | InitializedDistributor | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Math | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | OwnedDistributor | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | SafeMath | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Vester | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | VesterSale | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | VesterStepped | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0xcf0f95...7c3841` | BridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf655c8...161dc6` | Ibex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x9f04b6...188e6a` | IBEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd299d5...4a7caa` | ImpermaxChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x089d3d...f0c824` | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb8a9a9...dec24f` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e1690...43127d` | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7c79a1...a83ba0` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3039c2...9f461f` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x447b4e...713a02` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3271cc...fa05d5` | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc12e00...47fb6c` | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x566592...a2d57b` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf972da...b298f6` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 95 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: n/a

Zero-match audit list:

- [13286] 2025-02-08_Impermax.pdf
- [13287] Bailsec - Impermax - V3 Core - Final Report.pdf
- [16479] CertiK Audit Report for impermax-x-uniswapv2-core.pdf
- [16480] SC_impermax_core.pdf
- [16483] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf
- [16484] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf
- [16485] CertiK Audit Report for IMX.pdf
- [16486] SC_impermax_periphery.pdf
- [16487] SC_impermax_oracle.pdf

Fork inheritance lineage and inherited audits are included when available.
