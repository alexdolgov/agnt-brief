# Agentic Audit Brief: Frax Finance

## Project Overview

- Project: Frax Finance (`frax-finance`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.479Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, fraxtal, optimism
- Contract surface: 402 unique implementations (408 raw deployments)
- DeFi Llama TVL: $283,527,119.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 356 project-authored contract(s) across 4 chain(s); 48 ERC20 tokens, 3 ERC721 NFTs, 7 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 45 common project-authored base contract(s) (owned, erc20permit, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 408; live-surface contracts included: 408 (405 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 70/373 (18.8%)
- Deployed-live implementations: 400 of 402 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 71/402
- Verified + Unaudited implementations: 331
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 402
- Raw deployments: 408
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 11 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 71 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 18.2% (Certora, ChainSecurity, Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 60 | 14.9% | 2024-03 |
| Code4rena | Tier 1 | 6 | 1.5% | 2024-10 |
| Certora | Tier 1 | 3 | 0.7% | 2024-10 |
| ChainSecurity | Tier 1 | 1 | 0.2% | 2025-07 |
| Frax Security Cartel | Tier 2 | 1 | 0.2% | 2025-03 |
| Zellic | Tier 2 | 1 | 0.2% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (71)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowList | unknown | ethereum | n/a | [`0x42d75c...de8149`](./contracts/ethereum-1/0x42d75c8fdbbf046df0fe1ff388da16ff99de8149/) | ✅ Audited |
| BAMMFactory | unknown | fraxtal | n/a | [`0x199281...7db0ba`](./contracts/fraxtal-252/0x19928170d739139bfbbb6614007f8eeed17db0ba/) | ✅ Audited |
| BAMMUIHelper | unknown | fraxtal | n/a | [`0xb16f68...a0885a`](./contracts/fraxtal-252/0xb16f68c7351bbf8491824e7971efa14d2fa0885a/) | ✅ Audited |
| ComboOracle | unknown | ethereum | n/a | [`0x4462df...34490c`](./contracts/ethereum-1/0x4462df433d01f32ac0c4adb0a76dcf255634490c/) | ✅ Audited |
| CPITrackerOracle | unknown | ethereum | n/a | [`0x04baf3...ad8808`](./contracts/ethereum-1/0x04baf30115d7bac714709910dd286718cfad8808/) | ✅ Audited |
| CrossChainCanonicalFRAX | unknown | optimism | n/a | [`0x2e3d87...53f475`](./contracts/optimism-10/0x2e3d870790dc77a83dd1d18184acc7439a53f475/) | ✅ Audited |
| CrossChainCanonicalV2 | unknown | optimism | n/a | [`0x484c2d...36578c`](./contracts/optimism-10/0x484c2d6e3cdd945a8b2df735e079178c1036578c/) | ✅ Audited |
| ERC20RevocableStandard | unknown | ethereum | n/a | [`0x2e5f7d...2b3a32`](./contracts/ethereum-1/0x2e5f7dbed4aa799b13c737992562b7e8742b3a32/) | ✅ Audited |
| ERC721SoulboundToken | unknown | ethereum | n/a | [`0x2a33ae...f616bc`](./contracts/ethereum-1/0x2a33ae49f96b8982023f8381b57c1f2658f616bc/) | ✅ Audited |
| FPIControllerPool | unknown | ethereum | n/a | [`0x0ae84c...469e37`](./contracts/ethereum-1/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | ✅ Audited |
| FPISLocker | unknown | fraxtal | n/a | 4 deployments: fraxtal [`0x36b406...b09840`](./contracts/fraxtal-252/0x36b406a00997e4bd5b9bb3618d832fb88fb09840/); fraxtal `0xb4fdd7...02da35`; fraxtal `0xbbb3a1...126850`; fraxtal `0xe91488...e61c01` | ✅ Audited |
| FPISLockerUtils | unknown | fraxtal | n/a | 3 deployments: fraxtal [`0x858afb...027aea`](./contracts/fraxtal-252/0x858afbe668f4f562900bae3e2daed65d88027aea/); fraxtal `0x8a3399...2da974`; fraxtal `0xf82385...732414` | ✅ Audited |
| FraxAMOMinter | unknown | ethereum | n/a | [`0x36a0b6...8deb8c`](./contracts/ethereum-1/0x36a0b6a5f7b318a2b4af75fffb1b51a5c78deb8c/) | ✅ Audited |
| FraxEtherRedemptionQueue | unknown | ethereum | n/a | [`0x5fa025...f21a6d`](./contracts/ethereum-1/0x5fa02554432eb3c8a5397306d0b30e707bf21a6d/) | ✅ Audited |
| Fraxferry | unknown | ethereum | n/a | [`0x04ba20...d0a0cc`](./contracts/ethereum-1/0x04ba20d2cc47c63bce1166c2864f0241e4d0a0cc/) | ✅ Audited |
| FraxGaugeFXSRewardsDistributor | unknown | ethereum | n/a | [`0x278dc7...9fcd34`](./contracts/ethereum-1/0x278dc748eda1d8efef1adfb518542612b49fcd34/) | ✅ Audited |
| FraxGovernorAlpha | unknown | arbitrum | n/a | [`0x77314a...1a4037`](./contracts/arbitrum-42161/0x77314ad8dcd38c44874bf95cb3cf6622f31a4037/) | ✅ Audited |
| FraxGovernorOmega | unknown | arbitrum | n/a | [`0x246975...03a962`](./contracts/arbitrum-42161/0x2469757756eba7bea6b7f054896e3db74103a962/) | ✅ Audited |
| FraxlendPairDeployer | unknown | ethereum | n/a | [`0x17378a...ef8b91`](./contracts/ethereum-1/0x17378a023bfdebdc46e53d8dd0167489b5ef8b91/) | ✅ Audited |
| FraxlendWhitelist | unknown | ethereum | n/a | [`0x0e300f...c8b5ab`](./contracts/ethereum-1/0x0e300f7806ccd1d218658f9aba5d6564f9c8b5ab/) | ✅ Audited |
| FraxMiddlemanGauge_FRAX_mUSD | unknown | ethereum | n/a | [`0x3e14f6...4a6aec`](./contracts/ethereum-1/0x3e14f6eedcc5bc1d0fc7b20b45eae7b1f74a6aec/) | ✅ Audited |
| FRAXOracleWrapper | unknown | ethereum | n/a | [`0x2a6ddd...829a80`](./contracts/ethereum-1/0x2a6ddd9401b14d0443d0738b8a78fd5b99829a80/) | ✅ Audited |
| FraxPoolInvestorForV2 | unknown | ethereum | n/a | [`0xe09394...2689a4`](./contracts/ethereum-1/0xe09394ae14d7c3b1798e4dbea4c280973b2689a4/) | ✅ Audited |
| FraxPoolV3 | unknown | ethereum | n/a | [`0x2fe065...560729`](./contracts/ethereum-1/0x2fe065e6ffef9ac95ab39e5042744d695f560729/) | ✅ Audited |
| FRAXShares | unknown | ethereum | n/a | [`0x3432b6...c964d0`](./contracts/ethereum-1/0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0/) | ✅ Audited |
| FRAXStablecoin | unknown | ethereum | n/a | [`0x853d95...75b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Convex_frxETH | unknown | ethereum | n/a | [`0x689219...0cfa44`](./contracts/ethereum-1/0x68921998fbc43b360d3cf14a03af4273cb0cfa44/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxlend | unknown | ethereum | n/a | [`0x73e1e6...9fc17e`](./contracts/ethereum-1/0x73e1e624c6d3e027b8674e6c72f104f1429fc17e/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_FPIS | unknown | ethereum | n/a | [`0x3f2e53...8df2e0`](./contracts/ethereum-1/0x3f2e53b1a3036fd33f3c2f3cc49dab26a88df2e0/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_FXS | unknown | ethereum | n/a | [`0x06b7c6...b6e046`](./contracts/ethereum-1/0x06b7c6e8d22ece102fb282c41075bcc968b6e046/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_IQ | unknown | ethereum | n/a | [`0x356780...1f9c27`](./contracts/ethereum-1/0x35678017e1d252da1cdd6745b147e3e75d1f9c27/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_OHM | unknown | ethereum | n/a | [`0xd2b19c...28eee8`](./contracts/ethereum-1/0xd2b19c772f225c6f55eec8ac6a40dc338f28eee8/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_pitchFXS | unknown | ethereum | n/a | [`0x24c66b...07cf55`](./contracts/ethereum-1/0x24c66ba25ca2a53bb97b452b9f45dd075b07cf55/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_SDL | unknown | ethereum | n/a | [`0x8875a3...a30cf8`](./contracts/ethereum-1/0x8875a328eadb1e142f4021fc2098096796a30cf8/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_SYN | unknown | ethereum | n/a | [`0xb8e497...32d04b`](./contracts/ethereum-1/0xb8e49724a342c5f4c02918a1cda6b3b25632d04b/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_ZZ | unknown | ethereum | n/a | [`0x38950d...31f462`](./contracts/ethereum-1/0x38950d42cd549842b3fc862a45f00eb24331f462/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_FraxswapV2 | unknown | ethereum | n/a | [`0x788e44...6bad5b`](./contracts/ethereum-1/0x788e44b6424a0e4160ae4766e86640ec5a6bad5b/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_KyberSwapElastic | unknown | ethereum | n/a | [`0xa7ea2c...9b78e9`](./contracts/ethereum-1/0xa7ea2c8c166328c5a7c7ea8e5649724a2c9b78e9/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_KyberSwapElasticV2 | unknown | ethereum | n/a | [`0x0cf99b...25c975`](./contracts/ethereum-1/0x0cf99bbc8794e09e713769c4352eb3318e25c975/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Other | unknown | ethereum | n/a | [`0x1e64e3...12e55d`](./contracts/ethereum-1/0x1e64e373c143810524bdb1ac8dce35977d12e55d/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Other_Oracle | unknown | ethereum | n/a | [`0x169e5f...03e470`](./contracts/ethereum-1/0x169e5fd3fdca9f3fb7c75d09037cbeb65703e470/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Other_Oracled | unknown | ethereum | n/a | [`0x3ccc46...67e962`](./contracts/ethereum-1/0x3ccc4677356c53c9ff9c888e98b41403a767e962/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Temple_FRAX_TEMPLE | unknown | ethereum | n/a | [`0x016563...a15856`](./contracts/ethereum-1/0x016563f5eb22cf84fa0ff8b593ddc5343ca15856/) | ✅ Audited |
| FraxUnifiedFarm_ERC20_Vesper_Orbit_FRAX | unknown | ethereum | n/a | [`0x698137...df48d6`](./contracts/ethereum-1/0x698137c473bc1f0ea9b85ade45caf64ef2df48d6/) | ✅ Audited |
| FraxUnifiedFarm_KyberSwapElastic | unknown | ethereum | n/a | [`0x59f91a...24f505`](./contracts/ethereum-1/0x59f91aa50dfb3e4ac6d3580e5a2fc22a7c24f505/) | ✅ Audited |
| FraxUnifiedFarm_PosRebase_aFRAX | unknown | ethereum | n/a | [`0x02577b...57d65c`](./contracts/ethereum-1/0x02577b426f223a6b4f2351315a19ecd6f357d65c/) | ✅ Audited |
| FraxUniV3Farm_Stable_FRAX_agEUR | unknown | ethereum | n/a | [`0xf8caed...4f69e8`](./contracts/ethereum-1/0xf8caed1943b15b877d7105b9906a618c154f69e8/) | ✅ Audited |
| FraxUniV3Farm_Stable_FRAX_DAI | unknown | ethereum | n/a | [`0xf22471...3ff53e`](./contracts/ethereum-1/0xf22471ac2156b489cc4a59092c56713f813ff53e/) | ✅ Audited |
| frxETH | unknown | ethereum | n/a | [`0x0304a3...f0c00e`](./contracts/ethereum-1/0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e/) | ✅ Audited |
| frxETHMinter | unknown | ethereum | n/a | [`0x2dd1b4...b3b532`](./contracts/ethereum-1/0x2dd1b4d4548accea497050619965f91f78b3b532/) | ✅ Audited |
| FrxUSD | unknown | ethereum | n/a | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ✅ Audited |
| FXS1559_AMO | unknown | ethereum | n/a | [`0x9c6a04...1f51ee`](./contracts/ethereum-1/0x9c6a04871d11b33645ab592f68c41bb2b41f51ee/) | ✅ Audited |
| FXS1559_AMO_V3 | unknown | ethereum | n/a | [`0x7301bb...cedae5`](./contracts/ethereum-1/0x7301bb959ee286d8abc46f341144afe443cedae5/) | ✅ Audited |
| FXSOracleWrapper | unknown | ethereum | n/a | [`0xee0f15...ab3480`](./contracts/ethereum-1/0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480/) | ✅ Audited |
| ManualTokenTrackerAMO | unknown | ethereum | n/a | [`0x1be588...683f5a`](./contracts/ethereum-1/0x1be588641fb28eb8c2a51f1129707fb1e2683f5a/) | ✅ Audited |
| MerkleProofPriceSource | unknown | fraxtal | n/a | [`0x190ef4...6d5ee5`](./contracts/fraxtal-252/0x190ef482a3c8f45b9bd8575ecfa65954bd6d5ee5/) | ✅ Audited |
| Pool_USDC | unknown | ethereum | n/a | [`0x1864ca...da1c0d`](./contracts/ethereum-1/0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d/) | ✅ Audited |
| Proxy | unknown | ethereum | n/a | [`0x3aa663...51736e`](./contracts/ethereum-1/0x3aa66362b62712f281a00e3d1f72b7b5b851736e/) | ✅ Audited |
| sfrxETH | unknown | ethereum | n/a | [`0x17845e...f2656e`](./contracts/ethereum-1/0x17845ea6a9bfd2caf1b9e558948bb4999df2656e/) | ✅ Audited |
| SfrxUsd2OracleImplementation | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x1b680f...d3f1ff`](./contracts/fraxtal-252/0x1b680f4385f24420d264d78cab7c58365ed3f1ff/); fraxtal `0xf75063...07fc60` | ✅ Audited |
| StakingRewardsMultiGauge_Gelato_FRAX_DAI | unknown | ethereum | n/a | [`0xcdfc49...0e2f6f`](./contracts/ethereum-1/0xcdfc491804a420b677f8e788b5157856910e2f6f/) | ✅ Audited |
| StakingRewardsMultiGauge_StakeDAO_FRAX_Put | unknown | ethereum | n/a | [`0x0a5354...05bb56`](./contracts/ethereum-1/0x0a53544b2194dd8ebc62c779043fc0624705bb56/) | ✅ Audited |
| StateRootOracle | unknown | fraxtal | n/a | [`0x28fb35...acb383`](./contracts/fraxtal-252/0x28fb3520426d90eb03711bee041b9c3213acb383/) | ✅ Audited |
| SuperstateTokenV5_1 | unknown | ethereum | n/a | [`0x14d60e...74020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | ✅ Audited |
| UniV2TWAMMFactory | unknown | ethereum | n/a | [`0x54f454...b34e79`](./contracts/ethereum-1/0x54f454d747e037da288db568d4121117eab34e79/) | ✅ Audited |
| UniV3LiquidityAMO | unknown | ethereum | n/a | [`0x381430...f8f4e6`](./contracts/ethereum-1/0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6/) | ✅ Audited |
| UniV3LiquidityAMO_V2 | unknown | ethereum | n/a | [`0x0e8943...847440`](./contracts/ethereum-1/0x0e894387c073c6f62c9bbded21e33d3062847440/) | ✅ Audited |
| VariableInterestRate | unknown | ethereum | n/a | [`0x18500c...31f261`](./contracts/ethereum-1/0x18500cb1f2fe7a40ebda393383a0b8548a31f261/) | ✅ Audited |
| veFXSYieldDistributorV4 | unknown | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ✅ Audited |
| VestedFXS | unknown | fraxtal | n/a | [`0x54bd5c...24ee5c`](./contracts/fraxtal-252/0x54bd5c72645fed784c117ca83533e0584b24ee5c/) | ✅ Audited |
| WhitelistComplianceOracle | unknown | ethereum | n/a | [`0x285d32...360a06`](./contracts/ethereum-1/0x285d3256f0bbe7b69b511f75ce7a88f03d360a06/) | ✅ Audited |

### ⚠️ Verified + Unaudited (331)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | ethereum | n/a | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| AaveGenesisExecutor | unknown | ethereum | n/a | [`0x797ae6...686b53`](./contracts/ethereum-1/0x797ae69562588dd893567ba22dfcf8e842686b53/) | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | ethereum | n/a | [`0x36ec8f...a62e94`](./contracts/ethereum-1/0x36ec8f61d077909b2166f78c488f2525bca62e94/) | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | ethereum | n/a | [`0x238fcb...d6f76d`](./contracts/ethereum-1/0x238fcb066a2e4662078836237a62b59664d6f76d/) | ⚠️ Unaudited |
| AavePropositionPower | unknown | ethereum | n/a | [`0x72bbcf...746631`](./contracts/ethereum-1/0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631/) | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | ethereum | n/a | [`0xda8ad4...168a9d`](./contracts/ethereum-1/0xda8ad436e1dfe962091d86a341e957c6a5168a9d/) | ⚠️ Unaudited |
| AaveToken | unknown | ethereum | n/a | [`0x9c0435...74c8ba`](./contracts/ethereum-1/0x9c0435779f5e52cec404d957c9baa6f7d674c8ba/) | ⚠️ Unaudited |
| AaveTokenV3 | unknown | ethereum | n/a | [`0x7fc665...2ddae9`](./contracts/ethereum-1/0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9/) | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | ethereum | n/a | [`0xa5e83c...e3a391`](./contracts/ethereum-1/0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391/) | ⚠️ Unaudited |
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | unknown | ethereum | n/a | [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | unknown | ethereum | n/a | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| AlchemixToken | unknown | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlToken | unknown | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AmplificationUtils | unknown | ethereum | n/a | [`0x3661d0...9b490b`](./contracts/ethereum-1/0x3661d0f70e7f3ec418321a57fd62d691a09b490b/) | ⚠️ Unaudited |
| ArbitratorVault | unknown | ethereum | n/a | [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ⚠️ Unaudited |
| ArbitrumBridger | unknown | ethereum | n/a | [`0xc1f426...04f1ad`](./contracts/ethereum-1/0xc1f426d2b5151b139c0895b08c2310f7c804f1ad/) | ⚠️ Unaudited |
| ArbitrumDualOracle | unknown | arbitrum | n/a | [`0x5985fb...575667`](./contracts/arbitrum-42161/0x5985fbb03b6a5ea390871c2bb9742cd406575667/) | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | ethereum | n/a | [`0x5ac493...5574aa`](./contracts/ethereum-1/0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa/) | ⚠️ Unaudited |
| AToken | unknown | ethereum | n/a | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | ethereum | n/a | [`0xfac7be...b31e04`](./contracts/ethereum-1/0xfac7bea255a6990f749363002136af6556b31e04/) | ⚠️ Unaudited |
| BaseRewardPool | unknown | ethereum | n/a | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | ⚠️ Unaudited |
| BendToken | unknown | ethereum | n/a | [`0x02863c...1e9153`](./contracts/ethereum-1/0x02863c14603c3b157379999f567ddece151e9153/) | ⚠️ Unaudited |
| BendUpgradeableProxy | unknown | ethereum | n/a | [`0xf0dfc1...f159a0`](./contracts/ethereum-1/0xf0dfc149feab7bc2380f8d53b6353c6743f159a0/) | ⚠️ Unaudited |
| BlockMiner | unknown | ethereum | n/a | [`0xc0dc49...4fcaeb`](./contracts/ethereum-1/0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb/) | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | ethereum | n/a | [`0x90503d...624736`](./contracts/ethereum-1/0x90503d86e120b3b309cebf00c2ca013ab3624736/) | ⚠️ Unaudited |
| Booster | unknown | ethereum | n/a | [`0x2b8b30...2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/) | ⚠️ Unaudited |
| BoosterOwner | unknown | ethereum | n/a | [`0x3ce640...80f1e6`](./contracts/ethereum-1/0x3ce6408f923326f81a7d7929952947748180f1e6/) | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | ethereum | n/a | [`0x256e1b...98b86d`](./contracts/ethereum-1/0x256e1bba846611c37cf89844a02435e6c098b86d/) | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | ethereum | n/a | [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | ⚠️ Unaudited |
| BoosterRewardManager | unknown | ethereum | n/a | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0xa5bd85...fd4706`](./contracts/ethereum-1/0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706/) | ⚠️ Unaudited |
| BundleUtils | unknown | ethereum | n/a | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0xba9801...20272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | ethereum | n/a | [`0x9e194d...e0ed11`](./contracts/ethereum-1/0x9e194d49b7ed0123f46b07d7e10013a335e0ed11/) | ⚠️ Unaudited |
| ChefRewardHook | unknown | ethereum | n/a | [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ⚠️ Unaudited |
| ChefToken | unknown | ethereum | n/a | [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | ethereum | n/a | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ⚠️ Unaudited |
| ClaimZap | unknown | ethereum | n/a | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | unknown | ethereum | n/a | [`0x734fd1...ca4a73`](./contracts/ethereum-1/0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73/) | ⚠️ Unaudited |
| ComboOracle_KyberSwapElasticV2 | unknown | ethereum | n/a | [`0x603d9b...e05209`](./contracts/ethereum-1/0x603d9bb3a14d4289f622a35e40d05f0e24e05209/) | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | optimism | n/a | [`0x09044d...3b199a`](./contracts/optimism-10/0x09044da6e6ea891c83ee8d980bc109fda73b199a/) | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| ConvexAMO_V1_Recoverer | unknown | ethereum | n/a | [`0x49ee75...66bd71`](./contracts/ethereum-1/0x49ee75278820f409ecd67063d8d717b38d66bd71/) | ⚠️ Unaudited |
| ConvexRewarder | unknown | ethereum | n/a | [`0x9e01aa...77b362`](./contracts/ethereum-1/0x9e01aac4b3e8781a85b21d9d9f848e72af77b362/) | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | ethereum | n/a | [`0xa0334c...924ef8`](./contracts/ethereum-1/0xa0334c20700207ba4999a5596969fa63ec924ef8/) | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | ethereum | n/a | [`0x9dd9f3...231beb`](./contracts/ethereum-1/0x9dd9f3e3c25547c7fb6f6e3c99965677a7231beb/) | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | ethereum | n/a | [`0xa82beb...b786a4`](./contracts/ethereum-1/0xa82bebc607cd258c66a6d5006a19401eafb786a4/) | ⚠️ Unaudited |
| CrossChainBridgeBacker_OPTI_Celer | unknown | optimism | n/a | [`0x7f35dc...084ed0`](./contracts/optimism-10/0x7f35dc487a5422d6946aad733c6018f163084ed0/) | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | optimism | n/a | [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/) | ⚠️ Unaudited |
| CrossChainOracle | unknown | optimism | n/a | [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/) | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | optimism | n/a | [`0x35c696...ea66de`](./contracts/optimism-10/0x35c6962c221e4e8c17e2b4d59c8de79457ea66de/) | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | ethereum | n/a | [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | ⚠️ Unaudited |
| crvUSD ControllerFactory | unknown | ethereum | n/a | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSD deleverage zap | unknown | ethereum | n/a | [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | ⚠️ Unaudited |
| crvUSD Stablecoin | unknown | ethereum | n/a | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoFromPool | unknown | ethereum | n/a | [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | ethereum | n/a | [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | ethereum | n/a | [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | ethereum | n/a | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | ethereum | n/a | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | ethereum | n/a | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | ethereum | n/a | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | ethereum | n/a | [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | ⚠️ Unaudited |
| CurveAMO_V2 | unknown | ethereum | n/a | [`0x7e983e...de8769`](./contracts/ethereum-1/0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769/) | ⚠️ Unaudited |
| CurveAMO_V3 | unknown | ethereum | n/a | [`0x72170c...105da2`](./contracts/ethereum-1/0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2/) | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | ethereum | n/a | [`0xd99391...76afff`](./contracts/ethereum-1/0xd99391df68cdb38a89828a6d51f3976e3e76afff/) | ⚠️ Unaudited |
| CurveLendOperator | unknown | ethereum | n/a | [`0xb64e29...9cb8f5`](./contracts/ethereum-1/0xb64e295a69928d3404e576a8ff3c8766559cb8f5/) | ⚠️ Unaudited |
| CvxCrvRari | unknown | ethereum | n/a | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ⚠️ Unaudited |
| cvxCrvToken | unknown | ethereum | n/a | [`0x62b9c7...810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | ethereum | n/a | [`0xadd2f5...29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFpisToken | unknown | ethereum | n/a | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| cvxFxsToken | unknown | ethereum | n/a | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| CvxLocker | unknown | ethereum | n/a | [`0x5ae0fc...ce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/) | ⚠️ Unaudited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ⚠️ Unaudited |
| CvxMining | unknown | ethereum | n/a | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | ⚠️ Unaudited |
| cvxRewardPool | unknown | ethereum | n/a | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| CvxStakingProxy | unknown | ethereum | n/a | [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | ethereum | n/a | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | ⚠️ Unaudited |
| ENSToken | unknown | ethereum | n/a | [`0xc18360...7f9d72`](./contracts/ethereum-1/0xc18360217d8f7ab5e7c516566761ea12ce7f9d72/) | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | ethereum | n/a | [`0x10fe70...fb53fa`](./contracts/ethereum-1/0x10fe70382576f271caef5c152266fb458efb53fa/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | ethereum | n/a | [`0xb22c1c...e6ad16`](./contracts/ethereum-1/0xb22c1c159d12461ea124b0deb4b5b93020e6ad16/) | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | ethereum | n/a | [`0xc32659...27231d`](./contracts/ethereum-1/0xc32659651d137a18b79925449722855aa327231d/) | ⚠️ Unaudited |
| ExponentialPriceOracle | unknown | fraxtal | n/a | [`0x01480a...e0f358`](./contracts/fraxtal-252/0x01480a0c134cecc309015a564c7e292ba6e0f358/) | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | ethereum | n/a | [`0x9dc3de...cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | ethereum | n/a | [`0x0dbffb...7d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/) | ⚠️ Unaudited |
| EzEthEthOracle | unknown | fraxtal | n/a | [`0x6fd11e...d36681`](./contracts/fraxtal-252/0x6fd11e0e14314853988e1bbdabdd1c07d0d36681/) | ⚠️ Unaudited |
| EzEthOracle | unknown | fraxtal | n/a | [`0x1174b7...e16041`](./contracts/fraxtal-252/0x1174b74acb27cb20f2acd12a324ded7a1ce16041/) | ⚠️ Unaudited |
| FeeBridge | unknown | ethereum | n/a | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | n/a | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | ethereum | n/a | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | ethereum | n/a | [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | ethereum | n/a | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | ethereum | n/a | [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | ethereum | n/a | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | ⚠️ Unaudited |
| FPI | unknown | ethereum | n/a | [`0x5ca135...cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | ⚠️ Unaudited |
| FPIOracle | unknown | ethereum | n/a | [`0x25d3d3...65520f`](./contracts/ethereum-1/0x25d3d33b5f294f6d6e9afcbf599c51547665520f/) | ⚠️ Unaudited |
| FpiOracleAdapter | unknown | fraxtal | n/a | [`0xcacc09...90c60d`](./contracts/fraxtal-252/0xcacc0928f84d6a7ed55de1a5c4e3a7379190c60d/) | ⚠️ Unaudited |
| FPIS | unknown | ethereum | n/a | [`0xc2544a...901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | ⚠️ Unaudited |
| FpisDepositor | unknown | ethereum | n/a | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | ⚠️ Unaudited |
| FpisRewardHook | unknown | ethereum | n/a | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | ⚠️ Unaudited |
| FraxFarm_UniV3_veFXS_FRAX_DAI | unknown | ethereum | n/a | [`0x80fac1...fc8dfd`](./contracts/ethereum-1/0x80fac16d5b7e7973048951678dd78d16cbfc8dfd/) | ⚠️ Unaudited |
| FraxFarm_UniV3_veFXS_FRAX_USDC | unknown | ethereum | n/a | [`0x1c21dd...022660`](./contracts/ethereum-1/0x1c21dd0ce3ba89375fc39f1b134ad15671022660/) | ⚠️ Unaudited |
| FraxFarmRageQuitter_Gelato_FRAX_DAI | unknown | ethereum | n/a | [`0xe402a3...78231a`](./contracts/ethereum-1/0xe402a39f788f90607a50254faf56316e6a78231a/) | ⚠️ Unaudited |
| FraxFarmRageQuitter_StakeDAO_FraxPut | unknown | ethereum | n/a | [`0x7cb3da...e0f63b`](./contracts/ethereum-1/0x7cb3da98fe0d8c59f460afc0c8e6ec5ef1e0f63b/) | ⚠️ Unaudited |
| FraxFarmRageQuitter_Temple | unknown | ethereum | n/a | [`0x67e048...0a1e10`](./contracts/ethereum-1/0x67e04873691258950299bd8610403d69ba0a1e10/) | ⚠️ Unaudited |
| FraxGuard | unknown | arbitrum | n/a | [`0x959903...6dad41`](./contracts/arbitrum-42161/0x9599033315c29be9690b716bfe409381426dad41/) | ⚠️ Unaudited |
| FraxlendAMOV3 | unknown | fraxtal | n/a | [`0x8e4e6e...f6935a`](./contracts/fraxtal-252/0x8e4e6ea0ca69134ff93a5f5293598a441af6935a/) | ⚠️ Unaudited |
| FraxlendAMOV3Frax | unknown | fraxtal | n/a | [`0x58c433...6cb611`](./contracts/fraxtal-252/0x58c433482d74abd15f4f8e7201dc4004c06cb611/) | ⚠️ Unaudited |
| FraxLendingAMO | unknown | ethereum | n/a | [`0x950718...8825ef`](./contracts/ethereum-1/0x9507189f5b6d820cd93d970d67893006968825ef/) | ⚠️ Unaudited |
| FraxlendPairHelper | unknown | ethereum | n/a | [`0x05bb1c...afe999`](./contracts/ethereum-1/0x05bb1c15bdb20936aabd31c12130a960d9afe999/) | ⚠️ Unaudited |
| FraxlendPairRegistry | unknown | arbitrum | n/a | [`0x0bd2ff...ad316d`](./contracts/arbitrum-42161/0x0bd2ffbcb0a17de2d5a543ec2d47c772eead316d/) | ⚠️ Unaudited |
| FraxLoan | unknown | fraxtal | n/a | [`0xa25a70...22d99e`](./contracts/fraxtal-252/0xa25a70b49922c5e5a86450acddd0ebad7822d99e/) | ⚠️ Unaudited |
| FraxMiddlemanGaugeFerryHelper | unknown | ethereum | n/a | [`0x54bd5c...24ee5c`](./contracts/ethereum-1/0x54bd5c72645fed784c117ca83533e0584b24ee5c/) | ⚠️ Unaudited |
| FraxMiddlemanGaugeV2 | unknown | ethereum | n/a | [`0x0884c9...b72c6c`](./contracts/ethereum-1/0x0884c9bb52348fa76d4e1c6ea042a2eaf0b72c6c/) | ⚠️ Unaudited |
| FraxMiddlemanGaugeV3 | unknown | ethereum | n/a | [`0x007c87...2e3be1`](./contracts/ethereum-1/0x007c874a4240f8c31b4bfe6d91f47b903e2e3be1/) | ⚠️ Unaudited |
| FraxPoolLibrary | unknown | ethereum | n/a | [`0xa11b9c...feb6a4`](./contracts/ethereum-1/0xa11b9c88e4bf89ad9a70f5d408ffb5a6d5feb6a4/) | ⚠️ Unaudited |
| FraxswapFactory | unknown | ethereum | n/a | [`0x43ec79...fe0f6f`](./contracts/ethereum-1/0x43ec799eadd63848443e2347c49f5f52e8fe0f6f/) | ⚠️ Unaudited |
| FraxswapRouter | unknown | optimism | n/a | [`0x0ae84c...469e37`](./contracts/optimism-10/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | ⚠️ Unaudited |
| FraxswapRouterMultihop | unknown | ethereum | n/a | [`0x25e9ac...7dc4f0`](./contracts/ethereum-1/0x25e9aca5951262241290841b6f863d59d37dc4f0/) | ⚠️ Unaudited |
| FraxtalERC4626TransportOracle | unknown | fraxtal | n/a | [`0x0d7888...3d2aaf`](./contracts/fraxtal-252/0x0d7888e8ac9e5d0915148e0f871a3893af3d2aaf/) | ⚠️ Unaudited |
| FraxtalFpiTrackerTransportOracle | unknown | fraxtal | n/a | [`0x0f50be...3cbb02`](./contracts/fraxtal-252/0x0f50beee2d2506634b1e6230f3867e30763cbb02/) | ⚠️ Unaudited |
| FraxtalTransportOracle | unknown | fraxtal | n/a | [`0xa072b8...cff896`](./contracts/fraxtal-252/0xa072b830a881fe89c3be814a06be16e88bcff896/) | ⚠️ Unaudited |
| FraxVoterProxy | unknown | ethereum | n/a | [`0x59cfcd...66800b`](./contracts/ethereum-1/0x59cfcd384746ec3035299d90782be065e466800b/) | ⚠️ Unaudited |
| FrxEthDualOracle | unknown | fraxtal | n/a | [`0x4b0ca6...91a527`](./contracts/fraxtal-252/0x4b0ca693e29e5fd2aa39332a0387bbcd0f91a527/) | ⚠️ Unaudited |
| FrxUSDCustodianWithOracle | unknown | ethereum | n/a | [`0x5fbaa3...504f33`](./contracts/ethereum-1/0x5fbaa3a3b489199338fbd85f7e3d444dc0504f33/) | ⚠️ Unaudited |
| FrxUSDCustodianWithReceiver | unknown | ethereum | n/a | [`0x860cc7...ef7857`](./contracts/ethereum-1/0x860cc723935fc9a15ff8b1a94237a711dfef7857/) | ⚠️ Unaudited |
| FXB | unknown | ethereum | n/a | [`0x0de54c...f1df1e`](./contracts/ethereum-1/0x0de54cfdfed8005176f8b7a9d5438b45c4f1df1e/) | ⚠️ Unaudited |
| FXS1559_AMO_V2 | unknown | ethereum | n/a | [`0xc80c48...717c24`](./contracts/ethereum-1/0xc80c48862e4254f37047235298edb6aa35717c24/) | ⚠️ Unaudited |
| FxsDepositor | unknown | ethereum | n/a | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | ⚠️ Unaudited |
| FxsDualOracle | unknown | fraxtal | n/a | [`0xb99c9d...01c6d2`](./contracts/fraxtal-252/0xb99c9d329bd69ddf8af57110e011f5d81801c6d2/) | ⚠️ Unaudited |
| FXSRewardHook | unknown | ethereum | n/a | [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | ethereum | n/a | [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | ⚠️ Unaudited |
| GaugeHelperContract | unknown | ethereum | n/a | [`0x8020e4...ce9861`](./contracts/ethereum-1/0x8020e4134ad6a694adbe9521a12c751e67ce9861/) | ⚠️ Unaudited |
| Gel | unknown | ethereum | n/a | [`0x15b7c0...6cea05`](./contracts/ethereum-1/0x15b7c0c907e4c6b9adaaaabc300c08991d6cea05/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x830630...c1a81c`](./contracts/ethereum-1/0x8306300ffd616049fd7e4b0354a64da835c1a81c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | ethereum | n/a | [`0x0ae054...35847c`](./contracts/ethereum-1/0x0ae0548ef97d3ec699cf375e2467e24b2f35847c/) | ⚠️ Unaudited |
| gOHM | unknown | ethereum | n/a | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | ethereum | n/a | [`0xf3b2c2...443a06`](./contracts/ethereum-1/0xf3b2c28c7245c49ea5e6c6db98026f180b443a06/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| Health calculator zap for crvUSD controller | unknown | ethereum | n/a | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| HODLCoin | unknown | ethereum | n/a | [`0xb45d7b...2b672c`](./contracts/ethereum-1/0xb45d7bc4cebcab98ad09babdf8c818b2292b672c/) | ⚠️ Unaudited |
| HOPGovernor | unknown | ethereum | n/a | [`0xed8bdb...853d48`](./contracts/ethereum-1/0xed8bdb5895b8b7f9fdb3c087628fd8410e853d48/) | ⚠️ Unaudited |
| HOPToken | unknown | ethereum | n/a | [`0xc5102f...81a3cc`](./contracts/ethereum-1/0xc5102fe9359fd9a28f877a67e36b0f050d81a3cc/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x3b42cd...dc4430`](./contracts/ethereum-1/0x3b42cd463d247aaeffb38cff5d5ee42e9ddc4430/) | ⚠️ Unaudited |
| InterestRate | unknown | ethereum | n/a | [`0x710a2b...cbae02`](./contracts/ethereum-1/0x710a2b4b5f267047728402f1594f440a2acbae02/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | ethereum | n/a | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| InvestorAMO_V2 | unknown | ethereum | n/a | [`0x2b4d25...da01b4`](./contracts/ethereum-1/0x2b4d259a8f6e765ad881c4c1d04045d629da01b4/) | ⚠️ Unaudited |
| InvestorAMO_V2_upgrade | unknown | ethereum | n/a | [`0x1e5acc...bbf64d`](./contracts/ethereum-1/0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d/) | ⚠️ Unaudited |
| JointVaultManager | unknown | ethereum | n/a | [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | ⚠️ Unaudited |
| LendToAaveMigrator | unknown | ethereum | n/a | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | ethereum | n/a | [`0x0671ca...b3ffdf`](./contracts/ethereum-1/0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf/) | ⚠️ Unaudited |
| Leverage zap for crvUSD controller (sfrxETH market) | unknown | ethereum | n/a | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | ⚠️ Unaudited |
| LockerAdmin | unknown | ethereum | n/a | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | ⚠️ Unaudited |
| LPToken | unknown | ethereum | n/a | [`0x59f5a3...26710c`](./contracts/ethereum-1/0x59f5a371df7d2a01863cbb011a5a1ed45326710c/) | ⚠️ Unaudited |
| MasterRegistry | unknown | ethereum | n/a | [`0xc5ad17...68c045`](./contracts/ethereum-1/0xc5ad17b98d7fe73b6dd3b0df5b3040457e68c045/) | ⚠️ Unaudited |
| MathUtils | unknown | ethereum | n/a | [`0xc0409e...96de1c`](./contracts/ethereum-1/0xc0409ec303b727bc1f511d7f8c71fd5ead96de1c/) | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | ethereum | n/a | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x1b5d29...a5bc27`](./contracts/ethereum-1/0x1b5d2904be3e4711a848be09b17dee89e6a5bc27/) | ⚠️ Unaudited |
| MerkleProofPriceSourceEzEth | unknown | fraxtal | n/a | [`0xa87174...03abc5`](./contracts/fraxtal-252/0xa871745d853b941af700f1aa24b58f7a6903abc5/) | ⚠️ Unaudited |
| MerkleProofPriceSourceFpiOracle | unknown | fraxtal | n/a | [`0x8fc742...8e9c37`](./contracts/fraxtal-252/0x8fc7425cd36d7e4605650198099e4539238e9c37/) | ⚠️ Unaudited |
| MerkleProofPriceSourceRsEth | unknown | fraxtal | n/a | [`0x5bac02...0c8dac`](./contracts/fraxtal-252/0x5bac02527bbaa82453c0f93b8e3deab8ad0c8dac/) | ⚠️ Unaudited |
| MerkleProofPriceSourceSdai | unknown | fraxtal | n/a | [`0x816cf9...36974e`](./contracts/fraxtal-252/0x816cf9dcf8fce6fa7a2249d56cb203ddbf36974e/) | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrax | unknown | fraxtal | n/a | [`0xe25d8a...3b9bdb`](./contracts/fraxtal-252/0xe25d8aaa6df41b94a415ee39ccee0df6673b9bdb/) | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrxEth | unknown | fraxtal | n/a | [`0xa560e0...27ce32`](./contracts/fraxtal-252/0xa560e014501f96752726f65c27e96c3e9127ce32/) | ⚠️ Unaudited |
| MerkleProofPriceSourceSUSDe | unknown | fraxtal | n/a | [`0xc2b984...8955e9`](./contracts/fraxtal-252/0xc2b984e37d1caf5eef82d9d892287361058955e9/) | ⚠️ Unaudited |
| MerkleProofPriceSourceWstEth | unknown | fraxtal | n/a | [`0xef583c...dce8a2`](./contracts/fraxtal-252/0xef583ccb0bed4c9473178ebb228689a63bdce8a2/) | ⚠️ Unaudited |
| MetaSwap | unknown | ethereum | n/a | [`0x1dcb69...e30bab`](./contracts/ethereum-1/0x1dcb69a2b9148c641a43f731fcee123e2be30bab/) | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | ethereum | n/a | [`0x04d8ad...c9dba1`](./contracts/ethereum-1/0x04d8adaa0563e3c1cfe8295fed1f9c5e6ac9dba1/) | ⚠️ Unaudited |
| MetaSwapUtils | unknown | ethereum | n/a | [`0x0c8bae...9fd314`](./contracts/ethereum-1/0x0c8bae14c9f9bf2c953997c881befac7729fd314/) | ⚠️ Unaudited |
| MicroVeFXSStaker | unknown | ethereum | n/a | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | ⚠️ Unaudited |
| MigrationHelper | unknown | ethereum | n/a | [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | ethereum | n/a | [`0x691ef7...d58534`](./contracts/ethereum-1/0x691ef79e40d909c715be5e9e93738b3ff7d58534/) | ⚠️ Unaudited |
| MSIGHelper | unknown | ethereum | n/a | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | ⚠️ Unaudited |
| Multicall_Oz | unknown | ethereum | n/a | [`0x00160b...8b8478`](./contracts/ethereum-1/0x00160baf84b3d2014837cc12e838ea399f8b8478/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0xafd3d3...0a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NoopRewardsDistributor | unknown | ethereum | n/a | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | ⚠️ Unaudited |
| OHM_AMO | unknown | ethereum | n/a | [`0x5699d2...c4db96`](./contracts/ethereum-1/0x5699d20732a2efa9a895ef04bb210aa751c4db96/) | ⚠️ Unaudited |
| OlympusAuthority | unknown | ethereum | n/a | [`0x1c21f8...b38b7a`](./contracts/ethereum-1/0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a/) | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | ethereum | n/a | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | ethereum | n/a | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | ⚠️ Unaudited |
| OptimismBridger | unknown | ethereum | n/a | [`0xccfd60...310152`](./contracts/ethereum-1/0xccfd60589f4e15a23ad326a5e2c2d871ed310152/) | ⚠️ Unaudited |
| OwnedRegistrar | unknown | ethereum | n/a | [`0xa86ba3...db69cf`](./contracts/ethereum-1/0xa86ba3b6d83139a49b649c05dbb69e0726db69cf/) | ⚠️ Unaudited |
| OwnedResolver | unknown | ethereum | n/a | [`0x30200e...723b2b`](./contracts/ethereum-1/0x30200e0cb040f38e474e53ef437c95a1be723b2b/) | ⚠️ Unaudited |
| PAXImplementation | unknown | ethereum | n/a | [`0x6ffcb0...da9ce6`](./contracts/ethereum-1/0x6ffcb0f00c3ad2575e443152d8861aec1bda9ce6/) | ⚠️ Unaudited |
| PAXImplementationV2 | unknown | ethereum | n/a | [`0x86eee0...55310a`](./contracts/ethereum-1/0x86eee0422322710866af89e9cae3f7383d55310a/) | ⚠️ Unaudited |
| Peg Keeper | unknown | ethereum | n/a | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ⚠️ Unaudited |
| PegPrice | unknown | ethereum | n/a | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | ⚠️ Unaudited |
| PermissionlessDeployer | unknown | ethereum | n/a | [`0x8f43fb...22078f`](./contracts/ethereum-1/0x8f43fbddc10b822afa26812fb9058ca1fc22078f/) | ⚠️ Unaudited |
| PermissionlessMetaSwap | unknown | ethereum | n/a | [`0xfb0867...864570`](./contracts/ethereum-1/0xfb08672a5d4a302acb5830894a2f9ae804864570/) | ⚠️ Unaudited |
| PermissionlessMetaSwapFlashLoan | unknown | ethereum | n/a | [`0x45b48c...180d88`](./contracts/ethereum-1/0x45b48cdaf18a3678eb6cceba3e8a87477a180d88/) | ⚠️ Unaudited |
| PermissionlessSwap | unknown | ethereum | n/a | [`0x04b58d...83c765`](./contracts/ethereum-1/0x04b58dc190da2e9b46a3f1ac94f6eca3b683c765/) | ⚠️ Unaudited |
| PermissionlessSwapFlashLoan | unknown | ethereum | n/a | [`0x10170a...33b972`](./contracts/ethereum-1/0x10170a550d2865b9a23caa6c53a030d54233b972/) | ⚠️ Unaudited |
| Permit2 | unknown | fraxtal | n/a | [`0xa37fe0...ca243b`](./contracts/fraxtal-252/0xa37fe075d792894c32fe444aaa67f3e027ca243b/) | ⚠️ Unaudited |
| PerpToken | unknown | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| Pool_USDT | unknown | ethereum | n/a | [`0x7d3fcd...d54968`](./contracts/ethereum-1/0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968/) | ⚠️ Unaudited |
| PoolBridge | unknown | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolHarvestHook | unknown | ethereum | n/a | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | ⚠️ Unaudited |
| PoolManager | unknown | ethereum | n/a | [`0x3b2d30...135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/) | ⚠️ Unaudited |
| PoolManagerProxy | unknown | ethereum | n/a | [`0x5f4701...5c5c1b`](./contracts/ethereum-1/0x5f47010f230ce1568bea53a06ebaf528d05c5c1b/) | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | ethereum | n/a | [`0xd20904...91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | ethereum | n/a | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | ethereum | n/a | [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | ⚠️ Unaudited |
| PoolManagerV2 | unknown | ethereum | n/a | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | ⚠️ Unaudited |
| PoolManagerV3 | unknown | ethereum | n/a | [`0x8a849f...1b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/) | ⚠️ Unaudited |
| PoolManagerV4 | unknown | ethereum | n/a | [`0x0e4e9d...c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/) | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | ⚠️ Unaudited |
| PoolRewardHook | unknown | ethereum | n/a | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | ⚠️ Unaudited |
| PoolToken | unknown | ethereum | n/a | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | ⚠️ Unaudited |
| PoolTypes | unknown | ethereum | n/a | [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | ⚠️ Unaudited |
| PoolUtilities | unknown | ethereum | n/a | [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x069c24...76f577`](./contracts/ethereum-1/0x069c24600c2a03147d4e1d9b04d193151676f577/) | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | n/a | [`0x66807b...13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | n/a | [`0x226159...ed68b8`](./contracts/ethereum-1/0x226159d592e2b063810a10ebf6dcbada94ed68b8/) | ⚠️ Unaudited |
| PunkGateway | unknown | ethereum | n/a | [`0x2bbb6f...835ba0`](./contracts/ethereum-1/0x2bbb6f9c858a96a91e1e8e5b7f0e25ea34835ba0/) | ⚠️ Unaudited |
| RariFuseLendingAMO | unknown | ethereum | n/a | [`0x843df6...ddb0a2`](./contracts/ethereum-1/0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2/) | ⚠️ Unaudited |
| Registrar | unknown | ethereum | n/a | [`0x328328...6bdf51`](./contracts/ethereum-1/0x328328ba09293a4002b4b7615cba2c816d6bdf51/) | ⚠️ Unaudited |
| RegistrarMigration | unknown | ethereum | n/a | [`0x6109dd...75c662`](./contracts/ethereum-1/0x6109dd117aa5486605fc85e040ab00163a75c662/) | ⚠️ Unaudited |
| RescueToken | unknown | ethereum | n/a | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | ⚠️ Unaudited |
| RetroactiveVesting | unknown | ethereum | n/a | [`0x5dca27...198a03`](./contracts/ethereum-1/0x5dca270671935cf3df78bd8373c22be250198a03/) | ⚠️ Unaudited |
| RewardFactory | unknown | ethereum | n/a | [`0xedccb3...08aa8d`](./contracts/ethereum-1/0xedccb35798fae4925718a43cc608ae136208aa8d/) | ⚠️ Unaudited |
| RewardForwarder | unknown | ethereum | n/a | [`0x811b69...5dffac`](./contracts/ethereum-1/0x811b699c69ff0abff98091919e637fedcd5dffac/) | ⚠️ Unaudited |
| Root | unknown | ethereum | n/a | [`0x285088...e5284a`](./contracts/ethereum-1/0x285088c75a8508664ad77df63e2d60a408e5284a/) | ⚠️ Unaudited |
| SDL | unknown | ethereum | n/a | [`0xf1dc50...4f6871`](./contracts/ethereum-1/0xf1dc500fde233a4055e25e5bbf516372bc4f6871/) | ⚠️ Unaudited |
| Secondary monetary policy | unknown | ethereum | n/a | [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | ⚠️ Unaudited |
| Secondary monetary policy for WBTC | unknown | ethereum | n/a | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | n/a | [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | ⚠️ Unaudited |
| SfraxPriceOracle | unknown | fraxtal | n/a | [`0x35146c...68c3f7`](./contracts/fraxtal-252/0x35146cd017282fc18863494a9c618a521d68c3f7/) | ⚠️ Unaudited |
| sfrxETH2 crvUSD leverage zap | unknown | ethereum | n/a | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | ⚠️ Unaudited |
| SfrxEthDualOracle | unknown | fraxtal | n/a | [`0xa36a19...f7e7f2`](./contracts/fraxtal-252/0xa36a19e0ae3a91d886fc9d0914fc88a6cbf7e7f2/) | ⚠️ Unaudited |
| SfrxEthOracle | unknown | ethereum | n/a | [`0x27942a...9ac97b`](./contracts/ethereum-1/0x27942afe4ecb7f9945168094e0749cac749ac97b/) | ⚠️ Unaudited |
| SfrxEthSfraxInverseOracleAdapter | unknown | fraxtal | n/a | [`0x1010e2...77fa2c`](./contracts/fraxtal-252/0x1010e24a2f0e6954c6456bf925764ecc8577fa2c/) | ⚠️ Unaudited |
| ShibbolethTokenFactory | unknown | ethereum | n/a | [`0x2d915c...97904c`](./contracts/ethereum-1/0x2d915c3e78767b123bf56ab2daa49f74bb97904c/) | ⚠️ Unaudited |
| ShortNameAuctionController | unknown | ethereum | n/a | [`0x699c7f...919d17`](./contracts/ethereum-1/0x699c7f511c9e2182e89f29b3bfb68bd327919d17/) | ⚠️ Unaudited |
| SimpleRewarder | unknown | ethereum | n/a | [`0x595cce...318eb5`](./contracts/ethereum-1/0x595cce097a57ceef0e8e9032d29c24b064318eb5/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x1085e8...4b5853`](./contracts/ethereum-1/0x1085e85a7384dd2f0d46d2918630a1cf174b5853/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/) | ⚠️ Unaudited |
| StablePriceOracle | unknown | ethereum | n/a | [`0xb9d374...ae233a`](./contracts/ethereum-1/0xb9d374d0fe3d8341155663fae31b7beae0ae233a/) | ⚠️ Unaudited |
| Stake_FXS_WETH | unknown | ethereum | n/a | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | ⚠️ Unaudited |
| StakedAave | unknown | ethereum | n/a | [`0x481484...0d03a1`](./contracts/ethereum-1/0x481484ee9be4819842268487aeeb1f43810d03a1/) | ⚠️ Unaudited |
| StakedAaveV3 | unknown | ethereum | n/a | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| StakeDAO_AMO | unknown | ethereum | n/a | [`0x375278...efe465`](./contracts/ethereum-1/0x375278d3c65f29c1a90e8550888f1439cfefe465/) | ⚠️ Unaudited |
| StakeUIHelper | unknown | ethereum | n/a | [`0x06abcc...76ae68`](./contracts/ethereum-1/0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68/) | ⚠️ Unaudited |
| StakingPools | unknown | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingProxyConvex | unknown | ethereum | n/a | [`0x32a284...7ecb44`](./contracts/ethereum-1/0x32a2849100ed63878ba8ee6e924eb052a57ecb44/) | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | ethereum | n/a | [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | ethereum | n/a | [`0x64167f...111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/) | ⚠️ Unaudited |
| StakingRewardsDual_FRAX3CRV | unknown | ethereum | n/a | [`0xb88107...6d4df0`](./contracts/ethereum-1/0xb88107bfb7aa9b6a5ec8784374018073e76d4df0/) | ⚠️ Unaudited |
| StakingRewardsDualV2_FRAX3CRV_V2 | unknown | ethereum | n/a | [`0xdfb6ef...4d137e`](./contracts/ethereum-1/0xdfb6ef63ea2753c6598fca1b220358f17e4d137e/) | ⚠️ Unaudited |
| StakingRewardsDualV3_FRAX_IQ | unknown | ethereum | n/a | [`0x35fc5f...e14e6d`](./contracts/ethereum-1/0x35fc5fd90e06c47c0d9debfedb1daf55bce14e6d/) | ⚠️ Unaudited |
| StakingRewardsDualV4_FRAX_OHM | unknown | ethereum | n/a | [`0xfc77a4...2335ff`](./contracts/ethereum-1/0xfc77a420f56dec53e3b91d7fc936902e132335ff/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | unknown | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StashFactory | unknown | ethereum | n/a | [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | ⚠️ Unaudited |
| StashFactoryV2 | unknown | ethereum | n/a | [`0x884da0...9c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | ⚠️ Unaudited |
| StashTokenWrapper | unknown | ethereum | n/a | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | ethereum | n/a | [`0xa9a4ee...63e3d2`](./contracts/ethereum-1/0xa9a4ee56d91985a886affce7eb407492d263e3d2/) | ⚠️ Unaudited |
| SubdomainRegistrar | unknown | ethereum | n/a | [`0x0b0746...b0dbd1`](./contracts/ethereum-1/0x0b07463b30b302a98407d3e3df85ebc073b0dbd1/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | n/a | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| Swap | unknown | ethereum | n/a | [`0x9dc370...45bc5a`](./contracts/ethereum-1/0x9dc37020f261758871104f9d8b87e575ee45bc5a/) | ⚠️ Unaudited |
| SwapCalculator | unknown | ethereum | n/a | [`0xef8af8...a59033`](./contracts/ethereum-1/0xef8af8b67a58fe795304be8593c44ac0d3a59033/) | ⚠️ Unaudited |
| SwapDeployer | unknown | ethereum | n/a | [`0x29fd31...31ffce`](./contracts/ethereum-1/0x29fd31d37ab8d27f11eab68f96424bf64231ffce/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | ethereum | n/a | [`0x13cc34...fa2bdc`](./contracts/ethereum-1/0x13cc34aa8037f722405285ad2c82fe570bfa2bdc/) | ⚠️ Unaudited |
| SwapMigrator | unknown | ethereum | n/a | [`0x9cdef6...16ad57`](./contracts/ethereum-1/0x9cdef6e33687f438808766fc133b2e9d1a16ad57/) | ⚠️ Unaudited |
| SwapUtils | unknown | ethereum | n/a | [`0x149bbb...2833a6`](./contracts/ethereum-1/0x149bbb210051851016f57a2824c0444f642833a6/) | ⚠️ Unaudited |
| SynapseERC20 | unknown | ethereum | n/a | [`0x0f2d71...fd9f29`](./contracts/ethereum-1/0x0f2d719407fdbeff09d87557abb7232601fd9f29/) | ⚠️ Unaudited |
| SynthSwapper | unknown | ethereum | n/a | [`0xdf815e...5d24d3`](./contracts/ethereum-1/0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/) | ⚠️ Unaudited |
| TimelockController | unknown | fraxtal | n/a | [`0x72d7b8...362588`](./contracts/fraxtal-252/0x72d7b869ba1af7d7ee9010dd98180e9231362588/) | ⚠️ Unaudited |
| TimeToken | unknown | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokemakAMO | unknown | ethereum | n/a | [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/) | ⚠️ Unaudited |
| TokenFactory | unknown | ethereum | n/a | [`0x3c995e...147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | ⚠️ Unaudited |
| TokenLock | unknown | ethereum | n/a | [`0x180573...cb2235`](./contracts/ethereum-1/0x1805733b25c5de241a60bbf204af304d36cb2235/) | ⚠️ Unaudited |
| TokenTrackerAMO | unknown | ethereum | n/a | [`0x1e077b...11a612`](./contracts/ethereum-1/0x1e077b2a6a67f543629c8fccc97229452211a612/) | ⚠️ Unaudited |
| TokenTrackerV2 | unknown | ethereum | n/a | [`0x37336a...4d09ee`](./contracts/ethereum-1/0x37336ad1f3a145c710247e6a14c9acc7f34d09ee/) | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | n/a | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TreasuryFunds | unknown | ethereum | n/a | [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | ⚠️ Unaudited |
| TreasuryLend | unknown | ethereum | n/a | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryManager | unknown | ethereum | n/a | [`0x858847...750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/) | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | ethereum | n/a | [`0x9d464b...055f80`](./contracts/ethereum-1/0x9d464b601f74c8d3d42379921106b907f1055f80/) | ⚠️ Unaudited |
| TreasuryRegistry | unknown | ethereum | n/a | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | ⚠️ Unaudited |
| TreasurySwap | unknown | ethereum | n/a | [`0x00711e...75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/) | ⚠️ Unaudited |
| TWAMM_AMO | unknown | ethereum | n/a | [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x97c4ad...0d2d4d`](./contracts/ethereum-1/0x97c4adc5d28a86f9470c70dd91dc6cc2f20d2d4d/) | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | ethereum | n/a | [`0xa007a9...e808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | ethereum | n/a | [`0x59985d...d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | ⚠️ Unaudited |
| USCC | unknown | ethereum | n/a | [`0x41feb4...f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | ⚠️ Unaudited |
| USCCv2 | unknown | ethereum | n/a | [`0x5ce236...dea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | ⚠️ Unaudited |
| USD0LpOracle | unknown | ethereum | n/a | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x8e870d...8289e1`](./contracts/ethereum-1/0x8e870d67f660d95d5be530380d0ec0bd388289e1/) | ⚠️ Unaudited |
| USTB | unknown | ethereum | n/a | [`0x3986a1...51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | ⚠️ Unaudited |
| USTBv2 | unknown | ethereum | n/a | [`0x34ee70...8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| VariableInterestRate50bp | unknown | ethereum | n/a | [`0xff7846...66a98c`](./contracts/ethereum-1/0xff7846bacb63fe97406a1e1e48caf1595f66a98c/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x596f8e...1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/) | ⚠️ Unaudited |
| VaultEarnedView | unknown | ethereum | n/a | [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | unknown | ethereum | n/a | [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | unknown | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | unknown | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | unknown | ethereum | n/a | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | unknown | ethereum | n/a | [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/) | ⚠️ Unaudited |
| VeSDLRewards | unknown | ethereum | n/a | [`0xc7b10d...2078ae`](./contracts/ethereum-1/0xc7b10d3b08ceb05d8ff58a3c781225d9a72078ae/) | ⚠️ Unaudited |
| VestedEscrow | unknown | ethereum | n/a | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0xf8504e...1dc30b`](./contracts/ethereum-1/0xf8504e92428d65e56e495684a38f679c1b1dc30b/) | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | ethereum | n/a | [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | ethereum | n/a | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | ⚠️ Unaudited |
| VoterProxyOwner | unknown | ethereum | n/a | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | ⚠️ Unaudited |
| VotingBalance | unknown | ethereum | n/a | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | ⚠️ Unaudited |
| VotingBalanceMax | unknown | ethereum | n/a | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | ethereum | n/a | [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | ⚠️ Unaudited |
| VotingEligibility | unknown | ethereum | n/a | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0145fd...5b97a9`](./contracts/ethereum-1/0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9/) | ⚠️ Unaudited |
| WBTC-crvUSD leverage zap | unknown | ethereum | n/a | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | ⚠️ Unaudited |
| WETHGateway | unknown | ethereum | n/a | [`0x1302a7...971527`](./contracts/ethereum-1/0x1302a7da9cfa2bef4d7d8985fa0b1a1729971527/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | ⚠️ Unaudited |
| wstETH-crvUSD leverage zap | unknown | ethereum | n/a | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |
| ZigZagToken | unknown | ethereum | n/a | [`0xc91a71...bf55ad`](./contracts/ethereum-1/0xc91a71a1ffa3d8b22ba615ba1b9c01b2bbbf55ad/) | ⚠️ Unaudited |
| ZKasinoToken | unknown | ethereum | n/a | [`0xc91c88...cfc976`](./contracts/ethereum-1/0xc91c885580da11ac060bdd692bdaa7ee29cfc976/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/fraxfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [June 2021 - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf) | Trail of Bits | Audit | 2021-06 | stale | Direct | contract_name | 11 | high |
| [Dec 2021 - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ42021.pdf) | Trail of Bits | Audit | 2021-12 | stale | Direct | contract_name | 37 | high |
| [August 2022 - Fraxswap & FPI Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ22022.pdf) | Trail of Bits | Audit | 2022-08 | stale | Direct | contract_name | 4 | high |
| [September 2022 - frxETH - Code4rena](https://code4rena.com/reports/2022-09-frax) | Code4rena | Contest | 2022-09 | stale | Direct | contract_name | 4 | high |
| [November 2022 - Fraxlend & Fraxferry - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 3 | high |
| [July 2023 - FrxGov - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) | Trail of Bits | Audit | 2023-05 | stale | Direct | contract_name | 2 | high |
| [Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf) | Trail of Bits | Audit | 2023-10 | stale | Direct | contract_name | 3 | high |
| [Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxchain%20(Fraxtal)%20-%20Trail%20of%20Bits%20-%20Jan%202024.pdf) | Trail of Bits | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [March 2024 - frxETH V2 - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf) | Frax Security Cartel | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FPISLocker%20%2B%20FraxtalERC4626MintRedeemer%20(Fraxtal%20sFRAX)%20-%20May%202024%20-%20Frax%20Security%20Cartel.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 7 | high |
| [May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Frax-Certora (Bamm) report - Final.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax-Certora%20(Bamm)%20report%20-%20%20Final.pdf) | Certora | Audit | 2024-10 | aging | Direct | contract_name | 3 | high |
| [March 2025 - Fraxtal North Star - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf) | Frax Security Cartel | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Frax - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Frax0 Mesh - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax0%20Mesh%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [- [Audits]()](https://docs.frax.finance/other/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [审计]()](https://docs.frax.finance/zh/qi-ta/shen-ji.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | Alchemist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3661d0...9b490b`](./contracts/ethereum-1/0x3661d0f70e7f3ec418321a57fd62d691a09b490b/) | AmplificationUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ArbitratorVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1f426...04f1ad`](./contracts/ethereum-1/0xc1f426d2b5151b139c0895b08c2310f7c804f1ad/) | ArbitrumBridger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5985fb...575667`](./contracts/arbitrum-42161/0x5985fbb03b6a5ea390871c2bb9742cd406575667/) | ArbitrumDualOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac493...5574aa`](./contracts/ethereum-1/0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa/) | AssetVotingWeightProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfac7be...b31e04`](./contracts/ethereum-1/0xfac7bea255a6990f749363002136af6556b31e04/) | BaseRegistrarImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02863c...1e9153`](./contracts/ethereum-1/0x02863c14603c3b157379999f567ddece151e9153/) | BendToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0dfc1...f159a0`](./contracts/ethereum-1/0xf0dfc149feab7bc2380f8d53b6353c6743f159a0/) | BendUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0dc49...4fcaeb`](./contracts/ethereum-1/0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb/) | BlockMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90503d...624736`](./contracts/ethereum-1/0x90503d86e120b3b309cebf00c2ca013ab3624736/) | BokkyPooBahsDateTimeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8b30...2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/) | Booster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ce640...80f1e6`](./contracts/ethereum-1/0x3ce6408f923326f81a7d7929952947748180f1e6/) | BoosterOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256e1b...98b86d`](./contracts/ethereum-1/0x256e1bba846611c37cf89844a02435e6c098b86d/) | BoosterOwnerSecondary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | BoosterPlaceholder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | BoosterRewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5bd85...fd4706`](./contracts/ethereum-1/0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | BundleUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba9801...20272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ChefRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ChefToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ClaimVecrvFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x734fd1...ca4a73`](./contracts/ethereum-1/0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73/) | ComboOracle_KyberSwapElastic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x603d9b...e05209`](./contracts/ethereum-1/0x603d9bb3a14d4289f622a35e40d05f0e24e05209/) | ComboOracle_KyberSwapElasticV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09044d...3b199a`](./contracts/optimism-10/0x09044da6e6ea891c83ee8d980bc109fda73b199a/) | ComboOracle_UniV2_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | CommunalFarm_SaddleD4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f35dc...084ed0`](./contracts/optimism-10/0x7f35dc487a5422d6946aad733c6018f163084ed0/) | CrossChainBridgeBacker_OPTI_Celer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/) | CrossChainCanonicalFXS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/) | CrossChainOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x35c696...ea66de`](./contracts/optimism-10/0x35c6962c221e4e8c17e2b4d59c8de79457ea66de/) | CrossChainOracleSingleAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSD ControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | crvUSD deleverage zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSD Stablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | CryptoFromPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | CryptoFromPoolsRateWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | CryptoFromPoolWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | CryptoWithStablePriceETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | CryptoWithStablePriceSfrxeth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | CryptoWithStablePriceTBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | CryptoWithStablePriceWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | CvxCrvRari | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | CvxCrvStakingWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62b9c7...810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | cvxCrvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd2f5...29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | CvxCrvUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | CvxDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | cvxFpisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | cvxFxsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ae0fc...ce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/) | CvxLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | CvxLockerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | CvxMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | cvxRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | CvxStakingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | CvxStakingProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc18360...7f9d72`](./contracts/ethereum-1/0xc18360217d8f7ab5e7c516566761ea12ce7f9d72/) | ENSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fe70...fb53fa`](./contracts/ethereum-1/0x10fe70382576f271caef5c152266fb458efb53fa/) | ERC20RevocableComplianceStandard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb22c1c...e6ad16`](./contracts/ethereum-1/0xb22c1c159d12461ea124b0deb4b5b93020e6ad16/) | ETHRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32659...27231d`](./contracts/ethereum-1/0xc32659651d137a18b79925449722855aa327231d/) | EthRegistrarSubdomainRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x01480a...e0f358`](./contracts/fraxtal-252/0x01480a0c134cecc309015a564c7e292ba6e0f358/) | ExponentialPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc3de...cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ExtraRewardStashTokenRescue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dbffb...7d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/) | ExtraRewardStashV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x6fd11e...d36681`](./contracts/fraxtal-252/0x6fd11e0e14314853988e1bbdabdd1c07d0d36681/) | EzEthEthOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x1174b7...e16041`](./contracts/fraxtal-252/0x1174b74acb27cb20f2acd12a324ded7a1ce16041/) | EzEthOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | FeeReceiverCvxFpis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | FeeReceiverCvxFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | FeeReceiverPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | FeeReceiverVeFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | FeeReceiverVlCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | FeeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ca135...cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | FPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25d3d3...65520f`](./contracts/ethereum-1/0x25d3d33b5f294f6d6e9afcbf599c51547665520f/) | FPIOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xcacc09...90c60d`](./contracts/fraxtal-252/0xcacc0928f84d6a7ed55de1a5c4e3a7379190c60d/) | FpiOracleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2544a...901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | FPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | FpisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | FpisRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80fac1...fc8dfd`](./contracts/ethereum-1/0x80fac16d5b7e7973048951678dd78d16cbfc8dfd/) | FraxFarm_UniV3_veFXS_FRAX_DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c21dd...022660`](./contracts/ethereum-1/0x1c21dd0ce3ba89375fc39f1b134ad15671022660/) | FraxFarm_UniV3_veFXS_FRAX_USDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe402a3...78231a`](./contracts/ethereum-1/0xe402a39f788f90607a50254faf56316e6a78231a/) | FraxFarmRageQuitter_Gelato_FRAX_DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cb3da...e0f63b`](./contracts/ethereum-1/0x7cb3da98fe0d8c59f460afc0c8e6ec5ef1e0f63b/) | FraxFarmRageQuitter_StakeDAO_FraxPut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e048...0a1e10`](./contracts/ethereum-1/0x67e04873691258950299bd8610403d69ba0a1e10/) | FraxFarmRageQuitter_Temple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x959903...6dad41`](./contracts/arbitrum-42161/0x9599033315c29be9690b716bfe409381426dad41/) | FraxGuard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x8e4e6e...f6935a`](./contracts/fraxtal-252/0x8e4e6ea0ca69134ff93a5f5293598a441af6935a/) | FraxlendAMOV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x58c433...6cb611`](./contracts/fraxtal-252/0x58c433482d74abd15f4f8e7201dc4004c06cb611/) | FraxlendAMOV3Frax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x950718...8825ef`](./contracts/ethereum-1/0x9507189f5b6d820cd93d970d67893006968825ef/) | FraxLendingAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05bb1c...afe999`](./contracts/ethereum-1/0x05bb1c15bdb20936aabd31c12130a960d9afe999/) | FraxlendPairHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bd2ff...ad316d`](./contracts/arbitrum-42161/0x0bd2ffbcb0a17de2d5a543ec2d47c772eead316d/) | FraxlendPairRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xa25a70...22d99e`](./contracts/fraxtal-252/0xa25a70b49922c5e5a86450acddd0ebad7822d99e/) | FraxLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54bd5c...24ee5c`](./contracts/ethereum-1/0x54bd5c72645fed784c117ca83533e0584b24ee5c/) | FraxMiddlemanGaugeFerryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0884c9...b72c6c`](./contracts/ethereum-1/0x0884c9bb52348fa76d4e1c6ea042a2eaf0b72c6c/) | FraxMiddlemanGaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007c87...2e3be1`](./contracts/ethereum-1/0x007c874a4240f8c31b4bfe6d91f47b903e2e3be1/) | FraxMiddlemanGaugeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa11b9c...feb6a4`](./contracts/ethereum-1/0xa11b9c88e4bf89ad9a70f5d408ffb5a6d5feb6a4/) | FraxPoolLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ec79...fe0f6f`](./contracts/ethereum-1/0x43ec799eadd63848443e2347c49f5f52e8fe0f6f/) | FraxswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0ae84c...469e37`](./contracts/optimism-10/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | FraxswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e9ac...7dc4f0`](./contracts/ethereum-1/0x25e9aca5951262241290841b6f863d59d37dc4f0/) | FraxswapRouterMultihop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0d7888...3d2aaf`](./contracts/fraxtal-252/0x0d7888e8ac9e5d0915148e0f871a3893af3d2aaf/) | FraxtalERC4626TransportOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0f50be...3cbb02`](./contracts/fraxtal-252/0x0f50beee2d2506634b1e6230f3867e30763cbb02/) | FraxtalFpiTrackerTransportOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xa072b8...cff896`](./contracts/fraxtal-252/0xa072b830a881fe89c3be814a06be16e88bcff896/) | FraxtalTransportOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59cfcd...66800b`](./contracts/ethereum-1/0x59cfcd384746ec3035299d90782be065e466800b/) | FraxVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x4b0ca6...91a527`](./contracts/fraxtal-252/0x4b0ca693e29e5fd2aa39332a0387bbcd0f91a527/) | FrxEthDualOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fbaa3...504f33`](./contracts/ethereum-1/0x5fbaa3a3b489199338fbd85f7e3d444dc0504f33/) | FrxUSDCustodianWithOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x860cc7...ef7857`](./contracts/ethereum-1/0x860cc723935fc9a15ff8b1a94237a711dfef7857/) | FrxUSDCustodianWithReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de54c...f1df1e`](./contracts/ethereum-1/0x0de54cfdfed8005176f8b7a9d5438b45c4f1df1e/) | FXB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc80c48...717c24`](./contracts/ethereum-1/0xc80c48862e4254f37047235298edb6aa35717c24/) | FXS1559_AMO_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | FxsDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xb99c9d...01c6d2`](./contracts/fraxtal-252/0xb99c9d329bd69ddf8af57110e011f5d81801c6d2/) | FxsDualOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | FXSRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | GaugeExtraRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8020e4...ce9861`](./contracts/ethereum-1/0x8020e4134ad6a694adbe9521a12c751e67ce9861/) | GaugeHelperContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15b7c0...6cea05`](./contracts/ethereum-1/0x15b7c0c907e4c6b9adaaaabc300c08991d6cea05/) | Gel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | gOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3b2c2...443a06`](./contracts/ethereum-1/0xf3b2c28c7245c49ea5e6c6db98026f180b443a06/) | GovernanceParamsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | Health calculator zap for crvUSD controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb45d7b...2b672c`](./contracts/ethereum-1/0xb45d7bc4cebcab98ad09babdf8c818b2292b672c/) | HODLCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed8bdb...853d48`](./contracts/ethereum-1/0xed8bdb5895b8b7f9fdb3c087628fd8410e853d48/) | HOPGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5102f...81a3cc`](./contracts/ethereum-1/0xc5102fe9359fd9a28f877a67e36b0f050d81a3cc/) | HOPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x710a2b...cbae02`](./contracts/ethereum-1/0x710a2b4b5f267047728402f1594f440a2acbae02/) | InterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b4d25...da01b4`](./contracts/ethereum-1/0x2b4d259a8f6e765ad881c4c1d04045d629da01b4/) | InvestorAMO_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5acc...bbf64d`](./contracts/ethereum-1/0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d/) | InvestorAMO_V2_upgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | JointVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | LendToAaveMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0671ca...b3ffdf`](./contracts/ethereum-1/0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf/) | LendVoteStrategyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | Leverage zap for crvUSD controller (sfrxETH market) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | LiquidityGaugeV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | LLAMMA - crvUSD AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | LockerAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59f5a3...26710c`](./contracts/ethereum-1/0x59f5a371df7d2a01863cbb011a5a1ed45326710c/) | LPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ad17...68c045`](./contracts/ethereum-1/0xc5ad17b98d7fe73b6dd3b0df5b3040457e68c045/) | MasterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0409e...96de1c`](./contracts/ethereum-1/0xc0409ec303b727bc1f511d7f8c71fd5ead96de1c/) | MathUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | MerkleAirdropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b5d29...a5bc27`](./contracts/ethereum-1/0x1b5d2904be3e4711a848be09b17dee89e6a5bc27/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xa87174...03abc5`](./contracts/fraxtal-252/0xa871745d853b941af700f1aa24b58f7a6903abc5/) | MerkleProofPriceSourceEzEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x8fc742...8e9c37`](./contracts/fraxtal-252/0x8fc7425cd36d7e4605650198099e4539238e9c37/) | MerkleProofPriceSourceFpiOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x5bac02...0c8dac`](./contracts/fraxtal-252/0x5bac02527bbaa82453c0f93b8e3deab8ad0c8dac/) | MerkleProofPriceSourceRsEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x816cf9...36974e`](./contracts/fraxtal-252/0x816cf9dcf8fce6fa7a2249d56cb203ddbf36974e/) | MerkleProofPriceSourceSdai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xe25d8a...3b9bdb`](./contracts/fraxtal-252/0xe25d8aaa6df41b94a415ee39ccee0df6673b9bdb/) | MerkleProofPriceSourceSfrax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xa560e0...27ce32`](./contracts/fraxtal-252/0xa560e014501f96752726f65c27e96c3e9127ce32/) | MerkleProofPriceSourceSfrxEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xc2b984...8955e9`](./contracts/fraxtal-252/0xc2b984e37d1caf5eef82d9d892287361058955e9/) | MerkleProofPriceSourceSUSDe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xef583c...dce8a2`](./contracts/fraxtal-252/0xef583ccb0bed4c9473178ebb228689a63bdce8a2/) | MerkleProofPriceSourceWstEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dcb69...e30bab`](./contracts/ethereum-1/0x1dcb69a2b9148c641a43f731fcee123e2be30bab/) | MetaSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d8ad...c9dba1`](./contracts/ethereum-1/0x04d8adaa0563e3c1cfe8295fed1f9c5e6ac9dba1/) | MetaSwapDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8bae...9fd314`](./contracts/ethereum-1/0x0c8bae14c9f9bf2c953997c881befac7729fd314/) | MetaSwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | MicroVeFXSStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/) | MigrationHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x691ef7...d58534`](./contracts/ethereum-1/0x691ef79e40d909c715be5e9e93738b3ff7d58534/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | MSIGHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00160b...8b8478`](./contracts/ethereum-1/0x00160baf84b3d2014837cc12e838ea399f8b8478/) | Multicall_Oz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafd3d3...0a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | NoopRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5699d2...c4db96`](./contracts/ethereum-1/0x5699d20732a2efa9a895ef04bb210aa751c4db96/) | OHM_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c21f8...b38b7a`](./contracts/ethereum-1/0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a/) | OlympusAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | OlympusTokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xccfd60...310152`](./contracts/ethereum-1/0xccfd60589f4e15a23ad326a5e2c2d871ed310152/) | OptimismBridger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa86ba3...db69cf`](./contracts/ethereum-1/0xa86ba3b6d83139a49b649c05dbb69e0726db69cf/) | OwnedRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30200e...723b2b`](./contracts/ethereum-1/0x30200e0cb040f38e474e53ef437c95a1be723b2b/) | OwnedResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ffcb0...da9ce6`](./contracts/ethereum-1/0x6ffcb0f00c3ad2575e443152d8861aec1bda9ce6/) | PAXImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86eee0...55310a`](./contracts/ethereum-1/0x86eee0422322710866af89e9cae3f7383d55310a/) | PAXImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | Peg Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f43fb...22078f`](./contracts/ethereum-1/0x8f43fbddc10b822afa26812fb9058ca1fc22078f/) | PermissionlessDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb0867...864570`](./contracts/ethereum-1/0xfb08672a5d4a302acb5830894a2f9ae804864570/) | PermissionlessMetaSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45b48c...180d88`](./contracts/ethereum-1/0x45b48cdaf18a3678eb6cceba3e8a87477a180d88/) | PermissionlessMetaSwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b58d...83c765`](./contracts/ethereum-1/0x04b58dc190da2e9b46a3f1ac94f6eca3b683c765/) | PermissionlessSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10170a...33b972`](./contracts/ethereum-1/0x10170a550d2865b9a23caa6c53a030d54233b972/) | PermissionlessSwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | PerpToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d3fcd...d54968`](./contracts/ethereum-1/0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968/) | Pool_USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | PoolHarvestHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2d30...135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/) | PoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f4701...5c5c1b`](./contracts/ethereum-1/0x5f47010f230ce1568bea53a06ebaf528d05c5c1b/) | PoolManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd20904...91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | PoolManagerSecondaryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | PoolManagerShutdownProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | PoolManagerTertiaryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | PoolManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a849f...1b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/) | PoolManagerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4e9d...c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/) | PoolManagerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | PoolRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | PoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | PoolTypes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | PoolUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66807b...13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226159...ed68b8`](./contracts/ethereum-1/0x226159d592e2b063810a10ebf6dcbada94ed68b8/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bbb6f...835ba0`](./contracts/ethereum-1/0x2bbb6f9c858a96a91e1e8e5b7f0e25ea34835ba0/) | PunkGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x843df6...ddb0a2`](./contracts/ethereum-1/0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2/) | RariFuseLendingAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x328328...6bdf51`](./contracts/ethereum-1/0x328328ba09293a4002b4b7615cba2c816d6bdf51/) | Registrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6109dd...75c662`](./contracts/ethereum-1/0x6109dd117aa5486605fc85e040ab00163a75c662/) | RegistrarMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | RescueToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dca27...198a03`](./contracts/ethereum-1/0x5dca270671935cf3df78bd8373c22be250198a03/) | RetroactiveVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedccb3...08aa8d`](./contracts/ethereum-1/0xedccb35798fae4925718a43cc608ae136208aa8d/) | RewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x811b69...5dffac`](./contracts/ethereum-1/0x811b699c69ff0abff98091919e637fedcd5dffac/) | RewardForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x285088...e5284a`](./contracts/ethereum-1/0x285088c75a8508664ad77df63e2d60a408e5284a/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1dc50...4f6871`](./contracts/ethereum-1/0xf1dc500fde233a4055e25e5bbf516372bc4f6871/) | SDL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | Secondary monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | Secondary monetary policy for WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x35146c...68c3f7`](./contracts/fraxtal-252/0x35146cd017282fc18863494a9c618a521d68c3f7/) | SfraxPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2 crvUSD leverage zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xa36a19...f7e7f2`](./contracts/fraxtal-252/0xa36a19e0ae3a91d886fc9d0914fc88a6cbf7e7f2/) | SfrxEthDualOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27942a...9ac97b`](./contracts/ethereum-1/0x27942afe4ecb7f9945168094e0749cac749ac97b/) | SfrxEthOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x1010e2...77fa2c`](./contracts/fraxtal-252/0x1010e24a2f0e6954c6456bf925764ecc8577fa2c/) | SfrxEthSfraxInverseOracleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d915c...97904c`](./contracts/ethereum-1/0x2d915c3e78767b123bf56ab2daa49f74bb97904c/) | ShibbolethTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x699c7f...919d17`](./contracts/ethereum-1/0x699c7f511c9e2182e89f29b3bfb68bd327919d17/) | ShortNameAuctionController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x595cce...318eb5`](./contracts/ethereum-1/0x595cce097a57ceef0e8e9032d29c24b064318eb5/) | SimpleRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1085e8...4b5853`](./contracts/ethereum-1/0x1085e85a7384dd2f0d46d2918630a1cf174b5853/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d374...ae233a`](./contracts/ethereum-1/0xb9d374d0fe3d8341155663fae31b7beae0ae233a/) | StablePriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | Stake_FXS_WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x481484...0d03a1`](./contracts/ethereum-1/0x481484ee9be4819842268487aeeb1f43810d03a1/) | StakedAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | StakedAaveV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x375278...efe465`](./contracts/ethereum-1/0x375278d3c65f29c1a90e8550888f1439cfefe465/) | StakeDAO_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06abcc...76ae68`](./contracts/ethereum-1/0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68/) | StakeUIHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a284...7ecb44`](./contracts/ethereum-1/0x32a2849100ed63878ba8ee6e924eb052a57ecb44/) | StakingProxyConvex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | StakingProxyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64167f...111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/) | StakingProxyERC20Joint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb88107...6d4df0`](./contracts/ethereum-1/0xb88107bfb7aa9b6a5ec8784374018073e76d4df0/) | StakingRewardsDual_FRAX3CRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfb6ef...4d137e`](./contracts/ethereum-1/0xdfb6ef63ea2753c6598fca1b220358f17e4d137e/) | StakingRewardsDualV2_FRAX3CRV_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35fc5f...e14e6d`](./contracts/ethereum-1/0x35fc5fd90e06c47c0d9debfedb1daf55bce14e6d/) | StakingRewardsDualV3_FRAX_IQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc77a4...2335ff`](./contracts/ethereum-1/0xfc77a420f56dec53e3b91d7fc936902e132335ff/) | StakingRewardsDualV4_FRAX_OHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | StakingRewardsMultiGauge_StakeDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | StashFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x884da0...9c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | StashFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | StashTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9a4ee...63e3d2`](./contracts/ethereum-1/0xa9a4ee56d91985a886affce7eb407492d263e3d2/) | SubdomainMigrationRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b0746...b0dbd1`](./contracts/ethereum-1/0x0b07463b30b302a98407d3e3df85ebc073b0dbd1/) | SubdomainRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | SusdeMonetaryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc370...45bc5a`](./contracts/ethereum-1/0x9dc37020f261758871104f9d8b87e575ee45bc5a/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef8af8...a59033`](./contracts/ethereum-1/0xef8af8b67a58fe795304be8593c44ac0d3a59033/) | SwapCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29fd31...31ffce`](./contracts/ethereum-1/0x29fd31d37ab8d27f11eab68f96424bf64231ffce/) | SwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13cc34...fa2bdc`](./contracts/ethereum-1/0x13cc34aa8037f722405285ad2c82fe570bfa2bdc/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cdef6...16ad57`](./contracts/ethereum-1/0x9cdef6e33687f438808766fc133b2e9d1a16ad57/) | SwapMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x149bbb...2833a6`](./contracts/ethereum-1/0x149bbb210051851016f57a2824c0444f642833a6/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2d71...fd9f29`](./contracts/ethereum-1/0x0f2d719407fdbeff09d87557abb7232601fd9f29/) | SynapseERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf815e...5d24d3`](./contracts/ethereum-1/0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3/) | SynthSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/) | TokemakAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c995e...147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x180573...cb2235`](./contracts/ethereum-1/0x1805733b25c5de241a60bbf204af304d36cb2235/) | TokenLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e077b...11a612`](./contracts/ethereum-1/0x1e077b2a6a67f543629c8fccc97229452211a612/) | TokenTrackerAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37336a...4d09ee`](./contracts/ethereum-1/0x37336ad1f3a145c710247e6a14c9acc7f34d09ee/) | TokenTrackerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | Transmuter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | TreasuryFunds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x858847...750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/) | TreasuryManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d464b...055f80`](./contracts/ethereum-1/0x9d464b601f74c8d3d42379921106b907f1055f80/) | TreasuryManagerFrax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | TreasuryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00711e...75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/) | TreasurySwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/) | TWAMM_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa007a9...e808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | UniV2TWAMMRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59985d...d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | UniV3TWAPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41feb4...f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | USCC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ce236...dea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | USCCv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e870d...8289e1`](./contracts/ethereum-1/0x8e870d67f660d95d5be530380d0ec0bd388289e1/) | USDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3986a1...51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | USTB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34ee70...8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | USTBv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff7846...66a98c`](./contracts/ethereum-1/0xff7846bacb63fe97406a1e1e48caf1595f66a98c/) | VariableInterestRate50bp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x596f8e...1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | VaultEarnedView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/) | veFPISYieldDistributorV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | veFPISYieldDistributorV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | veFXSYieldDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | veFXSYieldDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/) | veFXSYieldDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7b10d...2078ae`](./contracts/ethereum-1/0xc7b10d3b08ceb05d8ff58a3c781225d9a72078ae/) | VeSDLRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | VestedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8504e...1dc30b`](./contracts/ethereum-1/0xf8504e92428d65e56e495684a38f679c1b1dc30b/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | vlCvxExtraRewardDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | VoteDelegateExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | VotingBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | VotingBalanceMax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | VotingBalanceV2Gauges | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | VotingEligibility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0145fd...5b97a9`](./contracts/ethereum-1/0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSD leverage zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1302a7...971527`](./contracts/ethereum-1/0x1302a7da9cfa2bef4d7d8985fa0b1a1729971527/) | WETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSD leverage zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc91a71...bf55ad`](./contracts/ethereum-1/0xc91a71a1ffa3d8b22ba615ba1b9c01b2bbbf55ad/) | ZigZagToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc91c88...cfc976`](./contracts/ethereum-1/0xc91c885580da11ac060bdd692bdaa7ee29cfc976/) | ZKasinoToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 375 |
| upstream | 20 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=79

Zero-match audit list:

- [17227] DL audit link
- [17235] Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf
- [17239] May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel
- [17241] March 2025 - Fraxtal North Star - Frax Security Cartel
- [17244] Frax0 Mesh - Zellic Audit Report.pdf
- [17245] - [Audits]()
- [17246] - [审计]()

Fork inheritance lineage and inherited audits are included when available.
