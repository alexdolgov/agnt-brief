# Agentic Audit Brief: UNCX Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 18 (2 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: UNCX Network (`uncx-network`)
- Website: [https://uncx.network](https://uncx.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon
- Contract surface: 158 unique implementations (158 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $117,856,270.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for UNCX Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: ownable (2), ownable2step (1)
- Frameworks: openzeppelin (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x663a5c229c09b049e36dcc11a9b0d4a8eb9db214`, chain 1)
- UnnamedContract (`0x7f5c649856f900d15c83741f45ae46f5c6858234`, chain 1)
- UnnamedContract (`0xdba68f07d1b7ca219f78ae8582c213d975c25caf`, chain 1)
- UnnamedContract (`0x599886b24b0a625e4912033213d6b6188a1abca2`, chain 10)
- UnnamedContract (`0x0d29598ec01fa03665feead91d4fb423f393886c`, chain 56)
- UnnamedContract (`0xc765bddb93b0d1c1a88282ba0fa6b2d00e3e0c83`, chain 56)
- UnnamedContract (`0xe4c7d00a8123cc61206c540bd2caa6924d13a52c`, chain 56)
- UnnamedContract (`0xf1f7f21e2ea80ab110d0f95faa64655688341990`, chain 56)
- UnnamedContract (`0x13dfb77a0ed9e439670416d27c5a2e0b31618fcd`, chain 137)
- UnnamedContract (`0x2621816be08e4279cf881bc640be4089bfaf491a`, chain 137)
- UnnamedContract (`0xadb2437e6f65682b85f814fbc12fec0508a7b1d0`, chain 137)
- UnnamedContract (`0xc22218406983bf88bb634bb4bf15fa4e0a1a8c84`, chain 137)
- UnnamedContract (`0xd8207e9449647a9668ad3f8ecb97a1f929f81fd1`, chain 137)
- UnnamedContract (`0x80ebc53dafb97415b54c7390b1f26d79c7aeda23`, chain 8453)
- UnnamedContract (`0xa82685520c463a752d5319e6616e4e5fd0215e33`, chain 8453)
- UnnamedContract (`0xc4e637d37113192f4f1f060daebd7758de7f4131`, chain 8453)
- UnnamedContract (`0x4264bbe70c57d2aa9b64762dfde214219f088a86`, chain 42161)
- UnnamedContract (`0x8cb0300af2a801dc9992225d45399ac56888cbcd`, chain 42161)
- UnnamedContract (`0xcb8b00d4018ad6031e28a44bf74616014bfb62ec`, chain 42161)
- UnnamedContract (`0xfa104eb3925a27e6263e05acc88f2e983a890637`, chain 42161)
- UnnamedContract (`0xa9f6aefa5d56db1205f36c34e6482a6d4979b3bb`, chain 43114)
- UnnamedContract (`0xca61c60d9da18fa4e836a1e378ded3205fcedfa5`, chain 43114)
- UNCX_LiquidityLocker_UniV3 (`0x231278edd38b00b07fbd52120cef685b9baebcc1`, chain 8453)
- UniswapV2Locker (`0x275720567e5955f5f2d53a7a1ab8a0fc643de50e`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 24 of 158 unique; 134 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/134
- Verified + Unaudited implementations: 133
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 158
- Raw deployments: 158
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 18 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 0.7% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UniswapV2Locker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259757 | `0x275720567e5955f5f2d53a7a1ab8a0fc643de50e` | ✅ Audited |

### ⚠️ Verified + Unaudited (133)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| autoBsw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a16ff6fd63a46bf973671762a39f3780cda73d` | ⚠️ Unaudited |
| BabyDogeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4693b62e5fc9c0a45f89d62e6300a03c85f43137` | ⚠️ Unaudited |
| BabyDogeLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36b34364e17373c05300bc3e827bf7cac34541be` | ⚠️ Unaudited |
| BabyDogeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9a0f685f39d05d835c369036251ee3aeaaf3c47` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | ⚠️ Unaudited |
| BiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x173661c75895b15fae9ffc91210017cf6e9f1285` | ⚠️ Unaudited |
| BiswapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8` | ⚠️ Unaudited |
| BnbPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05b4c8785f4c8856c47a3c2ebce313343efa9c75` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x187463a09569020659f4128c14fb13bce23b4208` | ⚠️ Unaudited |
| BNBWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217945d4cb3386420252da73743f1730f38266e9` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dd4d86180eee39ac4fb35eca67cacf608ab5741` | ⚠️ Unaudited |
| BSWMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522` | ⚠️ Unaudited |
| BSWToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x965f527d9159dce6288a2219db51fc6eef120dd1` | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a` | ⚠️ Unaudited |
| BuyBackFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f3a38e70c823427beec5b6babf6b33de264c0a` | ⚠️ Unaudited |
| CakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086bef28ebfb560e787989d025c83bd1e288807b` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4a74867a4e92c1627c8f99a717d0795e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd9592d7acea88c9b0d04b794a82bed06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda6415502b0ddab9eda1d09f4f16286273fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d3143311b012ad268a74f2aa791713952ea` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaff90532e2937ff290009521e7e120ed062d4f34` | ⚠️ Unaudited |
| CountryList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7600265b6713503a52c1d6db31f4c70f8863f994` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18d79f316005542da4ecb1624b59c4e6e398` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164a485b0b2c90639e47b0f377b4a438a16b1` | ⚠️ Unaudited |
| DXswapFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x225a3dda99dc1e28cf43b0cd80cf2ec0752a6c17` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72281a435fe5a9945e04ef4d0a32771430106587` | ⚠️ Unaudited |
| Erc20Simple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d322eb2f7149de1613f4310a73254abd08a9cc5` | ⚠️ Unaudited |
| ExposedV3Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d43aa7c53e4346028a1240771a325fc1c1a155` | ⚠️ Unaudited |
| FactoryViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3202b26f60ab51731f7e9a88262e12cfe6ec8607` | ⚠️ Unaudited |
| FarmDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x210dbf538ef70750e0eb6149005bf2d40d49d5b2` | ⚠️ Unaudited |
| FarmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388f7e6d45e058aa703227b44e216e3be3c6a6e7` | ⚠️ Unaudited |
| FarmGenerator01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x197d2286f299c323272c08d768d7fd987e1350f2` | ⚠️ Unaudited |
| FarmZAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451583b6da479eaa04366443262848e27706f762` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91934e488809be1d03646c035f45c8d8947d9885` | ⚠️ Unaudited |
| FeeResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x517edf73159b3f02ee730abf5930240387655454` | ⚠️ Unaudited |
| FullRangeConvertor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e5cb1d05a4af57ac5f447c026a2b3c28f24c7d7` | ⚠️ Unaudited |
| FullRangeConvertorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0127b2a8064194810328a898a7573b86644261ab` | ⚠️ Unaudited |
| HanuYokia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72e5390edb7727e3d4e3436451dadaff675dbcc0` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eff3a0a82f624b617aab7af92777deec521d820` | ⚠️ Unaudited |
| IFOByProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0366f1a242c37ca73c73834b7fcd4a66af1d5700` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0ae9b39ef4a2680d67c9fb252816725f22624b0` | ⚠️ Unaudited |
| InvestorMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011863cc4f506d1387cd6b22c522602ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | ⚠️ Unaudited |
| JoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ad6c38be94206ca50bb0d90783181662f0cfa10` | ⚠️ Unaudited |
| JoeHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe038ea4b50f9c957da326c412ebd73462077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50fea3527fad31fa840b748fd3694ae8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4247c5dbac51a135939cc904c34e4913b6bcdcfe` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0fbf56baeb9ef677de19aded8f7a950bcb58` | ⚠️ Unaudited |
| JoeRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae616a2155ee3d9a68541ba4544862310933d4` | ⚠️ Unaudited |
| JoeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x267a4576293d55b53c769606e886e1f343149df5` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127551b5cd5d21bd736483cb829b580a4cd13280` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1900e0d289ebc5b7b75aff8232464b9f99e4992e` | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba` | ⚠️ Unaudited |
| LPZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff57372f16147117520d40fe777feda51b1226ba` | ⚠️ Unaudited |
| MarketingTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e585c367dafa5db5e182a192e73f4e0900e764d` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f121ca35509af06a0be99093d08462f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x188bed1968b795d5c9022f6a0bb5931ac4c18f00` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7` | ⚠️ Unaudited |
| MigratePancakeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d1317bdb1f22b9a1849f128c8ff2dc13c0edf7c` | ⚠️ Unaudited |
| MigrateV3NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c51f7ccf8562d8196f83aeb3b8b2a8ecad33311` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180acb9d300ffc023be2300addb6879d94830` | ⚠️ Unaudited |
| MINTER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c412f365f2cea503bc0d519a48e54670d6fd729` | ⚠️ Unaudited |
| MintFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ab2358cdae4ba9fd2aa6e855e4475942777febb` | ⚠️ Unaudited |
| MintGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd433e474ecb81005ac906e0bcfab66e1d49371` | ⚠️ Unaudited |
| NewToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x687f8ae35581d5729253542524be3ed9445ee607` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c7dd17b01855a6d2347444a0fcc36136a314de` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f48cde4cfd0fb4f5c873291d5cf2dc9e61f2db0` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4b1b0c225944808b9017f16e9b10305faa934cef` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x877fe7f4e22e21be397cd9364fafd4af4e15edb6` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02ee06c137a106255299589b3184f5ba438b689f` | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4086d46a650517fa756f620507db704d3900da07` | ⚠️ Unaudited |
| POLContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e00383a843a9922bca3b280c0ade9f8ba48449` | ⚠️ Unaudited |
| PresaleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d9b3b591b9832f275ad6e3b39c505c73d351b21` | ⚠️ Unaudited |
| PresaleGenerator01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e5a82ad97caf832ca3e53b154f84a8b69dc1eb` | ⚠️ Unaudited |
| PresaleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0059eb897e1af970ca7ae670e0febe0380b8dd2e` | ⚠️ Unaudited |
| PresaleLockForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x361663a6097e90ebf125e1cf884048c32080aff3` | ⚠️ Unaudited |
| PresaleSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8977e2a829be0dd8c94fc7886b15937a376c41` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x107b31d84bf6cec672f3af924471bb6f4fb8555a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2274491950b2d6d79b7e69b683b482282ba14885` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b77032075806975b3bd3bcfc69e5de36ee6d176` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83ec81ae54dd8dca17c3dd4703141599090751d1` | ⚠️ Unaudited |
| RouterFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2ce3f0af1dec26a3ae15125c771616bda4c967` | ⚠️ Unaudited |
| Safaia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e823929b74720990f0e3914ef718c37480494f` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2a7fec8572f12f369659cf48a826601cc5c` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d06afb994047acee8c205500ab1aa25c5a3388` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00a142210f6b3bb3f78751dcd7b589e9e7b39346` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78d5efd49d18654226ae0ca3178bd21f2955c61e` | ⚠️ Unaudited |
| SousChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| SwapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x816c82409ec8e0c008fc79e902a8e790bb70840c` | ⚠️ Unaudited |
| SwapFeeReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2810b4f1172e0dccbc226d8c716534ff9c552dd8` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7bc57584b7998236eff51b98a168dcea9b0` | ⚠️ Unaudited |
| TeamTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x513d1500c5a18816bfed5d78dc4859d831b6b036` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b57a6122651ed5dc0297a42c5a0b4400b20b410` | ⚠️ Unaudited |
| TokenFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c552f9da0b3752c2526c45901c54ba4dfb4287d` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0147c0212ca4aba29d26dffd3c800893080ef296` | ⚠️ Unaudited |
| TokenVestingPager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3075530a0524c2caeb80ac44a2cbad15c82eb946` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8632153b2d083a94590e577298c0ae50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17` | ⚠️ Unaudited |
| TreasuryFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c5486b85faae29b071f2a616a59ca7bf8f73682` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97b041e42697def62afab53c99c1dd5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de668684839f97d4845f32a43e913366ec08c` | ⚠️ Unaudited |
| UNCL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4eb47a1b1f4488c71fc10e39a4aa56af33dd49` | ⚠️ Unaudited |
| UNCLAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5e208c1ca217db8ee64e8d390cf1f25de35a4e` | ⚠️ Unaudited |
| UnclSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dfb77a0ed9e439670416d27c5a2e0b31618fcd` | ⚠️ Unaudited |
| UNCX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb2437e6f65682b85f814fbc12fec0508a7b1d0` | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | project_anchor | own_supporting | 0 | base | unit-259768 | `0x231278edd38b00b07fbd52120cef685b9baebcc1` | ⚠️ Unaudited |
| UNCX_ProofOfReservesUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a188696d962f975250818ba028fb07f7b7eb41a` | ⚠️ Unaudited |
| UNCX_ProofOfReservesV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4aa5c6e1751e0251d25946a07b5949d628a01f31` | ⚠️ Unaudited |
| UniCrypt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29e46887ffae92f1ff87dfe39713875da541373` | ⚠️ Unaudited |
| UnicryptAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04cc89b23f1be4f15a107647034f3c339fb50416` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5757371414417b8c6caad45baef941abc7d3ab32` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f53ab8ee03c6f8b3f3421336d2e153b4f1b21c` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb559d225343a61884d46eee91c1a805759f758b` | ⚠️ Unaudited |
| UpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d8f5a44d92d3cff40806548d204ffe90e58faa6` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e971c704371772edaf16e0db381a8d02027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x231278edd38b00b07fbd52120cef685b9baebcc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259748 | `0x663a5c229c09b049e36dcc11a9b0d4a8eb9db214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259749 | `0x7f5c649856f900d15c83741f45ae46f5c6858234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b00d4018ad6031e28a44bf74616014bfb62ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259750 | `0xdba68f07d1b7ca219f78ae8582c213d975c25caf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-259751 | `0x599886b24b0a625e4912033213d6b6188a1abca2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259764 | `0x0d29598ec01fa03665feead91d4fb423f393886c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259765 | `0xc765bddb93b0d1c1a88282ba0fa6b2d00e3e0c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259766 | `0xe4c7d00a8123cc61206c540bd2caa6924d13a52c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259767 | `0xf1f7f21e2ea80ab110d0f95faa64655688341990` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259752 | `0x13dfb77a0ed9e439670416d27c5a2e0b31618fcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259753 | `0x2621816be08e4279cf881bc640be4089bfaf491a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259754 | `0xadb2437e6f65682b85f814fbc12fec0508a7b1d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259755 | `0xc22218406983bf88bb634bb4bf15fa4e0a1a8c84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259756 | `0xd8207e9449647a9668ad3f8ecb97a1f929f81fd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-259769 | `0x80ebc53dafb97415b54c7390b1f26d79c7aeda23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-259770 | `0xa82685520c463a752d5319e6616e4e5fd0215e33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-259771 | `0xc4e637d37113192f4f1f060daebd7758de7f4131` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259758 | `0x4264bbe70c57d2aa9b64762dfde214219f088a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259759 | `0x8cb0300af2a801dc9992225d45399ac56888cbcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259760 | `0xcb8b00d4018ad6031e28a44bf74616014bfb62ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259761 | `0xfa104eb3925a27e6263e05acc88f2e983a890637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-259762 | `0xa9f6aefa5d56db1205f36c34e6482a6d4979b3bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-259763 | `0xca61c60d9da18fa4e836a1e378ded3205fcedfa5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [01_Certificate_Unicrypt.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [01_Certificate_Unicrypt_Locking_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_Locking_V2.pdf) | unknown | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [01_Certificate_Unicrypt_Presale.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_Presale.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [01_Certificate_Unicrypt_TokenVesting.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/01_Certificate_Unicrypt_TokenVesting.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [02_Program_Audit_Unicrypt_Locker_Solana.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Program_Audit_Unicrypt_Locker_Solana.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [02_Smart Contract Audit Unicrypt_Farm.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Farm.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [02_Smart Contract Audit Unicrypt_Locking_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Locking_V2.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [02_Smart Contract Audit Unicrypt_Presale.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit%20Unicrypt_Presale.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit_Unicrypt_LP_Locking_v3.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [02_Smart Contract Audit_Unicrypt_TokenVesting.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart%20Contract%20Audit_Unicrypt_TokenVesting.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [02_Smart_Contract_Audit_Unicrypt_UNCX.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/02_Smart_Contract_Audit_Unicrypt_UNCX.pdf) | unknown | Audit | 2022-03 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf](https://github.com/softstackHQ/Smart-Contract-Security-Audits/blob/master/Unicrypt/Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [DL audit link](https://skynet.certik.com/projects/unicrypt) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DL audit link](https://www.openzeppelin.com/news/uncx-uniswapv3-liquidity-locker-audit) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18406] 01_Certificate_Unicrypt.pdf — no match: The document is a certificate of compliance, not an audit report. No contracts in scope or audit date found.
- [18407] 01_Certificate_Unicrypt_Locking_V2.pdf — no match: The document is a certificate of compliance, not an audit report. No contracts in scope are mentioned.
- [18408] 01_Certificate_Unicrypt_Presale.pdf — no match: The document is a certificate of compliance, not an audit report. It lists four Ethereum addresses but no contract names or source files. The date is extracted from the certificate date.
- [18409] 01_Certificate_Unicrypt_TokenVesting.pdf — no match: The document is a certificate of compliance, not an audit report. No contracts in scope or audit date found.
- [18410] 02_Program_Audit_Unicrypt_Locker_Solana.pdf — no match: The audit scope is the locker program for Solana network, with two Rust programs: country-list and locker.
- [18411] 02_Smart Contract Audit Unicrypt_Farm.pdf — no match: Three contracts explicitly listed in scope: FarmFactory.sol, FarmGenerator01.sol, Farm01.sol. Audit date from cover page and version history.
- [18412] 02_Smart Contract Audit Unicrypt_Locking_V2.pdf — matched: Only one contract in scope: UniswapV2Locker.sol. Audit date from cover page (17.12.2020).
- [18413] 02_Smart Contract Audit Unicrypt_Presale.pdf — no match: All six presale contracts explicitly listed in scope and tested contract files. Audit date from final document version 1.1 dated 29.01.2021.
- [18414] 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf — no match: Scope explicitly lists UniswapV3LPFactory.sol and UniswapV3LPToken.sol as the contracts tested. TickHelper.sol is also included in tested files and findings. Audit date from cover page: 21.02.2022.
- [18415] 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf — no match: Scope section explicitly lists TokenVesting.sol and FullMath.sol as in scope; all six files from tested contract files are included as they are part of the audit.
- [18416] 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf — no match: Scope section explicitly lists 7 contracts (RewardPoolGenerator, StakeFactory, StakePoolGenerator, StakeSettings, PoolRewardMapping, StakePoolPager, StakeFactoryPager) and the tested files table includes additional interfaces and contracts. All are considered in scope.
- [18417] 02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf — matched: Scope section explicitly lists UniswapV2Locker.sol as the main contract, and tested contract files include ICountryList.sol, MigrateLP.sol, TransferHelper.sol. Audit date from executive summary and version history.
- [18418] 02_Smart_Contract_Audit_Unicrypt_UNCX.pdf — no match: The audit report clearly states the scope is the UNCX Token contract, with file UNCX_Token.sol. The deployed contract address is provided on Etherscan.
- [18419] Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf — no match: All contracts and interfaces listed in the 'Source Unites in Scope' table (pages 17-19) and the 'Tested Contract Files' section (pages 9-10) are included. The audit date is the final report date (11.01.2023) from the cover page and version history.
- [18420] Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf — no match: Scope explicitly states 'ENMTv2 contract' and lists all files in scope tables (5.1 and 5.7). Audit date from cover page and version history.
- [18421] Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf — no match: All contracts listed in the 'Source Unites in Scope' table (section 5.7) and the 'Tested Contract Files' (section 5.1) are included. The audit date is from the cover page: 28.04.2023.
- [18422] DL audit link — no match: The provided text is a CertiK Skynet project insight page for UniCrypt, not an audit report. It mentions an audit delivered on 5/20/2021 but does not list any contracts in scope.
- [18423] DL audit link — no match: Scope section explicitly lists two files: UNCX_ProofOfReservesV2_UniV3.sol and IUNCX_ProofOfReservesV2_UniV3.sol. Audit date is February 8, 2024 from the title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 02_Program_Audit_Unicrypt_Locker_Solana.pdf | country-list | unmatched — not counted | — | listed in scope and tested files | no |
| 02_Program_Audit_Unicrypt_Locker_Solana.pdf | locker | unmatched — not counted | — | listed in scope and tested files | no |
| 02_Smart Contract Audit Unicrypt_Farm.pdf | FarmFactory | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Farm.pdf | FarmGenerator01 | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Farm.pdf | Farm01 | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Locking_V2.pdf | UniswapV2Locker | own contract | UniswapV2Locker (selected) `0x275720567e5955f5f2d53a7a1ab8a0fc643de50e` — deployed 2023-03-02 19:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 02_Smart Contract Audit Unicrypt_Presale.pdf | Presale01 | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Presale.pdf | PresaleFactory | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Presale.pdf | PresaleGenerator01 | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Presale.pdf | PresaleHelper | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Presale.pdf | PresaleLockForwarder | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit Unicrypt_Presale.pdf | PresaleSettings | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf | UniswapV3LPFactory | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf | UniswapV3LPToken | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf | TickHelper | unmatched — not counted | — | listed in tested contract files and metrics | no |
| 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf | TokenVesting | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf | FullMath | unmatched — not counted | — | listed in scope section and tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf | TokenBlacklist | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf | TransferHelper | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf | UnicryptAdmin | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf | VestingMathLibrary | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | RewardPoolGenerator | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | StakeFactory | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | StakePoolGenerator | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | StakeSettings | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | PoolRewardMapping | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | StakePoolPager | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | StakeFactoryPager | unmatched — not counted | — | listed in scope section | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | IStakeFactory | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | IStakeSettings | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | IRewardPool | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | StakePool | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | IEcosystemWhitelist | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | ICountryList | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | RewardPool | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | IStakePool | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf | IERC20 | unmatched — not counted | — | listed in tested files table | no |
| 02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf | UniswapV2Locker | own contract | UniswapV2Locker (selected) `0x275720567e5955f5f2d53a7a1ab8a0fc643de50e` — deployed 2023-03-02 19:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf | ICountryList | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf | MigrateLP | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf | TransferHelper | unmatched — not counted | — | listed in tested contract files | no |
| 02_Smart_Contract_Audit_Unicrypt_UNCX.pdf | UNCX_Token | unmatched — not counted | — | Listed in 'Tested Contract Files' and 'Source Unites in Scope' tables, and described as the scope of the audit. | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | LPWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | TaxHelperUniswapV2 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Settings | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Wallets | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Lossless | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Constructor | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | Tax | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | AntiBot | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | MintFactory | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | MintGenerator | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | FeeHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | TaxToken | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | FacetHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | BuyBackWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | ITaxHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IWallets | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IMintFactory | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | ITaxToken | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IBuyBackWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | ILosslessController | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IFacetHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | ISettings | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | IFeeHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf | ILPWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | LPWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | TaxHelperUniswapV2 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Settings | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Wallets | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Lossless | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Constructor | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | Tax | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | AntiBot | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | MintFactory | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | MintGenerator | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | FeeHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | TaxToken | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | FacetHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | BuyBackWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | ITaxHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IWallets | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IMintFactory | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | ITaxToken | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IBuyBackWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | ILosslessController | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IFacetHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | ISettings | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | IFeeHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf | ILPWallet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | UNCX_ProofOfReservesUniV3 | unmatched — not counted | — | listed in scope table and findings | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | MigrateV3NFT | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | FeeResolver | unmatched — not counted | — | listed in scope table and findings | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | IMigrateV3NFT | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | IUNCX_ProofOfReservesUniV3 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | ICountryList | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | FullMath | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | INonfungiblePositionManager | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | TickMath | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope table | no |
| DL audit link | UNCX_ProofOfReservesV2_UniV3 | unmatched — not counted | — | listed in scope | no |
| DL audit link | IUNCX_ProofOfReservesV2_UniV3 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x231278edd38b00b07fbd52120cef685b9baebcc1` | UNCX_LiquidityLocker_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 127 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, low=5
- Match method counts: unique_name=2

Zero-match audit list:

- [18406] 01_Certificate_Unicrypt.pdf
- [18407] 01_Certificate_Unicrypt_Locking_V2.pdf
- [18408] 01_Certificate_Unicrypt_Presale.pdf
- [18409] 01_Certificate_Unicrypt_TokenVesting.pdf
- [18410] 02_Program_Audit_Unicrypt_Locker_Solana.pdf
- [18411] 02_Smart Contract Audit Unicrypt_Farm.pdf
- [18413] 02_Smart Contract Audit Unicrypt_Presale.pdf
- [18414] 02_Smart Contract Audit_Unicrypt_LP_Locking_v3.pdf
- [18415] 02_Smart Contract Audit_Unicrypt_TokenVesting.pdf
- [18416] 02_Smart_Contract_Audit_Unicrypt_Farms_V2.pdf
- [18418] 02_Smart_Contract_Audit_Unicrypt_UNCX.pdf
- [18419] Smart_Contract_Audit_Unicrypt_ENMTv2_11012023.pdf
- [18420] Smart_Contract_Audit_Unicrypt_ENMTv2_20072023.pdf
- [18421] Smart_Contract_Audit_Unicrypt_Lockerv3_28042023.pdf
- [18422] DL audit link
- [18423] DL audit link

Fork inheritance lineage and inherited audits are included when available.
