# Agentic Audit Brief: Cover Protocol

## Project Overview

- Project: Cover Protocol (`cover-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.224Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 156 unique implementations (156 raw deployments)
- DeFi Llama TVL: $809,236.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 155 project-authored contract(s) across 1 chain(s); 45 ERC20 tokens, 2 ERC721 NFTs, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (erc20permit, eip712, erc20detailed). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 156; live-surface contracts included: 156 (152 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/152 (9.9%)
- Deployed-live implementations: 152 of 156 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/156
- Verified + Unaudited implementations: 141
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 156
- Raw deployments: 156
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.3% (MixBytes)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 8 | 5.1% | 2021-04 |
| yAudit | Tier 2 | 8 | 5.1% | 2021-02 |
| PeckShield | Tier 2 | 6 | 3.8% | 2021-02 |
| Arcadia | Tier 2 | 4 | 2.6% | 2020-12 |
| unknown | Tier 2 | 4 | 2.6% | 2020-12 |
| MixBytes | Tier 1 | 2 | 1.3% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | ethereum | n/a | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ✅ Audited |
| Blacksmith | unknown | ethereum | n/a | [`0xe0b94a...1caed5`](./contracts/ethereum-1/0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5/) | ✅ Audited |
| ClaimManagement | unknown | ethereum | n/a | [`0x9946f1...8463b2`](./contracts/ethereum-1/0x9946f1c5046ecedc8cee9a76ec14c42ca78463b2/) | ✅ Audited |
| Cover | unknown | ethereum | n/a | [`0x1349c5...15d504`](./contracts/ethereum-1/0x1349c51b28772f725e193c21597c0a41a715d504/) | ✅ Audited |
| CoverERC20 | unknown | ethereum | n/a | [`0x7e8b62...6b4eb5`](./contracts/ethereum-1/0x7e8b62b2ab8db3f3d085ba3437216fd10b6b4eb5/) | ✅ Audited |
| CoverFeeReceiver | unknown | ethereum | n/a | [`0xe06323...bc8b2e`](./contracts/ethereum-1/0xe0632311772d362f49b5118c40d5251c44bc8b2e/) | ✅ Audited |
| CoverForge | unknown | ethereum | n/a | [`0xa92139...59d5f8`](./contracts/ethereum-1/0xa921392015eb37c5977c4fd77e14dd568c59d5f8/) | ✅ Audited |
| CoverPool | unknown | ethereum | n/a | [`0x83085b...3032e2`](./contracts/ethereum-1/0x83085b8cb406cdb4034622198b518bda133032e2/) | ✅ Audited |
| CoverPoolFactory | unknown | ethereum | n/a | [`0x1cb339...304791`](./contracts/ethereum-1/0x1cb3391feff3806a6f7fa11b372cb70659304791/) | ✅ Audited |
| CoverRouter | unknown | ethereum | n/a | [`0x35e105...bc9540`](./contracts/ethereum-1/0x35e1056a8f910a40710a3d106bd4851fcbbc9540/) | ✅ Audited |
| Migrator | unknown | ethereum | n/a | [`0xfcf329...fdfbc6`](./contracts/ethereum-1/0xfcf3295b3b357e3e0d37ac5ee14823e06ffdfbc6/) | ✅ Audited |
| Protocol | unknown | ethereum | n/a | [`0xb6886b...173f6a`](./contracts/ethereum-1/0xb6886b2c3537673941e4ead63b95eacb47173f6a/) | ✅ Audited |
| RERC20 | unknown | ethereum | n/a | [`0x3c983b...024c20`](./contracts/ethereum-1/0x3c983ba3f165daf6a9950c08750bade647024c20/) | ✅ Audited |
| RULER | unknown | ethereum | n/a | [`0x2aeccb...7001f8`](./contracts/ethereum-1/0x2aeccb42482cc64e087b6d2e5da39f5a7a7001f8/) | ✅ Audited |
| Vesting | unknown | ethereum | n/a | [`0xe98567...8bd531`](./contracts/ethereum-1/0xe98567885df519dfeb12c0e268dd5d9b798bd531/) | ✅ Audited |

### ⚠️ Verified + Unaudited (141)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AHv2Repayment | unknown | ethereum | n/a | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| APROracle | unknown | ethereum | n/a | [`0x4ddc33...919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/) | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | ethereum | n/a | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | ethereum | n/a | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| BonusRewards | unknown | ethereum | n/a | [`0x3423c8...559f89`](./contracts/ethereum-1/0x3423c8af3a95d9fee7ec06c4e0e905d4fd559f89/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | ethereum | n/a | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | ⚠️ Unaudited |
| CompensationEscrow | unknown | ethereum | n/a | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | ethereum | n/a | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x2e6556...1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/) | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | ethereum | n/a | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| CoverDistributor | unknown | ethereum | n/a | [`0x2166c7...226454`](./contracts/ethereum-1/0x2166c76d081610716ab93f02891558b9ba226454/) | ⚠️ Unaudited |
| CRON | unknown | ethereum | n/a | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| DistributeYFI | unknown | ethereum | n/a | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | ethereum | n/a | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| DSSLeverage | unknown | ethereum | n/a | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | ⚠️ Unaudited |
| DYDXERC3156 | unknown | ethereum | n/a | [`0x6bdc1f...318693`](./contracts/ethereum-1/0x6bdc1fcb2f13d1ba9d26ccec3983d5d4bf318693/) | ⚠️ Unaudited |
| DynamicSwap | unknown | ethereum | n/a | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | ethereum | n/a | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | ethereum | n/a | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| fKRW | unknown | ethereum | n/a | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| fUSD | unknown | ethereum | n/a | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | ⚠️ Unaudited |
| GaugeProxy | unknown | ethereum | n/a | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | ⚠️ Unaudited |
| HegicERCPool | unknown | ethereum | n/a | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | ⚠️ Unaudited |
| HegicOptions | unknown | ethereum | n/a | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | ethereum | n/a | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | ⚠️ Unaudited |
| iCollateral | unknown | ethereum | n/a | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | ethereum | n/a | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | ethereum | n/a | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | ⚠️ Unaudited |
| iDAI | unknown | ethereum | n/a | [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | ⚠️ Unaudited |
| iDAIZapSwap | unknown | ethereum | n/a | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | ⚠️ Unaudited |
| IEarnAPR | unknown | ethereum | n/a | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | ethereum | n/a | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | ⚠️ Unaudited |
| IEarnManager | unknown | ethereum | n/a | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | ⚠️ Unaudited |
| IEarnProvider | unknown | ethereum | n/a | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | ⚠️ Unaudited |
| IEther | unknown | ethereum | n/a | [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | ⚠️ Unaudited |
| insuredVault | unknown | ethereum | n/a | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| insurerVault | unknown | ethereum | n/a | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| iTrade | unknown | ethereum | n/a | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | ⚠️ Unaudited |
| Keep3rHelper | unknown | ethereum | n/a | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | ⚠️ Unaudited |
| Keep3rJob | unknown | ethereum | n/a | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | ethereum | n/a | [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | ethereum | n/a | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | ⚠️ Unaudited |
| Keep3rV1Library | unknown | ethereum | n/a | [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | ethereum | n/a | [`0x733538...70282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/) | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | ethereum | n/a | [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | ethereum | n/a | [`0x173ed6...132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/) | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | ethereum | n/a | [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | ethereum | n/a | [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | ethereum | n/a | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | ⚠️ Unaudited |
| LazyHarvest | unknown | ethereum | n/a | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | ⚠️ Unaudited |
| LiquidationOracle | unknown | ethereum | n/a | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | ethereum | n/a | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | ⚠️ Unaudited |
| MultiTransfer | unknown | ethereum | n/a | [`0xdba82d...11e09d`](./contracts/ethereum-1/0xdba82dca19943eb3a1d3ef7eeffb80a68111e09d/) | ⚠️ Unaudited |
| NexusMutualCover | unknown | ethereum | n/a | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | ⚠️ Unaudited |
| OptionsV1Library | unknown | ethereum | n/a | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | ethereum | n/a | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | ⚠️ Unaudited |
| OSMedianizer | unknown | ethereum | n/a | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| PriceProxy | unknown | ethereum | n/a | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| ProtocolFactory | unknown | ethereum | n/a | [`0x45d619...0d8d6a`](./contracts/ethereum-1/0x45d619a4804b82c3af4c24ccb460068a8a0d8d6a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xb69d05...822568`](./contracts/ethereum-1/0xb69d0523a2f5b8756f27986da4b4543c68822568/) | ⚠️ Unaudited |
| RewardsAirdropWithLock | unknown | ethereum | n/a | [`0x0013e1...62ad12`](./contracts/ethereum-1/0x0013e17039566da4757edcb565d7d331e362ad12/) | ⚠️ Unaudited |
| RiskOracle | unknown | ethereum | n/a | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | ⚠️ Unaudited |
| RulerAirdrop | unknown | ethereum | n/a | [`0x62c66d...e333d6`](./contracts/ethereum-1/0x62c66d4a9d2aae2f63039c426b927b4605e333d6/) | ⚠️ Unaudited |
| RulerCore | unknown | ethereum | n/a | [`0x2446b4...fd5e94`](./contracts/ethereum-1/0x2446b411a95630f719ef8c78f195ecdaf3fd5e94/) | ⚠️ Unaudited |
| RulerFeeReceiver | unknown | ethereum | n/a | [`0x70f342...b89002`](./contracts/ethereum-1/0x70f342ea72a4c476ef27b04f3bfe56f35db89002/) | ⚠️ Unaudited |
| SafetyRedundancy | unknown | ethereum | n/a | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | ⚠️ Unaudited |
| Signer | unknown | ethereum | n/a | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | ⚠️ Unaudited |
| SingleSidedAMM | unknown | ethereum | n/a | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | ⚠️ Unaudited |
| StableCreditHelper | unknown | ethereum | n/a | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | ⚠️ Unaudited |
| StableCreditProtocol | unknown | ethereum | n/a | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | ethereum | n/a | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | ethereum | n/a | [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | ethereum | n/a | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | ethereum | n/a | [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | ethereum | n/a | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | ethereum | n/a | [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | ethereum | n/a | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | ethereum | n/a | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | ⚠️ Unaudited |
| StrategyProxy | unknown | ethereum | n/a | [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | ethereum | n/a | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | ethereum | n/a | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | ethereum | n/a | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | ⚠️ Unaudited |
| StrategyYffi | unknown | ethereum | n/a | [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | ethereum | n/a | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | ⚠️ Unaudited |
| StrategyYfii | unknown | ethereum | n/a | [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | ⚠️ Unaudited |
| SupplyFactory | unknown | ethereum | n/a | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | ⚠️ Unaudited |
| Synthetic | unknown | ethereum | n/a | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | ethereum | n/a | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | ethereum | n/a | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | ⚠️ Unaudited |
| SynthetixExchange | unknown | ethereum | n/a | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | ⚠️ Unaudited |
| TendiesFarm | unknown | ethereum | n/a | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | ethereum | n/a | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1994b5...929b81`](./contracts/ethereum-1/0x1994b59e02cd0d09d839b03660c205e88a929b81/) | ⚠️ Unaudited |
| TimelockGovernance | unknown | ethereum | n/a | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | ⚠️ Unaudited |
| TreasuryVault | unknown | ethereum | n/a | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| UniOracleFactory | unknown | ethereum | n/a | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UpdateBlacksmithPools | unknown | ethereum | n/a | [`0xa18bc0...32b7f2`](./contracts/ethereum-1/0xa18bc07ef3e04d263528323164dab9c76132b7f2/) | ⚠️ Unaudited |
| VestingVault | unknown | ethereum | n/a | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x5553b9...5c5fcc`](./contracts/ethereum-1/0x5553b9b8cfe6163f89941af22779c747565c5fcc/) | ⚠️ Unaudited |
| WETHDistributor | unknown | ethereum | n/a | [`0x0c134e...f829a0`](./contracts/ethereum-1/0x0c134e734b7e1e7955706f9abae7837b00f829a0/) | ⚠️ Unaudited |
| WrappedYFI | unknown | ethereum | n/a | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| xRULER | unknown | ethereum | n/a | [`0x01f7fd...5f17b9`](./contracts/ethereum-1/0x01f7fd324b366380d2145dfa6c7a76fdb75f17b9/) | ⚠️ Unaudited |
| xVault | unknown | ethereum | n/a | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | ethereum | n/a | [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | ⚠️ Unaudited |
| yBUSD | unknown | ethereum | n/a | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | ethereum | n/a | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | ⚠️ Unaudited |
| yCRV | unknown | ethereum | n/a | [`0x170411...2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | ⚠️ Unaudited |
| ycUSDC | unknown | ethereum | n/a | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ⚠️ Unaudited |
| ycUSDT | unknown | ethereum | n/a | [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | ethereum | n/a | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | ⚠️ Unaudited |
| yDelegate | unknown | ethereum | n/a | [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | ⚠️ Unaudited |
| yDelegatedVault | unknown | ethereum | n/a | [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | ethereum | n/a | [`0x41303e...343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | ⚠️ Unaudited |
| YetiDistributor | unknown | ethereum | n/a | [`0x38794e...e3a7e7`](./contracts/ethereum-1/0x38794ebd0a2ef0feec622be7c1bf8ed9bae3a7e7/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| yInsureView | unknown | ethereum | n/a | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ⚠️ Unaudited |
| yTokenProxy | unknown | ethereum | n/a | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | ⚠️ Unaudited |
| yTokenRebalance | unknown | ethereum | n/a | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSD | unknown | ethereum | n/a | [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | ⚠️ Unaudited |
| yUSDT | unknown | ethereum | n/a | [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | ⚠️ Unaudited |
| yVault | unknown | ethereum | n/a | [`0x0fcda6...367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | ⚠️ Unaudited |
| yVaultCheck | unknown | ethereum | n/a | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | ⚠️ Unaudited |
| yVaultFactory | unknown | ethereum | n/a | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | ⚠️ Unaudited |
| yWBTC | unknown | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | unknown | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |

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
| [Arcadia-Cover-Blacksmith-Audit.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Arcadia-Cover-Blacksmith-Audit.pdf) | Arcadia | Audit | 2020-12 | stale | Direct | contract_name | 4 | high |
| [Cover Protocol - Report - V2 by Quantstamp.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Cover%20Protocol%20-%20Report%20-%20V2%20by%20Quantstamp.pdf) | Quantstamp | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [Cover Protocol v2 Security Audit Report (merged).pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Cover%20Protocol%20v2%20Security%20Audit%20Report%20(merged).pdf) | yAudit | Audit | 2021-02 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-CoverForge-v1.0rc.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/PeckShield-Audit-Report-CoverForge-v1.0rc.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | 2 | high |
| [peckshield-audit-report-cover-v1.0.pdf (also discovered via alternate URL)](https://github.com/CoverProtocol/cover-security/blob/master/audits/peckshield-audit-report-cover-v1.0.pdf) | PeckShield | Audit | 2020-11 | stale | Direct | contract_name | 4 | high |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/CoverProtocol/cover-token-mining/blob/main/Cover%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://389701914-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MN_8lt81m0bkkxuntw8%2F-MQnHkVDxSIblobTr8-Q%2F-MQnHrDVkyt7Hun89WE8%2FCover%20Protocol%20Peripheral%20Smart%20Contract%20Audit.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [- [Smart Contract Audits](): All deployed contracts are audited.](https://cover-protocol.gitbook.io/docs/architecture/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 156 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=44

Zero-match audit list:

- [16934] - [Smart Contract Audits](): All deployed contracts are audited.

Fork inheritance lineage and inherited audits are included when available.
