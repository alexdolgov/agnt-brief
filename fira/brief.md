# Agentic Audit Brief: Fira

## Project Overview

- Project: Fira (`fira`)
- Website: [https://www.fira.money/](https://www.fira.money/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.338Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 93 unique implementations (93 raw deployments)
- DeFi Llama TVL: $855,618,421.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 89 project-authored contract(s) across 1 chain(s); 8 ERC4626 vaults, 23 ERC20 tokens, 10 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 29 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 93 (93 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/83 (13.3%)
- Deployed-live implementations: 93 of 93 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/93
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 93
- Raw deployments: 93
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 12.0% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 13 | 14.0% | 2025-11 |
| Sherlock | Tier 1 | 12 | 12.9% | 2025-11 |
| Spearbit | Tier 1 | 12 | 12.9% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x73c288826347af3718e6f09c2a24aafda77684cd`](./contracts/ethereum-1/0x73c288826347af3718e6f09c2a24aafda77684cd/) | ✅ Audited |
| ChainlinkOracleV2 | unknown | ethereum | n/a | [`0x2ed527087b740530562754efcd608290eccdbe2e`](./contracts/ethereum-1/0x2ed527087b740530562754efcd608290eccdbe2e/) | ✅ Audited |
| ChainlinkOracleV2Factory | unknown | ethereum | n/a | [`0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc`](./contracts/ethereum-1/0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc/) | ✅ Audited |
| FiraLendingMarket | unknown | ethereum | n/a | [`0x280ddd897f39c33fef1cbf863b386cb9a8e53a0e`](./contracts/ethereum-1/0x280ddd897f39c33fef1cbf863b386cb9a8e53a0e/) | ✅ Audited |
| FixedRateIrm | unknown | ethereum | n/a | [`0xdfcf197b0b65066183b04b88d50acdc0c4b01385`](./contracts/ethereum-1/0xdfcf197b0b65066183b04b88d50acdc0c4b01385/) | ✅ Audited |
| LendingMarket | unknown | ethereum | n/a | [`0xc8db629192a96d6840e88a8451f17655880a2e4d`](./contracts/ethereum-1/0xc8db629192a96d6840e88a8451f17655880a2e4d/) | ✅ Audited |
| PermissionedSisuVault | unknown | ethereum | n/a | [`0xfe7c47895edb12a990b311df33b90cfea1d44c24`](./contracts/ethereum-1/0xfe7c47895edb12a990b311df33b90cfea1d44c24/) | ✅ Audited |
| PermissionedSisuVaultFactory | unknown | ethereum | n/a | [`0x0bc5719b062ce998804741fb93cf74ac00c5101b`](./contracts/ethereum-1/0x0bc5719b062ce998804741fb93cf74ac00c5101b/) | ✅ Audited |
| SisuVault | unknown | ethereum | n/a | [`0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac`](./contracts/ethereum-1/0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac/) | ✅ Audited |
| SisuVaultFactory | unknown | ethereum | n/a | [`0xe77e0f97a864558e5513209323e4169fceac6981`](./contracts/ethereum-1/0xe77e0f97a864558e5513209323e4169fceac6981/) | ✅ Audited |
| SisuVaultPriceFeed | unknown | ethereum | n/a | [`0x60f85e06665cecc7782279eee5fc58b3a33910da`](./contracts/ethereum-1/0x60f85e06665cecc7782279eee5fc58b3a33910da/) | ✅ Audited |
| USLLendingMarket | unknown | ethereum | n/a | [`0xa428723ee8ffd87088c36121d72100b43f11fb6a`](./contracts/ethereum-1/0xa428723ee8ffd87088c36121d72100b43f11fb6a/) | ✅ Audited |
| USLMigrator | unknown | ethereum | n/a | [`0x809c212b710f5b8e3f9898213f0d845e2bc46ec2`](./contracts/ethereum-1/0x809c212b710f5b8e3f9898213f0d845e2bc46ec2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveToChainlinkAdapter | unknown | ethereum | n/a | [`0x3d7346578be9b82e0227d027bd86f6de59ba3c91`](./contracts/ethereum-1/0x3d7346578be9b82e0227d027bd86f6de59ba3c91/) | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x00c7a37b03690fb9f41b5c5af8131735c7275446`](./contracts/ethereum-1/0x00c7a37b03690fb9f41b5c5af8131735c7275446/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x00260db07a22a6a5182213d8de1aba0705a6cd78`](./contracts/ethereum-1/0x00260db07a22a6a5182213d8de1aba0705a6cd78/) | ⚠️ Unaudited |
| AccessManager | unknown | ethereum | n/a | [`0xe167330e2eac88666de253e9607c6d9ae0ca2824`](./contracts/ethereum-1/0xe167330e2eac88666de253e9607c6d9ae0ca2824/) | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | ethereum | n/a | [`0x286bbc5519cd421011e7e1c092e1d6a72edb4d30`](./contracts/ethereum-1/0x286bbc5519cd421011e7e1c092e1d6a72edb4d30/) | ⚠️ Unaudited |
| ActionBorrow | unknown | ethereum | n/a | [`0x66f5853cf6c36b97e754f074397d00b78253ef03`](./contracts/ethereum-1/0x66f5853cf6c36b97e754f074397d00b78253ef03/) | ⚠️ Unaudited |
| ActionCallbackV3 | unknown | ethereum | n/a | [`0x2dead5b19935d7299d7077c52f2e2860370278a5`](./contracts/ethereum-1/0x2dead5b19935d7299d7077c52f2e2860370278a5/) | ⚠️ Unaudited |
| ActionMiscV3 | unknown | ethereum | n/a | [`0x967234d7a4416380107da653e5d3afc9c7bf8874`](./contracts/ethereum-1/0x967234d7a4416380107da653e5d3afc9c7bf8874/) | ⚠️ Unaudited |
| ActionSimple | unknown | ethereum | n/a | [`0x4474886d003abcb53c307324894c074ce5176f75`](./contracts/ethereum-1/0x4474886d003abcb53c307324894c074ce5176f75/) | ⚠️ Unaudited |
| ActionStorageV4 | unknown | ethereum | n/a | [`0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8`](./contracts/ethereum-1/0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8/) | ⚠️ Unaudited |
| ActionSwapBTV3 | unknown | ethereum | n/a | [`0xab2383692ed8e0836e25b71988c925dfd94ed2fe`](./contracts/ethereum-1/0xab2383692ed8e0836e25b71988c925dfd94ed2fe/) | ⚠️ Unaudited |
| ActionSwapCTV3 | unknown | ethereum | n/a | [`0xdb7a722ae7baf83d3d8b9e812952916326d6656b`](./contracts/ethereum-1/0xdb7a722ae7baf83d3d8b9e812952916326d6656b/) | ⚠️ Unaudited |
| AddressList | unknown | ethereum | n/a | [`0x2c271ddf484ac0386d216eb7eb9ff02d4dc0f6aa`](./contracts/ethereum-1/0x2c271ddf484ac0386d216eb7eb9ff02d4dc0f6aa/) | ⚠️ Unaudited |
| Aggregator | unknown | ethereum | n/a | [`0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d`](./contracts/ethereum-1/0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d/) | ⚠️ Unaudited |
| AggregatorFacade | unknown | ethereum | n/a | [`0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67`](./contracts/ethereum-1/0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67/) | ⚠️ Unaudited |
| ApxUSD | unknown | ethereum | n/a | [`0x1d42504c026f8f4f6809308e736646e4437f1fc0`](./contracts/ethereum-1/0x1d42504c026f8f4f6809308e736646e4437f1fc0/) | ⚠️ Unaudited |
| ApxUSDRateOracle | unknown | ethereum | n/a | [`0x26ea4a9099b4da41b2d0e7e9874a29104d8bb17f`](./contracts/ethereum-1/0x26ea4a9099b4da41b2d0e7e9874a29104d8bb17f/) | ⚠️ Unaudited |
| ApyUSD | unknown | ethereum | n/a | [`0x208507be7b01becfa4d93ee8a7d1f202ec66cacf`](./contracts/ethereum-1/0x208507be7b01becfa4d93ee8a7d1f202ec66cacf/) | ⚠️ Unaudited |
| ApyUSDDeployer | unknown | ethereum | n/a | [`0x1fad8a95d04b001cef58b4301b75052b6b523637`](./contracts/ethereum-1/0x1fad8a95d04b001cef58b4301b75052b6b523637/) | ⚠️ Unaudited |
| ApyUSDRateView | unknown | ethereum | n/a | [`0xcaba36ede2c08e16f3602e8688a8be94c1b4e484`](./contracts/ethereum-1/0xcaba36ede2c08e16f3602e8688a8be94c1b4e484/) | ⚠️ Unaudited |
| ApyxCollateralRatioOracle | unknown | ethereum | n/a | [`0x0e1e661a2e3594cf240116c71b6098bf44dec49c`](./contracts/ethereum-1/0x0e1e661a2e3594cf240116c71b6098bf44dec49c/) | ⚠️ Unaudited |
| ArbitrumValidator | unknown | ethereum | n/a | [`0x31982c9e5edd99bb923a948252167ea4bbc38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ⚠️ Unaudited |
| BCLpOracle | unknown | ethereum | n/a | [`0xfeaaec9124fb007d7c44ed704a08d24b264de921`](./contracts/ethereum-1/0xfeaaec9124fb007d7c44ed704a08d24b264de921/) | ⚠️ Unaudited |
| BondToken | unknown | ethereum | n/a | [`0x33fd40ed7744c961b61a086a87f83787bd9606ee`](./contracts/ethereum-1/0x33fd40ed7744c961b61a086a87f83787bd9606ee/) | ⚠️ Unaudited |
| ChainlinkOracle | unknown | ethereum | n/a | [`0x48f7e36eb6b826b2df4b2e630b62cd25e89e40e2`](./contracts/ethereum-1/0x48f7e36eb6b826b2df4b2e630b62cd25e89e40e2/) | ⚠️ Unaudited |
| ClassicalOracle | unknown | ethereum | n/a | [`0x95cf8c1cb7d256082eccf71371e50a5dbccc5220`](./contracts/ethereum-1/0x95cf8c1cb7d256082eccf71371e50a5dbccc5220/) | ⚠️ Unaudited |
| CommitToken | unknown | ethereum | n/a | [`0x17122d869d981d184118b301313bcd157c79871e`](./contracts/ethereum-1/0x17122d869d981d184118b301313bcd157c79871e/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x2e1b5a40edc922bce489668b11749b8eabd67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ⚠️ Unaudited |
| CouponToken | unknown | ethereum | n/a | [`0x17ea07eb87bf7b091070999a0d313556d4ac580b`](./contracts/ethereum-1/0x17ea07eb87bf7b091070999a0d313556d4ac580b/) | ⚠️ Unaudited |
| CPoR | unknown | ethereum | n/a | [`0x575a16cd2305ad7171f5c1036c3506070df28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | ⚠️ Unaudited |
| DaoCollateral | unknown | ethereum | n/a | [`0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b`](./contracts/ethereum-1/0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b/) | ⚠️ Unaudited |
| DeploymentHelpers | unknown | ethereum | n/a | [`0x758888dd8cc9c654519413e3da099c3ff618ce84`](./contracts/ethereum-1/0x758888dd8cc9c654519413e3da099c3ff618ce84/) | ⚠️ Unaudited |
| DistributionModule | unknown | ethereum | n/a | [`0xd56e9949d77001fa33ceab758bb93e1ab6469e73`](./contracts/ethereum-1/0xd56e9949d77001fa33ceab758bb93e1ab6469e73/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x00a773bd2ce922f866bb43ab876009fb959d7c29`](./contracts/ethereum-1/0x00a773bd2ce922f866bb43ab876009fb959d7c29/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x2037a5eb67aa9b2fbf50042b724d8c4db80f23b4`](./contracts/ethereum-1/0x2037a5eb67aa9b2fbf50042b724d8c4db80f23b4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x4756171ef30754db66885720b84c2caa70d7f53e`](./contracts/ethereum-1/0x4756171ef30754db66885720b84c2caa70d7f53e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x4b7445cc0186a780671ca513d8b66799139e50d3`](./contracts/ethereum-1/0x4b7445cc0186a780671ca513d8b66799139e50d3/) | ⚠️ Unaudited |
| FeedRegistry | unknown | ethereum | n/a | [`0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiraMarket | unknown | ethereum | n/a | [`0x400922e37d608620672dc1f1b7a25ecbaabb57f8`](./contracts/ethereum-1/0x400922e37d608620672dc1f1b7a25ecbaabb57f8/) | ⚠️ Unaudited |
| FiraMarketFactory | unknown | ethereum | n/a | [`0xbf1efc2199ae9ee1b6f5060a45d4440157e49744`](./contracts/ethereum-1/0xbf1efc2199ae9ee1b6f5060a45d4440157e49744/) | ⚠️ Unaudited |
| FiraSolvencyOracle | unknown | ethereum | n/a | [`0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6`](./contracts/ethereum-1/0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6/) | ⚠️ Unaudited |
| Flags | unknown | ethereum | n/a | [`0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | ⚠️ Unaudited |
| KeeperRegistry | unknown | ethereum | n/a | [`0x4f75953c2661d3a0138fcd80551ea10b80dd08c7`](./contracts/ethereum-1/0x4f75953c2661d3a0138fcd80551ea10b80dd08c7/) | ⚠️ Unaudited |
| LinearVestV0 | unknown | ethereum | n/a | [`0x0d62b4cc02b4b51ed19ddf41d7a7979cf394c99f`](./contracts/ethereum-1/0x0d62b4cc02b4b51ed19ddf41d7a7979cf394c99f/) | ⚠️ Unaudited |
| LiquidityInjector | unknown | ethereum | n/a | [`0x2104f638a839ca7260180d9ee7f4865c92df4ce5`](./contracts/ethereum-1/0x2104f638a839ca7260180d9ee7f4865c92df4ce5/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x0e9ca42bc60be25f9a67f52173067cc0bb405bb5`](./contracts/ethereum-1/0x0e9ca42bc60be25f9a67f52173067cc0bb405bb5/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MetaOracleDeviationTimelock | unknown | ethereum | n/a | [`0xea268c588072e2639448e3a9433ab92e871335e2`](./contracts/ethereum-1/0xea268c588072e2639448e3a9433ab92e871335e2/) | ⚠️ Unaudited |
| MinterV0 | unknown | ethereum | n/a | [`0x2c36e1adfaa80ee0324b04cc814f5207bb7ba76e`](./contracts/ethereum-1/0x2c36e1adfaa80ee0324b04cc814f5207bb7ba76e/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | ethereum | n/a | [`0x4dfcef82eaee9ea817beb1279336f7d0ebf2b685`](./contracts/ethereum-1/0x4dfcef82eaee9ea817beb1279336f7d0ebf2b685/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0fc84ab084a08971e6f52a9da41bfae82b546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | ⚠️ Unaudited |
| OrderDelegate | unknown | ethereum | n/a | [`0x5c697433e214b1a6d7a2ddd4cdca1505c98f75f1`](./contracts/ethereum-1/0x5c697433e214b1a6d7a2ddd4cdca1505c98f75f1/) | ⚠️ Unaudited |
| Patch0000 | unknown | ethereum | n/a | [`0x9d594d1fba500113ede103c071dcf68535da69b4`](./contracts/ethereum-1/0x9d594d1fba500113ede103c071dcf68535da69b4/) | ⚠️ Unaudited |
| PendleChainlinkOracle | unknown | ethereum | n/a | [`0xefdb275fc9c7946f36e632bef61379c5f5ab4c86`](./contracts/ethereum-1/0xefdb275fc9c7946f36e632bef61379c5f5ab4c86/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0x3de0ff76e8b528c092d47b9dac775931cef80f49`](./contracts/ethereum-1/0x3de0ff76e8b528c092d47b9dac775931cef80f49/) | ⚠️ Unaudited |
| PriceConsumer | unknown | ethereum | n/a | [`0x7f7d995fc12752fe5df42134252e8b7a8922f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | ⚠️ Unaudited |
| RegistryAccess | unknown | ethereum | n/a | [`0x0d374775e962c3608b8f0a4b8b10567df739bb56`](./contracts/ethereum-1/0x0d374775e962c3608b8f0a4b8b10567df739bb56/) | ⚠️ Unaudited |
| RegistryContract | unknown | ethereum | n/a | [`0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c`](./contracts/ethereum-1/0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c/) | ⚠️ Unaudited |
| RehypothecationModule | unknown | ethereum | n/a | [`0xad332515d9c82438bba0e9faa9486b52a33a7ac8`](./contracts/ethereum-1/0xad332515d9c82438bba0e9faa9486b52a33a7ac8/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x97fd565b913b439ff16774da152b1f71f05a82f1`](./contracts/ethereum-1/0x97fd565b913b439ff16774da152b1f71f05a82f1/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x4a9d21b46810f69a02ac2d61f4bf1963de82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0x641b698ad1c6e503470520b0eecb472c0589dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | ⚠️ Unaudited |
| StaleOracleFeed | unknown | ethereum | n/a | [`0xfdf9f131604aaf4832efd6485a321d9165ff5182`](./contracts/ethereum-1/0xfdf9f131604aaf4832efd6485a321d9165ff5182/) | ⚠️ Unaudited |
| SwapperEngine | unknown | ethereum | n/a | [`0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b`](./contracts/ethereum-1/0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b/) | ⚠️ Unaudited |
| TokenMapping | unknown | ethereum | n/a | [`0x334b18e5e81657efa2057f80e19b8e81f0e5783c`](./contracts/ethereum-1/0x334b18e5e81657efa2057f80e19b8e81f0e5783c/) | ⚠️ Unaudited |
| UnlockToken | unknown | ethereum | n/a | [`0x93775e2dfa4e716c361a1f53f212c7ae031bf4e6`](./contracts/ethereum-1/0x93775e2dfa4e716c361a1f53f212c7ae031bf4e6/) | ⚠️ Unaudited |
| Usd0 | unknown | ethereum | n/a | [`0x43ffb63f98ba9b687092f53235490650b30c2f01`](./contracts/ethereum-1/0x43ffb63f98ba9b687092f53235490650b30c2f01/) | ⚠️ Unaudited |
| Usd0PP | unknown | ethereum | n/a | [`0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f`](./contracts/ethereum-1/0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f/) | ⚠️ Unaudited |
| USDCFW | unknown | ethereum | n/a | [`0x62f5366c9e21a95326c461a098a408e034e017b3`](./contracts/ethereum-1/0x62f5366c9e21a95326c461a098a408e034e017b3/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x264bddfd9d93d48d759fbdb0670be1c6fdd50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| YieldContractFactory | unknown | ethereum | n/a | [`0xcdb83abb9121c04589567a4106c3cfaf65db68be`](./contracts/ethereum-1/0xcdb83abb9121c04589567a4106c3cfaf65db68be/) | ⚠️ Unaudited |
| YieldDistributor | unknown | ethereum | n/a | [`0xdbca79adc13a0fa6f921d5cf5b3fae2b8a739c2a`](./contracts/ethereum-1/0xdbca79adc13a0fa6f921d5cf5b3fae2b8a739c2a/) | ⚠️ Unaudited |
| YieldModule | unknown | ethereum | n/a | [`0x2792dad98fd6ba3743ca3484dbc2ce436faa9440`](./contracts/ethereum-1/0x2792dad98fd6ba3743ca3484dbc2ce436faa9440/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlock%20-%20Fira%20UZR%20Audit%20Nov25.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 12 | high |
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-2e55243e2c80f4574b96f599d6f58ea327cb2aa8%2FCantinacode%20-%20Fira%20UZR%20Audit%20Nov25.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | 12 | high |
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-49aa88712501071eb47f480f9b7812073e1e54e2%2FyAudit%20-%20Fira%20UZR%20Audit%20Dec%2025.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 13 | high |
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens-fira-feb-26.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Learn more](https://audits.sherlock.xyz/bug-bounties/227) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3d7346578be9b82e0227d027bd86f6de59ba3c91`](./contracts/ethereum-1/0x3d7346578be9b82e0227d027bd86f6de59ba3c91/) | AaveToChainlinkAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00c7a37b03690fb9f41b5c5af8131735c7275446`](./contracts/ethereum-1/0x00c7a37b03690fb9f41b5c5af8131735c7275446/) | AccessControlledAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00260db07a22a6a5182213d8de1aba0705a6cd78`](./contracts/ethereum-1/0x00260db07a22a6a5182213d8de1aba0705a6cd78/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe167330e2eac88666de253e9607c6d9ae0ca2824`](./contracts/ethereum-1/0xe167330e2eac88666de253e9607c6d9ae0ca2824/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x286bbc5519cd421011e7e1c092e1d6a72edb4d30`](./contracts/ethereum-1/0x286bbc5519cd421011e7e1c092e1d6a72edb4d30/) | ActionAddRemoveLiqV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66f5853cf6c36b97e754f074397d00b78253ef03`](./contracts/ethereum-1/0x66f5853cf6c36b97e754f074397d00b78253ef03/) | ActionBorrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dead5b19935d7299d7077c52f2e2860370278a5`](./contracts/ethereum-1/0x2dead5b19935d7299d7077c52f2e2860370278a5/) | ActionCallbackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x967234d7a4416380107da653e5d3afc9c7bf8874`](./contracts/ethereum-1/0x967234d7a4416380107da653e5d3afc9c7bf8874/) | ActionMiscV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4474886d003abcb53c307324894c074ce5176f75`](./contracts/ethereum-1/0x4474886d003abcb53c307324894c074ce5176f75/) | ActionSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8`](./contracts/ethereum-1/0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8/) | ActionStorageV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab2383692ed8e0836e25b71988c925dfd94ed2fe`](./contracts/ethereum-1/0xab2383692ed8e0836e25b71988c925dfd94ed2fe/) | ActionSwapBTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb7a722ae7baf83d3d8b9e812952916326d6656b`](./contracts/ethereum-1/0xdb7a722ae7baf83d3d8b9e812952916326d6656b/) | ActionSwapCTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c271ddf484ac0386d216eb7eb9ff02d4dc0f6aa`](./contracts/ethereum-1/0x2c271ddf484ac0386d216eb7eb9ff02d4dc0f6aa/) | AddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d`](./contracts/ethereum-1/0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67`](./contracts/ethereum-1/0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67/) | AggregatorFacade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d42504c026f8f4f6809308e736646e4437f1fc0`](./contracts/ethereum-1/0x1d42504c026f8f4f6809308e736646e4437f1fc0/) | ApxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ea4a9099b4da41b2d0e7e9874a29104d8bb17f`](./contracts/ethereum-1/0x26ea4a9099b4da41b2d0e7e9874a29104d8bb17f/) | ApxUSDRateOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x208507be7b01becfa4d93ee8a7d1f202ec66cacf`](./contracts/ethereum-1/0x208507be7b01becfa4d93ee8a7d1f202ec66cacf/) | ApyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fad8a95d04b001cef58b4301b75052b6b523637`](./contracts/ethereum-1/0x1fad8a95d04b001cef58b4301b75052b6b523637/) | ApyUSDDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcaba36ede2c08e16f3602e8688a8be94c1b4e484`](./contracts/ethereum-1/0xcaba36ede2c08e16f3602e8688a8be94c1b4e484/) | ApyUSDRateView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e1e661a2e3594cf240116c71b6098bf44dec49c`](./contracts/ethereum-1/0x0e1e661a2e3594cf240116c71b6098bf44dec49c/) | ApyxCollateralRatioOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31982c9e5edd99bb923a948252167ea4bbc38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ArbitrumValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeaaec9124fb007d7c44ed704a08d24b264de921`](./contracts/ethereum-1/0xfeaaec9124fb007d7c44ed704a08d24b264de921/) | BCLpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33fd40ed7744c961b61a086a87f83787bd9606ee`](./contracts/ethereum-1/0x33fd40ed7744c961b61a086a87f83787bd9606ee/) | BondToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95cf8c1cb7d256082eccf71371e50a5dbccc5220`](./contracts/ethereum-1/0x95cf8c1cb7d256082eccf71371e50a5dbccc5220/) | ClassicalOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17122d869d981d184118b301313bcd157c79871e`](./contracts/ethereum-1/0x17122d869d981d184118b301313bcd157c79871e/) | CommitToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e1b5a40edc922bce489668b11749b8eabd67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ea07eb87bf7b091070999a0d313556d4ac580b`](./contracts/ethereum-1/0x17ea07eb87bf7b091070999a0d313556d4ac580b/) | CouponToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a16cd2305ad7171f5c1036c3506070df28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | CPoR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b`](./contracts/ethereum-1/0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b/) | DaoCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x758888dd8cc9c654519413e3da099c3ff618ce84`](./contracts/ethereum-1/0x758888dd8cc9c654519413e3da099c3ff618ce84/) | DeploymentHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd56e9949d77001fa33ceab758bb93e1ab6469e73`](./contracts/ethereum-1/0xd56e9949d77001fa33ceab758bb93e1ab6469e73/) | DistributionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a773bd2ce922f866bb43ab876009fb959d7c29`](./contracts/ethereum-1/0x00a773bd2ce922f866bb43ab876009fb959d7c29/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | FeedRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x400922e37d608620672dc1f1b7a25ecbaabb57f8`](./contracts/ethereum-1/0x400922e37d608620672dc1f1b7a25ecbaabb57f8/) | FiraMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1efc2199ae9ee1b6f5060a45d4440157e49744`](./contracts/ethereum-1/0xbf1efc2199ae9ee1b6f5060a45d4440157e49744/) | FiraMarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6`](./contracts/ethereum-1/0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6/) | FiraSolvencyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | Flags | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f75953c2661d3a0138fcd80551ea10b80dd08c7`](./contracts/ethereum-1/0x4f75953c2661d3a0138fcd80551ea10b80dd08c7/) | KeeperRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d62b4cc02b4b51ed19ddf41d7a7979cf394c99f`](./contracts/ethereum-1/0x0d62b4cc02b4b51ed19ddf41d7a7979cf394c99f/) | LinearVestV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2104f638a839ca7260180d9ee7f4865c92df4ce5`](./contracts/ethereum-1/0x2104f638a839ca7260180d9ee7f4865c92df4ce5/) | LiquidityInjector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e9ca42bc60be25f9a67f52173067cc0bb405bb5`](./contracts/ethereum-1/0x0e9ca42bc60be25f9a67f52173067cc0bb405bb5/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea268c588072e2639448e3a9433ab92e871335e2`](./contracts/ethereum-1/0xea268c588072e2639448e3a9433ab92e871335e2/) | MetaOracleDeviationTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c36e1adfaa80ee0324b04cc814f5207bb7ba76e`](./contracts/ethereum-1/0x2c36e1adfaa80ee0324b04cc814f5207bb7ba76e/) | MinterV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc84ab084a08971e6f52a9da41bfae82b546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c697433e214b1a6d7a2ddd4cdca1505c98f75f1`](./contracts/ethereum-1/0x5c697433e214b1a6d7a2ddd4cdca1505c98f75f1/) | OrderDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d594d1fba500113ede103c071dcf68535da69b4`](./contracts/ethereum-1/0x9d594d1fba500113ede103c071dcf68535da69b4/) | Patch0000 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f7d995fc12752fe5df42134252e8b7a8922f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | PriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d374775e962c3608b8f0a4b8b10567df739bb56`](./contracts/ethereum-1/0x0d374775e962c3608b8f0a4b8b10567df739bb56/) | RegistryAccess | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c`](./contracts/ethereum-1/0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c/) | RegistryContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad332515d9c82438bba0e9faa9486b52a33a7ac8`](./contracts/ethereum-1/0xad332515d9c82438bba0e9faa9486b52a33a7ac8/) | RehypothecationModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a9d21b46810f69a02ac2d61f4bf1963de82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | SimpleReadAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641b698ad1c6e503470520b0eecb472c0589dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdf9f131604aaf4832efd6485a321d9165ff5182`](./contracts/ethereum-1/0xfdf9f131604aaf4832efd6485a321d9165ff5182/) | StaleOracleFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b`](./contracts/ethereum-1/0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b/) | SwapperEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x334b18e5e81657efa2057f80e19b8e81f0e5783c`](./contracts/ethereum-1/0x334b18e5e81657efa2057f80e19b8e81f0e5783c/) | TokenMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93775e2dfa4e716c361a1f53f212c7ae031bf4e6`](./contracts/ethereum-1/0x93775e2dfa4e716c361a1f53f212c7ae031bf4e6/) | UnlockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ffb63f98ba9b687092f53235490650b30c2f01`](./contracts/ethereum-1/0x43ffb63f98ba9b687092f53235490650b30c2f01/) | Usd0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f`](./contracts/ethereum-1/0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f/) | Usd0PP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f5366c9e21a95326c461a098a408e034e017b3`](./contracts/ethereum-1/0x62f5366c9e21a95326c461a098a408e034e017b3/) | USDCFW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x264bddfd9d93d48d759fbdb0670be1c6fdd50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ValidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdb83abb9121c04589567a4106c3cfaf65db68be`](./contracts/ethereum-1/0xcdb83abb9121c04589567a4106c3cfaf65db68be/) | YieldContractFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbca79adc13a0fa6f921d5cf5b3fae2b8a739c2a`](./contracts/ethereum-1/0xdbca79adc13a0fa6f921d5cf5b3fae2b8a739c2a/) | YieldDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2792dad98fd6ba3743ca3484dbc2ce436faa9440`](./contracts/ethereum-1/0x2792dad98fd6ba3743ca3484dbc2ce436faa9440/) | YieldModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 6 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=37

Zero-match audit list:

- [17225] Rendered PDF capture
- [17226] Learn more

Fork inheritance lineage and inherited audits are included when available.
