# Agentic Audit Brief: Aarna Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Aarna Protocol (`aarna-protocol`)
- Website: [https://www.aarna.ai](https://www.aarna.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 87 unique implementations (87 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $501,712.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aarna Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, ethereum, sonic. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (4), ownable2step (4)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3d2a8c...2c22e9`, chain 1)
- UnnamedContract (`0x3e2011...2cd5d1`, chain 1)
- UnnamedContract (`0x437615...f51a9c`, chain 1)
- UnnamedContract (`0x6936df...ae66dd`, chain 1)
- UnnamedContract (`0x72ec84...3a4aba`, chain 1)
- UnnamedContract (`0xb157ae...e22df5`, chain 1)
- UnnamedContract (`0xb9c134...1f2ae8`, chain 1)
- UnnamedContract (`0xceb202...3948ad`, chain 1)
- UnnamedContract (`0xcfff0e...71dfec`, chain 1)
- UnnamedContract (`0xe56e41...d22f24`, chain 1)
- UnnamedContract (`0xf30f62...b30ea9`, chain 1)
- UnnamedContract (`0x213419...bfb911`, chain 8453)
- UnnamedContract (`0x383b42...5b9a13`, chain 8453)
- UnnamedContract (`0x6469d1...0bc318`, chain 8453)
- UnnamedContract (`0x748d97...b99f63`, chain 8453)
- UnnamedContract (`0x9dc3f0...f71166`, chain 8453)
- UnnamedContract (`0xb4e62f...faf52c`, chain 8453)
- UnnamedContract (`0xb56aa0...42a853`, chain 8453)
- UnnamedContract (`0xd3327f...bb2963`, chain 8453)
- UnnamedContract (`0xef3ceb...5f6602`, chain 8453)
- UnnamedContract (`0xfac8b5...5b095d`, chain 8453)
- AtvAdapter (`0x057a2a...dc9efc`, chain 8453)
- AtvFactory (`0x053136...72bad4`, chain 8453)
- AtvMorphoBlueIntegration (`0x3c29ef...3db9d8`, chain 8453)
- PendleAdapter (`0x45afba...1a2dff`, chain 1)
- SafeProxy (`0xc2b275...d9f49b`, chain 1)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 26 of 87 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 87
- Raw deployments: 87
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Failsafe | Tier 2 | 2 | 40.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AtvAdapter | unknown | project_anchor | own_supporting | 0 | base | unit-225498 | `0x057a2a...dc9efc` | ✅ Audited |
| AtvMorphoBlueIntegration | unknown | project_anchor | own_supporting | 0 | base | unit-225501 | `0x3c29ef...3db9d8` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebe8b1...7af297` | ⚠️ Unaudited |
| AFiASRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b14fe...2b4617` | ⚠️ Unaudited |
| AFiBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b895a...4e4d02` | ⚠️ Unaudited |
| AFiBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1504e9...7bc9ac` | ⚠️ Unaudited |
| AFiFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a66dd...a7593c` | ⚠️ Unaudited |
| AFiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0020e7...f373b6` | ⚠️ Unaudited |
| AFiManagerV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b21a8...16d1a6` | ⚠️ Unaudited |
| AFiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11747c...a55d5b` | ⚠️ Unaudited |
| AFiOracleV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005aed...90a2b8` | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226b02...36bc49` | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategiesV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11dd82...06112d` | ⚠️ Unaudited |
| AFiStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ba60...1eb741` | ⚠️ Unaudited |
| AFiStorageV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f91aa...6d7465` | ⚠️ Unaudited |
| AFiTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7a69...fa184c` | ⚠️ Unaudited |
| APRRecommendation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206710...2007ee` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42480c...d38068` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x625e77...0eb4cd` | ⚠️ Unaudited |
| AtvASRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef690...722a91` | ⚠️ Unaudited |
| AtvBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0955b9...b68dc4` | ⚠️ Unaudited |
| AtvBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283775...d9ae88` | ⚠️ Unaudited |
| AtvDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e4029...d6ecf8` | ⚠️ Unaudited |
| AtvFactory | unknown | project_anchor | own_supporting | 0 | base | unit-225497 | `0x053136...72bad4` | ⚠️ Unaudited |
| AtvLeverageBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b6291...e784d2` | ⚠️ Unaudited |
| AtvManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bc6b9...e34b8e` | ⚠️ Unaudited |
| AtvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0faac2...84a70e` | ⚠️ Unaudited |
| AtvPassiveRebalanceStrategies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043e92...662a4d` | ⚠️ Unaudited |
| AtvStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07ef18...d11d39` | ⚠️ Unaudited |
| AtvWrappedBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04dd44...ba27c6` | ⚠️ Unaudited |
| BaseBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbde8f3...7b372d` | ⚠️ Unaudited |
| BaseVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332e81...e5f110` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f...8d80c3` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079...ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a53...8e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d...270ed5` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14d2c9...5239c6` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b2e88...8437e9` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1853...db1ae7` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec63b...2e8779` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0e76...885a40` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053...63df29` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x316f97...d336e3` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb21b06...ad3775` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72ac1...4ce0ab` | ⚠️ Unaudited |
| DataConsumerWithSequencerCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x322216...d1b4fc` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556202...7b57e7` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66...a81fa3` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8...4b00c7` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1...174088` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e75...231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6...5d14a7` | ⚠️ Unaudited |
| PendleAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225488 | `0x45afba...1a2dff` | ⚠️ Unaudited |
| PendleMarketV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f5ea5...182418` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c0...e53ba1` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225510 | `0xc2b275...d9f49b` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a982...bb5549` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ed5f1...e4efdf` | ⚠️ Unaudited |
| SYAtvAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa394a0...f6d3a7` | ⚠️ Unaudited |
| TimeDelayModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0faac2...84a70e` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fb4d3...8cf88a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x9c4ec7...ff58bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5edbd...905dca` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159c...986069` | ⚠️ Unaudited |
| WrappedBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x401cf9...89b8bc` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4...f48e79` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225485 | `0x3d2a8c...2c22e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225486 | `0x3e2011...2cd5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225487 | `0x437615...f51a9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225489 | `0x6936df...ae66dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225490 | `0x72ec84...3a4aba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225491 | `0xb157ae...e22df5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225492 | `0xb9c134...1f2ae8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225493 | `0xceb202...3948ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225494 | `0xcfff0e...71dfec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225495 | `0xe56e41...d22f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225496 | `0xf30f62...b30ea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225499 | `0x213419...bfb911` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225500 | `0x383b42...5b9a13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225502 | `0x6469d1...0bc318` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225503 | `0x748d97...b99f63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225504 | `0x9dc3f0...f71166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225505 | `0xb4e62f...faf52c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225506 | `0xb56aa0...42a853` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225507 | `0xd3327f...bb2963` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225508 | `0xef3ceb...5f6602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225509 | `0xfac8b5...5b095d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/aarna-protocol) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [FailSafe >](https://drive.google.com/drive/folders/14_ulqN1J3Sd61QMrwYEbeafjxK8Nf5Uq?usp=sharing) | Failsafe | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review.](https://drive.google.com/file/d/16EK-59YoFuBfGL4zRR7YBbL9ko35Au7U/view) | Failsafe | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16709] DL audit link — no match: Extracted 10 contract names from the 'Contracts in Scope' and 'Audited Files' sections. Audit date inferred from 'Last Audit was delivered on 7/28/2025'.
- [16710] FailSafe > — no match: The provided text is a Google Drive listing of multiple PDF files, not the actual audit report content. No contract names or audit date could be extracted.
- [16711] The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. — matched: Extracted contract names from findings sections where they are explicitly mentioned as audited targets. No explicit scope table found; contracts are inferred from the report's detailed findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | AFiBase | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiFactory | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiManager | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiOracle | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiPassiveRebalanceStrategies | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiStorage | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | TimeDelayModule | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiTimeLock | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | ArrayUtils | unmatched — not counted | — | listed in 'Audited Files/SHA256' | no |
| DL audit link | FullMath | unmatched — not counted | — | listed in 'Audited Files/SHA256' | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvStakingManager | unmatched — not counted | — | Finding 1, Finding 2 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvBase | unmatched — not counted | — | Finding 1, Finding 4, Finding 5, Finding 6 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvStorage | unmatched — not counted | — | Finding 1, Finding 2, Finding 4 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvMorphoBlueIntegration | own contract | AtvMorphoBlueIntegration (selected) `0x3c29ef...3db9d8` — deployed 2026-02-09 14:50:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvPassiveRebalanceStrategies | unmatched — not counted | — | Finding 3 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvOracle | unmatched — not counted | — | Finding 3 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvAdapter | own contract | AtvAdapter (selected) `0x057a2a...dc9efc` — deployed 2026-02-09 14:29:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x053136...72bad4` | AtvFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45afba...1a2dff` | PendleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [16709] DL audit link
- [16710] FailSafe >

Fork inheritance lineage and inherited audits are included when available.
