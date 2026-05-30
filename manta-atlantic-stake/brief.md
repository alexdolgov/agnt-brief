# Agentic Audit Brief: Manta Atlantic Stake

⚠️ Lifecycle status: SUNSETTING - TVL dropped 5.8% over 90 days

## Project Overview

- Project: Manta Atlantic Stake (`manta-atlantic-stake`)
- Website: [https://app.manta.network/manta/stake](https://app.manta.network/manta/stake)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-05-30T20:51:39.433Z
- Pipeline run: v2-pipeline-2026-05-30-9de83b-6726
- Chains: ethereum, manta
- Contract surface: 109 unique implementations (136 raw deployments)
- DeFi Llama TVL: $5,409,052.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Manta Atlantic Stake is a Layer 2 scaling solution built on the OP Stack, providing a bridge between Ethereum and the Manta Pacific network. It enables fast and low-cost transactions on Manta Pacific while inheriting security from Ethereum.

### Architecture

The Ethereum Mainnet Bridge family manages cross-chain communication and asset transfers, relying on the Manta Pacific Mainnet family's predeployed proxies for L2 execution. The Reward Contract and OpenSea Seaport operate on Manta Pacific, utilizing the bridge for asset movement and the L2 infrastructure for execution.

## Fork Lineage

This project is a code fork of **Manta Pacific** (`manta-pacific`).
0 audits are inherited from this parent project.

Total inherited audits: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/68 (0.0%)
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 109
- Raw deployments: 136
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [sunsetting]. ASD of n/a represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | [`0x3ad319...b67b05`](./contracts/ethereum-1/0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05/) | ⚠️ Unaudited |
| BatchSender | periphery | manta | [`0x461505...71aa11`](./contracts/manta-169/0x4615050b9b523a1a410766128ef8c8a3a871aa11/) | ⚠️ Unaudited |
| BonusDistributor | operational_periphery | manta | [`0xc7da75...bea502`](./contracts/manta-169/0xc7da757f97207265c0e1e51974a92c65bcbea502/) | ⚠️ Unaudited |
| Disperse | unknown | manta | [`0x1fd9ae...ab7135`](./contracts/manta-169/0x1fd9ae1cb39680740c140966f2885942c8ab7135/) | ⚠️ Unaudited |
| EsRAP | unknown | manta | [`0x37cdab...4ef3fe`](./contracts/manta-169/0x37cdab54b883d0930bdecd2307971f41684ef3fe/) | ⚠️ Unaudited |
| FastPriceEvents | operational_periphery | manta | [`0xa14b81...2fccd9`](./contracts/manta-169/0xa14b81a69c5f542bbb1affad4f8ba720692fccd9/) | ⚠️ Unaudited |
| FastPriceFeedV2 | operational_periphery | manta | [`0xb7b6ef...bc0129`](./contracts/manta-169/0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129/) | ⚠️ Unaudited |
| FastPriceFeedV3 | operational_periphery | manta | [`0x4a98fe...f0efad`](./contracts/manta-169/0x4a98fe7dc066ede7321db81a16e31e6ddaf0efad/) | ⚠️ Unaudited |
| GlpManager | governance | manta | [`0xbba479...7a574b`](./contracts/manta-169/0xbba479d953d012256770e75e2e49af85f17a574b/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x3c46c0...3ea01e`](./contracts/ethereum-1/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | manta | [`0x21d113...a7ca47`](./contracts/manta-169/0x21d11343cd7c835069f560e2a42a5674dca7ca47/) | ⚠️ Unaudited |
| Governable | unknown | manta | [`0x2043c8...011ece`](./contracts/manta-169/0x2043c8479b771da6e0a742691b2eb9de51011ece/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0xbe896f...481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | [`0x30c789...a05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | ⚠️ Unaudited |
| Manta | unknown | manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MintableBaseToken | token | manta | [`0xbab712...b29b40`](./contracts/manta-169/0xbab712736193d1aefccc171edb6f35507eb29b40/) | ⚠️ Unaudited |
| Multicall3 | periphery | manta | [`0x00113b...f6deab`](./contracts/manta-169/0x00113b8516b915106b99c43d628353dc43f6deab/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | [`0x216525...d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0x916876...0b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | ⚠️ Unaudited |
| OrderBook | unknown | manta | [`0x264cc4...b8da83`](./contracts/manta-169/0x264cc454df686f13814d540d892effdaa0b8da83/) | ⚠️ Unaudited |
| OrderBookReader | unknown | manta | [`0x3f3f96...0b9a7e`](./contracts/manta-169/0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e/) | ⚠️ Unaudited |
| OrderBookV2 | unknown | manta | [`0xbffea7...9a1d01`](./contracts/manta-169/0xbffea7000aad4c5335733b891d68b898d79a1d01/) | ⚠️ Unaudited |
| PositionManager | governance | manta | 2 deployments: manta [`0x2dca27...0a43a8`](./contracts/manta-169/0x2dca2753eb7a6d3521d3a6e37216c943480a43a8/); manta `0x996b5f...fadd8a` | ⚠️ Unaudited |
| PositionRouter | adapter | manta | [`0x46f1c0...c08b4f`](./contracts/manta-169/0x46f1c05ba332ad9518226b83df17547ba1c08b4f/) | ⚠️ Unaudited |
| PositionRouterReader | adapter | manta | [`0x64c36c...2da00b`](./contracts/manta-169/0x64c36c9bceb369d47a7d283a47c9a5049b2da00b/) | ⚠️ Unaudited |
| PositionUtils | unknown | manta | [`0x92b222...f351b0`](./contracts/manta-169/0x92b222222265fc8a8b6d473b810177879bf351b0/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | manta | [`0xdc1f37...999dfc`](./contracts/manta-169/0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc/) | ⚠️ Unaudited |
| PriceWrapper | operational_periphery | manta | [`0x86b100...0867ba`](./contracts/manta-169/0x86b10048445553d38ade88ba8dd759ab9d0867ba/) | ⚠️ Unaudited |
| Proxy | proxy | manta | 14 deployments: manta [`0x420000...000007`](./contracts/manta-169/0x4200000000000000000000000000000000000007/); manta `0x420000...00000f`; manta `0x420000...000010`; manta `0x420000...000011`; manta `0x420000...000012`; manta `0x420000...000014`; manta `0x420000...000015`; manta `0x420000...000016`; manta `0x420000...000017`; manta `0x420000...000018`; manta `0x420000...000019`; manta `0x420000...00001a`; manta `0x420000...000020`; manta `0x420000...000021` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xa2dca8...06e8d1`](./contracts/ethereum-1/0xa2dca85bb892de55d8b262d1806114733106e8d1/) | ⚠️ Unaudited |
| PythFlags | unknown | manta | [`0x4ef1ee...7e593e`](./contracts/manta-169/0x4ef1eef6778b246bcfd2eee6a7fa6459337e593e/) | ⚠️ Unaudited |
| PythWrapperBTC | unknown | manta | [`0xcaf939...db5705`](./contracts/manta-169/0xcaf939f470fdc1a2db32f4f7060bae4d03db5705/) | ⚠️ Unaudited |
| PythWrapperETH | unknown | manta | [`0x677890...f66ed9`](./contracts/manta-169/0x677890e9bfd70593e6dc66d9089e02f8bff66ed9/) | ⚠️ Unaudited |
| PythWrapperUSDC | unknown | manta | [`0x92a74f...d85208`](./contracts/manta-169/0x92a74f360c56ac3f489dc9d25e62a8adabd85208/) | ⚠️ Unaudited |
| PythWrapperUSDT | token | manta | [`0x3b14f6...645d02`](./contracts/manta-169/0x3b14f6fad061fe52c0412f3eb5c3ce0e9e645d02/) | ⚠️ Unaudited |
| RAP | unknown | manta | [`0x9576ca...4b1b52`](./contracts/manta-169/0x9576ca6d15e7ccce184fa7523085d21a554b1b52/) | ⚠️ Unaudited |
| RapTimelock | governance | manta | [`0x308ad3...d6da84`](./contracts/manta-169/0x308ad3b4712e4a64f798daa34b6f9a205dd6da84/) | ⚠️ Unaudited |
| Reader | unknown | manta | [`0x96aa4d...54595b`](./contracts/manta-169/0x96aa4d36d41d40e9eae57fddf508d074c754595b/) | ⚠️ Unaudited |
| ReaderV2 | unknown | manta | 2 deployments: manta [`0x40f20f...c5c1a2`](./contracts/manta-169/0x40f20fcab8ee140e8246a19541664867a0c5c1a2/); manta `0xb41a81...3a2cc0` | ⚠️ Unaudited |
| ReferralReader | unknown | manta | [`0xdc9e8c...2e75f0`](./contracts/manta-169/0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0/) | ⚠️ Unaudited |
| ReferralStorage | token | manta | [`0xb71d87...9a8c31`](./contracts/manta-169/0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | manta | 4 deployments: manta [`0x54c5cf...2c5796`](./contracts/manta-169/0x54c5cfd081d0c0affc95ba816a5389a3472c5796/); manta `0x5f0753...8b329c`; manta `0x7a53f6...338832`; manta `0xe4693b...96c87f` | ⚠️ Unaudited |
| RewardReader | unknown | manta | [`0xa1d60a...4a6919`](./contracts/manta-169/0xa1d60a7220c1fb37733978201aab8c9a7c4a6919/) | ⚠️ Unaudited |
| RewardRouterOrderBook | adapter | manta | [`0x909308...a7fa69`](./contracts/manta-169/0x9093089bbefd8944390a2e090122e6245aa7fa69/) | ⚠️ Unaudited |
| RewardRouterV2 | adapter | manta | 2 deployments: manta [`0x952951...b153f3`](./contracts/manta-169/0x9529519c25de11c3b27b16482340755c23b153f3/); manta `0xd726e7...082109` | ⚠️ Unaudited |
| RewardTracker | unknown | manta | 5 deployments: manta [`0x10e878...17a76c`](./contracts/manta-169/0x10e878adbcbd35e4356f5272ae9537814d17a76c/); manta `0x18ae8e...23ba1c`; manta `0x33b92c...65faf5`; manta `0x822c25...9119df`; manta `0xcbdc1a...8e1181` | ⚠️ Unaudited |
| RLP | unknown | manta | [`0x7d0799...e18197`](./contracts/manta-169/0x7d079915b30de18bc866b025cfa278aba2e18197/) | ⚠️ Unaudited |
| Router | adapter | manta | [`0x689a2b...bf2065`](./contracts/manta-169/0x689a2bf9193d74fa2f17769e0adb76f58dbf2065/) | ⚠️ Unaudited |
| Seaport | unknown | manta | [`0x000000...af14dc`](./contracts/manta-169/0x00000000000000adc04c56bf30ac9d3c0aaf14dc/) | ⚠️ Unaudited |
| ShortsTracker | unknown | manta | [`0x1017a0...98b49b`](./contracts/manta-169/0x1017a05dbc857c90457bddc8b2d02940d998b49b/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | manta | [`0x80a9ff...14ddda`](./contracts/manta-169/0x80a9ff4db9696d7365bb93aeb78f0c805c14ddda/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x895e00...351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/) | ⚠️ Unaudited |
| Timelock | governance | manta | 3 deployments: manta [`0x44ed2c...b3bc0e`](./contracts/manta-169/0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e/); manta `0xc6b525...f392be`; manta `0xe8da44...0104e2` | ⚠️ Unaudited |
| TokenConfigKeeper | operational_periphery | manta | [`0xd45244...1bbaf6`](./contracts/manta-169/0xd45244ff30150f05906b3f10aa41d2055d1bbaf6/) | ⚠️ Unaudited |
| TokenManager | governance | manta | [`0x0dc076...fad850`](./contracts/manta-169/0x0dc0761d71af3332a42fa2cf885e7c427ffad850/) | ⚠️ Unaudited |
| TokensPerIntervalUpdater | token | manta | 2 deployments: manta [`0x1808db...5e0732`](./contracts/manta-169/0x1808db4d0539ad603d6defa1ae3745791c5e0732/); manta `0xe3ad19...dd2ce2` | ⚠️ Unaudited |
| USDR | unknown | manta | [`0x1a303e...003e7d`](./contracts/manta-169/0x1a303ea630f054a0b92787a30b03b0920e003e7d/) | ⚠️ Unaudited |
| Vault | core_logic | manta | [`0xea5c75...928bc4`](./contracts/manta-169/0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4/) | ⚠️ Unaudited |
| VaultErrorController | core_logic | manta | [`0x48542a...3f1d6c`](./contracts/manta-169/0x48542a36c725aba87067edfefcb7d551ce3f1d6c/) | ⚠️ Unaudited |
| VaultPriceFeedV2 | operational_periphery | manta | [`0xcc5bbc...9f8c84`](./contracts/manta-169/0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84/) | ⚠️ Unaudited |
| VaultPriceFeedV3 | operational_periphery | manta | [`0xfa893d...819541`](./contracts/manta-169/0xfa893dd111ccfcbc942576eb02bf313ed5819541/) | ⚠️ Unaudited |
| VaultReader | core_logic | manta | [`0x030f89...bece13`](./contracts/manta-169/0x030f89585d9812471dae7262645860f2d8bece13/) | ⚠️ Unaudited |
| VaultReaderV3 | core_logic | manta | [`0xc5ecf0...947b88`](./contracts/manta-169/0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88/) | ⚠️ Unaudited |
| VaultUtils | core_logic | manta | [`0xe84231...967fd9`](./contracts/manta-169/0xe84231ae15fea715dbd31b353f5b45bfea967fd9/) | ⚠️ Unaudited |
| Vester | operational_periphery | manta | 2 deployments: manta [`0x4a58af...959419`](./contracts/manta-169/0x4a58af9033db96d4665fc38593ddfdd78b959419/); manta `0xba8cd9...d1e3f5` | ⚠️ Unaudited |
| WETH9 | token | manta | [`0x420000...000006`](./contracts/manta-169/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | manta | `0x03ccf2...f0a82a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x04c74e...57a10d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x0691b7...b45711` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x199788...bfc39f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1e59a3...bf0f7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x216525...d41e20` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x22d72d...570f38` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x2dd44d...8b0b46` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x30662c...11d2e8` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x30c789...a05c1d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x35e615...881e07` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x3ad319...b67b05` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x3b95bc...9715e5` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x3c46c0...3ea01e` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x4b1a78...a29fe5` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x4d56de...fe3a31` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x56c6ab...28f30c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x635ba6...13c310` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x64eee2...a87cb8` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x6a42a6...d7f570` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x76c727...9867e4` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x80f86c...9fe83d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x853bdf...f90aca` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x8884e1...39db00` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x895e00...351a5d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x916876...0b7622` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9f3e00...fbc46b` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa01c76...906b25` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa2dca8...06e8d1` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa547e0...f9e5f4` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa76e31...f4533f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xaeba8e...7cd1fe` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb4efba...884f72` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbe896f...481c8f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xcad25c...17f78f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xd3bc17...b42757` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xdeadde...ad0000` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xe9192e...179509` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xfa9448...969d7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xfb12bd...6ce3ac` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xfe7cf3...549ff0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3ad319...b67b05`](./contracts/ethereum-1/0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x461505...71aa11`](./contracts/manta-169/0x4615050b9b523a1a410766128ef8c8a3a871aa11/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc7da75...bea502`](./contracts/manta-169/0xc7da757f97207265c0e1e51974a92c65bcbea502/) | BonusDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x37cdab...4ef3fe`](./contracts/manta-169/0x37cdab54b883d0930bdecd2307971f41684ef3fe/) | EsRAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xb7b6ef...bc0129`](./contracts/manta-169/0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129/) | FastPriceFeedV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbba479...7a574b`](./contracts/manta-169/0xbba479d953d012256770e75e2e49af85f17a574b/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe896f...481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30c789...a05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | Manta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbab712...b29b40`](./contracts/manta-169/0xbab712736193d1aefccc171edb6f35507eb29b40/) | MintableBaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x216525...d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x916876...0b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x264cc4...b8da83`](./contracts/manta-169/0x264cc454df686f13814d540d892effdaa0b8da83/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x3f3f96...0b9a7e`](./contracts/manta-169/0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbffea7...9a1d01`](./contracts/manta-169/0xbffea7000aad4c5335733b891d68b898d79a1d01/) | OrderBookV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2dca27...0a43a8`](./contracts/manta-169/0x2dca2753eb7a6d3521d3a6e37216c943480a43a8/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x46f1c0...c08b4f`](./contracts/manta-169/0x46f1c05ba332ad9518226b83df17547ba1c08b4f/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xdc1f37...999dfc`](./contracts/manta-169/0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x420000...000007`](./contracts/manta-169/0x4200000000000000000000000000000000000007/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x308ad3...d6da84`](./contracts/manta-169/0x308ad3b4712e4a64f798daa34b6f9a205dd6da84/) | RapTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x40f20f...c5c1a2`](./contracts/manta-169/0x40f20fcab8ee140e8246a19541664867a0c5c1a2/) | ReaderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xdc9e8c...2e75f0`](./contracts/manta-169/0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xb71d87...9a8c31`](./contracts/manta-169/0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa1d60a...4a6919`](./contracts/manta-169/0xa1d60a7220c1fb37733978201aab8c9a7c4a6919/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x10e878...17a76c`](./contracts/manta-169/0x10e878adbcbd35e4356f5272ae9537814d17a76c/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1017a0...98b49b`](./contracts/manta-169/0x1017a05dbc857c90457bddc8b2d02940d998b49b/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x895e00...351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x44ed2c...b3bc0e`](./contracts/manta-169/0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xd45244...1bbaf6`](./contracts/manta-169/0xd45244ff30150f05906b3f10aa41d2055d1bbaf6/) | TokenConfigKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0dc076...fad850`](./contracts/manta-169/0x0dc0761d71af3332a42fa2cf885e7c427ffad850/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1808db...5e0732`](./contracts/manta-169/0x1808db4d0539ad603d6defa1ae3745791c5e0732/) | TokensPerIntervalUpdater | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1a303e...003e7d`](./contracts/manta-169/0x1a303ea630f054a0b92787a30b03b0920e003e7d/) | USDR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xea5c75...928bc4`](./contracts/manta-169/0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x48542a...3f1d6c`](./contracts/manta-169/0x48542a36c725aba87067edfefcb7d551ce3f1d6c/) | VaultErrorController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcc5bbc...9f8c84`](./contracts/manta-169/0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84/) | VaultPriceFeedV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x030f89...bece13`](./contracts/manta-169/0x030f89585d9812471dae7262645860f2d8bece13/) | VaultReader | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc5ecf0...947b88`](./contracts/manta-169/0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88/) | VaultReaderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xe84231...967fd9`](./contracts/manta-169/0xe84231ae15fea715dbd31b353f5b45bfea967fd9/) | VaultUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4a58af...959419`](./contracts/manta-169/0x4a58af9033db96d4665fc38593ddfdd78b959419/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 7 |
| standard_library | 10 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
