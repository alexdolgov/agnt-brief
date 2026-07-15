# Agentic Audit Brief: UNCX Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 18 (2 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: UNCX Network (`uncx-network`)
- Website: [https://uncx.network](https://uncx.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
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

- UnnamedContract (`0x663a5c...9db214`, chain 1)
- UnnamedContract (`0x7f5c64...858234`, chain 1)
- UnnamedContract (`0xdba68f...c25caf`, chain 1)
- UnnamedContract (`0x599886...1abca2`, chain 10)
- UnnamedContract (`0x0d2959...93886c`, chain 56)
- UnnamedContract (`0xc765bd...3e0c83`, chain 56)
- UnnamedContract (`0xe4c7d0...13a52c`, chain 56)
- UnnamedContract (`0xf1f7f2...341990`, chain 56)
- UnnamedContract (`0x13dfb7...618fcd`, chain 137)
- UnnamedContract (`0x262181...af491a`, chain 137)
- UnnamedContract (`0xadb243...a7b1d0`, chain 137)
- UnnamedContract (`0xc22218...1a8c84`, chain 137)
- UnnamedContract (`0xd8207e...f81fd1`, chain 137)
- UnnamedContract (`0x80ebc5...aeda23`, chain 8453)
- UnnamedContract (`0xa82685...215e33`, chain 8453)
- UnnamedContract (`0xc4e637...7f4131`, chain 8453)
- UnnamedContract (`0x4264bb...088a86`, chain 42161)
- UnnamedContract (`0x8cb030...88cbcd`, chain 42161)
- UnnamedContract (`0xcb8b00...fb62ec`, chain 42161)
- UnnamedContract (`0xfa104e...890637`, chain 42161)
- UnnamedContract (`0xa9f6ae...79b3bb`, chain 43114)
- UnnamedContract (`0xca61c6...cedfa5`, chain 43114)
- UNCX_LiquidityLocker_UniV3 (`0x231278...aebcc1`, chain 8453)
- UniswapV2Locker (`0x275720...3de50e`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 24 of 158 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 22
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
| unknown | Tier 2 | 1 | 50.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UniswapV2Locker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259757 | `0x275720...3de50e` | ✅ Audited |

### ⚠️ Verified + Unaudited (133)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| autoBsw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a16f...cda73d` | ⚠️ Unaudited |
| BabyDogeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4693b6...f43137` | ⚠️ Unaudited |
| BabyDogeLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36b343...4541be` | ⚠️ Unaudited |
| BabyDogeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9a0f6...af3c47` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e...ac6a42` | ⚠️ Unaudited |
| BiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x173661...9f1285` | ⚠️ Unaudited |
| BiswapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a6d8c...350dd8` | ⚠️ Unaudited |
| BnbPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05b4c8...fa9c75` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x187463...3b4208` | ⚠️ Unaudited |
| BNBWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7ac77...8c29c8` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217945...8266e9` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dd4d8...ab5741` | ⚠️ Unaudited |
| BSWMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a539a...b1f522` | ⚠️ Unaudited |
| BSWToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x965f52...120dd1` | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c8b60...637c7a` | ⚠️ Unaudited |
| BuyBackFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f3a3...264c0a` | ⚠️ Unaudited |
| CakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086bef...88807b` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4...95e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd...d06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda641...3fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d...3952ea` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaff905...2d4f34` | ⚠️ Unaudited |
| CountryList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x760026...63f994` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18...e6e398` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164...8a16b1` | ⚠️ Unaudited |
| DXswapFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x225a3d...2a6c17` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72281a...106587` | ⚠️ Unaudited |
| Erc20Simple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d322e...8a9cc5` | ⚠️ Unaudited |
| ExposedV3Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d43a...c1a155` | ⚠️ Unaudited |
| FactoryViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3202b2...ec8607` | ⚠️ Unaudited |
| FarmDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x210dbf...49d5b2` | ⚠️ Unaudited |
| FarmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388f7e...c6a6e7` | ⚠️ Unaudited |
| FarmGenerator01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x197d22...1350f2` | ⚠️ Unaudited |
| FarmZAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451583...06f762` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91934e...7d9885` | ⚠️ Unaudited |
| FeeResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x517edf...655454` | ⚠️ Unaudited |
| FullRangeConvertor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e5cb1...24c7d7` | ⚠️ Unaudited |
| FullRangeConvertorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0127b2...4261ab` | ⚠️ Unaudited |
| HanuYokia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72e539...5dbcc0` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e...7d1f98` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eff3a...21d820` | ⚠️ Unaudited |
| IFOByProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0366f1...1d5700` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0ae9b...2624b0` | ⚠️ Unaudited |
| InvestorMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfa00a...678ff7` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x125cf8...84b4d2` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011...ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d...fd4f33` | ⚠️ Unaudited |
| JoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ad6c3...0cfa10` | ⚠️ Unaudited |
| JoeHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe03...62077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50f...8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4247c5...bcdcfe` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4c...a475d3` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0f...0bcb58` | ⚠️ Unaudited |
| JoeRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae61...0933d4` | ⚠️ Unaudited |
| JoeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6...bc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ed836...92cfcb` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x267a45...149df5` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127551...d13280` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1900e0...e4992e` | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b4dc7...bfc3ba` | ⚠️ Unaudited |
| LPZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff5737...1226ba` | ⚠️ Unaudited |
| MarketingTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x706d4d...4f40d0` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e585c...0e764d` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f1...f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x188bed...c18f00` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cdda...7ab7e7` | ⚠️ Unaudited |
| MigratePancakeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d1317...0edf7c` | ⚠️ Unaudited |
| MigrateV3NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c51f7...d33311` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180...d94830` | ⚠️ Unaudited |
| MINTER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c412f...6fd729` | ⚠️ Unaudited |
| MintFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ab235...77febb` | ⚠️ Unaudited |
| MintGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd433...d49371` | ⚠️ Unaudited |
| NewToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x687f8a...5ee607` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c7dd...a314de` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f48cd...1f2db0` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4b1b0c...934cef` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x877fe7...15edb6` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02ee06...8b689f` | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4086d4...00da07` | ⚠️ Unaudited |
| POLContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e003...a48449` | ⚠️ Unaudited |
| PresaleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d9b3b...351b21` | ⚠️ Unaudited |
| PresaleGenerator01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e5a8...9dc1eb` | ⚠️ Unaudited |
| PresaleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0059eb...b8dd2e` | ⚠️ Unaudited |
| PresaleLockForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x361663...80aff3` | ⚠️ Unaudited |
| PresaleSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8977...376c41` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x107b31...b8555a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1035b0...c3d784` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753...33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d7...5239ea` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x227449...a14885` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0be808...93d904` | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b7703...e6d176` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83ec81...0751d1` | ⚠️ Unaudited |
| RouterFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2ce3...a4c967` | ⚠️ Unaudited |
| Safaia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e823...80494f` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2...01cc5c` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d06a...5a3388` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00a142...b39346` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78d5ef...55c61e` | ⚠️ Unaudited |
| SousChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaa221...71b4d3` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d8...537e1c` | ⚠️ Unaudited |
| SwapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x816c82...70840c` | ⚠️ Unaudited |
| SwapFeeReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2810b4...552dd8` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7...cea9b0` | ⚠️ Unaudited |
| TeamTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x513d15...b6b036` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4d733...bd62c3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b57a6...20b410` | ⚠️ Unaudited |
| TokenFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c552f...b4287d` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0147c0...0ef296` | ⚠️ Unaudited |
| TokenVestingPager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x307553...2eb946` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8...e50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f4391...bb5140` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4b4e08...7fbc17` | ⚠️ Unaudited |
| TreasuryFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01fef8...9f83ff` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c5486...f73682` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97...5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de6...6ec08c` | ⚠️ Unaudited |
| UNCL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4eb4...33dd49` | ⚠️ Unaudited |
| UNCLAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5e20...e35a4e` | ⚠️ Unaudited |
| UnclSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dfb7...618fcd` | ⚠️ Unaudited |
| UNCX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb243...a7b1d0` | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | project_anchor | own_supporting | 0 | base | unit-259768 | `0x231278...aebcc1` | ⚠️ Unaudited |
| UNCX_ProofOfReservesUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a1886...7eb41a` | ⚠️ Unaudited |
| UNCX_ProofOfReservesV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4aa5c6...a01f31` | ⚠️ Unaudited |
| UniCrypt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29e46...541373` | ⚠️ Unaudited |
| UnicryptAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04cc89...b50416` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x575737...d3ab32` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f53a...f1b21c` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb559d...9f758b` | ⚠️ Unaudited |
| UpgradeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d8f5a...58faa6` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d2...9cfbc8` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b...df1270` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e...d02027` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x231278...aebcc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259748 | `0x663a5c...9db214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259749 | `0x7f5c64...858234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b00...fb62ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259750 | `0xdba68f...c25caf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-259751 | `0x599886...1abca2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259764 | `0x0d2959...93886c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259765 | `0xc765bd...3e0c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259766 | `0xe4c7d0...13a52c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-259767 | `0xf1f7f2...341990` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259752 | `0x13dfb7...618fcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259753 | `0x262181...af491a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259754 | `0xadb243...a7b1d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259755 | `0xc22218...1a8c84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259756 | `0xd8207e...f81fd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-259769 | `0x80ebc5...aeda23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-259770 | `0xa82685...215e33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-259771 | `0xc4e637...7f4131` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259758 | `0x4264bb...088a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259759 | `0x8cb030...88cbcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259760 | `0xcb8b00...fb62ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259761 | `0xfa104e...890637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-259762 | `0xa9f6ae...79b3bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-259763 | `0xca61c6...cedfa5` | ❓ Unverified |

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
| 02_Smart Contract Audit Unicrypt_Locking_V2.pdf | UniswapV2Locker | own contract | UniswapV2Locker (selected) `0x275720...3de50e` — deployed 2023-03-02 19:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 02_Smart_Contract_Audit_Unicrypt_LP_LockerV2.pdf | UniswapV2Locker | own contract | UniswapV2Locker (selected) `0x275720...3de50e` — deployed 2023-03-02 19:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| base | `0x231278...aebcc1` | UNCX_LiquidityLocker_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
