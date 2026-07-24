# Agentic Audit Brief: Ante Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ante Finance (`ante-finance`)
- Website: [https://ante.finance](https://ante.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, bsc, ethereum, fantom, goerli, optimism, polygon, polygon-mumbai, zksync-era
- Contract surface: 167 unique implementations (168 raw deployments)
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

- UnnamedContract (`0x89e583a67b5fa1b39b8ce7e77654071c3a34cc48`, chain 1)
- UnnamedContract (`0xa03492a9a663f04c51684a3c172fc9c4d7e02edc`, chain 1)
- UnnamedContract (`0x4f2be0244146b4408154504a481c799ba1a9a355`, chain 10)
- UnnamedContract (`0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc`, chain 10)
- UnnamedContract (`0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc`, chain 56)
- UnnamedContract (`0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc`, chain 137)
- UnnamedContract (`0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc`, chain 250)
- UnnamedContract (`0xce38604c2cf369e9cc67df75e2bd5626184d56a0`, chain 324)
- UnnamedContract (`0x1a53b3500216d547186c833c35f39a82053b7223`, chain 42161)
- UnnamedContract (`0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc`, chain 42161)
- UnnamedContract (`0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc`, chain 1313161554)
- AnteAaveTvlPlungeTest (`0x1a53b3500216d547186c833c35f39a82053b7223`, chain 1)
- AnteDaiCompoundcDaiAbove100MTest (`0x4f2be0244146b4408154504a481c799ba1a9a355`, chain 1)
- AntePoolFactory (`0x18ab6357f673696375018f006b86fe44f195de1f`, chain 43114)

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
- Outside the address book: 150 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 14 of 167 unique; 153 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/72
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 95
- Unique implementations: 167
- Raw deployments: 168
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
| AntePoolFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226767 | `0x18ab6357f673696375018f006b86fe44f195de1f` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Ante_alUSDSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47da001de61783e656d4c1be30576615c8e55744` | ⚠️ Unaudited |
| AnteAaveTvlPlungeTest | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226750 | `0x1a53b3500216d547186c833c35f39a82053b7223` | ⚠️ Unaudited |
| AnteAcrossOptimisticBridgeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc97834aa6f51795b19daf67d60dcb823714cba08` | ⚠️ Unaudited |
| AnteAllbridgePlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ⚠️ Unaudited |
| AnteAmbientTVLDropTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6363e5cc4878981f66cc3e0470cd4b91576842` | ⚠️ Unaudited |
| AnteAnoncatOverpopulationTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | ⚠️ Unaudited |
| AnteArbitrumUSDCPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | ⚠️ Unaudited |
| AnteAVLDropTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ece700aa436f438e546b5b7aa1838cf037b895` | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdAbracadabraArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ef9f8b4edc0f6fc90dccabd677db2f582a5cb49` | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdAcrossArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe18edf05c1443eae617c704b7e9926c412926a36` | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1cd9276f727f631eccea749371a7df27b8a3d55f` | ⚠️ Unaudited |
| AnteBscUSDCPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | ⚠️ Unaudited |
| AnteBusdPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020b60849a4d135619857b7b115c0bf7d04dbe41` | ⚠️ Unaudited |
| AnteComptrollerIssuanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2bb407c33f5d5ff8de1f4b025fa73b343023087` | ⚠️ Unaudited |
| AnteDaiCompoundcDaiAbove100MTest | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226751 | `0x4f2be0244146b4408154504a481c799ba1a9a355` | ⚠️ Unaudited |
| AnteDaiPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a0bccfb0b26487667c36db69bec7be4468d41a` | ⚠️ Unaudited |
| AnteDecentralizedTrustScoreV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a53b3500216d547186c833c35f39a82053b7223` | ⚠️ Unaudited |
| AnteDeFiGirlDAODumpTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e98673652f7bba325016517c54e41afcc786d1d` | ⚠️ Unaudited |
| AnteETH2DepositTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c008a686899f9a745c394a8c42d4a4cb89f23a5` | ⚠️ Unaudited |
| AnteEthDevRugTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac2b3d79caf9185a187a9baa3bcaf1d618136b8` | ⚠️ Unaudited |
| AnteEthPoSMergeBefore2022Dec01Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ddf84f21b8130b276516ae673320f9adbd8a15d` | ⚠️ Unaudited |
| AnteFeiPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7a43e49ff92bc4d36daf276427b5c2a35b6e19` | ⚠️ Unaudited |
| AnteGnosisTVLPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd9276f727f631eccea749371a7df27b8a3d55f` | ⚠️ Unaudited |
| AnteLiquitySupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f1eb38d955e2ede6b2a71c568d9d2965d103dd` | ⚠️ Unaudited |
| AnteLlamaLendOraclePriceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2da896d5eb3643802fabb42e0cd9beabe22e219` | ⚠️ Unaudited |
| AnteLlamaLendOraclePriceV06Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d3daf3339a5fd68bce7714582b0601202f1145` | ⚠️ Unaudited |
| AnteLlamaPayTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e98673652f7bba325016517c54e41afcc786d1d` | ⚠️ Unaudited |
| AnteLlamaPayV06Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f9be71168f4a02e3471d01d0bbf12e2c0cec31` | ⚠️ Unaudited |
| AnteMetaStreetVaultSolvencyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2af3ab07a08a9db276a2fee9e7d8b5d3794d51` | ⚠️ Unaudited |
| AnteNarutoDumpTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8625bf44b4bc8cfa5f7800e00f211eb76fcca05` | ⚠️ Unaudited |
| AnteNexusMutualCapitalPoolTVLPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0261169b6d3051b96fc2dead86462010581edbd1` | ⚠️ Unaudited |
| AnteNFTBalanceTestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9841a0b0bfbaa17c714959cdf9e91b0a7bfa974b` | ⚠️ Unaudited |
| AnteOHMv2BackingTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242ccb1529d22c2af7d550e6e5913990f34d2e77` | ⚠️ Unaudited |
| AnteOptimismBridgeAssetBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e7976c00600bd77da78bfa3bf2912df05ce53d` | ⚠️ Unaudited |
| AnteOpynPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001072a7d13ead3bb4b87abe76f577a09fd68604` | ⚠️ Unaudited |
| AnteOwlsOwnerBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x765ff0a3a2ed2fef3ebb7e1e9f597355deb30fd3` | ⚠️ Unaudited |
| AntePolygonUSDCPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | ⚠️ Unaudited |
| AntePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1556321c81277be74d08a6c258eaac4d5a8e0879`; ethereum `0x70088dbb0c840cc988c9504aa1aeeaf4c17ed13c` | ⚠️ Unaudited |
| AntePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05f8dde029d2c7d2f05d622449507718df07de03` | ⚠️ Unaudited |
| AntePoolFactoryController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d195661277f25597fe6b6d9f910d5bbe9821b3` | ⚠️ Unaudited |
| AntePoolTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98cefea055b30f0149c6f77a12f4ea42dd76d8eb` | ⚠️ Unaudited |
| AnteProofOfTransaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae392dc9af24ca5fd8e5d5912190f0fc4ad9d99` | ⚠️ Unaudited |
| AnteRaiRedemptionTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2ffd42c8658d54ea497d06439d03193d6a6733` | ⚠️ Unaudited |
| AnteRibbonBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7f254f149ac99130bb480fb050df12308948f5` | ⚠️ Unaudited |
| AnteRibbonMultisigRBNTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4115cfaf3c0fd46b0c77bdc22b86aa4f5a334b93` | ⚠️ Unaudited |
| AnteRibbonV2ThetaVaultPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82793d0af8cb6a12b2fdacfe02b718460467f0c3` | ⚠️ Unaudited |
| AnteRibbonV2UpdatableThetaVaultPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66dedffd7150da64fd0e2962069234213ebf4514` | ⚠️ Unaudited |
| AnteShiboshiNFTBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f21e0ea34146d7370d43dedaedaef7a8046d47` | ⚠️ Unaudited |
| AnteStableTokenDaiPegArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fae0767026573e3a5f0f72fb386e7ecabab60c1` | ⚠️ Unaudited |
| AnteStableTokenTetherPegArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7c69437000fd0fe13929a71d5404c3bb9cd2858` | ⚠️ Unaudited |
| AnteStableTokenUsdcOptimismPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ef9f8b4edc0f6fc90dccabd677db2f582a5cb49` | ⚠️ Unaudited |
| AnteStableTokenUsdcPegArbitrumTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7e7976c00600bd77da78bfa3bf2912df05ce53d` | ⚠️ Unaudited |
| AnteSUSDPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059585df0cef2c3cf165687dc942338d0f255d8f` | ⚠️ Unaudited |
| AnteTokenBalanceTestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd083a2fa317fe57df2b8f325d3d4b5a6366cee3` | ⚠️ Unaudited |
| AnteTotalSupplyPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x529dbf60ddc8b256c2bf25190de1e06d688f13eb` | ⚠️ Unaudited |
| AnteTUSDPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1d86ca850567b80530da9a97d3cef4b69e089d` | ⚠️ Unaudited |
| AnteUSDCSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d2c49d7a0957b77ad50126a438ef2a1d907b55` | ⚠️ Unaudited |
| AnteUSDTBalanceTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8baa48589abb99592a166ad87bbea15a4327930` | ⚠️ Unaudited |
| AnteUSDThreePoolValueTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1da073893a3faeeb0ff603686a1a6c59d5f2a38` | ⚠️ Unaudited |
| AnteUSDTPegTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e565a9d96e4dc067f955beddebabc5f7a4cf84` | ⚠️ Unaudited |
| AnteUSDTSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa1cdb771da17813a8b122f9a99700918414dcb` | ⚠️ Unaudited |
| AnteVeloTokenBalanceAbove50KTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x294268b71b70d9a9291594c058896f6a9f118b4a` | ⚠️ Unaudited |
| AnteWBTCSupplyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de65b8d9bdaae2f5432d2de79073d260cdab4c2` | ⚠️ Unaudited |
| AnteWETH9Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd10c4038a6f5637aed5e66f54f5e4cb606e976` | ⚠️ Unaudited |
| AnteYFITVLPlungeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d43cc063de7022eaaaf18e06a3bce33231d4403` | ⚠️ Unaudited |
| DMS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3eec2e74f6bef3fd7362459eb39bd75c5abcc52` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe53d6548c327e3ccde5b3cacaa6fcd13301930f5` | ⚠️ Unaudited |
| Tri | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2cd59ea668afda4e712369042150f2fa00238ac1` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x39ddcccb5ce7cd8fcd0d3bbd6e9f7999d8f4bb1d` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc9bdeed33cd01541e1eed10f90519d2c06fe3feb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (95)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122220a60afa4256b3c5c734a499eca4ae8849f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eea3e8186d5a2572e537356e28ab1fe28c47756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d195661277f25597fe6b6d9f910d5bbe9821b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae593b77234db644a6d6443c89a447140aeb361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529dbf60ddc8b256c2bf25190de1e06d688f13eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62ca84def073e6788b4f68e387617e50c8d36ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fae0767026573e3a5f0f72fb386e7ecabab60c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8122ac9f8f4e982bbf37dc47cdf98f0418c01274` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226754 | `0x89e583a67b5fa1b39b8ce7e77654071c3a34cc48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c549b812d3a906947b3dc3d88bdec750f2d8f27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226755 | `0xa03492a9a663f04c51684a3c172fc9c4d7e02edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb04c1f42d54b609c07f92621d9986e4c65e422fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-226769 | `0x4ae593b77234db644a6d6443c89a447140aeb361` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-226770 | `0xe4452a09eddc633f9f51d8c0a01bfda18f35441d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d43cc063de7022eaaaf18e06a3bce33231d4403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e98673652f7bba325016517c54e41afcc786d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x44d195661277f25597fe6b6d9f910d5bbe9821b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-226759 | `0x4f2be0244146b4408154504a481c799ba1a9a355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6696d9dfe0a28e5bc9d47c32ddea0295fdfb8b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb04c1f42d54b609c07f92621d9986e4c65e422fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-226760 | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb7e565a9d96e4dc067f955beddebabc5f7a4cf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe18edf05c1443eae617c704b7e9926c412926a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe2af3ab07a08a9db276a2fee9e7d8b5d3794d51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-226771 | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x267bf4a003caf380d94766492bf7fec82a5dd9dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-226762 | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-226763 | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-226764 | `0xce38604c2cf369e9cc67df75e2bd5626184d56a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226765 | `0x1a53b3500216d547186c833c35f39a82053b7223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff5d6e7b431a71aee2857aaf31e4f40dd5e5b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x529dbf60ddc8b256c2bf25190de1e06d688f13eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226766 | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf83a823a57b2c67a71a91bfde2ef6ca4c0f5c031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe2af3ab07a08a9db276a2fee9e7d8b5d3794d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c008a686899f9a745c394a8c42d4a4cb89f23a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x528fdf82387652a2a461265f049ae29d3a8ed55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa03492a9a663f04c51684a3c172fc9c4d7e02edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-226772 | `0x267bf4a003caf380d94766492bf7fec82a5dd9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0029050f71704940d77cfe71d0f1fb868deefa03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x02fc4269f5b4b88378709346e4033736118731d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x07383dea8ee803f79a9e7f8a1afebbe6d3eb425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x08800d125088cfcd9b72432383397baf680f7c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x10475e37cf1d006b56a4e4739bcb478361564d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x13e7a001ec72ab30d66e2f386f677e25dcff5f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1b6a3d5b5dcdf7a37cfe35cebc0c4bd28ea7e946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1d22db96e9a118ccfc631a61114f6d12bd266f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x264e4b3f80f62442c812f9d08f7f8b77b2c70fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x26ec2afbdfdfb972f106100a3deae5887353d9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2cf2bd9760bec3e775d46fe7ac0d4d02c400699b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3817533c7fd5d1c169f8a99ffa7c3654f931d495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3f62266a43a2ee86d488c9e70aae2017ce582693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4135b66b138f281e0173550c3fb9a706acc755ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x44fffc1cfd8ddb4fd6c2369aa4ffefa9e0a6bea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4575fa4ea01a7f739f3f7ced3a3a7fba412c5de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x468e79b077e4bf01abf5ad5e619668e62751ae8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4723de15a266cadaf9b909d905dcd4d5a553bae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x474b825a605c45836ac50398473059d4c4c6d3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x49eb1f160e167aa7ba96bdd88b6c1f2ffda5212a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4e0e33b5542e4e316bd50f0909a81038f7926ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4fdd3c5b053ce32d8b4145db43bbec3ecd43b425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x518b8e8338864f229f762aaffc0a9f0c4722900b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x53980a05e8539177e24c0976ce17d1e06d6e9f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5910ce65a985dd875680a13d68985c4d06aa52a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5946722b24cc374b3d8ddc1efc39125716ce25e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x60913758635b54e6c9685f92201a5704eee74748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x651bb26a48c3ab8c5171d409f1490e999a77930a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x657a2cf442249f74806e79e5be662fd3933a9b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6724537969fee636991664cf11d4d15960a6abab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6c1db069dc048c4c534391ca57c6b04ae04a1958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x72ff47b0df5f8ebd93e4fa4600b89db693066aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7b32eeb04239c379cbc4e95ed164ed4a66571aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7ba0189ddb75e6d0652d41aab7e197845128d30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7f9655f861d9f87416c4a91263705f31c1544633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8699991926a2f1209eea4a19535bc0dc561ca901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x874805b1d52699d53a176c948239835f5b4bca92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x880f09818d4fa9d2a9fa06e7f780ef111dd118ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9d4991a7bc4544af6f17af451de943872962bdf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9e5c2dc717ccac1eb0e8d267e43538e03531503d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa5ec0a57ecf3b038d0b23904483389dc972a4afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa677c626188ddc36baa14b28455c66fb948e51b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb3452cd0801c43d4b55dcd0906cacb6251869326` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-226761 | `0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbeba8ee2c2127bc1b9c0b705f33256e514a31ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc8ee3f39f00f9ba9a0ec5181782ccecf82fcd960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xcbb3be4654a08a95305dbc83ca614917692dbbce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xcf6b6f1e38f7b7363da849eb4fa7a0b7abf76541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd7a8cc876b65570b149773678bd95fc6bb60779f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xda192501a0cf98e2824a28caf5a753123480c69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xff9224588c020b663cd498d73de7e3c7f40d32fd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 78
- Live contracts: 0
- Unknown liveness contracts: 78
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=78

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x122220a60afa4256b3c5c734a499eca4ae8849f8` | non_address_book | unknown | unknown | unverified | n/a | `0xa473c1ffc0b835b473aea512bc0265d9e86302ef` |
| unverified unclassified | UnnamedContract<br>`0x1eea3e8186d5a2572e537356e28ab1fe28c47756` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x44d195661277f25597fe6b6d9f910d5bbe9821b3` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x529dbf60ddc8b256c2bf25190de1e06d688f13eb` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x62ca84def073e6788b4f68e387617e50c8d36ebf` | non_address_book | unknown | unknown | unverified | n/a | `0xa473c1ffc0b835b473aea512bc0265d9e86302ef` |
| unverified unclassified | UnnamedContract<br>`0x6fae0767026573e3a5f0f72fb386e7ecabab60c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x70088dbb0c840cc988c9504aa1aeeaf4c17ed13c` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x8122ac9f8f4e982bbf37dc47cdf98f0418c01274` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x8c549b812d3a906947b3dc3d88bdec750f2d8f27` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xb04c1f42d54b609c07f92621d9986e4c65e422fb` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x1d43cc063de7022eaaaf18e06a3bce33231d4403` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x3e98673652f7bba325016517c54e41afcc786d1d` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x44d195661277f25597fe6b6d9f910d5bbe9821b3` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xb04c1f42d54b609c07f92621d9986e4c65e422fb` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xb7e565a9d96e4dc067f955beddebabc5f7a4cf84` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xe18edf05c1443eae617c704b7e9926c412926a36` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xfe2af3ab07a08a9db276a2fee9e7d8b5d3794d51` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x2ff5d6e7b431a71aee2857aaf31e4f40dd5e5b57` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x529dbf60ddc8b256c2bf25190de1e06d688f13eb` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0xfe2af3ab07a08a9db276a2fee9e7d8b5d3794d51` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x4c008a686899f9a745c394a8c42d4a4cb89f23a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa473c1ffc0b835b473aea512bc0265d9e86302ef` |
| unverified unclassified | UnnamedContract<br>`0x528fdf82387652a2a461265f049ae29d3a8ed55f` | non_address_book | unknown | unknown | unverified | n/a | `0xa473c1ffc0b835b473aea512bc0265d9e86302ef` |
| unverified unclassified | UnnamedContract<br>`0xa03492a9a663f04c51684a3c172fc9c4d7e02edc` | non_address_book | unknown | unknown | unverified | n/a | `0xa473c1ffc0b835b473aea512bc0265d9e86302ef` |
| unverified unclassified | UnnamedContract<br>`0x0029050f71704940d77cfe71d0f1fb868deefa03` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x02fc4269f5b4b88378709346e4033736118731d6` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x07383dea8ee803f79a9e7f8a1afebbe6d3eb425b` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x08800d125088cfcd9b72432383397baf680f7c3b` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x10475e37cf1d006b56a4e4739bcb478361564d22` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x13e7a001ec72ab30d66e2f386f677e25dcff5f59` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x1b6a3d5b5dcdf7a37cfe35cebc0c4bd28ea7e946` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x1d22db96e9a118ccfc631a61114f6d12bd266f43` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x264e4b3f80f62442c812f9d08f7f8b77b2c70fd4` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x26ec2afbdfdfb972f106100a3deae5887353d9b9` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x2cf2bd9760bec3e775d46fe7ac0d4d02c400699b` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x3817533c7fd5d1c169f8a99ffa7c3654f931d495` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x3f62266a43a2ee86d488c9e70aae2017ce582693` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65` | non_address_book | unknown | unknown | unverified | n/a | `0x7df0808cfd89ea3995af99cb1374d2907c2399b6` |
| unverified unclassified | UnnamedContract<br>`0x4135b66b138f281e0173550c3fb9a706acc755ed` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x44fffc1cfd8ddb4fd6c2369aa4ffefa9e0a6bea3` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x4575fa4ea01a7f739f3f7ced3a3a7fba412c5de1` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x468e79b077e4bf01abf5ad5e619668e62751ae8b` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x4723de15a266cadaf9b909d905dcd4d5a553bae4` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x474b825a605c45836ac50398473059d4c4c6d3db` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x49eb1f160e167aa7ba96bdd88b6c1f2ffda5212a` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x4e0e33b5542e4e316bd50f0909a81038f7926ed6` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x4fdd3c5b053ce32d8b4145db43bbec3ecd43b425` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x518b8e8338864f229f762aaffc0a9f0c4722900b` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x53980a05e8539177e24c0976ce17d1e06d6e9f8a` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x5910ce65a985dd875680a13d68985c4d06aa52a9` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x5946722b24cc374b3d8ddc1efc39125716ce25e8` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x60913758635b54e6c9685f92201a5704eee74748` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x651bb26a48c3ab8c5171d409f1490e999a77930a` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x657a2cf442249f74806e79e5be662fd3933a9b5c` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x6724537969fee636991664cf11d4d15960a6abab` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x6c1db069dc048c4c534391ca57c6b04ae04a1958` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x72ff47b0df5f8ebd93e4fa4600b89db693066aa4` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x7b32eeb04239c379cbc4e95ed164ed4a66571aa6` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x7ba0189ddb75e6d0652d41aab7e197845128d30d` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x7f9655f861d9f87416c4a91263705f31c1544633` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x8699991926a2f1209eea4a19535bc0dc561ca901` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x874805b1d52699d53a176c948239835f5b4bca92` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x880f09818d4fa9d2a9fa06e7f780ef111dd118ae` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x9d4991a7bc4544af6f17af451de943872962bdf0` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0x9e5c2dc717ccac1eb0e8d267e43538e03531503d` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xa5ec0a57ecf3b038d0b23904483389dc972a4afc` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xa677c626188ddc36baa14b28455c66fb948e51b2` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xb3452cd0801c43d4b55dcd0906cacb6251869326` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xbeba8ee2c2127bc1b9c0b705f33256e514a31ca4` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xc8ee3f39f00f9ba9a0ec5181782ccecf82fcd960` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xcbb3be4654a08a95305dbc83ca614917692dbbce` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xcf6b6f1e38f7b7363da849eb4fa7a0b7abf76541` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xd7a8cc876b65570b149773678bd95fc6bb60779f` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xda192501a0cf98e2824a28caf5a753123480c69c` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |
| unverified unclassified | UnnamedContract<br>`0xff9224588c020b663cd498d73de7e3c7f40d32fd` | non_address_book | unknown | unknown | unverified | n/a | `0x77a92ff9c567e0662ddf33d1c4a23fa03eaf5d27` |

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
| Active Bug Bounty Program | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab6357f673696375018f006b86fe44f195de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Active Bug Bounty Program | AntePool | unmatched — not counted | — | mentioned in scope description and rewards section | no |
| Active Bug Bounty Program | AnteTest | unmatched — not counted | — | mentioned as malicious AnteTests in scope exclusions | no |
| report | AntePool | unmatched — not counted | — | listed in scope as 'Programs AntePool, AntePoolFactory' | no |
| report | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab6357f673696375018f006b86fe44f195de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab6357f673696375018f006b86fe44f195de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf | AntePool | unmatched — not counted | — | listed in scope and findings | no |
| 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf | AnteTest | unmatched — not counted | — | referenced as deployed contract in AntePoolFactory and AntePool | no |
| 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf | AntePoolFactory | own contract | AntePoolFactory (selected) `0x18ab6357f673696375018f006b86fe44f195de1f` — deployed 2022-06-15 00:25:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf | AntePool | unmatched — not counted | — | listed in scope and findings | no |
| 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf | AnteTest | unmatched — not counted | — | mentioned as target in coverage and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a53b3500216d547186c833c35f39a82053b7223` | AnteAaveTvlPlungeTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f2be0244146b4408154504a481c799ba1a9a355` | AnteDaiCompoundcDaiAbove100MTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 95 |

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
