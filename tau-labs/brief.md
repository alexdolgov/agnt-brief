# Agentic Audit Brief: TAU Labs

⚠️ Lifecycle status: DECLINING - TVL dropped 65.3% over 90 days

## Project Overview

- Project: TAU Labs (`tau-labs`)
- Website: [https://www.628labs.xyz/](https://www.628labs.xyz/)
- Lifecycle: declining (Tier 0, 71.8% below peak)
- Generated: 2026-06-11T03:28:33.634Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: ethereum, plasma
- Contract surface: 179 unique implementations (569 raw deployments)
- DeFi Llama TVL: $4,979,818.69
- On-chain TVL (included contracts): $8,065,727.12
- TVL by chain: Ethereum $7,977,123.73 | Plasma $88,603.39

## Project Description

TAU Labs is a risk curation protocol that deploys and manages PlasmaVaults—smart contract vaults that aggregate user deposits and allocate them across various DeFi strategies to optimize yield and manage risk.

### Architecture

All PlasmaVault instances share common implementation logic via PlasmaVaultBase, and the protocol relies on external infrastructure such as oracles, price feeds, and strategy contracts (e.g., Aave, Compound) to execute its yield strategies.

## Audit Coverage Summary

- Verified implementations audited: 0/179 (0.0%)
- Verified + Unaudited implementations: 179
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 179
- Raw deployments: 569
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $8,065,727.12
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $8,065,727.12 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (179)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PlasmaVaultBase | core_logic | ethereum | 22 deployments: ethereum [`0x08dd57...e48ee8`](./contracts/ethereum-1/0x08dd57a51025a266cecc85154860aa4e71e48ee8/); ethereum `0x29d322...8fafbb`; ethereum `0x2de732...0171ab`; ethereum `0x3151ce...809d90`; ethereum `0x394356...49df44`; ethereum `0x43a32d...4a1e68`; ethereum `0x43ee02...9c7ca2`; ethereum `0x631033...1ae9c0`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x7ef926...6964d2`; ethereum `0x842494...7d5062`; ethereum `0x978141...c7b37b`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xabab98...c18e3e`; ethereum `0xb0f56b...c7a74f`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed`; ethereum `0xc2a119...8d82d4`; ethereum `0xe48cdd...b68dac`; ethereum `0xe9385e...b4fb5f` | ⚠️ Unaudited |
| PlasmaVault | core_logic | ethereum | 19 deployments: ethereum [`0x0552e2...bb6ca8`](./contracts/ethereum-1/0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8/); ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x604117...d434c5`; ethereum `0x60e36a...5ae74c`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xad685f...725706`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xc50b2d...65c64b`; ethereum `0xd36f53...9a1c1d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472`; plasma `0x0a7162...28ed7a` | ⚠️ Unaudited |
| IporToken | token | ethereum | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | ⚠️ Unaudited |
| AccessManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/); ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | ethereum | 4 deployments: ethereum [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/); ethereum `0x17bf30...94095d`; ethereum `0x8d99d6...132aa0`; ethereum `0xff69f7...32aaf8` | ⚠️ Unaudited |
| AmmCloseSwapService | unknown | ethereum | 2 deployments: ethereum [`0x6650de...825ee3`](./contracts/ethereum-1/0x6650de6837839dfcb05d188c50b927b008825ee3/); ethereum `0x7dc23a...10ecb5` | ⚠️ Unaudited |
| AmmCloseSwapServiceDai | unknown | ethereum | 3 deployments: ethereum [`0x072467...1dd183`](./contracts/ethereum-1/0x072467b69354fd3274123c908adbc75f9f1dd183/); ethereum `0x735b3f...6fc3d9`; ethereum `0xe14a72...a849e4` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEth | unknown | ethereum | 2 deployments: ethereum [`0x578ba0...2973c2`](./contracts/ethereum-1/0x578ba09c35532e878764c54e879308dbf82973c2/); ethereum `0xe26126...eb6524` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | ethereum | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdc | unknown | ethereum | 3 deployments: ethereum [`0x128ced...aa747f`](./contracts/ethereum-1/0x128cedfe2134d15ec69cc885d22ad0e5f0aa747f/); ethereum `0x623750...673d95`; ethereum `0x9a9f60...69f8e8` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdt | token | ethereum | 3 deployments: ethereum [`0x11a02a...ab56f9`](./contracts/ethereum-1/0x11a02a63e9142ed929b9fd95357762fc7bab56f9/); ethereum `0x6d0045...d94237`; ethereum `0x8fe90f...743ed2` | ⚠️ Unaudited |
| AmmGovernanceService | unknown | ethereum | 5 deployments: ethereum [`0x4f7ef2...bda46d`](./contracts/ethereum-1/0x4f7ef28c5416b536a7baefb14fdd3dda37bda46d/); ethereum `0x8ab4d1...6e2023`; ethereum `0x8ec9ae...52158d`; ethereum `0xbd7407...95264d`; ethereum `0xbf0a6e...03f4bc` | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | ethereum | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | ⚠️ Unaudited |
| AmmOpenSwapService | unknown | ethereum | 2 deployments: ethereum [`0x4ef45e...8016d1`](./contracts/ethereum-1/0x4ef45eccc64e4bb36b9c46b9ad353855a48016d1/); ethereum `0x78034b...7ae119` | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | ethereum | 2 deployments: ethereum [`0x042ec3...59cd2c`](./contracts/ethereum-1/0x042ec3f075c48cd644797e0af12ba6257c59cd2c/); ethereum `0x0ccccd...3ab361` | ⚠️ Unaudited |
| AmmPoolsLens | core_logic | ethereum | 2 deployments: ethereum [`0x1f44c5...40e04a`](./contracts/ethereum-1/0x1f44c5ada019cbb0729e277775877ccdb940e04a/); ethereum `0xb653ed...940d01` | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | ethereum | [`0xce9680...7db70d`](./contracts/ethereum-1/0xce96800a16791d68ee96706915ead714d67db70d/) | ⚠️ Unaudited |
| AmmPoolsLensEth | core_logic | ethereum | [`0x8bea65...28be1e`](./contracts/ethereum-1/0x8bea65298c3e1a6cbb961a44b720d0216028be1e/) | ⚠️ Unaudited |
| AmmPoolsLensStEth | core_logic | ethereum | [`0xb0a485...24904a`](./contracts/ethereum-1/0xb0a4855134f63bf81f3dc6da38de8894fb24904a/) | ⚠️ Unaudited |
| AmmPoolsLensUsdm | core_logic | ethereum | [`0x326293...eac8eb`](./contracts/ethereum-1/0x326293feb79193e97d63e1ec3d6bcd774beac8eb/) | ⚠️ Unaudited |
| AmmPoolsLensWeEth | core_logic | ethereum | [`0xb0d64c...e165a6`](./contracts/ethereum-1/0xb0d64c0375201911e09b0f8c4d38c5a286e165a6/) | ⚠️ Unaudited |
| AmmPoolsService | core_logic | ethereum | 2 deployments: ethereum [`0x912ae5...98f337`](./contracts/ethereum-1/0x912ae5d95bd86f4ae6e580a0fa14a124c998f337/); ethereum `0x9bcde3...400517` | ⚠️ Unaudited |
| AmmPoolsServiceEth | core_logic | ethereum | [`0xa30845...1a9bed`](./contracts/ethereum-1/0xa30845738443aa2dd6bd0783a47b0af8c01a9bed/) | ⚠️ Unaudited |
| AmmPoolsServiceStEth | core_logic | ethereum | 2 deployments: ethereum [`0x406812...428be1`](./contracts/ethereum-1/0x406812ac6f106f7d53b4181d42342e2565428be1/); ethereum `0xcd96ba...fbebbc` | ⚠️ Unaudited |
| AmmPoolsServiceUsdm | core_logic | ethereum | [`0x5765d0...95294c`](./contracts/ethereum-1/0x5765d00dee4cb808b266a46411059a518795294c/) | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | ethereum | 2 deployments: ethereum [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/); ethereum `0x7b071c...e475ac` | ⚠️ Unaudited |
| AmmStorage | unknown | ethereum | 9 deployments: ethereum [`0x229e0b...7411fe`](./contracts/ethereum-1/0x229e0b9443b1f31d5cd0df69d50b9171667411fe/); ethereum `0x364f11...f5b1ce`; ethereum `0x4508ce...e8c0f0`; ethereum `0x622827...593f2e`; ethereum `0x91c35e...8f6ab1`; ethereum `0x98123c...de36da`; ethereum `0xb3d1c1...924ba5`; ethereum `0xb99f2a...c56e61`; ethereum `0xec6f77...d283e6` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | ethereum | 6 deployments: ethereum [`0x08a8ec...0197c6`](./contracts/ethereum-1/0x08a8ec037df2e54194b397cd7c761631440197c6/); ethereum `0x2b0277...f114d0`; ethereum `0x4f4f16...84ef8c`; ethereum `0x77fe3a...41e3b5`; ethereum `0x95257e...94a281`; ethereum `0x9c9846...701017` | ⚠️ Unaudited |
| AmmSwapsLens | periphery | ethereum | 3 deployments: ethereum [`0x41e347...0172cf`](./contracts/ethereum-1/0x41e34756a7772a4ca1115afbe2e2afbd1b0172cf/); ethereum `0x476c44...2dcd8c`; ethereum `0x5a1cf5...4c50c2` | ⚠️ Unaudited |
| AmmSwapsLensLibBaseV1 | periphery | ethereum | [`0x1decfd...c7032c`](./contracts/ethereum-1/0x1decfd7e774ea8da143e90c14602fe4646c7032c/) | ⚠️ Unaudited |
| AmmTreasury | operational_periphery | ethereum | 9 deployments: ethereum [`0x137000...2e7dc9`](./contracts/ethereum-1/0x137000352b4ed784e8fa8815d225c713ab2e7dc9/); ethereum `0x28bc58...96b687`; ethereum `0x6f4506...dc5944`; ethereum `0x866d6c...a0eb49`; ethereum `0x916202...d3aa48`; ethereum `0xabcb3a...49a82b`; ethereum `0xe9facd...b74dc1`; ethereum `0xeb011b...f88a0c`; ethereum `0xed7d74...4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | operational_periphery | ethereum | 4 deployments: ethereum [`0x060bf7...40556a`](./contracts/ethereum-1/0x060bf70ae6ec15121c819a081e56456d5f40556a/); ethereum `0x390e7e...68aabd`; ethereum `0x9a449e...37123b`; ethereum `0xa19b16...1bfaad` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | operational_periphery | ethereum | 4 deployments: ethereum [`0x30ae18...05153c`](./contracts/ethereum-1/0x30ae182cc30d312dd4f2824c635b8dc5f805153c/); ethereum `0x63395e...8dee4e`; ethereum `0xb1c0cc...44f0c0`; ethereum `0xcc2ff2...d74196` | ⚠️ Unaudited |
| AmmTreasuryEth | operational_periphery | ethereum | [`0xe7193c...50dc22`](./contracts/ethereum-1/0xe7193cac850f0cfaa50c64bb69950cc3bd50dc22/) | ⚠️ Unaudited |
| AssetManagementDai | unknown | ethereum | 2 deployments: ethereum [`0x160dae...cdace3`](./contracts/ethereum-1/0x160daea1e07e50c184e6d6778e943212dfcdace3/); ethereum `0xa6ac8b...96e2b0` | ⚠️ Unaudited |
| AssetManagementLens | periphery | ethereum | 2 deployments: ethereum [`0x1d4c4c...5f6e09`](./contracts/ethereum-1/0x1d4c4c07e34a6b43f104204d243aae084d5f6e09/); ethereum `0xb8dbde...192389` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | ethereum | 2 deployments: ethereum [`0x7aa7b0...9bf260`](./contracts/ethereum-1/0x7aa7b0b738c2570c2f9f892cb7ca5bb89b9bf260/); ethereum `0xd9f0c6...0d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | token | ethereum | 2 deployments: ethereum [`0x6416e3...7f7ddd`](./contracts/ethereum-1/0x6416e385f08421f524e2c7335444e56e897f7ddd/); ethereum `0x8e679c...64d6b5` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | ethereum | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | ⚠️ Unaudited |
| AsyncActionFuse | unknown | ethereum | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | ⚠️ Unaudited |
| BalanceFusesReader | unknown | ethereum | [`0x870e1f...0aec1f`](./contracts/ethereum-1/0x870e1fb75bedbc2efb92857dc2b2cf171a0aec1f/) | ⚠️ Unaudited |
| BurnRequestFeeFuse | unknown | ethereum | [`0x79e8b1...d29ab4`](./contracts/ethereum-1/0x79e8b115bd41baee318c1940f42f1a2d94d29ab4/) | ⚠️ Unaudited |
| CalculateWeightedLpTokenBalanceEthereum | token | ethereum | 3 deployments: ethereum [`0x3843f9...c18915`](./contracts/ethereum-1/0x3843f9b977c5731b0459bb44de6bf8fd3cc18915/); ethereum `0x6df58f...ca5971`; ethereum `0x77bf38...ff549c` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | ethereum | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | ethereum | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | ⚠️ Unaudited |
| CockpitDataProvider | unknown | ethereum | 3 deployments: ethereum [`0x124bc6...0e97dc`](./contracts/ethereum-1/0x124bc6be021d3f9e5fbd6194b2839f6df30e97dc/); ethereum `0x720e64...b144ee`; ethereum `0xacbb7e...cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | ethereum | [`0x0ed13e...8bb5a7`](./contracts/ethereum-1/0x0ed13eec003ea0f51214c4a641a3d0a0718bb5a7/) | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | ethereum | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ⚠️ Unaudited |
| ContextManager | governance | ethereum | 23 deployments: ethereum [`0x0f2e1c...9592b7`](./contracts/ethereum-1/0x0f2e1ce94519a0b0056a243d055352d3119592b7/); ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f` | ⚠️ Unaudited |
| ContextManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/); ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x78f46f...5a4357`](./contracts/ethereum-1/0x78f46f2c4aaa83a4c26dc5ac05d272f8f55a4357/); ethereum `0x8b94c1...d0b303` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | ethereum | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | ethereum | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | ethereum | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | ethereum | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | ethereum | 2 deployments: ethereum [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/); ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | ethereum | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | ⚠️ Unaudited |
| Erc4626BalanceFuse | unknown | ethereum | 18 deployments: ethereum [`0x10e2c2...cdb336`](./contracts/ethereum-1/0x10e2c21205c180654b8eea5b75c3a51014cdb336/); ethereum `0x1469e4...512ee8`; ethereum `0x19e332...6e7906`; ethereum `0x2c10c3...c75d5e`; ethereum `0x2e3266...79e7dd`; ethereum `0x318dc5...0c2edf`; ethereum `0x32971e...ecf8e7`; ethereum `0x560c83...7772f0`; ethereum `0x5d4474...2b9a9a`; ethereum `0x806b55...23fb94`; ethereum `0x8c8f2a...ce78af`; ethereum `0x933bff...f8749b`; ethereum `0xa0777a...0e0cee`; ethereum `0xa72f83...ee92cf`; ethereum `0xcb6bb5...ba6566`; ethereum `0xe1fd88...a9a7f3`; ethereum `0xf3d20c...27bf11`; ethereum `0xf9a1f7...1308fe` | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/); ethereum `0xdbffc3...7f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0xe08aff...d1aa61`](./contracts/ethereum-1/0xe08aff4910fb61acc2eacb03b0a6132b01d1aa61/); ethereum `0xf58fcc...0c0fdc` | ⚠️ Unaudited |
| Erc4626SupplyFuse | unknown | ethereum | 18 deployments: ethereum [`0x01d4fa...d45cdf`](./contracts/ethereum-1/0x01d4fa645f3b98fc9d870dd687de3665f0d45cdf/); ethereum `0x06b53a...a5d3b2`; ethereum `0x12fd0e...515870`; ethereum `0x361baf...1c9434`; ethereum `0x53ecc2...c81a6b`; ethereum `0x59e58d...d38f89`; ethereum `0x5e58d1...fa6a88`; ethereum `0x62679b...2649e8`; ethereum `0x6b9489...7bfb90`; ethereum `0x83be46...e4e754`; ethereum `0x87e3b7...cd590b`; ethereum `0x95acdf...35485d`; ethereum `0x970b4f...836dfd`; ethereum `0xbd8a19...47ca9f`; ethereum `0xd6fa88...43b783`; ethereum `0xe49207...80b4ae`; ethereum `0xf16119...73d8e3`; ethereum `0xf492e2...7bf5e7` | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | ethereum | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | ethereum | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ⚠️ Unaudited |
| EthPlusPriceFeed | operational_periphery | ethereum | [`0xd529f4...580199`](./contracts/ethereum-1/0xd529f458bc879be231e36ec62968416c07580199/) | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | ethereum | 2 deployments: ethereum [`0xa60785...eeacdc`](./contracts/ethereum-1/0xa607855ec4881b5f25711d1404e0cddeadeeacdc/); ethereum `0xae9a37...7baabd` | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | ethereum | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | ⚠️ Unaudited |
| EulerV2BorrowFuse | core_logic | ethereum | 2 deployments: ethereum [`0x20c782...9e32c2`](./contracts/ethereum-1/0x20c782c94800d709541660e322035785c89e32c2/); ethereum `0x6b339a...f7f2f6` | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | ethereum | 2 deployments: ethereum [`0x07d809...e36514`](./contracts/ethereum-1/0x07d80997d57ad9489a4c48f6134df91822e36514/); ethereum `0xf58d96...672618` | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | ethereum | 2 deployments: ethereum [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/); ethereum `0x4dca6f...ec6c25` | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | ethereum | 3 deployments: ethereum [`0x225d3e...7e7bf0`](./contracts/ethereum-1/0x225d3e01d3ba0ddf904e1fbb46256f7d3a7e7bf0/); ethereum `0x9425cc...57f217`; ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | ethereum | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ⚠️ Unaudited |
| FeeManager | governance | ethereum | 3 deployments: ethereum [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/); ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255` | ⚠️ Unaudited |
| FeeManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/); ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FixedAirdrop | operational_periphery | ethereum | [`0x9a94e4...7c4539`](./contracts/ethereum-1/0x9a94e4d777f81de7e390d5f93b40269cdf7c4539/) | ⚠️ Unaudited |
| FlowsService | unknown | ethereum | [`0xd3486d...e665ac`](./contracts/ethereum-1/0xd3486d81d52b52125b9fb1ae9d674645ece665ac/) | ⚠️ Unaudited |
| FluidInstadappClaimFuse | unknown | ethereum | [`0x59da0c...788c25`](./contracts/ethereum-1/0x59da0ce05cfcf0da3257a96446e5b98edb788c25/) | ⚠️ Unaudited |
| FluidInstadappStakingBalanceFuse | unknown | ethereum | [`0xe9d0e2...a16aba`](./contracts/ethereum-1/0xe9d0e294a0524962c43eedfa935f1e8112a16aba/) | ⚠️ Unaudited |
| FluidInstadappStakingSupplyFuse | unknown | ethereum | [`0xa61324...1d590f`](./contracts/ethereum-1/0xa613249ef6d0c3df83d0593abb63e0638d1d590f/) | ⚠️ Unaudited |
| FluidProofClaimFuse | unknown | ethereum | [`0x30ade0...558fe0`](./contracts/ethereum-1/0x30ade01153cb697bb751cacb6392f49c22558fe0/) | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | 6 deployments: ethereum [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/); ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xcd0590...d9b852`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| GearboxV3FarmBalanceFuse | unknown | ethereum | [`0xe88982...0b45f2`](./contracts/ethereum-1/0xe88982097ecdf1dcfc4d500e3392ee0eb70b45f2/) | ⚠️ Unaudited |
| GearboxV3FarmDTokenClaimFuse | token | ethereum | [`0xf710b1...e67072`](./contracts/ethereum-1/0xf710b1daab1623feeb78d32bf34e288c3ee67072/) | ⚠️ Unaudited |
| GearboxV3FarmSupplyFuse | unknown | ethereum | [`0xf6016a...61c34e`](./contracts/ethereum-1/0xf6016a183745c86dd584488c9e75c00bbd61c34e/) | ⚠️ Unaudited |
| HarvestDoHardWorkFuse | operational_periphery | ethereum | [`0xda45fe...b43e50`](./contracts/ethereum-1/0xda45fe8099358bba400554c9b640170246b43e50/) | ⚠️ Unaudited |
| IporFusionAccessManager | governance | ethereum | 30 deployments: ethereum [`0x1dc356...79ae8a`](./contracts/ethereum-1/0x1dc356117aa5dcf8ce836aee851dafd04479ae8a/); ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IporOracle | operational_periphery | ethereum | 8 deployments: ethereum [`0x20a5d2...b2cdd7`](./contracts/ethereum-1/0x20a5d253d6e79972516f5061e2ae5d49a1b2cdd7/); ethereum `0x421c69...8a6876`; ethereum `0x7ff633...b1091c`; ethereum `0x9c2a4e...51d64c`; ethereum `0xbed8a5...6d8562`; ethereum `0xcea315...c58f54`; ethereum `0xcf7124...d71221`; ethereum `0xe76a43...069906` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | operational_periphery | ethereum | 2 deployments: ethereum [`0x161c5f...c11df0`](./contracts/ethereum-1/0x161c5f5cc8f1e06aa6c65b9b3473cfb4fec11df0/); ethereum `0x7ebc09...f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouter | adapter | ethereum | 8 deployments: ethereum [`0x114f33...130132`](./contracts/ethereum-1/0x114f331f424ed559a0a7c73c041198f2a3130132/); ethereum `0x1c26ab...37a28d`; ethereum `0x38a409...daaee2`; ethereum `0x47f13d...4635d9`; ethereum `0x695264...7d214c`; ethereum `0xc17548...82b838`; ethereum `0xf4d002...1cffbd`; ethereum `0xf9f580...eec3de` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | adapter | ethereum | 2 deployments: ethereum [`0x16d104...3c26fd`](./contracts/ethereum-1/0x16d104009964e694761c0bf09d7be49b7e3c26fd/); ethereum `0xcc735c...9461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xa5f814...736af7`](./contracts/ethereum-1/0xa5f814872cc000b0b71d1fca822cf07acb736af7/); ethereum `0xfb22c1...1d11b8` | ⚠️ Unaudited |
| IporWeighted | unknown | ethereum | 8 deployments: ethereum [`0x229253...518fbc`](./contracts/ethereum-1/0x229253cf61e706da502558047a48572d54518fbc/); ethereum `0x32d8d5...65ff49`; ethereum `0x53b4c5...b288d9`; ethereum `0x8712a2...5669bb`; ethereum `0x9d4bd8...e85140`; ethereum `0xb00c99...9efe34`; ethereum `0xba610f...edcc7a`; ethereum `0xed21f0...44a81d` | ⚠️ Unaudited |
| IpToken | token | ethereum | 3 deployments: ethereum [`0x9ac509...fda4cb`](./contracts/ethereum-1/0x9ac5092e027f0d9f24b4a1065c70973f3afda4cb/); ethereum `0xac5b04...166125`; ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | ethereum | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | ⚠️ Unaudited |
| IpTokenUsdt | token | ethereum | 2 deployments: ethereum [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/); ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| IvTokenDai | token | ethereum | [`0xf93e0e...009b26`](./contracts/ethereum-1/0xf93e0edc76f3147c63f53e7ed245330b96009b26/) | ⚠️ Unaudited |
| IvTokenUsdt | token | ethereum | 2 deployments: ethereum [`0xe176f8...52a95c`](./contracts/ethereum-1/0xe176f879ee386b4a4bf31b5704b500854952a95c/); ethereum `0xe966d1...e19048` | ⚠️ Unaudited |
| JosephDai | unknown | ethereum | 4 deployments: ethereum [`0x086d4d...b65045`](./contracts/ethereum-1/0x086d4daab14741b195dee65aff050ba184b65045/); ethereum `0x6f18b9...00787d`; ethereum `0x7cd10f...be5d04`; ethereum `0x9cb5e8...d3cfd8` | ⚠️ Unaudited |
| JosephUsdt | token | ethereum | 5 deployments: ethereum [`0x33c5a4...4324ac`](./contracts/ethereum-1/0x33c5a44fd6e76fc2b50a9187cfeac336a74324ac/); ethereum `0x470c3a...baa37f`; ethereum `0x8ae47c...1c319b`; ethereum `0xc52569...133277`; ethereum `0xd29f9b...9fc1b0` | ⚠️ Unaudited |
| LiquidityMining | unknown | ethereum | 6 deployments: ethereum [`0x22363b...b9466d`](./contracts/ethereum-1/0x22363bb570ed9eb039b2f153a1f0e50aceb9466d/); ethereum `0x32ab94...abeae3`; ethereum `0x758e7d...621a7e`; ethereum `0xac0dcb...ab644e`; ethereum `0xe00834...0efc02`; ethereum `0xfa556d...f51b1c` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | ethereum | 3 deployments: ethereum [`0x0a06ec...c45edc`](./contracts/ethereum-1/0x0a06ec4004c02fd514ee02c455d20062f7c45edc/); ethereum `0xb0984f...5ff846`; ethereum `0xcc3fc4...0ff366` | ⚠️ Unaudited |
| LiquidityMiningLens | periphery | ethereum | [`0x769d54...b39e98`](./contracts/ethereum-1/0x769d54d25dd9da2159fa690e67b27484eeb39e98/) | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | ethereum | [`0xf71339...9daa97`](./contracts/ethereum-1/0xf713395a26400c2ecd4af9faf0f6ad7c569daa97/) | ⚠️ Unaudited |
| MerklClaimFuse | unknown | ethereum | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | ethereum | 2 deployments: ethereum [`0x1bfb9e...22e050`](./contracts/ethereum-1/0x1bfb9e4b7d849c641e7ff896849a4d446322e050/); ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | ethereum | 2 deployments: ethereum [`0x1b66a7...209a3c`](./contracts/ethereum-1/0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c/); ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | ethereum | 2 deployments: ethereum [`0x99bc01...bec386`](./contracts/ethereum-1/0x99bc0136ba3cc8d1a920e68eadff4fd899bec386/); ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 2 deployments: ethereum [`0x85b23b...2cbe74`](./contracts/ethereum-1/0x85b23b710c74685484f7dda47746eb7d272cbe74/); ethereum `0xb56e99...253c2c` | ⚠️ Unaudited |
| MiltonDai | unknown | ethereum | 10 deployments: ethereum [`0x16d236...4dd42e`](./contracts/ethereum-1/0x16d2369a3206d084ce2c3e4a7843adf19c4dd42e/); ethereum `0x1fbd08...0ff864`; ethereum `0x22d87b...e9a4d6`; ethereum `0x7a9990...00073a`; ethereum `0x9def0a...1143c7`; ethereum `0xb1cee7...8fea67`; ethereum `0xb6a547...ac11f2`; ethereum `0xbf71dd...ce79d5`; ethereum `0xcd7e5e...bc03be`; ethereum `0xf5f62c...03b5ce` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | ethereum | 2 deployments: ethereum [`0x7520c9...25015b`](./contracts/ethereum-1/0x7520c967cad6d872c8b0fa1444ed3ed26025015b/); ethereum `0xd5ef0d...5b236c` | ⚠️ Unaudited |
| MiltonSpreadModelDai | unknown | ethereum | 2 deployments: ethereum [`0x9cf78e...68c5d9`](./contracts/ethereum-1/0x9cf78e518507b8922634a3ac02e8d8136768c5d9/); ethereum `0xfb2ee9...e95318` | ⚠️ Unaudited |
| MiltonSpreadModelUsdc | unknown | ethereum | 2 deployments: ethereum [`0x2a8998...5600ac`](./contracts/ethereum-1/0x2a8998bfbecfd39136572def74c6df6f9e5600ac/); ethereum `0x6bcb29...245467` | ⚠️ Unaudited |
| MiltonSpreadModelUsdt | token | ethereum | 4 deployments: ethereum [`0x3eea8a...5eca9e`](./contracts/ethereum-1/0x3eea8a8967c3c56967f46597613ccc633b5eca9e/); ethereum `0x49f282...a3a8b0`; ethereum `0xd49b20...4efdc8`; ethereum `0xedaaf1...beac3d` | ⚠️ Unaudited |
| MiltonStorage | unknown | ethereum | 2 deployments: ethereum [`0x5f4829...94c1d2`](./contracts/ethereum-1/0x5f4829b14a27e73dcbd1c9238d8c4fc9a594c1d2/); ethereum `0x644149...831069` | ⚠️ Unaudited |
| MiltonUsdc | unknown | ethereum | 3 deployments: ethereum [`0x371f6e...159d29`](./contracts/ethereum-1/0x371f6eb514eb8de60f29e4c246bfba1108159d29/); ethereum `0x6a259c...e7eb48`; ethereum `0xdb75be...974579` | ⚠️ Unaudited |
| MiltonUsdt | token | ethereum | 11 deployments: ethereum [`0x0d5522...dc59b2`](./contracts/ethereum-1/0x0d55221929cf67c8ca060f799a6bb1d0d9dc59b2/); ethereum `0x473285...a197b0`; ethereum `0x72f856...906283`; ethereum `0x80def4...4fa53e`; ethereum `0x8fcd17...ba8fcb`; ethereum `0xb92635...328b21`; ethereum `0xccadc4...a905e3`; ethereum `0xd15b8f...c53165`; ethereum `0xe37cfe...ef922b`; ethereum `0xe3c67a...099195`; ethereum `0xf739f3...f2c4db` | ⚠️ Unaudited |
| MiningCalculationAccountPowerUp | unknown | ethereum | 2 deployments: ethereum [`0x9a293a...a28458`](./contracts/ethereum-1/0x9a293ac079fdeaa54fcf3810e07b914672a28458/); ethereum `0xe8e51e...7ea585` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | ethereum | [`0xc13f3f...1cb691`](./contracts/ethereum-1/0xc13f3fd20556a595990c35612e9e5c1c071cb691/) | ⚠️ Unaudited |
| OneValuePriceFeed | operational_periphery | ethereum | [`0xd7aa52...0e61cf`](./contracts/ethereum-1/0xd7aa529ce055a1f745a40c1eea98ccb9b90e61cf/) | ⚠️ Unaudited |
| OraclePublisher | operational_periphery | ethereum | 2 deployments: ethereum [`0x254a66...b505ff`](./contracts/ethereum-1/0x254a663790cdaff53204c7072cf0c75231b505ff/); ethereum `0xa735b8...7dd508` | ⚠️ Unaudited |
| PauseFunctionPreHook | unknown | ethereum | [`0x7846be...984d59`](./contracts/ethereum-1/0x7846bed0b55048db0e6a5388b89e92f091984d59/) | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | ethereum | 4 deployments: ethereum [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/); ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PlasmaVaultRedeemFromRequestFuse | core_logic | ethereum | [`0x906af6...53af0d`](./contracts/ethereum-1/0x906af6a42079adaf1abd92f924a5d4263653af0d/) | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | core_logic | ethereum | [`0x713038...e09542`](./contracts/ethereum-1/0x7130383298822097531cf5cc5e3414dda1e09542/) | ⚠️ Unaudited |
| PowerToken | token | ethereum | 4 deployments: ethereum [`0x586ac8...6d49eb`](./contracts/ethereum-1/0x586ac86675bd933c4b9a26c55b6e62b6496d49eb/); ethereum `0x78dbf1...84a0f7`; ethereum `0xd72915...95409f`; ethereum `0xf4725f...7f3ab1` | ⚠️ Unaudited |
| PowerTokenLens | token | ethereum | [`0x5a4fc8...d21ec3`](./contracts/ethereum-1/0x5a4fc8f98ca356b7e957d18c155bc62e32d21ec3/) | ⚠️ Unaudited |
| PreHooksInfoReader | periphery | ethereum | [`0x1ecd96...e19821`](./contracts/ethereum-1/0x1ecd96fd20f2c1a32e5906cccaec87e8afe19821/) | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/); ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddleware | operational_periphery | ethereum | 3 deployments: ethereum [`0x09321c...024da2`](./contracts/ethereum-1/0x09321c70b4e51f3f21bdad79c61d11fba1024da2/); ethereum `0x6bf0ff...0385c9`; ethereum `0xb7018c...66f2f7` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | operational_periphery | ethereum | 15 deployments: ethereum [`0x07fc09...062930`](./contracts/ethereum-1/0x07fc092fa44c52516decd5f7545061316d062930/); ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | operational_periphery | ethereum | 2 deployments: ethereum [`0xc9f32d...d664c6`](./contracts/ethereum-1/0xc9f32d65a278b012371858fd3cde315b12d664c6/); ethereum `0xeba87a...f9317c` | ⚠️ Unaudited |
| PtPriceFeedFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x1cb493...26007c`](./contracts/ethereum-1/0x1cb493392367a0283090bf965503a9588d26007c/); ethereum `0xe2a264...52db9b` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | ethereum | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | ethereum | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | ⚠️ Unaudited |
| RewardsClaimManager | governance | ethereum | 25 deployments: ethereum [`0x11cbc3...10367f`](./contracts/ethereum-1/0x11cbc30008dde93db992ac0190848852d310367f/); ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61` | ⚠️ Unaudited |
| RewardsManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/); ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| SDaiPriceFeedEthereum | operational_periphery | ethereum | [`0x974672...70805d`](./contracts/ethereum-1/0x974672fa995917fec4a5c9db32784d36c370805d/) | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | ethereum | [`0x086aca...17998f`](./contracts/ethereum-1/0x086aca94aa413932c6ac5e09b863ac2cbe17998f/) | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | ethereum | [`0x1d24b8...13005b`](./contracts/ethereum-1/0x1d24b8d16d87a570e8539c2849a23bbc5f13005b/) | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | ethereum | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | ethereum | [`0x897d96...defa56`](./contracts/ethereum-1/0x897d96a7c91e2f1b8213f240cad031f9acdefa56/) | ⚠️ Unaudited |
| SoapIndicatorRebalanceLogic | unknown | ethereum | 6 deployments: ethereum [`0x213534...4d7100`](./contracts/ethereum-1/0x21353473a7847bd8e44b0ab5e5d466b0cb4d7100/); ethereum `0x4c9a6f...64a2b0`; ethereum `0x9cae0d...c2ce95`; ethereum `0xb70a2e...8d99e6`; ethereum `0xb933b5...0cc060`; ethereum `0xea87d3...64e0a1` | ⚠️ Unaudited |
| Spread28Days | unknown | ethereum | [`0xb8d531...e8dad5`](./contracts/ethereum-1/0xb8d531ea16caf1cf7b7cbc333e8963db59e8dad5/) | ⚠️ Unaudited |
| Spread60Days | unknown | ethereum | [`0x36618c...9a81ab`](./contracts/ethereum-1/0x36618ce1615305f3b99eeb9df8d4272e729a81ab/) | ⚠️ Unaudited |
| Spread90Days | unknown | ethereum | [`0x22c1cf...7795d5`](./contracts/ethereum-1/0x22c1cf8fcde74a373791863953b8c9ab417795d5/) | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | ethereum | [`0x768762...a358fb`](./contracts/ethereum-1/0x768762712eca97bc9ec930320d3ee0bd91a358fb/) | ⚠️ Unaudited |
| SpreadCloseSwapService | unknown | ethereum | [`0x948548...5dcacd`](./contracts/ethereum-1/0x948548414a364c7d6f379ed73aeddb3c795dcacd/) | ⚠️ Unaudited |
| SpreadRouter | adapter | ethereum | 3 deployments: ethereum [`0x11cc7a...81ede2`](./contracts/ethereum-1/0x11cc7a3b0519ad10542907d985e6b0780281ede2/); ethereum `0xaa14eb...0c90a8`; ethereum `0xac1c86...2338ed` | ⚠️ Unaudited |
| SpreadStorageLens | periphery | ethereum | [`0xb50c61...6c12c6`](./contracts/ethereum-1/0xb50c618d63806ec1594547ecdb3e97737d6c12c6/) | ⚠️ Unaudited |
| SpreadStorageService | unknown | ethereum | [`0x45336f...f1493e`](./contracts/ethereum-1/0x45336f3fa7b0f6e030f60eada71de147bff1493e/) | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | ethereum | [`0x0c59d9...1c3816`](./contracts/ethereum-1/0x0c59d9cd3859673edc70b0bcf66e2715831c3816/) | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | ethereum | [`0x7ec22c...77defc`](./contracts/ethereum-1/0x7ec22c4defe53ec35f03f0b6468ec319c577defc/) | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | ethereum | [`0x5be6e7...ce3c1e`](./contracts/ethereum-1/0x5be6e757763a3b7106d211df5017823366ce3c1e/) | ⚠️ Unaudited |
| StakeService | unknown | ethereum | 2 deployments: ethereum [`0x379038...36f6c7`](./contracts/ethereum-1/0x3790383f8685b439391dc1bc56f7b3f82236f6c7/); ethereum `0xf83027...deafea` | ⚠️ Unaudited |
| StanleyDai | unknown | ethereum | 2 deployments: ethereum [`0x8f0279...13a817`](./contracts/ethereum-1/0x8f0279e4a5d3447e6dd9b536e03504f20313a817/); ethereum `0xadeb2f...3c1872` | ⚠️ Unaudited |
| StanleyDsrDai | unknown | ethereum | [`0xe945ef...a339e4`](./contracts/ethereum-1/0xe945ef2449a22958267c67a7df63519454a339e4/) | ⚠️ Unaudited |
| StanleyUsdc | unknown | ethereum | [`0xb512e3...14114b`](./contracts/ethereum-1/0xb512e32e56f270e9a1dbd56be6fa7baf0014114b/) | ⚠️ Unaudited |
| StanleyUsdt | token | ethereum | [`0xb6923e...5903d6`](./contracts/ethereum-1/0xb6923eaa3cd97c6f4369c8a40bd9324ffa5903d6/) | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | ethereum | 2 deployments: ethereum [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/); ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| StrategyAave | core_logic | ethereum | 3 deployments: ethereum [`0x526d00...f1f62f`](./contracts/ethereum-1/0x526d0047725d48bbc6e24c7b82a3e47c1af1f62f/); ethereum `0x58703d...c5127d`; ethereum `0x77fcae...ba028f` | ⚠️ Unaudited |
| StrategyCompound | core_logic | ethereum | 3 deployments: ethereum [`0x87cef1...9fc774`](./contracts/ethereum-1/0x87cef19aca214d12082e201e6130432df39fc774/); ethereum `0xe4cd9a...9ab5b1`; ethereum `0xe5257c...82f526` | ⚠️ Unaudited |
| StrategyDsrDai | core_logic | ethereum | 3 deployments: ethereum [`0xc26be5...97239c`](./contracts/ethereum-1/0xc26be51e50a358ec6d366147d78ab94e9597239c/); ethereum `0xceceb6...60ec2d`; ethereum `0xd45763...44d6db` | ⚠️ Unaudited |
| SwapExecutorEth | unknown | ethereum | [`0x5e3654...1bd1c4`](./contracts/ethereum-1/0x5e3654082406519e35a5426bb54f29d2651bd1c4/) | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | ethereum | 2 deployments: ethereum [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/); ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | ethereum | [`0x5b1a6b...41f537`](./contracts/ethereum-1/0x5b1a6b2e6af64e74275015a65687de0ca941f537/) | ⚠️ Unaudited |
| TradingCompetitionRewards | unknown | ethereum | 2 deployments: ethereum [`0x0aa4a0...05f824`](./contracts/ethereum-1/0x0aa4a0706fc8196710203ab097db97f96f05f824/); ethereum `0x3d1438...5623e6` | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | ethereum | 3 deployments: ethereum [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/); ethereum `0xd932d4...f2dbf0`; ethereum `0xee9a18...218768` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | ethereum | 3 deployments: ethereum [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/); ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | ethereum | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | ethereum | [`0x0cf053...fc1a5c`](./contracts/ethereum-1/0x0cf053385492fef81e538f849e1e5308befc1a5c/) | ⚠️ Unaudited |
| UpdateWithdrawManagerMaintenanceFuse | operational_periphery | ethereum | [`0x74ca34...0bb0d0`](./contracts/ethereum-1/0x74ca34c2c47d0865856a54060246ab736a0bb0d0/) | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | ethereum | [`0x8771e2...15d48b`](./contracts/ethereum-1/0x8771e28451f0a2b891b3401c94bcfa272215d48b/) | ⚠️ Unaudited |
| VestingAirdrop | operational_periphery | ethereum | [`0x87858b...3e20e0`](./contracts/ethereum-1/0x87858b848c4b64bda3d694a554c5188f4c3e20e0/) | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | ethereum | 3 deployments: ethereum [`0x30378c...125151`](./contracts/ethereum-1/0x30378c767a5f2c444287bcbdbdb29a73af125151/); ethereum `0xabd643...b4374d`; ethereum `0xfa5f2e...a7d8db` | ⚠️ Unaudited |
| WithdrawManager | operational_periphery | ethereum | 26 deployments: ethereum [`0x0a78c1...336d2d`](./contracts/ethereum-1/0x0a78c1a2d99f1c9a03277a7c64734b7ffb336d2d/); ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/); ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
| WrappedPlasmaVault | core_logic | ethereum | 2 deployments: ethereum [`0x74714b...8b2c12`](./contracts/ethereum-1/0x74714bc6fbf7c2dfabc7650dd40e97f05e8b2c12/); ethereum `0x757e1b...fb7058` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | registry | ethereum | 2 deployments: ethereum [`0x3f68a6...3311f5`](./contracts/ethereum-1/0x3f68a6a4fca2e6b85d041a53eb4090f6ac3311f5/); ethereum `0xb17a9d...f353c8` | ⚠️ Unaudited |
| WstETHPriceFeedEthereum | operational_periphery | ethereum | [`0x4329e2...c5d8b0`](./contracts/ethereum-1/0x4329e2178d41d058cf2808c11436a9e83bc5d8b0/) | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | ethereum | 5 deployments: ethereum [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/); ethereum `0x48bd85...b1d1e6`; ethereum `0x759ddf...048e6e`; ethereum `0xb5c14b...0be9c9`; ethereum `0xbc2907...474efb` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x08dd57...e48ee8`](./contracts/ethereum-1/0x08dd57a51025a266cecc85154860aa4e71e48ee8/) | PlasmaVaultBase | core_logic | $6,332,416.18 | Verified native implementation with $6,332,416.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0552e2...bb6ca8`](./contracts/ethereum-1/0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8/) | PlasmaVault | core_logic | $942,988.95 | Verified native implementation with $942,988.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | IporToken | token | $790,322.00 | Verified native implementation with $790,322.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/) | AccessManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/) | AmmCloseSwapLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6650de...825ee3`](./contracts/ethereum-1/0x6650de6837839dfcb05d188c50b927b008825ee3/) | AmmCloseSwapService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | AmmCloseSwapServiceStEthBaseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | AmmGovernanceServiceBaseV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f44c5...40e04a`](./contracts/ethereum-1/0x1f44c5ada019cbb0729e277775877ccdb940e04a/) | AmmPoolsLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bea65...28be1e`](./contracts/ethereum-1/0x8bea65298c3e1a6cbb961a44b720d0216028be1e/) | AmmPoolsLensEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0a485...24904a`](./contracts/ethereum-1/0xb0a4855134f63bf81f3dc6da38de8894fb24904a/) | AmmPoolsLensStEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0d64c...e165a6`](./contracts/ethereum-1/0xb0d64c0375201911e09b0f8c4d38c5a286e165a6/) | AmmPoolsLensWeEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x912ae5...98f337`](./contracts/ethereum-1/0x912ae5d95bd86f4ae6e580a0fa14a124c998f337/) | AmmPoolsService | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa30845...1a9bed`](./contracts/ethereum-1/0xa30845738443aa2dd6bd0783a47b0af8c01a9bed/) | AmmPoolsServiceEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/) | AmmPoolsServiceWeEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41e347...0172cf`](./contracts/ethereum-1/0x41e34756a7772a4ca1115afbe2e2afbd1b0172cf/) | AmmSwapsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1decfd...c7032c`](./contracts/ethereum-1/0x1decfd7e774ea8da143e90c14602fe4646c7032c/) | AmmSwapsLensLibBaseV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x060bf7...40556a`](./contracts/ethereum-1/0x060bf70ae6ec15121c819a081e56456d5f40556a/) | AmmTreasuryBaseV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d4c4c...5f6e09`](./contracts/ethereum-1/0x1d4c4c07e34a6b43f104204d243aae084d5f6e09/) | AssetManagementLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6416e3...7f7ddd`](./contracts/ethereum-1/0x6416e385f08421f524e2c7335444e56e897f7ddd/) | AssetManagementUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | AsyncActionBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | AsyncActionFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x870e1f...0aec1f`](./contracts/ethereum-1/0x870e1fb75bedbc2efb92857dc2b2cf171a0aec1f/) | BalanceFusesReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79e8b1...d29ab4`](./contracts/ethereum-1/0x79e8b115bd41baee318c1940f42f1a2d94d29ab4/) | BurnRequestFeeFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3843f9...c18915`](./contracts/ethereum-1/0x3843f9b977c5731b0459bb44de6bf8fd3cc18915/) | CalculateWeightedLpTokenBalanceEthereum | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | CallbackHandlerEuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | CallbackHandlerReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124bc6...0e97dc`](./contracts/ethereum-1/0x124bc6be021d3f9e5fbd6194b2839f6df30e97dc/) | CockpitDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ConfigureInstantWithdrawalFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2e1c...9592b7`](./contracts/ethereum-1/0x0f2e1ce94519a0b0056a243d055352d3119592b7/) | ContextManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/) | ContextManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78f46f...5a4357`](./contracts/ethereum-1/0x78f46f2c4aaa83a4c26dc5ac05d272f8f55a4357/) | DualCrossReferencePriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | EbisuAdjustInterestRateFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | EbisuAdjustTroveFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | EbisuWethEthAdapterAddressReader | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | EbisuZapperBalanceFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | EbisuZapperLeverModifyFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e2c2...cdb336`](./contracts/ethereum-1/0x10e2c21205c180654b8eea5b75c3a51014cdb336/) | Erc4626BalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/) | ERC4626PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe08aff...d1aa61`](./contracts/ethereum-1/0xe08aff4910fb61acc2eacb03b0a6132b01d1aa61/) | ERC4626PriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ERC4626ZapIn | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ERC4626ZapInWithNativeToken | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60785...eeacdc`](./contracts/ethereum-1/0xa607855ec4881b5f25711d1404e0cddeadeeacdc/) | EulerV2BalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | EulerV2BatchFuse | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/) | EulerV2ControllerFuse | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ExchangeRateValidatorPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/) | FeeManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a94e4...7c4539`](./contracts/ethereum-1/0x9a94e4d777f81de7e390d5f93b40269cdf7c4539/) | FixedAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9d0e2...a16aba`](./contracts/ethereum-1/0xe9d0e294a0524962c43eedfa935f1e8112a16aba/) | FluidInstadappStakingBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa61324...1d590f`](./contracts/ethereum-1/0xa613249ef6d0c3df83d0593abb63e0638d1d590f/) | FluidInstadappStakingSupplyFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ade0...558fe0`](./contracts/ethereum-1/0x30ade01153cb697bb751cacb6392f49c22558fe0/) | FluidProofClaimFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/) | FusionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe88982...0b45f2`](./contracts/ethereum-1/0xe88982097ecdf1dcfc4d500e3392ee0eb70b45f2/) | GearboxV3FarmBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda45fe...b43e50`](./contracts/ethereum-1/0xda45fe8099358bba400554c9b640170246b43e50/) | HarvestDoHardWorkFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dc356...79ae8a`](./contracts/ethereum-1/0x1dc356117aa5dcf8ce836aee851dafd04479ae8a/) | IporFusionAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a5d2...b2cdd7`](./contracts/ethereum-1/0x20a5d253d6e79972516f5061e2ae5d49a1b2cdd7/) | IporOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ac509...fda4cb`](./contracts/ethereum-1/0x9ac5092e027f0d9f24b4a1065c70973f3afda4cb/) | IpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | IpTokenDai | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/) | IpTokenUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf93e0e...009b26`](./contracts/ethereum-1/0xf93e0edc76f3147c63f53e7ed245330b96009b26/) | IvTokenDai | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe176f8...52a95c`](./contracts/ethereum-1/0xe176f879ee386b4a4bf31b5704b500854952a95c/) | IvTokenUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22363b...b9466d`](./contracts/ethereum-1/0x22363bb570ed9eb039b2f153a1f0e50aceb9466d/) | LiquidityMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a06ec...c45edc`](./contracts/ethereum-1/0x0a06ec4004c02fd514ee02c455d20062f7c45edc/) | LiquidityMiningEthereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x769d54...b39e98`](./contracts/ethereum-1/0x769d54d25dd9da2159fa690e67b27484eeb39e98/) | LiquidityMiningLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | MerklClaimFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85b23b...2cbe74`](./contracts/ethereum-1/0x85b23b710c74685484f7dda47746eb7d272cbe74/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d236...4dd42e`](./contracts/ethereum-1/0x16d2369a3206d084ce2c3e4a7843adf19c4dd42e/) | MiltonDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cf78e...68c5d9`](./contracts/ethereum-1/0x9cf78e518507b8922634a3ac02e8d8136768c5d9/) | MiltonSpreadModelDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f4829...94c1d2`](./contracts/ethereum-1/0x5f4829b14a27e73dcbd1c9238d8c4fc9a594c1d2/) | MiltonStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x371f6e...159d29`](./contracts/ethereum-1/0x371f6eb514eb8de60f29e4c246bfba1108159d29/) | MiltonUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d5522...dc59b2`](./contracts/ethereum-1/0x0d55221929cf67c8ca060f799a6bb1d0d9dc59b2/) | MiltonUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a293a...a28458`](./contracts/ethereum-1/0x9a293ac079fdeaa54fcf3810e07b914672a28458/) | MiningCalculationAccountPowerUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7aa52...0e61cf`](./contracts/ethereum-1/0xd7aa529ce055a1f745a40c1eea98ccb9b90e61cf/) | OneValuePriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x254a66...b505ff`](./contracts/ethereum-1/0x254a663790cdaff53204c7072cf0c75231b505ff/) | OraclePublisher | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7846be...984d59`](./contracts/ethereum-1/0x7846bed0b55048db0e6a5388b89e92f091984d59/) | PauseFunctionPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/) | PlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x906af6...53af0d`](./contracts/ethereum-1/0x906af6a42079adaf1abd92f924a5d4263653af0d/) | PlasmaVaultRedeemFromRequestFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x713038...e09542`](./contracts/ethereum-1/0x7130383298822097531cf5cc5e3414dda1e09542/) | PlasmaVaultRequestSharesFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x586ac8...6d49eb`](./contracts/ethereum-1/0x586ac86675bd933c4b9a26c55b6e62b6496d49eb/) | PowerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a4fc8...d21ec3`](./contracts/ethereum-1/0x5a4fc8f98ca356b7e957d18c155bc62e32d21ec3/) | PowerTokenLens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecd96...e19821`](./contracts/ethereum-1/0x1ecd96fd20f2c1a32e5906cccaec87e8afe19821/) | PreHooksInfoReader | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/) | PriceManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09321c...024da2`](./contracts/ethereum-1/0x09321c70b4e51f3f21bdad79c61d11fba1024da2/) | PriceOracleMiddleware | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fc09...062930`](./contracts/ethereum-1/0x07fc092fa44c52516decd5f7545061316d062930/) | PriceOracleMiddlewareManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb493...26007c`](./contracts/ethereum-1/0x1cb493392367a0283090bf965503a9588d26007c/) | PtPriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ReferralPlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | RewardEulerTokenClaimFuse | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11cbc3...10367f`](./contracts/ethereum-1/0x11cbc30008dde93db992ac0190848852d310367f/) | RewardsClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/) | RewardsManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | SiloV2SupplyBorrowableCollateralFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213534...4d7100`](./contracts/ethereum-1/0x21353473a7847bd8e44b0ab5e5d466b0cb4d7100/) | SoapIndicatorRebalanceLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8d531...e8dad5`](./contracts/ethereum-1/0xb8d531ea16caf1cf7b7cbc333e8963db59e8dad5/) | Spread28Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36618c...9a81ab`](./contracts/ethereum-1/0x36618ce1615305f3b99eeb9df8d4272e729a81ab/) | Spread60Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x768762...a358fb`](./contracts/ethereum-1/0x768762712eca97bc9ec930320d3ee0bd91a358fb/) | SpreadBaseV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x948548...5dcacd`](./contracts/ethereum-1/0x948548414a364c7d6f379ed73aeddb3c795dcacd/) | SpreadCloseSwapService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb50c61...6c12c6`](./contracts/ethereum-1/0xb50c618d63806ec1594547ecdb3e97737d6c12c6/) | SpreadStorageLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45336f...f1493e`](./contracts/ethereum-1/0x45336f3fa7b0f6e030f60eada71de147bff1493e/) | SpreadStorageService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x379038...36f6c7`](./contracts/ethereum-1/0x3790383f8685b439391dc1bc56f7b3f82236f6c7/) | StakeService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f0279...13a817`](./contracts/ethereum-1/0x8f0279e4a5d3447e6dd9b536e03504f20313a817/) | StanleyDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe945ef...a339e4`](./contracts/ethereum-1/0xe945ef2449a22958267c67a7df63519454a339e4/) | StanleyDsrDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb512e3...14114b`](./contracts/ethereum-1/0xb512e32e56f270e9a1dbd56be6fa7baf0014114b/) | StanleyUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6923e...5903d6`](./contracts/ethereum-1/0xb6923eaa3cd97c6f4369c8a40bd9324ffa5903d6/) | StanleyUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/) | StEthWrapperFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e3654...1bd1c4`](./contracts/ethereum-1/0x5e3654082406519e35a5426bb54f29d2651bd1c4/) | SwapExecutorEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/) | SwapExecutorRestricted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa4a0...05f824`](./contracts/ethereum-1/0x0aa4a0706fc8196710203ab097db97f96f05f824/) | TradingCompetitionRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/) | UniversalTokenSwapperEthFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/) | UniversalTokenSwapperFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | UniversalTokenSwapperWithVerificationFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf053...fc1a5c`](./contracts/ethereum-1/0x0cf053385492fef81e538f849e1e5308befc1a5c/) | UpdateBalancesIgnoreDustPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74ca34...0bb0d0`](./contracts/ethereum-1/0x74ca34c2c47d0865856a54060246ab736a0bb0d0/) | UpdateWithdrawManagerMaintenanceFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87858b...3e20e0`](./contracts/ethereum-1/0x87858b848c4b64bda3d694a554c5188f4c3e20e0/) | VestingAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a78c1...336d2d`](./contracts/ethereum-1/0x0a78c1a2d99f1c9a03277a7c64734b7ffb336d2d/) | WithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/) | WithdrawManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74714b...8b2c12`](./contracts/ethereum-1/0x74714bc6fbf7c2dfabc7650dd40e97f05e8b2c12/) | WrappedPlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f68a6...3311f5`](./contracts/ethereum-1/0x3f68a6a4fca2e6b85d041a53eb4090f6ac3311f5/) | WrappedPlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4329e2...c5d8b0`](./contracts/ethereum-1/0x4329e2178d41d058cf2808c11436a9e83bc5d8b0/) | WstETHPriceFeedEthereum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/) | ZeroBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 119 |
| upstream | 8 |
| standard_library | 13 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
