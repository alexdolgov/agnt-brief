# Agentic Audit Brief: Ionic Protocol

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Ionic Protocol (`ionic-protocol`)
- Website: [https://app.ionic.money/](https://app.ionic.money/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T15:37:56.490Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc, mode
- Contract surface: 420 unique implementations (518 raw deployments)
- DeFi Llama TVL: $2,042,238.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ionic Protocol is a lending protocol that enables users to supply and borrow digital assets across multiple chains. It provides money markets where lenders earn interest and borrowers can take out overcollateralized loans.

### Architecture

The Ionic Protocol family uses the ERC1967Proxy as the main entry point for lending operations, while the IonicSdk.supportedAssets family provides the token contracts that can be supplied or borrowed. The IonicSdk.chainDeployment contract likely serves as a configuration hub linking the protocol to its supported assets on the chain.

## Audit Coverage Summary

- Verified implementations audited: 1/55 (1.8%)
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 365
- Unique implementations: 420
- Raw deployments: 518
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 1.8% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MasterPriceOracle | operational_periphery | mode | 2 deployments: mode [`0x4e7676...e3c9ae`](./contracts/mode-34443/0x4e7676b20b86beea9c197be756361680fae3c9ae/); mode `0x707a1b...40229f` | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressesProvider | unknown | mode | [`0x8d5b09...687f73`](./contracts/mode-34443/0x8d5b096c99b26d07c7f8d8a8f25be97427687f73/) | ⚠️ Unaudited |
| AerodromeV2Liquidator | operational_periphery | mode | [`0x0111f3...846d8a`](./contracts/mode-34443/0x0111f383e756f57037a939c49c9e69ca06846d8a/) | ⚠️ Unaudited |
| Airdropper | operational_periphery | mode | [`0x521dd8...f5dd1f`](./contracts/mode-34443/0x521dd84fc4fc715d50549f4913e7eba2eef5dd1f/) | ⚠️ Unaudited |
| AlgebraSwapLiquidator | operational_periphery | mode | [`0x5ca3fd...20f3c8`](./contracts/mode-34443/0x5ca3fd2c285c4138185ef1bda7573d415020f3c8/) | ⚠️ Unaudited |
| AuthoritiesRegistry | registry | mode | [`0x5d7480...91738e`](./contracts/mode-34443/0x5d74800e977bfc8e14eca28c9405bacbd091738e/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| CErc20Delegate | token | mode | 3 deployments: mode [`0x0bf353...8e6c75`](./contracts/mode-34443/0x0bf35374fddff73eb48a78328e916fb97a8e6c75/); mode `0x93dac8...69bc95`; mode `0xb3788b...6a6332` | ⚠️ Unaudited |
| CErc20PluginDelegate | token | mode | 3 deployments: mode [`0x0effea...224126`](./contracts/mode-34443/0x0effea273a9df3e1436d51822678f24e76224126/); mode `0x726c7b...aff1d5`; mode `0x8cc7cd...bcb94c` | ⚠️ Unaudited |
| CErc20PluginRewardsDelegate | token | mode | 3 deployments: mode [`0x798ee0...5884d1`](./contracts/mode-34443/0x798ee06eb08151fadf5ffd07b7931b79985884d1/); mode `0x96aaaf...36dbb2`; mode `0xfdd337...832462` | ⚠️ Unaudited |
| CErc20RewardsDelegate | token | mode | 3 deployments: mode [`0x286703...786244`](./contracts/mode-34443/0x2867039431b712b82f52258e7c6f2b3a43786244/); mode `0x6352b5...f7a9a5`; mode `0xb8fb48...123e5e` | ⚠️ Unaudited |
| CollateralSwap | unknown | mode | 2 deployments: mode [`0xc10fd8...27ebeb`](./contracts/mode-34443/0xc10fd848a764e878b36ef9acb7936dc7fa27ebeb/); mode `0xee02b7...cb56f6` | ⚠️ Unaudited |
| Comptroller | unknown | mode | 4 deployments: mode [`0x8b2b6a...3f43a7`](./contracts/mode-34443/0x8b2b6a9dc8cd73309cef8d64920831d4c73f43a7/); mode `0xa2ced0...272484`; mode `0xa3e43a...4234e9`; mode `0xa855f8...6c6be7` | ⚠️ Unaudited |
| ComptrollerFirstExtension | adapter | mode | 3 deployments: mode [`0x639322...35f3a0`](./contracts/mode-34443/0x6393228b6909ab12413816679ec992778e35f3a0/); mode `0xdc4abe...b8920a`; mode `0xe1a300...4ba02f` | ⚠️ Unaudited |
| ComptrollerPrudentiaCapsExt | unknown | mode | [`0x0a183b...87bee4`](./contracts/mode-34443/0x0a183b983e395bebfa344389ef08250ae987bee4/) | ⚠️ Unaudited |
| CTokenFirstExtension | adapter | mode | 5 deployments: mode [`0x13b727...81fa14`](./contracts/mode-34443/0x13b727a6ff1856d27e85cf0c85cb096b8781fa14/); mode `0x8c58ec...d4aea2`; mode `0xd2fef5...9fde16`; mode `0xe419c1...ea87ec`; mode `0xf4090e...4ea2d4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | [`0x184700...bc34ca`](./contracts/mode-34443/0x18470019bf0e94611f15852f7e93cf5d65bc34ca/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | mode | [`0x9a0af9...6fceec`](./contracts/mode-34443/0x9a0af901cae82f309f1047e1026f66a08c6fceec/) | ⚠️ Unaudited |
| FixedNativePriceOracle | operational_periphery | mode | [`0x1d7669...cbc28a`](./contracts/mode-34443/0x1d7669b6bdfdb83066dd7c0ada4b630b25cbc28a/) | ⚠️ Unaudited |
| GlobalPauser | unknown | mode | 2 deployments: mode [`0x5d4983...a50e3f`](./contracts/mode-34443/0x5d498338c6e38555020fb24b977f5e2817a50e3f/); mode `0xe646d8...3880c8` | ⚠️ Unaudited |
| IonicFlywheel | unknown | mode | 4 deployments: mode [`0x4e2dfa...be517e`](./contracts/mode-34443/0x4e2dfafc783372bf39986721f9f97f666bbe517e/); mode `0x7c8e41...39269d`; mode `0x92ce34...752497`; mode `0xa525af...65f458` | ⚠️ Unaudited |
| IonicFlywheelBorrow | core_logic | mode | 4 deployments: mode [`0x476326...025996`](./contracts/mode-34443/0x47632638053139307342c086d60b510eb0025996/); mode `0x82e88b...a0fbaf`; mode `0xe259d6...f57d13`; mode `0xf9c66d...40ae02` | ⚠️ Unaudited |
| IonicFlywheelBorrowBooster | core_logic | mode | [`0xd2ea2d...a29b14`](./contracts/mode-34443/0xd2ea2da2c6b0251b1b0436801c2dac6afca29b14/) | ⚠️ Unaudited |
| IonicFlywheelDynamicRewards | unknown | mode | 7 deployments: mode [`0x02f606...20d11f`](./contracts/mode-34443/0x02f606ae6016af2c06a4ee50129f3e24c520d11f/); mode `0x23dec9...f6fd88`; mode `0x3d662d...ed3dd4`; mode `0x4a003b...c2549c`; mode `0xbfae75...95d989`; mode `0xdb9356...90415f`; mode `0xef4aff...8f1fe2` | ⚠️ Unaudited |
| IonicFlywheelLensRouter | adapter | mode | 5 deployments: mode [`0x01ab48...a5e449`](./contracts/mode-34443/0x01ab485a0fae0667be36ab876c95adc1a2a5e449/); mode `0x79eb8e...f5db70`; mode `0xa1b7c3...7eade9`; mode `0xa6ba5f...8da108`; mode `0xf0ac0f...35d85a` | ⚠️ Unaudited |
| IonicToken | token | mode | [`0xd07cd8...272164`](./contracts/mode-34443/0xd07cd8df6ccdc9228ebced7fa236e1d59c272164/) | ⚠️ Unaudited |
| IonicUniV3Liquidator | operational_periphery | mode | 5 deployments: mode [`0x0472de...740a9d`](./contracts/mode-34443/0x0472de8cb207aa872796de41bb1f21c077740a9d/); mode `0x4d7da5...e96b72`; mode `0x79ac78...f5b14c`; mode `0x88911e...4b0d8f`; mode `0xe807fe...3df5b1` | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | mode | 6 deployments: mode [`0x21a455...217817`](./contracts/mode-34443/0x21a455ced9c79bc523d4e340c2b97521f4217817/); mode `0x223add...09e6ee`; mode `0x22cc24...bc5636`; mode `0x2e06c3...e0595e`; mode `0x413ad5...26743a`; mode `0xa16d99...c49a19` | ⚠️ Unaudited |
| LeveredPositionFactory | registry | mode | [`0x9b506a...40cd45`](./contracts/mode-34443/0x9b506a03bbff2a842866b10bc6732da72640cd45/) | ⚠️ Unaudited |
| LeveredPositionFactoryFirstExtension | adapter | mode | 2 deployments: mode [`0x4e20eb...737fea`](./contracts/mode-34443/0x4e20eb2af6be30660323cb25204e071116737fea/); mode `0x4f8246...c29b98` | ⚠️ Unaudited |
| LeveredPositionFactorySecondExtension | adapter | mode | 3 deployments: mode [`0x14bb1c...e6d000`](./contracts/mode-34443/0x14bb1c7293c4e3e28ef4a74c3d73badd5de6d000/); mode `0x2afb71...c19e33`; mode `0x5dc08e...562212` | ⚠️ Unaudited |
| LeveredPositionsLens | periphery | mode | [`0xd9a567...0f3a28`](./contracts/mode-34443/0xd9a5677594694819f69d0907c3094eab480f3a28/) | ⚠️ Unaudited |
| LiquidatorsRegistry | operational_periphery | mode | 2 deployments: mode [`0xae2647...42cd6a`](./contracts/mode-34443/0xae2647747e037410ff477e72176ead322d42cd6a/); mode `0xc71b96...ca1b34` | ⚠️ Unaudited |
| LiquidatorsRegistryExtension | operational_periphery | mode | 4 deployments: mode [`0x3fa4bc...93d621`](./contracts/mode-34443/0x3fa4bc2fcac5515d5b758d4d580bbd626c93d621/); mode `0x6aa80a...03c103`; mode `0x95e4cd...ae8294`; mode `0xdd7f71...7bd39b` | ⚠️ Unaudited |
| LiquidatorsRegistrySecondExtension | operational_periphery | mode | 2 deployments: mode [`0x139bd5...d03900`](./contracts/mode-34443/0x139bd5cf15a1312bfd165f36c0b88987a9d03900/); mode `0x45a4a3...e8c5c1` | ⚠️ Unaudited |
| LooplessFlywheelBooster | core_logic | mode | [`0x1d89e5...ce47b4`](./contracts/mode-34443/0x1d89e5ba287e67ac0046d2218be5fe1382ce47b4/) | ⚠️ Unaudited |
| OptimizedVaultsRegistry | registry | mode | [`0x2ddf3d...aed83c`](./contracts/mode-34443/0x2ddf3ddfe856d1a4e5dbcb324194e2a622aed83c/) | ⚠️ Unaudited |
| PoolDirectory | core_logic | mode | [`0x20808c...ea1d2d`](./contracts/mode-34443/0x20808c1a73737016bbbf8acc6959a30446ea1d2d/) | ⚠️ Unaudited |
| PoolLens | core_logic | mode | 4 deployments: mode [`0x431c87...7ed480`](./contracts/mode-34443/0x431c87e08e2636733a945d742d25ba77577ed480/); mode `0x611a68...d87ab8`; mode `0x70bb19...df36a6`; mode `0xbc6d8d...124d39` | ⚠️ Unaudited |
| PoolLensSecondary | core_logic | mode | [`0x7ea7bb...0d4154`](./contracts/mode-34443/0x7ea7bb80f3bbee9b52e6ed3775ba06c9c80d4154/) | ⚠️ Unaudited |
| ProxyAdmin | governance | mode | 5 deployments: mode [`0x30d608...3672c2`](./contracts/mode-34443/0x30d608929d8b61ff35a4358ca0e9d298d43672c2/); mode `0x4de2d8...087b56`; mode `0x985a32...e849d0`; mode `0xaf9cc7...a10f83`; mode `0xd12266...a42343` | ⚠️ Unaudited |
| PrudentiaInterestRateModel | operational_periphery | mode | 8 deployments: mode [`0x3fa7f3...0275e1`](./contracts/mode-34443/0x3fa7f3a4127860c7c9b8130e472315c0a60275e1/); mode `0x50a06b...81cd03`; mode `0x6a40d8...c636a6`; mode `0xa662dc...b74414`; mode `0xb0a9b9...e37f09`; mode `0xb1b4ba...8cf382`; mode `0xc58dcc...e72e2e`; mode `0xf2202a...180af8` | ⚠️ Unaudited |
| PublicSaleTokenVesting | operational_periphery | mode | 3 deployments: mode [`0x2f0a2b...1b72dc`](./contracts/mode-34443/0x2f0a2b9dcdf899b34f482ee50137cdf8ed1b72dc/); mode `0x731d22...536821`; mode `0xda061a...29ede8` | ⚠️ Unaudited |
| PythPriceOracle | operational_periphery | mode | [`0x13fd27...441794`](./contracts/mode-34443/0x13fd2701c3017bcc375ad14dd8433c6d7a441794/) | ⚠️ Unaudited |
| PythPriceOracleDmBTC | operational_periphery | mode | [`0xac986b...4b342e`](./contracts/mode-34443/0xac986b9b549ba5e98baeb78919d4e4aa5f4b342e/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracle | operational_periphery | mode | [`0x63a153...3e1e0a`](./contracts/mode-34443/0x63a1531a06f0ac597a0dfa5a516a37073c3e1e0a/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWeETH | operational_periphery | mode | [`0x9c0819...03de78`](./contracts/mode-34443/0x9c0819e3235c8ff74e79f0cabb51ec477603de78/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWrsETH | operational_periphery | mode | [`0xe3643f...8979e8`](./contracts/mode-34443/0xe3643fd41095658cdf063e15f5cb30a5738979e8/) | ⚠️ Unaudited |
| SimplePriceOracle | operational_periphery | mode | [`0xcd4d7c...d3ba5c`](./contracts/mode-34443/0xcd4d7c8e2ba627684a9b18f7fe88239341d3ba5c/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | mode | 2 deployments: mode [`0x93e635...9409d9`](./contracts/mode-34443/0x93e63535cb8b85239d4d8f40a571e81dab9409d9/); mode `0xa7bc89...89bc7b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 28 deployments: bsc [`0x01c972...b36e6d`](./contracts/bsc-56/0x01c97299b37e66c03419bc4db24074a89fb36e6d/); bsc `0x4544d2...f6a0ca`; bsc `0xb641c2...3ee8ea`; mode `0x04ffa5...c1cfb0`; mode `0x151af4...8b93db`; mode `0x1a118b...6f1d44`; mode `0x1dd45c...b8eac1`; mode `0x2baf3a...77f117`; mode `0x2dc3f7...f3b1ec`; mode `0x39c353...81458a`; mode `0x4e854c...2cd834`; mode `0x50f13e...b3ce5c`; mode `0x52ee6e...2a7b23`; mode `0x5f0369...086d03`; mode `0x6afcca...465df5`; mode `0x8d446b...a87050`; mode `0x8ea3fc...0f6e57`; mode `0x99e8d6...83748b`; mode `0x9df3d8...feb74c`; mode `0xa12c1e...9b0e3a`; mode `0xa1917c...653e0f`; mode `0xa80ff9...fb23c5`; mode `0xa90f1c...e216a4`; mode `0xacea9b...bff4e7`; mode `0xb00335...9a6115`; mode `0xc3cec1...47daac`; mode `0xcc11fc...fa0062`; mode `0xe98628...ced3ea` | ⚠️ Unaudited |
| VelodromePriceOracle | operational_periphery | mode | [`0x9bb6ef...fce2a9`](./contracts/mode-34443/0x9bb6efb9c1c16f4561591fe13ea06af8d1fce2a9/) | ⚠️ Unaudited |
| VelodromeV2Liquidator | operational_periphery | mode | [`0xa1abf9...fb33ec`](./contracts/mode-34443/0xa1abf92ef468464962af1ceffb44631a6ffb33ec/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| xERC20Hyperlane | token | mode | [`0xb81ab9...5319eb`](./contracts/mode-34443/0xb81ab95bee03ed655c8a99d484effcfe335319eb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (365)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x0097f4...826f9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x017076...8d7af9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x01bbe1...0c84ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0293ef...cc41bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x031048...c39844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x034480...7ebe7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x036d9f...e4c1a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x039866...2d9100` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03b3fc...c3d588` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0429cb...621761` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x047d84...0ec728` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08cb0a...f669dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x09aa56...d0a4d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b434c...5260b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b96dc...0e84c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0dde05...1463b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e0848...53237e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e6125...30dea7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0eb181...7cfe86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0eb2b2...a2086f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1006ad...f03cd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x108bc0...49a507` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x10c90b...1c35a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1236c5...592e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1548e3...e8509f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x15c0b1...826f21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x16d267...0b8cdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17928b...53ab0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x181119...be1d63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1821bd...71c5c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x184640...3feaea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18677f...41f4b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x190d6b...dae83c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b4484...5b706f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b5721...6caec7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b9ce8...1ee815` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1be825...7eaf9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c3901...ad0dfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x202ea6...528db4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2042fe...b70428` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x215a9b...f09200` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x21e782...fad6aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2235b9...10ed7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x22a0ec...d147ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2300df...70af7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x24b23d...3a582c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x250be2...d74287` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x25a655...c7b4ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x260e10...165667` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x27fb9d...a11cfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2904ef...7fe1b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x29661d...c89b35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2be080...03137a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2eba37...4c634f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2fb847...2f6a99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x312752...adfb47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x315b23...392179` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x320754...f99bc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3308ab...e9588c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x350419...ede7b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x360503...b37d4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x373e3b...e4b452` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x381883...6d9a3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x383f5e...7aa5af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x387423...e9e27e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x38aff7...027b9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39cfdd...f839cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3a1f82...3411fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3a2e27...b3566d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ba761...754f8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c1206...700efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c29e9...c3bd4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d23c5...799dac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d7afb...617ca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3e2002...b7455d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3eaa05...61cf9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3eeb8b...8390cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3f4cca...7c0895` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x40785a...56ef33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4080a0...d1bba4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x40bdba...beb33c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x40cb25...c8e6b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x418f6f...7154d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4257b9...12e2fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4274dc...3569e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42f8ce...a724da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x43bf17...857186` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x43e393...0dd329` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x44c2a9...eadb1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x44de4f...58ffdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x457222...70950e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46d92a...30f47c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46ed1f...ebb206` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x470edd...a16e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4783e6...270ea9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x489368...389668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4afd5f...65ec06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b8c45...d18d68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4bd074...93e62d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4d2f8d...626aa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ec155...29dbd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x526d5d...e3c6e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x530457...f5ddf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5382c4...625534` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5483b1...d24f87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x54d411...0e2064` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x55cb4c...60eb5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x566310...07f1aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5685cb...c2562a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x574f93...4cd16b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x57dafb...da2ceb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x58c248...902f17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x594a1f...b56b2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x594b5c...17482e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x594e4c...eef06e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x595e92...e21a61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x59988d...c0b537` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a4e14...d1fede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5d2e37...91bca9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5dd0a3...4f9f26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5ec0a3...d4cf66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f95cb...c59de2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x606f11...9895a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60730b...7ff3a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x628d57...06ba88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63bb3b...d7d1c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x64fb40...ca13dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6505e1...175e25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x652753...a7daa1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ab408...fe5721` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6b1e7e...51ec87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6b8b93...3fe854` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c2159...70482d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c71a4...670092` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e1c33...aa12c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f2462...86a72f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f63b4...5f27c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x702400...2c64b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x713b66...ea6485` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x716edb...6ff35e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x71c17f...3ce840` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x736d1a...56df61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x73e88e...5fe4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7449e1...e4e252` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x746605...5f493b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x74f69e...f31a03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7518ff...a6aa73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7582d3...a9d5cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x759390...1070d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x776918...f2e66a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x779733...d13a26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x783ee8...9f47db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x788014...6f6b51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7a08f6...d0f5c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7aab15...b21217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b8a72...ecf686` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bbc7b...b20dfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c3387...5d8070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c7967...c6ec33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ca593...0669d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ca709...4aefd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7d0e43...bcbf4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7d6310...7a1e28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7db057...df3e14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ec38e...ace563` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f71ea...61da9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f75c8...2d63d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f858a...fb68d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x814e53...c7438d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81cfdd...023a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81d4c7...9b3c44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81d71c...a92f31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81eee4...94ed03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8251e1...2a0b15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x838eb8...594475` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x840e52...4fef59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x849b8b...e70100` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x84a618...328282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x851cc0...83492c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x859abc...46eee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x85faf9...3aa144` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x897b73...5793b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8a9267...8b4241` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8af031...761157` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8afaa1...f348d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8e5c3f...8b49b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8f2e84...f0e9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8fc856...b1fd74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9012ef...4dff38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x901531...934c40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x91dbfd...897eea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x91f893...2a02e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9223ec...0a1954` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x925dc8...e686c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92c6c8...311bfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x939d56...8e251f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x939ef1...0dbad4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x943bd1...27409a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x944e83...3ad58c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x94c508...04bbdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x94f87b...4b2a97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95cb23...de429f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x968086...79b360` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x96eaa5...2c852f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x970533...b35d89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x988179...90a27b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x988c78...df58c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9925be...e99fc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x993936...0821c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x99908b...421178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9a8ce6...9676e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9aa541...4741b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b3a8d...07c17b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9bab52...94a786` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9bf82e...230304` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9cdf23...dd1e83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9cf970...6e35ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9db349...b77835` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9ea498...45f24e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9f51e7...69d031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa00a6c...cab13f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa02fe3...6ee1cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0306a...192364` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa24ceb...f23f1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa61519...34ed83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa65349...47ce80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa89bf1...33a90d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa95cfe...7ad756` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaab63a...85387e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xab70a1...914d4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xab7758...347049` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaba0ee...199eae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacbe0e...bcf34c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad3a0d...a5afbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xadd4f8...500838` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xae93a1...e51383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb1d4c3...160679` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb27dca...a34938` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb32d87...fd78c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb388c0...b85f4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb38e3f...1cd824` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb3e4bc...75af28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb41b33...6f4985` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb46b0f...671c3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb58bcf...c64141` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb88c6a...2f445a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb91cc8...59ad1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9f891...e9b866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba1923...92f06b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb5db7...af9b7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb6729...157b1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc5815...e49dd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbd4b66...190923` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbdfa54...21e5d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbebef6...5b6570` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbee68f...dbdc95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbfa8ec...3cf8c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbfaf59...4b72a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc04138...c43774` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc08269...b513cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc167a8...3e32a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1808c...c3c0db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc23216...dca0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc24c0f...a3ceca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc24cb0...f04d02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2a3d9...7ffb91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc4e8b6...ea7519` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc64314...4069e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc6c17a...9680a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc79fb8...a53eca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc7b4d0...a35b55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc7cef5...c71fb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc80225...06dacc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9bb7f...9b521c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcbe401...b21481` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc1602...3652e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd47b7...cda631` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd85b9...75cab2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcee5c0...2f8359` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf1646...11f0aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf666e...57ee99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcff114...393640` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd09b27...46010d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd10c8e...d3b1f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1fb95...d192fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3d51f...408bf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd49db0...28d640` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4c05d...691fc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd51a15...f95067` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd5773c...6f00c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7a552...f54eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd8b8de...5ae71b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd8fd67...8e3ad9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9b2a2...2a1773` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda0d66...092aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda1728...64e555` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdaeb64...0d1b52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdc51e7...b57aee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdc5352...4e5fbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdd3c00...3a7b13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdd6f44...b21efa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xddce51...7c3970` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde906c...51f6cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdeb818...e6f53c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0988c...239786` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe1b505...e97d27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe26f6d...529269` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe2b7d4...27e2a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe2f356...d7e593` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe3d02d...4040f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe512e9...691c88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe63f65...48e883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe7dde3...42a7ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe7e366...3e0913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe8a115...2c4670` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe9c47e...82a0fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe9e28f...5de21e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeb0a6c...702c8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeb32c4...8035b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec4283...2abcbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed6076...61e07e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed888a...60a0bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee058f...09b07c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee0f33...6f2f4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xefa9e4...f6d4c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf06bb5...54cf83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf0bbdd...09c8ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf1e9cc...52c824` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf229f8...fef9fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf3585f...4baf2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf698b0...0b4624` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf6b272...b77358` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf70c5e...0a0fa2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf74003...c21540` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf83690...88ac45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf88198...989bbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf9ee9f...940a4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb21da...41f22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb5dd1...f78d10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfbabbc...345b33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc7d93...8d88e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfcec3c...f394d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfd8ec6...8b677a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xff6b57...2a380e` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x146991...198736` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x178d49...702fad` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x36a84b...651530` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x3ee5e2...bd22e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x462faa...ef3e51` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x48bf6b...ace19a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5782c5...193a46` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x6abf23...c6d3ec` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x6ac17d...3b36b7` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x75897e...52c058` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x8cdeb2...5c020c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x907a17...4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x917e17...d8d4db` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9e4f32...6abd98` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xac4096...ff2295` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xb08faf...8a5e47` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xb48221...be43f5` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xca41aa...498dd7` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xda8c83...5f1178` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xe5a4e7...e810a9` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xe64e42...93c2c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://1954749119-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4L4EczL4rCp3jyJhAxHG%2Fuploads%2Ffkk0363x576TeYPz9Dww%2FIonic_Protocol_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0x8d5b09...687f73`](./contracts/mode-34443/0x8d5b096c99b26d07c7f8d8a8f25be97427687f73/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x521dd8...f5dd1f`](./contracts/mode-34443/0x521dd84fc4fc715d50549f4913e7eba2eef5dd1f/) | Airdropper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x5d7480...91738e`](./contracts/mode-34443/0x5d74800e977bfc8e14eca28c9405bacbd091738e/) | AuthoritiesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0bf353...8e6c75`](./contracts/mode-34443/0x0bf35374fddff73eb48a78328e916fb97a8e6c75/) | CErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0effea...224126`](./contracts/mode-34443/0x0effea273a9df3e1436d51822678f24e76224126/) | CErc20PluginDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x798ee0...5884d1`](./contracts/mode-34443/0x798ee06eb08151fadf5ffd07b7931b79985884d1/) | CErc20PluginRewardsDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x286703...786244`](./contracts/mode-34443/0x2867039431b712b82f52258e7c6f2b3a43786244/) | CErc20RewardsDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc10fd8...27ebeb`](./contracts/mode-34443/0xc10fd848a764e878b36ef9acb7936dc7fa27ebeb/) | CollateralSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8b2b6a...3f43a7`](./contracts/mode-34443/0x8b2b6a9dc8cd73309cef8d64920831d4c73f43a7/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x639322...35f3a0`](./contracts/mode-34443/0x6393228b6909ab12413816679ec992778e35f3a0/) | ComptrollerFirstExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0a183b...87bee4`](./contracts/mode-34443/0x0a183b983e395bebfa344389ef08250ae987bee4/) | ComptrollerPrudentiaCapsExt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x13b727...81fa14`](./contracts/mode-34443/0x13b727a6ff1856d27e85cf0c85cb096b8781fa14/) | CTokenFirstExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9a0af9...6fceec`](./contracts/mode-34443/0x9a0af901cae82f309f1047e1026f66a08c6fceec/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1d7669...cbc28a`](./contracts/mode-34443/0x1d7669b6bdfdb83066dd7c0ada4b630b25cbc28a/) | FixedNativePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x5d4983...a50e3f`](./contracts/mode-34443/0x5d498338c6e38555020fb24b977f5e2817a50e3f/) | GlobalPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4e2dfa...be517e`](./contracts/mode-34443/0x4e2dfafc783372bf39986721f9f97f666bbe517e/) | IonicFlywheel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x476326...025996`](./contracts/mode-34443/0x47632638053139307342c086d60b510eb0025996/) | IonicFlywheelBorrow | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd2ea2d...a29b14`](./contracts/mode-34443/0xd2ea2da2c6b0251b1b0436801c2dac6afca29b14/) | IonicFlywheelBorrowBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x02f606...20d11f`](./contracts/mode-34443/0x02f606ae6016af2c06a4ee50129f3e24c520d11f/) | IonicFlywheelDynamicRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x01ab48...a5e449`](./contracts/mode-34443/0x01ab485a0fae0667be36ab876c95adc1a2a5e449/) | IonicFlywheelLensRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd07cd8...272164`](./contracts/mode-34443/0xd07cd8df6ccdc9228ebced7fa236e1d59c272164/) | IonicToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x21a455...217817`](./contracts/mode-34443/0x21a455ced9c79bc523d4e340c2b97521f4217817/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9b506a...40cd45`](./contracts/mode-34443/0x9b506a03bbff2a842866b10bc6732da72640cd45/) | LeveredPositionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4e20eb...737fea`](./contracts/mode-34443/0x4e20eb2af6be30660323cb25204e071116737fea/) | LeveredPositionFactoryFirstExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x14bb1c...e6d000`](./contracts/mode-34443/0x14bb1c7293c4e3e28ef4a74c3d73badd5de6d000/) | LeveredPositionFactorySecondExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd9a567...0f3a28`](./contracts/mode-34443/0xd9a5677594694819f69d0907c3094eab480f3a28/) | LeveredPositionsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xae2647...42cd6a`](./contracts/mode-34443/0xae2647747e037410ff477e72176ead322d42cd6a/) | LiquidatorsRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3fa4bc...93d621`](./contracts/mode-34443/0x3fa4bc2fcac5515d5b758d4d580bbd626c93d621/) | LiquidatorsRegistryExtension | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x139bd5...d03900`](./contracts/mode-34443/0x139bd5cf15a1312bfd165f36c0b88987a9d03900/) | LiquidatorsRegistrySecondExtension | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1d89e5...ce47b4`](./contracts/mode-34443/0x1d89e5ba287e67ac0046d2218be5fe1382ce47b4/) | LooplessFlywheelBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2ddf3d...aed83c`](./contracts/mode-34443/0x2ddf3ddfe856d1a4e5dbcb324194e2a622aed83c/) | OptimizedVaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x20808c...ea1d2d`](./contracts/mode-34443/0x20808c1a73737016bbbf8acc6959a30446ea1d2d/) | PoolDirectory | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x431c87...7ed480`](./contracts/mode-34443/0x431c87e08e2636733a945d742d25ba77577ed480/) | PoolLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x7ea7bb...0d4154`](./contracts/mode-34443/0x7ea7bb80f3bbee9b52e6ed3775ba06c9c80d4154/) | PoolLensSecondary | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3fa7f3...0275e1`](./contracts/mode-34443/0x3fa7f3a4127860c7c9b8130e472315c0a60275e1/) | PrudentiaInterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2f0a2b...1b72dc`](./contracts/mode-34443/0x2f0a2b9dcdf899b34f482ee50137cdf8ed1b72dc/) | PublicSaleTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xcd4d7c...d3ba5c`](./contracts/mode-34443/0xcd4d7c8e2ba627684a9b18f7fe88239341d3ba5c/) | SimplePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x93e635...9409d9`](./contracts/mode-34443/0x93e63535cb8b85239d4d8f40a571e81dab9409d9/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 6 |
| standard_library | 3 |
| needs_review | 363 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
