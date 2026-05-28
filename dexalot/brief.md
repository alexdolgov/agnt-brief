# Agentic Audit Brief: Dexalot

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: active (Tier 0, 80.4% below peak)
- Generated: 2026-05-28T22:01:53.242Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-b60c
- Chains: avalanche
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $9,501,408.00
- On-chain TVL (included contracts): $4,212,791.98
- TVL by chain: Avalanche $4,212,791.98

## Project Description

Dexalot is a decentralized exchange (DEX) and bridge protocol on Avalanche, enabling users to trade assets and transfer tokens across chains. Its native token, DexalotToken, serves as the utility and governance token for the ecosystem.

### Architecture

The Dexalot Portfolio family centers on the DexalotToken, which is the sole contract identified. It likely integrates with the broader Dexalot DEX and bridge infrastructure, though those contracts are not listed in the inventory.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 91
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 85 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DexalotToken | token | avalanche | [`0x093783...47bc69`](./contracts/avalanche-43114/0x093783055f9047c2bff99c4e414501f8a147bc69/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [[Dexalot_03092021]SCAudit_Report.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_03092021%5DSCAudit_Report.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [[Dexalot_15092021]SCAudit_Report_2.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15092021%5DSCAudit_Report_2.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [[Dexalot_15112021]SCAudit_Report_3.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15112021%5DSCAudit_Report_3.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [[Dexalot_18022022]SCAudit_Report_4.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_18022022%5DSCAudit_Report_4.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [[Dexalot_23022022]SCAudit_Report_5.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_23022022%5DSCAudit_Report_5.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [README.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-docs/blob/main/docs/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [APY.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/APY.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [About.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/About.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Contact.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/Contact.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DIP.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/DIP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TradingFeeDiscounts.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/TradingFeeDiscounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RestApi.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/apiv2/RestApi.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SimpleSwap.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/apiv2/SimpleSwap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Websocket.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/apiv2/Websocket.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [roadmap.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/articles/litepaper/roadmap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BannedAccounts.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/BannedAccounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DelayedTransfers.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/DelayedTransfers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Errors.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/Errors.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Exchange.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/Exchange.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ExchangeMain.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/ExchangeMain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ExchangeSub.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/ExchangeSub.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GasStation.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/GasStation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [InventoryManager.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/InventoryManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MainnetRFQ.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/MainnetRFQ.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OrderBooks.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/OrderBooks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Portfolio.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/Portfolio.md) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [PortfolioBridge.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioBridge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioBridgeMain.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioBridgeMain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioBridgeSub.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioBridgeSub.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioMain.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioMain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioMainBnb.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioMainBnb.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioMinter.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioMinter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioSub.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioSub.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PortfolioSubHelper.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/PortfolioSubHelper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TradePairs.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/TradePairs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DefaultBridgeApp.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/bridgeApps/DefaultBridgeApp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICMApp.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/bridgeApps/ICMApp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LzApp.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/bridgeApps/LzApp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LzV2App.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/bridgeApps/LzV2App.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IBannedAccounts.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IBannedAccounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IBridgeAggregator.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IBridgeAggregator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IBridgeProvider.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IBridgeProvider.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDelayedTransfers.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IDelayedTransfers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC1271.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IERC1271.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IGasStation.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IGasStation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IInventoryManager.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IInventoryManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMainnetRFQ.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IMainnetRFQ.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [INativeMinter.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/INativeMinter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolio.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolio.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolioBridge.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolioBridge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolioBridgeSub.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolioBridgeSub.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolioMain.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolioMain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolioMinter.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolioMinter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolioSub.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolioSub.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPortfolioSubHelper.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IPortfolioSubHelper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITradePairs.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/ITradePairs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWrappedToken.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/IWrappedToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILayerZeroEndpoint.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/layerZero/ILayerZeroEndpoint.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILayerZeroReceiver.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/layerZero/ILayerZeroReceiver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILayerZeroUserApplicationConfig.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/interfaces/layerZero/ILayerZeroUserApplicationConfig.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bytes32LinkedListLibrary.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/library/Bytes32LinkedListLibrary.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [InvariantMathLibrary.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/library/InvariantMathLibrary.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RBTLibrary.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/library/RBTLibrary.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UtilsLibrary.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/library/UtilsLibrary.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Airdrop.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/Airdrop.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AlotOFT.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/AlotOFT.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AlotOFTAdapter.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/AlotOFTAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DexalotToken.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/DexalotToken.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [DexalotTokenOFT.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/DexalotTokenOFT.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DexalotTokenOFTMinter.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/DexalotTokenOFTMinter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IncentiveDistributor.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/IncentiveDistributor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockToken.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/MockToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenVestingCloneFactory.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/TokenVestingCloneFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenVestingCloneable.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/contracts/token/TokenVestingCloneable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [License.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/legal/License.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PrivacyPolicy.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/legal/PrivacyPolicy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TermsAndConditions.md](https://github.com/Dexalot/dexalot-docs/blob/main/docs/en/legal/TermsAndConditions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/index.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rest-api.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/rest-api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sdk-caching.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/sdk-caching.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sdk-security-reliability-review.md](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/sdk-security-reliability-review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [simple-swap.md (also discovered via alternate URL)](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/simple-swap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [typescript-sdk-architecture.md](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/typescript-sdk-architecture.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [typescript-sdk-error-handling.md](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/typescript-sdk-error-handling.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [typescript-sdk-reference.md](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/typescript-sdk-reference.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [typescript-sdk-user-guide.md](https://github.com/Dexalot/dexalot-sdk-typescript/blob/main/docs/typescript-sdk-user-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [python-sdk-architecture.md](https://github.com/Dexalot/dexalot-sdk-python/blob/main/docs/python-sdk-architecture.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [python-sdk-error-handling.md](https://github.com/Dexalot/dexalot-sdk-python/blob/main/docs/python-sdk-error-handling.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [python-sdk-reference.md](https://github.com/Dexalot/dexalot-sdk-python/blob/main/docs/python-sdk-reference.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [python-sdk-remediation-plan.md](https://github.com/Dexalot/dexalot-sdk-python/blob/main/docs/python-sdk-remediation-plan.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [python-sdk-user-guide.md](https://github.com/Dexalot/dexalot-sdk-python/blob/main/docs/python-sdk-user-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 88
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, low=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [7311] [Dexalot_03092021]SCAudit_Report.pdf
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf
- [7316] README.md
- [7317] APY.md
- [7318] About.md
- [7319] Contact.md
- [7320] DIP.md
- [7321] TradingFeeDiscounts.md
- [7323] RestApi.md
- [7324] SimpleSwap.md
- [7325] Websocket.md
- [7335] roadmap.md
- [7343] BannedAccounts.md
- [7344] DelayedTransfers.md
- [7345] Errors.md
- [7346] Exchange.md
- [7347] ExchangeMain.md
- [7348] ExchangeSub.md
- [7349] GasStation.md
- [7350] InventoryManager.md
- [7351] MainnetRFQ.md
- [7352] OrderBooks.md
- [7353] Portfolio.md
- [7354] PortfolioBridge.md
- [7355] PortfolioBridgeMain.md
- [7356] PortfolioBridgeSub.md
- [7357] PortfolioMain.md
- [7358] PortfolioMainBnb.md
- [7359] PortfolioMinter.md
- [7360] PortfolioSub.md
- [7361] PortfolioSubHelper.md
- [7363] TradePairs.md
- [7364] DefaultBridgeApp.md
- [7365] ICMApp.md
- [7366] LzApp.md
- [7367] LzV2App.md
- [7369] IBannedAccounts.md
- [7370] IBridgeAggregator.md
- [7371] IBridgeProvider.md
- [7372] IDelayedTransfers.md
- [7373] IERC1271.md
- [7374] IGasStation.md
- [7375] IInventoryManager.md
- [7376] IMainnetRFQ.md
- [7377] INativeMinter.md
- [7378] IPortfolio.md
- [7379] IPortfolioBridge.md
- [7380] IPortfolioBridgeSub.md
- [7381] IPortfolioMain.md
- [7382] IPortfolioMinter.md
- [7383] IPortfolioSub.md
- [7384] IPortfolioSubHelper.md
- [7385] ITradePairs.md
- [7386] IWrappedToken.md
- [7388] ILayerZeroEndpoint.md
- [7389] ILayerZeroReceiver.md
- [7390] ILayerZeroUserApplicationConfig.md
- [7391] Bytes32LinkedListLibrary.md
- [7392] InvariantMathLibrary.md
- [7393] RBTLibrary.md
- [7395] UtilsLibrary.md
- [7396] Airdrop.md
- [7397] AlotOFT.md
- [7398] AlotOFTAdapter.md
- [7400] DexalotTokenOFT.md
- [7401] DexalotTokenOFTMinter.md
- [7402] IncentiveDistributor.md
- [7403] MockToken.md
- [7405] TokenVestingCloneFactory.md
- [7406] TokenVestingCloneable.md
- [7407] License.md
- [7408] PrivacyPolicy.md
- [7409] TermsAndConditions.md
- [7488] index.md
- [7489] rest-api.md
- [7490] sdk-caching.md
- [7491] sdk-security-reliability-review.md
- [7492] simple-swap.md
- [7493] typescript-sdk-architecture.md
- [7494] typescript-sdk-error-handling.md
- [7495] typescript-sdk-reference.md
- [7496] typescript-sdk-user-guide.md
- [7499] python-sdk-architecture.md
- [7500] python-sdk-error-handling.md
- [7501] python-sdk-reference.md
- [7502] python-sdk-remediation-plan.md
- [7503] python-sdk-user-guide.md

Fork inheritance lineage and inherited audits are included when available.
