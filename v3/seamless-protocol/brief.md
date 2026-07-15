# Agentic Audit Brief: Seamless Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Seamless Protocol (`seamless-protocol`)
- Website: [https://www.seamlessprotocol.com](https://www.seamlessprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 56 unique implementations (62 raw deployments)
- Coverage basis: 5/45 confirmed own live verified implementations (11.1%); conservative 11.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $15,656,122.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Seamless Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across base, ethereum. Structural roles: 30 unclassified, 18 supporting, 13 core. 27 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (30), supporting (18), core (13)
- Contract kinds: contract (56), abstract (5)
- Detected standards: erc20 (5), erc20permit (5), ownable (5), erc1967proxy (4), erc165 (3), erc4626 (3), multicall (3), ownable2step (3), accesscontrol (2)
- Frameworks: openzeppelin-upgradeable (25), openzeppelin (3), aave (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 27

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x42fc03...d081af`, chain 1)
- UnnamedContract (`0x5e6b01...c30110`, chain 1)
- UnnamedContract (`0x604d37...0b97a3`, chain 1)
- UnnamedContract (`0x642681...c0fc3d`, chain 1)
- UnnamedContract (`0x821ded...615bd7`, chain 1)
- UnnamedContract (`0x98c4e4...3ed1bf`, chain 1)
- UnnamedContract (`0xc73ce5...b3033f`, chain 1)
- UnnamedContract (`0xf7356e...d6a69f`, chain 1)
- UnnamedContract (`0x585cc1...f65c51`, chain 8453)
- UnnamedContract (`0xa2fcee...1dbb8c`, chain 8453)
- UnnamedContract (`0xdd3341...e68e61`, chain 8453)
- BeaconProxyFactory (`0x603da7...ff0a82`, chain 1)
- BeaconProxyFactory (`0xe0b2e4...1abe57`, chain 8453)
- ERC20TransferStrategy (`0xd90eac...be55bb`, chain 8453)
- GnosisSafeProxy (`0xa1b5f2...955a22`, chain 8453)
- InitializableAdminUpgradeabilityProxy (`0x2c6dc2...2adb93`, chain 8453)
- InitializableAdminUpgradeabilityProxy (`0x982f3a...af1089`, chain 8453)
- LeverageManager (`0x9d04f6...64220e`, chain 1)
- LeverageManager (`0xeb0221...bb2b7c`, chain 8453)
- LeverageManager (`0xfe9101...2e1856`, chain 8453)
- LeverageRouter (`0xb0764d...6e6dba`, chain 1)
- LeverageRouter (`0x00c669...a11a5c`, chain 8453)
- LeverageRouter (`0xdba92f...9a887c`, chain 8453)
- LeverageToken (`0xfe9101...2e1856`, chain 1)
- LeverageToken (`0x057a2a...537673`, chain 8453)
- LeverageToken (`0x603da7...ff0a82`, chain 8453)
- MetaMorphoV1_1 (`0x27d8c7...c65c18`, chain 8453)
- MetaMorphoV1_1 (`0x5a47c8...22f3c7`, chain 8453)
- MetaMorphoV1_1 (`0x616a4e...273738`, chain 8453)
- MorphoLendingAdapter (`0x00c669...a11a5c`, chain 1)
- MorphoLendingAdapter (`0xb224f5...129817`, chain 1)
- MorphoLendingAdapter (`0xcb1eff...3aee58`, chain 1)
- MorphoLendingAdapter (`0xe33eaf...9bd809`, chain 1)
- MorphoLendingAdapter (`0xe9a32a...298f1f`, chain 1)
- MorphoLendingAdapter (`0x9558b3...ab253f`, chain 8453)
- MorphoLendingAdapterFactory (`0xce05fb...7ded71`, chain 1)
- MulticallExecutor (`0x16d02e...fd22e1`, chain 1)
- MulticallExecutor (`0x9d04f6...64220e`, chain 8453)
- PricingAdapter (`0x44cceb...76c88f`, chain 1)
- PricingAdapter (`0xce05fb...7ded71`, chain 8453)
- SeamAirdrop (`0xb7a653...5c702b`, chain 8453)
- SeamL1 (`0x6b66cc...e726ba`, chain 1)
- SwapAdapter (`0xfdf71e...e38942`, chain 8453)
- VeloraAdapter (`0xc4e581...7db6ba`, chain 1)
- VeloraAdapter (`0x5c37eb...b3e351`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 61; live-surface contracts included: 61 (51 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 56/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/45 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 56 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Deployed-live implementations: 56 of 56 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/45
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 56
- Raw deployments: 62
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 11.1% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 5 | 11.1% | 2025-05 |
| Spearbit | Tier 1 | 5 | 11.1% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | base | unit-392475 | `0xdba92f...9a887c` | ✅ Audited |
| LeverageToken | unknown | project_anchor | own_supporting | 1 | base | unit-392487 | 2 deployments: base `0x603da7...ff0a82`; base `0xe0b2e4...1abe57` | ✅ Audited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392469 | `0x9558b3...ab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392454 | `0xce05fb...7ded71` | ✅ Audited |
| SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392478 | `0xfdf71e...e38942` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | project_anchor | own_supporting | 1 | base | unit-392492 | `0x982f3a...af1089` | ⚠️ Unaudited |
| ERC20TransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392458 | `0x003d47...e89753` | ⚠️ Unaudited |
| ERC20TransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392474 | `0xd90eac...be55bb` | ⚠️ Unaudited |
| EscrowSeam | unknown | project_anchor | own_supporting | 1 | base | unit-392488 | `0x998e44...10d5e5` | ⚠️ Unaudited |
| EscrowSeamTransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392461 | `0x2181be...dd89ac` | ⚠️ Unaudited |
| FeeKeeper | unknown | project_anchor | own_supporting | 1 | base | unit-392484 | `0x003ee5...21f2f2` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-392494 | `0xa1b5f2...955a22` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392479 | 2 deployments: ethereum `0x5c37eb...b3e351`; ethereum `0x9d04f6...64220e` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 1 | base | unit-392495 | 2 deployments: base `0x38ba21...5ec3a8`; base `0xfe9101...2e1856` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 0 | base | unit-392477 | `0xeb0221...bb2b7c` | ⚠️ Unaudited |
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392449 | `0xb0764d...6e6dba` | ⚠️ Unaudited |
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | base | unit-392459 | `0x00c669...a11a5c` | ⚠️ Unaudited |
| LeverageToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392480 | 2 deployments: ethereum `0x603da7...ff0a82`; ethereum `0xfe9101...2e1856` | ⚠️ Unaudited |
| LeverageToken | unknown | project_anchor | own_supporting | 0 | base | unit-392460 | `0x057a2a...537673` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392462 | `0x27d8c7...c65c18` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392465 | `0x5a47c8...22f3c7` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392467 | `0x616a4e...273738` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392436 | `0x00c669...a11a5c` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392450 | `0xb224f5...129817` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392453 | `0xcb1eff...3aee58` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392455 | `0xe33eaf...9bd809` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392456 | `0xe9a32a...298f1f` | ⚠️ Unaudited |
| MulticallExecutor | periphery | project_anchor | own_supporting | 0 | ethereum | unit-392437 | `0x16d02e...fd22e1` | ⚠️ Unaudited |
| MulticallExecutor | periphery | project_anchor | own_supporting | 0 | base | unit-392470 | `0x9d04f6...64220e` | ⚠️ Unaudited |
| PricingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392439 | `0x44cceb...76c88f` | ⚠️ Unaudited |
| PricingAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392473 | `0xce05fb...7ded71` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | project_anchor | own_supporting | 1 | base | unit-392493 | 2 deployments: base `0xa530e6...46dd32`; base `0xd923b2...c24912` | ⚠️ Unaudited |
| RewardsController | unknown | project_anchor | own_supporting | 1 | base | unit-392485 | `0x2c6dc2...2adb93` | ⚠️ Unaudited |
| Seam | unknown | project_anchor | own_supporting | 1 | base | unit-392486 | `0x1c7a46...88cd85` | ⚠️ Unaudited |
| SeamAirdrop | unknown | project_anchor | own_supporting | 0 | base | unit-392472 | `0xb7a653...5c702b` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | project_anchor | own_supporting | 1 | base | unit-392481 | `0x57460d...1b3955` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | project_anchor | own_supporting | 1 | base | unit-392483 | `0x785c97...b90778` | ⚠️ Unaudited |
| SeamGovernorV2 | unknown | project_anchor | own_supporting | 2 | base | unit-392490 (2 proxies) | 2 deployments: base `0x04faa2...e761b6`; base `0x8768c7...0db294` | ⚠️ Unaudited |
| SeamL1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392443 | `0x6b66cc...e726ba` | ⚠️ Unaudited |
| SeamTimelockController | unknown | project_anchor | own_supporting | 1 | base | unit-392482 | `0x639d2d...925fee` | ⚠️ Unaudited |
| SeamTimelockController | unknown | project_anchor | own_supporting | 1 | base | unit-392489 | `0xa96448...b16718` | ⚠️ Unaudited |
| SeamTransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392463 | `0x2b1bde...fd154c` | ⚠️ Unaudited |
| StakedToken | unknown | project_anchor | own_supporting | 1 | base | unit-392491 | `0x73f084...7172a4` | ⚠️ Unaudited |
| VeloraAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392451 | `0xc4e581...7db6ba` | ⚠️ Unaudited |
| VeloraAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392466 | `0x5c37eb...b3e351` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392438 | `0x42fc03...d081af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392440 | `0x5e6b01...c30110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392441 | `0x604d37...0b97a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392442 | `0x642681...c0fc3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392444 | `0x821ded...615bd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392446 | `0x98c4e4...3ed1bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392452 | `0xc73ce5...b3033f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392457 | `0xf7356e...d6a69f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392464 | `0x585cc1...f65c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392471 | `0xa2fcee...1dbb8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392476 | `0xdd3341...e68e61` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2025.05.19%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 5 | 1 | 0 | 11 | high |
| [Cantina - 1 Oct 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%201%20Oct%202025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Cantina - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%208%20May%202025.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Sherlock - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Sherlock%20-%208%20May%202025.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 5 | 1 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3862] cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b — no match: No explicit scope section found; contract names extracted from findings and descriptions. Audit period ends 10 April 2025.
- [3863] 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf — matched: All 16 files listed in the Scope section of the audit report. Audit date is the end date of the audit period (April 29 - May 8, 2025).
- [10384] Cantina - 1 Oct 2025.pdf — no match: No explicit scope section found; contracts extracted from findings context. Audit date from cover page.
- [10385] Cantina - 8 May 2025.pdf — matched: Extracted from Security Review Summary and findings context. Audit date from cover page: May 8, 2025.
- [10386] Sherlock - 8 May 2025.pdf — matched: All 16 files listed in scope section. Audit date range April 29 - May 8, 2025, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | MorphoLendingAdapter | ambiguous — not counted | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | DataTypes | unmatched — not counted | — | mentioned in gas optimization finding as containing Auction struct | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | BeaconProxyFactory | own proxy deployment | BeaconProxyFactory (proxy) (selected) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | MorphoLendingAdapterFactory | own contract | MorphoLendingAdapterFactory (selected) `0xce05fb...7ded71` — deployed 2025-09-30 00:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | EtherFiLeverageRouter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouter | own contract | LeverageRouter (alternative) `0xb0764d...6e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (selected) `0xdba92f...9a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c669...a11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouterBase | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouterMintBase | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | SwapAdapter | own contract | SwapAdapter (selected) `0xfdf71e...e38942` — deployed 2025-06-02 23:04:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | CollateralRatiosRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | DutchAuctionRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | PreLiquidationRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | RebalanceAdapter | ambiguous — not counted | RebalanceAdapter (alternative) `0xd923b2...c24912` — deployed 2025-06-02 23:10:49+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0xa530e6...46dd32` — deployed 2025-06-02 23:10:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Cantina - 1 Oct 2025.pdf | LeverageRouter | ambiguous — not counted | LeverageRouter (alternative) `0xb0764d...6e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0xdba92f...9a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c669...a11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 1 Oct 2025.pdf | PricingAdapter | ambiguous — not counted | PricingAdapter (alternative) `0x44cceb...76c88f` — deployed 2025-09-30 00:30:11+03 — liveness: live (current_address_book_code)<br>PricingAdapter (alternative) `0xce05fb...7ded71` — deployed 2025-10-07 20:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 1 Oct 2025.pdf | FeeManager | unmatched — not counted | — | mentioned in findings 3.2.2, 3.2.3, 3.3.1 | no |
| Cantina - 1 Oct 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | DataTypes | unmatched — not counted | — | Listed in scope context and findings | no |
| Cantina - 8 May 2025.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | BeaconProxyFactory | own proxy deployment | BeaconProxyFactory (proxy) (selected) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | MorphoLendingAdapterFactory | own contract | MorphoLendingAdapterFactory (selected) `0xce05fb...7ded71` — deployed 2025-09-30 00:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | EtherFiLeverageRouter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageRouter | own contract | LeverageRouter (alternative) `0xb0764d...6e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (selected) `0xdba92f...9a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c669...a11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | LeverageRouterBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageRouterMintBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | SwapAdapter | own contract | SwapAdapter (selected) `0xfdf71e...e38942` — deployed 2025-06-02 23:04:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | CollateralRatiosRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | DutchAuctionRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | PreLiquidationRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | RebalanceAdapter | ambiguous — not counted | RebalanceAdapter (alternative) `0xd923b2...c24912` — deployed 2025-06-02 23:10:49+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0xa530e6...46dd32` — deployed 2025-06-02 23:10:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x003d47...e89753` | ERC20TransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd90eac...be55bb` | ERC20TransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x998e44...10d5e5` | EscrowSeam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2181be...dd89ac` | EscrowSeamTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x003ee5...21f2f2` | FeeKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c37eb...b3e351` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x38ba21...5ec3a8` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeb0221...bb2b7c` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb0764d...6e6dba` | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x00c669...a11a5c` | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x603da7...ff0a82` | LeverageToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x057a2a...537673` | LeverageToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00c669...a11a5c` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb224f5...129817` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb1eff...3aee58` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe33eaf...9bd809` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9a32a...298f1f` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16d02e...fd22e1` | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9d04f6...64220e` | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44cceb...76c88f` | PricingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xce05fb...7ded71` | PricingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa530e6...46dd32` | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2c6dc2...2adb93` | RewardsController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1c7a46...88cd85` | Seam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb7a653...5c702b` | SeamAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x57460d...1b3955` | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x785c97...b90778` | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x04faa2...e761b6` | SeamGovernorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b66cc...e726ba` | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x639d2d...925fee` | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa96448...b16718` | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2b1bde...fd154c` | SeamTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x73f084...7172a4` | StakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4e581...7db6ba` | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5c37eb...b3e351` | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 19 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=2
- Match method counts: temporal_name=7, unique_name=4

Zero-match audit list:

- [3862] cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b
- [10384] Cantina - 1 Oct 2025.pdf

Fork inheritance lineage and inherited audits are included when available.
