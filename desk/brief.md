# Agentic Audit Brief: DESK

## Project Overview

- Project: DESK (`desk`)
- Website: [https://desk.exchange/](https://desk.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.032Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 94 unique implementations (94 raw deployments)
- DeFi Llama TVL: $246,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Interface. Structurally: 80 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 11 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, automationcompatible). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 94; live-surface contracts included: 94 (94 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 37/89 (41.6%)
- Deployed-live implementations: 94 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 37/94
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 94
- Raw deployments: 94
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 37 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 39.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 35 | 37.2% | 2023-11 |
| WatchPug | Tier 2 | 21 | 22.3% | 2023-06 |
| unknown | Tier 2 | 11 | 11.7% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveFeeCalculator | unknown | arbitrum | n/a | [`0x939a2e2331ef6d2e605b7f23b5e431b0d6cb4415`](./contracts/arbitrum-42161/0x939a2e2331ef6d2e605b7f23b5e431b0d6cb4415/) | ✅ Audited |
| BotHandler | unknown | arbitrum | n/a | [`0x42b701290fc04e8fa69431ce377b95beabc335c8`](./contracts/arbitrum-42161/0x42b701290fc04e8fa69431ce377b95beabc335c8/) | ✅ Audited |
| Calculator | unknown | arbitrum | n/a | [`0x0fde910552977041dc8c7ef652b5a07b40b9e006`](./contracts/arbitrum-42161/0x0fde910552977041dc8c7ef652b5a07b40b9e006/) | ✅ Audited |
| ConfigStorage | unknown | arbitrum | n/a | [`0x43cbd00a81aea737536a9c9779edf0617d01f075`](./contracts/arbitrum-42161/0x43cbd00a81aea737536a9c9779edf0617d01f075/) | ✅ Audited |
| ConvertedGlpStrategy | unknown | arbitrum | n/a | [`0x642dccee2c90986a7472510a6a4e1f4126a76432`](./contracts/arbitrum-42161/0x642dccee2c90986a7472510a6a4e1f4126a76432/) | ✅ Audited |
| CrossMarginHandler | unknown | arbitrum | n/a | [`0xa4afc4b2ee640bb6d6b87a0ac7348ba6aea57cf5`](./contracts/arbitrum-42161/0xa4afc4b2ee640bb6d6b87a0ac7348ba6aea57cf5/) | ✅ Audited |
| CrossMarginService | unknown | arbitrum | n/a | [`0x0a8d9c0a4a039dde3cb825ff4c2f063f8b54313a`](./contracts/arbitrum-42161/0x0a8d9c0a4a039dde3cb825ff4c2f063f8b54313a/) | ✅ Audited |
| EcoPyth | unknown | arbitrum | n/a | [`0x06d35ecf6a2799f99482c6f15f146326dd0ff1c6`](./contracts/arbitrum-42161/0x06d35ecf6a2799f99482c6f15f146326dd0ff1c6/) | ✅ Audited |
| EpochFeedableRewarder | unknown | arbitrum | n/a | [`0x1172d67bcc3b7a08a5b57649c01a6fd0056454c8`](./contracts/arbitrum-42161/0x1172d67bcc3b7a08a5b57649c01a6fd0056454c8/) | ✅ Audited |
| Ext01Handler | unknown | arbitrum | n/a | [`0x04bef154a57b8e884d53f2b8f141b34825b448da`](./contracts/arbitrum-42161/0x04bef154a57b8e884d53f2b8f141b34825b448da/) | ✅ Audited |
| FeedableRewarder | unknown | arbitrum | n/a | [`0x020594b2257baf2e8c2cd17a89de475e67d1091e`](./contracts/arbitrum-42161/0x020594b2257baf2e8c2cd17a89de475e67d1091e/) | ✅ Audited |
| GasService | unknown | arbitrum | n/a | [`0x2f3ecc06ac080d15246afc60bed1e70ef4384ca8`](./contracts/arbitrum-42161/0x2f3ecc06ac080d15246afc60bed1e70ef4384ca8/) | ✅ Audited |
| HLP | unknown | arbitrum | n/a | [`0x3d5e3f37ff6dd95abeebfef04124b90f143a36fd`](./contracts/arbitrum-42161/0x3d5e3f37ff6dd95abeebfef04124b90f143a36fd/) | ✅ Audited |
| HlpPriceAdapter | unknown | arbitrum | n/a | [`0x0266868d1c144a7534513f38b816c1aade4030a2`](./contracts/arbitrum-42161/0x0266868d1c144a7534513f38b816c1aade4030a2/) | ✅ Audited |
| IntentHandler | unknown | arbitrum | n/a | [`0x5667d4e5e634d288fcf1e3330be91e403a7245b0`](./contracts/arbitrum-42161/0x5667d4e5e634d288fcf1e3330be91e403a7245b0/) | ✅ Audited |
| LimitTradeHandler | unknown | arbitrum | n/a | [`0x506850645c1d25eafe1cbcb6e564f3ae030891e1`](./contracts/arbitrum-42161/0x506850645c1d25eafe1cbcb6e564f3ae030891e1/) | ✅ Audited |
| LimitTradeHelper | unknown | arbitrum | n/a | [`0x0e7c0d58f2e4a6b28597d51a34c4b7acda1ee719`](./contracts/arbitrum-42161/0x0e7c0d58f2e4a6b28597d51a34c4b7acda1ee719/) | ✅ Audited |
| LiquidationService | unknown | arbitrum | n/a | [`0x34e89ded96340a177856fd822366afc584438750`](./contracts/arbitrum-42161/0x34e89ded96340a177856fd822366afc584438750/) | ✅ Audited |
| LiquidityHandler | unknown | arbitrum | n/a | [`0x0519f810783a85343eb6c92aa24de5bbe668a4e6`](./contracts/arbitrum-42161/0x0519f810783a85343eb6c92aa24de5bbe668a4e6/) | ✅ Audited |
| LiquidityService | unknown | arbitrum | n/a | [`0x2bb8ece609a55893ee1591ae0099de9ccb3926d9`](./contracts/arbitrum-42161/0x2bb8ece609a55893ee1591ae0099de9ccb3926d9/) | ✅ Audited |
| OrderbookOracle | unknown | arbitrum | n/a | [`0x0f1e64330618ea1befe139b7f26a1e04629a8556`](./contracts/arbitrum-42161/0x0f1e64330618ea1befe139b7f26a1e04629a8556/) | ✅ Audited |
| OrderReader | unknown | arbitrum | n/a | [`0x77e41b34b1a58463f554d6d013967d553d11162a`](./contracts/arbitrum-42161/0x77e41b34b1a58463f554d6d013967d553d11162a/) | ✅ Audited |
| PerpStorage | unknown | arbitrum | n/a | [`0x492911d7b0165cc03cd3dd30e325b14e9dcc1a00`](./contracts/arbitrum-42161/0x492911d7b0165cc03cd3dd30e325b14e9dcc1a00/) | ✅ Audited |
| PositionReader | unknown | arbitrum | n/a | [`0x8b406047a942db7f2c15839b11e3adc7b62a67e0`](./contracts/arbitrum-42161/0x8b406047a942db7f2c15839b11e3adc7b62a67e0/) | ✅ Audited |
| PythAdapter | unknown | arbitrum | n/a | [`0x34338314236df25220b55f90f7e8fc30b620d242`](./contracts/arbitrum-42161/0x34338314236df25220b55f90f7e8fc30b620d242/) | ✅ Audited |
| RebalanceHLPHandler | unknown | arbitrum | n/a | [`0x146d674ca06f3d92b876b32b49c068a05f9a3bf0`](./contracts/arbitrum-42161/0x146d674ca06f3d92b876b32b49c068a05f9a3bf0/) | ✅ Audited |
| RebalanceHLPService | unknown | arbitrum | n/a | [`0x83e05128480e24409e4eec643dc0db921ba3ba03`](./contracts/arbitrum-42161/0x83e05128480e24409e4eec643dc0db921ba3ba03/) | ✅ Audited |
| StakedGlpOracleAdapter | unknown | arbitrum | n/a | [`0x0650b4b0bc6c032b69bd5c0b15496f6555c0ec98`](./contracts/arbitrum-42161/0x0650b4b0bc6c032b69bd5c0b15496f6555c0ec98/) | ✅ Audited |
| SwitchCollateralRouter | unknown | arbitrum | n/a | [`0x004d72a192db408b9a7c647c6a3c888dfebc6a9b`](./contracts/arbitrum-42161/0x004d72a192db408b9a7c647c6a3c888dfebc6a9b/) | ✅ Audited |
| TLCHook | unknown | arbitrum | n/a | [`0x7aa07319774074d93ba7d265ecd864c49357582e`](./contracts/arbitrum-42161/0x7aa07319774074d93ba7d265ecd864c49357582e/) | ✅ Audited |
| TLCStaking | unknown | arbitrum | n/a | [`0x03bac369e37a78420ddc284ff6e7e94d15571bba`](./contracts/arbitrum-42161/0x03bac369e37a78420ddc284ff6e7e94d15571bba/) | ✅ Audited |
| TradeHelper | unknown | arbitrum | n/a | [`0x127baf4e9d0f0c560dd7aadfc8fff5958a72b0bb`](./contracts/arbitrum-42161/0x127baf4e9d0f0c560dd7aadfc8fff5958a72b0bb/) | ✅ Audited |
| TradeOrderHelper | unknown | arbitrum | n/a | [`0x7a0a7e50abf998173f1aa3bf8dc8a6c5d0e1e942`](./contracts/arbitrum-42161/0x7a0a7e50abf998173f1aa3bf8dc8a6c5d0e1e942/) | ✅ Audited |
| TraderLoyaltyCredit | unknown | arbitrum | n/a | [`0x1fdcb022daeca9326a37a318f143a0fed61abba6`](./contracts/arbitrum-42161/0x1fdcb022daeca9326a37a318f143a0fed61abba6/) | ✅ Audited |
| TradeService | unknown | arbitrum | n/a | [`0x5bf7315a6e50079327de2c31270e094b2a57413a`](./contracts/arbitrum-42161/0x5bf7315a6e50079327de2c31270e094b2a57413a/) | ✅ Audited |
| TradingStakingHook | unknown | arbitrum | n/a | [`0x68f99f972a63d51c29b08511c59b658a8c92265d`](./contracts/arbitrum-42161/0x68f99f972a63d51c29b08511c59b658a8c92265d/) | ✅ Audited |
| VaultStorage | unknown | arbitrum | n/a | [`0x144fb991dc200fda881915ea3839f91b23332362`](./contracts/arbitrum-42161/0x144fb991dc200fda881915ea3839f91b23332362/) | ✅ Audited |

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdHocMintRewarder | unknown | arbitrum | n/a | [`0x654dcbe6e0fd6735fc3548d752ee9ce22c31ce12`](./contracts/arbitrum-42161/0x654dcbe6e0fd6735fc3548d752ee9ce22c31ce12/) | ⚠️ Unaudited |
| bDESK | unknown | arbitrum | n/a | [`0x4dd2b483b947a4fa711689a2baf9b42d170b485f`](./contracts/arbitrum-42161/0x4dd2b483b947a4fa711689a2baf9b42d170b485f/) | ⚠️ Unaudited |
| BulkSendErc20 | unknown | arbitrum | n/a | [`0x80825a51afa8bfafe6b0640f605c169c5f58d670`](./contracts/arbitrum-42161/0x80825a51afa8bfafe6b0640f605c169c5f58d670/) | ⚠️ Unaudited |
| CalcPriceLens | unknown | arbitrum | n/a | [`0x8ce09f789235bdca8ec2eee990b11c42e35909fc`](./contracts/arbitrum-42161/0x8ce09f789235bdca8ec2eee990b11c42e35909fc/) | ⚠️ Unaudited |
| ChronicleOraclePriceAdapter | unknown | arbitrum | n/a | [`0xcf1053dec1a7eff5710b9420179d089f8461da75`](./contracts/arbitrum-42161/0xcf1053dec1a7eff5710b9420179d089f8461da75/) | ⚠️ Unaudited |
| CIXPriceAdapter | unknown | arbitrum | n/a | [`0x222918d230c5a29f334ffb3020ad57b8cebd1b82`](./contracts/arbitrum-42161/0x222918d230c5a29f334ffb3020ad57b8cebd1b82/) | ⚠️ Unaudited |
| Compounder2 | unknown | arbitrum | n/a | [`0x388a954c6b7282427aa2e8af504504fa6ba89432`](./contracts/arbitrum-42161/0x388a954c6b7282427aa2e8af504504fa6ba89432/) | ⚠️ Unaudited |
| DESK | unknown | arbitrum | n/a | [`0x444ad70fd382e4ee8ba269f84bd4aefb813ebc10`](./contracts/arbitrum-42161/0x444ad70fd382e4ee8ba269f84bd4aefb813ebc10/) | ⚠️ Unaudited |
| DeskExchanger | unknown | arbitrum | n/a | [`0x2c18464a21fbad7be825ce12049581645d6d94c7`](./contracts/arbitrum-42161/0x2c18464a21fbad7be825ce12049581645d6d94c7/) | ⚠️ Unaudited |
| DistributeSTIPARBStrategy | unknown | arbitrum | n/a | [`0x02c7ac8c43cda40526f7182a4fb2b11774ec8f29`](./contracts/arbitrum-42161/0x02c7ac8c43cda40526f7182a4fb2b11774ec8f29/) | ⚠️ Unaudited |
| DLP | unknown | arbitrum | n/a | [`0x96dd1f2c6da5f693001e71a8323a6a8a0fea20d6`](./contracts/arbitrum-42161/0x96dd1f2c6da5f693001e71a8323a6a8a0fea20d6/) | ⚠️ Unaudited |
| EcoPyth2 | unknown | arbitrum | n/a | [`0x8dc6a40465128b20dc712c6b765a5171ef30bb7b`](./contracts/arbitrum-42161/0x8dc6a40465128b20dc712c6b765a5171ef30bb7b/) | ⚠️ Unaudited |
| EcoPythCalldataBuilder | unknown | arbitrum | n/a | [`0x44e31321e748ddc768a019aee4c62c14e53424f1`](./contracts/arbitrum-42161/0x44e31321e748ddc768a019aee4c62c14e53424f1/) | ⚠️ Unaudited |
| EcoPythCalldataBuilder3 | unknown | arbitrum | n/a | [`0xc1353b3bff066c441f631daec245b1f5c08a7f07`](./contracts/arbitrum-42161/0xc1353b3bff066c441f631daec245b1f5c08a7f07/) | ⚠️ Unaudited |
| ERC20ApproveStrategy | unknown | arbitrum | n/a | [`0x157539f72a361efbe9f8102f342f9e10f3c073ac`](./contracts/arbitrum-42161/0x157539f72a361efbe9f8102f342f9e10f3c073ac/) | ⚠️ Unaudited |
| EsHMX | unknown | arbitrum | n/a | [`0x8a011ef14a92aa37ce82a4c95004a70730b6ac38`](./contracts/arbitrum-42161/0x8a011ef14a92aa37ce82a4c95004a70730b6ac38/) | ⚠️ Unaudited |
| EsHMXAirdrop | unknown | arbitrum | n/a | [`0x24867dffc3add1e8bb442b9d6e04bb95bd46c09b`](./contracts/arbitrum-42161/0x24867dffc3add1e8bb442b9d6e04bb95bd46c09b/) | ⚠️ Unaudited |
| ExternalRebalancer | unknown | arbitrum | n/a | [`0xccddebd0ebe02edf37ff36bd3b47bbebc746bcf2`](./contracts/arbitrum-42161/0xccddebd0ebe02edf37ff36bd3b47bbebc746bcf2/) | ⚠️ Unaudited |
| GasKeeper | unknown | arbitrum | n/a | [`0x230f5c47445dcf5b298bc843fb6b6d7033ffe088`](./contracts/arbitrum-42161/0x230f5c47445dcf5b298bc843fb6b6d7033ffe088/) | ⚠️ Unaudited |
| GlpDexter | unknown | arbitrum | n/a | [`0x42870d0079cd7acb71b3fe96ea4d77fbd1ccc820`](./contracts/arbitrum-42161/0x42870d0079cd7acb71b3fe96ea4d77fbd1ccc820/) | ⚠️ Unaudited |
| GlpPriceAdapter | unknown | arbitrum | n/a | [`0x9934d2cc22e9905b511e13e35148b9ef9ada6cd0`](./contracts/arbitrum-42161/0x9934d2cc22e9905b511e13e35148b9ef9ada6cd0/) | ⚠️ Unaudited |
| GmPriceAdapter | unknown | arbitrum | n/a | [`0x6a5091402d704d760a8e6198796fee6416d5a577`](./contracts/arbitrum-42161/0x6a5091402d704d760a8e6198796fee6416d5a577/) | ⚠️ Unaudited |
| HLPRebaser | unknown | arbitrum | n/a | [`0xac60da1cd4d69e0a515d08df06644fb424380b13`](./contracts/arbitrum-42161/0xac60da1cd4d69e0a515d08df06644fb424380b13/) | ⚠️ Unaudited |
| HLPStaking | unknown | arbitrum | n/a | [`0x008771d9c0f0bdb65dfb9f9f81733b57c3e73b46`](./contracts/arbitrum-42161/0x008771d9c0f0bdb65dfb9f9f81733b57c3e73b46/) | ⚠️ Unaudited |
| HMXStaking | unknown | arbitrum | n/a | [`0x4381e041f39f96b71b0699ea7a1057cf1344c48a`](./contracts/arbitrum-42161/0x4381e041f39f96b71b0699ea7a1057cf1344c48a/) | ⚠️ Unaudited |
| LDESK2 | unknown | arbitrum | n/a | [`0x0ce6349c2f89d644c8920bf0b57edb8b42450004`](./contracts/arbitrum-42161/0x0ce6349c2f89d644c8920bf0b57edb8b42450004/) | ⚠️ Unaudited |
| LDESKVester | unknown | arbitrum | n/a | [`0xa0ca27169f9dea34f9d63b9a794fb44ec68a5f72`](./contracts/arbitrum-42161/0xa0ca27169f9dea34f9d63b9a794fb44ec68a5f72/) | ⚠️ Unaudited |
| LHMX | unknown | arbitrum | n/a | [`0x09a928e07d289d733822d6df3db3e6a69a2b13c4`](./contracts/arbitrum-42161/0x09a928e07d289d733822d6df3db3e6a69a2b13c4/) | ⚠️ Unaudited |
| LHMX2 | unknown | arbitrum | n/a | [`0x4b0a71950f6d1fa5632245c134021d5236ade7c3`](./contracts/arbitrum-42161/0x4b0a71950f6d1fa5632245c134021d5236ade7c3/) | ⚠️ Unaudited |
| LHMX3 | unknown | arbitrum | n/a | [`0xf98ff9875b7256f3712613b5cb34412eb3cd6e9a`](./contracts/arbitrum-42161/0xf98ff9875b7256f3712613b5cb34412eb3cd6e9a/) | ⚠️ Unaudited |
| LHMXVester | unknown | arbitrum | n/a | [`0x08e12da7413a839e3d2e6e3e0a568ad233eb687d`](./contracts/arbitrum-42161/0x08e12da7413a839e3d2e6e3e0a568ad233eb687d/) | ⚠️ Unaudited |
| MarketToken | unknown | arbitrum | n/a | [`0x47c031236e19d024b42f8ae6780e44a573170703`](./contracts/arbitrum-42161/0x47c031236e19d024b42f8ae6780e44a573170703/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | arbitrum | n/a | [`0xe79b9602b436c6d5b4d8cfcf3e4f590ed8a545ab`](./contracts/arbitrum-42161/0xe79b9602b436c6d5b4d8cfcf3e4f590ed8a545ab/) | ⚠️ Unaudited |
| OnChainPriceLens | unknown | arbitrum | n/a | [`0x7d8eaa8df02526c711f4ff1f97f6c5324212dbba`](./contracts/arbitrum-42161/0x7d8eaa8df02526c711f4ff1f97f6c5324212dbba/) | ⚠️ Unaudited |
| OracleMiddleware | unknown | arbitrum | n/a | [`0x9c83e1046da4727f05c6764c017c6e1757596592`](./contracts/arbitrum-42161/0x9c83e1046da4727f05c6764c017c6e1757596592/) | ⚠️ Unaudited |
| PaymentKeeper | unknown | arbitrum | n/a | [`0x5dfed4e9315adc768380827e899822453f70068e`](./contracts/arbitrum-42161/0x5dfed4e9315adc768380827e899822453f70068e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x2e7983f9a1d08c57989eea20adc9242321da6589`](./contracts/arbitrum-42161/0x2e7983f9a1d08c57989eea20adc9242321da6589/) | ⚠️ Unaudited |
| RebalanceHLPv2Handler | unknown | arbitrum | n/a | [`0x72233e5498e3fb5fa468497b7e05dc8b03d41dec`](./contracts/arbitrum-42161/0x72233e5498e3fb5fa468497b7e05dc8b03d41dec/) | ⚠️ Unaudited |
| RebalanceHLPv2Service | unknown | arbitrum | n/a | [`0x00ad8b677cff674440fd9534db6cbce60f9075cb`](./contracts/arbitrum-42161/0x00ad8b677cff674440fd9534db6cbce60f9075cb/) | ⚠️ Unaudited |
| RemoteHMX | unknown | arbitrum | n/a | [`0x83d6c8c06ac276465e4c92e7ac8c23740f435140`](./contracts/arbitrum-42161/0x83d6c8c06ac276465e4c92e7ac8c23740f435140/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | [`0x0e303e9d98a3f88097b07befb510aa7a97ff440d`](./contracts/arbitrum-42161/0x0e303e9d98a3f88097b07befb510aa7a97ff440d/) | ⚠️ Unaudited |
| SGE | unknown | arbitrum | n/a | [`0x7748671b218974a4a3a6b023bea7fe3659cd85c9`](./contracts/arbitrum-42161/0x7748671b218974a4a3a6b023bea7fe3659cd85c9/) | ⚠️ Unaudited |
| StakedGlpStrategy | unknown | arbitrum | n/a | [`0x0a4536be713989a355f77fd46fd21e737c219f5c`](./contracts/arbitrum-42161/0x0a4536be713989a355f77fd46fd21e737c219f5c/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0xa6f6fbd3ff92fcb2f7e3a419bb9861c96e679f28`](./contracts/arbitrum-42161/0xa6f6fbd3ff92fcb2f7e3a419bb9861c96e679f28/) | ⚠️ Unaudited |
| StakingLocker | unknown | arbitrum | n/a | [`0x7bf98f7ea78b228a0b40057c15f8137c66951dcd`](./contracts/arbitrum-42161/0x7bf98f7ea78b228a0b40057c15f8137c66951dcd/) | ⚠️ Unaudited |
| StakingMigrator | unknown | arbitrum | n/a | [`0x0b282b1f4164f7aa130d452e964bd14e47a09047`](./contracts/arbitrum-42161/0x0b282b1f4164f7aa130d452e964bd14e47a09047/) | ⚠️ Unaudited |
| SurgeFeedableRewarder | unknown | arbitrum | n/a | [`0x194028eaf9a13919d99a87165ad925d85d977f3b`](./contracts/arbitrum-42161/0x194028eaf9a13919d99a87165ad925d85d977f3b/) | ⚠️ Unaudited |
| TGE | unknown | arbitrum | n/a | [`0xe2282a50682a1938e0064c4ffdf3001394672a8d`](./contracts/arbitrum-42161/0xe2282a50682a1938e0064c4ffdf3001394672a8d/) | ⚠️ Unaudited |
| TradingStaking | unknown | arbitrum | n/a | [`0x0e4db5a37903a9109d70c5e734443773f82537aa`](./contracts/arbitrum-42161/0x0e4db5a37903a9109d70c5e734443773f82537aa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x1a7565f1f61db82552eea0ad7690a7e76fbc72bd`](./contracts/arbitrum-42161/0x1a7565f1f61db82552eea0ad7690a7e76fbc72bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x26e7db328167aef8d8231135f444d0674cb466fc`](./contracts/arbitrum-42161/0x26e7db328167aef8d8231135f444d0674cb466fc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x8e5d083ba7a46f13afccc27bfb7da372e9dfef22`](./contracts/arbitrum-42161/0x8e5d083ba7a46f13afccc27bfb7da372e9dfef22/) | ⚠️ Unaudited |
| UniV3LiquidityFreezer | unknown | arbitrum | n/a | [`0xa3dc2f156a6fc94bfe7fd9fea2fa6c6cb8db6c3f`](./contracts/arbitrum-42161/0xa3dc2f156a6fc94bfe7fd9fea2fa6c6cb8db6c3f/) | ⚠️ Unaudited |
| UniV3LiquidityMining | unknown | arbitrum | n/a | [`0x032a49e27c44f357e335723b2c5575fbc8632284`](./contracts/arbitrum-42161/0x032a49e27c44f357e335723b2c5575fbc8632284/) | ⚠️ Unaudited |
| UniV3LMUpkeepKeeper | unknown | arbitrum | n/a | [`0x017a185c14254626a240d94f703b7e01c59b2e7c`](./contracts/arbitrum-42161/0x017a185c14254626a240d94f703b7e01c59b2e7c/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | [`0x28fc5aa56ede3fb0c8df15d8118da8fa54adbaf2`](./contracts/arbitrum-42161/0x28fc5aa56ede3fb0c8df15d8118da8fa54adbaf2/) | ⚠️ Unaudited |
| WstEthUsdPriceAdapter | unknown | arbitrum | n/a | [`0x9ed51928ec61c4e5dc0d48b38c828f89687467e6`](./contracts/arbitrum-42161/0x9ed51928ec61c4e5dc0d48b38c828f89687467e6/) | ⚠️ Unaudited |

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
| [Audits & Contracts](https://docs.hmx.org/hmx/about-hmx-protocol/audits-and-contracts.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/TradeOnDESK/v2-evm/1e781f5cd52e88509da0b66742076c26dcc0f895/audits/CantinaManaged-HMX-final.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | 33 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/TradeOnDESK/v2-evm/1e781f5cd52e88509da0b66742076c26dcc0f895/audits/HMX_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-06 | stale | Direct | contract_name | 21 | high |
| [HMX Security Assessment-FINAL.pdf](https://github.com/HMXOrg/v2-evm/blob/main/audits/HMX%20Security%20Assessment-FINAL.pdf) | Unknown | Audit | 2023-06 | stale | Direct | contract_name | 11 | high |
| [adaptive-fee-audit-cantina.pdf](https://github.com/HMXOrg/v2-evm/blob/main/audits/adaptive-fee-audit-cantina.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x654dcbe6e0fd6735fc3548d752ee9ce22c31ce12`](./contracts/arbitrum-42161/0x654dcbe6e0fd6735fc3548d752ee9ce22c31ce12/) | AdHocMintRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4dd2b483b947a4fa711689a2baf9b42d170b485f`](./contracts/arbitrum-42161/0x4dd2b483b947a4fa711689a2baf9b42d170b485f/) | bDESK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x80825a51afa8bfafe6b0640f605c169c5f58d670`](./contracts/arbitrum-42161/0x80825a51afa8bfafe6b0640f605c169c5f58d670/) | BulkSendErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8ce09f789235bdca8ec2eee990b11c42e35909fc`](./contracts/arbitrum-42161/0x8ce09f789235bdca8ec2eee990b11c42e35909fc/) | CalcPriceLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcf1053dec1a7eff5710b9420179d089f8461da75`](./contracts/arbitrum-42161/0xcf1053dec1a7eff5710b9420179d089f8461da75/) | ChronicleOraclePriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x222918d230c5a29f334ffb3020ad57b8cebd1b82`](./contracts/arbitrum-42161/0x222918d230c5a29f334ffb3020ad57b8cebd1b82/) | CIXPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x444ad70fd382e4ee8ba269f84bd4aefb813ebc10`](./contracts/arbitrum-42161/0x444ad70fd382e4ee8ba269f84bd4aefb813ebc10/) | DESK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c18464a21fbad7be825ce12049581645d6d94c7`](./contracts/arbitrum-42161/0x2c18464a21fbad7be825ce12049581645d6d94c7/) | DeskExchanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02c7ac8c43cda40526f7182a4fb2b11774ec8f29`](./contracts/arbitrum-42161/0x02c7ac8c43cda40526f7182a4fb2b11774ec8f29/) | DistributeSTIPARBStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x96dd1f2c6da5f693001e71a8323a6a8a0fea20d6`](./contracts/arbitrum-42161/0x96dd1f2c6da5f693001e71a8323a6a8a0fea20d6/) | DLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8dc6a40465128b20dc712c6b765a5171ef30bb7b`](./contracts/arbitrum-42161/0x8dc6a40465128b20dc712c6b765a5171ef30bb7b/) | EcoPyth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x44e31321e748ddc768a019aee4c62c14e53424f1`](./contracts/arbitrum-42161/0x44e31321e748ddc768a019aee4c62c14e53424f1/) | EcoPythCalldataBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1353b3bff066c441f631daec245b1f5c08a7f07`](./contracts/arbitrum-42161/0xc1353b3bff066c441f631daec245b1f5c08a7f07/) | EcoPythCalldataBuilder3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x157539f72a361efbe9f8102f342f9e10f3c073ac`](./contracts/arbitrum-42161/0x157539f72a361efbe9f8102f342f9e10f3c073ac/) | ERC20ApproveStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a011ef14a92aa37ce82a4c95004a70730b6ac38`](./contracts/arbitrum-42161/0x8a011ef14a92aa37ce82a4c95004a70730b6ac38/) | EsHMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24867dffc3add1e8bb442b9d6e04bb95bd46c09b`](./contracts/arbitrum-42161/0x24867dffc3add1e8bb442b9d6e04bb95bd46c09b/) | EsHMXAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xccddebd0ebe02edf37ff36bd3b47bbebc746bcf2`](./contracts/arbitrum-42161/0xccddebd0ebe02edf37ff36bd3b47bbebc746bcf2/) | ExternalRebalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x230f5c47445dcf5b298bc843fb6b6d7033ffe088`](./contracts/arbitrum-42161/0x230f5c47445dcf5b298bc843fb6b6d7033ffe088/) | GasKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42870d0079cd7acb71b3fe96ea4d77fbd1ccc820`](./contracts/arbitrum-42161/0x42870d0079cd7acb71b3fe96ea4d77fbd1ccc820/) | GlpDexter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9934d2cc22e9905b511e13e35148b9ef9ada6cd0`](./contracts/arbitrum-42161/0x9934d2cc22e9905b511e13e35148b9ef9ada6cd0/) | GlpPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a5091402d704d760a8e6198796fee6416d5a577`](./contracts/arbitrum-42161/0x6a5091402d704d760a8e6198796fee6416d5a577/) | GmPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xac60da1cd4d69e0a515d08df06644fb424380b13`](./contracts/arbitrum-42161/0xac60da1cd4d69e0a515d08df06644fb424380b13/) | HLPRebaser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x008771d9c0f0bdb65dfb9f9f81733b57c3e73b46`](./contracts/arbitrum-42161/0x008771d9c0f0bdb65dfb9f9f81733b57c3e73b46/) | HLPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4381e041f39f96b71b0699ea7a1057cf1344c48a`](./contracts/arbitrum-42161/0x4381e041f39f96b71b0699ea7a1057cf1344c48a/) | HMXStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ce6349c2f89d644c8920bf0b57edb8b42450004`](./contracts/arbitrum-42161/0x0ce6349c2f89d644c8920bf0b57edb8b42450004/) | LDESK2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0ca27169f9dea34f9d63b9a794fb44ec68a5f72`](./contracts/arbitrum-42161/0xa0ca27169f9dea34f9d63b9a794fb44ec68a5f72/) | LDESKVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09a928e07d289d733822d6df3db3e6a69a2b13c4`](./contracts/arbitrum-42161/0x09a928e07d289d733822d6df3db3e6a69a2b13c4/) | LHMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4b0a71950f6d1fa5632245c134021d5236ade7c3`](./contracts/arbitrum-42161/0x4b0a71950f6d1fa5632245c134021d5236ade7c3/) | LHMX2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf98ff9875b7256f3712613b5cb34412eb3cd6e9a`](./contracts/arbitrum-42161/0xf98ff9875b7256f3712613b5cb34412eb3cd6e9a/) | LHMX3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08e12da7413a839e3d2e6e3e0a568ad233eb687d`](./contracts/arbitrum-42161/0x08e12da7413a839e3d2e6e3e0a568ad233eb687d/) | LHMXVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x47c031236e19d024b42f8ae6780e44a573170703`](./contracts/arbitrum-42161/0x47c031236e19d024b42f8ae6780e44a573170703/) | MarketToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe79b9602b436c6d5b4d8cfcf3e4f590ed8a545ab`](./contracts/arbitrum-42161/0xe79b9602b436c6d5b4d8cfcf3e4f590ed8a545ab/) | MerkleAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7d8eaa8df02526c711f4ff1f97f6c5324212dbba`](./contracts/arbitrum-42161/0x7d8eaa8df02526c711f4ff1f97f6c5324212dbba/) | OnChainPriceLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9c83e1046da4727f05c6764c017c6e1757596592`](./contracts/arbitrum-42161/0x9c83e1046da4727f05c6764c017c6e1757596592/) | OracleMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5dfed4e9315adc768380827e899822453f70068e`](./contracts/arbitrum-42161/0x5dfed4e9315adc768380827e899822453f70068e/) | PaymentKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x72233e5498e3fb5fa468497b7e05dc8b03d41dec`](./contracts/arbitrum-42161/0x72233e5498e3fb5fa468497b7e05dc8b03d41dec/) | RebalanceHLPv2Handler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00ad8b677cff674440fd9534db6cbce60f9075cb`](./contracts/arbitrum-42161/0x00ad8b677cff674440fd9534db6cbce60f9075cb/) | RebalanceHLPv2Service | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x83d6c8c06ac276465e4c92e7ac8c23740f435140`](./contracts/arbitrum-42161/0x83d6c8c06ac276465e4c92e7ac8c23740f435140/) | RemoteHMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e303e9d98a3f88097b07befb510aa7a97ff440d`](./contracts/arbitrum-42161/0x0e303e9d98a3f88097b07befb510aa7a97ff440d/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7748671b218974a4a3a6b023bea7fe3659cd85c9`](./contracts/arbitrum-42161/0x7748671b218974a4a3a6b023bea7fe3659cd85c9/) | SGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a4536be713989a355f77fd46fd21e737c219f5c`](./contracts/arbitrum-42161/0x0a4536be713989a355f77fd46fd21e737c219f5c/) | StakedGlpStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa6f6fbd3ff92fcb2f7e3a419bb9861c96e679f28`](./contracts/arbitrum-42161/0xa6f6fbd3ff92fcb2f7e3a419bb9861c96e679f28/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7bf98f7ea78b228a0b40057c15f8137c66951dcd`](./contracts/arbitrum-42161/0x7bf98f7ea78b228a0b40057c15f8137c66951dcd/) | StakingLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b282b1f4164f7aa130d452e964bd14e47a09047`](./contracts/arbitrum-42161/0x0b282b1f4164f7aa130d452e964bd14e47a09047/) | StakingMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x194028eaf9a13919d99a87165ad925d85d977f3b`](./contracts/arbitrum-42161/0x194028eaf9a13919d99a87165ad925d85d977f3b/) | SurgeFeedableRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe2282a50682a1938e0064c4ffdf3001394672a8d`](./contracts/arbitrum-42161/0xe2282a50682a1938e0064c4ffdf3001394672a8d/) | TGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e4db5a37903a9109d70c5e734443773f82537aa`](./contracts/arbitrum-42161/0x0e4db5a37903a9109d70c5e734443773f82537aa/) | TradingStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa3dc2f156a6fc94bfe7fd9fea2fa6c6cb8db6c3f`](./contracts/arbitrum-42161/0xa3dc2f156a6fc94bfe7fd9fea2fa6c6cb8db6c3f/) | UniV3LiquidityFreezer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x032a49e27c44f357e335723b2c5575fbc8632284`](./contracts/arbitrum-42161/0x032a49e27c44f357e335723b2c5575fbc8632284/) | UniV3LiquidityMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x017a185c14254626a240d94f703b7e01c59b2e7c`](./contracts/arbitrum-42161/0x017a185c14254626a240d94f703b7e01c59b2e7c/) | UniV3LMUpkeepKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28fc5aa56ede3fb0c8df15d8118da8fa54adbaf2`](./contracts/arbitrum-42161/0x28fc5aa56ede3fb0c8df15d8118da8fa54adbaf2/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9ed51928ec61c4e5dc0d48b38c828f89687467e6`](./contracts/arbitrum-42161/0x9ed51928ec61c4e5dc0d48b38c828f89687467e6/) | WstEthUsdPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=127

Fork inheritance lineage and inherited audits are included when available.
