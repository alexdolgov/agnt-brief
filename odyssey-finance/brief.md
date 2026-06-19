# Agentic Audit Brief: Odyssey Finance

## Project Overview

- Project: Odyssey Finance (`odyssey-finance`)
- Website: [https://app.odyssey.finance/en](https://app.odyssey.finance/en)
- Lifecycle: active (Tier 0, 38.2% below peak)
- Generated: 2026-06-19T06:14:32.503Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: base, ethereum, optimism
- Contract surface: 58 unique implementations (183 raw deployments)
- DeFi Llama TVL: $9,215,231.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Odyssey Finance is an active DeFi super-app and yield aggregator built around ERC-4337 smart accounts and gasless cross-chain strategies. Its product surface includes Loopr, Tradr, and Yieldr modules for trading, predictions, and yield, alongside vaults, ERC4626 integrations, lending/borrowing strategies, flash-loan execution, fee policies, position registries, and adapters for protocols such as Aave, Compound, Morpho, and Ajna.

### Architecture

All families share a common architecture of PositionRegistry for tracking user positions and fee policies (ApyTiered, Performance, ProtocolTiered) for revenue management, governed via ProxyAdmin. Mainnet and Optimism share identical strategy contracts and flash loan executors, while Base and Hemi extend the protocol with swap aggregation and farming adapters, respectively.

## Contract Surface Quality

- Indexed contracts: 279; live-surface contracts included: 183 (104 live, 79 unknown).
- Excluded by liveness: 57 inactive, 39 singleton, 0 uninitialized.
- Deployment units: 0/19 live.
- Detected codebases: aave-v2, aave-v3, compound-v2
- Unverified dependencies: 22/137.

## Audit Coverage Summary

- Verified implementations audited: 0/58 (0.0%)
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 58
- Raw deployments: 183
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

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2 | unknown | ethereum | n/a | [`0xb5a44c...b98445`](./contracts/ethereum-1/0xb5a44c7f34e93a72425efdd002b9754ac2b98445/) | ⚠️ Unaudited |
| AaveV2BorrowStrategy | core_logic | ethereum | n/a | [`0xfcb475...f1d0ed`](./contracts/ethereum-1/0xfcb475b05682f84b489083b131f62b77cef1d0ed/) | ⚠️ Unaudited |
| AaveV2FlashLoan | unknown | ethereum | n/a | [`0x2d2985...d9c720`](./contracts/ethereum-1/0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720/) | ⚠️ Unaudited |
| AaveV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x206eba...9a2821`](./contracts/ethereum-1/0x206eba040e4e86667b8ab4275bb75f220e9a2821/); optimism [`0x206eba...9a2821`](./contracts/optimism-10/0x206eba040e4e86667b8ab4275bb75f220e9a2821/); base [`0x206eba...9a2821`](./contracts/base-8453/0x206eba040e4e86667b8ab4275bb75f220e9a2821/) | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x3efcee...58d79b`](./contracts/ethereum-1/0x3efcee552716472dd2b321326654e4097f58d79b/); optimism `0x8d4dfa...1aee36`; base [`0x3efcee...58d79b`](./contracts/base-8453/0x3efcee552716472dd2b321326654e4097f58d79b/) | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | ethereum | n/a | 3 deployments: ethereum [`0x743618...5c312b`](./contracts/ethereum-1/0x7436186d83d8f98e542a5bd37d18e91f265c312b/); optimism `0x78d791...ad9762`; base [`0x743618...5c312b`](./contracts/base-8453/0x7436186d83d8f98e542a5bd37d18e91f265c312b/) | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | [`0x96f82d...a8cf80`](./contracts/ethereum-1/0x96f82d791580deef662b8d552f21b4ac14a8cf80/) | ⚠️ Unaudited |
| AgentUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x804739...c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/); ethereum `0xf9eeae...a7ef51` | ⚠️ Unaudited |
| Ajna | unknown | ethereum | n/a | 3 deployments: ethereum [`0x82e6b5...6ac3a2`](./contracts/ethereum-1/0x82e6b5675977f0650c88659716a2210f536ac3a2/); optimism [`0x82e6b5...6ac3a2`](./contracts/optimism-10/0x82e6b5675977f0650c88659716a2210f536ac3a2/); base [`0x82e6b5...6ac3a2`](./contracts/base-8453/0x82e6b5675977f0650c88659716a2210f536ac3a2/) | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | optimism | n/a | 3 deployments: ethereum `0xde433f...9c9736`; optimism [`0x0dba14...7ec890`](./contracts/optimism-10/0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890/); base `0xde433f...9c9736` | ⚠️ Unaudited |
| AMO | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4681a8...704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/); optimism `0x541814...f25eaa`; base `0x7b8bcf...f5da27` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0xf70aca...0da5d9`](./contracts/ethereum-1/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/); optimism [`0xf70aca...0da5d9`](./contracts/optimism-10/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/); base [`0xf70aca...0da5d9`](./contracts/base-8453/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/) | ⚠️ Unaudited |
| CallOrdersFillerUsingUniV2 | unknown | optimism | n/a | [`0xfd7d5e...d63613`](./contracts/optimism-10/0xfd7d5edd096b98ac2391043b22b96aa63dd63613/) | ⚠️ Unaudited |
| CompoundV2 | unknown | ethereum | n/a | [`0x186c91...59a820`](./contracts/ethereum-1/0x186c9184364b00a9691ae0d7d4e736cfcb59a820/) | ⚠️ Unaudited |
| CompoundV2BorrowStrategy | core_logic | ethereum | n/a | [`0x77fa78...84bb3c`](./contracts/ethereum-1/0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c/) | ⚠️ Unaudited |
| CompoundV2VesperStrategy | core_logic | ethereum | n/a | [`0xce3267...15780e`](./contracts/ethereum-1/0xce32679c865f37ae6513a366118aa783ae15780e/) | ⚠️ Unaudited |
| CompoundV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x13f9f7...ee6d40`](./contracts/ethereum-1/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/); optimism [`0x13f9f7...ee6d40`](./contracts/optimism-10/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/); base [`0x13f9f7...ee6d40`](./contracts/base-8453/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/) | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | optimism | n/a | 3 deployments: ethereum `0xc27630...c8b9c5`; optimism [`0x4966d4...0eaa68`](./contracts/optimism-10/0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68/); base `0xc27630...c8b9c5` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | optimism | n/a | 3 deployments: ethereum `0xab890e...0827c3`; optimism [`0x249a62...a08bbb`](./contracts/optimism-10/0x249a626498281ee7f172c307d4b0db4de2a08bbb/); base `0xab890e...0827c3` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | ethereum | n/a | 3 deployments: ethereum [`0x50361a...12a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/); optimism `0xb6ecf1...f0c362`; base `0x52edbc...525f07` | ⚠️ Unaudited |
| DebtToken | token | base | n/a | 3 deployments: ethereum `0x7bf63d...7417bb`; optimism `0xae4b31...0150c0`; base [`0x24186a...c957d0`](./contracts/base-8453/0x24186a4814a826c84ba127f7f24eac6b06c957d0/) | ⚠️ Unaudited |
| DepositToken | token | optimism | n/a | 3 deployments: ethereum `0x6f57db...41650a`; optimism [`0x4672ed...c8771a`](./contracts/optimism-10/0x4672edcd34235b3855f2fe8bf1530947c9c8771a/); base `0xff7ad4...188540` | ⚠️ Unaudited |
| DyDxFlashLoan | unknown | ethereum | n/a | [`0x1cb204...604169`](./contracts/ethereum-1/0x1cb204ed801db2030f3c59e9fd8ec078bc604169/) | ⚠️ Unaudited |
| ERC4626 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6a7c1d...3b2ef4`](./contracts/ethereum-1/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/); optimism [`0x6a7c1d...3b2ef4`](./contracts/optimism-10/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/); base [`0x6a7c1d...3b2ef4`](./contracts/base-8453/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/) | ⚠️ Unaudited |
| ERC4626Adapter | adapter | base | n/a | [`0x9e1a7e...6d6b4e`](./contracts/base-8453/0x9e1a7ec69a311af701c071049e24d51ea06d6b4e/) | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xf4868c...ea0543`](./contracts/ethereum-1/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/); optimism [`0xf4868c...ea0543`](./contracts/optimism-10/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/); base [`0xf4868c...ea0543`](./contracts/base-8453/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/) | ⚠️ Unaudited |
| FeeProvider | unknown | base | n/a | 3 deployments: ethereum `0xa6a4db...077585`; optimism `0xdce663...f34a91`; base [`0x17446e...610f9c`](./contracts/base-8453/0x17446e48196ec6ef40f839a4be6df77ac6610f9c/) | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | optimism | n/a | 3 deployments: ethereum `0x6e30df...7fb2c4`; optimism [`0x4391ae...d35978`](./contracts/optimism-10/0x4391ae1acc1c082bae3bb2badb29afb275d35978/); base `0x6e30df...7fb2c4` | ⚠️ Unaudited |
| InfiniFiAdapter | adapter | ethereum | n/a | [`0xf974d7...f2fb41`](./contracts/ethereum-1/0xf974d7435e86db32d8a6d021934712ea51f2fb41/) | ⚠️ Unaudited |
| InifniFiAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa24b17...fe8416`](./contracts/ethereum-1/0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416/); ethereum `0xe32ad0...548682` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1807c6...604ef4`](./contracts/ethereum-1/0x1807c62f30269746672d0c0f24a645a573604ef4/); optimism [`0x1807c6...604ef4`](./contracts/optimism-10/0x1807c62f30269746672d0c0f24a645a573604ef4/); base [`0x1807c6...604ef4`](./contracts/base-8453/0x1807c62f30269746672d0c0f24a645a573604ef4/) | ⚠️ Unaudited |
| LooprFactory | registry | ethereum | n/a | [`0xf6f3fe...410559`](./contracts/ethereum-1/0xf6f3fee894abf3bf1d11c1bb50c252df19410559/) | ⚠️ Unaudited |
| MetAirdrop | operational_periphery | ethereum | n/a | [`0x265714...842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | 3 deployments: ethereum [`0xf8dea5...e06892`](./contracts/ethereum-1/0xf8dea58979a47f226ac46dfe204a7146a8e06892/); optimism [`0xf8dea5...e06892`](./contracts/optimism-10/0xf8dea58979a47f226ac46dfe204a7146a8e06892/); base [`0xf8dea5...e06892`](./contracts/base-8453/0xf8dea58979a47f226ac46dfe204a7146a8e06892/) | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x87acd9...366910`](./contracts/ethereum-1/0x87acd9823c1269ec5a2233fc941b22d747366910/); optimism [`0x87acd9...366910`](./contracts/optimism-10/0x87acd9823c1269ec5a2233fc941b22d747366910/); base [`0x87acd9...366910`](./contracts/base-8453/0x87acd9823c1269ec5a2233fc941b22d747366910/) | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6aa69c...9031b8`](./contracts/ethereum-1/0x6aa69c031170b04e2d6ec02520b6f49d649031b8/); base [`0x6aa69c...9031b8`](./contracts/base-8453/0x6aa69c031170b04e2d6ec02520b6f49d649031b8/) | ⚠️ Unaudited |
| NativeTokenGateway | token | ethereum | n/a | 3 deployments: ethereum [`0x186df6...743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/); optimism `0xd5386d...260121`; base `0x7e31e5...a18727` | ⚠️ Unaudited |
| OFT | unknown | ethereum | n/a | 23 deployments: ethereum [`0x06ea69...ad9f00`](./contracts/ethereum-1/0x06ea695b91700071b161a434fed42d1dcbad9f00/); ethereum `0x2e4835...711f77`; ethereum `0x40a544...58eea6`; ethereum `0x5ec16f...51f7a6`; ethereum `0x82539b...c92aad`; ethereum `0x906cd0...48e9a8`; ethereum `0xa71624...39ae13`; optimism `0x0b874b...71fd0f`; optimism `0x62d2a7...b01b96`; optimism `0x92273c...6d19c6`; optimism `0xb5259c...8e5fe1`; optimism `0xb59116...38de14`; optimism `0xc507ef...a50d87`; base `0x0dbebf...972222`; base `0x3a6c9b...f6066b`; base `0x49219d...bf08ec`; base `0x50c580...495ce7`; base `0x781aea...2def3d`; base `0x8a6540...5c2957`; base `0xb17475...89386a`; base `0xc6fffa...2f6c95`; base `0xda1080...2cf6ca`; base `0xe953b9...c2b855` | ⚠️ Unaudited |
| OFTAdapter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x010f0b...340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/); ethereum `0x35ca66...a9aa3a`; ethereum `0x8642f7...431c2d`; ethereum `0x952a7d...6e33d1`; ethereum `0x968563...0605f0`; ethereum `0xac6369...1fb90d`; ethereum `0xfc8acf...579afb` | ⚠️ Unaudited |
| Operator | unknown | optimism | n/a | 3 deployments: ethereum `0xc06d63...bad360`; optimism [`0x49219d...bf08ec`](./contracts/optimism-10/0x49219d2feca183b26f058388e36bbfb139bf08ec/); base `0x64b5bb...609373` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | base | n/a | 4 deployments: ethereum `0xa574a4...cdc67f`; optimism `0x757d53...60be72`; base [`0x2b7737...ddf6a8`](./contracts/base-8453/0x2b77378c70f4b43de2824d217e9ae4910cddf6a8/); base `0x416ab2...9cc01e` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x1cb2a9...afaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/); optimism `0xaa023c...8238d6`; base `0x96a11f...4acf31` | ⚠️ Unaudited |
| PoolRegistry | registry | ethereum | n/a | 4 deployments: ethereum [`0x01491b...45ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/); ethereum `0xb3fa4a...f01792`; optimism `0x618ec4...c00e86`; base `0x204789...2a2298` | ⚠️ Unaudited |
| PositionRegistry | registry | base | n/a | 8 deployments: ethereum `0x1c8225...ef7435`; ethereum `0x72cf2f...a605d9`; optimism `0x152476...26cd87`; optimism `0x983419...db73e6`; base [`0x0d1998...7890ce`](./contracts/base-8453/0x0d19983d8259bbf089b59f8af5f1d452e17890ce/); base `0x15f245...e14896`; base `0xad42b8...c81562`; base `0xe08acc...abd828` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | base | n/a | 4 deployments: ethereum `0xd0aab6...400e06`; optimism `0x8ffc95...d6dc81`; base [`0x669954...53f334`](./contracts/base-8453/0x669954e6b63b2156e120f815d0b734589153f334/); base `0x9a1ba8...c9ddd5` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 12 deployments: ethereum [`0x262b12...853bdd`](./contracts/ethereum-1/0x262b12c5701ddf1edac2870ad6338d23d5853bdd/); ethereum `0xc0bc99...68370e`; ethereum `0xceb64b...5c83e8`; ethereum `0xfca22b...ddbaaa`; optimism `0xa83cc0...0c3f9a`; optimism `0xc0bc99...68370e`; optimism `0xceb64b...5c83e8`; optimism `0xfca22b...ddbaaa`; base `0x341631...01e4f9`; base `0xc0bc99...68370e`; base `0xceb64b...5c83e8`; base `0xfca22b...ddbaaa` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1cacd2...4b7102`](./contracts/ethereum-1/0x1cacd2d64edccd5df47824a0b85a1dacca4b7102/); optimism `0xc38aaf...d821ba`; base `0x67799b...a401e1` | ⚠️ Unaudited |
| Quoter | periphery | optimism | n/a | 3 deployments: ethereum `0x5f6c71...406834`; optimism [`0x077f89...da87d5`](./contracts/optimism-10/0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5/); base `0x5ea5c6...4af671` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b2cd4...2941d5`](./contracts/ethereum-1/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/); optimism [`0x3b2cd4...2941d5`](./contracts/optimism-10/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/); base [`0x3b2cd4...2941d5`](./contracts/base-8453/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | optimism | n/a | 2 deployments: ethereum `0x70845d...cf44d8`; optimism [`0x0f482c...be865c`](./contracts/optimism-10/0x0f482c4cf499fd57cf643c350a7261b403be865c/) | ⚠️ Unaudited |
| SmartFarmingManager | governance | base | n/a | 3 deployments: ethereum `0xb8d187...107aec`; optimism `0xfc51f8...eb08bf`; base [`0x4232f5...682662`](./contracts/base-8453/0x4232f5388fdf479c3a1a2b7816f135c618682662/) | ⚠️ Unaudited |
| SwapAggregator | unknown | optimism | n/a | 3 deployments: ethereum `0xc67abc...d6ed14`; optimism [`0x7b9c45...3b0efa`](./contracts/optimism-10/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/); base [`0x7b9c45...3b0efa`](./contracts/base-8453/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/) | ⚠️ Unaudited |
| SwapOrdersFillerUsingUniV2 | unknown | optimism | n/a | [`0x9614bf...2fc87f`](./contracts/optimism-10/0x9614bfc8e5350e559a9a02eab4574d5b332fc87f/) | ⚠️ Unaudited |
| Synth | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0d0ac1...9aa4b7`](./contracts/ethereum-1/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/); optimism [`0x0d0ac1...9aa4b7`](./contracts/optimism-10/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/); base [`0x0d0ac1...9aa4b7`](./contracts/base-8453/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/) | ⚠️ Unaudited |
| SyntheticToken | token | optimism | n/a | 3 deployments: ethereum `0xd8a7ce...2f3390`; optimism [`0x9a41fd...d128d7`](./contracts/optimism-10/0x9a41fde326d3de75b4672f8e9315dbcd56d128d7/); base `0xe6c295...ec6544` | ⚠️ Unaudited |
| SynthStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x19b72d...867c37`](./contracts/ethereum-1/0x19b72d6351f080d8a002bfde6595c09112867c37/); optimism `0x5f0a84...7a1e8f`; base [`0x19b72d...867c37`](./contracts/base-8453/0x19b72d6351f080d8a002bfde6595c09112867c37/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x142518...9bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/); optimism `0xc04bcd...a1bd7c`; base `0xcb6daf...01ee0d` | ⚠️ Unaudited |
| Vesper | unknown | ethereum | n/a | 3 deployments: ethereum [`0xccf1f2...639f3c`](./contracts/ethereum-1/0xccf1f2ad7137347daa5815048c99952fb9639f3c/); optimism [`0xccf1f2...639f3c`](./contracts/optimism-10/0xccf1f2ad7137347daa5815048c99952fb9639f3c/); base [`0xccf1f2...639f3c`](./contracts/base-8453/0xccf1f2ad7137347daa5815048c99952fb9639f3c/) | ⚠️ Unaudited |

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
| ethereum | [`0x96f82d...a8cf80`](./contracts/ethereum-1/0x96f82d791580deef662b8d552f21b4ac14a8cf80/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x804739...c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/) | AgentUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82e6b5...6ac3a2`](./contracts/ethereum-1/0x82e6b5675977f0650c88659716a2210f536ac3a2/) | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0dba14...7ec890`](./contracts/optimism-10/0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890/) | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4681a8...704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/) | AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf70aca...0da5d9`](./contracts/ethereum-1/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/) | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfd7d5e...d63613`](./contracts/optimism-10/0xfd7d5edd096b98ac2391043b22b96aa63dd63613/) | CallOrdersFillerUsingUniV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50361a...12a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/) | CrossChainDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4672ed...c8771a`](./contracts/optimism-10/0x4672edcd34235b3855f2fe8bf1530947c9c8771a/) | DepositToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e1a7e...6d6b4e`](./contracts/base-8453/0x9e1a7ec69a311af701c071049e24d51ea06d6b4e/) | ERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4868c...ea0543`](./contracts/ethereum-1/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17446e...610f9c`](./contracts/base-8453/0x17446e48196ec6ef40f839a4be6df77ac6610f9c/) | FeeProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4391ae...d35978`](./contracts/optimism-10/0x4391ae1acc1c082bae3bb2badb29afb275d35978/) | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf974d7...f2fb41`](./contracts/ethereum-1/0xf974d7435e86db32d8a6d021934712ea51f2fb41/) | InfiniFiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1807c6...604ef4`](./contracts/ethereum-1/0x1807c62f30269746672d0c0f24a645a573604ef4/) | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f3fe...410559`](./contracts/ethereum-1/0xf6f3fee894abf3bf1d11c1bb50c252df19410559/) | LooprFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265714...842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | MetAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x186df6...743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/) | NativeTokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x49219d...bf08ec`](./contracts/optimism-10/0x49219d2feca183b26f058388e36bbfb139bf08ec/) | Operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b7737...ddf6a8`](./contracts/base-8453/0x2b77378c70f4b43de2824d217e9ae4910cddf6a8/) | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb2a9...afaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01491b...45ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/) | PoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d1998...7890ce`](./contracts/base-8453/0x0d19983d8259bbf089b59f8af5f1d452e17890ce/) | PositionRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x669954...53f334`](./contracts/base-8453/0x669954e6b63b2156e120f815d0b734589153f334/) | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2cd4...2941d5`](./contracts/ethereum-1/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/) | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f482c...be865c`](./contracts/optimism-10/0x0f482c4cf499fd57cf643c350a7261b403be865c/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4232f5...682662`](./contracts/base-8453/0x4232f5388fdf479c3a1a2b7816f135c618682662/) | SmartFarmingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7b9c45...3b0efa`](./contracts/optimism-10/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/) | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d0ac1...9aa4b7`](./contracts/ethereum-1/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/) | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9a41fd...d128d7`](./contracts/optimism-10/0x9a41fde326d3de75b4672f8e9315dbcd56d128d7/) | SyntheticToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b72d...867c37`](./contracts/ethereum-1/0x19b72d6351f080d8a002bfde6595c09112867c37/) | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x142518...9bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xccf1f2...639f3c`](./contracts/ethereum-1/0xccf1f2ad7137347daa5815048c99952fb9639f3c/) | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 22 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
