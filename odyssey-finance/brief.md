# Agentic Audit Brief: Odyssey Finance

## Project Overview

- Project: Odyssey Finance (`odyssey-finance`)
- Website: [https://app.odyssey.finance/en](https://app.odyssey.finance/en)
- Lifecycle: active (Tier 0, 38.2% below peak)
- Generated: 2026-05-30T19:18:57.722Z
- Pipeline run: v2-pipeline-2026-05-30-c7d699-40af
- Chains: base, ethereum, optimism
- Contract surface: 79 unique implementations (272 raw deployments)
- DeFi Llama TVL: $10,182,418.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Odyssey Finance is a multi-chain yield aggregator that deploys user deposits into various lending and borrowing strategies across protocols like Aave, Compound, Morpho, and Ajna. It uses vaults (ERC4626), flash loans, and automated execution to optimize yields while managing risk through fee policies and position registries.

### Architecture

All families share a common architecture of PositionRegistry for tracking user positions and fee policies (ApyTiered, Performance, ProtocolTiered) for revenue management, governed via ProxyAdmin. Mainnet and Optimism share identical strategy contracts and flash loan executors, while Base and Hemi extend the protocol with swap aggregation and farming adapters, respectively.

## Audit Coverage Summary

- Verified implementations audited: 0/76 (0.0%)
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 2
- Unverified implementations: 3
- Unique implementations: 79
- Raw deployments: 272
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AaveV2 | unknown | ethereum | [`0xb5a44c...b98445`](./contracts/ethereum-1/0xb5a44c7f34e93a72425efdd002b9754ac2b98445/) | ⚠️ Unaudited |
| AaveV2BorrowStrategy | core_logic | ethereum | [`0xfcb475...f1d0ed`](./contracts/ethereum-1/0xfcb475b05682f84b489083b131f62b77cef1d0ed/) | ⚠️ Unaudited |
| AaveV2FlashLoan | unknown | ethereum | [`0x2d2985...d9c720`](./contracts/ethereum-1/0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720/) | ⚠️ Unaudited |
| AaveV3 | unknown | ethereum | 3 deployments: ethereum [`0x206eba...9a2821`](./contracts/ethereum-1/0x206eba040e4e86667b8ab4275bb75f220e9a2821/); optimism [`0x206eba...9a2821`](./contracts/optimism-10/0x206eba040e4e86667b8ab4275bb75f220e9a2821/); base [`0x206eba...9a2821`](./contracts/base-8453/0x206eba040e4e86667b8ab4275bb75f220e9a2821/) | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x3efcee...58d79b`](./contracts/ethereum-1/0x3efcee552716472dd2b321326654e4097f58d79b/); optimism `0x8d4dfa...1aee36`; base [`0x3efcee...58d79b`](./contracts/base-8453/0x3efcee552716472dd2b321326654e4097f58d79b/) | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | ethereum | 3 deployments: ethereum [`0x743618...5c312b`](./contracts/ethereum-1/0x7436186d83d8f98e542a5bd37d18e91f265c312b/); optimism `0x78d791...ad9762`; base [`0x743618...5c312b`](./contracts/base-8453/0x7436186d83d8f98e542a5bd37d18e91f265c312b/) | ⚠️ Unaudited |
| Agent | unknown | ethereum | [`0x4762e7...0f28a9`](./contracts/ethereum-1/0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9/) | ⚠️ Unaudited |
| AgentUpgrader | unknown | ethereum | [`0x804739...c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/) | ⚠️ Unaudited |
| Ajna | unknown | ethereum | 3 deployments: ethereum [`0x82e6b5...6ac3a2`](./contracts/ethereum-1/0x82e6b5675977f0650c88659716a2210f536ac3a2/); optimism [`0x82e6b5...6ac3a2`](./contracts/optimism-10/0x82e6b5675977f0650c88659716a2210f536ac3a2/); base [`0x82e6b5...6ac3a2`](./contracts/base-8453/0x82e6b5675977f0650c88659716a2210f536ac3a2/) | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | optimism | 3 deployments: ethereum `0xde433f...9c9736`; optimism [`0x0dba14...7ec890`](./contracts/optimism-10/0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890/); base `0xde433f...9c9736` | ⚠️ Unaudited |
| AMO | unknown | ethereum | 3 deployments: ethereum [`0x4681a8...704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/); optimism `0x541814...f25eaa`; base `0x7b8bcf...f5da27` | ⚠️ Unaudited |
| ATokenOracle | operational_periphery | ethereum | [`0x307874...074fcf`](./contracts/ethereum-1/0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf/) | ⚠️ Unaudited |
| BTCPeggedTokenOracle | operational_periphery | ethereum | [`0xe2a466...ba8cc8`](./contracts/ethereum-1/0xe2a466df120fb847520763461d99c22ea5ba8cc8/) | ⚠️ Unaudited |
| CallOrderExecutor | unknown | ethereum | 3 deployments: ethereum [`0xf70aca...0da5d9`](./contracts/ethereum-1/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/); optimism [`0xf70aca...0da5d9`](./contracts/optimism-10/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/); base [`0xf70aca...0da5d9`](./contracts/base-8453/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/) | ⚠️ Unaudited |
| CallOrdersFillerUsingUniV2 | unknown | optimism | [`0xfd7d5e...d63613`](./contracts/optimism-10/0xfd7d5edd096b98ac2391043b22b96aa63dd63613/) | ⚠️ Unaudited |
| CapForStETH | unknown | ethereum | 2 deployments: ethereum [`0x023dcf...ec35fb`](./contracts/ethereum-1/0x023dcf516c349b615120ee731add909645ec35fb/); ethereum `0x2182c3...9c43ad` | ⚠️ Unaudited |
| CompoundV2 | unknown | ethereum | [`0x186c91...59a820`](./contracts/ethereum-1/0x186c9184364b00a9691ae0d7d4e736cfcb59a820/) | ⚠️ Unaudited |
| CompoundV2BorrowStrategy | core_logic | ethereum | [`0x77fa78...84bb3c`](./contracts/ethereum-1/0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c/) | ⚠️ Unaudited |
| CompoundV2VesperStrategy | core_logic | ethereum | [`0xce3267...15780e`](./contracts/ethereum-1/0xce32679c865f37ae6513a366118aa783ae15780e/) | ⚠️ Unaudited |
| CompoundV3 | unknown | ethereum | 3 deployments: ethereum [`0x13f9f7...ee6d40`](./contracts/ethereum-1/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/); optimism [`0x13f9f7...ee6d40`](./contracts/optimism-10/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/); base [`0x13f9f7...ee6d40`](./contracts/base-8453/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/) | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | optimism | 3 deployments: ethereum `0xc27630...c8b9c5`; optimism [`0x4966d4...0eaa68`](./contracts/optimism-10/0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68/); base `0xc27630...c8b9c5` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | optimism | 3 deployments: ethereum `0xab890e...0827c3`; optimism [`0x249a62...a08bbb`](./contracts/optimism-10/0x249a626498281ee7f172c307d4b0db4de2a08bbb/); base `0xab890e...0827c3` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | ethereum | 5 deployments: ethereum [`0x50361a...12a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/); ethereum `0xaa7584...6fcee2`; optimism `0xb6ecf1...f0c362`; optimism `0xe2adb4...77f938`; base `0x52edbc...525f07` | ⚠️ Unaudited |
| DebtToken | token | base | 3 deployments: ethereum `0x7bf63d...7417bb`; optimism `0xae4b31...0150c0`; base [`0x24186a...c957d0`](./contracts/base-8453/0x24186a4814a826c84ba127f7f24eac6b06c957d0/) | ⚠️ Unaudited |
| DepositToken | token | optimism | 3 deployments: ethereum `0x6f57db...41650a`; optimism [`0x4672ed...c8771a`](./contracts/optimism-10/0x4672edcd34235b3855f2fe8bf1530947c9c8771a/); base `0xff7ad4...188540` | ⚠️ Unaudited |
| DyDxFlashLoan | unknown | ethereum | [`0x1cb204...604169`](./contracts/ethereum-1/0x1cb204ed801db2030f3c59e9fd8ec078bc604169/) | ⚠️ Unaudited |
| ERC4626 | unknown | ethereum | 3 deployments: ethereum [`0x6a7c1d...3b2ef4`](./contracts/ethereum-1/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/); optimism [`0x6a7c1d...3b2ef4`](./contracts/optimism-10/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/); base [`0x6a7c1d...3b2ef4`](./contracts/base-8453/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/) | ⚠️ Unaudited |
| ERC4626Adapter | adapter | ethereum | 2 deployments: ethereum [`0x32cbc6...b5ff59`](./contracts/ethereum-1/0x32cbc628325eb5a3000d3182c72539c77eb5ff59/); base `0x9e1a7e...6d6b4e` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | ethereum | 3 deployments: ethereum [`0xf4868c...ea0543`](./contracts/ethereum-1/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/); optimism [`0xf4868c...ea0543`](./contracts/optimism-10/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/); base [`0xf4868c...ea0543`](./contracts/base-8453/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/) | ⚠️ Unaudited |
| ERC4626TokenOracle | operational_periphery | base | 2 deployments: ethereum `0x288170...c60c97`; base [`0x2570ec...175bfd`](./contracts/base-8453/0x2570ecfad71cb5ede0619439f1d0e38f4d175bfd/) | ⚠️ Unaudited |
| FeeProvider | unknown | base | 3 deployments: ethereum `0xa6a4db...077585`; optimism `0xdce663...f34a91`; base [`0x17446e...610f9c`](./contracts/base-8453/0x17446e48196ec6ef40f839a4be6df77ac6610f9c/) | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | optimism | 3 deployments: ethereum `0x6e30df...7fb2c4`; optimism [`0x4391ae...d35978`](./contracts/optimism-10/0x4391ae1acc1c082bae3bb2badb29afb275d35978/); base `0x6e30df...7fb2c4` | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | ethereum | [`0xbcfa47...ca30ba`](./contracts/ethereum-1/0xbcfa47099dcce482e90ebd75a53f4bf012ca30ba/) | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | ethereum | 3 deployments: ethereum [`0x1807c6...604ef4`](./contracts/ethereum-1/0x1807c62f30269746672d0c0f24a645a573604ef4/); optimism [`0x1807c6...604ef4`](./contracts/optimism-10/0x1807c62f30269746672d0c0f24a645a573604ef4/); base [`0x1807c6...604ef4`](./contracts/base-8453/0x1807c62f30269746672d0c0f24a645a573604ef4/) | ⚠️ Unaudited |
| MainAndFallbackOracle | operational_periphery | ethereum | [`0xe0af15...3d3017`](./contracts/ethereum-1/0xe0af15b4689cf81a9f1bfc6857d842f2813d3017/) | ⚠️ Unaudited |
| MasterOracle | operational_periphery | ethereum | [`0xdb2d0b...2c3766`](./contracts/ethereum-1/0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766/) | ⚠️ Unaudited |
| MetAirdrop | operational_periphery | ethereum | [`0x265714...842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | 3 deployments: ethereum [`0xf8dea5...e06892`](./contracts/ethereum-1/0xf8dea58979a47f226ac46dfe204a7146a8e06892/); optimism [`0xf8dea5...e06892`](./contracts/optimism-10/0xf8dea58979a47f226ac46dfe204a7146a8e06892/); base [`0xf8dea5...e06892`](./contracts/base-8453/0xf8dea58979a47f226ac46dfe204a7146a8e06892/) | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x87acd9...366910`](./contracts/ethereum-1/0x87acd9823c1269ec5a2233fc941b22d747366910/); optimism [`0x87acd9...366910`](./contracts/optimism-10/0x87acd9823c1269ec5a2233fc941b22d747366910/); base [`0x87acd9...366910`](./contracts/base-8453/0x87acd9823c1269ec5a2233fc941b22d747366910/) | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | ethereum | 2 deployments: ethereum [`0x6aa69c...9031b8`](./contracts/ethereum-1/0x6aa69c031170b04e2d6ec02520b6f49d649031b8/); base [`0x6aa69c...9031b8`](./contracts/base-8453/0x6aa69c031170b04e2d6ec02520b6f49d649031b8/) | ⚠️ Unaudited |
| NativeTokenGateway | token | ethereum | 3 deployments: ethereum [`0x186df6...743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/); optimism `0xd5386d...260121`; base `0x7e31e5...a18727` | ⚠️ Unaudited |
| OFT | unknown | ethereum | 23 deployments: ethereum [`0x06ea69...ad9f00`](./contracts/ethereum-1/0x06ea695b91700071b161a434fed42d1dcbad9f00/); ethereum `0x2e4835...711f77`; ethereum `0x40a544...58eea6`; ethereum `0x5ec16f...51f7a6`; ethereum `0x82539b...c92aad`; ethereum `0x906cd0...48e9a8`; ethereum `0xa71624...39ae13`; optimism `0x0b874b...71fd0f`; optimism `0x62d2a7...b01b96`; optimism `0x92273c...6d19c6`; optimism `0xb5259c...8e5fe1`; optimism `0xb59116...38de14`; optimism `0xc507ef...a50d87`; base `0x0dbebf...972222`; base `0x3a6c9b...f6066b`; base `0x49219d...bf08ec`; base `0x50c580...495ce7`; base `0x781aea...2def3d`; base `0x8a6540...5c2957`; base `0xb17475...89386a`; base `0xc6fffa...2f6c95`; base `0xda1080...2cf6ca`; base `0xe953b9...c2b855` | ⚠️ Unaudited |
| OFTAdapter | adapter | ethereum | 7 deployments: ethereum [`0x010f0b...340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/); ethereum `0x35ca66...a9aa3a`; ethereum `0x8642f7...431c2d`; ethereum `0x952a7d...6e33d1`; ethereum `0x968563...0605f0`; ethereum `0xac6369...1fb90d`; ethereum `0xfc8acf...579afb` | ⚠️ Unaudited |
| Operator | unknown | optimism | 3 deployments: ethereum `0xc06d63...bad360`; optimism [`0x49219d...bf08ec`](./contracts/optimism-10/0x49219d2feca183b26f058388e36bbfb139bf08ec/); base `0x64b5bb...609373` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | ethereum | 16 deployments: ethereum [`0x073a51...c74c4a`](./contracts/ethereum-1/0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a/); ethereum `0xa574a4...cdc67f`; ethereum `0xaa5900...e8622e`; ethereum `0xce5bc7...b3d206`; ethereum `0xe8c3cc...5c4ead`; optimism `0x757d53...60be72`; optimism `0x78e7a4...90b7f8`; optimism `0xa6798b...adab14`; optimism `0xce5bc7...b3d206`; optimism `0xe8c3cc...5c4ead`; base `0x2b7737...ddf6a8`; base `0x307874...074fcf`; base `0x416ab2...9cc01e`; base `0x8c677e...88fa36`; base `0xce5bc7...b3d206`; base `0xe8c3cc...5c4ead` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | 3 deployments: ethereum [`0x1cb2a9...afaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/); optimism `0xaa023c...8238d6`; base `0x96a11f...4acf31` | ⚠️ Unaudited |
| PoolRegistry | registry | ethereum | 4 deployments: ethereum [`0x01491b...45ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/); ethereum `0xb3fa4a...f01792`; optimism `0x618ec4...c00e86`; base `0x204789...2a2298` | ⚠️ Unaudited |
| PositionRegistry | registry | base | 19 deployments: ethereum `0x1c8225...ef7435`; ethereum `0x341631...01e4f9`; ethereum `0x72cf2f...a605d9`; ethereum `0xe08acc...abd828`; ethereum `0xee156d...0e9534`; optimism `0x152476...26cd87`; optimism `0x7bf63d...7417bb`; optimism `0x983419...db73e6`; optimism `0xee156d...0e9534`; optimism `0xf67e65...1cc9ea`; optimism `0xf9bd6b...7edd2d`; base [`0x0d1998...7890ce`](./contracts/base-8453/0x0d19983d8259bbf089b59f8af5f1d452e17890ce/); base `0x15f245...e14896`; base `0x823feb...4c92f4`; base `0xa3ceec...ac4da2`; base `0xad42b8...c81562`; base `0xe08acc...abd828`; base `0xe2adb4...77f938`; base `0xee156d...0e9534` | ⚠️ Unaudited |
| PriceProvidersAggregator | operational_periphery | ethereum | [`0x32a21e...169a23`](./contracts/ethereum-1/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | base | 13 deployments: ethereum `0x59633b...f76f40`; ethereum `0x98fba5...33fad2`; ethereum `0xd0aab6...400e06`; ethereum `0xeb1df7...fa5684`; optimism `0x8ffc95...d6dc81`; optimism `0x98fba5...33fad2`; optimism `0xe0af15...3d3017`; optimism `0xeb1df7...fa5684`; base [`0x2f14c8...080894`](./contracts/base-8453/0x2f14c835a2e0db38b0db87920a12d3b371080894/); base `0x669954...53f334`; base `0x98fba5...33fad2`; base `0x9a1ba8...c9ddd5`; base `0xdc404f...52a959` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 21 deployments: ethereum [`0x05495f...106589`](./contracts/ethereum-1/0x05495f13b69a0bcf5e623a6a5e3de31e58106589/); ethereum `0x262b12...853bdd`; ethereum `0x3f6da0...3b488d`; ethereum `0x78002d...8e3f3b`; ethereum `0xc0bc99...68370e`; ethereum `0xceb64b...5c83e8`; ethereum `0xfca22b...ddbaaa`; optimism [`0x05495f...106589`](./contracts/optimism-10/0x05495f13b69a0bcf5e623a6a5e3de31e58106589/); optimism `0x3f6da0...3b488d`; optimism `0x78002d...8e3f3b`; optimism `0xa83cc0...0c3f9a`; optimism `0xc0bc99...68370e`; optimism `0xceb64b...5c83e8`; optimism `0xfca22b...ddbaaa`; base [`0x05495f...106589`](./contracts/base-8453/0x05495f13b69a0bcf5e623a6a5e3de31e58106589/); base `0x341631...01e4f9`; base `0x3f6da0...3b488d`; base `0x78002d...8e3f3b`; base `0xc0bc99...68370e`; base `0xceb64b...5c83e8`; base `0xfca22b...ddbaaa` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | 3 deployments: ethereum [`0x1cacd2...4b7102`](./contracts/ethereum-1/0x1cacd2d64edccd5df47824a0b85a1dacca4b7102/); optimism `0xc38aaf...d821ba`; base `0x67799b...a401e1` | ⚠️ Unaudited |
| PullOracle | operational_periphery | ethereum | [`0x1f278b...3dd351`](./contracts/ethereum-1/0x1f278b7eff04add48ff81ae1a01cbc178b3dd351/) | ⚠️ Unaudited |
| PythMainnetPriceProvider | operational_periphery | ethereum | [`0x7c2d5b...14e85c`](./contracts/ethereum-1/0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c/) | ⚠️ Unaudited |
| Quoter | periphery | optimism | 3 deployments: ethereum `0x5f6c71...406834`; optimism [`0x077f89...da87d5`](./contracts/optimism-10/0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5/); base `0x5ea5c6...4af671` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | ethereum | 3 deployments: ethereum [`0x3b2cd4...2941d5`](./contracts/ethereum-1/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/); optimism [`0x3b2cd4...2941d5`](./contracts/optimism-10/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/); base [`0x3b2cd4...2941d5`](./contracts/base-8453/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/) | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | operational_periphery | ethereum | 2 deployments: ethereum [`0x2e597e...eeac6e`](./contracts/ethereum-1/0x2e597e6c827a8527413c19065ec0725e03eeac6e/); ethereum `0x7efc39...4b560a` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | optimism | 2 deployments: ethereum `0x70845d...cf44d8`; optimism [`0x0f482c...be865c`](./contracts/optimism-10/0x0f482c4cf499fd57cf643c350a7261b403be865c/) | ⚠️ Unaudited |
| RoutedSwapper | adapter | ethereum | [`0x8f1561...9c0bb3`](./contracts/ethereum-1/0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3/) | ⚠️ Unaudited |
| SmartFarmingManager | governance | ethereum | 5 deployments: ethereum [`0x2b70e6...5f7c16`](./contracts/ethereum-1/0x2b70e663ba015c59556b6186822d90159d5f7c16/); ethereum `0xb8d187...107aec`; optimism `0x4f2acd...1bd83e`; optimism `0xfc51f8...eb08bf`; base `0x4232f5...682662` | ⚠️ Unaudited |
| StableCoinProvider | token | ethereum | [`0xe55744...ef005a`](./contracts/ethereum-1/0xe55744ebb196d0e4ddea70204142eaf517ef005a/) | ⚠️ Unaudited |
| SwapAggregator | unknown | optimism | 3 deployments: ethereum `0xc67abc...d6ed14`; optimism [`0x7b9c45...3b0efa`](./contracts/optimism-10/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/); base [`0x7b9c45...3b0efa`](./contracts/base-8453/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/) | ⚠️ Unaudited |
| SwapOrdersFillerUsingUniV2 | unknown | optimism | [`0x9614bf...2fc87f`](./contracts/optimism-10/0x9614bfc8e5350e559a9a02eab4574d5b332fc87f/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | 2 deployments: ethereum [`0x9a02ae...e7e5eb`](./contracts/ethereum-1/0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb/); optimism `0xb908ca...0c476e` | ⚠️ Unaudited |
| SwapperUpgrader | adapter | ethereum | 3 deployments: ethereum [`0xbde032...d2b2d6`](./contracts/ethereum-1/0xbde032fdf114b4005e5320881b96246347d2b2d6/); ethereum `0xce3831...088639`; optimism `0xc9ffa2...a03b46` | ⚠️ Unaudited |
| Synth | unknown | ethereum | 3 deployments: ethereum [`0x0d0ac1...9aa4b7`](./contracts/ethereum-1/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/); optimism [`0x0d0ac1...9aa4b7`](./contracts/optimism-10/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/); base [`0x0d0ac1...9aa4b7`](./contracts/base-8453/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/) | ⚠️ Unaudited |
| SyntheticToken | token | optimism | 3 deployments: ethereum `0xd8a7ce...2f3390`; optimism [`0x9a41fd...d128d7`](./contracts/optimism-10/0x9a41fde326d3de75b4672f8e9315dbcd56d128d7/); base `0xe6c295...ec6544` | ⚠️ Unaudited |
| SynthStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x19b72d...867c37`](./contracts/ethereum-1/0x19b72d6351f080d8a002bfde6595c09112867c37/); optimism `0x5f0a84...7a1e8f`; base [`0x19b72d...867c37`](./contracts/base-8453/0x19b72d6351f080d8a002bfde6595c09112867c37/) | ⚠️ Unaudited |
| ToVerify | unknown | optimism | 3 deployments: optimism [`0x5b84ea...028ead`](./contracts/optimism-10/0x5b84eaafb31672f5f264d258561710675b028ead/); optimism `0x9480f9...b61631`; base `0x6ca3c7...beddca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | [`0x6b17bf...adda6f`](./contracts/base-8453/0x6b17bfb2fca95ecace2fe09cc3b3d0c4deadda6f/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 3 deployments: ethereum [`0x142518...9bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/); optimism `0xc04bcd...a1bd7c`; base `0xcb6daf...01ee0d` | ⚠️ Unaudited |
| VelodromeSlipstreamAdapter | adapter | optimism | 2 deployments: optimism [`0x2a643a...607068`](./contracts/optimism-10/0x2a643a0c3d942b73945588573ca55a3618607068/); base `0x4f2acd...1bd83e` | ⚠️ Unaudited |
| Vesper | unknown | ethereum | 3 deployments: ethereum [`0xccf1f2...639f3c`](./contracts/ethereum-1/0xccf1f2ad7137347daa5815048c99952fb9639f3c/); optimism [`0xccf1f2...639f3c`](./contracts/optimism-10/0xccf1f2ad7137347daa5815048c99952fb9639f3c/); base [`0xccf1f2...639f3c`](./contracts/base-8453/0xccf1f2ad7137347daa5815048c99952fb9639f3c/) | ⚠️ Unaudited |
| ZeroedFeePolicy | unknown | optimism | 3 deployments: optimism [`0x02aafc...951e1b`](./contracts/optimism-10/0x02aafc2e3d647643622640a1da4fdf4fcf951e1b/); optimism `0x2dd586...1142a8`; base `0x466140...53a8f3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ApyTieredFeePolicy | unknown | ethereum | 12 deployments: ethereum [`0x1f2cb3...7b2ac5`](./contracts/ethereum-1/0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5/); ethereum `0xcb6daf...01ee0d`; ethereum `0xd7be1c...22cd96`; optimism [`0x1f2cb3...7b2ac5`](./contracts/optimism-10/0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5/); optimism `0x3d4ccd...f72fc3`; optimism `0x515e8b...4c9931`; optimism `0xd7be1c...22cd96`; optimism `0xffd74e...2dfd09`; base [`0x1f2cb3...7b2ac5`](./contracts/base-8453/0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5/); base `0x5ef26d...016faa`; base `0x8f1561...9c0bb3`; base `0xd7be1c...22cd96` | ⚠️ Unaudited (bytecode match) |
| FlatDepositFeePolicy | unknown | optimism | 3 deployments: optimism [`0x656f1f...c9e4d0`](./contracts/optimism-10/0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0/); optimism `0x9924a6...cc4f23`; base `0x760c66...4ba3b7` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x25d80c...9f8b2d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5a64e1...0535ad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x963b5b...bd0a34` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4762e7...0f28a9`](./contracts/ethereum-1/0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x804739...c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/) | AgentUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82e6b5...6ac3a2`](./contracts/ethereum-1/0x82e6b5675977f0650c88659716a2210f536ac3a2/) | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0dba14...7ec890`](./contracts/optimism-10/0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890/) | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4681a8...704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/) | AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307874...074fcf`](./contracts/ethereum-1/0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf/) | ATokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2a466...ba8cc8`](./contracts/ethereum-1/0xe2a466df120fb847520763461d99c22ea5ba8cc8/) | BTCPeggedTokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf70aca...0da5d9`](./contracts/ethereum-1/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/) | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfd7d5e...d63613`](./contracts/optimism-10/0xfd7d5edd096b98ac2391043b22b96aa63dd63613/) | CallOrdersFillerUsingUniV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50361a...12a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/) | CrossChainDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24186a...c957d0`](./contracts/base-8453/0x24186a4814a826c84ba127f7f24eac6b06c957d0/) | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4672ed...c8771a`](./contracts/optimism-10/0x4672edcd34235b3855f2fe8bf1530947c9c8771a/) | DepositToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32cbc6...b5ff59`](./contracts/ethereum-1/0x32cbc628325eb5a3000d3182c72539c77eb5ff59/) | ERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4868c...ea0543`](./contracts/ethereum-1/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2570ec...175bfd`](./contracts/base-8453/0x2570ecfad71cb5ede0619439f1d0e38f4d175bfd/) | ERC4626TokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17446e...610f9c`](./contracts/base-8453/0x17446e48196ec6ef40f839a4be6df77ac6610f9c/) | FeeProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4391ae...d35978`](./contracts/optimism-10/0x4391ae1acc1c082bae3bb2badb29afb275d35978/) | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x656f1f...c9e4d0`](./contracts/optimism-10/0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0/) | FlatDepositFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1807c6...604ef4`](./contracts/ethereum-1/0x1807c62f30269746672d0c0f24a645a573604ef4/) | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0af15...3d3017`](./contracts/ethereum-1/0xe0af15b4689cf81a9f1bfc6857d842f2813d3017/) | MainAndFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb2d0b...2c3766`](./contracts/ethereum-1/0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766/) | MasterOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265714...842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | MetAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x186df6...743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/) | NativeTokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010f0b...340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/) | OFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x49219d...bf08ec`](./contracts/optimism-10/0x49219d2feca183b26f058388e36bbfb139bf08ec/) | Operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x073a51...c74c4a`](./contracts/ethereum-1/0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a/) | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb2a9...afaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01491b...45ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/) | PoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d1998...7890ce`](./contracts/base-8453/0x0d19983d8259bbf089b59f8af5f1d452e17890ce/) | PositionRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a21e...169a23`](./contracts/ethereum-1/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | PriceProvidersAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f14c8...080894`](./contracts/base-8453/0x2f14c835a2e0db38b0db87920a12d3b371080894/) | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f278b...3dd351`](./contracts/ethereum-1/0x1f278b7eff04add48ff81ae1a01cbc178b3dd351/) | PullOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2cd4...2941d5`](./contracts/ethereum-1/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/) | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f482c...be865c`](./contracts/optimism-10/0x0f482c4cf499fd57cf643c350a7261b403be865c/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f1561...9c0bb3`](./contracts/ethereum-1/0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3/) | RoutedSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b70e6...5f7c16`](./contracts/ethereum-1/0x2b70e663ba015c59556b6186822d90159d5f7c16/) | SmartFarmingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe55744...ef005a`](./contracts/ethereum-1/0xe55744ebb196d0e4ddea70204142eaf517ef005a/) | StableCoinProvider | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7b9c45...3b0efa`](./contracts/optimism-10/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/) | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9614bf...2fc87f`](./contracts/optimism-10/0x9614bfc8e5350e559a9a02eab4574d5b332fc87f/) | SwapOrdersFillerUsingUniV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a02ae...e7e5eb`](./contracts/ethereum-1/0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbde032...d2b2d6`](./contracts/ethereum-1/0xbde032fdf114b4005e5320881b96246347d2b2d6/) | SwapperUpgrader | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d0ac1...9aa4b7`](./contracts/ethereum-1/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/) | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9a41fd...d128d7`](./contracts/optimism-10/0x9a41fde326d3de75b4672f8e9315dbcd56d128d7/) | SyntheticToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b72d...867c37`](./contracts/ethereum-1/0x19b72d6351f080d8a002bfde6595c09112867c37/) | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x142518...9bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xccf1f2...639f3c`](./contracts/ethereum-1/0xccf1f2ad7137347daa5815048c99952fb9639f3c/) | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02aafc...951e1b`](./contracts/optimism-10/0x02aafc2e3d647643622640a1da4fdf4fcf951e1b/) | ZeroedFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 22 |
| standard_library | 7 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
