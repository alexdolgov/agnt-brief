# Agentic Audit Brief: Unit Protocol

## Project Overview

- Project: Unit Protocol (`unit-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.889Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 392 unique implementations (392 raw deployments)
- DeFi Llama TVL: $169,105.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 388 project-authored contract(s) across 1 chain(s); 82 ERC20 tokens, 2 ERC721 NFTs, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 66 common project-authored base contract(s) (upgradeabilityproxy, proxy, cdelegatorinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 392; live-surface contracts included: 392 (387 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/387 (3.1%)
- Deployed-live implementations: 387 of 392 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/392
- Verified + Unaudited implementations: 380
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 392
- Raw deployments: 392
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| LevelK | Tier 2 | 12 | 3.1% | 2021-01 |
| yAudit | Tier 2 | 3 | 0.8% | 2020-10 |
| CertiK | Tier 2 | 2 | 0.5% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidationAuction01 | unknown | ethereum | n/a | [`0xa41a36...1af6a5`](./contracts/ethereum-1/0xa41a3625c02c60ae932515e7f921ada1811af6a5/) | ✅ Audited |
| LiquidationTriggerKeep3rMainAsset | unknown | ethereum | n/a | [`0x2b6369...176270`](./contracts/ethereum-1/0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270/) | ✅ Audited |
| LiquidationTriggerKeep3rPoolToken | unknown | ethereum | n/a | [`0x0ca1a5...e93e1e`](./contracts/ethereum-1/0x0ca1a59a987922375234df94919a456f61e93e1e/) | ✅ Audited |
| LiquidationTriggerSimple | unknown | ethereum | n/a | [`0x18485d...0c5917`](./contracts/ethereum-1/0x18485d35c86adb634c8879a58c25f50c960c5917/) | ✅ Audited |
| ParametersBatchUpdater | unknown | ethereum | n/a | [`0x4dd1a6...3cfb6f`](./contracts/ethereum-1/0x4dd1a6db148becdadadfc407d23b725edd3cfb6f/) | ✅ Audited |
| USDP | unknown | ethereum | n/a | [`0x145668...08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0xb1cff8...7bcf19`](./contracts/ethereum-1/0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19/) | ✅ Audited |
| VaultManagerKeep3rMainAsset | unknown | ethereum | n/a | [`0x16c3ad...cc8f76`](./contracts/ethereum-1/0x16c3ad40950acfb0910452d0c537f91570cc8f76/) | ✅ Audited |
| VaultManagerKeep3rPoolToken | unknown | ethereum | n/a | [`0x1ee324...043b0c`](./contracts/ethereum-1/0x1ee32424cd66c23386cf511c8b749c1e92043b0c/) | ✅ Audited |
| VaultManagerParameters | unknown | ethereum | n/a | [`0x203153...7d312e`](./contracts/ethereum-1/0x203153522b9eaef4ae17c6e99851ee7b2f7d312e/) | ✅ Audited |
| VaultManagerStandard | unknown | ethereum | n/a | [`0x2726eb...48fbdb`](./contracts/ethereum-1/0x2726ebdf958cc15f5adb01aad22741329948fbdb/) | ✅ Audited |
| VaultParameters | unknown | ethereum | n/a | [`0xb46f8c...5e9f1d`](./contracts/ethereum-1/0xb46f8cf42e504efe8bef895f848741daa55e9f1d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (380)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AavePoolController | unknown | ethereum | n/a | [`0x1821c1...259c98`](./contracts/ethereum-1/0x1821c1d8c74a3d8799170c35f2abb83ac3259c98/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x00815e...0e5561`](./contracts/ethereum-1/0x00815e0e9d118769542ce24be95f8e21c60e5561/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x0833cf...2d7648`](./contracts/ethereum-1/0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x1fa69a...cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x59fa43...13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7fd9da...c47ada`](./contracts/ethereum-1/0x7fd9da386f01f83cef3ebc01e13c040428c47ada/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x835482...d5c77e`](./contracts/ethereum-1/0x835482fe0532f169024d5e9410199369aad5c77e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x9c0cae...fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | ⚠️ Unaudited |
| AHv2Repayment | unknown | ethereum | n/a | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| AllocationExchange | unknown | ethereum | n/a | [`0x4a53cf...94385f`](./contracts/ethereum-1/0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f/) | ⚠️ Unaudited |
| APROracle | unknown | ethereum | n/a | [`0x4ddc33...919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/) | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | ethereum | n/a | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | ⚠️ Unaudited |
| ArmorToken | unknown | ethereum | n/a | [`0x1337de...dfe46a`](./contracts/ethereum-1/0x1337def16f9b486faed0293eb623dc8395dfe46a/) | ⚠️ Unaudited |
| AssetParametersViewer | unknown | ethereum | n/a | [`0xd51f50...499af6`](./contracts/ethereum-1/0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6/) | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | ethereum | n/a | [`0xd0c869...80ef8d`](./contracts/ethereum-1/0xd0c86943e594640c4598086a2359a0e70b80ef8d/) | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | ethereum | n/a | [`0xc743c9...98d817`](./contracts/ethereum-1/0xc743c9d1801ad9169be176761e8bb95c1298d817/) | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | n/a | [`0xd0c61e...3727dc`](./contracts/ethereum-1/0xd0c61e8f15d9def697e1100663ed7da74d3727dc/) | ⚠️ Unaudited |
| BasicAdapter | unknown | ethereum | n/a | [`0x0807d0...41b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/) | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | ethereum | n/a | [`0xa2d578...b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | ⚠️ Unaudited |
| BCHGateway | unknown | ethereum | n/a | [`0xcabb5e...e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | ⚠️ Unaudited |
| BCHShifter | unknown | ethereum | n/a | [`0x2095be...0de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/) | ⚠️ Unaudited |
| BearingAssetOracle | unknown | ethereum | n/a | [`0x190db9...1864ab`](./contracts/ethereum-1/0x190db945ae572ae72e367b549b78c41e211864ab/) | ⚠️ Unaudited |
| BearingAssetOracleSimple | unknown | ethereum | n/a | [`0xc31629...6b4315`](./contracts/ethereum-1/0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315/) | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0x0d3303...9b619f`](./contracts/ethereum-1/0x0d3303ffaf107cd732396570bf07b2dbd79b619f/) | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | ethereum | n/a | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| Blacksmith | unknown | ethereum | n/a | [`0xe0b94a...1caed5`](./contracts/ethereum-1/0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5/) | ⚠️ Unaudited |
| BonusRewards | unknown | ethereum | n/a | [`0x3423c8...559f89`](./contracts/ethereum-1/0x3423c8af3a95d9fee7ec06c4e0e905d4fd559f89/) | ⚠️ Unaudited |
| BSCBridge | unknown | ethereum | n/a | [`0x6e4ae3...464ed6`](./contracts/ethereum-1/0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6/) | ⚠️ Unaudited |
| BSCWallet | unknown | ethereum | n/a | [`0x70266e...cf18ea`](./contracts/ethereum-1/0x70266e9b23dadead1210ff58b6723a6ca0cf18ea/) | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | ethereum | n/a | [`0x11716a...aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/) | ⚠️ Unaudited |
| BTCShifter | unknown | ethereum | n/a | [`0x1258d7...61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/) | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | ethereum | n/a | [`0x018a82...9ff5ab`](./contracts/ethereum-1/0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab/) | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | ethereum | n/a | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | ethereum | n/a | [`0xca1041...41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | ⚠️ Unaudited |
| CCTokenDelegate | unknown | ethereum | n/a | [`0x4f0800...909b9e`](./contracts/ethereum-1/0x4f08008ef178929e3866f1aeea75beaa8b909b9e/) | ⚠️ Unaudited |
| CDPManager01 | unknown | ethereum | n/a | [`0x0e13ab...8f66fa`](./contracts/ethereum-1/0x0e13ab042ec5ab9fc6f43979406088b9028f66fa/) | ⚠️ Unaudited |
| CDPManager01_Fallback | unknown | ethereum | n/a | [`0xad3617...386e15`](./contracts/ethereum-1/0xad3617d11f4c1d30603551ea75e9ace9cb386e15/) | ⚠️ Unaudited |
| CDPRegistry | unknown | ethereum | n/a | [`0x1a5ff5...ec650c`](./contracts/ethereum-1/0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x00ce8e...8ae5b8`](./contracts/ethereum-1/0x00ce8e3746240b0ca44046b550c8e54e848ae5b8/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x037107...3e2cde`](./contracts/ethereum-1/0x037107c38a734f6e50f1db5f964056689e3e2cde/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x2db6c8...5066d6`](./contracts/ethereum-1/0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0xd06527...2860ee`](./contracts/ethereum-1/0xd06527d5e56a3495252a528c4987003b712860ee/) | ⚠️ Unaudited |
| CEtherDelegator | unknown | ethereum | n/a | [`0x258592...4b3c1b`](./contracts/ethereum-1/0x258592543a2d018e5bdd3bd74d422f952d4b3c1b/) | ⚠️ Unaudited |
| CEtherDelegator | unknown | ethereum | n/a | [`0xc4bec5...af9876`](./contracts/ethereum-1/0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876/) | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OracleMainAsset | unknown | ethereum | n/a | [`0x0ca3de...8a3d21`](./contracts/ethereum-1/0x0ca3de93de71e4a28eb5d04b72970d69458a3d21/) | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OraclePoolToken | unknown | ethereum | n/a | [`0x3b5f4d...8391e9`](./contracts/ethereum-1/0x3b5f4d33845d546c76dfb624ef002cb3a58391e9/) | ⚠️ Unaudited |
| ChainlinkedKeydonixOracleMainAsset | unknown | ethereum | n/a | [`0x769e35...29b6dd`](./contracts/ethereum-1/0x769e35030f5ce160b287bce0462d46decf29b6dd/) | ⚠️ Unaudited |
| ChainlinkedKeydonixOraclePoolToken | unknown | ethereum | n/a | [`0x11586e...a1c500`](./contracts/ethereum-1/0x11586e3b20239ef471134a0da4a4239010a1c500/) | ⚠️ Unaudited |
| ChainlinkedOracleMainAsset | unknown | ethereum | n/a | [`0x0b1754...dae774`](./contracts/ethereum-1/0x0b17546514aad0d5453f9e2d0a56a19cb5dae774/) | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | ethereum | n/a | [`0x76f24e...4b99d3`](./contracts/ethereum-1/0x76f24e7155ff4472cb26e32c1213e515fc4b99d3/) | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | ethereum | n/a | [`0xb0602a...d20df4`](./contracts/ethereum-1/0xb0602af43ca042550ca9da3c33ba3ac375d20df4/) | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | ethereum | n/a | [`0x058c34...b2112d`](./contracts/ethereum-1/0x058c345d3240001088b6280e008f9e78b3b2112d/) | ⚠️ Unaudited |
| ClaimManagement | unknown | ethereum | n/a | [`0x9946f1...8463b2`](./contracts/ethereum-1/0x9946f1c5046ecedc8cee9a76ec14c42ca78463b2/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | ethereum | n/a | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | ⚠️ Unaudited |
| CollateralRegistry | unknown | ethereum | n/a | [`0x3db39b...d22ef3`](./contracts/ethereum-1/0x3db39b538db1123389c77f888a213f1a6dd22ef3/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | ⚠️ Unaudited |
| CompensationEscrow | unknown | ethereum | n/a | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | ethereum | n/a | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | ⚠️ Unaudited |
| CompoundPoolController | unknown | ethereum | n/a | [`0xaf0d83...6af3f4`](./contracts/ethereum-1/0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x24ccd4...616117`](./contracts/ethereum-1/0x24ccd4d3ac8529ff08c58f74ff6755036e616117/) | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | ethereum | n/a | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| Cover | unknown | ethereum | n/a | [`0x1349c5...15d504`](./contracts/ethereum-1/0x1349c51b28772f725e193c21597c0a41a715d504/) | ⚠️ Unaudited |
| CoverDistributor | unknown | ethereum | n/a | [`0x2166c7...226454`](./contracts/ethereum-1/0x2166c76d081610716ab93f02891558b9ba226454/) | ⚠️ Unaudited |
| CoverERC20 | unknown | ethereum | n/a | [`0x7e8b62...6b4eb5`](./contracts/ethereum-1/0x7e8b62b2ab8db3f3d085ba3437216fd10b6b4eb5/) | ⚠️ Unaudited |
| CoverFeeReceiver | unknown | ethereum | n/a | [`0xe06323...bc8b2e`](./contracts/ethereum-1/0xe0632311772d362f49b5118c40d5251c44bc8b2e/) | ⚠️ Unaudited |
| CoverForge | unknown | ethereum | n/a | [`0xa92139...59d5f8`](./contracts/ethereum-1/0xa921392015eb37c5977c4fd77e14dd568c59d5f8/) | ⚠️ Unaudited |
| CoverPool | unknown | ethereum | n/a | [`0x83085b...3032e2`](./contracts/ethereum-1/0x83085b8cb406cdb4034622198b518bda133032e2/) | ⚠️ Unaudited |
| CoverPoolFactory | unknown | ethereum | n/a | [`0x1cb339...304791`](./contracts/ethereum-1/0x1cb3391feff3806a6f7fa11b372cb70659304791/) | ⚠️ Unaudited |
| CoverRouter | unknown | ethereum | n/a | [`0x35e105...bc9540`](./contracts/ethereum-1/0x35e1056a8f910a40710a3d106bd4851fcbbc9540/) | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | ⚠️ Unaudited |
| CreamLiquidate | unknown | ethereum | n/a | [`0x8584b7...40ca64`](./contracts/ethereum-1/0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64/) | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | ⚠️ Unaudited |
| CreamVotingPower | unknown | ethereum | n/a | [`0xb146bf...20d0f9`](./contracts/ethereum-1/0xb146bf59f30a54750209ef529a766d952720d0f9/) | ⚠️ Unaudited |
| CRON | unknown | ethereum | n/a | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| CSLPDelegate | unknown | ethereum | n/a | [`0x0b4722...151ffb`](./contracts/ethereum-1/0x0b4722779a0ed7d79101c0d251987e76d4151ffb/) | ⚠️ Unaudited |
| CToken | unknown | ethereum | n/a | [`0x02beff...342ad4`](./contracts/ethereum-1/0x02beff6668a0c8b7b16c978de8807527d9342ad4/) | ⚠️ Unaudited |
| CTokenAdmin | unknown | ethereum | n/a | [`0xa67b44...2a038d`](./contracts/ethereum-1/0xa67b44e37200e92e6da6249d8ae6d48f832a038d/) | ⚠️ Unaudited |
| Curation | unknown | ethereum | n/a | [`0x6d2b24...2c176c`](./contracts/ethereum-1/0x6d2b24947680fce35d5c9dd6a4e32649f12c176c/) | ⚠️ Unaudited |
| CurveLPOracle | unknown | ethereum | n/a | [`0x0e08d9...a8fe08`](./contracts/ethereum-1/0x0e08d9e1dc22a400ebca25e9a8f292910fa8fe08/) | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | ethereum | n/a | [`0x43c534...5e7a60`](./contracts/ethereum-1/0x43c534203339bbf15f62b8dde91e7d14195e7a60/) | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | ethereum | n/a | [`0xb2d169...48fe60`](./contracts/ethereum-1/0xb2d16916d520d585ee49f08db1436b961b48fe60/) | ⚠️ Unaudited |
| CyTokenOracle | unknown | ethereum | n/a | [`0x40b743...dae1d8`](./contracts/ethereum-1/0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8/) | ⚠️ Unaudited |
| DarknodePayment | unknown | ethereum | n/a | [`0x098e17...c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/) | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | ethereum | n/a | [`0x085d9b...05f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | ethereum | n/a | [`0x311999...effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/) | ⚠️ Unaudited |
| DarknodeRegistry | unknown | ethereum | n/a | [`0x379900...341c2f`](./contracts/ethereum-1/0x3799006a87fde3ccfc7666b3e6553b03ed341c2f/) | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | ethereum | n/a | [`0xb03201...3058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | ethereum | n/a | [`0x7f9822...4acecb`](./contracts/ethereum-1/0x7f98228b464101a3b19bf1cc337a9b88c84acecb/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | ethereum | n/a | [`0x09e343...017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | ethereum | n/a | [`0x2d7b6c...054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/) | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | ethereum | n/a | [`0x14add4...98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/) | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | ethereum | n/a | [`0x1e69da...c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/) | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | ethereum | n/a | [`0x5945bb...9cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | ethereum | n/a | [`0x880407...3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | ⚠️ Unaudited |
| DarknodeSlasher | unknown | ethereum | n/a | [`0x04ed8f...2962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/) | ⚠️ Unaudited |
| DEX | unknown | ethereum | n/a | [`0x8ff192...a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/) | ⚠️ Unaudited |
| DEXAdapter | unknown | ethereum | n/a | [`0x9992e9...8d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/) | ⚠️ Unaudited |
| DisputeManager | unknown | ethereum | n/a | [`0x444c13...a5bfc2`](./contracts/ethereum-1/0x444c138bf2b151f28a713b0ee320240365a5bfc2/) | ⚠️ Unaudited |
| DistributeYFI | unknown | ethereum | n/a | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | n/a | [`0x5d020e...366555`](./contracts/ethereum-1/0x5d020eb50fce62320a6730e6c18659a28b366555/) | ⚠️ Unaudited |
| DistributionAInterest | unknown | ethereum | n/a | [`0x3eef97...5b8449`](./contracts/ethereum-1/0x3eef976c092271bf557cb3db26420acdd25b8449/) | ⚠️ Unaudited |
| DistributionAPrincipal | unknown | ethereum | n/a | [`0xb6f4d5...06a403`](./contracts/ethereum-1/0xb6f4d51f72279e353432ff8e47bb3904e506a403/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | ethereum | n/a | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| DistributionSInterest | unknown | ethereum | n/a | [`0xfdbd25...2a296b`](./contracts/ethereum-1/0xfdbd256c0736d79e0082e9a4055a971cb12a296b/) | ⚠️ Unaudited |
| DistributionSPrincipal | unknown | ethereum | n/a | [`0xf65b60...411577`](./contracts/ethereum-1/0xf65b60d127671acec535c359640ad390c2411577/) | ⚠️ Unaudited |
| DistributionUniPrincipal | unknown | ethereum | n/a | [`0x0aee80...7e1bd5`](./contracts/ethereum-1/0x0aee8040c03add6e3fe7c1642dd6d870bd7e1bd5/) | ⚠️ Unaudited |
| DistributionUniSFI | unknown | ethereum | n/a | [`0xa80f63...def6e0`](./contracts/ethereum-1/0xa80f63d14fbe8b82cd4807d838aada8b50def6e0/) | ⚠️ Unaudited |
| DSSLeverage | unknown | ethereum | n/a | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | ⚠️ Unaudited |
| DummyToken | unknown | ethereum | n/a | [`0x6aade8...4c009e`](./contracts/ethereum-1/0x6aade8a8a6b85921009d2caa25dc69348f4c009e/) | ⚠️ Unaudited |
| DYDXERC3156 | unknown | ethereum | n/a | [`0x6bdc1f...318693`](./contracts/ethereum-1/0x6bdc1fcb2f13d1ba9d26ccec3983d5d4bf318693/) | ⚠️ Unaudited |
| DydxPoolController | unknown | ethereum | n/a | [`0x631b0d...2e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | ⚠️ Unaudited |
| DynamicSwap | unknown | ethereum | n/a | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | ⚠️ Unaudited |
| EasyConverter | unknown | ethereum | n/a | [`0x50697a...224790`](./contracts/ethereum-1/0x50697a3a8698e36549db3e1e46ef136149224790/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | ⚠️ Unaudited |
| EpochManager | unknown | ethereum | n/a | [`0x3fab25...d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/) | ⚠️ Unaudited |
| ERC677MultiBridgeToken | unknown | ethereum | n/a | [`0x0ae055...f195e6`](./contracts/ethereum-1/0x0ae055097c6d159879521c384f1d2123d1f195e6/) | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | ethereum | n/a | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | ethereum | n/a | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| FeeDistribution | unknown | ethereum | n/a | [`0x3f93de...82df46`](./contracts/ethereum-1/0x3f93de882da8150dc98a3a1f4626e80e3282df46/) | ⚠️ Unaudited |
| FeeDistributionHelper | unknown | ethereum | n/a | [`0x57a3cc...044a1a`](./contracts/ethereum-1/0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a/) | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | ethereum | n/a | [`0x817158...463e2a`](./contracts/ethereum-1/0x817158553f4391b0d53d242fc332f2ef82463e2a/) | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | ethereum | n/a | [`0x71fe48...807cc5`](./contracts/ethereum-1/0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5/) | ⚠️ Unaudited |
| fKRW | unknown | ethereum | n/a | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | ethereum | n/a | [`0xf7633f...7b24c0`](./contracts/ethereum-1/0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0/) | ⚠️ Unaudited |
| Foundation | unknown | ethereum | n/a | [`0x492530...3dc911`](./contracts/ethereum-1/0x492530fc97522d142bc57710be57fa57a43dc911/) | ⚠️ Unaudited |
| FundRescue | unknown | ethereum | n/a | [`0x1ddbce...202667`](./contracts/ethereum-1/0x1ddbce49f3adf2ea0c2d4cd3a403cef2f6202667/) | ⚠️ Unaudited |
| fUSD | unknown | ethereum | n/a | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | ethereum | n/a | [`0x50ce13...707583`](./contracts/ethereum-1/0x50ce132ebe395d35b8cf6df6ce5f817107707583/) | ⚠️ Unaudited |
| FusePoolController | unknown | ethereum | n/a | [`0x5959db...375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | ⚠️ Unaudited |
| FYToken | unknown | ethereum | n/a | [`0xef9bfa...75e650`](./contracts/ethereum-1/0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650/) | ⚠️ Unaudited |
| GatewayRegistry | unknown | ethereum | n/a | [`0x503670...67a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/) | ⚠️ Unaudited |
| GaugeProxy | unknown | ethereum | n/a | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | ethereum | n/a | [`0xea3633...992b43`](./contracts/ethereum-1/0xea3633b38c747cea231adb74b511dc2ed3992b43/) | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | ethereum | n/a | [`0x4e27a3...b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | ⚠️ Unaudited |
| GNS | unknown | ethereum | n/a | [`0x28037b...05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | ethereum | n/a | [`0x057ecd...9c3249`](./contracts/ethereum-1/0x057ecda7f61c73c3adcc36899d2626c7b79c3249/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x4f6058...358b39`](./contracts/ethereum-1/0x4f60585a80cec402fffa1d85f152b522e7358b39/) | ⚠️ Unaudited |
| GraphPreToken | unknown | ethereum | n/a | [`0x5d9611...559e10`](./contracts/ethereum-1/0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10/) | ⚠️ Unaudited |
| GraphProxy | unknown | ethereum | n/a | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| GraphProxy | unknown | ethereum | n/a | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | ethereum | n/a | [`0xf3b000...e71430`](./contracts/ethereum-1/0xf3b000a6749259539af4e49f24eec74ea0e71430/) | ⚠️ Unaudited |
| GraphSale | unknown | ethereum | n/a | [`0x09695a...afa68b`](./contracts/ethereum-1/0x09695a6dff47b0053ef9553fee49d2d833afa68b/) | ⚠️ Unaudited |
| GraphToken | unknown | ethereum | n/a | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | ethereum | n/a | [`0x628404...095883`](./contracts/ethereum-1/0x6284042d4da0931cbc64c5aab2d6184403095883/) | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | ethereum | n/a | [`0x32ec7a...7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/) | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | ethereum | n/a | [`0xbe5e63...5a2255`](./contracts/ethereum-1/0xbe5e630383b5baecf0db7b15c50d410edd5a2255/) | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | ethereum | n/a | [`0x6141d9...a92514`](./contracts/ethereum-1/0x6141d9353bb1fb8131d07d358c112b372aa92514/) | ⚠️ Unaudited |
| HegicERCPool | unknown | ethereum | n/a | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | ⚠️ Unaudited |
| HegicOptions | unknown | ethereum | n/a | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | ethereum | n/a | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | ⚠️ Unaudited |
| IBAgreement | unknown | ethereum | n/a | [`0x30f254...37f812`](./contracts/ethereum-1/0x30f254104a8a7b7779483eeef5560397a737f812/) | ⚠️ Unaudited |
| IBAgreementV2 | unknown | ethereum | n/a | [`0x9ae50b...46b3ff`](./contracts/ethereum-1/0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff/) | ⚠️ Unaudited |
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
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7a43b0...51ee52`](./contracts/ethereum-1/0x7a43b06ed73fcd3707f1a681ca645d758a51ee52/) | ⚠️ Unaudited |
| InitializableClones | unknown | ethereum | n/a | [`0x91ce55...b47415`](./contracts/ethereum-1/0x91ce5566dc3170898c5aee4ae4dd314654b47415/) | ⚠️ Unaudited |
| insuredVault | unknown | ethereum | n/a | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| insurerVault | unknown | ethereum | n/a | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| iTrade | unknown | ethereum | n/a | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x075538...12c1d7`](./contracts/ethereum-1/0x075538650a9c69ac8019507a7dd1bd879b12c1d7/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x014872...d2e1a6`](./contracts/ethereum-1/0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6/) | ⚠️ Unaudited |
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
| LibCobbDouglas | unknown | ethereum | n/a | [`0xb84828...a649fb`](./contracts/ethereum-1/0xb84828c5978f4539bbda1965f92ea34dc7a649fb/) | ⚠️ Unaudited |
| LiquidationAuction02 | unknown | ethereum | n/a | [`0xaef1ed...d79955`](./contracts/ethereum-1/0xaef1ed4c492bf4c57221be0706def67813d79955/) | ⚠️ Unaudited |
| LiquidationOracle | unknown | ethereum | n/a | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | ethereum | n/a | [`0x854bf6...5baa12`](./contracts/ethereum-1/0x854bf644e31d6619d3fe246f8d83e87ed85baa12/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | ethereum | n/a | [`0x20c854...de57dd`](./contracts/ethereum-1/0x20c854cdd322d3a501da91374027b4b257de57dd/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | ethereum | n/a | [`0x78d09b...f06027`](./contracts/ethereum-1/0x78d09b58402c29016425497289e12fdd12f06027/) | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | ethereum | n/a | [`0x701a22...16c882`](./contracts/ethereum-1/0x701a228b0d7a3fc740462e9b2af13f2a5c16c882/) | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | ethereum | n/a | [`0xf6f903...26ab10`](./contracts/ethereum-1/0xf6f90336666413c73a940e0a53cb2f762326ab10/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MasterPriceOracle | unknown | ethereum | n/a | [`0x188711...4a764d`](./contracts/ethereum-1/0x1887118e49e0f4a78bd71b792a49de03504a764d/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | ethereum | n/a | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | n/a | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | ethereum | n/a | [`0x1a5628...ce22b4`](./contracts/ethereum-1/0x1a562822f99d11e8f993f6bcda86277123ce22b4/) | ⚠️ Unaudited |
| MintGatewayProxy | unknown | ethereum | n/a | [`0x05387a...c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/) | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | ethereum | n/a | [`0x137730...b04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/) | ⚠️ Unaudited |
| MStablePoolController | unknown | ethereum | n/a | [`0x2afe31...d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | ⚠️ Unaudited |
| MultipleDistribution | unknown | ethereum | n/a | [`0x0218b7...aea918`](./contracts/ethereum-1/0x0218b706898d234b85d2494df21eb0677eaea918/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x4f85a4...d12ed0`](./contracts/ethereum-1/0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0/) | ⚠️ Unaudited |
| MultiTransfer | unknown | ethereum | n/a | [`0xdba82d...11e09d`](./contracts/ethereum-1/0xdba82dca19943eb3a1d3ef7eeffb80a68111e09d/) | ⚠️ Unaudited |
| NexusMutualCover | unknown | ethereum | n/a | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | ⚠️ Unaudited |
| OptionsV1Library | unknown | ethereum | n/a | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | ethereum | n/a | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | ⚠️ Unaudited |
| OraclePoolToken | unknown | ethereum | n/a | [`0x5968bc...598434`](./contracts/ethereum-1/0x5968bc303930155d36fa9aee2b5b0f6d39598434/) | ⚠️ Unaudited |
| OracleRegistry | unknown | ethereum | n/a | [`0x10bbe2...e8f38f`](./contracts/ethereum-1/0x10bbe205832edc371781cc224ef202cd98e8f38f/) | ⚠️ Unaudited |
| OracleV1 | unknown | ethereum | n/a | [`0xc92ae5...fa9eda`](./contracts/ethereum-1/0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda/) | ⚠️ Unaudited |
| OracleV2 | unknown | ethereum | n/a | [`0xa9465f...167f53`](./contracts/ethereum-1/0xa9465f75eecfa4293abcafc02d68e79bd4167f53/) | ⚠️ Unaudited |
| Orderbook | unknown | ethereum | n/a | [`0x6b8bb1...2598e0`](./contracts/ethereum-1/0x6b8bb175c092de7d81860b18db360b734a2598e0/) | ⚠️ Unaudited |
| OSMedianizer | unknown | ethereum | n/a | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| PerpToken | unknown | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x01ae37...cab2b1`](./contracts/ethereum-1/0x01ae37a333d842428c668d6cc7130e552acab2b1/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x3abce8...525cf7`](./contracts/ethereum-1/0x3abce8f1db258fbc64827b0926e14a0f90525cf7/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1d8e38...61ae3c`](./contracts/ethereum-1/0x1d8e3881cc063e593673625bbb9e5191be61ae3c/) | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | ethereum | n/a | [`0xde19f5...297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | ⚠️ Unaudited |
| PriceProxy | unknown | ethereum | n/a | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| ProtocolFactory | unknown | ethereum | n/a | [`0x45d619...0d8d6a`](./contracts/ethereum-1/0x45d619a4804b82c3af4c24ccb460068a8a0d8d6a/) | ⚠️ Unaudited |
| ProtocolLogic | unknown | ethereum | n/a | [`0x547516...bdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/) | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | ethereum | n/a | [`0x637278...2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/) | ⚠️ Unaudited |
| ProtocolProxy | unknown | ethereum | n/a | [`0x4d880b...69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x038e3f...886298`](./contracts/ethereum-1/0x038e3fb79bbe37c804f6d5ee6b5323537c886298/) | ⚠️ Unaudited |
| QuackedDuck | unknown | ethereum | n/a | [`0xab5cf4...22f604`](./contracts/ethereum-1/0xab5cf4620c16fdbd584b64c6e6eb7703a422f604/) | ⚠️ Unaudited |
| RariFundController | unknown | ethereum | n/a | [`0x369855...f4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/) | ⚠️ Unaudited |
| RariFundProxy | unknown | ethereum | n/a | [`0x35ddef...42c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | ⚠️ Unaudited |
| RariFundToken | unknown | ethereum | n/a | [`0x17728f...96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/) | ⚠️ Unaudited |
| RariGovernanceToken | unknown | ethereum | n/a | [`0x54745f...3596d9`](./contracts/ethereum-1/0x54745fe0a4309f48d57550aeb6385dc8303596d9/) | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | ethereum | n/a | [`0x5888e7...66840c`](./contracts/ethereum-1/0x5888e7e6d0fbfc8c1d214cab8441658e9266840c/) | ⚠️ Unaudited |
| RedeemRSFI | unknown | ethereum | n/a | [`0x710c41...bbd9c9`](./contracts/ethereum-1/0x710c4147be2f21e4229aaa0dfa8b64689cbbd9c9/) | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | ethereum | n/a | [`0x0a2d36...8c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/) | ⚠️ Unaudited |
| RenERC20Proxy | unknown | ethereum | n/a | [`0xee2740...7894a7`](./contracts/ethereum-1/0xee274080b8389ac5add6499df348b653447894a7/) | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | ethereum | n/a | [`0xc3fed6...a01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | ⚠️ Unaudited |
| RenExBalances | unknown | ethereum | n/a | [`0x5ec18b...a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/) | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | ethereum | n/a | [`0x31a0d1...d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | ⚠️ Unaudited |
| RenExSettlement | unknown | ethereum | n/a | [`0x908262...2b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | ⚠️ Unaudited |
| RenExTokens | unknown | ethereum | n/a | [`0x7cade4...744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | ⚠️ Unaudited |
| RenProxyAdmin | unknown | ethereum | n/a | [`0x044906...0ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/) | ⚠️ Unaudited |
| RenToken | unknown | ethereum | n/a | [`0x8e0679...eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | ⚠️ Unaudited |
| RepublicToken | unknown | ethereum | n/a | [`0x21c482...9fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | ⚠️ Unaudited |
| RERC20 | unknown | ethereum | n/a | [`0x3c983b...024c20`](./contracts/ethereum-1/0x3c983ba3f165daf6a9950c08750bade647024c20/) | ⚠️ Unaudited |
| ReserveManager | unknown | ethereum | n/a | [`0x0c5bf1...1beaed`](./contracts/ethereum-1/0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed/) | ⚠️ Unaudited |
| RewardsAirdropWithLock | unknown | ethereum | n/a | [`0x0013e1...62ad12`](./contracts/ethereum-1/0x0013e17039566da4757edcb565d7d331e362ad12/) | ⚠️ Unaudited |
| RewardsManager | unknown | ethereum | n/a | [`0x842ddf...94940e`](./contracts/ethereum-1/0x842ddfe3f5cadfd45c45421329cddf0af994940e/) | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | ethereum | n/a | [`0x0b43d7...80aaed`](./contracts/ethereum-1/0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed/) | ⚠️ Unaudited |
| RiskOracle | unknown | ethereum | n/a | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | ⚠️ Unaudited |
| rSFI | unknown | ethereum | n/a | [`0x5db451...c28510`](./contracts/ethereum-1/0x5db451f9913c57dc103c6b9df46ff9be42c28510/) | ⚠️ Unaudited |
| RULER | unknown | ethereum | n/a | [`0x2aeccb...7001f8`](./contracts/ethereum-1/0x2aeccb42482cc64e087b6d2e5da39f5a7a7001f8/) | ⚠️ Unaudited |
| RulerAirdrop | unknown | ethereum | n/a | [`0x62c66d...e333d6`](./contracts/ethereum-1/0x62c66d4a9d2aae2f63039c426b927b4605e333d6/) | ⚠️ Unaudited |
| RulerCore | unknown | ethereum | n/a | [`0x2446b4...fd5e94`](./contracts/ethereum-1/0x2446b411a95630f719ef8c78f195ecdaf3fd5e94/) | ⚠️ Unaudited |
| RulerFeeReceiver | unknown | ethereum | n/a | [`0x70f342...b89002`](./contracts/ethereum-1/0x70f342ea72a4c476ef27b04f3bfe56f35db89002/) | ⚠️ Unaudited |
| SafetyRedundancy | unknown | ethereum | n/a | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | ⚠️ Unaudited |
| SaffronERC20StakingPool | unknown | ethereum | n/a | [`0x0007a7...90719f`](./contracts/ethereum-1/0x0007a7e27db427e7ba4eda4baa41fc0e9f90719f/) | ⚠️ Unaudited |
| SaffronLPBalanceToken | unknown | ethereum | n/a | [`0x0206dc...8a3b1e`](./contracts/ethereum-1/0x0206dc416802c24d0755e402bce39e23fb8a3b1e/) | ⚠️ Unaudited |
| SaffronPool | unknown | ethereum | n/a | [`0x0033d4...72f754`](./contracts/ethereum-1/0x0033d4276440c4d9d44e7551d3cb5f631872f754/) | ⚠️ Unaudited |
| SaffronStrategy | unknown | ethereum | n/a | [`0x0ecc64...d82582`](./contracts/ethereum-1/0x0ecc64675d6a34d46054b4a4ed64923d77d82582/) | ⚠️ Unaudited |
| SaffronTeamHodl | unknown | ethereum | n/a | [`0x90b397...a4d0d3`](./contracts/ethereum-1/0x90b397f0962c3bc624f8ebc810c1e68655a4d0d3/) | ⚠️ Unaudited |
| ServiceRegistry | unknown | ethereum | n/a | [`0x866232...f5b3aa`](./contracts/ethereum-1/0x866232ec9a9f918a821eba561cc5fc960ef5b3aa/) | ⚠️ Unaudited |
| SettlementRegistry | unknown | ethereum | n/a | [`0x119da7...551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | ⚠️ Unaudited |
| SFI | unknown | ethereum | n/a | [`0x67ce40...eec641`](./contracts/ethereum-1/0x67ce406da479868a9782823b8979b07435eec641/) | ⚠️ Unaudited |
| SFITeamSplitter | unknown | ethereum | n/a | [`0x7f04f4...f18908`](./contracts/ethereum-1/0x7f04f4f4978d60b9d6e8231089daa1bc28f18908/) | ⚠️ Unaudited |
| ShifterRegistry | unknown | ethereum | n/a | [`0x1d4713...876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/) | ⚠️ Unaudited |
| Signer | unknown | ethereum | n/a | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | ethereum | n/a | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SingleSidedAMM | unknown | ethereum | n/a | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | ⚠️ Unaudited |
| StableConverter | unknown | ethereum | n/a | [`0xe649d8...489e30`](./contracts/ethereum-1/0xe649d8b63b8cfd92008edcf6baefd67ade489e30/) | ⚠️ Unaudited |
| StableCreditHelper | unknown | ethereum | n/a | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | ⚠️ Unaudited |
| StableCreditProtocol | unknown | ethereum | n/a | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | ethereum | n/a | [`0x92cf22...5e08e2`](./contracts/ethereum-1/0x92cf2299680c063ccaf18f62a60c500a625e08e2/) | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | ethereum | n/a | [`0xb544f6...b4ed9c`](./contracts/ethereum-1/0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x296ebf...9e2a53`](./contracts/ethereum-1/0x296ebf81430ea5561143b4b15b17cc3c549e2a53/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0xce5e94...b8bade`](./contracts/ethereum-1/0xce5e94cded8930aba0eeee9ebc9a3b0928b8bade/) | ⚠️ Unaudited |
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
| SushiBar | unknown | ethereum | n/a | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ⚠️ Unaudited |
| Synthetic | unknown | ethereum | n/a | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | ethereum | n/a | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | ethereum | n/a | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | ⚠️ Unaudited |
| SynthetixExchange | unknown | ethereum | n/a | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | ⚠️ Unaudited |
| TendiesFarm | unknown | ethereum | n/a | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | ethereum | n/a | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1994b5...929b81`](./contracts/ethereum-1/0x1994b59e02cd0d09d839b03660c205e88a929b81/) | ⚠️ Unaudited |
| TimelockGovernance | unknown | ethereum | n/a | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x3976cd...08ea65`](./contracts/ethereum-1/0x3976cdc41f34466ebb7efa2fd097d3eab808ea65/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x014b22...78f436`](./contracts/ethereum-1/0x014b220912f6a9fce68e82fa6c2e603a7a78f436/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6c806e...739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6dc585...836eec`](./contracts/ethereum-1/0x6dc585ad66a10214ef0502492b0cc02f0e836eec/) | ⚠️ Unaudited |
| TreasuryVault | unknown | ethereum | n/a | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | ethereum | n/a | [`0x1b0c25...747556`](./contracts/ethereum-1/0x1b0c2586df3daad42ac2fdcaa0f6b91623747556/) | ⚠️ Unaudited |
| UniOracleFactory | unknown | ethereum | n/a | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | ethereum | n/a | [`0x50f42c...86c7c0`](./contracts/ethereum-1/0x50f42c004bd9b0e5acc65c33da133fbfbe86c7c0/) | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | ethereum | n/a | [`0x480bae...4fe79f`](./contracts/ethereum-1/0x480bae4d1389889c7e0600399234e1d39d4fe79f/) | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | ethereum | n/a | [`0xf1860b...24ebdb`](./contracts/ethereum-1/0xf1860b3714f0163838cf9ee3adc287507824ebdb/) | ⚠️ Unaudited |
| UniswapV3Oracle | unknown | ethereum | n/a | [`0x807983...6e0ba7`](./contracts/ethereum-1/0x807983026c476d4e0d695e80413309aa186e0ba7/) | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | ethereum | n/a | [`0x29490a...77d29b`](./contracts/ethereum-1/0x29490a6f5b4a999601378547fe681d04d877d29b/) | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | ethereum | n/a | [`0x8eed20...1ff9f1`](./contracts/ethereum-1/0x8eed20f31e7d434648ff51114446b3cffd1ff9f1/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | [`0x3d5bc3...ae9258`](./contracts/ethereum-1/0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258/) | ⚠️ Unaudited |
| UpdateBlacksmithPools | unknown | ethereum | n/a | [`0xa18bc0...32b7f2`](./contracts/ethereum-1/0xa18bc07ef3e04d263528323164dab9c76132b7f2/) | ⚠️ Unaudited |
| USDPStaking | unknown | ethereum | n/a | [`0x8ac08b...adf3a4`](./contracts/ethereum-1/0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4/) | ⚠️ Unaudited |
| USDPStakingCollector | unknown | ethereum | n/a | [`0x650cc1...dae511`](./contracts/ethereum-1/0x650cc1623f81582b19e89db09e242d8de0dae511/) | ⚠️ Unaudited |
| VaultManagerChainlinkMainAsset | unknown | ethereum | n/a | [`0x7a646c...e1f9d1`](./contracts/ethereum-1/0x7a646c42b64d21e6b871efd85f54d707ace1f9d1/) | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapMainAsset | unknown | ethereum | n/a | [`0x54ba27...83067b`](./contracts/ethereum-1/0x54ba276a62e7e3e76d362f672f00ed31a983067b/) | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | ethereum | n/a | [`0x18a238...6e8390`](./contracts/ethereum-1/0x18a2381d318ee56d19316f4a7d39a2a7996e8390/) | ⚠️ Unaudited |
| VaultManagerKeep3rUniswapPoolToken | unknown | ethereum | n/a | [`0x2637d6...d7daa3`](./contracts/ethereum-1/0x2637d65912660e527c998824b8933d1a1bd7daa3/) | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | ethereum | n/a | [`0x78727a...e64ecf`](./contracts/ethereum-1/0x78727a77028d9130d2772713d570780231e64ecf/) | ⚠️ Unaudited |
| VaultManagerKeydonixPoolToken | unknown | ethereum | n/a | [`0xf1ca03...c60a75`](./contracts/ethereum-1/0xf1ca03aae24c4865d09643cb929141d8d3c60a75/) | ⚠️ Unaudited |
| VaultManagerSimple | unknown | ethereum | n/a | [`0xb82c6d...c6783c`](./contracts/ethereum-1/0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c/) | ⚠️ Unaudited |
| veCurveVault | unknown | ethereum | n/a | [`0xc5bddf...1f502a`](./contracts/ethereum-1/0xc5bddf9843308380375a611c18b50fb9341f502a/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0xe98567...8bd531`](./contracts/ethereum-1/0xe98567885df519dfeb12c0e268dd5d9b798bd531/) | ⚠️ Unaudited |
| VestingVault | unknown | ethereum | n/a | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0ca0f0...6f6ace`](./contracts/ethereum-1/0x0ca0f068edad122f09a39f99e7e89e705d6f6ace/) | ⚠️ Unaudited |
| WETHDistributor | unknown | ethereum | n/a | [`0x0c134e...f829a0`](./contracts/ethereum-1/0x0c134e734b7e1e7955706f9abae7837b00f829a0/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x521a06...59e88d`](./contracts/ethereum-1/0x521a06c080ff87cf8d3b47cfa46ca6ecb059e88d/) | ⚠️ Unaudited |
| WrappedToUnderlyingOracle | unknown | ethereum | n/a | [`0x1145e9...eba6a1`](./contracts/ethereum-1/0x1145e9503000c4b2c9022a196717be5b7feba6a1/) | ⚠️ Unaudited |
| WrappedYFI | unknown | ethereum | n/a | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | ethereum | n/a | [`0xb11de4...71c517`](./contracts/ethereum-1/0xb11de4c003c80dc36a810254b433d727ac71c517/) | ⚠️ Unaudited |
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
| YvTokenOracle | unknown | ethereum | n/a | [`0x759eb0...64652d`](./contracts/ethereum-1/0x759eb07a8258bcf5590e9303763803dcf264652d/) | ⚠️ Unaudited |
| yWBTC | unknown | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | unknown | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| zBCH | unknown | ethereum | n/a | [`0x0e68ee...8f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/) | ⚠️ Unaudited |
| zBTC | unknown | ethereum | n/a | [`0x88c64a...78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | ethereum | n/a | [`0x7b3b73...407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/) | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | n/a | [`0x37a486...62ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/) | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | n/a | [`0x52c883...ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ⚠️ Unaudited |
| ZECShifter | unknown | ethereum | n/a | [`0x2b59ef...461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/) | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | ethereum | n/a | [`0x1573a4...1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ⚠️ Unaudited |
| zZEC | unknown | ethereum | n/a | [`0x09aa07...f65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/) | ⚠️ Unaudited |

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
| [Levelk_Security_Audit_Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Levelk_Security_Audit_Report.pdf) | LevelK | Audit | 2021-01 | stale | Direct | contract_name | 12 | high |
| [Mixbytes Security Audit Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Mixbytes%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-10 | stale | Direct | contract_name | 3 | high |
| [certik-final-report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/certik-final-report.pdf) | CertiK | Audit | 2020-09 | stale | Direct | contract_name | 2 | high |
| [borrow_protocol.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/borrow_protocol.pdf) | Unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 392 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=17

Zero-match audit list:

- [18432] borrow_protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
