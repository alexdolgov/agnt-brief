# Agentic Audit Brief: Manta Atlantic Stake

## Project Overview

- Project: Manta Atlantic Stake (`manta-atlantic-stake`)
- Website: [https://app.manta.network/manta/stake](https://app.manta.network/manta/stake)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.911Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, manta
- Contract surface: 112 unique implementations (183 raw deployments)
- DeFi Llama TVL: $4,321,476.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 76 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 12 common project-authored base contract(s) (semver, reentrancyguard, governable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 185; live-surface contracts included: 178 (65 live, 113 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/13 (0.0%)
- Deployed-live implementations: 13 of 112 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/71
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 112
- Raw deployments: 183
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | 15 deployments: ethereum [`0x171045...a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/); ethereum `0x1dc618...6d39fa`; ethereum `0x262181...8415af`; ethereum `0x39860b...552864`; ethereum `0x3ad319...b67b05`; ethereum `0x424b45...d202b5`; ethereum `0x5e99cf...e8902d`; ethereum `0x6d223e...719665`; ethereum `0x897c4f...a7abf6`; ethereum `0xa69f3d...ddf561`; ethereum `0xc32db7...b0580d`; ethereum `0xdb2712...fc3284`; ethereum `0xe3cb59...43e9db`; ethereum `0xe63ac9...7a7a82`; ethereum `0xfd195d...dfbc4c` | ⚠️ Unaudited |
| BatchSender | periphery | manta | n/a | [`0x461505...71aa11`](./contracts/manta-169/0x4615050b9b523a1a410766128ef8c8a3a871aa11/) | ⚠️ Unaudited |
| BonusDistributor | operational_periphery | manta | n/a | [`0xc7da75...bea502`](./contracts/manta-169/0xc7da757f97207265c0e1e51974a92c65bcbea502/) | ⚠️ Unaudited |
| Disperse | unknown | manta | n/a | [`0x1fd9ae...ab7135`](./contracts/manta-169/0x1fd9ae1cb39680740c140966f2885942c8ab7135/) | ⚠️ Unaudited |
| EsRAP | unknown | manta | n/a | [`0x37cdab...4ef3fe`](./contracts/manta-169/0x37cdab54b883d0930bdecd2307971f41684ef3fe/) | ⚠️ Unaudited |
| FastPriceEvents | operational_periphery | manta | n/a | [`0xa14b81...2fccd9`](./contracts/manta-169/0xa14b81a69c5f542bbb1affad4f8ba720692fccd9/) | ⚠️ Unaudited |
| FastPriceFeedV2 | operational_periphery | manta | n/a | [`0xb7b6ef...bc0129`](./contracts/manta-169/0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129/) | ⚠️ Unaudited |
| FastPriceFeedV3 | operational_periphery | manta | n/a | [`0x4a98fe...f0efad`](./contracts/manta-169/0x4a98fe7dc066ede7321db81a16e31e6ddaf0efad/) | ⚠️ Unaudited |
| GlpManager | governance | manta | n/a | [`0xbba479...7a574b`](./contracts/manta-169/0xbba479d953d012256770e75e2e49af85f17a574b/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x3c46c0...3ea01e`](./contracts/ethereum-1/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | manta | n/a | [`0x21d113...a7ca47`](./contracts/manta-169/0x21d11343cd7c835069f560e2a42a5674dca7ca47/) | ⚠️ Unaudited |
| Governable | unknown | manta | n/a | [`0x2043c8...011ece`](./contracts/manta-169/0x2043c8479b771da6e0a742691b2eb9de51011ece/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x305e88...8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/); ethereum `0xb6c539...c230df` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/); ethereum `0x9cddc6...e8b51f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbe896f...481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/); ethereum `0xfb1e17...d3c32d` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | 2 deployments: ethereum [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/); ethereum `0x62b257...41cd58` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x30c789...a05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MantaTokenManager | unknown | manta | n/a | [`0x55f9d1...a49b2f`](./contracts/manta-169/0x55f9d1007922f3c47ab67a31ce3e503ba6a49b2f/) | ⚠️ Unaudited |
| MintableBaseToken | token | manta | n/a | [`0xbab712...b29b40`](./contracts/manta-169/0xbab712736193d1aefccc171edb6f35507eb29b40/) | ⚠️ Unaudited |
| Multicall3 | periphery | manta | n/a | [`0x00113b...f6deab`](./contracts/manta-169/0x00113b8516b915106b99c43d628353dc43f6deab/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x216525...d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/); ethereum `0xd49577...ceb894` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x916876...0b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | ⚠️ Unaudited |
| OrderBook | unknown | manta | n/a | [`0x264cc4...b8da83`](./contracts/manta-169/0x264cc454df686f13814d540d892effdaa0b8da83/) | ⚠️ Unaudited |
| OrderBookReader | unknown | manta | n/a | [`0x3f3f96...0b9a7e`](./contracts/manta-169/0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e/) | ⚠️ Unaudited |
| OrderBookV2 | unknown | manta | n/a | [`0xbffea7...9a1d01`](./contracts/manta-169/0xbffea7000aad4c5335733b891d68b898d79a1d01/) | ⚠️ Unaudited |
| PositionManager | governance | manta | n/a | 2 deployments: manta [`0x2dca27...0a43a8`](./contracts/manta-169/0x2dca2753eb7a6d3521d3a6e37216c943480a43a8/); manta `0x996b5f...fadd8a` | ⚠️ Unaudited |
| PositionRouter | adapter | manta | n/a | [`0x46f1c0...c08b4f`](./contracts/manta-169/0x46f1c05ba332ad9518226b83df17547ba1c08b4f/) | ⚠️ Unaudited |
| PositionRouterReader | adapter | manta | n/a | [`0x64c36c...2da00b`](./contracts/manta-169/0x64c36c9bceb369d47a7d283a47c9a5049b2da00b/) | ⚠️ Unaudited |
| PositionUtils | unknown | manta | n/a | [`0x92b222...f351b0`](./contracts/manta-169/0x92b222222265fc8a8b6d473b810177879bf351b0/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | manta | n/a | [`0xdc1f37...999dfc`](./contracts/manta-169/0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc/) | ⚠️ Unaudited |
| PriceWrapper | operational_periphery | manta | n/a | [`0x86b100...0867ba`](./contracts/manta-169/0x86b10048445553d38ade88ba8dd759ab9d0867ba/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 26 deployments: ethereum [`0x0f2486...1e47bf`](./contracts/ethereum-1/0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf/); ethereum `0x120bd9...35d78c`; ethereum `0x1c466b...b8aa71`; ethereum `0x6ec90d...e2c5ce`; ethereum `0x732970...fea232`; ethereum `0x96d6e5...8771c4`; ethereum `0xb73603...5016fb`; ethereum `0xd0e3a9...3e3dcc`; ethereum `0xea4f12...126fba`; ethereum `0xf417f5...d2851f`; ethereum `0xf4b428...0748fa`; ethereum `0xf992f6...acf631`; manta `0x420000...000007`; manta `0x420000...00000f`; manta `0x420000...000010`; manta `0x420000...000011`; manta `0x420000...000012`; manta `0x420000...000014`; manta `0x420000...000015`; manta `0x420000...000016`; manta `0x420000...000017`; manta `0x420000...000018`; manta `0x420000...000019`; manta `0x420000...00001a`; manta `0x420000...000020`; manta `0x420000...000021` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 13 deployments: ethereum [`0x007957...f8cb2d`](./contracts/ethereum-1/0x007957bf0681b75e92273a7018784ace6af8cb2d/); ethereum `0x1772e3...410eb5`; ethereum `0x1a7381...88007d`; ethereum `0x4d7e19...a40e9e`; ethereum `0x65d6b2...92d48e`; ethereum `0x68b18d...8062bd`; ethereum `0x8a7b47...8d3be1`; ethereum `0xa2dca8...06e8d1`; ethereum `0xc21f2e...b6e79d`; ethereum `0xc9ef2e...906995`; ethereum `0xe84162...dbdd0e`; ethereum `0xeb77d0...4c48cd`; ethereum `0xecde80...b0d8e5` | ⚠️ Unaudited |
| PythFlags | unknown | manta | n/a | [`0x4ef1ee...7e593e`](./contracts/manta-169/0x4ef1eef6778b246bcfd2eee6a7fa6459337e593e/) | ⚠️ Unaudited |
| PythWrapperBTC | unknown | manta | n/a | [`0xcaf939...db5705`](./contracts/manta-169/0xcaf939f470fdc1a2db32f4f7060bae4d03db5705/) | ⚠️ Unaudited |
| PythWrapperETH | unknown | manta | n/a | [`0x677890...f66ed9`](./contracts/manta-169/0x677890e9bfd70593e6dc66d9089e02f8bff66ed9/) | ⚠️ Unaudited |
| PythWrapperUSDC | unknown | manta | n/a | [`0x92a74f...d85208`](./contracts/manta-169/0x92a74f360c56ac3f489dc9d25e62a8adabd85208/) | ⚠️ Unaudited |
| PythWrapperUSDT | token | manta | n/a | [`0x3b14f6...645d02`](./contracts/manta-169/0x3b14f6fad061fe52c0412f3eb5c3ce0e9e645d02/) | ⚠️ Unaudited |
| RAP | unknown | manta | n/a | [`0x9576ca...4b1b52`](./contracts/manta-169/0x9576ca6d15e7ccce184fa7523085d21a554b1b52/) | ⚠️ Unaudited |
| RapTimelock | governance | manta | n/a | [`0x308ad3...d6da84`](./contracts/manta-169/0x308ad3b4712e4a64f798daa34b6f9a205dd6da84/) | ⚠️ Unaudited |
| Reader | unknown | manta | n/a | [`0x96aa4d...54595b`](./contracts/manta-169/0x96aa4d36d41d40e9eae57fddf508d074c754595b/) | ⚠️ Unaudited |
| ReaderV2 | unknown | manta | n/a | 2 deployments: manta [`0x40f20f...c5c1a2`](./contracts/manta-169/0x40f20fcab8ee140e8246a19541664867a0c5c1a2/); manta `0xb41a81...3a2cc0` | ⚠️ Unaudited |
| ReferralReader | unknown | manta | n/a | [`0xdc9e8c...2e75f0`](./contracts/manta-169/0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0/) | ⚠️ Unaudited |
| ReferralStorage | token | manta | n/a | [`0xb71d87...9a8c31`](./contracts/manta-169/0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x2fe3ad...d94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | manta | n/a | 4 deployments: manta [`0x54c5cf...2c5796`](./contracts/manta-169/0x54c5cfd081d0c0affc95ba816a5389a3472c5796/); manta `0x5f0753...8b329c`; manta `0x7a53f6...338832`; manta `0xe4693b...96c87f` | ⚠️ Unaudited |
| RewardReader | unknown | manta | n/a | [`0xa1d60a...4a6919`](./contracts/manta-169/0xa1d60a7220c1fb37733978201aab8c9a7c4a6919/) | ⚠️ Unaudited |
| RewardRouterOrderBook | adapter | manta | n/a | [`0x909308...a7fa69`](./contracts/manta-169/0x9093089bbefd8944390a2e090122e6245aa7fa69/) | ⚠️ Unaudited |
| RewardRouterV2 | adapter | manta | n/a | 2 deployments: manta [`0x952951...b153f3`](./contracts/manta-169/0x9529519c25de11c3b27b16482340755c23b153f3/); manta `0xd726e7...082109` | ⚠️ Unaudited |
| RewardTracker | unknown | manta | n/a | 5 deployments: manta [`0x10e878...17a76c`](./contracts/manta-169/0x10e878adbcbd35e4356f5272ae9537814d17a76c/); manta `0x18ae8e...23ba1c`; manta `0x33b92c...65faf5`; manta `0x822c25...9119df`; manta `0xcbdc1a...8e1181` | ⚠️ Unaudited |
| RLP | unknown | manta | n/a | [`0x7d0799...e18197`](./contracts/manta-169/0x7d079915b30de18bc866b025cfa278aba2e18197/) | ⚠️ Unaudited |
| Router | adapter | manta | n/a | [`0x689a2b...bf2065`](./contracts/manta-169/0x689a2bf9193d74fa2f17769e0adb76f58dbf2065/) | ⚠️ Unaudited |
| Seaport | unknown | manta | n/a | [`0x000000...af14dc`](./contracts/manta-169/0x00000000000000adc04c56bf30ac9d3c0aaf14dc/) | ⚠️ Unaudited |
| ShortsTracker | unknown | manta | n/a | [`0x1017a0...98b49b`](./contracts/manta-169/0x1017a05dbc857c90457bddc8b2d02940d998b49b/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | manta | n/a | [`0x80a9ff...14ddda`](./contracts/manta-169/0x80a9ff4db9696d7365bb93aeb78f0c805c14ddda/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x895e00...351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/); ethereum `0xef01a6...1ad0ae` | ⚠️ Unaudited |
| Timelock | governance | manta | n/a | 3 deployments: manta [`0x44ed2c...b3bc0e`](./contracts/manta-169/0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e/); manta `0xc6b525...f392be`; manta `0xe8da44...0104e2` | ⚠️ Unaudited |
| TokenConfigKeeper | operational_periphery | manta | n/a | [`0xd45244...1bbaf6`](./contracts/manta-169/0xd45244ff30150f05906b3f10aa41d2055d1bbaf6/) | ⚠️ Unaudited |
| TokenManager | governance | manta | n/a | [`0x0dc076...fad850`](./contracts/manta-169/0x0dc0761d71af3332a42fa2cf885e7c427ffad850/) | ⚠️ Unaudited |
| TokensPerIntervalUpdater | token | manta | n/a | 2 deployments: manta [`0x1808db...5e0732`](./contracts/manta-169/0x1808db4d0539ad603d6defa1ae3745791c5e0732/); manta `0xe3ad19...dd2ce2` | ⚠️ Unaudited |
| USDR | unknown | manta | n/a | [`0x1a303e...003e7d`](./contracts/manta-169/0x1a303ea630f054a0b92787a30b03b0920e003e7d/) | ⚠️ Unaudited |
| Vault | core_logic | manta | n/a | [`0xea5c75...928bc4`](./contracts/manta-169/0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4/) | ⚠️ Unaudited |
| VaultErrorController | core_logic | manta | n/a | [`0x48542a...3f1d6c`](./contracts/manta-169/0x48542a36c725aba87067edfefcb7d551ce3f1d6c/) | ⚠️ Unaudited |
| VaultPriceFeedV2 | operational_periphery | manta | n/a | [`0xcc5bbc...9f8c84`](./contracts/manta-169/0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84/) | ⚠️ Unaudited |
| VaultPriceFeedV3 | operational_periphery | manta | n/a | [`0xfa893d...819541`](./contracts/manta-169/0xfa893dd111ccfcbc942576eb02bf313ed5819541/) | ⚠️ Unaudited |
| VaultReader | core_logic | manta | n/a | [`0x030f89...bece13`](./contracts/manta-169/0x030f89585d9812471dae7262645860f2d8bece13/) | ⚠️ Unaudited |
| VaultReaderV3 | core_logic | manta | n/a | [`0xc5ecf0...947b88`](./contracts/manta-169/0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88/) | ⚠️ Unaudited |
| VaultUtils | core_logic | manta | n/a | [`0xe84231...967fd9`](./contracts/manta-169/0xe84231ae15fea715dbd31b353f5b45bfea967fd9/) | ⚠️ Unaudited |
| Vester | operational_periphery | manta | n/a | 2 deployments: manta [`0x4a58af...959419`](./contracts/manta-169/0x4a58af9033db96d4665fc38593ddfdd78b959419/); manta `0xba8cd9...d1e3f5` | ⚠️ Unaudited |
| WETH9 | token | manta | n/a | [`0x420000...000006`](./contracts/manta-169/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x03ccf2...f0a82a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x04c74e...57a10d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0691b7...b45711` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x199788...bfc39f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1e59a3...bf0f7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x216525...d41e20` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x22d72d...570f38` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2dd44d...8b0b46` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x30662c...11d2e8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x30c789...a05c1d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x35e615...881e07` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3ad319...b67b05` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3b95bc...9715e5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3c46c0...3ea01e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4b1a78...a29fe5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4d56de...fe3a31` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x56c6ab...28f30c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x635ba6...13c310` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x64eee2...a87cb8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6a42a6...d7f570` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x76c727...9867e4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x80f86c...9fe83d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x853bdf...f90aca` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8884e1...39db00` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x895e00...351a5d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x916876...0b7622` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9f3e00...fbc46b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa01c76...906b25` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa2dca8...06e8d1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa547e0...f9e5f4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa76e31...f4533f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xaeba8e...7cd1fe` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb4efba...884f72` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbe896f...481c8f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcad25c...17f78f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd3bc17...b42757` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdeadde...ad0000` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe9192e...179509` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfa9448...969d7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfb12bd...6ce3ac` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfe7cf3...549ff0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_manta_fast_finality_v1.0.pdf](https://github.com/Manta-Network/manta-fp/blob/main/audit/blocksec_manta_fast_finality_v1.0.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 112 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20811] blocksec_manta_fast_finality_v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
