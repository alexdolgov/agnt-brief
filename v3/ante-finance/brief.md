# Agentic Audit Brief: Ante Finance

## Project Overview

- Project: Ante Finance (`ante-finance`)
- Website: [https://ante.finance](https://ante.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:27.914Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, aurora, avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 72 unique implementations (72 raw deployments)
- DeFi Llama TVL: $322,853.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 71 project-authored contract(s) across 7 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (antetest). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 72 (68 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/68 (0.0%)
- Deployed-live implementations: 68 of 72 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 72
- Raw deployments: 72
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/antefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Ante_alUSDSupplyTest | unknown | ethereum | n/a | [`0x47da00...e55744`](./contracts/ethereum-1/0x47da001de61783e656d4c1be30576615c8e55744/) | ⚠️ Unaudited |
| AnteAaveTvlPlungeTest | unknown | ethereum | n/a | [`0x1a53b3...3b7223`](./contracts/ethereum-1/0x1a53b3500216d547186c833c35f39a82053b7223/) | ⚠️ Unaudited |
| AnteAcrossOptimisticBridgeTest | unknown | ethereum | n/a | [`0xc97834...4cba08`](./contracts/ethereum-1/0xc97834aa6f51795b19daf67d60dcb823714cba08/) | ⚠️ Unaudited |
| AnteAllbridgePlungeTest | unknown | ethereum | n/a | [`0xb4fd0c...42f7bc`](./contracts/ethereum-1/0xb4fd0ce108e196d0c9844c48174d4c32cd42f7bc/) | ⚠️ Unaudited |
| AnteAmbientTVLDropTest | unknown | ethereum | n/a | [`0x9b6363...576842`](./contracts/ethereum-1/0x9b6363e5cc4878981f66cc3e0470cd4b91576842/) | ⚠️ Unaudited |
| AnteAnoncatOverpopulationTest | unknown | ethereum | n/a | [`0xc3dcef...842da3`](./contracts/ethereum-1/0xc3dcef82a8c38c20da9feb8bb1d03e9c9d842da3/) | ⚠️ Unaudited |
| AnteArbitrumUSDCPegTest | unknown | arbitrum | n/a | [`0x40107f...fd3c65`](./contracts/arbitrum-42161/0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65/) | ⚠️ Unaudited |
| AnteAVLDropTest | unknown | ethereum | n/a | [`0x86ece7...37b895`](./contracts/ethereum-1/0x86ece700aa436f438e546b5b7aa1838cf037b895/) | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdAbracadabraArbitrumTest | unknown | arbitrum | n/a | [`0x3ef9f8...a5cb49`](./contracts/arbitrum-42161/0x3ef9f8b4edc0f6fc90dccabd677db2f582a5cb49/) | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdAcrossArbitrumTest | unknown | arbitrum | n/a | [`0xe18edf...926a36`](./contracts/arbitrum-42161/0xe18edf05c1443eae617c704b7e9926c412926a36/) | ⚠️ Unaudited |
| AnteBalanceHolderPercentageThresholdTest | unknown | optimism | n/a | [`0x1cd927...a3d55f`](./contracts/optimism-10/0x1cd9276f727f631eccea749371a7df27b8a3d55f/) | ⚠️ Unaudited |
| AnteBscUSDCPegTest | unknown | bsc | n/a | [`0x40107f...fd3c65`](./contracts/bsc-56/0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65/) | ⚠️ Unaudited |
| AnteBusdPegTest | unknown | ethereum | n/a | [`0x020b60...4dbe41`](./contracts/ethereum-1/0x020b60849a4d135619857b7b115c0bf7d04dbe41/) | ⚠️ Unaudited |
| AnteComptrollerIssuanceTest | unknown | ethereum | n/a | [`0xe2bb40...023087`](./contracts/ethereum-1/0xe2bb407c33f5d5ff8de1f4b025fa73b343023087/) | ⚠️ Unaudited |
| AnteDaiCompoundcDaiAbove100MTest | unknown | ethereum | n/a | [`0x4f2be0...a9a355`](./contracts/ethereum-1/0x4f2be0244146b4408154504a481c799ba1a9a355/) | ⚠️ Unaudited |
| AnteDaiPegTest | unknown | ethereum | n/a | [`0x07a0bc...68d41a`](./contracts/ethereum-1/0x07a0bccfb0b26487667c36db69bec7be4468d41a/) | ⚠️ Unaudited |
| AnteDecentralizedTrustScoreV1 | unknown | optimism | n/a | [`0x1a53b3...3b7223`](./contracts/optimism-10/0x1a53b3500216d547186c833c35f39a82053b7223/) | ⚠️ Unaudited |
| AnteDeFiGirlDAODumpTest | unknown | ethereum | n/a | [`0x3e9867...786d1d`](./contracts/ethereum-1/0x3e98673652f7bba325016517c54e41afcc786d1d/) | ⚠️ Unaudited |
| AnteETH2DepositTest | unknown | ethereum | n/a | [`0x4c008a...9f23a5`](./contracts/ethereum-1/0x4c008a686899f9a745c394a8c42d4a4cb89f23a5/) | ⚠️ Unaudited |
| AnteEthDevRugTest | unknown | ethereum | n/a | [`0x8ac2b3...8136b8`](./contracts/ethereum-1/0x8ac2b3d79caf9185a187a9baa3bcaf1d618136b8/) | ⚠️ Unaudited |
| AnteEthPoSMergeBefore2022Dec01Test | unknown | ethereum | n/a | [`0x7ddf84...d8a15d`](./contracts/ethereum-1/0x7ddf84f21b8130b276516ae673320f9adbd8a15d/) | ⚠️ Unaudited |
| AnteFeiPegTest | unknown | ethereum | n/a | [`0xfe7a43...5b6e19`](./contracts/ethereum-1/0xfe7a43e49ff92bc4d36daf276427b5c2a35b6e19/) | ⚠️ Unaudited |
| AnteGnosisTVLPlungeTest | unknown | ethereum | n/a | [`0x1cd927...a3d55f`](./contracts/ethereum-1/0x1cd9276f727f631eccea749371a7df27b8a3d55f/) | ⚠️ Unaudited |
| AnteLiquitySupplyTest | unknown | ethereum | n/a | [`0xa0f1eb...d103dd`](./contracts/ethereum-1/0xa0f1eb38d955e2ede6b2a71c568d9d2965d103dd/) | ⚠️ Unaudited |
| AnteLlamaLendOraclePriceTest | unknown | ethereum | n/a | [`0xf2da89...22e219`](./contracts/ethereum-1/0xf2da896d5eb3643802fabb42e0cd9beabe22e219/) | ⚠️ Unaudited |
| AnteLlamaLendOraclePriceV06Test | unknown | ethereum | n/a | [`0x20d3da...2f1145`](./contracts/ethereum-1/0x20d3daf3339a5fd68bce7714582b0601202f1145/) | ⚠️ Unaudited |
| AnteLlamaPayTest | unknown | arbitrum | n/a | [`0x3e9867...786d1d`](./contracts/arbitrum-42161/0x3e98673652f7bba325016517c54e41afcc786d1d/) | ⚠️ Unaudited |
| AnteLlamaPayV06Test | unknown | ethereum | n/a | [`0xe7f9be...0cec31`](./contracts/ethereum-1/0xe7f9be71168f4a02e3471d01d0bbf12e2c0cec31/) | ⚠️ Unaudited |
| AnteMetaStreetVaultSolvencyTest | unknown | ethereum | n/a | [`0xfe2af3...794d51`](./contracts/ethereum-1/0xfe2af3ab07a08a9db276a2fee9e7d8b5d3794d51/) | ⚠️ Unaudited |
| AnteNarutoDumpTest | unknown | ethereum | n/a | [`0xd8625b...fcca05`](./contracts/ethereum-1/0xd8625bf44b4bc8cfa5f7800e00f211eb76fcca05/) | ⚠️ Unaudited |
| AnteNexusMutualCapitalPoolTVLPlungeTest | unknown | ethereum | n/a | [`0x026116...1edbd1`](./contracts/ethereum-1/0x0261169b6d3051b96fc2dead86462010581edbd1/) | ⚠️ Unaudited |
| AnteNFTBalanceTestFactory | unknown | ethereum | n/a | [`0x9841a0...fa974b`](./contracts/ethereum-1/0x9841a0b0bfbaa17c714959cdf9e91b0a7bfa974b/) | ⚠️ Unaudited |
| AnteOHMv2BackingTest | unknown | ethereum | n/a | [`0x242ccb...4d2e77`](./contracts/ethereum-1/0x242ccb1529d22c2af7d550e6e5913990f34d2e77/) | ⚠️ Unaudited |
| AnteOptimismBridgeAssetBalanceTest | unknown | ethereum | n/a | [`0xf7e797...5ce53d`](./contracts/ethereum-1/0xf7e7976c00600bd77da78bfa3bf2912df05ce53d/) | ⚠️ Unaudited |
| AnteOpynPlungeTest | unknown | ethereum | n/a | [`0x001072...d68604`](./contracts/ethereum-1/0x001072a7d13ead3bb4b87abe76f577a09fd68604/) | ⚠️ Unaudited |
| AnteOwlsOwnerBalanceTest | unknown | ethereum | n/a | [`0x765ff0...b30fd3`](./contracts/ethereum-1/0x765ff0a3a2ed2fef3ebb7e1e9f597355deb30fd3/) | ⚠️ Unaudited |
| AntePolygonUSDCPegTest | unknown | polygon | n/a | [`0x40107f...fd3c65`](./contracts/polygon-137/0x40107f542c6d7d9d9c9f7c46fb8874ef59fd3c65/) | ⚠️ Unaudited |
| AntePool | unknown | ethereum | n/a | [`0x155632...8e0879`](./contracts/ethereum-1/0x1556321c81277be74d08a6c258eaac4d5a8e0879/) | ⚠️ Unaudited |
| AntePool | unknown | arbitrum | n/a | [`0x05f8dd...07de03`](./contracts/arbitrum-42161/0x05f8dde029d2c7d2f05d622449507718df07de03/) | ⚠️ Unaudited |
| AntePoolFactory | unknown | avalanche | n/a | [`0x18ab63...95de1f`](./contracts/avalanche-43114/0x18ab6357f673696375018f006b86fe44f195de1f/) | ⚠️ Unaudited |
| AntePoolFactoryController | unknown | arbitrum | n/a | [`0x44d195...9821b3`](./contracts/arbitrum-42161/0x44d195661277f25597fe6b6d9f910d5bbe9821b3/) | ⚠️ Unaudited |
| AntePoolTest | unknown | ethereum | n/a | [`0x98cefe...76d8eb`](./contracts/ethereum-1/0x98cefea055b30f0149c6f77a12f4ea42dd76d8eb/) | ⚠️ Unaudited |
| AnteProofOfTransaction | unknown | ethereum | n/a | [`0x2ae392...ad9d99`](./contracts/ethereum-1/0x2ae392dc9af24ca5fd8e5d5912190f0fc4ad9d99/) | ⚠️ Unaudited |
| AnteRaiRedemptionTest | unknown | ethereum | n/a | [`0xad2ffd...6a6733`](./contracts/ethereum-1/0xad2ffd42c8658d54ea497d06439d03193d6a6733/) | ⚠️ Unaudited |
| AnteRibbonBalanceTest | unknown | ethereum | n/a | [`0x2c7f25...8948f5`](./contracts/ethereum-1/0x2c7f254f149ac99130bb480fb050df12308948f5/) | ⚠️ Unaudited |
| AnteRibbonMultisigRBNTest | unknown | ethereum | n/a | [`0x4115cf...334b93`](./contracts/ethereum-1/0x4115cfaf3c0fd46b0c77bdc22b86aa4f5a334b93/) | ⚠️ Unaudited |
| AnteRibbonV2ThetaVaultPlungeTest | unknown | ethereum | n/a | [`0x82793d...67f0c3`](./contracts/ethereum-1/0x82793d0af8cb6a12b2fdacfe02b718460467f0c3/) | ⚠️ Unaudited |
| AnteRibbonV2UpdatableThetaVaultPlungeTest | unknown | ethereum | n/a | [`0x66dedf...bf4514`](./contracts/ethereum-1/0x66dedffd7150da64fd0e2962069234213ebf4514/) | ⚠️ Unaudited |
| AnteShiboshiNFTBalanceTest | unknown | ethereum | n/a | [`0x65f21e...046d47`](./contracts/ethereum-1/0x65f21e0ea34146d7370d43dedaedaef7a8046d47/) | ⚠️ Unaudited |
| AnteStableTokenDaiPegArbitrumTest | unknown | arbitrum | n/a | [`0x6fae07...ab60c1`](./contracts/arbitrum-42161/0x6fae0767026573e3a5f0f72fb386e7ecabab60c1/) | ⚠️ Unaudited |
| AnteStableTokenTetherPegArbitrumTest | unknown | arbitrum | n/a | [`0xa7c694...cd2858`](./contracts/arbitrum-42161/0xa7c69437000fd0fe13929a71d5404c3bb9cd2858/) | ⚠️ Unaudited |
| AnteStableTokenUsdcOptimismPegTest | unknown | optimism | n/a | [`0x3ef9f8...a5cb49`](./contracts/optimism-10/0x3ef9f8b4edc0f6fc90dccabd677db2f582a5cb49/) | ⚠️ Unaudited |
| AnteStableTokenUsdcPegArbitrumTest | unknown | arbitrum | n/a | [`0xf7e797...5ce53d`](./contracts/arbitrum-42161/0xf7e7976c00600bd77da78bfa3bf2912df05ce53d/) | ⚠️ Unaudited |
| AnteSUSDPegTest | unknown | ethereum | n/a | [`0x059585...255d8f`](./contracts/ethereum-1/0x059585df0cef2c3cf165687dc942338d0f255d8f/) | ⚠️ Unaudited |
| AnteTokenBalanceTestFactory | unknown | ethereum | n/a | [`0xfd083a...66cee3`](./contracts/ethereum-1/0xfd083a2fa317fe57df2b8f325d3d4b5a6366cee3/) | ⚠️ Unaudited |
| AnteTotalSupplyPlungeTest | unknown | optimism | n/a | [`0x529dbf...8f13eb`](./contracts/optimism-10/0x529dbf60ddc8b256c2bf25190de1e06d688f13eb/) | ⚠️ Unaudited |
| AnteTUSDPegTest | unknown | ethereum | n/a | [`0x9f1d86...9e089d`](./contracts/ethereum-1/0x9f1d86ca850567b80530da9a97d3cef4b69e089d/) | ⚠️ Unaudited |
| AnteUSDCSupplyTest | unknown | ethereum | n/a | [`0xe8d2c4...907b55`](./contracts/ethereum-1/0xe8d2c49d7a0957b77ad50126a438ef2a1d907b55/) | ⚠️ Unaudited |
| AnteUSDTBalanceTest | unknown | ethereum | n/a | [`0xe8baa4...327930`](./contracts/ethereum-1/0xe8baa48589abb99592a166ad87bbea15a4327930/) | ⚠️ Unaudited |
| AnteUSDThreePoolValueTest | unknown | ethereum | n/a | [`0xb1da07...5f2a38`](./contracts/ethereum-1/0xb1da073893a3faeeb0ff603686a1a6c59d5f2a38/) | ⚠️ Unaudited |
| AnteUSDTPegTest | unknown | ethereum | n/a | [`0xb7e565...a4cf84`](./contracts/ethereum-1/0xb7e565a9d96e4dc067f955beddebabc5f7a4cf84/) | ⚠️ Unaudited |
| AnteUSDTSupplyTest | unknown | ethereum | n/a | [`0x8fa1cd...414dcb`](./contracts/ethereum-1/0x8fa1cdb771da17813a8b122f9a99700918414dcb/) | ⚠️ Unaudited |
| AnteVeloTokenBalanceAbove50KTest | unknown | optimism | n/a | [`0x294268...118b4a`](./contracts/optimism-10/0x294268b71b70d9a9291594c058896f6a9f118b4a/) | ⚠️ Unaudited |
| AnteWBTCSupplyTest | unknown | ethereum | n/a | [`0x3de65b...dab4c2`](./contracts/ethereum-1/0x3de65b8d9bdaae2f5432d2de79073d260cdab4c2/) | ⚠️ Unaudited |
| AnteWETH9Test | unknown | ethereum | n/a | [`0x2dd10c...06e976`](./contracts/ethereum-1/0x2dd10c4038a6f5637aed5e66f54f5e4cb606e976/) | ⚠️ Unaudited |
| AnteYFITVLPlungeTest | unknown | ethereum | n/a | [`0x1d43cc...1d4403`](./contracts/ethereum-1/0x1d43cc063de7022eaaaf18e06a3bce33231d4403/) | ⚠️ Unaudited |
| DMS | unknown | ethereum | n/a | [`0xb3eec2...abcc52`](./contracts/ethereum-1/0xb3eec2e74f6bef3fd7362459eb39bd75c5abcc52/) | ⚠️ Unaudited |
| MasterChef | unknown | aurora | n/a | [`0xe53d65...1930f5`](./contracts/aurora-1313161554/0xe53d6548c327e3ccde5b3cacaa6fcd13301930f5/) | ⚠️ Unaudited |
| Tri | unknown | aurora | n/a | [`0x2cd59e...238ac1`](./contracts/aurora-1313161554/0x2cd59ea668afda4e712369042150f2fa00238ac1/) | ⚠️ Unaudited |
| Vester | unknown | aurora | n/a | [`0x39ddcc...f4bb1d`](./contracts/aurora-1313161554/0x39ddcccb5ce7cd8fcd0d3bbd6e9f7999d8f4bb1d/) | ⚠️ Unaudited |
| Wallet | unknown | ethereum | n/a | [`0xde0b29...697bae`](./contracts/ethereum-1/0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae/) | ⚠️ Unaudited |
| WETH9 | unknown | aurora | n/a | [`0xc9bdee...fe3feb`](./contracts/aurora-1313161554/0xc9bdeed33cd01541e1eed10f90519d2c06fe3feb/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/antefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [report](https://github.com/antefinance/ante-v05-core/blob/v0.5/audit/2022-05-22%20Ante%20v0.5%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf](https://github.com/antefinance/ante-v0-core/blob/v0.5/audit/2022-06-22%20Ante%20v0.5%20Trail%20of%20Bits%20Fix%20Review.pdf) | Trail of Bits | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf](https://github.com/antefinance/ante-v0-core/blob/v0.5/audit/2022-06-22%20Ante%20v0.5%20Trail%20of%20Bits%20Security%20Assessment.pdf) | Trail of Bits | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19439] report
- [19440] 2022-06-22 Ante v0.5 Trail of Bits Fix Review.pdf
- [19441] 2022-06-22 Ante v0.5 Trail of Bits Security Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
