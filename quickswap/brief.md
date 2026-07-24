# Agentic Audit Brief: Quickswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Quickswap (`quickswap`)
- Website: [https://quickswap.exchange](https://quickswap.exchange)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, manta-pacific, polygon, polygon-zkevm
- Contract surface: 186 unique implementations (188 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $279,583,547.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Quickswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, ethereum, manta-pacific, polygon. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f`, chain 1)
- UnnamedContract (`0x7a250d5630b4cf539739df2c5dacb4c659f2488d`, chain 1)
- UniswapV2Router01 (`0xf164fc0ec4e93095b804a4795bbe1e041497b92a`, chain 1)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 180 discovered implementations shown in the inventory but excluded from coverage (9 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 4 of 186 unique; 182 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/84
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 186
- Raw deployments: 188
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

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc8e48fd037d1c4232f294b635e74d33a0573265a` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ca6d588d9e3a14f62ef88afcd6b3d0ad13af1f0` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9ce7698ce3dcf21cc88bf7dcc1fe20c85e4226e` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0987a3dc376a33ed720e15d2ec62ea6179d51141` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x134c1dbe4860a9caaf89002574ffe814772d9904` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42375083fe3a4f77ce95af733c266d6bd5bd122a` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9923f42a02a82da63ee0dbbc5f8e311e3dd8a1f8` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d98e2fa9da15aa6dc9581ab097ced7af697cb92` | ⚠️ Unaudited |
| AlgebraTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32cff674763b06b983c0d55ef2e41b84d16855bb` | ⚠️ Unaudited |
| AlgebraUpgradeablePlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73a3e7115200b208ac0db09ba6269273eb54ef2c` | ⚠️ Unaudited |
| AlgebraUpgradeablePluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14cf271aaf0aa70f1b1ba59be568a97e16c81430` | ⚠️ Unaudited |
| AlgebraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x205c648b40cdcf13ff177d122db9fe848a07a23e` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35622b9802b71f341762cf6f46a7e301931fc7c5` | ⚠️ Unaudited |
| AlmPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8893eca40bed729b50094f7d9b76e8edcb6d108d` | ⚠️ Unaudited |
| Api3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x91b6650048c26a0f439e9da93a7adb7f77833bf1` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3712643ec7138dd09ae6322e7626ad99542cc04` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x73903fec691a80ec47bc830bf3f0bad127a06e30` | ⚠️ Unaudited |
| cBridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3420865a31c84c468a88bcaef6cec69e2885e7ba` | ⚠️ Unaudited |
| ConverterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ccff3d02a3a200263ec4e0fdb5e60a56721b8ae` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x958d208cdf087843e9ad98d23823d32e17d723a1` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DynamicFeePluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19883c02e237666672a7558d1eb88a7b586a7776` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5b1f500134bdd7f4359f5b2adc65f839737290f4` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24a089ad55d688c18dba7e7514f5d2083b926e21` | ⚠️ Unaudited |
| FarmingProxyPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3c4a811622209fb286388233c4c8a29b4178341` | ⚠️ Unaudited |
| FundingTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x11e3657fcde2053db4ec0e6327c3908aaf449c7b` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| InstantProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cbb985d2623c3ab4f671cae1a0f115e5ba30e9c` | ⚠️ Unaudited |
| MainContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5316d1fb8543dfe6b292cb82be1aec5573baeea6` | ⚠️ Unaudited |
| ManagerContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x388c639aebb5aa3ff93ea133a38ea6930bf2c3ac` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2fc5e868cb142181f589e809df974bb18f83c0b` | ⚠️ Unaudited |
| MevxPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaa39d446f7ff2f271ac9878ca35586b6aa16bd9` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7219c5d9928db34973b5397d0b6ef00622dd3e8f` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x095eb76d5934958b21eec5142025beb6a7763c16` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2264d1c908c4347f75f8eb438a4f94f4caecf634` | ⚠️ Unaudited |
| Permit2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | n/a | `0x61211321e272584d6686f79bb205082c4cda5d5f` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc5616f35fd19935b8a6e6792519c2146afcef38e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xa235edb8e8266d9119a6ed998487a7e8f86ca009` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x3005827fb92a0cb7d0f65738d6d645d98a4ad96b` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23e0583a3a000d567bb3848115065c1890d87fb5` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x08bc8ef0b71238055f9ee6bbc90869d8d0dbdcca` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7e01238227213c513010f5fabd0634febee93ee5` | ⚠️ Unaudited |
| RubicBridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb21740ccda2792ec855ae707293d9bf9393c27f` | ⚠️ Unaudited |
| RubicRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x070df4368366ae26a8c35666408fad686038a6c3` | ⚠️ Unaudited |
| RubicSymbiosisProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5559a6e2e485faac5672db6eaf37cefd67345bad` | ⚠️ Unaudited |
| RubicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e2599a2277a3e5c05c818f4159d5558e1bd9091` | ⚠️ Unaudited |
| SecurityPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0eaa5949f70c2d4ce043343acdfe82a532fb686d` | ⚠️ Unaudited |
| SecurityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1158d107a74f482d053859adcc421101938d68a3` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x443cf165b72e4b4331c0101a10553269972ed4b8` | ⚠️ Unaudited |
| SwapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d92144100f58160bdfffc296389ee32b6525915` | ⚠️ Unaudited |
| SwapContractV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51fec1fca690fb72ec59ca0e3fd9521c64cac47e` | ⚠️ Unaudited |
| SwapMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fe5f1ed2392f9c34232614dc874b6caf0676887` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6c9bb24ddb4ae5c6632dbe0de14e3e474c6cb04` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28adcf283d392e3902f49a7e9a78e40d64348290` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x87bcd3914ed3dcd5886ba1c0f0da25150b56fe54` | ⚠️ Unaudited |
| TokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x333068d06563a8dfdbf330a0e04a9d128e98bf5a` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TradingValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1fe9fba5955af58c18057213f0151bbe893ab2c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2648329f2640810c9d5b3e6a018a65a360634ead`; polygon `0x7fd2bc7a69d885de849480713351f86b542d1a94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x418d0fed2c650944e21e270a14903c2f1a6bc74e`; polygon `0xc92fb87732915a45bdc71bfcb08b536e2a92d83f` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | n/a | `0x1fd671dac06df1431e79d772037e93bdb2dfeb48` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x5757371414417b8c6caad45baef941abc7d3ab32` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa478c2975ab1ea89e8196811f51a7b7ade33eb11` | ⚠️ Unaudited |
| UniswapV2Router01 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391270 | `0xf164fc0ec4e93095b804a4795bbe1e041497b92a` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x4a012af2b05616fb390ed32452641c3f04633bb5` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x157b9913e00204f8c980bb00aa62e22b0dab1a63` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| VolatilityOraclePluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa6c08ac63ec1e4151e283a1734a4b3a6618264e` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-391267 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391261 | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391263 | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-391268 | `0xc778417e063141139fce010982780140aa0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0011481996eb4b9b3c36aa871e328a14086eac57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x091c8d3941971f66af48f4adf70cedf20b2215a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12d80138ae8ba52af69dffc25b2dce97962aa33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13bfe036886ef8d916955354216245e9edb160ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x182b9d43269c4502e0fccef198404df1bfbd54e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2568347e1ee9a85ec74ba8dbe8448725a27ffa80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b897f32c86606eb8f6fe2e6f670f7d0202fae64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30185fe4e36da7cf3610f63bcc7a9cf2d41abdf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33ab91d30edf5d2d6276e48b6a97d44617a9d732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x360650978d006c0c8f5f7e602d77b05255b6c667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x375b5860b4bcda7d17ef6accafe7a74c17a538bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39327a7fd06764fa9573135f587eb2ce2b9976ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a34e9f5eec937248d1720f3660f700f932684e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3eca5ff269b4c8c0ac7d844174224dbf9af1d7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ff1b17b115b303c5547fc1465c16cf08e8daa22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x420ad8387f91e5666c935675d6e05b3c73d514fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4343551bc88fb70d4e55429763424989241184a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4593bd0d6d70390d2533216593fd4a2b67dda2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4666599d48e8c72b91a73f9ade04eda17c5fdba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b888d9756e9a3538e65b020f22adfee969bff61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fd69873f8f62a7400fdef12f1e43e86fbca725c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51231801655ccabbec41fa99b331153e7efa16ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5694a8cd131b2e5fea846baf6a2f75440d2de5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56f5f2c2021e859efd1533f5506d0822418d0a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cc4e69aef71a2b601bfd6f88c9ac59837d4380c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cc8f95d64d929b456ea0831e42280af85481876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d6948d709047baabc5a9404bca27c5aeb04c527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5dbf5376fa2ee4a9d08abee101edd08aa97ddc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60f418049322ef88cefb44ff344468153552a223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6666efcb62e837a63fb43631e7717181b4ec1a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69a6762077c9489814d12f5e6dac269eddffb115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c5dd763dc03f8a1ccfde4ab72791be013ec7d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c7bb02546bb95532606319a3dfba135ab64c4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6df25f846de29a49ab30dc10ca1bb061a43d5832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70e8c8139d1cef162d5ba3b286380eb5913098c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x712e2de242b68e71cf7202ecce1d2562a2f137f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7205ef74db499fd79ec335609d418a09c6a23861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x767cbd74b6435d8ef9c23effd5eefe96b30d9c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x787c6e9e9c3bc9a15c2f6443fd1594c004fee0f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78c9d1ac3cd533dca0bb1ed33787a5a7abb9de85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x796b1680fc26f1afc279b5b188b7e99d536d767f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7eeab9d11f7881c7068bd723852093b2ed8f114f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x885c9e7fc27bf092bd59a305ab2fd6bb2659df3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89c34ae599c2a3b62a3ed69f33445b4ff2924b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x923cda94e3cf21b091b6841b3adfd2d6985f33a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96b31b1d17dee49e70b950de33fff83728f5c181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96fef39089380f4319e8ef01aa8338615c36f1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97d87160100af8cfb0c48003c106a3e400232939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f4fbb75acde20e6e1dbcd87c7c4d60ca45bfe49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fa32223af9b4da48d0083acab8bfc8901afba21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa062c2754864f67a259b346d0d7567b2ed406e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa422136e5a25781a2893eea9f238c6a4082d71a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa65d1a05cd6689fb0fff9f0a403d66cf1a2413bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac31e331d6939aa4f56ce974dd8f336940fa5370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac6906d840f615f0fea176669d606585fd2f705b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb41c1effa54fc948f98bc4324c15bb0ed3e2212a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5ad49bd20d3fb2fb88f430ef1f7a46ebe722823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb63ed373c30beeff9f8f66ade3f6c2ea05e602f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9ee29c1d864d33f1626d1f1a05a0bb345b6800b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb7f2d427f3456fbd6f7f571d09f332190f770e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbcca3f6981622599cb0966015d02cd503c9d66de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe23de183f33a4263f8b3bc0f842c2ec5be06e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbec1d9dba031d9791a0fcf757bb221e7966868fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf7ced6eca7b388406df8b73d9e92482a53fc55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0648f34dfc0d631a271526d1c5f4e1c31489f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc13b7ceafc4d5ff531353c731ef8ec3d3d65f741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7fc65d50affbf2f32236edc5217a916614e1f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca2139bad46c0c09c71eba17dfd5569cf406e874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb4211b4b934c5f541d477a2f0f6e2edff3888ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc196928c886eaa0c46df1379c7ad0ac9c923074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd23b4da264a756f427e13c72ab6ca5a6c95e4608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd522c39b516c26a9373c943b78bc7dc72183cffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6c28ed1ec294c92a79349659d1085abf15d48ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd99be339a73c157c3be7f3be96b0ee68d9020da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdae024b1aa12df98d2fcf95b6b49a477f5d33dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb7d8e2a9201e105eb54a28b7c0621e559bcb9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe08e2b2889e8e1227c4ea114c41f0a02da393ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe15af3dec08bfe055f2a0fa237c5e260a42ef1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe19edac7b6fc07c0e640c2e2341892604298d1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5ef516b28d71e19b6724e9c4942313ec76dd128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe661d323e4bad44b4bb169a976ce9cce9261a161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6625bbe80710c7bb473721edac24ce326940a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8c3e7b93940c108a28ae3a012c51d8308219148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe950532530f99ee75b1b41b31301c9899dded728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec52a30e4bfe2d6b0ba1d0dbf78f265c0a119286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeca47d12bbacd232f3e65fbfd48815571a6d0b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed08725e0ba3a65bee7da0c6ac9a9e2fc7a978f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef13d7bc59f14f4e53f1cd85abbc465e40e7974b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefa78d3e0da978112012230525cadad9ced50d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf19180f70f334bf139c5a61d1e5febd47aabc200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5832cb86afdb364dd617a1297e3b2148936b2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa49ffc1d6c7db8e5f4d03bd13b2149f94145e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcfe065bc131fa8bb31a227b2ff4f0ec47d3f1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe2041d7779a28fc6bf39223a952bad0beffd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xdc55a13b6b61a8fda5acdf760d14af9da9a38367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe5041618b6de86a3ae68db2283b92295a7b5ae6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xfde3eac61c5ad5ed617eb1451cc7c3a0ac197564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ecaf729c6ffb04448aa89a722ca370724bf70de` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 100
- Live contracts: 0
- Unknown liveness contracts: 100
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=100

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x7ecaf729c6ffb04448aa89a722ca370724bf70de` | non_address_book | unknown | unknown | unverified | n/a | `0x38e283a1e1ae26df34a4351d2d9a2635c674e018` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xdc55a13b6b61a8fda5acdf760d14af9da9a38367` | non_address_book | unknown | unknown | unverified | n/a | `0x3806410847af6cc861d8457b1e4ac029778aaf20` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xfde3eac61c5ad5ed617eb1451cc7c3a0ac197564` | non_address_book | unknown | unknown | unverified | n/a | `0x3806410847af6cc861d8457b1e4ac029778aaf20` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xe5041618b6de86a3ae68db2283b92295a7b5ae6a` | non_address_book | unknown | unknown | unverified | n/a | `0x58f4d26cc145eea7006acfbf3ea50babc372f0a5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0011481996eb4b9b3c36aa871e328a14086eac57` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x091c8d3941971f66af48f4adf70cedf20b2215a4` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12d80138ae8ba52af69dffc25b2dce97962aa33d` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x13bfe036886ef8d916955354216245e9edb160ff` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2648329f2640810c9d5b3e6a018a65a360634ead` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2b897f32c86606eb8f6fe2e6f670f7d0202fae64` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x30185fe4e36da7cf3610f63bcc7a9cf2d41abdf6` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x33ab91d30edf5d2d6276e48b6a97d44617a9d732` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x360650978d006c0c8f5f7e602d77b05255b6c667` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x375b5860b4bcda7d17ef6accafe7a74c17a538bd` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39327a7fd06764fa9573135f587eb2ce2b9976ea` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3a34e9f5eec937248d1720f3660f700f932684e9` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3eca5ff269b4c8c0ac7d844174224dbf9af1d7ac` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x420ad8387f91e5666c935675d6e05b3c73d514fd` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4343551bc88fb70d4e55429763424989241184a1` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4593bd0d6d70390d2533216593fd4a2b67dda2ec` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4b888d9756e9a3538e65b020f22adfee969bff61` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4fd69873f8f62a7400fdef12f1e43e86fbca725c` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x51231801655ccabbec41fa99b331153e7efa16ea` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5694a8cd131b2e5fea846baf6a2f75440d2de5f3` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x56f5f2c2021e859efd1533f5506d0822418d0a5b` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5cc4e69aef71a2b601bfd6f88c9ac59837d4380c` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5cc8f95d64d929b456ea0831e42280af85481876` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5d6948d709047baabc5a9404bca27c5aeb04c527` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5dbf5376fa2ee4a9d08abee101edd08aa97ddc39` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6666efcb62e837a63fb43631e7717181b4ec1a72` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x69a6762077c9489814d12f5e6dac269eddffb115` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6c5dd763dc03f8a1ccfde4ab72791be013ec7d19` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6c7bb02546bb95532606319a3dfba135ab64c4f2` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6df25f846de29a49ab30dc10ca1bb061a43d5832` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x70e8c8139d1cef162d5ba3b286380eb5913098c4` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x712e2de242b68e71cf7202ecce1d2562a2f137f3` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7205ef74db499fd79ec335609d418a09c6a23861` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x767cbd74b6435d8ef9c23effd5eefe96b30d9c65` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x787c6e9e9c3bc9a15c2f6443fd1594c004fee0f4` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x78c9d1ac3cd533dca0bb1ed33787a5a7abb9de85` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x796b1680fc26f1afc279b5b188b7e99d536d767f` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7eeab9d11f7881c7068bd723852093b2ed8f114f` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x885c9e7fc27bf092bd59a305ab2fd6bb2659df3e` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x89c34ae599c2a3b62a3ed69f33445b4ff2924b4e` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x923cda94e3cf21b091b6841b3adfd2d6985f33a2` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x97d87160100af8cfb0c48003c106a3e400232939` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9f4fbb75acde20e6e1dbcd87c7c4d60ca45bfe49` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9fa32223af9b4da48d0083acab8bfc8901afba21` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa422136e5a25781a2893eea9f238c6a4082d71a9` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa65d1a05cd6689fb0fff9f0a403d66cf1a2413bb` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xac31e331d6939aa4f56ce974dd8f336940fa5370` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xac6906d840f615f0fea176669d606585fd2f705b` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb41c1effa54fc948f98bc4324c15bb0ed3e2212a` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb5ad49bd20d3fb2fb88f430ef1f7a46ebe722823` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb63ed373c30beeff9f8f66ade3f6c2ea05e602f9` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb9ee29c1d864d33f1626d1f1a05a0bb345b6800b` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbb7f2d427f3456fbd6f7f571d09f332190f770e6` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbcca3f6981622599cb0966015d02cd503c9d66de` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbe23de183f33a4263f8b3bc0f842c2ec5be06e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbec1d9dba031d9791a0fcf757bb221e7966868fb` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbf7ced6eca7b388406df8b73d9e92482a53fc55c` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc0648f34dfc0d631a271526d1c5f4e1c31489f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc7fc65d50affbf2f32236edc5217a916614e1f9d` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc92fb87732915a45bdc71bfcb08b536e2a92d83f` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xca2139bad46c0c09c71eba17dfd5569cf406e874` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcb4211b4b934c5f541d477a2f0f6e2edff3888ac` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcc196928c886eaa0c46df1379c7ad0ac9c923074` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd23b4da264a756f427e13c72ab6ca5a6c95e4608` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd522c39b516c26a9373c943b78bc7dc72183cffa` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd6c28ed1ec294c92a79349659d1085abf15d48ba` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd99be339a73c157c3be7f3be96b0ee68d9020da6` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdae024b1aa12df98d2fcf95b6b49a477f5d33dd0` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdb7d8e2a9201e105eb54a28b7c0621e559bcb9ae` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe08e2b2889e8e1227c4ea114c41f0a02da393ba0` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe15af3dec08bfe055f2a0fa237c5e260a42ef1cb` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe19edac7b6fc07c0e640c2e2341892604298d1cf` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe5ef516b28d71e19b6724e9c4942313ec76dd128` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe661d323e4bad44b4bb169a976ce9cce9261a161` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe6625bbe80710c7bb473721edac24ce326940a6f` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe8c3e7b93940c108a28ae3a012c51d8308219148` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe950532530f99ee75b1b41b31301c9899dded728` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xec52a30e4bfe2d6b0ba1d0dbf78f265c0a119286` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xeca47d12bbacd232f3e65fbfd48815571a6d0b20` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xed08725e0ba3a65bee7da0c6ac9a9e2fc7a978f4` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xef13d7bc59f14f4e53f1cd85abbc465e40e7974b` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xefa78d3e0da978112012230525cadad9ced50d0a` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf19180f70f334bf139c5a61d1e5febd47aabc200` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf5832cb86afdb364dd617a1297e3b2148936b2d3` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfa49ffc1d6c7db8e5f4d03bd13b2149f94145e1b` | non_address_book | unknown | unknown | unverified | n/a | `0x00009cc27c811a3e0fdd2fd737afcc721b67ee8e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x182b9d43269c4502e0fccef198404df1bfbd54e8` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2568347e1ee9a85ec74ba8dbe8448725a27ffa80` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3ff1b17b115b303c5547fc1465c16cf08e8daa22` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4666599d48e8c72b91a73f9ade04eda17c5fdba7` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x60f418049322ef88cefb44ff344468153552a223` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x96b31b1d17dee49e70b950de33fff83728f5c181` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x96fef39089380f4319e8ef01aa8338615c36f1bb` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa062c2754864f67a259b346d0d7567b2ed406e6e` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc13b7ceafc4d5ff531353c731ef8ec3d3d65f741` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfcfe065bc131fa8bb31a227b2ff4f0ec47d3f1a2` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfe2041d7779a28fc6bf39223a952bad0beffd525` | non_address_book | unknown | unknown | unverified | n/a | `0x2d9182ba4a2e65ec5bc61055e18cf1933a76c56a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 6 |
| standard_library | 3 |
| needs_review | 103 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
