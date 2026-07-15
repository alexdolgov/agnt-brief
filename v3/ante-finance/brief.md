# Agentic Audit Brief: Ante Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ante Finance (`ante-finance`)
- Website: [https://ante.finance](https://ante.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, bsc, ethereum, fantom, goerli, optimism, polygon, polygon-mumbai, zksync-era
- Contract surface: 90 unique implementations (90 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $322,853.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ante Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, aurora, avalanche, bsc, ethereum, fantom, goerli, optimism, polygon, polygon-mumbai, zksync-era. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x89e583...34cc48`, chain 1)
- UnnamedContract (`0xa03492...e02edc`, chain 1)
- UnnamedContract (`0x4f2be0...a9a355`, chain 10)
- UnnamedContract (`0xb4fd0c...42f7bc`, chain 10)
- UnnamedContract (`0xb4fd0c...42f7bc`, chain 56)
- UnnamedContract (`0xb4fd0c...42f7bc`, chain 137)
- UnnamedContract (`0xb4fd0c...42f7bc`, chain 250)
- UnnamedContract (`0xce3860...4d56a0`, chain 324)
- UnnamedContract (`0x1a53b3...3b7223`, chain 42161)
- UnnamedContract (`0xb4fd0c...42f7bc`, chain 42161)
- UnnamedContract (`0xb4fd0c...42f7bc`, chain 1313161554)
- AnteAaveTvlPlungeTest (`0x1a53b3...3b7223`, chain 1)
- AnteDaiCompoundcDaiAbove100MTest (`0x4f2be0...a9a355`, chain 1)
- AntePoolFactory (`0x18ab63...95de1f`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 14 of 90 unique; 76 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/72
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 90
- Raw deployments: 90
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/antefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Immunefi, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 1.4% | n/a |
| Trail of Bits | Tier 1 | 1 | 1.4% | 2022-06 |
| Zellic | Tier 2 | 1 | 1.4% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AntePoolFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226767 | `0x18ab63...95de1f` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Ante_alUSDSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47da00...e55744` | ⚠️ Unaudited |
| AnteAaveTvlPlungeTest | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226750 | `0x1a53b3...3b7223` | ⚠️ Unaudited |
| AnteAcrossOptimisticBridgeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc97834...4cba08` | ⚠️ Unaudited |
| AnteAllbridgePlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fd0c...42f7bc` | ⚠️ Unaudited |
| AnteAmbientTVLDropTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6363...576842` | ⚠️ Unaudited |
| AnteAnoncatOverpopulationTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3dcef...842da3` | ⚠️ Unaudited |
| AnteArbitrumUSDCPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40107f...fd3c65` | ⚠️ Unaudited |
| AnteAVLDropTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ece7...37b895` | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdAbracadabraArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ef9f8...a5cb49` | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdAcrossArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe18edf...926a36` | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1cd927...a3d55f` | ⚠️ Unaudited |
| AnteBscUSDCPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40107f...fd3c65` | ⚠️ Unaudited |
| AnteBusdPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020b60...4dbe41` | ⚠️ Unaudited |
| AnteComptrollerIssuanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2bb40...023087` | ⚠️ Unaudited |
| AnteDaiCompoundcDaiAbove100MTest | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226751 | `0x4f2be0...a9a355` | ⚠️ Unaudited |
| AnteDaiPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a0bc...68d41a` | ⚠️ Unaudited |
| AnteDecentralizedTrustScoreV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a53b3...3b7223` | ⚠️ Unaudited |
| AnteDeFiGirlDAODumpTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9867...786d1d` | ⚠️ Unaudited |
| AnteETH2DepositTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c008a...9f23a5` | ⚠️ Unaudited |
| AnteEthDevRugTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac2b3...8136b8` | ⚠️ Unaudited |
| AnteEthPoSMergeBefore2022Dec01Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ddf84...d8a15d` | ⚠️ Unaudited |
| AnteFeiPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7a43...5b6e19` | ⚠️ Unaudited |
| AnteGnosisTVLPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd927...a3d55f` | ⚠️ Unaudited |
| AnteLiquitySupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f1eb...d103dd` | ⚠️ Unaudited |
| AnteLlamaLendOraclePriceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2da89...22e219` | ⚠️ Unaudited |
| AnteLlamaLendOraclePriceV06Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d3da...2f1145` | ⚠️ Unaudited |
| AnteLlamaPayTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e9867...786d1d` | ⚠️ Unaudited |
| AnteLlamaPayV06Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f9be...0cec31` | ⚠️ Unaudited |
| AnteMetaStreetVaultSolvencyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2af3...794d51` | ⚠️ Unaudited |
| AnteNarutoDumpTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8625b...fcca05` | ⚠️ Unaudited |
| AnteNexusMutualCapitalPoolTVLPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026116...1edbd1` | ⚠️ Unaudited |
| AnteNFTBalanceTestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9841a0...fa974b` | ⚠️ Unaudited |
| AnteOHMv2BackingTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242ccb...4d2e77` | ⚠️ Unaudited |
| AnteOptimismBridgeAssetBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e797...5ce53d` | ⚠️ Unaudited |
| AnteOpynPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001072...d68604` | ⚠️ Unaudited |
| AnteOwlsOwnerBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x765ff0...b30fd3` | ⚠️ Unaudited |
| AntePolygonUSDCPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40107f...fd3c65` | ⚠️ Unaudited |
| AntePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x155632...8e0879` | ⚠️ Unaudited |
| AntePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05f8dd...07de03` | ⚠️ Unaudited |
| AntePoolFactoryController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d195...9821b3` | ⚠️ Unaudited |
| AntePoolTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98cefe...76d8eb` | ⚠️ Unaudited |
| AnteProofOfTransaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae392...ad9d99` | ⚠️ Unaudited |
| AnteRaiRedemptionTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2ffd...6a6733` | ⚠️ Unaudited |
| AnteRibbonBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7f25...8948f5` | ⚠️ Unaudited |
| AnteRibbonMultisigRBNTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4115cf...334b93` | ⚠️ Unaudited |
| AnteRibbonV2ThetaVaultPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82793d...67f0c3` | ⚠️ Unaudited |
| AnteRibbonV2UpdatableThetaVaultPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66dedf...bf4514` | ⚠️ Unaudited |
| AnteShiboshiNFTBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f21e...046d47` | ⚠️ Unaudited |
| AnteStableTokenDaiPegArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fae07...ab60c1` | ⚠️ Unaudited |
| AnteStableTokenTetherPegArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7c694...cd2858` | ⚠️ Unaudited |
| AnteStableTokenUsdcOptimismPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ef9f8...a5cb49` | ⚠️ Unaudited |
| AnteStableTokenUsdcPegArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7e797...5ce53d` | ⚠️ Unaudited |
| AnteSUSDPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059585...255d8f` | ⚠️ Unaudited |
| AnteTokenBalanceTestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd083a...66cee3` | ⚠️ Unaudited |
| AnteTotalSupplyPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x529dbf...8f13eb` | ⚠️ Unaudited |
| AnteTUSDPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1d86...9e089d` | ⚠️ Unaudited |
| AnteUSDCSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d2c4...907b55` | ⚠️ Unaudited |
| AnteUSDTBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8baa4...327930` | ⚠️ Unaudited |
| AnteUSDThreePoolValueTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1da07...5f2a38` | ⚠️ Unaudited |
| AnteUSDTPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e565...a4cf84` | ⚠️ Unaudited |
| AnteUSDTSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa1cd...414dcb` | ⚠️ Unaudited |
| AnteVeloTokenBalanceAbove50KTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x294268...118b4a` | ⚠️ Unaudited |
| AnteWBTCSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de65b...dab4c2` | ⚠️ Unaudited |
| AnteWETH9Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd10c...06e976` | ⚠️ Unaudited |
| AnteYFITVLPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d43cc...1d4403` | ⚠️ Unaudited |
| DMS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3eec2...abcc52` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe53d65...1930f5` | ⚠️ Unaudited |
| Tri | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2cd59e...238ac1` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x39ddcc...f4bb1d` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde0b29...697bae` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc9bdee...fe3feb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae593...aeb361` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226754 | `0x89e583...34cc48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226755 | `0xa03492...e02edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-226769 | `0x4ae593...aeb361` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-226770 | `0xe4452a...35441d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-226759 | `0x4f2be0...a9a355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6696d9...fb8b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-226760 | `0xb4fd0c...42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-226771 | `0xb4fd0c...42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x267bf4...5dd9dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-226762 | `0xb4fd0c...42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-226763 | `0xb4fd0c...42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-226764 | `0xce3860...4d56a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226765 | `0x1a53b3...3b7223` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226766 | `0xb4fd0c...42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf83a82...f5c031` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-226772 | `0x267bf4...5dd9dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-226761 | `0xb4fd0c...42f7bc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/antefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [report](https://github.com/antefinance/ante-v05-core/blob/v0.5/audit/2022-05-22%20Ante%20v0.5%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf](https://github.com/antefinance/ante-v0-core/blob/v0.5/audit/2022-06-22%20Ante%20v0.5%20Trail%20of%20Bits%20Fix%20Review.pdf) | Trail of Bits | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf](https://github.com/antefinance/ante-v0-core/blob/v0.5/audit/2022-06-22%20Ante%20v0.5%20Trail%20of%20Bits%20Security%20Assessment.pdf) | Trail of Bits | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19438] Active Bug Bounty Program — matched: The document is a bug bounty program page, not an audit report. No explicit scope table or file paths. Contract names inferred from context.
- [19439] report — matched: Scope section lists AntePool and AntePoolFactory as the programs in scope. No file paths provided.
- [19440] 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf — matched: Extracted from fix review report; scope section lists 'Ante Core Repository' with version, and findings reference AntePoolFactory, AntePool, and AnteTest contracts.
- [19441] 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf — matched: Extracted from Project Targets section and detailed findings. Audit date from cover page and final report delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Active Bug Bounty Program | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab63...95de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Active Bug Bounty Program | AntePool | unmatched — not counted | — | mentioned in scope description and rewards section | no |
| Active Bug Bounty Program | AnteTest | unmatched — not counted | — | mentioned as malicious AnteTests in scope exclusions | no |
| report | AntePool | unmatched — not counted | — | listed in scope as 'Programs AntePool, AntePoolFactory' | no |
| report | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab63...95de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab63...95de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf | AntePool | unmatched — not counted | — | listed in scope and findings | no |
| 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf | AnteTest | unmatched — not counted | — | referenced as deployed contract in AntePoolFactory and AntePool | no |
| 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab63...95de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf | AntePool | unmatched — not counted | — | listed in scope and findings | no |
| 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf | AnteTest | unmatched — not counted | — | mentioned as target in coverage and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a53b3...3b7223` | AnteAaveTvlPlungeTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f2be0...a9a355` | AnteDaiCompoundcDaiAbove100MTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
