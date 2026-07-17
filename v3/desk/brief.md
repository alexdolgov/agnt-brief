# Agentic Audit Brief: DESK

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DESK (`desk`)
- Website: [https://desk.exchange/](https://desk.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, polygon
- Contract surface: 94 unique implementations (94 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $246,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DESK in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/94
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 94
- Raw deployments: 94
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134445 | `0x939a2e2331ef6d2e605b7f23b5e431b0d6cb4415` | ⚠️ Unaudited |
| AdHocMintRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134474 | `0x654dcbe6e0fd6735fc3548d752ee9ce22c31ce12` | ⚠️ Unaudited |
| bDESK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134426 | `0x4dd2b483b947a4fa711689a2baf9b42d170b485f` | ⚠️ Unaudited |
| BotHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134418 | `0x42b701290fc04e8fa69431ce377b95beabc335c8` | ⚠️ Unaudited |
| BulkSendErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134440 | `0x80825a51afa8bfafe6b0640f605c169c5f58d670` | ⚠️ Unaudited |
| CalcPriceLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134443 | `0x8ce09f789235bdca8ec2eee990b11c42e35909fc` | ⚠️ Unaudited |
| Calculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134469 | `0x0fde910552977041dc8c7ef652b5a07b40b9e006` | ⚠️ Unaudited |
| ChronicleOraclePriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134454 | `0xcf1053dec1a7eff5710b9420179d089f8461da75` | ⚠️ Unaudited |
| CIXPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134408 | `0x222918d230c5a29f334ffb3020ad57b8cebd1b82` | ⚠️ Unaudited |
| Compounder2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134460 | `0x388a954c6b7282427aa2e8af504504fa6ba89432` | ⚠️ Unaudited |
| ConfigStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134420 | `0x43cbd00a81aea737536a9c9779edf0617d01f075` | ⚠️ Unaudited |
| ConvertedGlpStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134431 | `0x642dccee2c90986a7472510a6a4e1f4126a76432` | ⚠️ Unaudited |
| CrossMarginHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134450 | `0xa4afc4b2ee640bb6d6b87a0ac7348ba6aea57cf5` | ⚠️ Unaudited |
| CrossMarginService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134459 | `0x0a8d9c0a4a039dde3cb825ff4c2f063f8b54313a` | ⚠️ Unaudited |
| DESK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134421 | `0x444ad70fd382e4ee8ba269f84bd4aefb813ebc10` | ⚠️ Unaudited |
| DeskExchanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134413 | `0x2c18464a21fbad7be825ce12049581645d6d94c7` | ⚠️ Unaudited |
| DistributeSTIPARBStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134392 | `0x02c7ac8c43cda40526f7182a4fb2b11774ec8f29` | ⚠️ Unaudited |
| DLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134446 | `0x96dd1f2c6da5f693001e71a8323a6a8a0fea20d6` | ⚠️ Unaudited |
| EcoPyth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134468 | `0x06d35ecf6a2799f99482c6f15f146326dd0ff1c6` | ⚠️ Unaudited |
| EcoPyth2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134444 | `0x8dc6a40465128b20dc712c6b765a5171ef30bb7b` | ⚠️ Unaudited |
| EcoPythCalldataBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134422 | `0x44e31321e748ddc768a019aee4c62c14e53424f1` | ⚠️ Unaudited |
| EcoPythCalldataBuilder3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134453 | `0xc1353b3bff066c441f631daec245b1f5c08a7f07` | ⚠️ Unaudited |
| EpochFeedableRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134402 | `0x1172d67bcc3b7a08a5b57649c01a6fd0056454c8` | ⚠️ Unaudited |
| ERC20ApproveStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134406 | `0x157539f72a361efbe9f8102f342f9e10f3c073ac` | ⚠️ Unaudited |
| EsHMX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134476 | `0x8a011ef14a92aa37ce82a4c95004a70730b6ac38` | ⚠️ Unaudited |
| EsHMXAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134410 | `0x24867dffc3add1e8bb442b9d6e04bb95bd46c09b` | ⚠️ Unaudited |
| Ext01Handler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134458 | `0x04bef154a57b8e884d53f2b8f141b34825b448da` | ⚠️ Unaudited |
| ExternalRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134461 | `0xccddebd0ebe02edf37ff36bd3b47bbebc746bcf2` | ⚠️ Unaudited |
| FeedableRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134456 | `0x020594b2257baf2e8c2cd17a89de475e67d1091e` | ⚠️ Unaudited |
| GasKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134409 | `0x230f5c47445dcf5b298bc843fb6b6d7033ffe088` | ⚠️ Unaudited |
| GasService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134415 | `0x2f3ecc06ac080d15246afc60bed1e70ef4384ca8` | ⚠️ Unaudited |
| GlpDexter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134417 | `0x42870d0079cd7acb71b3fe96ea4d77fbd1ccc820` | ⚠️ Unaudited |
| GlpPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134447 | `0x9934d2cc22e9905b511e13e35148b9ef9ada6cd0` | ⚠️ Unaudited |
| GmPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134433 | `0x6a5091402d704d760a8e6198796fee6416d5a577` | ⚠️ Unaudited |
| HLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134416 | `0x3d5e3f37ff6dd95abeebfef04124b90f143a36fd` | ⚠️ Unaudited |
| HlpPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134391 | `0x0266868d1c144a7534513f38b816c1aade4030a2` | ⚠️ Unaudited |
| HLPRebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134452 | `0xac60da1cd4d69e0a515d08df06644fb424380b13` | ⚠️ Unaudited |
| HLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134389 | `0x008771d9c0f0bdb65dfb9f9f81733b57c3e73b46` | ⚠️ Unaudited |
| HMXStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134419 | `0x4381e041f39f96b71b0699ea7a1057cf1344c48a` | ⚠️ Unaudited |
| IntentHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134428 | `0x5667d4e5e634d288fcf1e3330be91e403a7245b0` | ⚠️ Unaudited |
| LDESK2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134398 | `0x0ce6349c2f89d644c8920bf0b57edb8b42450004` | ⚠️ Unaudited |
| LDESKVester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134478 | `0xa0ca27169f9dea34f9d63b9a794fb44ec68a5f72` | ⚠️ Unaudited |
| LHMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134396 | `0x09a928e07d289d733822d6df3db3e6a69a2b13c4` | ⚠️ Unaudited |
| LHMX2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134425 | `0x4b0a71950f6d1fa5632245c134021d5236ade7c3` | ⚠️ Unaudited |
| LHMX3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134455 | `0xf98ff9875b7256f3712613b5cb34412eb3cd6e9a` | ⚠️ Unaudited |
| LHMXVester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134467 | `0x08e12da7413a839e3d2e6e3e0a568ad233eb687d` | ⚠️ Unaudited |
| LimitTradeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134427 | `0x506850645c1d25eafe1cbcb6e564f3ae030891e1` | ⚠️ Unaudited |
| LimitTradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134400 | `0x0e7c0d58f2e4a6b28597d51a34c4b7acda1ee719` | ⚠️ Unaudited |
| LiquidationService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134470 | `0x34e89ded96340a177856fd822366afc584438750` | ⚠️ Unaudited |
| LiquidityHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134394 | `0x0519f810783a85343eb6c92aa24de5bbe668a4e6` | ⚠️ Unaudited |
| LiquidityService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134412 | `0x2bb8ece609a55893ee1591ae0099de9ccb3926d9` | ⚠️ Unaudited |
| MarketToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134423 | `0x47c031236e19d024b42f8ae6780e44a573170703` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134457 | `0xe79b9602b436c6d5b4d8cfcf3e4f590ed8a545ab` | ⚠️ Unaudited |
| OnChainPriceLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134439 | `0x7d8eaa8df02526c711f4ff1f97f6c5324212dbba` | ⚠️ Unaudited |
| OracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134472 | `0x9c83e1046da4727f05c6764c017c6e1757596592` | ⚠️ Unaudited |
| OrderbookOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134401 | `0x0f1e64330618ea1befe139b7f26a1e04629a8556` | ⚠️ Unaudited |
| OrderReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134435 | `0x77e41b34b1a58463f554d6d013967d553d11162a` | ⚠️ Unaudited |
| PaymentKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134430 | `0x5dfed4e9315adc768380827e899822453f70068e` | ⚠️ Unaudited |
| PerpStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134424 | `0x492911d7b0165cc03cd3dd30e325b14e9dcc1a00` | ⚠️ Unaudited |
| PositionReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134442 | `0x8b406047a942db7f2c15839b11e3adc7b62a67e0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134414 | `0x2e7983f9a1d08c57989eea20adc9242321da6589` | ⚠️ Unaudited |
| PythAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134463 | `0x34338314236df25220b55f90f7e8fc30b620d242` | ⚠️ Unaudited |
| RebalanceHLPHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134405 | `0x146d674ca06f3d92b876b32b49c068a05f9a3bf0` | ⚠️ Unaudited |
| RebalanceHLPService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134465 | `0x83e05128480e24409e4eec643dc0db921ba3ba03` | ⚠️ Unaudited |
| RebalanceHLPv2Handler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134471 | `0x72233e5498e3fb5fa468497b7e05dc8b03d41dec` | ⚠️ Unaudited |
| RebalanceHLPv2Service | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134479 | `0x00ad8b677cff674440fd9534db6cbce60f9075cb` | ⚠️ Unaudited |
| RemoteHMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134441 | `0x83d6c8c06ac276465e4c92e7ac8c23740f435140` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134473 | `0x0e303e9d98a3f88097b07befb510aa7a97ff440d` | ⚠️ Unaudited |
| SGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134434 | `0x7748671b218974a4a3a6b023bea7fe3659cd85c9` | ⚠️ Unaudited |
| StakedGlpOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134395 | `0x0650b4b0bc6c032b69bd5c0b15496f6555c0ec98` | ⚠️ Unaudited |
| StakedGlpStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134477 | `0x0a4536be713989a355f77fd46fd21e737c219f5c` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134451 | `0xa6f6fbd3ff92fcb2f7e3a419bb9861c96e679f28` | ⚠️ Unaudited |
| StakingLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134438 | `0x7bf98f7ea78b228a0b40057c15f8137c66951dcd` | ⚠️ Unaudited |
| StakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134397 | `0x0b282b1f4164f7aa130d452e964bd14e47a09047` | ⚠️ Unaudited |
| SurgeFeedableRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134407 | `0x194028eaf9a13919d99a87165ad925d85d977f3b` | ⚠️ Unaudited |
| SwitchCollateralRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134388 | `0x004d72a192db408b9a7c647c6a3c888dfebc6a9b` | ⚠️ Unaudited |
| TGE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134481 | `0xe2282a50682a1938e0064c4ffdf3001394672a8d` | ⚠️ Unaudited |
| TLCHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134437 | `0x7aa07319774074d93ba7d265ecd864c49357582e` | ⚠️ Unaudited |
| TLCStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134480 | `0x03bac369e37a78420ddc284ff6e7e94d15571bba` | ⚠️ Unaudited |
| TradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134403 | `0x127baf4e9d0f0c560dd7aadfc8fff5958a72b0bb` | ⚠️ Unaudited |
| TradeOrderHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134436 | `0x7a0a7e50abf998173f1aa3bf8dc8a6c5d0e1e942` | ⚠️ Unaudited |
| TraderLoyaltyCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134466 | `0x1fdcb022daeca9326a37a318f143a0fed61abba6` | ⚠️ Unaudited |
| TradeService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134429 | `0x5bf7315a6e50079327de2c31270e094b2a57413a` | ⚠️ Unaudited |
| TradingStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134399 | `0x0e4db5a37903a9109d70c5e734443773f82537aa` | ⚠️ Unaudited |
| TradingStakingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134432 | `0x68f99f972a63d51c29b08511c59b658a8c92265d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134462 | `0x1a7565f1f61db82552eea0ad7690a7e76fbc72bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134464 | `0x26e7db328167aef8d8231135f444d0674cb466fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-134475 | `0x8e5d083ba7a46f13afccc27bfb7da372e9dfef22` | ⚠️ Unaudited |
| UniV3LiquidityFreezer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134449 | `0xa3dc2f156a6fc94bfe7fd9fea2fa6c6cb8db6c3f` | ⚠️ Unaudited |
| UniV3LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134393 | `0x032a49e27c44f357e335723b2c5575fbc8632284` | ⚠️ Unaudited |
| UniV3LMUpkeepKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134390 | `0x017a185c14254626a240d94f703b7e01c59b2e7c` | ⚠️ Unaudited |
| VaultStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134404 | `0x144fb991dc200fda881915ea3839f91b23332362` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134411 | `0x28fc5aa56ede3fb0c8df15d8118da8fa54adbaf2` | ⚠️ Unaudited |
| WstEthUsdPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-134448 | `0x9ed51928ec61c4e5dc0d48b38c828f89687467e6` | ⚠️ Unaudited |

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
| [Audits & Contracts](https://docs.hmx.org/hmx/about-hmx-protocol/audits-and-contracts.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 5 | low |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/TradeOnDESK/v2-evm/1e781f5cd52e88509da0b66742076c26dcc0f895/audits/CantinaManaged-HMX-final.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/TradeOnDESK/v2-evm/1e781f5cd52e88509da0b66742076c26dcc0f895/audits/HMX_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [HMX Security Assessment-FINAL.pdf](https://github.com/HMXOrg/v2-evm/blob/main/audits/HMX%20Security%20Assessment-FINAL.pdf) | Unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [adaptive-fee-audit-cantina.pdf](https://github.com/HMXOrg/v2-evm/blob/main/audits/adaptive-fee-audit-cantina.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19703] Audits & Contracts — no match: The document is a documentation page listing contracts with Blast Points operators, not an audit report. No audit scope or date found.
- [19704] Rendered PDF capture — no match: The report does not have a dedicated scope section, but contract names were extracted from findings context and file paths mentioned throughout the report. The audit date is from the cover page: October 2, 2023.
- [19705] Rendered PDF capture — no match: Extracted contract names from findings and file paths in the audit report. The audit date is from the cover page: 'Jun 27, 2023'.
- [19708] HMX Security Assessment-FINAL.pdf — no match: Extracted contract names from scope and findings sections. Audit date from title.
- [19709] adaptive-fee-audit-cantina.pdf — no match: Contracts extracted from finding contexts; no explicit scope section but all referenced contracts are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audits & Contracts | ybETH | unmatched — not counted | — | listed in Blast Points table | no |
| Audits & Contracts | ybUSDB | unmatched — not counted | — | listed in Blast Points table | no |
| Audits & Contracts | CrossMarginHandler | unmatched — not counted | — | listed in Blast Points table | no |
| Audits & Contracts | LimitTradeHandler | unmatched — not counted | — | listed in Blast Points table | no |
| Audits & Contracts | LiquidityHandler | unmatched — not counted | — | listed in Blast Points table | no |
| Rendered PDF capture | Calculator | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TradeService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | LiquidationService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | Ext01Handler | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | CrossMarginHandler | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | LiquidityHandler | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | BotHandler | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | LimitTradeHandler | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ConfigStorage | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | HMXLib | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | HLP | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TLCStaking | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TraderLoyaltyCredit | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | OrderReader | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | SwitchCollateralRouter | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | CrossMarginService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TradeHelper | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | PythAdapter | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | StakedGlpOracleAdapter | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | RebalanceHLPHandler | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | PerpStorage | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | VaultStorage | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | LimitTradeHelper | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | RebalanceHLPService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TickMath | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | FullMath | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | IHLP | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ITraderLoyaltyCredit | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | IVaultStorage | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | IConfigStorage | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ITradeService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ILiquidityService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ILiquidationService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ICrossMarginService | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ITradeHelper | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ICalculator | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | EpochFeedableRewarder | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | FeedableRewarder | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TLCHook | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | TradingStakingHook | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | LeanPyth | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | LiquidityHandler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | Calculator | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | TradeHelper | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | CrossMarginService | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | ConvertedGlpStrategy | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | BotHandler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | EcoPyth | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | CrossMarginHandler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | HMXLib | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | MarketTradeHandler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | TradeService | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | ConfigStorage | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | TradingStakingHook | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | LiquidityService | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | VaultStorage | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| Rendered PDF capture | LimitTradeHandler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| HMX Security Assessment-FINAL.pdf | VaultStorage | unmatched — not counted | — | listed in scope and findings | no |
| HMX Security Assessment-FINAL.pdf | TraderLoyaltyCredit | unmatched — not counted | — | listed in scope and findings | no |
| HMX Security Assessment-FINAL.pdf | CrossMarginHandler | unmatched — not counted | — | listed in scope and findings | no |
| HMX Security Assessment-FINAL.pdf | BaseAccount | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | HmxAccount | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | LimitTradeHandler | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | Compounder | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | HLP | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | BotHandler | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | LiquidityHandler | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | MarketTradeHandler | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | TradeHelper | unmatched — not counted | — | listed in findings | no |
| HMX Security Assessment-FINAL.pdf | PerpStorage | unmatched — not counted | — | listed in findings | no |
| adaptive-fee-audit-cantina.pdf | PerpStorage | unmatched — not counted | — | Context in findings: PerpStorage.sol#L325-L336, PerpStorage.sol#L299-L323 | no |
| adaptive-fee-audit-cantina.pdf | TradeHelper | unmatched — not counted | — | Context in findings: TradeHelper.sol#L1018-L1035 | no |
| adaptive-fee-audit-cantina.pdf | TradeService | unmatched — not counted | — | Context in findings: TradeService.sol#L794 | no |
| adaptive-fee-audit-cantina.pdf | AdaptiveFeeCalculator | unmatched — not counted | — | Context in findings: AdaptiveFeeCalculator.sol#L56-L60, AdaptiveFeeCalculator.sol#L41 | no |
| adaptive-fee-audit-cantina.pdf | OrderbookOracle | unmatched — not counted | — | Context in findings: OrderbookOracle.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 80 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [19703] Audits & Contracts
- [19704] Rendered PDF capture
- [19705] Rendered PDF capture
- [19708] HMX Security Assessment-FINAL.pdf
- [19709] adaptive-fee-audit-cantina.pdf

Fork inheritance lineage and inherited audits are included when available.
