# Agentic Audit Brief: 3F

## Project Overview

- Project: 3F (`3f`)
- Website: [https://www.3f.xyz/](https://www.3f.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.787Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 177 unique implementations (177 raw deployments)
- DeFi Llama TVL: $13,130,971.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 164 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 29 ERC20 tokens, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 38 common project-authored base contract(s) (owned, simplereadaccesscontroller, simplewriteaccesscontroller). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Pareto** (`pareto`) in the IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, IdleCDOPoLidoVariant, IdleCDOTruefiCreditVariant, … subsystem.
10 audits inherited from `pareto`, scoped to that subsystem.

Total inherited audits: 10. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 177 (177 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/129 (19.4%)
- Deployed-live implementations: 177 of 177 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 30/177
- Verified + Unaudited implementations: 147
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 177
- Raw deployments: 177
- Audits discovered: 14 (4 direct, 10 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 2 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 3 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 19.4% (ChainSecurity, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 22 | 12.4% | 2026-04 |
| Spearbit | Tier 1 | 15 | 8.5% | 2026-05 |
| CertiK | Tier 2 | 8 | 4.5% | n/a |
| Consensys Diligence | Tier 1 | 8 | 4.5% | n/a |
| Hans Friese | Tier 2 | 8 | 4.5% | n/a |
| Quantstamp | Tier 2 | 8 | 4.5% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CentrifugeFund | unknown | ethereum | n/a | [`0x1c4940...ab5dec`](./contracts/ethereum-1/0x1c49406f797a2cc24a3b419be25bfe2519ab5dec/) | ✅ Audited |
| CentrifugeFundFactory | unknown | ethereum | n/a | [`0x6e07ba...f3386b`](./contracts/ethereum-1/0x6e07ba07a846d9fa1ea2f2a74579f2f1c2f3386b/) | ✅ Audited |
| Facility | unknown | ethereum | n/a | [`0x4e013c...8a4a4f`](./contracts/ethereum-1/0x4e013ca8ff612a58f53c822904cdd0ec538a4a4f/) | ✅ Audited |
| IdleCDO | unknown | ethereum | n/a | [`0x1ea9ae...9bb716`](./contracts/ethereum-1/0x1ea9ae797972ad9fc52c55105d184d8b059bb716/) | ✅ Audited |
| IdleCDOInstadappLiteVariant | unknown | ethereum | n/a | [`0x0d0f8a...a73b27`](./contracts/ethereum-1/0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27/) | ✅ Audited |
| IdleCDOPoLidoVariant | unknown | ethereum | n/a | [`0x56050f...5759a1`](./contracts/ethereum-1/0x56050f117d675041da6a4b501f0cb75d455759a1/) | ✅ Audited |
| IdleCDOUsualVariant | unknown | ethereum | n/a | [`0x41b55b...9a7e8b`](./contracts/ethereum-1/0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b/) | ✅ Audited |
| IdleTokenV3 | unknown | ethereum | n/a | [`0x12b98c...3e3ca6`](./contracts/ethereum-1/0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6/) | ✅ Audited |
| IdleTokenV3SUSD | unknown | ethereum | n/a | [`0x51c776...83eef1`](./contracts/ethereum-1/0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1/) | ✅ Audited |
| IdleTokenV3USDT | unknown | ethereum | n/a | [`0x427406...1d862b`](./contracts/ethereum-1/0x42740698959761baf1b06baa51efbd88cb1d862b/) | ✅ Audited |
| IntentDescriptor | unknown | ethereum | n/a | [`0xcbeeaa...b56e55`](./contracts/ethereum-1/0xcbeeaa5e6a7627d6a2b52fae481c1f32d4b56e55/) | ✅ Audited |
| MorphoBorrowPosition | unknown | ethereum | n/a | [`0x0382f1...2a3440`](./contracts/ethereum-1/0x0382f1f72e5e4b5126e1eeec6474e45f002a3440/) | ✅ Audited |
| MorphoBorrowPositionFactory | unknown | ethereum | n/a | [`0x2b67d2...a2352d`](./contracts/ethereum-1/0x2b67d24cc44d9b98edb20a7901bcd92852a2352d/) | ✅ Audited |
| MorphoFlashLoanRequest | unknown | ethereum | n/a | [`0x8426ee...ee7ed4`](./contracts/ethereum-1/0x8426eede1788b6f373cbc77faf82344aabee7ed4/) | ✅ Audited |
| MorphoFlashLoanRequestFactory | unknown | ethereum | n/a | [`0xf2729c...915007`](./contracts/ethereum-1/0xf2729c9273acb2cb4503ab3d0d8e584e7f915007/) | ✅ Audited |
| MorphoRebalancer | unknown | ethereum | n/a | [`0x882ffc...e6e096`](./contracts/ethereum-1/0x882ffc4d28a52cbd6940dfdb03a93ffccbe6e096/) | ✅ Audited |
| ParetoFund | unknown | ethereum | n/a | [`0x0ce1fd...d35e59`](./contracts/ethereum-1/0x0ce1fdd75ab75b6d2788796021af5b0942d35e59/) | ✅ Audited |
| ParetoFundFactory | unknown | ethereum | n/a | [`0xb9dd14...bc039a`](./contracts/ethereum-1/0xb9dd141d26077ee38c21e25687fd80edc7bc039a/) | ✅ Audited |
| PositionManager | unknown | ethereum | n/a | [`0x0472b7...79fa72`](./contracts/ethereum-1/0x0472b7a5b3f051e61b7844d137143a6b1779fa72/) | ✅ Audited |
| PositionManagerFactory | unknown | ethereum | n/a | [`0x8e0667...1fe5fa`](./contracts/ethereum-1/0x8e0667429d1717b3e5fe783a6c472d6d901fe5fa/) | ✅ Audited |
| ProgrammableBorrower | unknown | ethereum | n/a | [`0x01d079...6d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/) | ✅ Audited |
| Request | unknown | ethereum | n/a | [`0x7a9c10...57c8ee`](./contracts/ethereum-1/0x7a9c1053872503ffd47d71b3034213164457c8ee/) | ✅ Audited |
| RequestFactory | unknown | ethereum | n/a | [`0xde2931...012ca5`](./contracts/ethereum-1/0xde293185e96a42f4c7d1c6479407920b19012ca5/) | ✅ Audited |
| SuperstateRestrictedWrappedAsset | unknown | ethereum | n/a | [`0x9cbf36...fe5e10`](./contracts/ethereum-1/0x9cbf36b98676567577f59531ff3f9f7151fe5e10/) | ✅ Audited |
| SyncDeposit | unknown | ethereum | n/a | [`0xfd893b...485c9a`](./contracts/ethereum-1/0xfd893b617b212d64e601eb143f7700ba35485c9a/) | ✅ Audited |
| TransferGuard | unknown | ethereum | n/a | [`0x53cddf...f24ce0`](./contracts/ethereum-1/0x53cddf929e27003e7c5c42d1cb0c8b152af24ce0/) | ✅ Audited |
| TransferGuardFactory | unknown | ethereum | n/a | [`0x44b68f...8dad2c`](./contracts/ethereum-1/0x44b68f4f8454493aad1611d48d8b8557068dad2c/) | ✅ Audited |
| USCCFund | unknown | ethereum | n/a | [`0x0e828a...94a733`](./contracts/ethereum-1/0x0e828a993ac8b350b749404ce2966f396594a733/) | ✅ Audited |
| USCCFundFactory | unknown | ethereum | n/a | [`0x593e35...03717f`](./contracts/ethereum-1/0x593e35ba2659e651639cd7107246e35b8d03717f/) | ✅ Audited |
| WrappedAsset | unknown | ethereum | n/a | [`0x2dad4f...8df340`](./contracts/ethereum-1/0x2dad4fcd26e0902661cbd80f03ddb5d5908df340/) | ✅ Audited |

### ⚠️ Verified + Unaudited (147)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x0086e1...01b423`](./contracts/ethereum-1/0x0086e1e119ecc95be344c3efca7b39f15a01b423/) | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | ethereum | n/a | [`0x04397a...c67ece`](./contracts/ethereum-1/0x04397a4f83256e7aed344d974b70d8a120c67ece/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x00cac5...73d6d4`](./contracts/ethereum-1/0x00cac58ea1bdf7893d68284f55751a49ae73d6d4/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x08db22...ca23d8`](./contracts/ethereum-1/0x08db226d63ce724a6091ba82d28dfc76ceca23d8/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x28fac5...3e07b5`](./contracts/ethereum-1/0x28fac5334c9f7262b3a3fe707e250e01053e07b5/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x681825...e33ccb`](./contracts/ethereum-1/0x6818254e0a141ca3d85a5f44989f18e820e33ccb/) | ⚠️ Unaudited |
| AllowList | unknown | ethereum | n/a | [`0x42d75c...de8149`](./contracts/ethereum-1/0x42d75c8fdbbf046df0fe1ff388da16ff99de8149/) | ⚠️ Unaudited |
| AsyncVault | unknown | ethereum | n/a | [`0x488079...46780b`](./contracts/ethereum-1/0x4880799ee5200fc58da299e965df644fbf46780b/) | ⚠️ Unaudited |
| ChannelConfigStore | unknown | ethereum | n/a | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ⚠️ Unaudited |
| ChronicleVAO_Centrifuge_JAAA_Consumer_1 | unknown | ethereum | n/a | [`0x02cf8c...6e8ec0`](./contracts/ethereum-1/0x02cf8c9fba24d79886dac40cb620f0930c6e8ec0/) | ⚠️ Unaudited |
| CommitDeposit | unknown | ethereum | n/a | [`0xc3b2a7...f471fd`](./contracts/ethereum-1/0xc3b2a7e46ff1c5003ea1bc0d125a226989f471fd/) | ⚠️ Unaudited |
| Configurator | unknown | ethereum | n/a | [`0x6d05b6...2e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x04b221...8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | ethereum | n/a | [`0x03563d...d854d9`](./contracts/ethereum-1/0x03563deef50b957f69232de055ea1a8aa6d854d9/) | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | ethereum | n/a | [`0x747e81...7ff388`](./contracts/ethereum-1/0x747e819b878956fb6e5eb936a6415a5d037ff388/) | ⚠️ Unaudited |
| DualAggregator | unknown | ethereum | n/a | [`0x1eeb87...19a5df`](./contracts/ethereum-1/0x1eeb875dd64f6313ff315679791ae1a27c19a5df/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x014f60...25e0a5`](./contracts/ethereum-1/0x014f606c37cfd6fc42ec11d10086df500125e0a5/) | ⚠️ Unaudited |
| EarlyRewards | unknown | ethereum | n/a | [`0xa1f71e...5d88fc`](./contracts/ethereum-1/0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc/) | ⚠️ Unaudited |
| ERC1967Factory | unknown | ethereum | n/a | [`0x54f862...d4e82e`](./contracts/ethereum-1/0x54f862fa0612a8709f6dec4a7b39af015cd4e82e/) | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | ethereum | n/a | [`0xe0c4a2...e098d1`](./contracts/ethereum-1/0xe0c4a2b14f0acd936226a598be6bfed190e098d1/) | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | ethereum | n/a | [`0xcf9347...098ffb`](./contracts/ethereum-1/0xcf93471a82241c2be469d83d960932721b098ffb/) | ⚠️ Unaudited |
| FalconXAAAdapter | unknown | ethereum | n/a | [`0x48fc1a...f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/) | ⚠️ Unaudited |
| FeeManager | unknown | ethereum | n/a | [`0x48a42f...dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x4adfbf...9a993d`](./contracts/ethereum-1/0x4adfbf10e9833ee6dd57b3569c5755f8139a993d/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0xabc5f8...2e8c71`](./contracts/ethereum-1/0xabc5f88bb46e364e36294eec3fea833c362e8c71/) | ⚠️ Unaudited |
| GovernableFund | unknown | ethereum | n/a | [`0x107a36...31b925`](./contracts/ethereum-1/0x107a369bc066c77ff061c7d2420618a6ce31b925/) | ⚠️ Unaudited |
| GovernorAccessControl | unknown | ethereum | n/a | [`0xf02faf...1ed5e5`](./contracts/ethereum-1/0xf02faf7cfee786111eae6747a0c344b48c1ed5e5/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x2256b2...2fe31b`](./contracts/ethereum-1/0x2256b25cfc8e35c3135664fd03e77595042fe31b/) | ⚠️ Unaudited |
| Idle | unknown | ethereum | n/a | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | ⚠️ Unaudited |
| IdleAave | unknown | ethereum | n/a | [`0x0bc3bb...ef54f3`](./contracts/ethereum-1/0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3/) | ⚠️ Unaudited |
| IdleAaveV2 | unknown | ethereum | n/a | [`0x3c5a5d...50a70c`](./contracts/ethereum-1/0x3c5a5d7832e9084fd88885823afa8cd99250a70c/) | ⚠️ Unaudited |
| IdleBatchedMint | unknown | ethereum | n/a | [`0x4dbf03...805c69`](./contracts/ethereum-1/0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69/) | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | [`0x17979e...ceb5e8`](./contracts/ethereum-1/0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8/) | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | ethereum | n/a | [`0x73fb8d...3a0f6a`](./contracts/ethereum-1/0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a/) | ⚠️ Unaudited |
| IdleCDOFactory | unknown | ethereum | n/a | [`0x3c9916...c9a631`](./contracts/ethereum-1/0x3c9916bb9498f637e2fa86c2028e26275dc9a631/) | ⚠️ Unaudited |
| IdleCDORegistry | unknown | ethereum | n/a | [`0x84fdee...d94d8e`](./contracts/ethereum-1/0x84fdee80f18957a041354e99c7eb407467d94d8e/) | ⚠️ Unaudited |
| IdleCDOTranche | unknown | ethereum | n/a | [`0xc26a6f...84f99c`](./contracts/ethereum-1/0xc26a6fa2c37b38e549a4a1807543801db684f99c/) | ⚠️ Unaudited |
| IdleCompound | unknown | ethereum | n/a | [`0x55583f...2c1edd`](./contracts/ethereum-1/0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd/) | ⚠️ Unaudited |
| IdleCompoundETH | unknown | ethereum | n/a | [`0x9a7aca...5605ca`](./contracts/ethereum-1/0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca/) | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | ethereum | n/a | [`0x0c39da...8ccc66`](./contracts/ethereum-1/0x0c39daf173646c4ce9e6a678425ed965c98ccc66/) | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | ethereum | n/a | [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/) | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | unknown | ethereum | n/a | [`0x1745c0...500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/) | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | ethereum | n/a | [`0x1c89df...ca3254`](./contracts/ethereum-1/0x1c89df6c8b1ab81ef90855120fafb93d7fca3254/) | ⚠️ Unaudited |
| IdleDSR | unknown | ethereum | n/a | [`0x587fe6...0c608a`](./contracts/ethereum-1/0x587fe6430a1148df4868e9e71357a179110c608a/) | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | ethereum | n/a | [`0x956f65...cf5784`](./contracts/ethereum-1/0x956f650177f95ef142aa2a26da407ad014cf5784/) | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | ethereum | n/a | [`0x388655...ea45e0`](./contracts/ethereum-1/0x3886557ed1698dbd496a4a0f2e00df8918ea45e0/) | ⚠️ Unaudited |
| IdleFactory | unknown | ethereum | n/a | [`0x5d4e70...b3ffd0`](./contracts/ethereum-1/0x5d4e705315aca451db40bf7c067077c768b3ffd0/) | ⚠️ Unaudited |
| IdleFulcrum | unknown | ethereum | n/a | [`0x727d9c...be825e`](./contracts/ethereum-1/0x727d9c331e9481167dc61a9289c948da25be825e/) | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | ethereum | n/a | [`0x02072a...cbe2e1`](./contracts/ethereum-1/0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1/) | ⚠️ Unaudited |
| IdleMcdBridge | unknown | ethereum | n/a | [`0x7ab2a7...137211`](./contracts/ethereum-1/0x7ab2a7ed1a0c58dea84de880b4f1710229137211/) | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | ethereum | n/a | [`0x7b8c3e...083619`](./contracts/ethereum-1/0x7b8c3ee1bafb4af5826d41137cd5caf878083619/) | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | ethereum | n/a | [`0x4916ee...a12569`](./contracts/ethereum-1/0x4916ee4a761e5cff5b4a3183f109f3e141a12569/) | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | ethereum | n/a | [`0xaefb13...225358`](./contracts/ethereum-1/0xaefb1325a2c1756bc3fcc516d6c2cf947d225358/) | ⚠️ Unaudited |
| IdlePYT | unknown | ethereum | n/a | [`0xd3af13...45553d`](./contracts/ethereum-1/0xd3af1317450d291c328525a8eb183d5cca45553d/) | ⚠️ Unaudited |
| IdlePYTClear | unknown | ethereum | n/a | [`0xa575b3...533559`](./contracts/ethereum-1/0xa575b3a6d88e9c1b5196cb7e2a14962a5c533559/) | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | ethereum | n/a | [`0xff31c6...d19d18`](./contracts/ethereum-1/0xff31c69a983bac080f23f21be965650758d19d18/) | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | ethereum | n/a | [`0x6fa860...0264d8`](./contracts/ethereum-1/0x6fa86028323ba310fe4488f74085de99ed0264d8/) | ⚠️ Unaudited |
| IdleRebalancer | unknown | ethereum | n/a | [`0x781616...b753f4`](./contracts/ethereum-1/0x781616fb046a4e39c239e39bfeff1a07d4b753f4/) | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | ethereum | n/a | [`0xec4707...75fc87`](./contracts/ethereum-1/0xec470753b56ced3784ce29db7c297f0c1b75fc87/) | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | ethereum | n/a | [`0x21fcd8...bc9582`](./contracts/ethereum-1/0x21fcd8adac59adc2eb94355eb2f43f869bbc9582/) | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | ethereum | n/a | [`0x2be5a5...86a84a`](./contracts/ethereum-1/0x2be5a50d4125882083aaefdd370848771286a84a/) | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | ethereum | n/a | [`0x6b98a5...e0a506`](./contracts/ethereum-1/0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506/) | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | ethereum | n/a | [`0x240345...80deb1`](./contracts/ethereum-1/0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1/) | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | ethereum | n/a | [`0x051ba9...9b0933`](./contracts/ethereum-1/0x051ba97b84a921f4134376af2c7e3a38229b0933/) | ⚠️ Unaudited |
| IdleStrategy | unknown | ethereum | n/a | [`0x10cecc...0ac2b9`](./contracts/ethereum-1/0x10cecc30087f4b3e894dad8398307faa2f0ac2b9/) | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | [`0x0d41f8...e906ca`](./contracts/ethereum-1/0x0d41f858d803af86e5192a77a798ad7d97e906ca/) | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | ethereum | n/a | [`0x2fec85...40931a`](./contracts/ethereum-1/0x2fec85c0eaaace2b24926eabbf8373b26240931a/) | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | ethereum | n/a | [`0x544897...ae18e1`](./contracts/ethereum-1/0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1/) | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | ethereum | n/a | [`0x70728f...d41e6d`](./contracts/ethereum-1/0x70728f08e97303d757be4cd97a7d27b65dd41e6d/) | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | ethereum | n/a | [`0x863a08...33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | ⚠️ Unaudited |
| IdleViewHelper | unknown | ethereum | n/a | [`0x2adf7c...5dadec`](./contracts/ethereum-1/0x2adf7ccf0241b60747d194b3ea163e28105dadec/) | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | ethereum | n/a | [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/) | ⚠️ Unaudited |
| LockedIDLE | unknown | ethereum | n/a | [`0x02682c...4a4f48`](./contracts/ethereum-1/0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MerkleClaim | unknown | ethereum | n/a | [`0x693695...d26485`](./contracts/ethereum-1/0x69369507aa7a44156cc297448ab57e3c15d26485/) | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | ethereum | n/a | [`0x96dd27...448152`](./contracts/ethereum-1/0x96dd27112bdd615c3a2d649fe22d8ee27e448152/) | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | ethereum | n/a | [`0x603cb5...cfddca`](./contracts/ethereum-1/0x603cb545b98aca3691be869871b34ae72ccfddca/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | ethereum | n/a | [`0x9db5a6...03049e`](./contracts/ethereum-1/0x9db5a6bd77572748e541a0cf42f787f5fe03049e/) | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | ethereum | n/a | [`0x0cb45d...a9dfac`](./contracts/ethereum-1/0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | ethereum | n/a | [`0x2e4eb0...b5d886`](./contracts/ethereum-1/0x2e4eb0647fd1f9029499d41153a7cccb1ab5d886/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0xd975bd...b308cd`](./contracts/ethereum-1/0xd975bda5d3354e9c09bdadd792a52a4f83b308cd/) | ⚠️ Unaudited |
| ParetoDollar | unknown | ethereum | n/a | [`0x7b70fc...68c337`](./contracts/ethereum-1/0x7b70fca01ab3745e24303b56f72296614768c337/) | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | ethereum | n/a | [`0x07ace8...a4c3fd`](./contracts/ethereum-1/0x07ace8d682987c2219fe8cd314b858c326a4c3fd/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x972a64...5ef181`](./contracts/ethereum-1/0x972a64d108e250df98dbeac8170678501f5ef181/) | ⚠️ Unaudited |
| PriceOracleV2 | unknown | ethereum | n/a | [`0xb5a8f0...95e8c5`](./contracts/ethereum-1/0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5/) | ⚠️ Unaudited |
| PriceOracleV3 | unknown | ethereum | n/a | [`0x886b10...c201f1`](./contracts/ethereum-1/0x886b102953ab3eaf719df7b80b03cd5203c201f1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0138a8...8b725e`](./contracts/ethereum-1/0x0138a84f821809e2d01b16d053f4b4a5b88b725e/) | ⚠️ Unaudited |
| RequestWhitelist | unknown | ethereum | n/a | [`0x3fcd87...9daf9e`](./contracts/ethereum-1/0x3fcd87948cbf46605d6ded0ed56d3daccd9daf9e/) | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | n/a | [`0x031f71...1e42c6`](./contracts/ethereum-1/0x031f71b5369c251a6544c41ce059e6b3d61e42c6/) | ⚠️ Unaudited |
| RewardManager | unknown | ethereum | n/a | [`0x1a2a2d...75e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x70e7d9...a02ab9`](./contracts/ethereum-1/0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0xe0ba13...c3dcae`](./contracts/ethereum-1/0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x2d8b5b...4169d3`](./contracts/ethereum-1/0x2d8b5b65c6464651403955ac6d71f9c0204169d3/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x4a0772...6cdb49`](./contracts/ethereum-1/0x4a07723bb06bf9307e4e1998834832728e6cdb49/) | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | ethereum | n/a | [`0x14d60e...74020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xd6dabb...dc2556`](./contracts/ethereum-1/0xd6dabbc2b275114a2366555d6c481ef08fdc2556/) | ⚠️ Unaudited |
| Tranche | unknown | ethereum | n/a | [`0x5a0f93...7dcf64`](./contracts/ethereum-1/0x5a0f93d040de44e78f251b03c43be9cf317dcf64/) | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | ethereum | n/a | [`0x0da050...42fb94`](./contracts/ethereum-1/0x0da050cf37747fd665adacdc0ce482f62442fb94/) | ⚠️ Unaudited |
| TrancheWrapper | unknown | ethereum | n/a | [`0xcf96f4...1fe66d`](./contracts/ethereum-1/0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d/) | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | ethereum | n/a | [`0x6bf9ea...bf723a`](./contracts/ethereum-1/0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x00d390...482c8b`](./contracts/ethereum-1/0x00d39058943b4a6f01cb3386a7f44b84ab482c8b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0186e3...78a73b`](./contracts/ethereum-1/0x0186e34de71987303b4ed4a027ed939a1178a73b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x019879...7a4cdc`](./contracts/ethereum-1/0x0198792f2849397908c092b6b57654e1a57a4cdc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x01b8a7...1e175c`](./contracts/ethereum-1/0x01b8a788d2742d8d1706fce7204fb523c51e175c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0962fb...42e6b6`](./contracts/ethereum-1/0x0962fb33a7e0172d0e413b0fab003bee5142e6b6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0b4f69...1c8a3e`](./contracts/ethereum-1/0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0cac67...da089a`](./contracts/ethereum-1/0x0cac674ebd77bbd899f6079932768f6d59da089a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0fe4fc...e71b04`](./contracts/ethereum-1/0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x16f6be...08083b`](./contracts/ethereum-1/0x16f6be72882b24527f94c7bccabf77b62608083b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1d659f...62dcc8`](./contracts/ethereum-1/0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1eb1b4...25344c`](./contracts/ethereum-1/0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1f5a97...313c8e`](./contracts/ethereum-1/0x1f5a97fb665e295303d2f7215ba2160cc5313c8e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x25e733...518893`](./contracts/ethereum-1/0x25e7337037817dd9bddd0334ca1591f370518893/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x271c61...0edf16`](./contracts/ethereum-1/0x271c616157e69a43b4977412a64183cf110edf16/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x271ce5...9920f0`](./contracts/ethereum-1/0x271ce5ded4ccbd28833bddf8a8093517299920f0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x29c794...387510`](./contracts/ethereum-1/0x29c794b9a70752c41d65ebccef1c1ee697387510/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x29d094...f24b21`](./contracts/ethereum-1/0x29d094110c7a89f1cb6c975df0a38cae80f24b21/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x351683...f77865`](./contracts/ethereum-1/0x35168324dc1981addc3bc915788e200bedf77865/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x35df8a...5ac1c8`](./contracts/ethereum-1/0x35df8a95b348dd87167ed00b3421ba15d95ac1c8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3687c0...ded5a0`](./contracts/ethereum-1/0x3687c0f8760371fc1bd1c7bc28695c388cded5a0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x37de1d...870dc5`](./contracts/ethereum-1/0x37de1d299c93743472343699c58ec95000870dc5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3bcba0...d122cb`](./contracts/ethereum-1/0x3bcba0afd36c9b350f46c570f89ab70817d122cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4473bc...dc382d`](./contracts/ethereum-1/0x4473bc90118b18be890af42d793b5252c4dc382d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x62b17c...8b58fb`](./contracts/ethereum-1/0x62b17c9083db5941197e83bd385985b8878b58fb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9e0c5e...a9b52f`](./contracts/ethereum-1/0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbc4896...d02eb9`](./contracts/ethereum-1/0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9/) | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | ethereum | n/a | [`0x046728...63a58d`](./contracts/ethereum-1/0x046728da7cb8272284238bd3e47909823d63a58d/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | [`0x275da8...cdb0be`](./contracts/ethereum-1/0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | ethereum | n/a | [`0x320603...38a696`](./contracts/ethereum-1/0x32060337ffe29efa355f9add5f832ad6a638a696/) | ⚠️ Unaudited |
| USCC | unknown | ethereum | n/a | [`0x41feb4...f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | ⚠️ Unaudited |
| USCCv2 | unknown | ethereum | n/a | [`0x5ce236...dea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | ⚠️ Unaudited |
| USTB | unknown | ethereum | n/a | [`0x3986a1...51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | ⚠️ Unaudited |
| USTBv2 | unknown | ethereum | n/a | [`0x34ee70...8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x023824...ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0xa618f1...457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | ⚠️ Unaudited |
| VerifierProxy | unknown | ethereum | n/a | [`0xaae5ec...ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | ⚠️ Unaudited |
| VesterFactory | unknown | ethereum | n/a | [`0xbf875f...089972`](./contracts/ethereum-1/0xbf875f2c6e4cc1688dfe4ecf79583193b6089972/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0c3310...9c4320`](./contracts/ethereum-1/0x0c3310b0b57b86d376040b755f94a925f39c4320/) | ⚠️ Unaudited |
| yxToken | unknown | ethereum | n/a | [`0x0d81b0...2685ce`](./contracts/ethereum-1/0x0d81b042bb9939b4d32cdf7861774c442a2685ce/) | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view](https://drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view](https://drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view](https://drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view](https://drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view](https://drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view](https://drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [skynet.certik.com/projects/idle-finance](https://skynet.certik.com/projects/idle-finance) | CertiK | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [diligence.security/audits/2021/06/idle-finance](https://diligence.security/audits/2021/06/idle-finance) | Consensys Diligence | Audit | n/a | unknown | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [| Cantina | Fee Review | May 27, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/Cantina_3F_Grunt_FeeReview_2026-05-27.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 4 | medium |
| [| Cantina | Grunt | May 13, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/Cantina_3F_Grunt_Audit_2026-05.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 15 | high |
| [| ChainSecurity | Grunt | April 8, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/ChainSecurity_3F_Grunt_Audit_2026-04.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | 15 | high |
| [| ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/ChainSecurity_3F_GruntFunds_Audit_2026-04.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | 7 | high |
| [idle-finance.pdf](https://certificate.quantstamp.com/full/idle-finance.pdf) | Quantstamp | Audit | 2021-04 | stale | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |
| [idle-governance.pdf](https://certificate.quantstamp.com/full/idle-governance.pdf) | Quantstamp | Audit | 2020-11 | stale | Inherited from Pareto — forked code, scoped to IdleCDO, IdleCDOEpochDepositQueue, IdleCDOInstadappLiteVariant, IdleCDOOptimism, +7 more | inherited | 8 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0086e1...01b423`](./contracts/ethereum-1/0x0086e1e119ecc95be344c3efca7b39f15a01b423/) | AccessControlledAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04397a...c67ece`](./contracts/ethereum-1/0x04397a4f83256e7aed344d974b70d8a120c67ece/) | AccessControlledOCR2Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00cac5...73d6d4`](./contracts/ethereum-1/0x00cac58ea1bdf7893d68284f55751a49ae73d6d4/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42d75c...de8149`](./contracts/ethereum-1/0x42d75c8fdbbf046df0fe1ff388da16ff99de8149/) | AllowList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x488079...46780b`](./contracts/ethereum-1/0x4880799ee5200fc58da299e965df644fbf46780b/) | AsyncVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ChannelConfigStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3b2a7...f471fd`](./contracts/ethereum-1/0xc3b2a7e46ff1c5003ea1bc0d125a226989f471fd/) | CommitDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d05b6...2e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | Configurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b221...8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x747e81...7ff388`](./contracts/ethereum-1/0x747e819b878956fb6e5eb936a6415a5d037ff388/) | DelegateStakingRewardsIDLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1eeb87...19a5df`](./contracts/ethereum-1/0x1eeb875dd64f6313ff315679791ae1a27c19a5df/) | DualAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x014f60...25e0a5`](./contracts/ethereum-1/0x014f606c37cfd6fc42ec11d10086df500125e0a5/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1f71e...5d88fc`](./contracts/ethereum-1/0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc/) | EarlyRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f862...d4e82e`](./contracts/ethereum-1/0x54f862fa0612a8709f6dec4a7b39af015cd4e82e/) | ERC1967Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf9347...098ffb`](./contracts/ethereum-1/0xcf93471a82241c2be469d83d960932721b098ffb/) | EulerStakingPYTStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48fc1a...f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/) | FalconXAAAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48a42f...dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabc5f8...2e8c71`](./contracts/ethereum-1/0xabc5f88bb46e364e36294eec3fea833c362e8c71/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x107a36...31b925`](./contracts/ethereum-1/0x107a369bc066c77ff061c7d2420618a6ce31b925/) | GovernableFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf02faf...1ed5e5`](./contracts/ethereum-1/0xf02faf7cfee786111eae6747a0c344b48c1ed5e5/) | GovernorAccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2256b2...2fe31b`](./contracts/ethereum-1/0x2256b25cfc8e35c3135664fd03e77595042fe31b/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | Idle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc3bb...ef54f3`](./contracts/ethereum-1/0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3/) | IdleAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5a5d...50a70c`](./contracts/ethereum-1/0x3c5a5d7832e9084fd88885823afa8cd99250a70c/) | IdleAaveV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dbf03...805c69`](./contracts/ethereum-1/0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69/) | IdleBatchedMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17979e...ceb5e8`](./contracts/ethereum-1/0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8/) | IdleCDOEpochVariant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73fb8d...3a0f6a`](./contracts/ethereum-1/0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a/) | IdleCDOEpochVariantPrefunded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c9916...c9a631`](./contracts/ethereum-1/0x3c9916bb9498f637e2fa86c2028e26275dc9a631/) | IdleCDOFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84fdee...d94d8e`](./contracts/ethereum-1/0x84fdee80f18957a041354e99c7eb407467d94d8e/) | IdleCDORegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc26a6f...84f99c`](./contracts/ethereum-1/0xc26a6fa2c37b38e549a4a1807543801db684f99c/) | IdleCDOTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55583f...2c1edd`](./contracts/ethereum-1/0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd/) | IdleCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a7aca...5605ca`](./contracts/ethereum-1/0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca/) | IdleCompoundETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c39da...8ccc66`](./contracts/ethereum-1/0x0c39daf173646c4ce9e6a678425ed965c98ccc66/) | IdleCompoundV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/) | IdleCreditVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1745c0...500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/) | IdleCreditVaultImpliedPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c89df...ca3254`](./contracts/ethereum-1/0x1c89df6c8b1ab81ef90855120fafb93d7fca3254/) | IdleCreditVaultWriteOffEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x587fe6...0c608a`](./contracts/ethereum-1/0x587fe6430a1148df4868e9e71357a179110c608a/) | IdleDSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x956f65...cf5784`](./contracts/ethereum-1/0x956f650177f95ef142aa2a26da407ad014cf5784/) | IdleEulerStakingStrategyPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x388655...ea45e0`](./contracts/ethereum-1/0x3886557ed1698dbd496a4a0f2e00df8918ea45e0/) | IdleEulerStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d4e70...b3ffd0`](./contracts/ethereum-1/0x5d4e705315aca451db40bf7c067077c768b3ffd0/) | IdleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x727d9c...be825e`](./contracts/ethereum-1/0x727d9c331e9481167dc61a9289c948da25be825e/) | IdleFulcrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02072a...cbe2e1`](./contracts/ethereum-1/0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1/) | IdleFulcrumV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ab2a7...137211`](./contracts/ethereum-1/0x7ab2a7ed1a0c58dea84de880b4f1710229137211/) | IdleMcdBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b8c3e...083619`](./contracts/ethereum-1/0x7b8c3ee1bafb4af5826d41137cd5caf878083619/) | IdleMStableStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4916ee...a12569`](./contracts/ethereum-1/0x4916ee4a761e5cff5b4a3183f109f3e141a12569/) | IdlePoLidoStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaefb13...225358`](./contracts/ethereum-1/0xaefb1325a2c1756bc3fcc516d6c2cf947d225358/) | IdlePriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3af13...45553d`](./contracts/ethereum-1/0xd3af1317450d291c328525a8eb183d5cca45553d/) | IdlePYT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa575b3...533559`](./contracts/ethereum-1/0xa575b3a6d88e9c1b5196cb7e2a14962a5c533559/) | IdlePYTClear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff31c6...d19d18`](./contracts/ethereum-1/0xff31c69a983bac080f23f21be965650758d19d18/) | IdlePYTClearJunior | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fa860...0264d8`](./contracts/ethereum-1/0x6fa86028323ba310fe4488f74085de99ed0264d8/) | IdlePYTClearPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x781616...b753f4`](./contracts/ethereum-1/0x781616fb046a4e39c239e39bfeff1a07d4b753f4/) | IdleRebalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec4707...75fc87`](./contracts/ethereum-1/0xec470753b56ced3784ce29db7c297f0c1b75fc87/) | IdleRebalancerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21fcd8...bc9582`](./contracts/ethereum-1/0x21fcd8adac59adc2eb94355eb2f43f869bbc9582/) | IdleRebalancerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be5a5...86a84a`](./contracts/ethereum-1/0x2be5a50d4125882083aaefdd370848771286a84a/) | IdleRebalancerV3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b98a5...e0a506`](./contracts/ethereum-1/0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506/) | IdleRebalancerV3SUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x240345...80deb1`](./contracts/ethereum-1/0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1/) | IdleRebalancerV3USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051ba9...9b0933`](./contracts/ethereum-1/0x051ba97b84a921f4134376af2c7e3a38229b0933/) | IdleRibbonPSMStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10cecc...0ac2b9`](./contracts/ethereum-1/0x10cecc30087f4b3e894dad8398307faa2f0ac2b9/) | IdleStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d41f8...e906ca`](./contracts/ethereum-1/0x0d41f858d803af86e5192a77a798ad7d97e906ca/) | IdleTokenFungible | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fec85...40931a`](./contracts/ethereum-1/0x2fec85c0eaaace2b24926eabbf8373b26240931a/) | IdleTokenV3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x544897...ae18e1`](./contracts/ethereum-1/0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1/) | IdleTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70728f...d41e6d`](./contracts/ethereum-1/0x70728f08e97303d757be4cd97a7d27b65dd41e6d/) | IdleTrancheAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x863a08...33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | IdleUsdcOtcSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2adf7c...5dadec`](./contracts/ethereum-1/0x2adf7ccf0241b60747d194b3ea163e28105dadec/) | IdleViewHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/) | KeyringIdleWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02682c...4a4f48`](./contracts/ethereum-1/0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48/) | LockedIDLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x693695...d26485`](./contracts/ethereum-1/0x69369507aa7a44156cc297448ab57e3c15d26485/) | MerkleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b70fc...68c337`](./contracts/ethereum-1/0x7b70fca01ab3745e24303b56f72296614768c337/) | ParetoDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ace8...a4c3fd`](./contracts/ethereum-1/0x07ace8d682987c2219fe8cd314b858c326a4c3fd/) | ParetoDollarQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x972a64...5ef181`](./contracts/ethereum-1/0x972a64d108e250df98dbeac8170678501f5ef181/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5a8f0...95e8c5`](./contracts/ethereum-1/0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5/) | PriceOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886b10...c201f1`](./contracts/ethereum-1/0x886b102953ab3eaf719df7b80b03cd5203c201f1/) | PriceOracleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fcd87...9daf9e`](./contracts/ethereum-1/0x3fcd87948cbf46605d6ded0ed56d3daccd9daf9e/) | RequestWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031f71...1e42c6`](./contracts/ethereum-1/0x031f71b5369c251a6544c41ce059e6b3d61e42c6/) | Reservoir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a2a2d...75e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70e7d9...a02ab9`](./contracts/ethereum-1/0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9/) | SimpleReadAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0ba13...c3dcae`](./contracts/ethereum-1/0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d8b5b...4169d3`](./contracts/ethereum-1/0x2d8b5b65c6464651403955ac6d71f9c0204169d3/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a0772...6cdb49`](./contracts/ethereum-1/0x4a07723bb06bf9307e4e1998834832728e6cdb49/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d60e...74020c`](./contracts/ethereum-1/0x14d60e7fdc0d71d8611742720e4c50e7a974020c/) | SuperstateTokenV5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6dabb...dc2556`](./contracts/ethereum-1/0xd6dabbc2b275114a2366555d6c481ef08fdc2556/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a0f93...7dcf64`](./contracts/ethereum-1/0x5a0f93d040de44e78f251b03c43be9cf317dcf64/) | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0da050...42fb94`](./contracts/ethereum-1/0x0da050cf37747fd665adacdc0ce482f62442fb94/) | TranchesChainlinkOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf96f4...1fe66d`](./contracts/ethereum-1/0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d/) | TrancheWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bf9ea...bf723a`](./contracts/ethereum-1/0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a/) | TrancheWrapperWSTETHBalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x275da8...cdb0be`](./contracts/ethereum-1/0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41feb4...f6852b`](./contracts/ethereum-1/0x41feb4943df07f6793c059f98f28ed0e15f6852b/) | USCC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ce236...dea2e1`](./contracts/ethereum-1/0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1/) | USCCv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3986a1...51a1af`](./contracts/ethereum-1/0x3986a1475f3c7786973e1b83cd6240521c51a1af/) | USTB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34ee70...8794da`](./contracts/ethereum-1/0x34ee7037db155b6fa18c9727169d39f63a8794da/) | USTBv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023824...ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ValidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa618f1...457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaae5ec...ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | VerifierProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf875f...089972`](./contracts/ethereum-1/0xbf875f2c6e4cc1688dfe4ecf79583193b6089972/) | VesterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3310...9c4320`](./contracts/ethereum-1/0x0c3310b0b57b86d376040b755f94a925f39c4320/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d81b0...2685ce`](./contracts/ethereum-1/0x0d81b042bb9939b4d32cdf7861774c442a2685ce/) | yxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 129 |
| upstream | 15 |
| standard_library | 33 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=41, inherited_name_remap=80

Fork inheritance lineage and inherited audits are included when available.
