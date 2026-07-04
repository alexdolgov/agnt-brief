# Agentic Audit Brief: Ionic Protocol

## Project Overview

- Project: Ionic Protocol (`ionic-protocol`)
- Website: [https://app.ionic.money/](https://app.ionic.money/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:03.234Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, mode
- Contract surface: 76 unique implementations (171 raw deployments)
- DeFi Llama TVL: $2,042,238.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 58 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Its contracts share 33 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, diamondextension). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 171; live-surface contracts included: 171 (5 live, 166 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/55
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 76
- Raw deployments: 171
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 1.8% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterPriceOracle | unknown | mode | n/a | 2 deployments: mode [`0x4e7676...e3c9ae`](./contracts/mode-34443/0x4e7676b20b86beea9c197be756361680fae3c9ae/); mode `0x707a1b...40229f` | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressesProvider | unknown | mode | n/a | [`0x8d5b09...687f73`](./contracts/mode-34443/0x8d5b096c99b26d07c7f8d8a8f25be97427687f73/) | ⚠️ Unaudited |
| AerodromeV2Liquidator | unknown | mode | n/a | [`0x0111f3...846d8a`](./contracts/mode-34443/0x0111f383e756f57037a939c49c9e69ca06846d8a/) | ⚠️ Unaudited |
| Airdropper | unknown | mode | n/a | [`0x521dd8...f5dd1f`](./contracts/mode-34443/0x521dd84fc4fc715d50549f4913e7eba2eef5dd1f/) | ⚠️ Unaudited |
| AlgebraSwapLiquidator | unknown | mode | n/a | [`0x5ca3fd...20f3c8`](./contracts/mode-34443/0x5ca3fd2c285c4138185ef1bda7573d415020f3c8/) | ⚠️ Unaudited |
| AuthoritiesRegistry | unknown | mode | n/a | [`0x5d7480...91738e`](./contracts/mode-34443/0x5d74800e977bfc8e14eca28c9405bacbd091738e/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| CErc20Delegate | unknown | mode | n/a | 3 deployments: mode [`0x0bf353...8e6c75`](./contracts/mode-34443/0x0bf35374fddff73eb48a78328e916fb97a8e6c75/); mode `0x93dac8...69bc95`; mode `0xb3788b...6a6332` | ⚠️ Unaudited |
| CErc20PluginDelegate | unknown | mode | n/a | 3 deployments: mode [`0x0effea...224126`](./contracts/mode-34443/0x0effea273a9df3e1436d51822678f24e76224126/); mode `0x726c7b...aff1d5`; mode `0x8cc7cd...bcb94c` | ⚠️ Unaudited |
| CErc20PluginRewardsDelegate | unknown | mode | n/a | 3 deployments: mode [`0x798ee0...5884d1`](./contracts/mode-34443/0x798ee06eb08151fadf5ffd07b7931b79985884d1/); mode `0x96aaaf...36dbb2`; mode `0xfdd337...832462` | ⚠️ Unaudited |
| CErc20RewardsDelegate | unknown | mode | n/a | 3 deployments: mode [`0x286703...786244`](./contracts/mode-34443/0x2867039431b712b82f52258e7c6f2b3a43786244/); mode `0x6352b5...f7a9a5`; mode `0xb8fb48...123e5e` | ⚠️ Unaudited |
| CollateralSwap | unknown | mode | n/a | 2 deployments: mode [`0xc10fd8...27ebeb`](./contracts/mode-34443/0xc10fd848a764e878b36ef9acb7936dc7fa27ebeb/); mode `0xee02b7...cb56f6` | ⚠️ Unaudited |
| Comptroller | unknown | mode | n/a | 4 deployments: mode [`0x8b2b6a...3f43a7`](./contracts/mode-34443/0x8b2b6a9dc8cd73309cef8d64920831d4c73f43a7/); mode `0xa2ced0...272484`; mode `0xa3e43a...4234e9`; mode `0xa855f8...6c6be7` | ⚠️ Unaudited |
| ComptrollerFirstExtension | unknown | mode | n/a | 3 deployments: mode [`0x639322...35f3a0`](./contracts/mode-34443/0x6393228b6909ab12413816679ec992778e35f3a0/); mode `0xdc4abe...b8920a`; mode `0xe1a300...4ba02f` | ⚠️ Unaudited |
| ComptrollerPrudentiaCapsExt | unknown | mode | n/a | [`0x0a183b...87bee4`](./contracts/mode-34443/0x0a183b983e395bebfa344389ef08250ae987bee4/) | ⚠️ Unaudited |
| CTokenFirstExtension | unknown | mode | n/a | 5 deployments: mode [`0x13b727...81fa14`](./contracts/mode-34443/0x13b727a6ff1856d27e85cf0c85cb096b8781fa14/); mode `0x8c58ec...d4aea2`; mode `0xd2fef5...9fde16`; mode `0xe419c1...ea87ec`; mode `0xf4090e...4ea2d4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | n/a | [`0x184700...bc34ca`](./contracts/mode-34443/0x18470019bf0e94611f15852f7e93cf5d65bc34ca/) | ⚠️ Unaudited |
| FeeDistributor | unknown | mode | n/a | [`0x9a0af9...6fceec`](./contracts/mode-34443/0x9a0af901cae82f309f1047e1026f66a08c6fceec/) | ⚠️ Unaudited |
| FixedNativePriceOracle | unknown | mode | n/a | [`0x1d7669...cbc28a`](./contracts/mode-34443/0x1d7669b6bdfdb83066dd7c0ada4b630b25cbc28a/) | ⚠️ Unaudited |
| GlobalPauser | unknown | mode | n/a | 2 deployments: mode [`0x5d4983...a50e3f`](./contracts/mode-34443/0x5d498338c6e38555020fb24b977f5e2817a50e3f/); mode `0xe646d8...3880c8` | ⚠️ Unaudited |
| IonicFlywheel | unknown | mode | n/a | 4 deployments: mode [`0x4e2dfa...be517e`](./contracts/mode-34443/0x4e2dfafc783372bf39986721f9f97f666bbe517e/); mode `0x7c8e41...39269d`; mode `0x92ce34...752497`; mode `0xa525af...65f458` | ⚠️ Unaudited |
| IonicFlywheelBorrow | unknown | mode | n/a | 4 deployments: mode [`0x476326...025996`](./contracts/mode-34443/0x47632638053139307342c086d60b510eb0025996/); mode `0x82e88b...a0fbaf`; mode `0xe259d6...f57d13`; mode `0xf9c66d...40ae02` | ⚠️ Unaudited |
| IonicFlywheelBorrowBooster | unknown | mode | n/a | [`0xd2ea2d...a29b14`](./contracts/mode-34443/0xd2ea2da2c6b0251b1b0436801c2dac6afca29b14/) | ⚠️ Unaudited |
| IonicFlywheelDynamicRewards | unknown | mode | n/a | 7 deployments: mode [`0x02f606...20d11f`](./contracts/mode-34443/0x02f606ae6016af2c06a4ee50129f3e24c520d11f/); mode `0x23dec9...f6fd88`; mode `0x3d662d...ed3dd4`; mode `0x4a003b...c2549c`; mode `0xbfae75...95d989`; mode `0xdb9356...90415f`; mode `0xef4aff...8f1fe2` | ⚠️ Unaudited |
| IonicFlywheelLensRouter | adapter | mode | n/a | 5 deployments: mode [`0x01ab48...a5e449`](./contracts/mode-34443/0x01ab485a0fae0667be36ab876c95adc1a2a5e449/); mode `0x79eb8e...f5db70`; mode `0xa1b7c3...7eade9`; mode `0xa6ba5f...8da108`; mode `0xf0ac0f...35d85a` | ⚠️ Unaudited |
| IonicToken | unknown | mode | n/a | [`0xd07cd8...272164`](./contracts/mode-34443/0xd07cd8df6ccdc9228ebced7fa236e1d59c272164/) | ⚠️ Unaudited |
| IonicUniV3Liquidator | unknown | mode | n/a | 5 deployments: mode [`0x0472de...740a9d`](./contracts/mode-34443/0x0472de8cb207aa872796de41bb1f21c077740a9d/); mode `0x4d7da5...e96b72`; mode `0x79ac78...f5b14c`; mode `0x88911e...4b0d8f`; mode `0xe807fe...3df5b1` | ⚠️ Unaudited |
| JumpRateModel | unknown | mode | n/a | 6 deployments: mode [`0x21a455...217817`](./contracts/mode-34443/0x21a455ced9c79bc523d4e340c2b97521f4217817/); mode `0x223add...09e6ee`; mode `0x22cc24...bc5636`; mode `0x2e06c3...e0595e`; mode `0x413ad5...26743a`; mode `0xa16d99...c49a19` | ⚠️ Unaudited |
| LeveredPositionFactory | registry | mode | n/a | [`0x9b506a...40cd45`](./contracts/mode-34443/0x9b506a03bbff2a842866b10bc6732da72640cd45/) | ⚠️ Unaudited |
| LeveredPositionFactoryFirstExtension | unknown | mode | n/a | 2 deployments: mode [`0x4e20eb...737fea`](./contracts/mode-34443/0x4e20eb2af6be30660323cb25204e071116737fea/); mode `0x4f8246...c29b98` | ⚠️ Unaudited |
| LeveredPositionFactorySecondExtension | unknown | mode | n/a | 3 deployments: mode [`0x14bb1c...e6d000`](./contracts/mode-34443/0x14bb1c7293c4e3e28ef4a74c3d73badd5de6d000/); mode `0x2afb71...c19e33`; mode `0x5dc08e...562212` | ⚠️ Unaudited |
| LeveredPositionsLens | unknown | mode | n/a | [`0xd9a567...0f3a28`](./contracts/mode-34443/0xd9a5677594694819f69d0907c3094eab480f3a28/) | ⚠️ Unaudited |
| LiquidatorsRegistry | unknown | mode | n/a | 2 deployments: mode [`0xae2647...42cd6a`](./contracts/mode-34443/0xae2647747e037410ff477e72176ead322d42cd6a/); mode `0xc71b96...ca1b34` | ⚠️ Unaudited |
| LiquidatorsRegistryExtension | unknown | mode | n/a | 4 deployments: mode [`0x3fa4bc...93d621`](./contracts/mode-34443/0x3fa4bc2fcac5515d5b758d4d580bbd626c93d621/); mode `0x6aa80a...03c103`; mode `0x95e4cd...ae8294`; mode `0xdd7f71...7bd39b` | ⚠️ Unaudited |
| LiquidatorsRegistrySecondExtension | unknown | mode | n/a | 2 deployments: mode [`0x139bd5...d03900`](./contracts/mode-34443/0x139bd5cf15a1312bfd165f36c0b88987a9d03900/); mode `0x45a4a3...e8c5c1` | ⚠️ Unaudited |
| LooplessFlywheelBooster | unknown | mode | n/a | [`0x1d89e5...ce47b4`](./contracts/mode-34443/0x1d89e5ba287e67ac0046d2218be5fe1382ce47b4/) | ⚠️ Unaudited |
| OptimizedVaultsRegistry | unknown | mode | n/a | [`0x2ddf3d...aed83c`](./contracts/mode-34443/0x2ddf3ddfe856d1a4e5dbcb324194e2a622aed83c/) | ⚠️ Unaudited |
| PoolDirectory | unknown | mode | n/a | [`0x20808c...ea1d2d`](./contracts/mode-34443/0x20808c1a73737016bbbf8acc6959a30446ea1d2d/) | ⚠️ Unaudited |
| PoolLens | unknown | mode | n/a | 4 deployments: mode [`0x431c87...7ed480`](./contracts/mode-34443/0x431c87e08e2636733a945d742d25ba77577ed480/); mode `0x611a68...d87ab8`; mode `0x70bb19...df36a6`; mode `0xbc6d8d...124d39` | ⚠️ Unaudited |
| PoolLensSecondary | unknown | mode | n/a | [`0x7ea7bb...0d4154`](./contracts/mode-34443/0x7ea7bb80f3bbee9b52e6ed3775ba06c9c80d4154/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | mode | n/a | 5 deployments: mode [`0x30d608...3672c2`](./contracts/mode-34443/0x30d608929d8b61ff35a4358ca0e9d298d43672c2/); mode `0x4de2d8...087b56`; mode `0x985a32...e849d0`; mode `0xaf9cc7...a10f83`; mode `0xd12266...a42343` | ⚠️ Unaudited |
| PrudentiaInterestRateModel | unknown | mode | n/a | 8 deployments: mode [`0x3fa7f3...0275e1`](./contracts/mode-34443/0x3fa7f3a4127860c7c9b8130e472315c0a60275e1/); mode `0x50a06b...81cd03`; mode `0x6a40d8...c636a6`; mode `0xa662dc...b74414`; mode `0xb0a9b9...e37f09`; mode `0xb1b4ba...8cf382`; mode `0xc58dcc...e72e2e`; mode `0xf2202a...180af8` | ⚠️ Unaudited |
| PublicSaleTokenVesting | unknown | mode | n/a | 3 deployments: mode [`0x2f0a2b...1b72dc`](./contracts/mode-34443/0x2f0a2b9dcdf899b34f482ee50137cdf8ed1b72dc/); mode `0x731d22...536821`; mode `0xda061a...29ede8` | ⚠️ Unaudited |
| PythPriceOracle | unknown | mode | n/a | [`0x13fd27...441794`](./contracts/mode-34443/0x13fd2701c3017bcc375ad14dd8433c6d7a441794/) | ⚠️ Unaudited |
| PythPriceOracleDmBTC | unknown | mode | n/a | [`0xac986b...4b342e`](./contracts/mode-34443/0xac986b9b549ba5e98baeb78919d4e4aa5f4b342e/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracle | unknown | mode | n/a | [`0x63a153...3e1e0a`](./contracts/mode-34443/0x63a1531a06f0ac597a0dfa5a516a37073c3e1e0a/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWeETH | unknown | mode | n/a | [`0x9c0819...03de78`](./contracts/mode-34443/0x9c0819e3235c8ff74e79f0cabb51ec477603de78/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWrsETH | unknown | mode | n/a | [`0xe3643f...8979e8`](./contracts/mode-34443/0xe3643fd41095658cdf063e15f5cb30a5738979e8/) | ⚠️ Unaudited |
| SimplePriceOracle | unknown | mode | n/a | [`0xcd4d7c...d3ba5c`](./contracts/mode-34443/0xcd4d7c8e2ba627684a9b18f7fe88239341d3ba5c/) | ⚠️ Unaudited |
| TokenVesting | unknown | mode | n/a | 2 deployments: mode [`0x93e635...9409d9`](./contracts/mode-34443/0x93e63535cb8b85239d4d8f40a571e81dab9409d9/); mode `0xa7bc89...89bc7b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | 25 deployments: mode [`0x04ffa5...c1cfb0`](./contracts/mode-34443/0x04ffa53a90a8ded9ae83f64596c5783397c1cfb0/); mode `0x151af4...8b93db`; mode `0x1a118b...6f1d44`; mode `0x1dd45c...b8eac1`; mode `0x2baf3a...77f117`; mode `0x2dc3f7...f3b1ec`; mode `0x39c353...81458a`; mode `0x4e854c...2cd834`; mode `0x50f13e...b3ce5c`; mode `0x52ee6e...2a7b23`; mode `0x5f0369...086d03`; mode `0x6afcca...465df5`; mode `0x8d446b...a87050`; mode `0x8ea3fc...0f6e57`; mode `0x99e8d6...83748b`; mode `0x9df3d8...feb74c`; mode `0xa12c1e...9b0e3a`; mode `0xa1917c...653e0f`; mode `0xa80ff9...fb23c5`; mode `0xa90f1c...e216a4`; mode `0xacea9b...bff4e7`; mode `0xb00335...9a6115`; mode `0xc3cec1...47daac`; mode `0xcc11fc...fa0062`; mode `0xe98628...ced3ea` | ⚠️ Unaudited |
| VelodromePriceOracle | unknown | mode | n/a | [`0x9bb6ef...fce2a9`](./contracts/mode-34443/0x9bb6efb9c1c16f4561591fe13ea06af8d1fce2a9/) | ⚠️ Unaudited |
| VelodromeV2Liquidator | unknown | mode | n/a | [`0xa1abf9...fb33ec`](./contracts/mode-34443/0xa1abf92ef468464962af1ceffb44631a6ffb33ec/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| xERC20Hyperlane | token | mode | n/a | [`0xb81ab9...5319eb`](./contracts/mode-34443/0xb81ab95bee03ed655c8a99d484effcfe335319eb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0x146991...198736` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x178d49...702fad` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x36a84b...651530` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3ee5e2...bd22e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x462faa...ef3e51` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x48bf6b...ace19a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5782c5...193a46` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6abf23...c6d3ec` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6ac17d...3b36b7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x75897e...52c058` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8cdeb2...5c020c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x907a17...4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x917e17...d8d4db` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9e4f32...6abd98` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xac4096...ff2295` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb08faf...8a5e47` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb48221...be43f5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xca41aa...498dd7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xda8c83...5f1178` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe5a4e7...e810a9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe64e42...93c2c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf](https://1954749119-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4L4EczL4rCp3jyJhAxHG%2Fuploads%2Ffkk0363x576TeYPz9Dww%2FIonic_Protocol_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
