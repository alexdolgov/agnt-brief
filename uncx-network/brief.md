# Agentic Audit Brief: UNCX Network

## Project Overview

- Project: UNCX Network (`uncx-network`)
- Website: [https://uncx.network](https://uncx.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.794Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon
- Contract surface: 134 unique implementations (134 raw deployments)
- DeFi Llama TVL: $117,856,270.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Token Locker. Structurally: 133 project-authored contract(s) across 8 chain(s); 26 ERC20 tokens, 5 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 30 common project-authored base contract(s) (bep20, erc165, upgradeableproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 134; live-surface contracts included: 134 (132 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/125 (12.8%)
- Deployed-live implementations: 132 of 134 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 17/134
- Verified + Unaudited implementations: 117
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 134
- Raw deployments: 134
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 17 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 0.8% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 16 | 11.9% | 2023-07 |
| OpenZeppelin | Tier 1 | 1 | 0.7% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FarmFactory | unknown | ethereum | n/a | [`0x388f7e...c6a6e7`](./contracts/ethereum-1/0x388f7e6d45e058aa703227b44e216e3be3c6a6e7/) | ✅ Audited |
| FarmGenerator01 | unknown | ethereum | n/a | [`0x197d22...1350f2`](./contracts/ethereum-1/0x197d2286f299c323272c08d768d7fd987e1350f2/) | ✅ Audited |
| FeeResolver | unknown | ethereum | n/a | [`0x517edf...655454`](./contracts/ethereum-1/0x517edf73159b3f02ee730abf5930240387655454/) | ✅ Audited |
| MigrateV3NFT | unknown | polygon | n/a | [`0x0c51f7...d33311`](./contracts/polygon-137/0x0c51f7ccf8562d8196f83aeb3b8b2a8ecad33311/) | ✅ Audited |
| MintFactory | unknown | avalanche | n/a | [`0x7ab235...77febb`](./contracts/avalanche-43114/0x7ab2358cdae4ba9fd2aa6e855e4475942777febb/) | ✅ Audited |
| MintGenerator | unknown | ethereum | n/a | [`0x0fd433...d49371`](./contracts/ethereum-1/0x0fd433e474ecb81005ac906e0bcfab66e1d49371/) | ✅ Audited |
| PresaleFactory | unknown | avalanche | n/a | [`0x0d9b3b...351b21`](./contracts/avalanche-43114/0x0d9b3b591b9832f275ad6e3b39c505c73d351b21/) | ✅ Audited |
| PresaleGenerator01 | unknown | ethereum | n/a | [`0x05e5a8...9dc1eb`](./contracts/ethereum-1/0x05e5a82ad97caf832ca3e53b154f84a8b69dc1eb/) | ✅ Audited |
| PresaleHelper | unknown | gnosis | n/a | [`0x0059eb...b8dd2e`](./contracts/gnosis-100/0x0059eb897e1af970ca7ae670e0febe0380b8dd2e/) | ✅ Audited |
| PresaleLockForwarder | unknown | bsc | n/a | [`0x361663...80aff3`](./contracts/bsc-56/0x361663a6097e90ebf125e1cf884048c32080aff3/) | ✅ Audited |
| PresaleSettings | unknown | ethereum | n/a | [`0x2a8977...376c41`](./contracts/ethereum-1/0x2a8977e2a829be0dd8c94fc7886b15937a376c41/) | ✅ Audited |
| TokenVesting | unknown | avalanche | n/a | [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | ✅ Audited |
| TokenVestingPager | unknown | optimism | n/a | [`0x307553...2eb946`](./contracts/optimism-10/0x3075530a0524c2caeb80ac44a2cbad15c82eb946/) | ✅ Audited |
| UNCX_ProofOfReservesUniV3 | unknown | bsc | n/a | [`0x0a1886...7eb41a`](./contracts/bsc-56/0x0a188696d962f975250818ba028fb07f7b7eb41a/) | ✅ Audited |
| UNCX_ProofOfReservesV2_UniV3 | unknown | polygon | n/a | [`0x4aa5c6...a01f31`](./contracts/polygon-137/0x4aa5c6e1751e0251d25946a07b5949d628a01f31/) | ✅ Audited |
| UnicryptAdmin | unknown | optimism | n/a | [`0x04cc89...b50416`](./contracts/optimism-10/0x04cc89b23f1be4f15a107647034f3c339fb50416/) | ✅ Audited |
| UniswapV2Locker | unknown | arbitrum | n/a | [`0x275720...3de50e`](./contracts/arbitrum-42161/0x275720567e5955f5f2d53a7a1ab8a0fc643de50e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (117)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| autoBsw | unknown | bsc | n/a | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BabyDogeFactory | unknown | bsc | n/a | [`0x4693b6...f43137`](./contracts/bsc-56/0x4693b62e5fc9c0a45f89d62e6300a03c85f43137/) | ⚠️ Unaudited |
| BabyDogeLocker | unknown | bsc | n/a | [`0x36b343...4541be`](./contracts/bsc-56/0x36b34364e17373c05300bc3e827bf7cac34541be/) | ⚠️ Unaudited |
| BabyDogeRouter | unknown | bsc | n/a | [`0xc9a0f6...af3c47`](./contracts/bsc-56/0xc9a0f685f39d05d835c369036251ee3aeaaf3c47/) | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BiswapFactory | unknown | bsc | n/a | [`0x173661...9f1285`](./contracts/bsc-56/0x173661c75895b15fae9ffc91210017cf6e9f1285/) | ⚠️ Unaudited |
| BiswapRouter02 | unknown | bsc | n/a | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| BnbPricePrediction | unknown | bsc | n/a | [`0x05b4c8...fa9c75`](./contracts/bsc-56/0x05b4c8785f4c8856c47a3c2ebce313343efa9c75/) | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | [`0x187463...3b4208`](./contracts/bsc-56/0x187463a09569020659f4128c14fb13bce23b4208/) | ⚠️ Unaudited |
| BNBWrapper | unknown | bsc | n/a | [`0xc7ac77...8c29c8`](./contracts/bsc-56/0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | ⚠️ Unaudited |
| BSWMinting | unknown | bsc | n/a | [`0x2a539a...b1f522`](./contracts/bsc-56/0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522/) | ⚠️ Unaudited |
| BSWToken | unknown | bsc | n/a | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | bsc | n/a | [`0x7c8b60...637c7a`](./contracts/bsc-56/0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a/) | ⚠️ Unaudited |
| BuyBackFeeManager | unknown | bsc | n/a | [`0x01f3a3...264c0a`](./contracts/bsc-56/0x01f3a38e70c823427beec5b6babf6b33de264c0a/) | ⚠️ Unaudited |
| CakeToken | unknown | bsc | n/a | [`0x086bef...88807b`](./contracts/bsc-56/0x086bef28ebfb560e787989d025c83bd1e288807b/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| Cliff | unknown | avalanche | n/a | [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | ⚠️ Unaudited |
| CountryList | unknown | bsc | n/a | [`0x760026...63f994`](./contracts/bsc-56/0x7600265b6713503a52c1d6db31f4c70f8863f994/) | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | avalanche | n/a | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | n/a | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | ⚠️ Unaudited |
| DXswapFeeReceiver | unknown | gnosis | n/a | [`0x225a3d...2a6c17`](./contracts/gnosis-100/0x225a3dda99dc1e28cf43b0cd80cf2ec0752a6c17/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ⚠️ Unaudited |
| Erc20Simple | unknown | bsc | n/a | [`0x7d322e...8a9cc5`](./contracts/bsc-56/0x7d322eb2f7149de1613f4310a73254abd08a9cc5/) | ⚠️ Unaudited |
| ExposedV3Math | unknown | arbitrum | n/a | [`0x03d43a...c1a155`](./contracts/arbitrum-42161/0x03d43aa7c53e4346028a1240771a325fc1c1a155/) | ⚠️ Unaudited |
| FactoryViewer | unknown | bsc | n/a | [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/) | ⚠️ Unaudited |
| FarmDeployer | unknown | bsc | n/a | [`0x210dbf...49d5b2`](./contracts/bsc-56/0x210dbf538ef70750e0eb6149005bf2d40d49d5b2/) | ⚠️ Unaudited |
| FarmZAP | unknown | bsc | n/a | [`0x451583...06f762`](./contracts/bsc-56/0x451583b6da479eaa04366443262848e27706f762/) | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | base | n/a | [`0x91934e...7d9885`](./contracts/base-8453/0x91934e488809be1d03646c035f45c8d8947d9885/) | ⚠️ Unaudited |
| FullRangeConvertor | unknown | arbitrum | n/a | [`0x0e5cb1...24c7d7`](./contracts/arbitrum-42161/0x0e5cb1d05a4af57ac5f447c026a2b3c28f24c7d7/) | ⚠️ Unaudited |
| FullRangeConvertorV2 | unknown | ethereum | n/a | [`0x0127b2...4261ab`](./contracts/ethereum-1/0x0127b2a8064194810328a898a7573b86644261ab/) | ⚠️ Unaudited |
| HanuYokia | unknown | ethereum | n/a | [`0x72e539...5dbcc0`](./contracts/ethereum-1/0x72e5390edb7727e3d4e3436451dadaff675dbcc0/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| IFO | unknown | bsc | n/a | [`0x4eff3a...21d820`](./contracts/bsc-56/0x4eff3a0a82f624b617aab7af92777deec521d820/) | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/) | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | bsc | n/a | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | ⚠️ Unaudited |
| InvestorMine | unknown | bsc | n/a | [`0xbfa00a...678ff7`](./contracts/bsc-56/0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | avalanche | n/a | [`0x125cf8...84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | avalanche | n/a | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | unknown | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | unknown | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoeLens | unknown | avalanche | n/a | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | unknown | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | unknown | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0x267a45...149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | [`0x127551...d13280`](./contracts/bsc-56/0x127551b5cd5d21bd736483cb829b580a4cd13280/) | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | n/a | [`0x1900e0...e4992e`](./contracts/bsc-56/0x1900e0d289ebc5b7b75aff8232464b9f99e4992e/) | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | bsc | n/a | [`0x6b4dc7...bfc3ba`](./contracts/bsc-56/0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba/) | ⚠️ Unaudited |
| LPZap | unknown | bsc | n/a | [`0xff5737...1226ba`](./contracts/bsc-56/0xff57372f16147117520d40fe777feda51b1226ba/) | ⚠️ Unaudited |
| MarketingTimeLock | unknown | bsc | n/a | [`0x706d4d...4f40d0`](./contracts/bsc-56/0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| MigratePancakeV1 | unknown | bsc | n/a | [`0x4d1317...0edf7c`](./contracts/bsc-56/0x4d1317bdb1f22b9a1849f128c8ff2dc13c0edf7c/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | ⚠️ Unaudited |
| MINTER | unknown | ethereum | n/a | [`0x4c412f...6fd729`](./contracts/ethereum-1/0x4c412f365f2cea503bc0d519a48e54670d6fd729/) | ⚠️ Unaudited |
| NewToken | unknown | polygon | n/a | [`0x687f8a...5ee607`](./contracts/polygon-137/0x687f8ae35581d5729253542524be3ed9445ee607/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | base | n/a | [`0x80c7dd...a314de`](./contracts/base-8453/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| Oracle | unknown | bsc | n/a | [`0x2f48cd...1f2db0`](./contracts/bsc-56/0x2f48cde4cfd0fb4f5c873291d5cf2dc9e61f2db0/) | ⚠️ Unaudited |
| OracleProxy | unknown | bsc | n/a | [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/) | ⚠️ Unaudited |
| PancakeFactory | unknown | bsc | n/a | [`0x877fe7...15edb6`](./contracts/bsc-56/0x877fe7f4e22e21be397cd9364fafd4af4e15edb6/) | ⚠️ Unaudited |
| PancakeRouter | unknown | bsc | n/a | [`0x02ee06...8b689f`](./contracts/bsc-56/0x02ee06c137a106255299589b3184f5ba438b689f/) | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | bsc | n/a | [`0x4086d4...00da07`](./contracts/bsc-56/0x4086d46a650517fa756f620507db704d3900da07/) | ⚠️ Unaudited |
| POLContract | unknown | ethereum | n/a | [`0x17e003...a48449`](./contracts/ethereum-1/0x17e00383a843a9922bca3b280c0ade9f8ba48449/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x1035b0...c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | n/a | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | ⚠️ Unaudited |
| RouteProcessor3 | unknown | base | n/a | [`0x0be808...93d904`](./contracts/base-8453/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/) | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | base | n/a | [`0x9b7703...e6d176`](./contracts/base-8453/0x9b77032075806975b3bd3bcfc69e5de36ee6d176/) | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | base | n/a | [`0x83ec81...0751d1`](./contracts/base-8453/0x83ec81ae54dd8dca17c3dd4703141599090751d1/) | ⚠️ Unaudited |
| RouterFeeSetter | unknown | bsc | n/a | [`0x6b2ce3...a4c967`](./contracts/bsc-56/0x6b2ce3f0af1dec26a3ae15125c771616bda4c967/) | ⚠️ Unaudited |
| Safaia | unknown | ethereum | n/a | [`0xc9e823...80494f`](./contracts/ethereum-1/0xc9e823929b74720990f0e3914ef718c37480494f/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | ethereum | n/a | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | avalanche | n/a | [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | bsc | n/a | [`0x78d5ef...55c61e`](./contracts/bsc-56/0x78d5efd49d18654226ae0ca3178bd21f2955c61e/) | ⚠️ Unaudited |
| SousChef | unknown | bsc | n/a | [`0xfaa221...71b4d3`](./contracts/bsc-56/0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | ⚠️ Unaudited |
| SwapContract | unknown | ethereum | n/a | [`0x816c82...70840c`](./contracts/ethereum-1/0x816c82409ec8e0c008fc79e902a8e790bb70840c/) | ⚠️ Unaudited |
| SwapFeeReward | unknown | bsc | n/a | [`0x2810b4...552dd8`](./contracts/bsc-56/0x2810b4f1172e0dccbc226d8c716534ff9c552dd8/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| TeamTimeLock | unknown | bsc | n/a | [`0x513d15...b6b036`](./contracts/bsc-56/0x513d1500c5a18816bfed5d78dc4859d831b6b036/) | ⚠️ Unaudited |
| TickLens | unknown | base | n/a | [`0xf4d733...bd62c3`](./contracts/base-8453/0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x4b57a6...20b410`](./contracts/bsc-56/0x4b57a6122651ed5dc0297a42c5a0b4400b20b410/) | ⚠️ Unaudited |
| TokenFees | unknown | bsc | n/a | [`0x2c552f...b4287d`](./contracts/bsc-56/0x2c552f9da0b3752c2526c45901c54ba4dfb4287d/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x2f4391...bb5140`](./contracts/avalanche-43114/0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x4b4e08...7fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/) | ⚠️ Unaudited |
| TreasuryFeeManager | unknown | bsc | n/a | [`0x01fef8...9f83ff`](./contracts/bsc-56/0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | avalanche | n/a | [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UNCL | unknown | ethereum | n/a | [`0x2f4eb4...33dd49`](./contracts/ethereum-1/0x2f4eb47a1b1f4488c71fc10e39a4aa56af33dd49/) | ⚠️ Unaudited |
| UNCLAirdrop | unknown | ethereum | n/a | [`0x8a5e20...e35a4e`](./contracts/ethereum-1/0x8a5e208c1ca217db8ee64e8d390cf1f25de35a4e/) | ⚠️ Unaudited |
| UnclSwap | unknown | ethereum | n/a | [`0x13dfb7...618fcd`](./contracts/ethereum-1/0x13dfb77a0ed9e439670416d27c5a2e0b31618fcd/) | ⚠️ Unaudited |
| UNCX | unknown | ethereum | n/a | [`0xadb243...a7b1d0`](./contracts/ethereum-1/0xadb2437e6f65682b85f814fbc12fec0508a7b1d0/) | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | base | n/a | [`0x231278...aebcc1`](./contracts/base-8453/0x231278edd38b00b07fbd52120cef685b9baebcc1/) | ⚠️ Unaudited |
| UniCrypt | unknown | ethereum | n/a | [`0xf29e46...541373`](./contracts/ethereum-1/0xf29e46887ffae92f1ff87dfe39713875da541373/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | polygon | n/a | [`0x575737...d3ab32`](./contracts/polygon-137/0x5757371414417b8c6caad45baef941abc7d3ab32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x18f53a...f1b21c`](./contracts/ethereum-1/0x18f53ab8ee03c6f8b3f3421336d2e153b4f1b21c/) | ⚠️ Unaudited |
| UniswapV3Pool | unknown | base | n/a | [`0xfb559d...9f758b`](./contracts/base-8453/0xfb559d225343a61884d46eee91c1a805759f758b/) | ⚠️ Unaudited |
| UpgradeProxy | unknown | bsc | n/a | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | ⚠️ Unaudited |
| VamToken | unknown | polygon | n/a | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| Zap | unknown | avalanche | n/a | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | ⚠️ Unaudited |

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
| [01_Certificate_Unicrypt.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [01_Certificate_Unicrypt_Locking_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_Locking_V2.pdf) | unknown | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [01_Certificate_Unicrypt_Presale.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_Presale.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [01_Certificate_Unicrypt_TokenVesting.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_TokenVesting.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [02_Program_Audit_Unicrypt_Locker_Solana.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Program_Audit_Unicrypt_Locker_Solana.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [02_Smart Contract Audit Unicrypt_Farm.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Farm.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 2 | high |
| [02_Smart Contract Audit Unicrypt_Locking_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Locking_V2.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [02_Smart Contract Audit Unicrypt_Presale.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Presale.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 5 | high |
| [02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit_Unicrypt_LP_Locking_v3.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [02_Smart Contract Audit_Unicrypt_TokenVesting.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit_Unicrypt_TokenVesting.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 3 | high |
| [02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 2 | high |
| [02_Smart_Contract_Audit_Unicrypt_UNCX.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_UNCX.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 2 | high |
| [Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 3 | high |
| [DL audit link](https://skynet.certik.com/projects/unicrypt) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.openzeppelin.com/news/uncx-uniswapv3-liquidity-locker-audit) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | autoBsw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4693b6...f43137`](./contracts/bsc-56/0x4693b62e5fc9c0a45f89d62e6300a03c85f43137/) | BabyDogeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x36b343...4541be`](./contracts/bsc-56/0x36b34364e17373c05300bc3e827bf7cac34541be/) | BabyDogeLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9a0f6...af3c47`](./contracts/bsc-56/0xc9a0f685f39d05d835c369036251ee3aeaaf3c47/) | BabyDogeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | BadBuildersClubSoulbound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x173661...9f1285`](./contracts/bsc-56/0x173661c75895b15fae9ffc91210017cf6e9f1285/) | BiswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | BiswapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05b4c8...fa9c75`](./contracts/bsc-56/0x05b4c8785f4c8856c47a3c2ebce313343efa9c75/) | BnbPricePrediction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x187463...3b4208`](./contracts/bsc-56/0x187463a09569020659f4128c14fb13bce23b4208/) | BnbStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc7ac77...8c29c8`](./contracts/bsc-56/0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8/) | BNBWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | BoostedMasterChefJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | BoringHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a539a...b1f522`](./contracts/bsc-56/0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522/) | BSWMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | BSWToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c8b60...637c7a`](./contracts/bsc-56/0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a/) | BunnyMintingFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01f3a3...264c0a`](./contracts/bsc-56/0x01f3a38e70c823427beec5b6babf6b33de264c0a/) | BuyBackFeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x086bef...88807b`](./contracts/bsc-56/0x086bef28ebfb560e787989d025c83bd1e288807b/) | CakeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ChildMintableERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ChildMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | Cliff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x760026...63f994`](./contracts/bsc-56/0x7600265b6713503a52c1d6db31f4c70f8863f994/) | CountryList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | CustomMasterChefJoeV2Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | DragonLair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x225a3d...2a6c17`](./contracts/gnosis-100/0x225a3dda99dc1e28cf43b0cd80cf2ec0752a6c17/) | DXswapFeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d322e...8a9cc5`](./contracts/bsc-56/0x7d322eb2f7149de1613f4310a73254abd08a9cc5/) | Erc20Simple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03d43a...c1a155`](./contracts/arbitrum-42161/0x03d43aa7c53e4346028a1240771a325fc1c1a155/) | ExposedV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/) | FactoryViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x210dbf...49d5b2`](./contracts/bsc-56/0x210dbf538ef70750e0eb6149005bf2d40d49d5b2/) | FarmDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x451583...06f762`](./contracts/bsc-56/0x451583b6da479eaa04366443262848e27706f762/) | FarmZAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91934e...7d9885`](./contracts/base-8453/0x91934e488809be1d03646c035f45c8d8947d9885/) | FeeOnTransferDetector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e5cb1...24c7d7`](./contracts/arbitrum-42161/0x0e5cb1d05a4af57ac5f447c026a2b3c28f24c7d7/) | FullRangeConvertor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0127b2...4261ab`](./contracts/ethereum-1/0x0127b2a8064194810328a898a7573b86644261ab/) | FullRangeConvertorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72e539...5dbcc0`](./contracts/ethereum-1/0x72e5390edb7727e3d4e3436451dadaff675dbcc0/) | HanuYokia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4eff3a...21d820`](./contracts/bsc-56/0x4eff3a0a82f624b617aab7af92777deec521d820/) | IFO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/) | IFOByProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | IFOUpgradeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbfa00a...678ff7`](./contracts/bsc-56/0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7/) | InvestorMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x125cf8...84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/) | JCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | JCollateralCapErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | JoeBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | JoeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | JoeHatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | JoeLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | JoeMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | JoeMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | JoeRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | JoeRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x267a45...149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/) | JWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x127551...d13280`](./contracts/bsc-56/0x127551b5cd5d21bd736483cb829b580a4cd13280/) | Lottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1900e0...e4992e`](./contracts/bsc-56/0x1900e0d289ebc5b7b75aff8232464b9f99e4992e/) | LotteryNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b4dc7...bfc3ba`](./contracts/bsc-56/0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba/) | LotteryRewardProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff5737...1226ba`](./contracts/bsc-56/0xff57372f16147117520d40fe777feda51b1226ba/) | LPZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x706d4d...4f40d0`](./contracts/bsc-56/0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0/) | MarketingTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d1317...0edf7c`](./contracts/bsc-56/0x4d1317bdb1f22b9a1849f128c8ff2dc13c0edf7c/) | MigratePancakeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c412f...6fd729`](./contracts/ethereum-1/0x4c412f365f2cea503bc0d519a48e54670d6fd729/) | MINTER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x687f8a...5ee607`](./contracts/polygon-137/0x687f8ae35581d5729253542524be3ed9445ee607/) | NewToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x80c7dd...a314de`](./contracts/base-8453/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f48cd...1f2db0`](./contracts/bsc-56/0x2f48cde4cfd0fb4f5c873291d5cf2dc9e61f2db0/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/) | OracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x877fe7...15edb6`](./contracts/bsc-56/0x877fe7f4e22e21be397cd9364fafd4af4e15edb6/) | PancakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02ee06...8b689f`](./contracts/bsc-56/0x02ee06c137a106255299589b3184f5ba438b689f/) | PancakeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4086d4...00da07`](./contracts/bsc-56/0x4086d46a650517fa756f620507db704d3900da07/) | PancakeVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e003...a48449`](./contracts/ethereum-1/0x17e00383a843a9922bca3b280c0ade9f8ba48449/) | POLContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | QuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0be808...93d904`](./contracts/base-8453/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/) | RouteProcessor3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9b7703...e6d176`](./contracts/base-8453/0x9b77032075806975b3bd3bcfc69e5de36ee6d176/) | RouteProcessor3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x83ec81...0751d1`](./contracts/base-8453/0x83ec81ae54dd8dca17c3dd4703141599090751d1/) | RouteProcessor3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b2ce3...a4c967`](./contracts/bsc-56/0x6b2ce3f0af1dec26a3ae15125c771616bda4c967/) | RouterFeeSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9e823...80494f`](./contracts/ethereum-1/0xc9e823929b74720990f0e3914ef718c37480494f/) | Safaia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | SimpleERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/) | SmartChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78d5ef...55c61e`](./contracts/bsc-56/0x78d5efd49d18654226ae0ca3178bd21f2955c61e/) | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfaa221...71b4d3`](./contracts/bsc-56/0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3/) | SousChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x816c82...70840c`](./contracts/ethereum-1/0x816c82409ec8e0c008fc79e902a8e790bb70840c/) | SwapContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2810b4...552dd8`](./contracts/bsc-56/0x2810b4f1172e0dccbc226d8c716534ff9c552dd8/) | SwapFeeReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | SyrupBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x513d15...b6b036`](./contracts/bsc-56/0x513d1500c5a18816bfed5d78dc4859d831b6b036/) | TeamTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf4d733...bd62c3`](./contracts/base-8453/0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b57a6...20b410`](./contracts/bsc-56/0x4b57a6122651ed5dc0297a42c5a0b4400b20b410/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c552f...b4287d`](./contracts/bsc-56/0x2c552f9da0b3752c2526c45901c54ba4dfb4287d/) | TokenFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | Transfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01fef8...9f83ff`](./contracts/bsc-56/0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff/) | TreasuryFeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | TripleSlopeRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f4eb4...33dd49`](./contracts/ethereum-1/0x2f4eb47a1b1f4488c71fc10e39a4aa56af33dd49/) | UNCL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a5e20...e35a4e`](./contracts/ethereum-1/0x8a5e208c1ca217db8ee64e8d390cf1f25de35a4e/) | UNCLAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13dfb7...618fcd`](./contracts/ethereum-1/0x13dfb77a0ed9e439670416d27c5a2e0b31618fcd/) | UnclSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadb243...a7b1d0`](./contracts/ethereum-1/0xadb2437e6f65682b85f814fbc12fec0508a7b1d0/) | UNCX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x231278...aebcc1`](./contracts/base-8453/0x231278edd38b00b07fbd52120cef685b9baebcc1/) | UNCX_LiquidityLocker_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf29e46...541373`](./contracts/ethereum-1/0xf29e46887ffae92f1ff87dfe39713875da541373/) | UniCrypt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | UpgradeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | VamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 127 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=22

Zero-match audit list:

- [18406] 01_Certificate_Unicrypt.pdf
- [18407] 01_Certificate_Unicrypt_Locking_V2.pdf
- [18408] 01_Certificate_Unicrypt_Presale.pdf
- [18409] 01_Certificate_Unicrypt_TokenVesting.pdf
- [18410] 02_Program_Audit_Unicrypt_Locker_Solana.pdf
- [18414] 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf
- [18416] 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf
- [18418] 02_Smart_Contract_Audit_Unicrypt_UNCX.pdf
- [18422] DL audit link

Fork inheritance lineage and inherited audits are included when available.
