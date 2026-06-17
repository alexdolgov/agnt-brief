# Agentic Audit Brief: BMX

⚠️ Lifecycle status: DECLINING - TVL dropped 26.4% over 90 days

## Project Overview

- Project: BMX (`bmx`)
- Website: [https://www.bmx.trade/](https://www.bmx.trade/)
- Lifecycle: declining (Tier 0, 87.6% below peak)
- Generated: 2026-06-17T07:00:41.537Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, mode, sonic
- Contract surface: 61 unique implementations (265 raw deployments)
- DeFi Llama TVL: $2,756,124.00
- On-chain TVL (included contracts): $305,691.13
- TVL by chain: Base $305,691.13

## Project Description

BMX is a decentralized exchange and derivatives protocol operating on Base, Mode, and Sonic. It offers a classic perpetuals trading platform, a freestyle trading experience with multi-account support, and a swap product called Deli Swap.

### Architecture

The families share infrastructure through a common set of fee distributors and depositor contracts, indicating a unified fee and liquidity management layer. BMX Classic Perps and BMX Freestyle likely interact with the same Symmio-based settlement and liquidation system.

## Contract Surface Quality

- Indexed contracts: 651; live-surface contracts included: 265 (265 live, 0 unknown).
- Excluded by liveness: 337 inactive, 49 singleton, 0 uninitialized.
- Deployment units: 4/22 live.
- Detected codebases: uniswap-v2, yearn-vault-v2
- Unverified dependencies: 5/74.

## Audit Coverage Summary

- Verified implementations audited: 0/60 (0.0%)
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 61
- Raw deployments: 265
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $305,691.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $305,691.13 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | base | n/a | 2 deployments: base [`0xec8d8d...b4272c`](./contracts/base-8453/0xec8d8d4b215727f3476ff0ab41c406fa99b4272c/); mode `0xff745b...f1ae49` | ⚠️ Unaudited |
| MultiAccount | core_logic | base | unit-19808 | [`0x8ab178...3f3b86`](./contracts/base-8453/0x8ab178c07184ffd44f0adff4ea2ce6cfc33f3b86/) | ⚠️ Unaudited |
| StrategyVelodromeMultiRewards | core_logic | base | n/a | 3 deployments: base [`0x1be4bb...6d4c97`](./contracts/base-8453/0x1be4bb36e7ee4902d0bf9a94683163f39c6d4c97/); base `0xa5ff7a...486f1a`; mode `0x740cfc...819f7e` | ⚠️ Unaudited |
| AirdropClaim | operational_periphery | base | n/a | [`0xf681e2...6dc060`](./contracts/base-8453/0xf681e23419409964f99ea0a282665bfea96dc060/) | ⚠️ Unaudited |
| BMX | unknown | base | n/a | 2 deployments: base [`0x548f93...f059b7`](./contracts/base-8453/0x548f93779fbc992010c07467cbaf329dd5f059b7/); mode `0x66eed5...0657eb` | ⚠️ Unaudited |
| BmxLockingContract | unknown | base | n/a | [`0xff1274...27a903`](./contracts/base-8453/0xff12748ed4e4cd5864a5e0b22e69bf572827a903/) | ⚠️ Unaudited |
| BoardwalkFeeCollector | unknown | base | n/a | 13 deployments: base [`0x0beefc...9c477e`](./contracts/base-8453/0x0beefc1a7552055e7f12c3feb52ca49f209c477e/); base `0x22dee3...d5721e`; base `0x301cf8...67f822`; base `0x3fe706...a799c7`; base `0x667e91...872f62`; base `0x66a905...56f580`; base `0x6bfbd2...c19a24`; base `0x7009f5...2f605a`; base `0xa63946...5e7e1a`; base `0xc3006b...65b4a2`; base `0xdf2833...1fd1cb`; base `0xefa297...68b4ba`; base `0xfa170b...59ab96` | ⚠️ Unaudited |
| BoardwalkLPManager | governance | base | n/a | 13 deployments: base [`0x4e500d...233834`](./contracts/base-8453/0x4e500def833ef98560705e3a95ac66f01b233834/); base `0x74dcde...9a5164`; base `0x802795...3cc7e4`; base `0x833548...d317b0`; base `0x957617...57bbbe`; base `0x9b751d...0a317e`; base `0x9e5015...c9a193`; base `0xa3d701...6cd53f`; base `0xc14dd4...f7f375`; base `0xcaf8e0...5e0016`; base `0xe38425...e8bb1b`; base `0xecebe1...e311e7`; base `0xf984b3...d24a26` | ⚠️ Unaudited |
| BoardwalkToken | token | base | n/a | 13 deployments: base [`0x002e66...74d534`](./contracts/base-8453/0x002e666fcd218d5880ee1c88e20cc139cb74d534/); base `0x0fb370...6449fa`; base `0x1ad44c...8fdc6e`; base `0x2a0e6c...912b2a`; base `0x4fd2d0...60d651`; base `0x524a1a...7bc903`; base `0x6c4d08...66be3d`; base `0xc28822...7c1de5`; base `0xce9e00...6e7333`; base `0xd753e4...f0f8dc`; base `0xd88b8c...422dad`; base `0xeb084d...dbe73e`; base `0xf37d39...545ff4` | ⚠️ Unaudited |
| BoostBurn | unknown | base | n/a | 4 deployments: base [`0x1a6661...6f57b7`](./contracts/base-8453/0x1a66610131905cb5922f41a8524ff3c7306f57b7/); base `0x4ba159...156438`; base `0x5d8c2c...0c3a85`; base `0xf6bddb...437ee1` | ⚠️ Unaudited |
| DailyEpochGauge | operational_periphery | base | n/a | 10 deployments: base [`0x001e45...855b05`](./contracts/base-8453/0x001e45067c5f1915e33271b4167f13a7a2855b05/); base `0x0b14b0...0aa959`; base `0x25892e...f82bfe`; base `0x3656ca...063098`; base `0x39909c...e3589f`; base `0x4395b5...22786b`; base `0x577d95...9133f9`; base `0xd8df4f...01f0dc`; base `0xe578cc...9f2261`; base `0xe79dbb...59d2e1` | ⚠️ Unaudited |
| DeliHook | unknown | base | n/a | [`0x570a48...83b0cc`](./contracts/base-8453/0x570a48f96035c2874de1c0f13c5075a05683b0cc/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | base | n/a | 2 deployments: base [`0x1e4eed...5d6e38`](./contracts/base-8453/0x1e4eed8fd57dfbaae060f894582ec0183c5d6e38/); mode `0x3d220d...c2b0e4` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | base | n/a | 13 deployments: base [`0x115eae...9290d0`](./contracts/base-8453/0x115eae08015d06509075292681514470349290d0/); base `0x221586...9761e2`; base `0x261764...16a4cc`; base `0x326b1b...43a2ea`; base `0x3f7b17...1a031c`; base `0x4f870d...7dcf5a`; base `0x576a43...9e371a`; base `0x7219c8...7e5d8c`; base `0x80cf58...c4af16`; base `0xac6a13...b4293f`; base `0xba05ef...d3a6ff`; base `0xc26a8b...1f74b5`; base `0xe8f5d4...910992` | ⚠️ Unaudited |
| FeeProcessor | unknown | base | n/a | 10 deployments: base [`0x2954bc...9e53ff`](./contracts/base-8453/0x2954bcf89f115e5f37e385a0fef14eddf79e53ff/); base `0x2f2c54...b0f4c6`; base `0x584e21...c0a14d`; base `0x5aa156...146429`; base `0x650647...0b41c2`; base `0x94cbdb...df6c12`; base `0xb07cc7...066a63`; base `0xe2f160...3bd9cd`; base `0xe466d6...a2988a`; base `0xf6e369...325532` | ⚠️ Unaudited |
| GovernanceVoter | unknown | base | n/a | 8 deployments: base [`0x141728...01322d`](./contracts/base-8453/0x1417288a6a8a58f01983340c7b1e68c25101322d/); base `0x1e319f...760b50`; base `0x487451...c4974c`; base `0x575599...84be8c`; base `0xbea2cd...84fbe7`; base `0xc02ee5...c82cf3`; base `0xee5451...cd303e`; base `0xf0586b...f26bdc` | ⚠️ Unaudited |
| IncentiveGauge | operational_periphery | base | n/a | 10 deployments: base [`0x55b127...71da2a`](./contracts/base-8453/0x55b12709c8503aa9dfce964706a1665ce071da2a/); base `0x584864...aca32a`; base `0x59d7bf...469213`; base `0x5fda45...bc4929`; base `0x840166...b5404a`; base `0x8546b4...861c60`; base `0xb727a2...896a05`; base `0xb86418...cb9dc7`; base `0xc04f64...162b6a`; base `0xc8c4b6...d64441` | ⚠️ Unaudited |
| IntegratorFeeCollector | unknown | base | n/a | 6 deployments: base [`0x0e2b3f...589c8b`](./contracts/base-8453/0x0e2b3fca07724dd220314561332bb85e2a589c8b/); base `0x2aa3b0...52c87b`; base `0x2c4d52...744558`; base `0x58b766...ec38b4`; base `0x7e4b63...91673e`; base `0xfcb11f...4bd3a6` | ⚠️ Unaudited |
| LaunchFactory | registry | base | n/a | 12 deployments: base [`0x080ac5...04d6d7`](./contracts/base-8453/0x080ac5d7cc1396b75142ea82c123d0e11c04d6d7/); base `0x0a818f...50bce7`; base `0x16cdca...c53b42`; base `0x3633ea...cd18ae`; base `0x36f70b...51821f`; base `0x452817...c93993`; base `0x6a1e5c...cd2c25`; base `0x78c5a4...460cba`; base `0x85b3e9...c950e8`; base `0x960b2a...e23b2d`; base `0x9772fc...1f256f`; base `0xc34df7...a3636e` | ⚠️ Unaudited |
| LPLocker | unknown | base | n/a | 8 deployments: base [`0x04be36...894338`](./contracts/base-8453/0x04be36b4e26771710173ab180dcf8a7aa3894338/); base `0x202357...07d47d`; base `0x564dfb...9c690d`; base `0x76b4ec...c29398`; base `0xa4048e...f7ec9c`; base `0xb5cdac...f9cee7`; base `0xd8989d...42ba99`; base `0xf34551...2e9afa` | ⚠️ Unaudited |
| LPStaking | unknown | base | n/a | 13 deployments: base [`0x1443f1...6cfc8c`](./contracts/base-8453/0x1443f15db5b9ae83b9904eb27c9b2ec3cf6cfc8c/); base `0x26f4d3...433f77`; base `0x2a91ee...961df1`; base `0x3875e8...684aee`; base `0x3c4c8c...2153f0`; base `0x3ea260...ac89d4`; base `0x82f209...3881d3`; base `0x9864cb...6a9c59`; base `0xac45d1...d34487`; base `0xb71f04...0e1c45`; base `0xc3adb3...058807`; base `0xe70bc4...94f1ae`; base `0xf78cb6...19a878` | ⚠️ Unaudited |
| MultiAccount | core_logic | base | unit-19798 | [`0x1c03b6...78b780`](./contracts/base-8453/0x1c03b6480a4efc2d4123ba90d7857f0e1878b780/) | ⚠️ Unaudited |
| MultiAccount | core_logic | base | unit-19805 | [`0x6d6392...719ddd`](./contracts/base-8453/0x6d63921d8203044f6abad8f346d3aea9a2719ddd/) | ⚠️ Unaudited |
| OptionTokenV3 | token | base | n/a | [`0x3ff7ab...f79713`](./contracts/base-8453/0x3ff7ab26f2dfd482c40bdadfc0e88d01bff79713/) | ⚠️ Unaudited |
| OrderBook | unknown | sonic | n/a | 3 deployments: sonic [`0x55f123...3d4364`](./contracts/sonic-146/0x55f1234662bb538231d56636bb182915b43d4364/); base `0xb8372b...3faa2a`; base `0xf9fc0b...258178` | ⚠️ Unaudited |
| ParticipationDistributor | operational_periphery | base | n/a | 8 deployments: base [`0x0660eb...d2320d`](./contracts/base-8453/0x0660eb3261eadf2e6c092f102f92cfbd65d2320d/); base `0x326875...1288c4`; base `0x384e1e...19f13a`; base `0x4ea968...731803`; base `0x5f2e1c...eb7249`; base `0x68db72...967ecf`; base `0xe92e9e...6ecd41`; base `0xfbbdcc...f225a4` | ⚠️ Unaudited |
| PositionManager | governance | base | n/a | 3 deployments: base [`0x2ace8f...855c40`](./contracts/base-8453/0x2ace8f6cc1ce4813bd2d3ace550ac95810855c40/); base `0xfcc1f4...791125`; mode `0x3cb54f...46563e` | ⚠️ Unaudited |
| PositionManagerAdapter | adapter | base | n/a | 10 deployments: base [`0x1c4ddf...21a576`](./contracts/base-8453/0x1c4ddff94e3c940c0c8054f1996a00e45221a576/); base `0x32d21f...fe0798`; base `0x4b819f...949453`; base `0x5f37da...4c06ce`; base `0x7ddd07...12fc44`; base `0x9f1bb9...760010`; base `0xac4e7d...60072c`; base `0xb05f9f...b9c42d`; base `0xe8f132...f1d352`; base `0xfd9ca0...763656` | ⚠️ Unaudited |
| PositionRouter | adapter | mode | n/a | 2 deployments: base `0x927f9c...28d443`; mode [`0x6d6ec3...9fae04`](./contracts/mode-34443/0x6d6ec3bd7c94ab35e7a0a6fda864ee35eb9fae04/) | ⚠️ Unaudited |
| PresaleManager | governance | base | n/a | 13 deployments: base [`0x12aa99...c6ac47`](./contracts/base-8453/0x12aa9936f5160f463b7cac1c370299e4a5c6ac47/); base `0x1a1bfe...8eea27`; base `0x233f68...97a193`; base `0x24d14f...96837b`; base `0x2b678e...4ed616`; base `0x33e476...193912`; base `0x68c899...e402e6`; base `0x729426...98a33a`; base `0x8895db...e91169`; base `0x955bf2...1fb567`; base `0xc89b2e...e7097c`; base `0xcea26f...51da55`; base `0xee08d8...e354d5` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | base | n/a | [`0x06c358...e34346`](./contracts/base-8453/0x06c35893ba9bc454e12c36f4117bc99f75e34346/) | ⚠️ Unaudited |
| RewardDistributorV2 | operational_periphery | base | n/a | 2 deployments: base [`0x025908...ce5266`](./contracts/base-8453/0x0259083181ae54730f4fbb1c174a53e21bce5266/); mode `0x366152...c72ba3` | ⚠️ Unaudited |
| RewardRouterV3 | adapter | base | n/a | [`0x49a976...ad124b`](./contracts/base-8453/0x49a97680938b4f1f73816d1b70c3ab801fad124b/) | ⚠️ Unaudited |
| RewardRouterV4 | adapter | base | n/a | 2 deployments: base [`0x645603...bd4ff4`](./contracts/base-8453/0x6456039168d3fe3bc5fcd9e46f3b716c1abd4ff4/); mode `0x73bf80...42353c` | ⚠️ Unaudited |
| RewardTracker | unknown | base | n/a | 2 deployments: base [`0x2d5875...fbf63c`](./contracts/base-8453/0x2d5875ab0efb999c1f49c798acb9efbd1cfbf63c/); base `0xa2242d...2badca` | ⚠️ Unaudited |
| Router | adapter | mode | n/a | 2 deployments: base `0xc60818...c3b174`; mode [`0xaa4020...82e6e0`](./contracts/mode-34443/0xaa40201575140862e9ae4f00515245670582e6e0/) | ⚠️ Unaudited |
| SealedArtMarket | unknown | base | n/a | [`0x7ac5a2...71786d`](./contracts/base-8453/0x7ac5a25952c70ca88273f21e89148f8aba71786d/) | ⚠️ Unaudited |
| ShortsTracker | unknown | base | n/a | [`0x37e626...80f420`](./contracts/base-8453/0x37e62664c7b78e1e05ca47aa80924d9a6280f420/) | ⚠️ Unaudited |
| SignatureStore | unknown | base | n/a | 5 deployments: base [`0x3668fa...fa818c`](./contracts/base-8453/0x3668fa157a95f73216aa8cd12288794c59fa818c/); base `0xb24f95...de3ec6`; base `0xc19e66...fb4996`; base `0xcbfb81...38268f`; mode `0xf05432...3ebb1a` | ⚠️ Unaudited |
| StakedGlp | token | mode | n/a | 2 deployments: base `0x647559...8bc8de`; mode [`0x0eb231...18c12a`](./contracts/mode-34443/0x0eb231766cd891ed6aa4fafeef60e1c01b18c12a/) | ⚠️ Unaudited |
| StakingRewardRouter | adapter | base | n/a | [`0xfbe760...49466c`](./contracts/base-8453/0xfbe760ad3493dfa852f1e9f702992f5a1149466c/) | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | base | n/a | 3 deployments: base [`0x3bff3c...7b51ac`](./contracts/base-8453/0x3bff3cf47ffd50c41f0768da975da271157b51ac/); base `0xe0792f...a75ebc`; mode `0x4ab0b7...1cb78b` | ⚠️ Unaudited |
| StakingRewardsZap | adapter | mode | n/a | 2 deployments: base `0xb6e64e...9af9e0`; mode [`0x22a298...8e94f4`](./contracts/mode-34443/0x22a2983ee9cc75d53c5f4adecf6299a77b8e94f4/) | ⚠️ Unaudited |
| SudoFactoryWrapper | registry | base | n/a | [`0x13918a...a3fb04`](./contracts/base-8453/0x13918a541e129a7ef210183e5e9c54486da3fb04/) | ⚠️ Unaudited |
| SudoSingleFactoryWrapper | registry | base | n/a | [`0x8e4ecb...b796f0`](./contracts/base-8453/0x8e4ecbc8ecae876d61efeb17dbf908e6acb796f0/) | ⚠️ Unaudited |
| SudoVRFRouter | adapter | base | n/a | [`0xbd9bbd...fbdeea`](./contracts/base-8453/0xbd9bbd45478259f513908c42ddf66de959fbdeea/) | ⚠️ Unaudited |
| SymmioDepositorLpToken | token | base | n/a | [`0x7beca8...457020`](./contracts/base-8453/0x7beca81a1c22eab15437f8530ed8c279f5457020/) | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | unit-19811 | [`0x9206d9...a23c59`](./contracts/base-8453/0x9206d9d8f7f1b212a4183827d20de32af3a23c59/) | ⚠️ Unaudited |
| Timelock | governance | base | n/a | 2 deployments: base [`0x0682f3...56f848`](./contracts/base-8453/0x0682f37f9079ed18935bd26385745a0acf56f848/); mode `0x6c5a77...41bdd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | [`0xc0ff4b...a2a904`](./contracts/mode-34443/0xc0ff4b56f62f20ba45f4229cc6baad986fa2a904/) | ⚠️ Unaudited |
| V2PositionHandler | unknown | base | n/a | 10 deployments: base [`0x173569...7ba75b`](./contracts/base-8453/0x1735698ea06c9a5f910845187b7121c0207ba75b/); base `0x51733d...8223bb`; base `0x6582fb...83a004`; base `0x795be1...46c011`; base `0xc3b408...57ebcb`; base `0xc41b64...946c1a`; base `0xd88c07...12da20`; base `0xef2914...945c91`; base `0xf76fb3...9646da`; base `0xffebac...77bd84` | ⚠️ Unaudited |
| V4PositionHandler | unknown | base | n/a | 10 deployments: base [`0x0e726d...bddbdd`](./contracts/base-8453/0x0e726df793a41a6d5272af6d8961eed5f8bddbdd/); base `0x1ef22d...ddfeda`; base `0x20ca2c...422dba`; base `0x36c2a9...edeb2b`; base `0x41c467...d075f9`; base `0x4b1c67...b0c5cc`; base `0x6632e2...bae471`; base `0x7591c8...8ad44a`; base `0xc8cffa...f548d1`; base `0xd79092...abb797` | ⚠️ Unaudited |
| VaultUtils | core_logic | base | n/a | 2 deployments: base [`0xcca8e0...63d405`](./contracts/base-8453/0xcca8e0f7283e1859fc954f4852e1ca3e6d63d405/); base `0xfb7f4c...9699c3` | ⚠️ Unaudited |
| VestingStream | operational_periphery | base | n/a | 13 deployments: base [`0x0a43c1...2b989e`](./contracts/base-8453/0x0a43c1000b2379463fa0073dbf1792f9c62b989e/); base `0x0f3794...0b70a0`; base `0x31a1c2...95dc9e`; base `0x4197d7...537c43`; base `0x5736a2...e694a7`; base `0x64f250...36b051`; base `0x68fb62...2cda93`; base `0x6f4280...b71646`; base `0x8488d8...91cb37`; base `0x957662...caeace`; base `0xa77ab4...bd6fd6`; base `0xc92040...1d49c7`; base `0xdd8be2...48924d` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 2 deployments: base [`0xb960af...29e666`](./contracts/base-8453/0xb960afea0c71010f41b5562fcc40c00dc329e666/); base `0xce9e7c...5d77c2` | ⚠️ Unaudited |
| Vyper_contract | unknown | mode | n/a | [`0x8b2eea...70452c`](./contracts/mode-34443/0x8b2eea0999876aab1e7955fe01a5d261b570452c/) | ⚠️ Unaudited |
| wBLTRouter | adapter | base | n/a | 2 deployments: base [`0x35e37d...f9d598`](./contracts/base-8453/0x35e37d0b4960141740135e0742579aefe5f9d598/); base `0x85237c...2246c0` | ⚠️ Unaudited |
| WeightedIndex | unknown | base | n/a | [`0x3dd79d...af26f4`](./contracts/base-8453/0x3dd79d6bd927615787cc95f2c7a77c9ac1af26f4/) | ⚠️ Unaudited |
| wMLTRouter | adapter | mode | n/a | [`0x7bf2e9...0c37f0`](./contracts/mode-34443/0x7bf2e95088f127522d27ca0277a70ba03f0c37f0/) | ⚠️ Unaudited |
| Yearn Token Vault | core_logic | base | n/a | [`0x4e74d4...bb4c7a`](./contracts/base-8453/0x4e74d4db6c0726ccded4656d0bce448876bb4c7a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x4b32a4...470f6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xec8d8d...b4272c`](./contracts/base-8453/0xec8d8d4b215727f3476ff0ab41c406fa99b4272c/) | Vault | core_logic | $305,690.13 | Verified native implementation with $305,690.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1be4bb...6d4c97`](./contracts/base-8453/0x1be4bb36e7ee4902d0bf9a94683163f39c6d4c97/) | StrategyVelodromeMultiRewards | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf681e2...6dc060`](./contracts/base-8453/0xf681e23419409964f99ea0a282665bfea96dc060/) | AirdropClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x548f93...f059b7`](./contracts/base-8453/0x548f93779fbc992010c07467cbaf329dd5f059b7/) | BMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff1274...27a903`](./contracts/base-8453/0xff12748ed4e4cd5864a5e0b22e69bf572827a903/) | BmxLockingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0beefc...9c477e`](./contracts/base-8453/0x0beefc1a7552055e7f12c3feb52ca49f209c477e/) | BoardwalkFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e500d...233834`](./contracts/base-8453/0x4e500def833ef98560705e3a95ac66f01b233834/) | BoardwalkLPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x002e66...74d534`](./contracts/base-8453/0x002e666fcd218d5880ee1c88e20cc139cb74d534/) | BoardwalkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a6661...6f57b7`](./contracts/base-8453/0x1a66610131905cb5922f41a8524ff3c7306f57b7/) | BoostBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x001e45...855b05`](./contracts/base-8453/0x001e45067c5f1915e33271b4167f13a7a2855b05/) | DailyEpochGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x570a48...83b0cc`](./contracts/base-8453/0x570a48f96035c2874de1c0f13c5075a05683b0cc/) | DeliHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e4eed...5d6e38`](./contracts/base-8453/0x1e4eed8fd57dfbaae060f894582ec0183c5d6e38/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x115eae...9290d0`](./contracts/base-8453/0x115eae08015d06509075292681514470349290d0/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2954bc...9e53ff`](./contracts/base-8453/0x2954bcf89f115e5f37e385a0fef14eddf79e53ff/) | FeeProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x141728...01322d`](./contracts/base-8453/0x1417288a6a8a58f01983340c7b1e68c25101322d/) | GovernanceVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x55b127...71da2a`](./contracts/base-8453/0x55b12709c8503aa9dfce964706a1665ce071da2a/) | IncentiveGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e2b3f...589c8b`](./contracts/base-8453/0x0e2b3fca07724dd220314561332bb85e2a589c8b/) | IntegratorFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x080ac5...04d6d7`](./contracts/base-8453/0x080ac5d7cc1396b75142ea82c123d0e11c04d6d7/) | LaunchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04be36...894338`](./contracts/base-8453/0x04be36b4e26771710173ab180dcf8a7aa3894338/) | LPLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1443f1...6cfc8c`](./contracts/base-8453/0x1443f15db5b9ae83b9904eb27c9b2ec3cf6cfc8c/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ff7ab...f79713`](./contracts/base-8453/0x3ff7ab26f2dfd482c40bdadfc0e88d01bff79713/) | OptionTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x55f123...3d4364`](./contracts/sonic-146/0x55f1234662bb538231d56636bb182915b43d4364/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0660eb...d2320d`](./contracts/base-8453/0x0660eb3261eadf2e6c092f102f92cfbd65d2320d/) | ParticipationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ace8f...855c40`](./contracts/base-8453/0x2ace8f6cc1ce4813bd2d3ace550ac95810855c40/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c4ddf...21a576`](./contracts/base-8453/0x1c4ddff94e3c940c0c8054f1996a00e45221a576/) | PositionManagerAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6d6ec3...9fae04`](./contracts/mode-34443/0x6d6ec3bd7c94ab35e7a0a6fda864ee35eb9fae04/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12aa99...c6ac47`](./contracts/base-8453/0x12aa9936f5160f463b7cac1c370299e4a5c6ac47/) | PresaleManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06c358...e34346`](./contracts/base-8453/0x06c35893ba9bc454e12c36f4117bc99f75e34346/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x025908...ce5266`](./contracts/base-8453/0x0259083181ae54730f4fbb1c174a53e21bce5266/) | RewardDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49a976...ad124b`](./contracts/base-8453/0x49a97680938b4f1f73816d1b70c3ab801fad124b/) | RewardRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x645603...bd4ff4`](./contracts/base-8453/0x6456039168d3fe3bc5fcd9e46f3b716c1abd4ff4/) | RewardRouterV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d5875...fbf63c`](./contracts/base-8453/0x2d5875ab0efb999c1f49c798acb9efbd1cfbf63c/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xaa4020...82e6e0`](./contracts/mode-34443/0xaa40201575140862e9ae4f00515245670582e6e0/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7ac5a2...71786d`](./contracts/base-8453/0x7ac5a25952c70ca88273f21e89148f8aba71786d/) | SealedArtMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x37e626...80f420`](./contracts/base-8453/0x37e62664c7b78e1e05ca47aa80924d9a6280f420/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3668fa...fa818c`](./contracts/base-8453/0x3668fa157a95f73216aa8cd12288794c59fa818c/) | SignatureStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfbe760...49466c`](./contracts/base-8453/0xfbe760ad3493dfa852f1e9f702992f5a1149466c/) | StakingRewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3bff3c...7b51ac`](./contracts/base-8453/0x3bff3cf47ffd50c41f0768da975da271157b51ac/) | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13918a...a3fb04`](./contracts/base-8453/0x13918a541e129a7ef210183e5e9c54486da3fb04/) | SudoFactoryWrapper | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e4ecb...b796f0`](./contracts/base-8453/0x8e4ecbc8ecae876d61efeb17dbf908e6acb796f0/) | SudoSingleFactoryWrapper | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7beca8...457020`](./contracts/base-8453/0x7beca81a1c22eab15437f8530ed8c279f5457020/) | SymmioDepositorLpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0682f3...56f848`](./contracts/base-8453/0x0682f37f9079ed18935bd26385745a0acf56f848/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x173569...7ba75b`](./contracts/base-8453/0x1735698ea06c9a5f910845187b7121c0207ba75b/) | V2PositionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e726d...bddbdd`](./contracts/base-8453/0x0e726df793a41a6d5272af6d8961eed5f8bddbdd/) | V4PositionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcca8e0...63d405`](./contracts/base-8453/0xcca8e0f7283e1859fc954f4852e1ca3e6d63d405/) | VaultUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a43c1...2b989e`](./contracts/base-8453/0x0a43c1000b2379463fa0073dbf1792f9c62b989e/) | VestingStream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb960af...29e666`](./contracts/base-8453/0xb960afea0c71010f41b5562fcc40c00dc329e666/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8b2eea...70452c`](./contracts/mode-34443/0x8b2eea0999876aab1e7955fe01a5d261b570452c/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35e37d...f9d598`](./contracts/base-8453/0x35e37d0b4960141740135e0742579aefe5f9d598/) | wBLTRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3dd79d...af26f4`](./contracts/base-8453/0x3dd79d6bd927615787cc95f2c7a77c9ac1af26f4/) | WeightedIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x7bf2e9...0c37f0`](./contracts/mode-34443/0x7bf2e95088f127522d27ca0277a70ba03f0c37f0/) | wMLTRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
