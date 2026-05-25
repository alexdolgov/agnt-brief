# Agentic Audit Brief: BonsaiDAO Ecosystem

## Project Overview

- Project: BonsaiDAO Ecosystem (`bonsaidao-ecosystem`)
- Website: [https://bonsaidao.xyz/](https://bonsaidao.xyz/)
- Lifecycle: active (Tier 0, 94.1% below peak)
- Generated: 2026-05-25T06:51:15.362Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, berachain
- Contract surface: 190 unique implementations (432 raw deployments)
- DeFi Llama TVL: $1,073,765.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BonsaiDAO Ecosystem is a multi-product DeFi protocol offering liquidity management, yield optimization, and lending services. It encompasses the exit.tech exit liquidity platform, the Umami Finance yield aggregator, and the Vendor V2 lending market, operating across Base, Arbitrum One, and Berachain.

### Architecture

The families share a common deployer infrastructure and proxy patterns, indicating a unified development team. Vendor V2's PoolFactory and FeesManager proxies are deployed across multiple chains, while exit.tech and Umami Finance operate as distinct product lines with their own token contracts, likely sharing treasury or governance ties within the BonsaiDAO ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/86 (0.0%)
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 104
- Unique implementations: 190
- Raw deployments: 432
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

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AbraMimDeployment | unknown | arbitrum | [`0xc5da13...59d951`](./contracts/arbitrum-42161/0xc5da13b971a0bec3dadd11778c5c72b16f59d951/) | ⚠️ Unaudited |
| BatchSender | periphery | arbitrum | 5 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x401ab9...06c184`; arbitrum `0x5179d7...3107a6`; arbitrum `0x5384e6...d1941d`; arbitrum `0x8ef877...3d7f98` | ⚠️ Unaudited |
| BeefyMigrator | periphery | arbitrum | [`0x64920a...72f164`](./contracts/arbitrum-42161/0x64920af66d5772042b0aae8a1ebef75b4372f164/) | ⚠️ Unaudited |
| BeefyTimelockCaller | governance | arbitrum | [`0x46a188...f4af2b`](./contracts/arbitrum-42161/0x46a1884484a51b799414c6f02aeed80246f4af2b/) | ⚠️ Unaudited |
| BondDepository | unknown | arbitrum | [`0x457c4e...7fcafa`](./contracts/arbitrum-42161/0x457c4e6b4bcaaa06245b5b34080ba9578e7fcafa/) | ⚠️ Unaudited |
| BonusDistributor | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/); arbitrum `0x31a347...b8efb1`; arbitrum `0x50c62f...1ebaeb`; arbitrum `0x8cce8a...2d48fa` | ⚠️ Unaudited |
| Bridge | operational_periphery | arbitrum | [`0x931dda...576441`](./contracts/arbitrum-42161/0x931dda8e3d4e4b7832e9005812c979008b576441/) | ⚠️ Unaudited |
| BuybackMigrator | periphery | arbitrum | [`0x4f47a1...8379d4`](./contracts/arbitrum-42161/0x4f47a156fa8106aa7bd13e6219c54a78748379d4/) | ⚠️ Unaudited |
| CollectRouter | adapter | arbitrum | 2 deployments: arbitrum [`0x2d0ef2...fb7e57`](./contracts/arbitrum-42161/0x2d0ef29e177b82bb0ba6a7ea1a67c5de5bfb7e57/); arbitrum `0x8e82b9...cd7784` | ⚠️ Unaudited |
| DeploymentManager | governance | arbitrum | 2 deployments: arbitrum [`0x0f51d4...e32ce6`](./contracts/arbitrum-42161/0x0f51d4286226cb0928493abe012e75eddde32ce6/); arbitrum `0xe349db...3826f9` | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x36c73f...0af57a`](./contracts/arbitrum-42161/0x36c73f33916aa6edbb1b8a0fd63d054c7e0af57a/); arbitrum `0xbf4ee2...25a6d9`; arbitrum `0xd034f9...3e286c` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | [`0x2c8169...fe0305`](./contracts/arbitrum-42161/0x2c8169b54f0d7d7748c142a54c6fb71ec5fe0305/) | ⚠️ Unaudited |
| ERC20Vesting | operational_periphery | arbitrum | [`0xde09dc...792e8e`](./contracts/arbitrum-42161/0xde09dc65417e1c48b7c3a53e56c1b61ed4792e8e/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | 4 deployments: arbitrum [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/); arbitrum `0x5d1f0c...71d4d4`; arbitrum `0xe1ae4d...3b107f`; arbitrum `0xf42ae1...a426ca` | ⚠️ Unaudited |
| EsGmxBatchSender | periphery | arbitrum | [`0xc3828f...0207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | ⚠️ Unaudited |
| EthBondDepository | unknown | arbitrum | 3 deployments: arbitrum [`0x546c92...9c10b6`](./contracts/arbitrum-42161/0x546c928b1b2263c292cf45922a48ddfacd9c10b6/); arbitrum `0xaa6c3a...2bd119`; arbitrum `0xca271b...e373d1` | ⚠️ Unaudited |
| ExitVaultEntryPoint | operational_periphery | arbitrum | [`0xa1506e...a691ca`](./contracts/arbitrum-42161/0xa1506e8f078225c4f9a20cf1f9e3660d9da691ca/) | ⚠️ Unaudited |
| FastPriceEvents | operational_periphery | arbitrum | 7 deployments: arbitrum [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/); arbitrum `0x37d77f...0cc29f`; arbitrum `0x4530b7...5e1b07`; arbitrum `0x686f6e...0aa8d9`; arbitrum `0x88459b...af8f79`; arbitrum `0xbf3d9b...51db60`; arbitrum `0xe061f2...f42640` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | arbitrum | 17 deployments: arbitrum [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/); arbitrum `0x11d628...f43bb7`; arbitrum `0x1a0ad2...fdb774`; arbitrum `0x2ee130...cb807e`; arbitrum `0x2ffbe7...db4c4b`; arbitrum `0x3b8be8...426094`; arbitrum `0x4e9357...bd841e`; arbitrum `0x72927d...fedf95`; arbitrum `0x73fe72...e728df`; arbitrum `0x8960d1...535527`; arbitrum `0xaf47e9...4fef84`; arbitrum `0xb7bd32...6405db`; arbitrum `0xba5555...797e5c`; arbitrum `0xd2a0d4...fefb1c`; arbitrum `0xf5dc6e...f013a3`; arbitrum `0xfaf8c0...2f91d1`; arbitrum `0xfd50a7...55c4a5` | ⚠️ Unaudited |
| FeesManager | governance | berachain | 6 deployments: base `0x5de849...ffbb41`; base `0xc9cc93...48a11d`; arbitrum `0x4402fc...66c4b0`; arbitrum `0x45213f...4dcd44`; arbitrum `0x6c58d1...58aa27`; berachain [`0x3756f9...3b11d3`](./contracts/berachain-80094/0x3756f938e633944ff6dee9f93cf13e731e3b11d3/) | ⚠️ Unaudited |
| GenericUtils | unknown | arbitrum | 4 deployments: base `0xbfc606...07b64c`; arbitrum [`0x7f37b0...de553f`](./contracts/arbitrum-42161/0x7f37b0f4615ba85a5dfb3c8c479ec86ac4de553f/); arbitrum `0xcb2b71...2ef6b9`; berachain `0xebf158...1ae473` | ⚠️ Unaudited |
| GLP | unknown | arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpBalance | unknown | arbitrum | [`0x13e0bb...a4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | ⚠️ Unaudited |
| GLPDeployment | unknown | arbitrum | [`0x1f1a23...69ba39`](./contracts/arbitrum-42161/0x1f1a235b8bef4e1bed4a74530edd7abace69ba39/) | ⚠️ Unaudited |
| GlpManager | governance | arbitrum | 3 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18`; arbitrum `0x91425a...4f3270` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | 6 deployments: arbitrum [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/); arbitrum `0x09cbe2...408b8d`; arbitrum `0x0f0598...9934ba`; arbitrum `0x665ed5...604b7c`; arbitrum `0x9c5c2a...ffe874`; arbitrum `0xfc5a1a...35ad0a` | ⚠️ Unaudited |
| GmxTimelock | governance | arbitrum | 4 deployments: arbitrum [`0x34b45e...118a81`](./contracts/arbitrum-42161/0x34b45ee7cdccb5652bf54fd9795dd447a4118a81/); arbitrum `0x5a1614...8667a2`; arbitrum `0x68863d...4dea6a`; arbitrum `0x9c453e...6a1729` | ⚠️ Unaudited |
| Governable | unknown | arbitrum | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ⚠️ Unaudited |
| LendingPool | core_logic | base | 11 deployments: base [`0x073248...b8fcbe`](./contracts/base-8453/0x0732484d44df021bed805501e726a1b05db8fcbe/); base `0x67c670...04d1b4`; base `0x83820c...28186e`; arbitrum `0x0b8f69...b54ce5`; arbitrum `0x1097bd...1fd7b7`; arbitrum `0x2a271f...036a5a`; arbitrum `0x37d2f5...c15193`; arbitrum `0x4af0b7...d72942`; arbitrum `0x512445...670f49`; arbitrum `0xf726d4...4f5647`; berachain `0xfaed40...1f9f44` | ⚠️ Unaudited |
| LendingPoolUtils | core_logic | berachain | 3 deployments: base `0xa7ff08...c555c3`; arbitrum `0x81dbb8...0673c4`; berachain [`0x1305c6...aeadd6`](./contracts/berachain-80094/0x1305c60705cbc5f0098764937914f6a704aeadd6/) | ⚠️ Unaudited |
| MarinateReceiver | unknown | arbitrum | 3 deployments: arbitrum [`0x329877...bd2916`](./contracts/arbitrum-42161/0x3298772d936b3f8d7d264d6a42cda1daf6bd2916/); arbitrum `0x949130...b91a30`; arbitrum `0xfa00aa...3b932d` | ⚠️ Unaudited |
| MintableBaseToken | token | arbitrum | 9 deployments: arbitrum [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/); arbitrum `0x14ecde...817f99`; arbitrum `0x171a32...eca746`; arbitrum `0x28863d...6e3818`; arbitrum `0x352471...486921`; arbitrum `0x3ca273...24f3bc`; arbitrum `0x544a6e...dc250a`; arbitrum `0x626010...95a954`; arbitrum `0x9d8f6f...9ed515` | ⚠️ Unaudited |
| Oracle | operational_periphery | arbitrum | 4 deployments: base `0x6c47eb...eaa70d`; arbitrum [`0x073248...b8fcbe`](./contracts/arbitrum-42161/0x0732484d44df021bed805501e726a1b05db8fcbe/); arbitrum `0xc00028...ca26a5`; berachain `0x1ab5e3...e4d9d5` | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | 4 deployments: arbitrum [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/); arbitrum `0x5e2fa0...af75a7`; arbitrum `0x72b44c...ed32e6`; arbitrum `0x898a68...2b0779` | ⚠️ Unaudited |
| OrderBookReader | unknown | arbitrum | [`0xa27c20...62bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | ⚠️ Unaudited |
| OrderExecutor | unknown | arbitrum | [`0x7257ac...32c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | ⚠️ Unaudited |
| PoolFactory | registry | arbitrum | 9 deployments: base `0x7d720f...5ce62b`; base `0x928cf6...1c1d73`; base `0xaf013b...4682cf`; arbitrum [`0x076442...9b764d`](./contracts/arbitrum-42161/0x076442c05c8c1710f4c73d3166db6a57ff9b764d/); arbitrum `0x0b2b8f...bfbf98`; arbitrum `0x0cc43a...7fdf0a`; arbitrum `0xc05f41...cc3f08`; berachain `0x914246...83233b`; berachain `0xf8f48f...1b84b9` | ⚠️ Unaudited |
| PositionManager | governance | arbitrum | 8 deployments: arbitrum [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/); arbitrum `0x75e42e...8a4a0c`; arbitrum `0x87a408...b1c831`; arbitrum `0x87f8dd...eec371`; arbitrum `0x956618...bc9a0f`; arbitrum `0x98a006...bf5491`; arbitrum `0xe0c6b0...e3a21b`; arbitrum `0xe11659...36ad4e` | ⚠️ Unaudited |
| PositionRouter | adapter | arbitrum | 6 deployments: arbitrum [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/); arbitrum `0x338ff5...d3aead`; arbitrum `0x3d6ba3...223aba`; arbitrum `0x6fa9dc...796336`; arbitrum `0xa0bf65...e0e7e8`; arbitrum `0xb87a43...b09868` | ⚠️ Unaudited |
| PositionRouterReader | adapter | arbitrum | 2 deployments: arbitrum [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/); arbitrum `0x346f05...3a409d` | ⚠️ Unaudited |
| PositionTracker | unknown | berachain | 7 deployments: base `0x36147a...ac8a59`; base `0x37d2f5...c15193`; arbitrum `0x08a5f6...04b27b`; arbitrum `0x93e735...2236fc`; arbitrum `0x958559...6f4444`; berachain [`0x057afb...d60e88`](./contracts/berachain-80094/0x057afb17b414e9f3090425f46c322d42c4d60e88/); berachain `0xf5db57...257661` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | arbitrum | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | 16 deployments: arbitrum [`0x1136b8...bac9fa`](./contracts/arbitrum-42161/0x1136b815765877f4fe626e4e82f462aed5bac9fa/); arbitrum `0x1e904f...826058`; arbitrum `0x21fcbd...288a38`; arbitrum `0x22199a...cae489`; arbitrum `0x22e199...215632`; arbitrum `0x25a233...3e4465`; arbitrum `0x2b43c9...c37694`; arbitrum `0x43bef7...c9c8bb`; arbitrum `0x48de3d...abeaa6`; arbitrum `0xa49f3a...b2871a`; arbitrum `0xad469d...c832cb`; arbitrum `0xbd8f00...3c5101`; arbitrum `0xc229c5...f33232`; arbitrum `0xe3b2f6...c82cc1`; arbitrum `0xf09ed5...e601b2`; arbitrum `0xf407d5...770823` | ⚠️ Unaudited |
| ReferralReader | unknown | arbitrum | [`0x8aa382...76f5c8`](./contracts/arbitrum-42161/0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8/) | ⚠️ Unaudited |
| ReferralStorage | token | arbitrum | 2 deployments: arbitrum [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/); arbitrum `0xe6fab3...06e99d` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | arbitrum | 12 deployments: arbitrum [`0x1de098...4f5554`](./contracts/arbitrum-42161/0x1de098faf30bd74f22753c28db17a2560d4f5554/); arbitrum `0x1fdc87...0de955`; arbitrum `0x23208b...94f193`; arbitrum `0x2b35cc...6f13d5`; arbitrum `0x5c04a1...90150d`; arbitrum `0x60519b...203b34`; arbitrum `0x6a05ab...2552ee`; arbitrum `0x986b4e...7f43aa`; arbitrum `0x9c99e6...384b9b`; arbitrum `0xa7f810...6cb229`; arbitrum `0xc64347...dd9efc`; arbitrum `0xdeea5f...dddf02` | ⚠️ Unaudited |
| RewardManager | governance | arbitrum | [`0xb9fcd5...728d65`](./contracts/arbitrum-42161/0xb9fcd526e11aa577591d776baa051dc335728d65/) | ⚠️ Unaudited |
| RewardReader | unknown | arbitrum | 5 deployments: arbitrum [`0x8bfb8e...6d40e0`](./contracts/arbitrum-42161/0x8bfb8e82ee4569aee78d03235ff465bd436d40e0/); arbitrum `0xbbac17...8ef1b9`; arbitrum `0xd6cf28...40fc8f`; arbitrum `0xe05107...2d42ad`; arbitrum `0xe725ad...f12e9a` | ⚠️ Unaudited |
| RewardRouter | adapter | arbitrum | 2 deployments: arbitrum [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/); arbitrum `0xea7fcb...3402ea` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | arbitrum | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | 16 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x0a22fe...be964b`; arbitrum `0x1addd8...4c8903`; arbitrum `0x4292a8...f35e87`; arbitrum `0x4d268a...3fea13`; arbitrum `0x4e971a...5400b6`; arbitrum `0x5707df...134aee`; arbitrum `0x72b0d6...5abe21`; arbitrum `0x735007...4e5816`; arbitrum `0x8087a3...4a26d2`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xa40baa...1c33d7`; arbitrum `0xb14b49...5f2a95`; arbitrum `0xb27b0a...fed453`; arbitrum `0xbb3cd5...7a912e`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| RodeoCaller | unknown | arbitrum | [`0xa6f958...94fc14`](./contracts/arbitrum-42161/0xa6f9581d3a77dbe3df78d3b048756ab0d294fc14/) | ⚠️ Unaudited |
| RodeoMigrator | periphery | arbitrum | [`0xb34891...a5ed9e`](./contracts/arbitrum-42161/0xb34891fac221f335131d1b6cd8c883d107a5ed9e/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | 3 deployments: arbitrum [`0x9f0418...5792c7`](./contracts/arbitrum-42161/0x9f0418b5b82830bd7457e2040a37fbcfd85792c7/); arbitrum `0xabbc5f...2f4064`; arbitrum `0xdb0956...34a9fa` | ⚠️ Unaudited |
| ShortsTracker | unknown | arbitrum | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| StabilizeCaller | unknown | arbitrum | 2 deployments: arbitrum [`0x8299ba...7d53df`](./contracts/arbitrum-42161/0x8299baba76ae944ffbcea6525aaacb3c1e7d53df/); arbitrum `0xca69e8...f6067c` | ⚠️ Unaudited |
| StabilizeMigrator | periphery | arbitrum | [`0xad8b9d...5380a9`](./contracts/arbitrum-42161/0xad8b9d2abea3ec3abdaf793b93c7467b525380a9/) | ⚠️ Unaudited |
| StakedGlp | token | arbitrum | 6 deployments: arbitrum [`0x01af26...ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/); arbitrum `0x030d51...5593fb`; arbitrum `0x2f546a...3e89ae`; arbitrum `0x443b9e...775d36`; arbitrum `0x5402b5...0cffdf`; arbitrum `0xcf04ab...a65d6e` | ⚠️ Unaudited |
| StakedGlpMigrator | token | arbitrum | 3 deployments: arbitrum [`0xb63366...aba240`](./contracts/arbitrum-42161/0xb6336626c56d72ea501b6d14d1abd356c8aba240/); arbitrum `0xe19ab1...0b382c`; arbitrum `0xe469f6...39256c` | ⚠️ Unaudited |
| StakeManager | governance | arbitrum | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | [`0xc9ecfe...dfbd81`](./contracts/arbitrum-42161/0xc9ecfef2fac1e38b951b8c5f59294a8366dfbd81/) | ⚠️ Unaudited |
| StakingHelper | periphery | arbitrum | [`0xd80a01...881fb9`](./contracts/arbitrum-42161/0xd80a0186ac95fa975b393335ab5be987f4881fb9/) | ⚠️ Unaudited |
| StakingWarmup | unknown | arbitrum | [`0x792248...b7de13`](./contracts/arbitrum-42161/0x79224825adaa232b4d41249884f44b8d7bb7de13/) | ⚠️ Unaudited |
| StandardBondingCalculator | unknown | arbitrum | [`0xe0d0e2...79d808`](./contracts/arbitrum-42161/0xe0d0e232c09de67a3d74da1284dc5e72fc79d808/) | ⚠️ Unaudited |
| SubaccountRouter | adapter | arbitrum | [`0x3c48a9...1efa44`](./contracts/arbitrum-42161/0x3c48a997ef5badef5c07780342af0f7ed71efa44/) | ⚠️ Unaudited |
| sUMAMI | unknown | arbitrum | [`0xe6d557...a906d7`](./contracts/arbitrum-42161/0xe6d557d416ff5640235119369c7e26aa18a906d7/) | ⚠️ Unaudited |
| sZ2O | unknown | arbitrum | [`0xc45c51...f9bd39`](./contracts/arbitrum-42161/0xc45c51d423f5e2ad2e946e45d9ec7dcf04f9bd39/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | 31 deployments: arbitrum [`0x09214c...9b15b8`](./contracts/arbitrum-42161/0x09214c0a3594fbcad59a58099b0a63e2b29b15b8/); arbitrum `0x09fec9...240126`; arbitrum `0x181e94...feeaf5`; arbitrum `0x185870...164f8e`; arbitrum `0x1e0fd2...6db0d9`; arbitrum `0x1f3e8e...3f6285`; arbitrum `0x2068fc...2a6bbf`; arbitrum `0x2d7d54...5cda1c`; arbitrum `0x387951...d97715`; arbitrum `0x3a8b93...c6815e`; arbitrum `0x3f3e77...75341e`; arbitrum `0x4339b1...767071`; arbitrum `0x451f39...98684e`; arbitrum `0x460e1a...82bc6e`; arbitrum `0x4a3930...d61a78`; arbitrum `0x4e86e7...d565b3`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x61179a...ee23e2`; arbitrum `0x6a9215...d6798f`; arbitrum `0x7b2f35...bda6e2`; arbitrum `0x8669ff...06b077`; arbitrum `0x97a552...7b93fc`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xa20526...de0b83`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xaf2f95...72ae2a`; arbitrum `0xb01384...37dcc7`; arbitrum `0xbb8614...a7fdb4`; arbitrum `0xd89efb...ae6e0c`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | 9 deployments: arbitrum [`0x1ef815...75ad59`](./contracts/arbitrum-42161/0x1ef8156b46e6f5a1973bff4975177fd13275ad59/); arbitrum `0x3b3d62...1437d7`; arbitrum `0x4e29d2...6c9e4e`; arbitrum `0x500ee9...bcbab2`; arbitrum `0x50f223...a357fb`; arbitrum `0x7b78ce...9062f5`; arbitrum `0xd65928...61f3e6`; arbitrum `0xd83d2f...2b2de2`; arbitrum `0xdddc54...5ea96a` | ⚠️ Unaudited |
| Treasury | operational_periphery | arbitrum | [`0xe8e6a5...71fc97`](./contracts/arbitrum-42161/0xe8e6a534146efdcadb64c4ce78600e5c9e71fc97/) | ⚠️ Unaudited |
| UMAMI | unknown | arbitrum | [`0x1622bf...7f86e3`](./contracts/arbitrum-42161/0x1622bf67e6e5747b81866fe0b85178a93c7f86e3/) | ⚠️ Unaudited |
| USDG | unknown | arbitrum | 2 deployments: arbitrum [`0x40757a...db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/); arbitrum `0x45096e...678141` | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| VaultErrorController | core_logic | arbitrum | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | ⚠️ Unaudited |
| VaultPriceFeed | operational_periphery | arbitrum | 16 deployments: arbitrum [`0x1cf457...2b5de3`](./contracts/arbitrum-42161/0x1cf4579904eb2acda0e4081e39ec10d0c32b5de3/); arbitrum `0x1f975a...97b4c0`; arbitrum `0x2d6801...96a002`; arbitrum `0x30333c...e89e54`; arbitrum `0x31e9ed...601078`; arbitrum `0x380e7c...662901`; arbitrum `0x3c69b1...ed392a`; arbitrum `0x678de0...177c90`; arbitrum `0x776d20...4bb505`; arbitrum `0x9162c1...d04782`; arbitrum `0xa18bb1...b6e363`; arbitrum `0xc7e3ea...ae38b3`; arbitrum `0xce0b06...6bb1b9`; arbitrum `0xeff37c...aecba8`; arbitrum `0xf13494...8d62d6`; arbitrum `0xfe661c...9c387a` | ⚠️ Unaudited |
| VaultReader | core_logic | arbitrum | 5 deployments: arbitrum [`0x060cbb...463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/); arbitrum `0x2a735d...ee6694`; arbitrum `0x518010...2c8087`; arbitrum `0x5a3a68...fd7a61`; arbitrum `0xfebb9f...43f24a` | ⚠️ Unaudited |
| Vendor4626Strategy | core_logic | base | 3 deployments: base [`0x0b8f69...b54ce5`](./contracts/base-8453/0x0b8f69d521442c667ec01e137569eb00deb54ce5/); arbitrum `0x88ad0e...a87717`; arbitrum `0xaaacc7...cce59f` | ⚠️ Unaudited |
| VendorOracle | operational_periphery | arbitrum | [`0xc2e70e...4c3089`](./contracts/arbitrum-42161/0xc2e70e6ab40de43365dc798bd6b99737c54c3089/) | ⚠️ Unaudited |
| Vester | operational_periphery | arbitrum | 6 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x218861...0e4bd4`; arbitrum `0x7c100c...df49b2`; arbitrum `0x886078...999c49`; arbitrum `0xa75287...72042e`; arbitrum `0xaac9fa...d509e2` | ⚠️ Unaudited |
| VesterCap | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x57866d...789b60`](./contracts/arbitrum-42161/0x57866d65acbb7ba3269807bf7af4019366789b60/); arbitrum `0x6c507b...f62696` | ⚠️ Unaudited |
| Z2O | unknown | arbitrum | [`0xdb96f8...2fb9ac`](./contracts/arbitrum-42161/0xdb96f8efd6865644993505318cc08ff9c42fb9ac/) | ⚠️ Unaudited |
| Z2OBondDepository | unknown | arbitrum | 6 deployments: arbitrum [`0x16f5e5...1e300c`](./contracts/arbitrum-42161/0x16f5e519d108fe421358118e940b7dd5161e300c/); arbitrum `0x5251d7...0e0f9d`; arbitrum `0x58b95d...f9f3ba`; arbitrum `0x6fb73a...a283b6`; arbitrum `0x948b80...0be8ec`; arbitrum `0xbf5376...7a83d7` | ⚠️ Unaudited |
| Z2OStaking | unknown | arbitrum | [`0x06b4df...c9d050`](./contracts/arbitrum-42161/0x06b4dfabaf0fb0cf813526572cc86b2695c9d050/) | ⚠️ Unaudited |
| ZeroTwOhmBondingCalculator | unknown | arbitrum | [`0x3f3630...9435e5`](./contracts/arbitrum-42161/0x3f363015ded97cdda3ce2245746674091b9435e5/) | ⚠️ Unaudited |
| ZeroTwOhmTreasury | operational_periphery | arbitrum | [`0x00efcb...7a3611`](./contracts/arbitrum-42161/0x00efcbd55b59b5d08f3a7501c0ddad34a57a3611/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (104)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x03345e...cf0b77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x041733...1905ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x055e73...c49f5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0571ac...bca3de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05c6f9...830994` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x06dafc...d9a769` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x073ec2...664191` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x092a85...18d3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f2e93...b7977b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x131238...2bb152` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x14fb47...cc344b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x191354...5bdb5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b8911...c56ec6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dc30f...8aae15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1fc3a9...7e43f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x234ae7...9d3be1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2706aa...6d1ef1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x29c0dd...f9b6b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c1e2c...4fb724` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2efee1...544abd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35e62f...f2baa5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x36ea78...2fe5e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x38f28a...581983` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3cb7a3...1c07a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41ca80...f4b20c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x42eb8d...819cc3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4b8a7f...30429b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d66f7...c3cd57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4fdad7...846f2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x549110...cdb80b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x559ebd...5bdb48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5f719c...b6abe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67b789...a63d5d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6bd58f...0924db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f6676...129efe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7260fd...849576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72d9d0...3418dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x76004b...4e2c07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x78543b...a35ce7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a3161...9c3049` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b01ac...583453` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d720f...5ce62b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7fe8f6...fd4751` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82f182...f4c358` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x866486...0499ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x908046...8f6bc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x90f1cf...5f56e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x918033...080c8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9645da...0424b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x988349...afc6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x99291e...792d79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ab2de...5e8595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ec556...124452` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ff7e8...7fd6a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1c82c...4a615c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa404dc...86fa1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa43f45...3b37a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa6ace9...37178b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa950b2...458d12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xab8e08...63a3b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xadf354...9c76cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaeb522...818ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb0564f...37f981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb10975...b37792` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb20543...11ccbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb2dfd4...dbc536` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3297c...c06f73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8e5ae...7d224b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbaee34...3784b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbdc9a7...0a6d04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe9225...70df5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbf2991...ccb0fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0253c...273894` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0c54b...4f0ba3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1f3f6...69e70c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc6f72f...c44b03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc7bd4a...b5e6e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcceba9...29fe15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf94f4...2d3db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd2a8f5...4dad8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd2e1b2...2fbb4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd4b2ac...085167` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd5fcb4...6f8273` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdbe514...a400ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc71c5...16c553` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xde3590...859663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe1c349...030de6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe5ccd8...de82a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe80dda...6dd17b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9d161...2d7b61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebca5e...4c8d49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec6d6c...1d3f22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xedcade...02d54a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee1f83...50024d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf02f6f...795b8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf12435...59edf8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf3674f...e457f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf461bf...8c6aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf64682...4db068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf6f19b...a690a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf776b6...3b3bc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfddcbb...865a67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff1489...6ddd17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xffb385...3355ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x64920a...72f164`](./contracts/arbitrum-42161/0x64920af66d5772042b0aae8a1ebef75b4372f164/) | BeefyMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x46a188...f4af2b`](./contracts/arbitrum-42161/0x46a1884484a51b799414c6f02aeed80246f4af2b/) | BeefyTimelockCaller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x457c4e...7fcafa`](./contracts/arbitrum-42161/0x457c4e6b4bcaaa06245b5b34080ba9578e7fcafa/) | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | BonusDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x931dda...576441`](./contracts/arbitrum-42161/0x931dda8e3d4e4b7832e9005812c979008b576441/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f47a1...8379d4`](./contracts/arbitrum-42161/0x4f47a156fa8106aa7bd13e6219c54a78748379d4/) | BuybackMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d0ef2...fb7e57`](./contracts/arbitrum-42161/0x2d0ef29e177b82bb0ba6a7ea1a67c5de5bfb7e57/) | CollectRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f51d4...e32ce6`](./contracts/arbitrum-42161/0x0f51d4286226cb0928493abe012e75eddde32ce6/) | DeploymentManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36c73f...0af57a`](./contracts/arbitrum-42161/0x36c73f33916aa6edbb1b8a0fd63d054c7e0af57a/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde09dc...792e8e`](./contracts/arbitrum-42161/0xde09dc65417e1c48b7c3a53e56c1b61ed4792e8e/) | ERC20Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc3828f...0207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | EsGmxBatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x546c92...9c10b6`](./contracts/arbitrum-42161/0x546c928b1b2263c292cf45922a48ddfacd9c10b6/) | EthBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa1506e...a691ca`](./contracts/arbitrum-42161/0xa1506e8f078225c4f9a20cf1f9e3660d9da691ca/) | ExitVaultEntryPoint | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/) | FastPriceEvents | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7f37b0...de553f`](./contracts/arbitrum-42161/0x7f37b0f4615ba85a5dfb3c8c479ec86ac4de553f/) | GenericUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13e0bb...a4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | GlpBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f1a23...69ba39`](./contracts/arbitrum-42161/0x1f1a235b8bef4e1bed4a74530edd7abace69ba39/) | GLPDeployment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | GMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | Governable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x073248...b8fcbe`](./contracts/base-8453/0x0732484d44df021bed805501e726a1b05db8fcbe/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1305c6...aeadd6`](./contracts/berachain-80094/0x1305c60705cbc5f0098764937914f6a704aeadd6/) | LendingPoolUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x329877...bd2916`](./contracts/arbitrum-42161/0x3298772d936b3f8d7d264d6a42cda1daf6bd2916/) | MarinateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/) | MintableBaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x073248...b8fcbe`](./contracts/arbitrum-42161/0x0732484d44df021bed805501e726a1b05db8fcbe/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa27c20...62bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x076442...9b764d`](./contracts/arbitrum-42161/0x076442c05c8c1710f4c73d3166db6a57ff9b764d/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/) | PositionRouterReader | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1136b8...bac9fa`](./contracts/arbitrum-42161/0x1136b815765877f4fe626e4e82f462aed5bac9fa/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aa382...76f5c8`](./contracts/arbitrum-42161/0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1de098...4f5554`](./contracts/arbitrum-42161/0x1de098faf30bd74f22753c28db17a2560d4f5554/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb9fcd5...728d65`](./contracts/arbitrum-42161/0xb9fcd526e11aa577591d776baa051dc335728d65/) | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8bfb8e...6d40e0`](./contracts/arbitrum-42161/0x8bfb8e82ee4569aee78d03235ff465bd436d40e0/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa6f958...94fc14`](./contracts/arbitrum-42161/0xa6f9581d3a77dbe3df78d3b048756ab0d294fc14/) | RodeoCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb34891...a5ed9e`](./contracts/arbitrum-42161/0xb34891fac221f335131d1b6cd8c883d107a5ed9e/) | RodeoMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f0418...5792c7`](./contracts/arbitrum-42161/0x9f0418b5b82830bd7457e2040a37fbcfd85792c7/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8299ba...7d53df`](./contracts/arbitrum-42161/0x8299baba76ae944ffbcea6525aaacb3c1e7d53df/) | StabilizeCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xad8b9d...5380a9`](./contracts/arbitrum-42161/0xad8b9d2abea3ec3abdaf793b93c7467b525380a9/) | StabilizeMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb63366...aba240`](./contracts/arbitrum-42161/0xb6336626c56d72ea501b6d14d1abd356c8aba240/) | StakedGlpMigrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | StakeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc9ecfe...dfbd81`](./contracts/arbitrum-42161/0xc9ecfef2fac1e38b951b8c5f59294a8366dfbd81/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd80a01...881fb9`](./contracts/arbitrum-42161/0xd80a0186ac95fa975b393335ab5be987f4881fb9/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x792248...b7de13`](./contracts/arbitrum-42161/0x79224825adaa232b4d41249884f44b8d7bb7de13/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe0d0e2...79d808`](./contracts/arbitrum-42161/0xe0d0e232c09de67a3d74da1284dc5e72fc79d808/) | StandardBondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c48a9...1efa44`](./contracts/arbitrum-42161/0x3c48a997ef5badef5c07780342af0f7ed71efa44/) | SubaccountRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe6d557...a906d7`](./contracts/arbitrum-42161/0xe6d557d416ff5640235119369c7e26aa18a906d7/) | sUMAMI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09214c...9b15b8`](./contracts/arbitrum-42161/0x09214c0a3594fbcad59a58099b0a63e2b29b15b8/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ef815...75ad59`](./contracts/arbitrum-42161/0x1ef8156b46e6f5a1973bff4975177fd13275ad59/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe8e6a5...71fc97`](./contracts/arbitrum-42161/0xe8e6a534146efdcadb64c4ce78600e5c9e71fc97/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1622bf...7f86e3`](./contracts/arbitrum-42161/0x1622bf67e6e5747b81866fe0b85178a93c7f86e3/) | UMAMI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40757a...db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | VaultErrorController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b8f69...b54ce5`](./contracts/base-8453/0x0b8f69d521442c667ec01e137569eb00deb54ce5/) | Vendor4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc2e70e...4c3089`](./contracts/arbitrum-42161/0xc2e70e6ab40de43365dc798bd6b99737c54c3089/) | VendorOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57866d...789b60`](./contracts/arbitrum-42161/0x57866d65acbb7ba3269807bf7af4019366789b60/) | VesterCap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdb96f8...2fb9ac`](./contracts/arbitrum-42161/0xdb96f8efd6865644993505318cc08ff9c42fb9ac/) | Z2O | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16f5e5...1e300c`](./contracts/arbitrum-42161/0x16f5e519d108fe421358118e940b7dd5161e300c/) | Z2OBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06b4df...c9d050`](./contracts/arbitrum-42161/0x06b4dfabaf0fb0cf813526572cc86b2695c9d050/) | Z2OStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f3630...9435e5`](./contracts/arbitrum-42161/0x3f363015ded97cdda3ce2245746674091b9435e5/) | ZeroTwOhmBondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00efcb...7a3611`](./contracts/arbitrum-42161/0x00efcbd55b59b5d08f3a7501c0ddad34a57a3611/) | ZeroTwOhmTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 137 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
