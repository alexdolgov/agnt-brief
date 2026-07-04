# Agentic Audit Brief: Ondo Finance

## Project Overview

- Project: Ondo Finance (`ondo-finance`)
- Website: [https://ondo.finance](https://ondo.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.636Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, bsc, ethereum, mantle
- Contract surface: 109 unique implementations (109 raw deployments)
- DeFi Llama TVL: $3,552,276,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 109 project-authored contract(s) across 4 chain(s); 24 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 35 common project-authored base contract(s) (contextupgradeable, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 109 (109 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 64/109 (58.7%)
- Deployed-live implementations: 109 of 109 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 64/109
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 31 (31 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 22
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/ondofinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 16 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 64 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 43.1% (Code4rena, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 30 | 27.5% | 2024-03 |
| Spearbit | Tier 1 | 20 | 18.3% | 2026-02 |
| Cyfrin | Tier 1 | 14 | 12.8% | 2025-07 |
| Halborn | Tier 2 | 14 | 12.8% | 2025-02 |
| Quantstamp | Tier 2 | 8 | 7.3% | 2022-01 |
| CertiK | Tier 2 | 3 | 2.8% | 2021-04 |
| ABDK | Tier 2 | 2 | 1.8% | 2022-05 |
| PeckShield | Tier 2 | 2 | 1.8% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminSubscriptionChecker | unknown | ethereum | n/a | [`0x1cb2dc...1fa018`](./contracts/ethereum-1/0x1cb2dcc325615d02ae384941149d1da6521fa018/) | ✅ Audited |
| AllowlistFactory | unknown | ethereum | n/a | [`0x0ed796...8ac988`](./contracts/ethereum-1/0x0ed7968f45cba8b8a76b014531435737e98ac988/) | ✅ Audited |
| AllPairVault | unknown | ethereum | n/a | [`0x2bb8de...de08bc`](./contracts/ethereum-1/0x2bb8de958134afd7543d4063cafad0b7c6de08bc/) | ✅ Audited |
| BasicRecipient | unknown | ethereum | n/a | [`0x10d8bb...c853e7`](./contracts/ethereum-1/0x10d8bbfae5df091dc1646a95685f7afae0c853e7/) | ✅ Audited |
| BasicSource | unknown | ethereum | n/a | [`0x273700...ce280e`](./contracts/ethereum-1/0x27370016a46ff10255b8daabe7035f5203ce280e/) | ✅ Audited |
| Blocklist | unknown | ethereum | n/a | [`0x5857fe...0deddf`](./contracts/ethereum-1/0x5857feb095302407a718ba6386a53c35da0deddf/) | ✅ Audited |
| BondStrategy | unknown | ethereum | n/a | [`0xd1c121...e31154`](./contracts/ethereum-1/0xd1c12131b5fd306279fc5bc571bd81049ee31154/) | ✅ Audited |
| BridgeRegistrar | unknown | ethereum | n/a | [`0x58d730...75e9ec`](./contracts/ethereum-1/0x58d73026c64da97ce858766384477d2e8775e9ec/) | ✅ Audited |
| BridgeRegistrarStub | unknown | bsc | n/a | [`0x55e0b3...d7c31c`](./contracts/bsc-56/0x55e0b3ac59d3f6a924483b25a9f3d83c0dd7c31c/) | ✅ Audited |
| BuidlUSDCSource | unknown | ethereum | n/a | [`0x9f205e...05b722`](./contracts/ethereum-1/0x9f205e1ac7698f59edbaa0a28c4a4c4ed605b722/) | ✅ Audited |
| CashKYCSenderReceiverFactory | unknown | ethereum | n/a | [`0xcbf5d0...09b4a8`](./contracts/ethereum-1/0xcbf5d0b946ba15a0914d39c3e13c3c489d09b4a8/) | ✅ Audited |
| CashManager | unknown | ethereum | n/a | [`0x350188...4d618f`](./contracts/ethereum-1/0x3501883a646f1f8417bcb62162372550954d618f/) | ✅ Audited |
| CCashDelegate | unknown | ethereum | n/a | [`0x1927c3...c322b9`](./contracts/ethereum-1/0x1927c38658dfc2f85d31d97e9cc011e0e1c322b9/) | ✅ Audited |
| DestinationBridge | unknown | ethereum | n/a | [`0xbd8fb5...c9235c`](./contracts/ethereum-1/0xbd8fb563a325dc853741907ae06e5f3c02c9235c/) | ✅ Audited |
| FluxOracle | unknown | ethereum | n/a | [`0x1c1f01...2280c5`](./contracts/ethereum-1/0x1c1f01765e60f3e695b3bba902e64daecc2280c5/) | ✅ Audited |
| FluxStateSanityCheck | unknown | ethereum | n/a | [`0xe486b2...72cce2`](./contracts/ethereum-1/0xe486b29da842b531b076c27d0f5085ab2d72cce2/) | ✅ Audited |
| GMTokenFactory | unknown | bsc | n/a | [`0x01bb86...733e82`](./contracts/bsc-56/0x01bb8620c0aef4390c983a5a792d178af2733e82/) | ✅ Audited |
| GMTokenLimitOrder | unknown | bsc | n/a | [`0x132fcd...dd50a3`](./contracts/bsc-56/0x132fcd1fcfd0e1ba1d23a3efef9cd4a9cadd50a3/) | ✅ Audited |
| GMTokenManager | unknown | ethereum | n/a | [`0x2c158b...4c5c8c`](./contracts/ethereum-1/0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c/) | ✅ Audited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x20bd72...970a13`](./contracts/ethereum-1/0x20bd72c3ab333399a85da76bcc2784a2a0970a13/) | ✅ Audited |
| InvestorBasedRateLimiter | unknown | ethereum | n/a | [`0x9b013b...c56ffa`](./contracts/ethereum-1/0x9b013b4e03b87295a68a19b1a55e3c7dc3c56ffa/) | ✅ Audited |
| IssuanceHours | unknown | bsc | n/a | [`0x2d3fa4...3c47b5`](./contracts/bsc-56/0x2d3fa4e1aab6e4bbd909cf81518a8084873c47b5/) | ✅ Audited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x3342e3...ba06c2`](./contracts/ethereum-1/0x3342e31aed7fa9bcde181a38e85375db5bba06c2/) | ✅ Audited |
| KYCRegistry | unknown | ethereum | n/a | [`0x71923a...678336`](./contracts/ethereum-1/0x71923a93a1f4837e931d888c90a10de4e3678336/) | ✅ Audited |
| OMMFFactory | unknown | ethereum | n/a | [`0x40f1ea...80e793`](./contracts/ethereum-1/0x40f1ea5256fddf049d9a46a96ff82766ea80e793/) | ✅ Audited |
| OMMFManager | unknown | ethereum | n/a | [`0x1d01be...be7929`](./contracts/ethereum-1/0x1d01be0296b99aadee94116e285cdb2c40be7929/) | ✅ Audited |
| OMMFRebaseSetter | unknown | ethereum | n/a | [`0x463efa...88afa7`](./contracts/ethereum-1/0x463efa052e662c6272e8aef5e4492d99f088afa7/) | ✅ Audited |
| Ondo | unknown | ethereum | n/a | [`0x3d72c7...f462df`](./contracts/ethereum-1/0x3d72c761180781d86ed5f631aeb51231d0f462df/) | ✅ Audited |
| OndoCoinlistDistributor | unknown | ethereum | n/a | [`0x14efbb...eb1e54`](./contracts/ethereum-1/0x14efbbe9f0bbae2bea83570f4fcd590c59eb1e54/) | ✅ Audited |
| OndoCompliance | unknown | ethereum | n/a | [`0x156f73...751002`](./contracts/ethereum-1/0x156f73fc73197555e950743cb2b23f411c751002/) | ✅ Audited |
| OndoComplianceGMView | unknown | ethereum | n/a | [`0x54a875...e80318`](./contracts/ethereum-1/0x54a8757c2fef8649830b158a8c19d3a670e80318/) | ✅ Audited |
| OndoFees | unknown | ethereum | n/a | [`0xe1cb24...c8d20c`](./contracts/ethereum-1/0xe1cb24077d77d2fe763fcac63e5653d97dc8d20c/) | ✅ Audited |
| OndoIDRegistryView | unknown | ethereum | n/a | [`0x56a5d9...7463e7`](./contracts/ethereum-1/0x56a5d911052323d688c731d516530878557463e7/) | ✅ Audited |
| OndoOracle | unknown | ethereum | n/a | [`0x9cad45...ab4094`](./contracts/ethereum-1/0x9cad45a8bf0ed41ff33074449b357c7a1fab4094/) | ✅ Audited |
| OndoPriceOracle | unknown | ethereum | n/a | [`0x526a13...753c8e`](./contracts/ethereum-1/0x526a13df3594637c08bc964ad1980181f2753c8e/) | ✅ Audited |
| OndoRateLimiter | unknown | ethereum | n/a | [`0x98db50...71003c`](./contracts/ethereum-1/0x98db502215da1ad9f626d4a0090a8a2f4971003c/) | ✅ Audited |
| OndoSanityCheckOracle | unknown | bsc | n/a | [`0x140328...e48c03`](./contracts/bsc-56/0x14032815b65f6b65f23d2532ad5f5dff7be48c03/) | ✅ Audited |
| OndoTokenRouter | unknown | bsc | n/a | [`0x1ff19c...48350f`](./contracts/bsc-56/0x1ff19caa684093ceaa3743c65420b9ff6f48350f/) | ✅ Audited |
| OUSG_InstantManager | unknown | ethereum | n/a | [`0x93358d...c2643a`](./contracts/ethereum-1/0x93358db73b6cd4b98d89c8f5f230e81a95c2643a/) | ✅ Audited |
| OUSGInstantManager | unknown | ethereum | n/a | [`0x1189ba...8ad97c`](./contracts/ethereum-1/0x1189bacb100676db9a495eec04a730a53a8ad97c/) | ✅ Audited |
| OUSGManager | unknown | ethereum | n/a | [`0xeb9a23...81736b`](./contracts/ethereum-1/0xeb9a2304be212c01597e1ca352e44b151b81736b/) | ✅ Audited |
| OUSGOracleWrapper | unknown | ethereum | n/a | [`0xadc496...94cdf3`](./contracts/ethereum-1/0xadc4966e4f8caaf12c777f07aa7a0ae8d894cdf3/) | ✅ Audited |
| PauseManager | unknown | bsc | n/a | [`0x0fdad5...8cd578`](./contracts/bsc-56/0x0fdad576c5d9432fc424c2922efdce92f48cd578/) | ✅ Audited |
| Pricer | unknown | ethereum | n/a | [`0x0d2691...78a07e`](./contracts/ethereum-1/0x0d269194548c874ec1ac7a6beb2a82bf7b78a07e/) | ✅ Audited |
| Registry | unknown | ethereum | n/a | [`0x1a05f3...0720ac`](./contracts/ethereum-1/0x1a05f3ef99e89caa2eea361fc3fae21fc60720ac/) | ✅ Audited |
| ROUSGFactory | unknown | ethereum | n/a | [`0xb3d770...b0fbaa`](./contracts/ethereum-1/0xb3d770240446c1d01c2e48f3fd323ca1ddb0fbaa/) | ✅ Audited |
| rUSDY | unknown | ethereum | n/a | [`0xaf37c1...26b879`](./contracts/ethereum-1/0xaf37c1167910ebc994e266949387d2c7c326b879/) | ✅ Audited |
| rUSDYFactory | unknown | ethereum | n/a | [`0x127123...6e6a74`](./contracts/ethereum-1/0x127123279f44c6c9a1da42852f06cb46fc6e6a74/) | ✅ Audited |
| RWADynamicOracle | unknown | ethereum | n/a | [`0xa0219a...121de0`](./contracts/ethereum-1/0xa0219aa5b31e65bc920b5b6dfb8edf0988121de0/) | ✅ Audited |
| RWAOracleExternalComparisonCheck | unknown | ethereum | n/a | [`0x0502c5...cc6abe`](./contracts/ethereum-1/0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe/) | ✅ Audited |
| RWAOracleRateCheck | unknown | ethereum | n/a | [`0x0576f5...eccc22`](./contracts/ethereum-1/0x0576f565bdd00199b8e353f569ce903bb2eccc22/) | ✅ Audited |
| SourceBridge | unknown | mantle | n/a | [`0x1d29b8...fc111b`](./contracts/mantle-5000/0x1d29b8bf4ae4d45d019d21a5770298ac46fc111b/) | ✅ Audited |
| SyntheticSharesOracle | unknown | ethereum | n/a | [`0x9bc39d...741be6`](./contracts/ethereum-1/0x9bc39db6fbb44b91a48b8d5a6c208b82b1741be6/) | ✅ Audited |
| Timelock | unknown | ethereum | n/a | [`0x2c5898...b18d9c`](./contracts/ethereum-1/0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c/) | ✅ Audited |
| TokenManagerRegistrar | unknown | bsc | n/a | [`0xa21ed4...f689cb`](./contracts/bsc-56/0xa21ed4c3122fc51c6d6db0d668d968c3b3f689cb/) | ✅ Audited |
| TokenPauseManager | unknown | bsc | n/a | [`0x633492...62638f`](./contracts/bsc-56/0x6334924c787ebd21c881740ef6237ef51962638f/) | ✅ Audited |
| TrancheToken | unknown | ethereum | n/a | [`0x1cc75c...8839a1`](./contracts/ethereum-1/0x1cc75c52c66960a70e4d94452f21037cd68839a1/) | ✅ Audited |
| USDonConverter | unknown | ethereum | n/a | [`0x54f5eb...1fc813`](./contracts/ethereum-1/0x54f5eb3e9a3b1bb71f1a7a89c445fba55b1fc813/) | ✅ Audited |
| USDonManager | unknown | ethereum | n/a | [`0x05ccbb...13d7e1`](./contracts/ethereum-1/0x05ccbb4b74854f8a067b83475e8c34f5a413d7e1/) | ✅ Audited |
| USDY | unknown | arbitrum | n/a | [`0x35e050...df9a9d`](./contracts/arbitrum-42161/0x35e050d3c0ec2d29d269a8ecea763a183bdf9a9d/) | ✅ Audited |
| USDY_InstantManager | unknown | ethereum | n/a | [`0xa42613...491f15`](./contracts/ethereum-1/0xa42613c243b67bf6194ac327795b926b4b491f15/) | ✅ Audited |
| USDYFactory | unknown | ethereum | n/a | [`0x07c81a...557a87`](./contracts/ethereum-1/0x07c81ab894dc6b577222784360742c436d557a87/) | ✅ Audited |
| USDYManager | unknown | ethereum | n/a | [`0x25a103...86b97e`](./contracts/ethereum-1/0x25a103a1d6aec5967c1a4fe2039cdc514886b97e/) | ✅ Audited |
| USDYOracleWrapper | unknown | ethereum | n/a | [`0x87b126...43df90`](./contracts/ethereum-1/0x87b126e5518b6a1bb8465779b4607c45c643df90/) | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowlistStub | unknown | ethereum | n/a | [`0x5cd9e3...e0c665`](./contracts/ethereum-1/0x5cd9e3a4c9933133b512da1b6ba4672160e0c665/) | ⚠️ Unaudited |
| BeaconProxy | unknown | bsc | n/a | [`0x02d608...1e44f8`](./contracts/bsc-56/0x02d608506ca0048d0d991a11f1e7fb8cad1e44f8/) | ⚠️ Unaudited |
| CashKYCSenderReceiver | unknown | ethereum | n/a | [`0x1b19c1...bbee92`](./contracts/ethereum-1/0x1b19c19393e2d034d8ff31ff34c81252fcbbee92/) | ⚠️ Unaudited |
| CDaiDelegate | unknown | ethereum | n/a | [`0x8e1e54...5db18d`](./contracts/ethereum-1/0x8e1e54ee9516c40650d7bbee0c53aca9f95db18d/) | ⚠️ Unaudited |
| CErc20DelegatorKYC | unknown | ethereum | n/a | [`0x049e2a...4651a9`](./contracts/ethereum-1/0x049e2aab49813c7a34656a193777019ed74651a9/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x076c84...d527e0`](./contracts/ethereum-1/0x076c8405d6e2ecb84ebe265b255519e0f0d527e0/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x72be8c...d4b63d`](./contracts/ethereum-1/0x72be8c14b7564f7a61ba2f6b7e50d18dc1d4b63d/) | ⚠️ Unaudited |
| GovernerAlpha | unknown | ethereum | n/a | [`0x755481...50673f`](./contracts/ethereum-1/0x7554815084eb70e8de277141650fad7e3d50673f/) | ⚠️ Unaudited |
| Inspector | unknown | ethereum | n/a | [`0x0b3423...9bb7a1`](./contracts/ethereum-1/0x0b34233a94c3433092009d8903080553039bb7a1/) | ⚠️ Unaudited |
| IssuanceHoursAlwaysOpen | unknown | bsc | n/a | [`0x180eec...fdd1bb`](./contracts/bsc-56/0x180eecc78a99d32e925ff6a0ed42ada2abfdd1bb/) | ⚠️ Unaudited |
| IssuanceHoursStub | unknown | ethereum | n/a | [`0x8dd664...0d3c52`](./contracts/ethereum-1/0x8dd664d8a14558dc5d41baf767efaf96570d3c52/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| Messenger | unknown | ethereum | n/a | [`0xff2bab...341eb3`](./contracts/ethereum-1/0xff2baba46df92919705e60120c477ae5b7341eb3/) | ⚠️ Unaudited |
| MinimalWhitelistedMulticall | unknown | ethereum | n/a | [`0xc872aa...992bc4`](./contracts/ethereum-1/0xc872aa5b6d7ddc2663ff7eee3eb94782e3992bc4/) | ⚠️ Unaudited |
| OndoIDRegistryFactory | unknown | ethereum | n/a | [`0x2db71e...c5d891`](./contracts/ethereum-1/0x2db71e3d748a86ae7d3013389094d2cc5fc5d891/) | ⚠️ Unaudited |
| OndoMintBurnAdapter | unknown | mantle | n/a | [`0x0be393...bfbb41`](./contracts/mantle-5000/0x0be393dc46248e4285dc5caca3084bc7e9bfbb41/) | ⚠️ Unaudited |
| OndoOwner | unknown | ethereum | n/a | [`0xbc6d5c...171c3e`](./contracts/ethereum-1/0xbc6d5c103a3f586e68bd475942a49d041b171c3e/) | ⚠️ Unaudited |
| PortfolioEscrow | unknown | bsc | n/a | [`0x1ff1b1...c83397`](./contracts/bsc-56/0x1ff1b1af23b64645afea8eafa2808eec9ec83397/) | ⚠️ Unaudited |
| PortfolioOrchestrator | unknown | bsc | n/a | [`0x2661c6...6e0b09`](./contracts/bsc-56/0x2661c6e807a1bc6a3c871d62dfd45affcf6e0b09/) | ⚠️ Unaudited |
| PortfolioTokenFactory | unknown | bsc | n/a | [`0x4a0afa...49dea1`](./contracts/bsc-56/0x4a0afacb521e04cbb067a378beb82097c649dea1/) | ⚠️ Unaudited |
| PortfolioTokenLimitOrder | unknown | bsc | n/a | [`0x713cb4...d193d5`](./contracts/bsc-56/0x713cb410dcbbc75eb8cfe996636a6a88bad193d5/) | ⚠️ Unaudited |
| PortfolioTokenManager | unknown | bsc | n/a | [`0x096371...17cae9`](./contracts/bsc-56/0x096371519838ee2e5cc8c017447cced15817cae9/) | ⚠️ Unaudited |
| PortfolioTokenRegistrar | unknown | bsc | n/a | [`0x38b012...b98835`](./contracts/bsc-56/0x38b0126f5a00ea026e606b06bd61f05b28b98835/) | ⚠️ Unaudited |
| PricerWithOracle | unknown | ethereum | n/a | [`0x14b113...f67b02`](./contracts/ethereum-1/0x14b113ca9100dff02641d6fcd6919b95b9f67b02/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x328ea3...0f67b4`](./contracts/bsc-56/0x328ea3f8ad2c09ff50047d179956c8d2ef0f67b4/) | ⚠️ Unaudited |
| RateLimiter | unknown | ethereum | n/a | [`0x4d4e56...699933`](./contracts/ethereum-1/0x4d4e562d6882dc523b8d629d2e9df9230b699933/) | ⚠️ Unaudited |
| rUSDYW_Factory | unknown | mantle | n/a | [`0x410907...8c64d1`](./contracts/mantle-5000/0x4109074822b86a6c41fdce1a92030dc7298c64d1/) | ⚠️ Unaudited |
| RWAOracleTestOnly | unknown | ethereum | n/a | [`0x70ec84...5d41c4`](./contracts/ethereum-1/0x70ec840bd57e4bbc563878297629b470755d41c4/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x3715b2...bc34f1`](./contracts/ethereum-1/0x3715b2154d2ff4c5b027c7a1f734b53f27bc34f1/) | ⚠️ Unaudited |
| TokenProxy | unknown | mantle | n/a | [`0x5be265...57c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xcf6958...7d97df`](./contracts/ethereum-1/0xcf6958d69d535fd03bd6df3f4fe6cdcd127d97df/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x03ec22...9bbb23`](./contracts/bsc-56/0x03ec229b76b0cae686a86d8501c7a37be89bbb23/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | [`0x0a5fa0...4659f4`](./contracts/ethereum-1/0x0a5fa0e21517d13e532904cfb1868d9d164659f4/) | ⚠️ Unaudited |
| USDon | unknown | bsc | n/a | [`0x1f8955...20dfe6`](./contracts/bsc-56/0x1f8955e640cbd9abc3c3bb408c9e2e1f5f20dfe6/) | ⚠️ Unaudited |
| USDon_Factory | unknown | ethereum | n/a | [`0xaa9427...7ff8cf`](./contracts/ethereum-1/0xaa9427d8827e9042bb3956604c4b57a9a37ff8cf/) | ⚠️ Unaudited |
| USDYc | unknown | ethereum | n/a | [`0xe86845...974c09`](./contracts/ethereum-1/0xe86845788d6e3e5c2393ade1a051ae617d974c09/) | ⚠️ Unaudited |
| USDYPricer | unknown | ethereum | n/a | [`0x7fb022...b2bfb5`](./contracts/ethereum-1/0x7fb0228c6338da4ec948df7b6a8e22ad2bb2bfb5/) | ⚠️ Unaudited |
| USDYW_Factory | unknown | mantle | n/a | [`0x36bd93...7330c1`](./contracts/mantle-5000/0x36bd938202ed388ece7f9857cc526519ed7330c1/) | ⚠️ Unaudited |
| WOMMFFactory | unknown | ethereum | n/a | [`0x02d77d...e2b51d`](./contracts/ethereum-1/0x02d77d39c3889bf1da64c96f6f3b9a22aee2b51d/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/ondofinance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/ondofinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [February 2026 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-LimitOrder-Protocol-Cantina-01-30-2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [December 2025 Zellic Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-Zellic-12-29-2025.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [December 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/report-cantinacode-ondo-1121.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [December 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-LimitOrder-Protocol-Cantina-12-02-2025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 1 | high |
| [November 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-SyntheticShares-Cantina-11-18-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [November 2025 FYEO Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-FYEO-11-05-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [October 2025 Cantina Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-USDonConverter-BridgeRegistrar-Cantina-10-06-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [September 2025 FYEO Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/GM-Solana-FEYO-09-08-2025.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [July 2025 Cyfrin Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/2025-07-14-cyfrin-ondo-global-markets-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | contract_name | 8 | high |
| [June 2025 Spearbit Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/report-cantinacode-ondo-0224-2.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 7 | high |
| [March 2025 Spearbit Audit](https://cantina.xyz/portfolio/fb329103-8bd1-45ac-91d8-4f75e1abf812) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 9 | medium |
| [February 2025 Halborn Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Audit-Feb-2025.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | 14 | high |
| [April 2024 Code4rena Audit](https://code4rena.com/reports/2024-03-ondo-finance) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | 5 | high |
| [April 2024 Cyfrin Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Cyfrin-Audit-April-2024.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | 6 | high |
| [September 2023 Code4rena Audit](https://code4rena.com/reports/2023-09-ondo) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | 6 | high |
| [August 2023 Zokyo Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Zokyo-Audit-August-2023.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | 10 | high |
| [April 2023 NetherMind Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-NetherMind-Audit-April-2023.pdf) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | 3 | high |
| [January 2023 Code4rena Audit](https://code4rena.com/reports/2023-01-ondo) | Code4rena | Contest | 2023-01 | stale | Direct | contract_name | 6 | high |
| [July 2024 Halborn Audit (additional module)](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Additional-Aura-Module-Audit-June-2024.pdf) | Halborn | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [June 2024 Halborn Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Halborn-Audit-June-2024.pdf) | Halborn | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [May 2022 ABDK Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-ABDK-Audit-October-2022.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [January 2022 Quantstamp Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Quantstamp-Audit-January_2022.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | contract_name | 8 | high |
| [September 2021 Quantstamp Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Quantstamp-Audit-September_2021.pdf) | Quantstamp | Audit | 2021-09 | stale | Direct | contract_name | 7 | high |
| [May 2021 Peckshield Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Peckshield-Audit-May_2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [April 2021 Certik Audit](https://docs-v2-git-prod-ondo-docs.vercel.app/pdf/Ondo-Certik-Audit-April_2021.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |
| [- [Audits]()](https://ondo-finance.gitbook.io/ondo-finance-users/architecture/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Ondo Quantstamp Audit September 2021.pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-MkenlI2MZZkbzwrFKdT%2FOndo%20Quantstamp%20Audit%20September%202021.pdf) | Quantstamp | Audit | 2021-09 | stale | Direct | contract_name | 7 | high |
| [Ondo Peckshield Audit May_2021.pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-Mkenx8CYnEwiqHSa7AO%2FOndo%20Peckshield%20Audit%20May_2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [Ondo_Certik_Audit_April_2021 (2).pdf](https://2626940135-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MaFJpOcvUFsdZPcbjYl%2F-MkemwoXv45o-QyPb6Z6%2F-MkenzUoS6gy1eVNHwlY%2FOndo_Certik_Audit_April_2021%20(2).pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 109 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=21, medium=1
- Match method counts: extraction_exact=113

Zero-match audit list:

- [17920] DL audit link
- [17923] December 2025 Zellic Audit
- [17924] December 2025 Cantina Audit
- [17927] November 2025 FYEO Audit
- [17929] September 2025 FYEO Audit
- [17940] July 2024 Halborn Audit (additional module)
- [17941] June 2024 Halborn Audit
- [17947] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
