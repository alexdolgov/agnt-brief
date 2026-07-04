# Agentic Audit Brief: DESK

## Project Overview

- Project: DESK (`desk`)
- Website: [https://desk.exchange/](https://desk.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.811Z
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

- Coverage of deployed-live implementations: 0/94 (0.0%)
- Deployed-live implementations: 94 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/94
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 94
- Raw deployments: 94
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveFeeCalculator | unknown | arbitrum | n/a | [`0x939a2e...cb4415`](./contracts/arbitrum-42161/0x939a2e2331ef6d2e605b7f23b5e431b0d6cb4415/) | ⚠️ Unaudited |
| AdHocMintRewarder | unknown | arbitrum | n/a | [`0x654dcb...31ce12`](./contracts/arbitrum-42161/0x654dcbe6e0fd6735fc3548d752ee9ce22c31ce12/) | ⚠️ Unaudited |
| bDESK | unknown | arbitrum | n/a | [`0x4dd2b4...0b485f`](./contracts/arbitrum-42161/0x4dd2b483b947a4fa711689a2baf9b42d170b485f/) | ⚠️ Unaudited |
| BotHandler | unknown | arbitrum | n/a | [`0x42b701...c335c8`](./contracts/arbitrum-42161/0x42b701290fc04e8fa69431ce377b95beabc335c8/) | ⚠️ Unaudited |
| BulkSendErc20 | unknown | arbitrum | n/a | [`0x80825a...58d670`](./contracts/arbitrum-42161/0x80825a51afa8bfafe6b0640f605c169c5f58d670/) | ⚠️ Unaudited |
| CalcPriceLens | unknown | arbitrum | n/a | [`0x8ce09f...5909fc`](./contracts/arbitrum-42161/0x8ce09f789235bdca8ec2eee990b11c42e35909fc/) | ⚠️ Unaudited |
| Calculator | unknown | arbitrum | n/a | [`0x0fde91...b9e006`](./contracts/arbitrum-42161/0x0fde910552977041dc8c7ef652b5a07b40b9e006/) | ⚠️ Unaudited |
| ChronicleOraclePriceAdapter | unknown | arbitrum | n/a | [`0xcf1053...61da75`](./contracts/arbitrum-42161/0xcf1053dec1a7eff5710b9420179d089f8461da75/) | ⚠️ Unaudited |
| CIXPriceAdapter | unknown | arbitrum | n/a | [`0x222918...bd1b82`](./contracts/arbitrum-42161/0x222918d230c5a29f334ffb3020ad57b8cebd1b82/) | ⚠️ Unaudited |
| Compounder2 | unknown | arbitrum | n/a | [`0x388a95...a89432`](./contracts/arbitrum-42161/0x388a954c6b7282427aa2e8af504504fa6ba89432/) | ⚠️ Unaudited |
| ConfigStorage | unknown | arbitrum | n/a | [`0x43cbd0...01f075`](./contracts/arbitrum-42161/0x43cbd00a81aea737536a9c9779edf0617d01f075/) | ⚠️ Unaudited |
| ConvertedGlpStrategy | unknown | arbitrum | n/a | [`0x642dcc...a76432`](./contracts/arbitrum-42161/0x642dccee2c90986a7472510a6a4e1f4126a76432/) | ⚠️ Unaudited |
| CrossMarginHandler | unknown | arbitrum | n/a | [`0xa4afc4...a57cf5`](./contracts/arbitrum-42161/0xa4afc4b2ee640bb6d6b87a0ac7348ba6aea57cf5/) | ⚠️ Unaudited |
| CrossMarginService | unknown | arbitrum | n/a | [`0x0a8d9c...54313a`](./contracts/arbitrum-42161/0x0a8d9c0a4a039dde3cb825ff4c2f063f8b54313a/) | ⚠️ Unaudited |
| DESK | unknown | arbitrum | n/a | [`0x444ad7...3ebc10`](./contracts/arbitrum-42161/0x444ad70fd382e4ee8ba269f84bd4aefb813ebc10/) | ⚠️ Unaudited |
| DeskExchanger | unknown | arbitrum | n/a | [`0x2c1846...6d94c7`](./contracts/arbitrum-42161/0x2c18464a21fbad7be825ce12049581645d6d94c7/) | ⚠️ Unaudited |
| DistributeSTIPARBStrategy | unknown | arbitrum | n/a | [`0x02c7ac...ec8f29`](./contracts/arbitrum-42161/0x02c7ac8c43cda40526f7182a4fb2b11774ec8f29/) | ⚠️ Unaudited |
| DLP | unknown | arbitrum | n/a | [`0x96dd1f...ea20d6`](./contracts/arbitrum-42161/0x96dd1f2c6da5f693001e71a8323a6a8a0fea20d6/) | ⚠️ Unaudited |
| EcoPyth | unknown | arbitrum | n/a | [`0x06d35e...0ff1c6`](./contracts/arbitrum-42161/0x06d35ecf6a2799f99482c6f15f146326dd0ff1c6/) | ⚠️ Unaudited |
| EcoPyth2 | unknown | arbitrum | n/a | [`0x8dc6a4...30bb7b`](./contracts/arbitrum-42161/0x8dc6a40465128b20dc712c6b765a5171ef30bb7b/) | ⚠️ Unaudited |
| EcoPythCalldataBuilder | unknown | arbitrum | n/a | [`0x44e313...3424f1`](./contracts/arbitrum-42161/0x44e31321e748ddc768a019aee4c62c14e53424f1/) | ⚠️ Unaudited |
| EcoPythCalldataBuilder3 | unknown | arbitrum | n/a | [`0xc1353b...8a7f07`](./contracts/arbitrum-42161/0xc1353b3bff066c441f631daec245b1f5c08a7f07/) | ⚠️ Unaudited |
| EpochFeedableRewarder | unknown | arbitrum | n/a | [`0x1172d6...6454c8`](./contracts/arbitrum-42161/0x1172d67bcc3b7a08a5b57649c01a6fd0056454c8/) | ⚠️ Unaudited |
| ERC20ApproveStrategy | unknown | arbitrum | n/a | [`0x157539...c073ac`](./contracts/arbitrum-42161/0x157539f72a361efbe9f8102f342f9e10f3c073ac/) | ⚠️ Unaudited |
| EsHMX | unknown | arbitrum | n/a | [`0x8a011e...b6ac38`](./contracts/arbitrum-42161/0x8a011ef14a92aa37ce82a4c95004a70730b6ac38/) | ⚠️ Unaudited |
| EsHMXAirdrop | unknown | arbitrum | n/a | [`0x24867d...46c09b`](./contracts/arbitrum-42161/0x24867dffc3add1e8bb442b9d6e04bb95bd46c09b/) | ⚠️ Unaudited |
| Ext01Handler | unknown | arbitrum | n/a | [`0x04bef1...b448da`](./contracts/arbitrum-42161/0x04bef154a57b8e884d53f2b8f141b34825b448da/) | ⚠️ Unaudited |
| ExternalRebalancer | unknown | arbitrum | n/a | [`0xccddeb...46bcf2`](./contracts/arbitrum-42161/0xccddebd0ebe02edf37ff36bd3b47bbebc746bcf2/) | ⚠️ Unaudited |
| FeedableRewarder | unknown | arbitrum | n/a | [`0x020594...d1091e`](./contracts/arbitrum-42161/0x020594b2257baf2e8c2cd17a89de475e67d1091e/) | ⚠️ Unaudited |
| GasKeeper | unknown | arbitrum | n/a | [`0x230f5c...ffe088`](./contracts/arbitrum-42161/0x230f5c47445dcf5b298bc843fb6b6d7033ffe088/) | ⚠️ Unaudited |
| GasService | unknown | arbitrum | n/a | [`0x2f3ecc...384ca8`](./contracts/arbitrum-42161/0x2f3ecc06ac080d15246afc60bed1e70ef4384ca8/) | ⚠️ Unaudited |
| GlpDexter | unknown | arbitrum | n/a | [`0x42870d...ccc820`](./contracts/arbitrum-42161/0x42870d0079cd7acb71b3fe96ea4d77fbd1ccc820/) | ⚠️ Unaudited |
| GlpPriceAdapter | unknown | arbitrum | n/a | [`0x9934d2...da6cd0`](./contracts/arbitrum-42161/0x9934d2cc22e9905b511e13e35148b9ef9ada6cd0/) | ⚠️ Unaudited |
| GmPriceAdapter | unknown | arbitrum | n/a | [`0x6a5091...d5a577`](./contracts/arbitrum-42161/0x6a5091402d704d760a8e6198796fee6416d5a577/) | ⚠️ Unaudited |
| HLP | unknown | arbitrum | n/a | [`0x3d5e3f...3a36fd`](./contracts/arbitrum-42161/0x3d5e3f37ff6dd95abeebfef04124b90f143a36fd/) | ⚠️ Unaudited |
| HlpPriceAdapter | unknown | arbitrum | n/a | [`0x026686...4030a2`](./contracts/arbitrum-42161/0x0266868d1c144a7534513f38b816c1aade4030a2/) | ⚠️ Unaudited |
| HLPRebaser | unknown | arbitrum | n/a | [`0xac60da...380b13`](./contracts/arbitrum-42161/0xac60da1cd4d69e0a515d08df06644fb424380b13/) | ⚠️ Unaudited |
| HLPStaking | unknown | arbitrum | n/a | [`0x008771...e73b46`](./contracts/arbitrum-42161/0x008771d9c0f0bdb65dfb9f9f81733b57c3e73b46/) | ⚠️ Unaudited |
| HMXStaking | unknown | arbitrum | n/a | [`0x4381e0...44c48a`](./contracts/arbitrum-42161/0x4381e041f39f96b71b0699ea7a1057cf1344c48a/) | ⚠️ Unaudited |
| IntentHandler | unknown | arbitrum | n/a | [`0x5667d4...7245b0`](./contracts/arbitrum-42161/0x5667d4e5e634d288fcf1e3330be91e403a7245b0/) | ⚠️ Unaudited |
| LDESK2 | unknown | arbitrum | n/a | [`0x0ce634...450004`](./contracts/arbitrum-42161/0x0ce6349c2f89d644c8920bf0b57edb8b42450004/) | ⚠️ Unaudited |
| LDESKVester | unknown | arbitrum | n/a | [`0xa0ca27...8a5f72`](./contracts/arbitrum-42161/0xa0ca27169f9dea34f9d63b9a794fb44ec68a5f72/) | ⚠️ Unaudited |
| LHMX | unknown | arbitrum | n/a | [`0x09a928...2b13c4`](./contracts/arbitrum-42161/0x09a928e07d289d733822d6df3db3e6a69a2b13c4/) | ⚠️ Unaudited |
| LHMX2 | unknown | arbitrum | n/a | [`0x4b0a71...ade7c3`](./contracts/arbitrum-42161/0x4b0a71950f6d1fa5632245c134021d5236ade7c3/) | ⚠️ Unaudited |
| LHMX3 | unknown | arbitrum | n/a | [`0xf98ff9...cd6e9a`](./contracts/arbitrum-42161/0xf98ff9875b7256f3712613b5cb34412eb3cd6e9a/) | ⚠️ Unaudited |
| LHMXVester | unknown | arbitrum | n/a | [`0x08e12d...eb687d`](./contracts/arbitrum-42161/0x08e12da7413a839e3d2e6e3e0a568ad233eb687d/) | ⚠️ Unaudited |
| LimitTradeHandler | unknown | arbitrum | n/a | [`0x506850...0891e1`](./contracts/arbitrum-42161/0x506850645c1d25eafe1cbcb6e564f3ae030891e1/) | ⚠️ Unaudited |
| LimitTradeHelper | unknown | arbitrum | n/a | [`0x0e7c0d...1ee719`](./contracts/arbitrum-42161/0x0e7c0d58f2e4a6b28597d51a34c4b7acda1ee719/) | ⚠️ Unaudited |
| LiquidationService | unknown | arbitrum | n/a | [`0x34e89d...438750`](./contracts/arbitrum-42161/0x34e89ded96340a177856fd822366afc584438750/) | ⚠️ Unaudited |
| LiquidityHandler | unknown | arbitrum | n/a | [`0x0519f8...68a4e6`](./contracts/arbitrum-42161/0x0519f810783a85343eb6c92aa24de5bbe668a4e6/) | ⚠️ Unaudited |
| LiquidityService | unknown | arbitrum | n/a | [`0x2bb8ec...3926d9`](./contracts/arbitrum-42161/0x2bb8ece609a55893ee1591ae0099de9ccb3926d9/) | ⚠️ Unaudited |
| MarketToken | unknown | arbitrum | n/a | [`0x47c031...170703`](./contracts/arbitrum-42161/0x47c031236e19d024b42f8ae6780e44a573170703/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | arbitrum | n/a | [`0xe79b96...a545ab`](./contracts/arbitrum-42161/0xe79b9602b436c6d5b4d8cfcf3e4f590ed8a545ab/) | ⚠️ Unaudited |
| OnChainPriceLens | unknown | arbitrum | n/a | [`0x7d8eaa...12dbba`](./contracts/arbitrum-42161/0x7d8eaa8df02526c711f4ff1f97f6c5324212dbba/) | ⚠️ Unaudited |
| OracleMiddleware | unknown | arbitrum | n/a | [`0x9c83e1...596592`](./contracts/arbitrum-42161/0x9c83e1046da4727f05c6764c017c6e1757596592/) | ⚠️ Unaudited |
| OrderbookOracle | unknown | arbitrum | n/a | [`0x0f1e64...9a8556`](./contracts/arbitrum-42161/0x0f1e64330618ea1befe139b7f26a1e04629a8556/) | ⚠️ Unaudited |
| OrderReader | unknown | arbitrum | n/a | [`0x77e41b...11162a`](./contracts/arbitrum-42161/0x77e41b34b1a58463f554d6d013967d553d11162a/) | ⚠️ Unaudited |
| PaymentKeeper | unknown | arbitrum | n/a | [`0x5dfed4...70068e`](./contracts/arbitrum-42161/0x5dfed4e9315adc768380827e899822453f70068e/) | ⚠️ Unaudited |
| PerpStorage | unknown | arbitrum | n/a | [`0x492911...cc1a00`](./contracts/arbitrum-42161/0x492911d7b0165cc03cd3dd30e325b14e9dcc1a00/) | ⚠️ Unaudited |
| PositionReader | unknown | arbitrum | n/a | [`0x8b4060...2a67e0`](./contracts/arbitrum-42161/0x8b406047a942db7f2c15839b11e3adc7b62a67e0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x2e7983...da6589`](./contracts/arbitrum-42161/0x2e7983f9a1d08c57989eea20adc9242321da6589/) | ⚠️ Unaudited |
| PythAdapter | unknown | arbitrum | n/a | [`0x343383...20d242`](./contracts/arbitrum-42161/0x34338314236df25220b55f90f7e8fc30b620d242/) | ⚠️ Unaudited |
| RebalanceHLPHandler | unknown | arbitrum | n/a | [`0x146d67...9a3bf0`](./contracts/arbitrum-42161/0x146d674ca06f3d92b876b32b49c068a05f9a3bf0/) | ⚠️ Unaudited |
| RebalanceHLPService | unknown | arbitrum | n/a | [`0x83e051...a3ba03`](./contracts/arbitrum-42161/0x83e05128480e24409e4eec643dc0db921ba3ba03/) | ⚠️ Unaudited |
| RebalanceHLPv2Handler | unknown | arbitrum | n/a | [`0x72233e...d41dec`](./contracts/arbitrum-42161/0x72233e5498e3fb5fa468497b7e05dc8b03d41dec/) | ⚠️ Unaudited |
| RebalanceHLPv2Service | unknown | arbitrum | n/a | [`0x00ad8b...9075cb`](./contracts/arbitrum-42161/0x00ad8b677cff674440fd9534db6cbce60f9075cb/) | ⚠️ Unaudited |
| RemoteHMX | unknown | arbitrum | n/a | [`0x83d6c8...435140`](./contracts/arbitrum-42161/0x83d6c8c06ac276465e4c92e7ac8c23740f435140/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | [`0x0e303e...ff440d`](./contracts/arbitrum-42161/0x0e303e9d98a3f88097b07befb510aa7a97ff440d/) | ⚠️ Unaudited |
| SGE | unknown | arbitrum | n/a | [`0x774867...cd85c9`](./contracts/arbitrum-42161/0x7748671b218974a4a3a6b023bea7fe3659cd85c9/) | ⚠️ Unaudited |
| StakedGlpOracleAdapter | unknown | arbitrum | n/a | [`0x0650b4...c0ec98`](./contracts/arbitrum-42161/0x0650b4b0bc6c032b69bd5c0b15496f6555c0ec98/) | ⚠️ Unaudited |
| StakedGlpStrategy | unknown | arbitrum | n/a | [`0x0a4536...219f5c`](./contracts/arbitrum-42161/0x0a4536be713989a355f77fd46fd21e737c219f5c/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0xa6f6fb...679f28`](./contracts/arbitrum-42161/0xa6f6fbd3ff92fcb2f7e3a419bb9861c96e679f28/) | ⚠️ Unaudited |
| StakingLocker | unknown | arbitrum | n/a | [`0x7bf98f...951dcd`](./contracts/arbitrum-42161/0x7bf98f7ea78b228a0b40057c15f8137c66951dcd/) | ⚠️ Unaudited |
| StakingMigrator | unknown | arbitrum | n/a | [`0x0b282b...a09047`](./contracts/arbitrum-42161/0x0b282b1f4164f7aa130d452e964bd14e47a09047/) | ⚠️ Unaudited |
| SurgeFeedableRewarder | unknown | arbitrum | n/a | [`0x194028...977f3b`](./contracts/arbitrum-42161/0x194028eaf9a13919d99a87165ad925d85d977f3b/) | ⚠️ Unaudited |
| SwitchCollateralRouter | unknown | arbitrum | n/a | [`0x004d72...bc6a9b`](./contracts/arbitrum-42161/0x004d72a192db408b9a7c647c6a3c888dfebc6a9b/) | ⚠️ Unaudited |
| TGE | unknown | arbitrum | n/a | [`0xe2282a...672a8d`](./contracts/arbitrum-42161/0xe2282a50682a1938e0064c4ffdf3001394672a8d/) | ⚠️ Unaudited |
| TLCHook | unknown | arbitrum | n/a | [`0x7aa073...57582e`](./contracts/arbitrum-42161/0x7aa07319774074d93ba7d265ecd864c49357582e/) | ⚠️ Unaudited |
| TLCStaking | unknown | arbitrum | n/a | [`0x03bac3...571bba`](./contracts/arbitrum-42161/0x03bac369e37a78420ddc284ff6e7e94d15571bba/) | ⚠️ Unaudited |
| TradeHelper | unknown | arbitrum | n/a | [`0x127baf...72b0bb`](./contracts/arbitrum-42161/0x127baf4e9d0f0c560dd7aadfc8fff5958a72b0bb/) | ⚠️ Unaudited |
| TradeOrderHelper | unknown | arbitrum | n/a | [`0x7a0a7e...e1e942`](./contracts/arbitrum-42161/0x7a0a7e50abf998173f1aa3bf8dc8a6c5d0e1e942/) | ⚠️ Unaudited |
| TraderLoyaltyCredit | unknown | arbitrum | n/a | [`0x1fdcb0...1abba6`](./contracts/arbitrum-42161/0x1fdcb022daeca9326a37a318f143a0fed61abba6/) | ⚠️ Unaudited |
| TradeService | unknown | arbitrum | n/a | [`0x5bf731...57413a`](./contracts/arbitrum-42161/0x5bf7315a6e50079327de2c31270e094b2a57413a/) | ⚠️ Unaudited |
| TradingStaking | unknown | arbitrum | n/a | [`0x0e4db5...2537aa`](./contracts/arbitrum-42161/0x0e4db5a37903a9109d70c5e734443773f82537aa/) | ⚠️ Unaudited |
| TradingStakingHook | unknown | arbitrum | n/a | [`0x68f99f...92265d`](./contracts/arbitrum-42161/0x68f99f972a63d51c29b08511c59b658a8c92265d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x1a7565...bc72bd`](./contracts/arbitrum-42161/0x1a7565f1f61db82552eea0ad7690a7e76fbc72bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x26e7db...b466fc`](./contracts/arbitrum-42161/0x26e7db328167aef8d8231135f444d0674cb466fc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x8e5d08...dfef22`](./contracts/arbitrum-42161/0x8e5d083ba7a46f13afccc27bfb7da372e9dfef22/) | ⚠️ Unaudited |
| UniV3LiquidityFreezer | unknown | arbitrum | n/a | [`0xa3dc2f...db6c3f`](./contracts/arbitrum-42161/0xa3dc2f156a6fc94bfe7fd9fea2fa6c6cb8db6c3f/) | ⚠️ Unaudited |
| UniV3LiquidityMining | unknown | arbitrum | n/a | [`0x032a49...632284`](./contracts/arbitrum-42161/0x032a49e27c44f357e335723b2c5575fbc8632284/) | ⚠️ Unaudited |
| UniV3LMUpkeepKeeper | unknown | arbitrum | n/a | [`0x017a18...9b2e7c`](./contracts/arbitrum-42161/0x017a185c14254626a240d94f703b7e01c59b2e7c/) | ⚠️ Unaudited |
| VaultStorage | unknown | arbitrum | n/a | [`0x144fb9...332362`](./contracts/arbitrum-42161/0x144fb991dc200fda881915ea3839f91b23332362/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | [`0x28fc5a...adbaf2`](./contracts/arbitrum-42161/0x28fc5aa56ede3fb0c8df15d8118da8fa54adbaf2/) | ⚠️ Unaudited |
| WstEthUsdPriceAdapter | unknown | arbitrum | n/a | [`0x9ed519...7467e6`](./contracts/arbitrum-42161/0x9ed51928ec61c4e5dc0d48b38c828f89687467e6/) | ⚠️ Unaudited |

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
| [Audits & Contracts](https://docs.hmx.org/hmx/about-hmx-protocol/audits-and-contracts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/TradeOnDESK/v2-evm/1e781f5cd52e88509da0b66742076c26dcc0f895/audits/CantinaManaged-HMX-final.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/TradeOnDESK/v2-evm/1e781f5cd52e88509da0b66742076c26dcc0f895/audits/HMX_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HMX Security Assessment-FINAL.pdf](https://github.com/HMXOrg/v2-evm/blob/main/audits/HMX%20Security%20Assessment-FINAL.pdf) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adaptive-fee-audit-cantina.pdf](https://github.com/HMXOrg/v2-evm/blob/main/audits/adaptive-fee-audit-cantina.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19703] Audits & Contracts
- [19704] Rendered PDF capture
- [19705] Rendered PDF capture
- [19708] HMX Security Assessment-FINAL.pdf
- [19709] adaptive-fee-audit-cantina.pdf

Fork inheritance lineage and inherited audits are included when available.
