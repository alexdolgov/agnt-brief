# Agentic Audit Brief: UniFarm

## Project Overview

- Project: UniFarm (`unifarm`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.407Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum, polygon
- Contract surface: 293 unique implementations (293 raw deployments)
- DeFi Llama TVL: $158,086.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 292 project-authored contract(s) across 3 chain(s); 61 ERC20 tokens, 3 ERC721 NFTs, 4 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 40 common project-authored base contract(s) (erc20burnable, erc20pausable, upgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 293; live-surface contracts included: 293 (291 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/291 (0.0%)
- Deployed-live implementations: 291 of 293 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/293
- Verified + Unaudited implementations: 293
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 293
- Raw deployments: 293
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (293)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x1536cc...82c64b`](./contracts/ethereum-1/0x1536cc753d2ae45fcaf3a6a6e6b891073682c64b/) | ⚠️ Unaudited |
| AdvisorsVesting | unknown | bsc | n/a | [`0x48c9d4...d69bb9`](./contracts/bsc-56/0x48c9d463b02e8f2aa7337278b8af0e542cd69bb9/) | ⚠️ Unaudited |
| AllMarkets | unknown | ethereum | n/a | [`0x8dcaa7...689ae6`](./contracts/ethereum-1/0x8dcaa7d3a38073565abb2501135584af2c689ae6/) | ⚠️ Unaudited |
| AllMarketsV2 | unknown | ethereum | n/a | [`0xc3ed79...10608f`](./contracts/ethereum-1/0xc3ed798159e449d224de05515385f86c1d10608f/) | ⚠️ Unaudited |
| AlphaIDO | unknown | bsc | n/a | [`0x1b1520...f23191`](./contracts/bsc-56/0x1b1520ede3f25c3fd396eff89488a510cbf23191/) | ⚠️ Unaudited |
| AmtCalc | unknown | bsc | n/a | [`0xa39e20...41eccf`](./contracts/bsc-56/0xa39e20bf535171e51e8a57be7f885162bb41eccf/) | ⚠️ Unaudited |
| ARCONA | unknown | bsc | n/a | [`0x8fc453...d5faab`](./contracts/bsc-56/0x8fc4532be3003fb5a3a2f9afc7e95b3bfbd5faab/) | ⚠️ Unaudited |
| AuctionEscrow | unknown | polygon | n/a | [`0x1a753d...98f0d3`](./contracts/polygon-137/0x1a753dbee5dd057729f3ff04f2327e4c4198f0d3/) | ⚠️ Unaudited |
| BasicLocker | unknown | ethereum | n/a | [`0xcc1b32...ec6ef9`](./contracts/ethereum-1/0xcc1b320575f3fca853f71c6a88dcab1084ec6ef9/) | ⚠️ Unaudited |
| BattleVerseCoin | unknown | bsc | n/a | [`0x9bee0c...5bbd12`](./contracts/bsc-56/0x9bee0c15676a65ef3c8cdb38cb3dd31c675bbd12/) | ⚠️ Unaudited |
| BEP20 | unknown | bsc | n/a | [`0xab24ff...81b3aa`](./contracts/bsc-56/0xab24fffaabfcbab28e5b74c302dc64041581b3aa/) | ⚠️ Unaudited |
| BEP20FOR | unknown | bsc | n/a | [`0x658a10...5b0539`](./contracts/bsc-56/0x658a109c5900bc6d2357c87549b651670e5b0539/) | ⚠️ Unaudited |
| BEP20Token | unknown | bsc | n/a | [`0x5cdeab...3876bf`](./contracts/bsc-56/0x5cdeab6c48c038da0415aea8930472a2bc3876bf/) | ⚠️ Unaudited |
| BetaIDO | unknown | bsc | n/a | [`0xc4eccf...0511ef`](./contracts/bsc-56/0xc4eccf2a27651c329fb6520d63361cd1a20511ef/) | ⚠️ Unaudited |
| BitcashPay | unknown | ethereum | n/a | [`0xe04770...7e83ac`](./contracts/ethereum-1/0xe047705117eb07e712c3d684f5b18e74577e83ac/) | ⚠️ Unaudited |
| BLOT | unknown | ethereum | n/a | [`0x951c85...545d87`](./contracts/ethereum-1/0x951c853c2b0a2a79785742550e6bef1c5e545d87/) | ⚠️ Unaudited |
| Bollycoin | unknown | ethereum | n/a | [`0x6bd361...e4ea99`](./contracts/ethereum-1/0x6bd361e10c1afed0d95259e7c0115f3a60e4ea99/) | ⚠️ Unaudited |
| BoostContract | unknown | polygon | n/a | [`0x136d48...1e3ddf`](./contracts/polygon-137/0x136d48080d8432d202c7f5158cf4e3eff61e3ddf/) | ⚠️ Unaudited |
| Bridge | unknown | bsc | n/a | [`0x5d96d4...79bfc6`](./contracts/bsc-56/0x5d96d4287d1ff115ee50fac0526cf43ecf79bfc6/) | ⚠️ Unaudited |
| BridgeAssist | unknown | bsc | n/a | [`0x3a8ba0...da217f`](./contracts/bsc-56/0x3a8ba020eb4dba5a4f9a0048e753aeddbcda217f/) | ⚠️ Unaudited |
| BridgeAssistant | unknown | bsc | n/a | [`0x5006e2...60840b`](./contracts/bsc-56/0x5006e251b5c6bac3ef708f3f883861cdfd60840b/) | ⚠️ Unaudited |
| BridgeAssistB | unknown | bsc | n/a | [`0x2e68cb...4f1d7f`](./contracts/bsc-56/0x2e68cb4123adcd9ce71dceb2d10af3dd6a4f1d7f/) | ⚠️ Unaudited |
| BridgeMintableToken | unknown | bsc | n/a | [`0x4ef285...7e2ff9`](./contracts/bsc-56/0x4ef285c8cbe52267c022c39da98b97ca4b7e2ff9/) | ⚠️ Unaudited |
| BridgeUpgradeable | unknown | polygon | n/a | [`0x04f3dd...d2d26b`](./contracts/polygon-137/0x04f3dd4f010620fcaf0188046c346b5fe9d2d26b/) | ⚠️ Unaudited |
| CBridge | unknown | bsc | n/a | [`0x841ce4...d0738c`](./contracts/bsc-56/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | ⚠️ Unaudited |
| CentaurFactory | unknown | ethereum | n/a | [`0x0a6f16...407ff8`](./contracts/ethereum-1/0x0a6f16ed7895ec475f62dc8613dbaa84ee407ff8/) | ⚠️ Unaudited |
| CentaurFactoryTimeLock | unknown | ethereum | n/a | [`0x5f2c9e...2e09cb`](./contracts/ethereum-1/0x5f2c9e137f780eb6edfc0475ca96d4e96c2e09cb/) | ⚠️ Unaudited |
| CentaurLiquidityMining | unknown | ethereum | n/a | [`0xa4c2c3...86e5aa`](./contracts/ethereum-1/0xa4c2c35c218b6602de1bacd52c7b15955286e5aa/) | ⚠️ Unaudited |
| CentaurMath | unknown | ethereum | n/a | [`0xd0ba35...c2012e`](./contracts/ethereum-1/0xd0ba351a97d90484dd7eab3c95fb7b9839c2012e/) | ⚠️ Unaudited |
| CentaurPool | unknown | ethereum | n/a | [`0x5ed972...ac2f3a`](./contracts/ethereum-1/0x5ed972254112ce134b0ac6816d4fa97c02ac2f3a/) | ⚠️ Unaudited |
| CentaurStakingV1 | unknown | ethereum | n/a | [`0x512887...a81b47`](./contracts/ethereum-1/0x512887d252bb4b7be4836d327163905aaea81b47/) | ⚠️ Unaudited |
| CentaurStakingV2 | unknown | ethereum | n/a | [`0x436e36...81c352`](./contracts/ethereum-1/0x436e36af7f907ef0f8144fae9bdf95853b81c352/) | ⚠️ Unaudited |
| CentaurToken | unknown | ethereum | n/a | [`0x030424...9c064b`](./contracts/ethereum-1/0x03042482d64577a7bdb282260e2ea4c8a89c064b/) | ⚠️ Unaudited |
| Cfl365Staking | unknown | ethereum | n/a | [`0x8eead5...cc2660`](./contracts/ethereum-1/0x8eead57c603fb37b9558c91e2238d33109cc2660/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| CinemaDraftToken | unknown | bsc | n/a | [`0x6fee36...89d17c`](./contracts/bsc-56/0x6fee36ad1041fe38fc6633c5c79297630389d17c/) | ⚠️ Unaudited |
| CirculatingSupplyCounter | unknown | bsc | n/a | [`0x2fa3cb...8cf163`](./contracts/bsc-56/0x2fa3cb5e2c28b4dae1adb4a5411780fb958cf163/) | ⚠️ Unaudited |
| Claimer | unknown | bsc | n/a | [`0x13e3d8...222e83`](./contracts/bsc-56/0x13e3d873ee621c65d2f783ecf3c625be60222e83/) | ⚠️ Unaudited |
| CloneFactory | unknown | ethereum | n/a | [`0x0deb1a...bfdaac`](./contracts/ethereum-1/0x0deb1a88002d54ae993e9dc341a7e9d78fbfdaac/) | ⚠️ Unaudited |
| CntrBalance | unknown | ethereum | n/a | [`0x526065...bd1840`](./contracts/ethereum-1/0x526065badc251a4c8e0d3bde9a6d107f2dbd1840/) | ⚠️ Unaudited |
| Cohort | unknown | ethereum | n/a | [`0x4d1cec...fa6fc0`](./contracts/ethereum-1/0x4d1cec3f30ad9b1a7f69e510016a5d790cfa6fc0/) | ⚠️ Unaudited |
| CohortFactory | unknown | ethereum | n/a | [`0xb558c3...6a3a80`](./contracts/ethereum-1/0xb558c3c7af7f1d437fe82914426a63c13c6a3a80/) | ⚠️ Unaudited |
| CollgToken | unknown | bsc | n/a | [`0x559314...b3376c`](./contracts/bsc-56/0x5593143eae5000983bb015b2e0ac35c125b3376c/) | ⚠️ Unaudited |
| CollToken | unknown | bsc | n/a | [`0xa4cb04...0b3493`](./contracts/bsc-56/0xa4cb040b85e94f5c0c32ea1151b20d3ab40b3493/) | ⚠️ Unaudited |
| Comp | unknown | polygon | n/a | [`0x1eb754...34b26b`](./contracts/polygon-137/0x1eb754b8355d3185a7429109bde75e473434b26b/) | ⚠️ Unaudited |
| COVToken | unknown | bsc | n/a | [`0x0f237d...9b01c3`](./contracts/bsc-56/0x0f237db17aa4e6de062e6f052bd9c805789b01c3/) | ⚠️ Unaudited |
| DaoStakeContract | unknown | ethereum | n/a | [`0xfa70f4...63af7f`](./contracts/ethereum-1/0xfa70f492d9f4fc28c8d6b9e65eac0b0aa363af7f/) | ⚠️ Unaudited |
| DarkPool | unknown | bsc | n/a | [`0x7e766f...10e6fb`](./contracts/bsc-56/0x7e766fe22e530a4a9d92a0e11579558d6510e6fb/) | ⚠️ Unaudited |
| DEFX | unknown | ethereum | n/a | [`0x5f4749...0f8eda`](./contracts/ethereum-1/0x5f474906637bdcda05f29c74653f6962bb0f8eda/) | ⚠️ Unaudited |
| DID | unknown | bsc | n/a | [`0xe40927...249c14`](./contracts/bsc-56/0xe409271e955078baa4788428a084fafdaa249c14/) | ⚠️ Unaudited |
| Distributor | unknown | bsc | n/a | [`0x3434f9...afe587`](./contracts/bsc-56/0x3434f9ffa621654901253246eddf72a25dafe587/) | ⚠️ Unaudited |
| EcosystemVesting | unknown | bsc | n/a | [`0x2ebd50...ca5f4d`](./contracts/bsc-56/0x2ebd5027fbecf870e680a705ab9ae53053ca5f4d/) | ⚠️ Unaudited |
| FabweltToken | unknown | polygon | n/a | [`0x23e8b6...e703b9`](./contracts/polygon-137/0x23e8b6a3f6891254988b84da3738d2bfe5e703b9/) | ⚠️ Unaudited |
| Factory | unknown | bsc | n/a | [`0x522a6e...06781d`](./contracts/bsc-56/0x522a6e7ebe4a1e05b08e3c0b3b75eb72e906781d/) | ⚠️ Unaudited |
| FeePoolUpgradeable | unknown | ethereum | n/a | [`0x04f3dd...d2d26b`](./contracts/ethereum-1/0x04f3dd4f010620fcaf0188046c346b5fe9d2d26b/) | ⚠️ Unaudited |
| Festaking | unknown | ethereum | n/a | [`0x22e86e...b0578c`](./contracts/ethereum-1/0x22e86e930729081f182d2840354dc04533b0578c/) | ⚠️ Unaudited |
| FITToken | unknown | bsc | n/a | [`0x1e933e...d1889d`](./contracts/bsc-56/0x1e933ecc8251259d473827dfed48c19f2ed1889d/) | ⚠️ Unaudited |
| FoundationVesting | unknown | bsc | n/a | [`0xb41e4f...8ad288`](./contracts/bsc-56/0xb41e4fc708c63186fa7973a22165181e7c8ad288/) | ⚠️ Unaudited |
| FrontierToken | unknown | ethereum | n/a | [`0xf8c352...b7793f`](./contracts/ethereum-1/0xf8c3527cc04340b208c854e985240c02f7b7793f/) | ⚠️ Unaudited |
| FrontierTokenVesting | unknown | ethereum | n/a | [`0xa70d82...21e4d7`](./contracts/ethereum-1/0xa70d82f271b38e931c5c16173fcf73560e21e4d7/) | ⚠️ Unaudited |
| GamyFi | unknown | polygon | n/a | [`0x40eb0a...d45b0c`](./contracts/polygon-137/0x40eb0aebdcb17971e10c60760f093aedfbd45b0c/) | ⚠️ Unaudited |
| GlobalDAOBondDepository | unknown | bsc | n/a | [`0x20fb04...c5a1a5`](./contracts/bsc-56/0x20fb045fd32e26fdf25c1aa706b742decbc5a1a5/) | ⚠️ Unaudited |
| GlobalDAOBondingCalculator | unknown | bsc | n/a | [`0x4b7f96...3852ce`](./contracts/bsc-56/0x4b7f96e842e687d737979cfa67eb3dba583852ce/) | ⚠️ Unaudited |
| GlobalDAOStaking | unknown | bsc | n/a | [`0x757269...4f6b61`](./contracts/bsc-56/0x757269cd2eb1cf4bda27f9fee401b9a3d64f6b61/) | ⚠️ Unaudited |
| GlobalDAOToken | unknown | bsc | n/a | [`0x025b45...dcb533`](./contracts/bsc-56/0x025b456efaa3bf8e9e7fea765c83779d96dcb533/) | ⚠️ Unaudited |
| GlobalDAOTreasury | unknown | bsc | n/a | [`0x47223d...47ac1f`](./contracts/bsc-56/0x47223dc45009de247f92112811beddb73747ac1f/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x6c3fa9...b2626f`](./contracts/ethereum-1/0x6c3fa918a9df293330dabb3d7ee3e5e7eeb2626f/) | ⚠️ Unaudited |
| GovernanceV2 | unknown | ethereum | n/a | [`0xcf0e52...83bb83`](./contracts/ethereum-1/0xcf0e5234eba5dbdcffcb1eadedc1d7fe0c83bb83/) | ⚠️ Unaudited |
| GVN | unknown | bsc | n/a | [`0x597662...679035`](./contracts/bsc-56/0x5976624b6a907b3cfe644b1fca63a4d636679035/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| Hexagon | unknown | ethereum | n/a | [`0x240f9e...3e175a`](./contracts/ethereum-1/0x240f9ed0339c4df0caf5b38965e1ff0bf93e175a/) | ⚠️ Unaudited |
| ICWIDO | unknown | bsc | n/a | [`0x1db9bd...fadc81`](./contracts/bsc-56/0x1db9bd623303eb975804dc709121c66a6cfadc81/) | ⚠️ Unaudited |
| IncentiveEventsReward | unknown | bsc | n/a | [`0x12e45e...6975df`](./contracts/bsc-56/0x12e45e323d44209fcb9afef0e5793b92296975df/) | ⚠️ Unaudited |
| IncentiveEventsRewardNew | unknown | bsc | n/a | [`0xaf2d36...94e390`](./contracts/bsc-56/0xaf2d365e668baafedcfd256c0fbbe519e594e390/) | ⚠️ Unaudited |
| InfoBundlerV1 | unknown | bsc | n/a | [`0x29cef8...a2e203`](./contracts/bsc-56/0x29cef8d789e9166524c46818b39dab6d92a2e203/) | ⚠️ Unaudited |
| InfoBundlerV2 | unknown | bsc | n/a | [`0x301ff6...9aa9e8`](./contracts/bsc-56/0x301ff6cbbb2445081768977e93ce84fb9c9aa9e8/) | ⚠️ Unaudited |
| InitializableProductProxy | unknown | bsc | n/a | [`0x664cdb...2c9d35`](./contracts/bsc-56/0x664cdbd10f1e58d01b2a84fd1e26f7542e2c9d35/) | ⚠️ Unaudited |
| IPO | unknown | bsc | n/a | [`0x1f9938...d955da`](./contracts/bsc-56/0x1f993896a6e00bf0c2a5fe6a9d6acb991fd955da/) | ⚠️ Unaudited |
| IPORefunder | unknown | bsc | n/a | [`0x3fc088...2802d4`](./contracts/bsc-56/0x3fc088c057e074d8ffcf264717a3db1c6e2802d4/) | ⚠️ Unaudited |
| JPOW | unknown | bsc | n/a | [`0xa8183d...8e4410`](./contracts/bsc-56/0xa8183d13420c2cf5d0a866275ea83447868e4410/) | ⚠️ Unaudited |
| KolectToken | unknown | ethereum | n/a | [`0xd084b8...cb3988`](./contracts/ethereum-1/0xd084b83c305dafd76ae3e1b4e1f1fe2ecccb3988/) | ⚠️ Unaudited |
| KUN | unknown | bsc | n/a | [`0xc40c96...3e6cdb`](./contracts/bsc-56/0xc40c96aa6ac78cbc3c58c500287c86f3a83e6cdb/) | ⚠️ Unaudited |
| LeaderboardContract | unknown | polygon | n/a | [`0xa59fb2...6b7d65`](./contracts/polygon-137/0xa59fb2739bb5256a09800a02c8e990f2f46b7d65/) | ⚠️ Unaudited |
| LiquidityVesting | unknown | bsc | n/a | [`0x26f7b5...3bb86f`](./contracts/bsc-56/0x26f7b5ff1b9856ecc4b14ea5ac75bf2f853bb86f/) | ⚠️ Unaudited |
| LotteryLikePool | unknown | ethereum | n/a | [`0x1a2218...f50a91`](./contracts/ethereum-1/0x1a22188b5f6faf7253a3defcc576884c0ff50a91/) | ⚠️ Unaudited |
| LotteryPricePool | unknown | bsc | n/a | [`0x3a8e9b...32ea02`](./contracts/bsc-56/0x3a8e9b18633001a115f5c37bdf30dc38d232ea02/) | ⚠️ Unaudited |
| LpStaking | unknown | bsc | n/a | [`0x7d92e5...ac642a`](./contracts/bsc-56/0x7d92e5e0ad904f4ab27009d4dcd23320f4ac642a/) | ⚠️ Unaudited |
| MappingToken | unknown | bsc | n/a | [`0x40986a...51af88`](./contracts/bsc-56/0x40986a85b4cfcdb054a6cbfb1210194fee51af88/) | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0x25cf9d...133e67`](./contracts/ethereum-1/0x25cf9d73b711bff4d3445a0f7f2e63ade5133e67/) | ⚠️ Unaudited |
| MarketCreationRewards | unknown | ethereum | n/a | [`0x9e376f...6155f7`](./contracts/ethereum-1/0x9e376f30d4e47cc4f792bfc682caeb5dc76155f7/) | ⚠️ Unaudited |
| MarketMakerVesting | unknown | bsc | n/a | [`0x95adae...cf0f62`](./contracts/bsc-56/0x95adaedcc0cbbdb8a1f379d3b288497feccf0f62/) | ⚠️ Unaudited |
| MarketRegistry | unknown | ethereum | n/a | [`0x495d3a...8401f0`](./contracts/ethereum-1/0x495d3a0530367ed4331833eae74b32d4848401f0/) | ⚠️ Unaudited |
| MarketRegistryNew | unknown | ethereum | n/a | [`0x3e56d3...0fae8c`](./contracts/ethereum-1/0x3e56d34ce0b6317810882142dec186fc3b0fae8c/) | ⚠️ Unaudited |
| MarketUtility | unknown | ethereum | n/a | [`0x8a8c01...73e847`](./contracts/ethereum-1/0x8a8c01a4d5f542a8efef517768dc4887e973e847/) | ⚠️ Unaudited |
| MarketUtilityV2 | unknown | ethereum | n/a | [`0xa42df2...a14ec5`](./contracts/ethereum-1/0xa42df2a8260b675948209ee0ab49d22f7da14ec5/) | ⚠️ Unaudited |
| MarketUtilityV2_1 | unknown | ethereum | n/a | [`0xf67afd...7b9f77`](./contracts/ethereum-1/0xf67afd75433fccca272c3373592b4a082a7b9f77/) | ⚠️ Unaudited |
| Master | unknown | ethereum | n/a | [`0x03c41c...427275`](./contracts/ethereum-1/0x03c41c5aff6d541ef7d4c51c8b2e32a5d4427275/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x7883ad...9a3248`](./contracts/bsc-56/0x7883ad0e83ce50f4820a862edb56f756599a3248/) | ⚠️ Unaudited |
| MasterChefInternal | unknown | bsc | n/a | [`0x4065b6...58e0ff`](./contracts/bsc-56/0x4065b6a37e21608c23796c2d850623aa4158e0ff/) | ⚠️ Unaudited |
| MemberRoles | unknown | ethereum | n/a | [`0xef40f8...f07fca`](./contracts/ethereum-1/0xef40f8b376daa24c48e77bca11ebb1d4a4f07fca/) | ⚠️ Unaudited |
| MembershipPool | unknown | bsc | n/a | [`0xc80531...a64779`](./contracts/bsc-56/0xc805317dcb3b2e96e78bf626d7b6ed070ba64779/) | ⚠️ Unaudited |
| MessageBus | unknown | bsc | n/a | [`0x7d5de3...12a896`](./contracts/bsc-56/0x7d5de3efd5684f58ab6ea99626bad4663e12a896/) | ⚠️ Unaudited |
| MessageBusOwner | unknown | bsc | n/a | [`0x92ffad...d80828`](./contracts/bsc-56/0x92ffad2d7b85c56186bc7d798b8e5f2c9cd80828/) | ⚠️ Unaudited |
| MilkyWaySmartToken | unknown | bsc | n/a | [`0x4a5a34...adc5a5`](./contracts/bsc-56/0x4a5a34212404f30c5ab7eb61b078fa4a55adc5a5/) | ⚠️ Unaudited |
| MilkyWayToken | unknown | bsc | n/a | [`0xd9adad...ce803e`](./contracts/bsc-56/0xd9adad001475114c050ff4cb5beaeddcf1ce803e/) | ⚠️ Unaudited |
| MinterVested | unknown | bsc | n/a | [`0x0a9af0...69b80a`](./contracts/bsc-56/0x0a9af07d9910c643faec96f36978c5250269b80a/) | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | bsc | n/a | [`0x06fda0...074ec0`](./contracts/bsc-56/0x06fda0758c17416726f77cb11305eac94c074ec0/) | ⚠️ Unaudited |
| MultiBridgeToken | unknown | bsc | n/a | [`0x09236a...31c51e`](./contracts/bsc-56/0x09236aff6b36a5dbf97b5030a5a650e06931c51e/) | ⚠️ Unaudited |
| Multisend | unknown | polygon | n/a | [`0x5f7547...5df52d`](./contracts/polygon-137/0x5f7547b28a8fff97425d4df673777560195df52d/) | ⚠️ Unaudited |
| MultiSender | unknown | bsc | n/a | [`0x4f643d...c17913`](./contracts/bsc-56/0x4f643d4718fbe92de061b4387f7f19ee0ec17913/) | ⚠️ Unaudited |
| MultisigMock | unknown | bsc | n/a | [`0x518496...998413`](./contracts/bsc-56/0x518496cc3f9ed90a4cb6e329c4ab367711998413/) | ⚠️ Unaudited |
| MyneToken | unknown | bsc | n/a | [`0xd254dc...cce29c`](./contracts/bsc-56/0xd254dc670ff725753a826a5f29a4001600cce29c/) | ⚠️ Unaudited |
| NativeToken | unknown | bsc | n/a | [`0x1ca648...dc13c1`](./contracts/bsc-56/0x1ca64898485ccc5be993695b9e3c171b75dc13c1/) | ⚠️ Unaudited |
| NativeWhirl | unknown | polygon | n/a | [`0x9b71d0...367122`](./contracts/polygon-137/0x9b71d089db7195504aa26ccb7f543f8fcf367122/) | ⚠️ Unaudited |
| NetVrkToken | unknown | ethereum | n/a | [`0xfc0d6c...b7157a`](./contracts/ethereum-1/0xfc0d6cf33e38bce7ca7d89c0e292274031b7157a/) | ⚠️ Unaudited |
| NFT4PlayLPStaking | unknown | bsc | n/a | [`0x384f78...854f02`](./contracts/bsc-56/0x384f780b28f5b4efe312f330740656f832854f02/) | ⚠️ Unaudited |
| NFT4PlayStaking | unknown | bsc | n/a | [`0x10e16c...26490e`](./contracts/bsc-56/0x10e16c28476bc4133982a5a6b72b6380d326490e/) | ⚠️ Unaudited |
| NFTMedal | unknown | bsc | n/a | [`0x87d9a6...58680e`](./contracts/bsc-56/0x87d9a6910f87725e0fdcf25a0b60c79a6c58680e/) | ⚠️ Unaudited |
| NFTradeNFTToken | unknown | bsc | n/a | [`0x6aa19c...641ea1`](./contracts/bsc-56/0x6aa19cbfcb6e7f57a26bea732aa1a1e8bd641ea1/) | ⚠️ Unaudited |
| NordToken | unknown | ethereum | n/a | [`0x6e9730...05a0de`](./contracts/ethereum-1/0x6e9730ecffbed43fd876a264c982e254ef05a0de/) | ⚠️ Unaudited |
| OMGrantsEscrow | unknown | ethereum | n/a | [`0xc8899d...a1e1d7`](./contracts/ethereum-1/0xc8899da25423ac52aa711b97ae04c8888fa1e1d7/) | ⚠️ Unaudited |
| OMPrivateEscrow | unknown | ethereum | n/a | [`0x649402...90817b`](./contracts/ethereum-1/0x649402f07f32d87e2f7c9c2ac24503cd1690817b/) | ⚠️ Unaudited |
| OMReferralsEscrow | unknown | ethereum | n/a | [`0x206fdb...bc970d`](./contracts/ethereum-1/0x206fdbcfffabb3d186d1581f5d6a1ef78fbc970d/) | ⚠️ Unaudited |
| OMReservesEscrow | unknown | ethereum | n/a | [`0xd84701...63859a`](./contracts/ethereum-1/0xd84701828745c98405a3e1153fccea627963859a/) | ⚠️ Unaudited |
| OMStakingRewardsEscrow | unknown | ethereum | n/a | [`0x7a47a5...ac2c69`](./contracts/ethereum-1/0x7a47a54233cb9826410b9187bf450b9f5bac2c69/) | ⚠️ Unaudited |
| OMTeamEscrow | unknown | ethereum | n/a | [`0xba028d...f8e34b`](./contracts/ethereum-1/0xba028dad0c8adc0e5941b244ecd5fad2dff8e34b/) | ⚠️ Unaudited |
| OMTokenV2 | unknown | ethereum | n/a | [`0x3593d1...60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | ⚠️ Unaudited |
| OMV1ToV2Migrator | unknown | ethereum | n/a | [`0xe4ff95...e4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | ⚠️ Unaudited |
| OriginalTokenVault | unknown | bsc | n/a | [`0x78bc5e...ed02dc`](./contracts/bsc-56/0x78bc5ee9f11d133a08b331c2e18fe81be0ed02dc/) | ⚠️ Unaudited |
| OriginalTokenVaultV2 | unknown | bsc | n/a | [`0x11a0c9...44a980`](./contracts/bsc-56/0x11a0c9270d88c99e221360bca50c2f6fda44a980/) | ⚠️ Unaudited |
| OroPocket | unknown | polygon | n/a | [`0x32d72d...480fe4`](./contracts/polygon-137/0x32d72d6cc98436ef983be7f5288ab2ca63480fe4/) | ⚠️ Unaudited |
| OROToken | unknown | bsc | n/a | [`0x0acd92...65d390`](./contracts/bsc-56/0x0acd927684e8b5fa8620a616fbf0595e7d65d390/) | ⚠️ Unaudited |
| OROWBTCFarm | unknown | polygon | n/a | [`0x0a3ef5...3b9214`](./contracts/polygon-137/0x0a3ef52edb4453e410aafc4fce4f65f6403b9214/) | ⚠️ Unaudited |
| OROWETHFarm | unknown | ethereum | n/a | [`0x1c14eb...081346`](./contracts/ethereum-1/0x1c14eb2f2bf443557fc131b3f6f4e929c0081346/) | ⚠️ Unaudited |
| OWL | unknown | polygon | n/a | [`0x9085b4...d76f19`](./contracts/polygon-137/0x9085b4d52c3e0b8b6f9af6213e85a433c7d76f19/) | ⚠️ Unaudited |
| PaidToken | unknown | ethereum | n/a | [`0x45b05c...045fda`](./contracts/ethereum-1/0x45b05cdf918571471925fb5240161b096e045fda/) | ⚠️ Unaudited |
| PaidTokenV2 | unknown | ethereum | n/a | [`0x15e6e9...25991c`](./contracts/ethereum-1/0x15e6e97206b8fbe13991cd9426ab83e23425991c/) | ⚠️ Unaudited |
| ParticularVesting | unknown | bsc | n/a | [`0x3b66c8...5bdda2`](./contracts/bsc-56/0x3b66c800275c546cd636745ac3797aafa15bdda2/) | ⚠️ Unaudited |
| PartnershipsVesting | unknown | bsc | n/a | [`0x030afa...a2f480`](./contracts/bsc-56/0x030afaa593bb1ec8db1446c5813cf5dc8ea2f480/) | ⚠️ Unaudited |
| PathFinder | unknown | bsc | n/a | [`0xab5983...b6c2e6`](./contracts/bsc-56/0xab5983822b8e69d5900689c266f471e72ab6c2e6/) | ⚠️ Unaudited |
| PaycerToken | unknown | polygon | n/a | [`0xa6083a...233612`](./contracts/polygon-137/0xa6083abe845fbb8649d98b8586cbf50b7f233612/) | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | bsc | n/a | [`0xd443fe...97580e`](./contracts/bsc-56/0xd443fe6bf23a4c9b78312391a30ff881a097580e/) | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | unknown | bsc | n/a | [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/) | ⚠️ Unaudited |
| PixelRaceGame | unknown | polygon | n/a | [`0xae4b0f...237c23`](./contracts/polygon-137/0xae4b0fc97f02497a2ca48e0d432a7b6873237c23/) | ⚠️ Unaudited |
| PlayerContract | unknown | polygon | n/a | [`0xc5e778...9b0716`](./contracts/polygon-137/0xc5e7789285223e8d279bd74ff2139e99039b0716/) | ⚠️ Unaudited |
| PlayToken | unknown | bsc | n/a | [`0xf787e1...ba098d`](./contracts/bsc-56/0xf787e1b31e12c4be0cbfa46844c5ec851eba098d/) | ⚠️ Unaudited |
| PLEToken | unknown | ethereum | n/a | [`0x387396...de4931`](./contracts/ethereum-1/0x3873965e73d9a21f88e645ce40b7db187fde4931/) | ⚠️ Unaudited |
| PlotXToken | unknown | ethereum | n/a | [`0x72f020...0c66bb`](./contracts/ethereum-1/0x72f020f8f3e8fd9382705723cd26380f8d0c66bb/) | ⚠️ Unaudited |
| Polkally | unknown | ethereum | n/a | [`0x76db67...a175df`](./contracts/ethereum-1/0x76db67109ce0690ee67fca6db25228baeba175df/) | ⚠️ Unaudited |
| PolytradeStaking | unknown | ethereum | n/a | [`0xaac2fe...d0afbd`](./contracts/ethereum-1/0xaac2fe6db0ed42f5728012543a647cdbbad0afbd/) | ⚠️ Unaudited |
| PontoonStaking | unknown | ethereum | n/a | [`0xf07fed...1ecaa4`](./contracts/ethereum-1/0xf07fed52b8d22f3fbc131871a84f37af601ecaa4/) | ⚠️ Unaudited |
| Predator | unknown | bsc | n/a | [`0x29d13c...a36817`](./contracts/bsc-56/0x29d13caabd557619aa295ace43dac8863ea36817/) | ⚠️ Unaudited |
| Presale | unknown | bsc | n/a | [`0x5d3939...dbf8d2`](./contracts/bsc-56/0x5d393965c18c55ffb5949d2326f0b20809dbf8d2/) | ⚠️ Unaudited |
| PresaleBonder | unknown | bsc | n/a | [`0xaafc06...fb3f98`](./contracts/bsc-56/0xaafc063ec2c93fa15483f7291cb33b97e9fb3f98/) | ⚠️ Unaudited |
| PresaleNew | unknown | bsc | n/a | [`0xc301b7...488347`](./contracts/bsc-56/0xc301b711fee5fb06c92a90374c2a620a57488347/) | ⚠️ Unaudited |
| PresaleNewCap | unknown | bsc | n/a | [`0x46fd36...cfbf19`](./contracts/bsc-56/0x46fd3695faf3100ec3000f7e1903f9db94cfbf19/) | ⚠️ Unaudited |
| PrivateSale | unknown | ethereum | n/a | [`0x639dba...29288e`](./contracts/ethereum-1/0x639dbae42cc72c8dfbcb0f9b160b6a4b5f29288e/) | ⚠️ Unaudited |
| PrivateSaleVesting | unknown | bsc | n/a | [`0x81af90...542cd2`](./contracts/bsc-56/0x81af90e6ab971598bb40f03c0dce67a120542cd2/) | ⚠️ Unaudited |
| ProposalCategory | unknown | ethereum | n/a | [`0xd70cf0...8e3084`](./contracts/ethereum-1/0xd70cf0dd84a2f9a6b8503369e454d49fe78e3084/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x11b794...6c856e`](./contracts/polygon-137/0x11b794c884098ae838a080d30dc2a4f70e6c856e/) | ⚠️ Unaudited |
| PublicSaleContract | unknown | ethereum | n/a | [`0xfd66cd...2cb8f8`](./contracts/ethereum-1/0xfd66cdccb1499a0be335eca99d898832912cb8f8/) | ⚠️ Unaudited |
| PublicSaleWaitlistContract | unknown | ethereum | n/a | [`0x927ae8...5c6a18`](./contracts/ethereum-1/0x927ae861f0dc1ddd0c49ba07d309dbc7bb5c6a18/) | ⚠️ Unaudited |
| RaceContract | unknown | polygon | n/a | [`0xfd20b8...e20d7f`](./contracts/polygon-137/0xfd20b8b8f9a97624583dfe531b599e2907e20d7f/) | ⚠️ Unaudited |
| RandomWinner | unknown | ethereum | n/a | [`0x388950...ba457a`](./contracts/ethereum-1/0x3889503d210b377fd334fdd27822dae09fba457a/) | ⚠️ Unaudited |
| Razor | unknown | ethereum | n/a | [`0x50de68...07d2cd`](./contracts/ethereum-1/0x50de6856358cc35f3a9a57eaaa34bd4cb707d2cd/) | ⚠️ Unaudited |
| ReceiverWhiteList | unknown | bsc | n/a | [`0x869499...98e328`](./contracts/bsc-56/0x869499b3a700ab6c9dfeaed30b29b2643698e328/) | ⚠️ Unaudited |
| RedeemHelper | unknown | bsc | n/a | [`0x6cf4b8...9c3020`](./contracts/bsc-56/0x6cf4b8822f61861ae435b8f08e82de0eee9c3020/) | ⚠️ Unaudited |
| ReefLiquidityBond | unknown | ethereum | n/a | [`0x3713a4...394d56`](./contracts/ethereum-1/0x3713a4e37a2fdc230a44cd6bfc99a183af394d56/) | ⚠️ Unaudited |
| ReefToken | unknown | ethereum | n/a | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ⚠️ Unaudited |
| RefTreeStorage | unknown | bsc | n/a | [`0x63de7c...0d4bdb`](./contracts/bsc-56/0x63de7ce70f143e825a98c822e0f5fd43960d4bdb/) | ⚠️ Unaudited |
| Reinvest | unknown | bsc | n/a | [`0xd2df0b...3d5bc7`](./contracts/bsc-56/0xd2df0b25d4c45ae3394a38b147cae9fa183d5bc7/) | ⚠️ Unaudited |
| ReserveVesting | unknown | bsc | n/a | [`0xfaae4e...842471`](./contracts/bsc-56/0xfaae4ec49e213daa3790dacd4f5815b513842471/) | ⚠️ Unaudited |
| RewardDistributor | unknown | polygon | n/a | [`0x70509b...712fd8`](./contracts/polygon-137/0x70509b8eda83702aeb783721029e158c64712fd8/) | ⚠️ Unaudited |
| RomaPosrednik | unknown | bsc | n/a | [`0xa5e787...672cd5`](./contracts/bsc-56/0xa5e78704cdbea7d469c524e0294ea81172672cd5/) | ⚠️ Unaudited |
| Root | unknown | bsc | n/a | [`0x04aca9...1a35a9`](./contracts/bsc-56/0x04aca9d9944cbebf42297b307cb2e97bc51a35a9/) | ⚠️ Unaudited |
| Route | unknown | ethereum | n/a | [`0x16eccf...753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | ⚠️ Unaudited |
| Router | unknown | bsc | n/a | [`0x637315...11f21c`](./contracts/bsc-56/0x637315757ac58ee020ef2e27e24482873011f21c/) | ⚠️ Unaudited |
| RoyaleLP | unknown | ethereum | n/a | [`0xfdc4ca...71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | ⚠️ Unaudited |
| RoyaleToken | unknown | ethereum | n/a | [`0x7eaf9c...4548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | ⚠️ Unaudited |
| RoyaUserToken | unknown | ethereum | n/a | [`0x448cb1...c8e77e`](./contracts/ethereum-1/0x448cb15b00ced3ac47467e33493d602f34c8e77e/) | ⚠️ Unaudited |
| sGlobalDAOToken | unknown | bsc | n/a | [`0x0a3e9d...7dc0ae`](./contracts/bsc-56/0x0a3e9d4b234caf8090d8658c09834d72fc7dc0ae/) | ⚠️ Unaudited |
| ShadowStakingV3 | unknown | bsc | n/a | [`0xdd77d4...d04d75`](./contracts/bsc-56/0xdd77d450f1b01ce482a9f0fca7af73ac4ad04d75/) | ⚠️ Unaudited |
| ShakeSmartToken | unknown | bsc | n/a | [`0xba8a6e...91d8d0`](./contracts/bsc-56/0xba8a6ef5f15ed18e7184f44a775060a6bf91d8d0/) | ⚠️ Unaudited |
| SHO1 | unknown | bsc | n/a | [`0x25c77d...97041a`](./contracts/bsc-56/0x25c77d3bf52a65c605a2455001ad46ba8b97041a/) | ⚠️ Unaudited |
| SHO2 | unknown | bsc | n/a | [`0x0571ad...64b4ec`](./contracts/bsc-56/0x0571ad1d5f2d21866137a5286a7c5f708864b4ec/) | ⚠️ Unaudited |
| SHO2UPD | unknown | bsc | n/a | [`0x0d5fb4...b7f19a`](./contracts/bsc-56/0x0d5fb440b12d84d33f89b31156c451b722b7f19a/) | ⚠️ Unaudited |
| SHUB | unknown | bsc | n/a | [`0xf4e039...3f6b4a`](./contracts/bsc-56/0xf4e039776a726a49b3b1811ffb5fef5d233f6b4a/) | ⚠️ Unaudited |
| SingleBridgeToken | unknown | bsc | n/a | [`0x66acea...56f64f`](./contracts/bsc-56/0x66acea0f41656711f58ff840c8857e3e5356f64f/) | ⚠️ Unaudited |
| SingleRewards | unknown | polygon | n/a | [`0x23f101...8366b5`](./contracts/polygon-137/0x23f101a767022f95dda1e5f35defb46c0a8366b5/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | bsc | n/a | [`0x92ab46...dea19b`](./contracts/bsc-56/0x92ab461431f1ae22f6a3de1ba45051debddea19b/) | ⚠️ Unaudited |
| SporesStaking | unknown | ethereum | n/a | [`0xb4c57e...64eb1a`](./contracts/ethereum-1/0xb4c57e66d0748da9c0d84c1e70ff0a6cce64eb1a/) | ⚠️ Unaudited |
| StackToken | unknown | bsc | n/a | [`0x6855f7...ee5cf3`](./contracts/bsc-56/0x6855f7bb6287f94ddcc8915e37e73a3c9fee5cf3/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x068e1d...ffa4dd`](./contracts/ethereum-1/0x068e1d0175a94fa338d3c156e9860cc59effa4dd/) | ⚠️ Unaudited |
| StakingHelper | unknown | bsc | n/a | [`0x16a8e2...13191f`](./contracts/bsc-56/0x16a8e29f3cd2fe8b1d745029f3f2e9063513191f/) | ⚠️ Unaudited |
| StakingNext | unknown | bsc | n/a | [`0x32d5bf...0fa448`](./contracts/bsc-56/0x32d5bf375fa3c3c15d48823d25ad1ff7c90fa448/) | ⚠️ Unaudited |
| StakingPool | unknown | ethereum | n/a | [`0x9e15ad...feba93`](./contracts/ethereum-1/0x9e15ad979919bb4db331bfe864475ae3bffeba93/) | ⚠️ Unaudited |
| StakingPoolsMigrator | unknown | ethereum | n/a | [`0x81d387...383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | bsc | n/a | [`0x5a4bab...a9ba54`](./contracts/bsc-56/0x5a4bab222f2751be7bd8377bdb2ef0772ea9ba54/) | ⚠️ Unaudited |
| StakingWarmup | unknown | bsc | n/a | [`0x197857...88de76`](./contracts/bsc-56/0x197857e60cd72591200dd8abd86d19698288de76/) | ⚠️ Unaudited |
| StrategicSaleVesting | unknown | bsc | n/a | [`0x5aae17...7a1209`](./contracts/bsc-56/0x5aae170a7bd1249917fc92b7a635d7298a7a1209/) | ⚠️ Unaudited |
| StratSimple | unknown | bsc | n/a | [`0x711b40...0a65be`](./contracts/bsc-56/0x711b403e81989edf13070b3c89f7c5a26f0a65be/) | ⚠️ Unaudited |
| StratWSBToken | unknown | bsc | n/a | [`0xb95873...e13bca`](./contracts/bsc-56/0xb9587337886f1c8beaebeff33f4af47288e13bca/) | ⚠️ Unaudited |
| SwapReward | unknown | bsc | n/a | [`0x62cac8...fc2eaf`](./contracts/bsc-56/0x62cac8d39fe8fbd09dd89221502e1caf9dfc2eaf/) | ⚠️ Unaudited |
| TeamVesting | unknown | bsc | n/a | [`0x884ddf...3d26ff`](./contracts/bsc-56/0x884ddf6b1a45b6dfa6222577422bd9efa13d26ff/) | ⚠️ Unaudited |
| TeraBlockToken | unknown | bsc | n/a | [`0xeaf7d8...7c15ae`](./contracts/bsc-56/0xeaf7d8395cce52daef138d39a1cefa51b97c15ae/) | ⚠️ Unaudited |
| TheDestroyer | unknown | bsc | n/a | [`0x7020b2...ebe7f7`](./contracts/bsc-56/0x7020b2426dfa450c4f87cb9ac097d20869ebe7f7/) | ⚠️ Unaudited |
| Ticket | unknown | bsc | n/a | [`0xe252f4...b9e8ff`](./contracts/bsc-56/0xe252f4ad3ca2f513204b73c1ecd84d21e9b9e8ff/) | ⚠️ Unaudited |
| TicketsCounter | unknown | bsc | n/a | [`0x570ebc...674457`](./contracts/bsc-56/0x570ebc0fafe6c2ee0ebdaf23b6659fbeb2674457/) | ⚠️ Unaudited |
| TicketsCounter2 | unknown | bsc | n/a | [`0x424077...768c89`](./contracts/bsc-56/0x42407718abe3dbb72629f64096067fcbd3768c89/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x0c29c5...531e1d`](./contracts/bsc-56/0x0c29c5dd40db17641b61a9a21e69a9df9d531e1d/) | ⚠️ Unaudited |
| TimelockWallet | unknown | polygon | n/a | [`0x207c67...45887c`](./contracts/polygon-137/0x207c678457617bc8c8ab06f9088efc1dcd45887c/) | ⚠️ Unaudited |
| TMCK2 | unknown | bsc | n/a | [`0x9f7435...c8cadc`](./contracts/bsc-56/0x9f74358b02f794719ebff637fa3c5b1edac8cadc/) | ⚠️ Unaudited |
| Token | unknown | bsc | n/a | [`0x16fe93...37a3b0`](./contracts/bsc-56/0x16fe93ee9763d165850b62aa4ee7366f0b37a3b0/) | ⚠️ Unaudited |
| TokenAddresses | unknown | bsc | n/a | [`0x4d7c0f...098030`](./contracts/bsc-56/0x4d7c0f8af24c5d08a86ba2809f37c72cf8098030/) | ⚠️ Unaudited |
| TokenBNBERC20 | unknown | bsc | n/a | [`0xdbb66e...b034f9`](./contracts/bsc-56/0xdbb66eb9f4d737b49ae5cd4de25e6c8da8b034f9/) | ⚠️ Unaudited |
| TokenController | unknown | ethereum | n/a | [`0xc07a4c...e47613`](./contracts/ethereum-1/0xc07a4c1908dd0f02dab972d17841543092e47613/) | ⚠️ Unaudited |
| TokenControllerV2 | unknown | ethereum | n/a | [`0x34216a...71c320`](./contracts/ethereum-1/0x34216aac80356df98387d6a18a9471229071c320/) | ⚠️ Unaudited |
| TokenConverter | unknown | bsc | n/a | [`0x053a51...f65ba2`](./contracts/bsc-56/0x053a511b59ae70d07a2b2cdbac5803f625f65ba2/) | ⚠️ Unaudited |
| TokenDistribution | unknown | ethereum | n/a | [`0x664ad6...1839e7`](./contracts/ethereum-1/0x664ad659d534d7fb1965f9f74c9af2487e1839e7/) | ⚠️ Unaudited |
| TokenSwap | unknown | polygon | n/a | [`0x846c5d...0abeda`](./contracts/polygon-137/0x846c5d59b75e373756dc6fcdb0c8d258720abeda/) | ⚠️ Unaudited |
| TokenUpgradeable | unknown | polygon | n/a | [`0x3c970c...98c57d`](./contracts/polygon-137/0x3c970c7855b3f27d61bca6ef3af1d314ce98c57d/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0a356f...908680`](./contracts/bsc-56/0x0a356f512f6fce740111ee04ab1699017a908680/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1e2c03...d42c55`](./contracts/bsc-56/0x1e2c0399fe3feedcd4c0e82ddbacae084bd42c55/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x363e15...2931e4`](./contracts/bsc-56/0x363e157a8e9f31fb066f238a22400e8bc62931e4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x56403d...84e4d0`](./contracts/bsc-56/0x56403d9e38572e00a5651002afc0336f8284e4d0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x622b1b...f8cbcc`](./contracts/bsc-56/0x622b1bc06139a70c12375fb4114dc5add8f8cbcc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa2306b...a52cab`](./contracts/bsc-56/0xa2306b0b66a7a9f1bfe787c8ec7aa7d4e8a52cab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x007f48...ea32f8`](./contracts/polygon-137/0x007f4817ddacd820690303e21a9505adf9ea32f8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x051f66...1dd926`](./contracts/polygon-137/0x051f66bbe80665d466c3cb75589aff8cb21dd926/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x1ce767...8646c6`](./contracts/polygon-137/0x1ce767a341c3bbd0886b43e8d14b215be18646c6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x35d186...7c7bbd`](./contracts/polygon-137/0x35d186198d8429f2ed678be7c6158f974e7c7bbd/) | ⚠️ Unaudited |
| TryMock | unknown | bsc | n/a | [`0x46f932...91a0f3`](./contracts/bsc-56/0x46f932a2212411b610c731be5f01849b0591a0f3/) | ⚠️ Unaudited |
| U1ProxyUpgradablity | unknown | ethereum | n/a | [`0x0862ed...11a0a0`](./contracts/ethereum-1/0x0862ed7f6b2bc350508b29542511249b7e11a0a0/) | ⚠️ Unaudited |
| U2ProxyUpgradablity | unknown | ethereum | n/a | [`0x152a8d...43bdc2`](./contracts/ethereum-1/0x152a8d34c5c4540645443a63bd8c1d395543bdc2/) | ⚠️ Unaudited |
| U2ReProxyUpgradablity | unknown | ethereum | n/a | [`0x652862...46ce78`](./contracts/ethereum-1/0x652862b61c71c8d955ccbd973d2830c68e46ce78/) | ⚠️ Unaudited |
| U3ProxyUpgradablity | unknown | ethereum | n/a | [`0xeae5ce...e6bd78`](./contracts/ethereum-1/0xeae5ce18fe34d1ee46c67f326c4a7f2038e6bd78/) | ⚠️ Unaudited |
| U3ReProxyUpgradablity | unknown | ethereum | n/a | [`0xd04dde...ce26a5`](./contracts/ethereum-1/0xd04dde065fe872adb6517b4bb0c11eaf49ce26a5/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UFARMBeneficiaryBook | unknown | ethereum | n/a | [`0xd5f119...6c67f5`](./contracts/ethereum-1/0xd5f119145bdf66998f3c33ae0fe529ad546c67f5/) | ⚠️ Unaudited |
| UFARMStaking | unknown | bsc | n/a | [`0xfd70c4...322ab7`](./contracts/bsc-56/0xfd70c4a2280731fa7c63ee720d8da58898322ab7/) | ⚠️ Unaudited |
| UFARMUSDCFarm | unknown | ethereum | n/a | [`0x32d72d...480fe4`](./contracts/ethereum-1/0x32d72d6cc98436ef983be7f5288ab2ca63480fe4/) | ⚠️ Unaudited |
| UFARMWBNB | unknown | bsc | n/a | [`0xef3db8...e52711`](./contracts/bsc-56/0xef3db88cdae6627ef706962c7a83c1a29be52711/) | ⚠️ Unaudited |
| UFARMWMATICFarm | unknown | polygon | n/a | [`0x775e0d...b727ee`](./contracts/polygon-137/0x775e0da09d55911e3ec836f14267a7e5fbb727ee/) | ⚠️ Unaudited |
| Unifarm | unknown | ethereum | n/a | [`0xd42603...12257d`](./contracts/ethereum-1/0xd426037bcf28fc4ea3730525ff8b3d2de412257d/) | ⚠️ Unaudited |
| UnifarmCTR | unknown | ethereum | n/a | [`0xcedf01...1b7a56`](./contracts/ethereum-1/0xcedf01ea298f90df54f01878b324300b091b7a56/) | ⚠️ Unaudited |
| UnifarmFactory | unknown | ethereum | n/a | [`0xa1f285...3e9bc7`](./contracts/ethereum-1/0xa1f28581129f27c11ee0c6c421a4fbf29c3e9bc7/) | ⚠️ Unaudited |
| UnifarmV10 | unknown | bsc | n/a | [`0x8fd329...661568`](./contracts/bsc-56/0x8fd3298c3981df23a94ddaa4b1325c7087661568/) | ⚠️ Unaudited |
| UnifarmV13 | unknown | polygon | n/a | [`0xee32c3...daf71b`](./contracts/polygon-137/0xee32c30c1faa0364d3022b6ca2456363dadaf71b/) | ⚠️ Unaudited |
| UnifarmV14 | unknown | bsc | n/a | [`0x69b63a...92f670`](./contracts/bsc-56/0x69b63a145597f39ed1703f6aeeb2b832bb92f670/) | ⚠️ Unaudited |
| UnifarmV18 | unknown | ethereum | n/a | [`0x6fd0bb...771dd6`](./contracts/ethereum-1/0x6fd0bbf295965db381f1d5b353ff3e523c771dd6/) | ⚠️ Unaudited |
| unifarmV1Fixed | unknown | ethereum | n/a | [`0xe8369c...f41f27`](./contracts/ethereum-1/0xe8369ca802f89b16a968ccb24431a7a412f41f27/) | ⚠️ Unaudited |
| UnifarmV2 | unknown | ethereum | n/a | [`0x207c67...45887c`](./contracts/ethereum-1/0x207c678457617bc8c8ab06f9088efc1dcd45887c/) | ⚠️ Unaudited |
| UnifarmV20 | unknown | ethereum | n/a | [`0x2d1686...ac3603`](./contracts/ethereum-1/0x2d168651d85fe8b16aebf42272a9b64f24ac3603/) | ⚠️ Unaudited |
| UnifarmV21 | unknown | polygon | n/a | [`0x96537b...c1362f`](./contracts/polygon-137/0x96537bac94c8adc38fd17d70077ebcb958c1362f/) | ⚠️ Unaudited |
| UnifarmV22 | unknown | ethereum | n/a | [`0x17cf1f...121f2b`](./contracts/ethereum-1/0x17cf1f7abe02e2cefea0c9c1bd812b2cf8121f2b/) | ⚠️ Unaudited |
| UnifarmV24 | unknown | polygon | n/a | [`0xf4f079...6199e5`](./contracts/polygon-137/0xf4f079e8834ff38be9b719c70b4a4195ad6199e5/) | ⚠️ Unaudited |
| UnifarmV26 | unknown | polygon | n/a | [`0x9442cf...a7794b`](./contracts/polygon-137/0x9442cf0ecc338c09301ba25517bb2c5ff8a7794b/) | ⚠️ Unaudited |
| UnifarmV2Fixed | unknown | ethereum | n/a | [`0xdb6cf8...5cc8d9`](./contracts/ethereum-1/0xdb6cf8acca5031eb42e283fa441a4c9ada5cc8d9/) | ⚠️ Unaudited |
| Unifarmv3 | unknown | ethereum | n/a | [`0x349d55...a4ccb1`](./contracts/ethereum-1/0x349d55f12fb166a926214ca0195a07a16fa4ccb1/) | ⚠️ Unaudited |
| UnifarmV31 | unknown | bsc | n/a | [`0x659f5a...63f105`](./contracts/bsc-56/0x659f5ad5ab3a3f185c8f3ac81cfebc8fc863f105/) | ⚠️ Unaudited |
| UnifarmV32 | unknown | polygon | n/a | [`0x1720bb...4ea811`](./contracts/polygon-137/0x1720bb2b6e11f6582cc1a7f6510feb84064ea811/) | ⚠️ Unaudited |
| UnifarmV34 | unknown | ethereum | n/a | [`0xe7058b...56baf5`](./contracts/ethereum-1/0xe7058bf41230df7211a28958d517060d7d56baf5/) | ⚠️ Unaudited |
| UnifarmV35 | unknown | polygon | n/a | [`0x6bd819...20b04a`](./contracts/polygon-137/0x6bd81942d66fbbbf9fc972422946f39b9a20b04a/) | ⚠️ Unaudited |
| UnifarmV36 | unknown | bsc | n/a | [`0xeae5ce...e6bd78`](./contracts/bsc-56/0xeae5ce18fe34d1ee46c67f326c4a7f2038e6bd78/) | ⚠️ Unaudited |
| UnifarmV37 | unknown | bsc | n/a | [`0x02c57d...bb3d46`](./contracts/bsc-56/0x02c57d740836a0706d48bf0efd9af214dfbb3d46/) | ⚠️ Unaudited |
| UnifarmV3Fixed | unknown | ethereum | n/a | [`0x559cd5...2b7064`](./contracts/ethereum-1/0x559cd5b11ca882cedda823ac06275558a92b7064/) | ⚠️ Unaudited |
| UnifarmV5 | unknown | bsc | n/a | [`0xee32c3...daf71b`](./contracts/bsc-56/0xee32c30c1faa0364d3022b6ca2456363dadaf71b/) | ⚠️ Unaudited |
| UniStakingSyntheticToken | unknown | ethereum | n/a | [`0x91fe14...e1a23f`](./contracts/ethereum-1/0x91fe14df53eae3a87e310ec6edcdd2d775e1a23f/) | ⚠️ Unaudited |
| UnoRe | unknown | ethereum | n/a | [`0x474021...a01a77`](./contracts/ethereum-1/0x474021845c4643113458ea4414bdb7fb74a01a77/) | ⚠️ Unaudited |
| VaultDistribution | unknown | bsc | n/a | [`0x172a20...0b4425`](./contracts/bsc-56/0x172a204d15da42bbd2c61a3d8c3d174a690b4425/) | ⚠️ Unaudited |
| VaultLocked | unknown | bsc | n/a | [`0x2c0ff3...2a157c`](./contracts/bsc-56/0x2c0ff33d13fbcffbaf043682a3374545f42a157c/) | ⚠️ Unaudited |
| VaultLockedManual | unknown | bsc | n/a | [`0x3ea901...95fe0b`](./contracts/bsc-56/0x3ea901383f605d39fbda899311e8fb311e95fe0b/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | ethereum | n/a | [`0xf33045...73d4c5`](./contracts/ethereum-1/0xf33045e835201cf2846af9bed9dd672d3973d4c5/) | ⚠️ Unaudited |
| Verifier | unknown | polygon | n/a | [`0x36f5e3...83aaa5`](./contracts/polygon-137/0x36f5e3ddddf029525fbabdf30954cb9a3583aaa5/) | ⚠️ Unaudited |
| VestingFactory | unknown | polygon | n/a | [`0x157647...eda3d6`](./contracts/polygon-137/0x1576477d81c744afb1e1975ead30fbd066eda3d6/) | ⚠️ Unaudited |
| WELTFarmRewards | unknown | polygon | n/a | [`0x08c931...077406`](./contracts/polygon-137/0x08c93164071dd0faad2ae46ab61c94ae5d077406/) | ⚠️ Unaudited |
| WELTStakingRewards | unknown | polygon | n/a | [`0x5138c3...6b3e18`](./contracts/polygon-137/0x5138c37aa92ad0c6d990dca23478a0cc716b3e18/) | ⚠️ Unaudited |
| WheyBalance | unknown | ethereum | n/a | [`0xb313fa...48a068`](./contracts/ethereum-1/0xb313fa40252ec470f92e28886d47c8007e48a068/) | ⚠️ Unaudited |
| WheyFarm | unknown | ethereum | n/a | [`0x7f99c3...63d00a`](./contracts/ethereum-1/0x7f99c3e587a168aea5ff1fc0f840ba7a0163d00a/) | ⚠️ Unaudited |
| WheyTokenV2 | unknown | ethereum | n/a | [`0x072cfb...5c49e6`](./contracts/ethereum-1/0x072cfb8233680b7b196fc8ba6e1af76cbb5c49e6/) | ⚠️ Unaudited |
| WHIRL | unknown | polygon | n/a | [`0x4f6cba...b70e69`](./contracts/polygon-137/0x4f6cbaca3151f7746273004fd7295933a9b70e69/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | n/a | [`0x060a5d...b9a7dc`](./contracts/ethereum-1/0x060a5de3a773707acd5730a4ab5d257a64b9a7dc/) | ⚠️ Unaudited |
| WithdrawInbox | unknown | bsc | n/a | [`0xf0ff98...7bf854`](./contracts/bsc-56/0xf0ff9888a70f44eb12223a6a55c65976ba7bf854/) | ⚠️ Unaudited |
| WorkquestStaking | unknown | ethereum | n/a | [`0x6ce9f9...bca196`](./contracts/ethereum-1/0x6ce9f9e6b011a088ed5bb5b28a97560654bca196/) | ⚠️ Unaudited |
| WSB_Token | unknown | bsc | n/a | [`0x221688...eeb288`](./contracts/bsc-56/0x22168882276e5d5e1da694343b41dd7726eeb288/) | ⚠️ Unaudited |
| ZELWIN | unknown | bsc | n/a | [`0x5dd1e3...a50387`](./contracts/bsc-56/0x5dd1e31e1a0e2e077ac98d2a4b781f418ca50387/) | ⚠️ Unaudited |
| ZeroSwapToken | unknown | ethereum | n/a | [`0x2edf09...0dd4c5`](./contracts/ethereum-1/0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5/) | ⚠️ Unaudited |
| ZeroSwapTokenVesting | unknown | ethereum | n/a | [`0x6efc19...25f3c6`](./contracts/ethereum-1/0x6efc19cc19dd9a2279797e26e6a475453d25f3c6/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 293 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
