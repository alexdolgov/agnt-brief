# Agentic Audit Brief: Kalmy App

## Project Overview

- Project: Kalmy App (`kalmy-app`)
- Website: [https://kalmy.app](https://kalmy.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.011Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 186 unique implementations (217 raw deployments)
- DeFi Llama TVL: $30,565.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 96 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 11 common project-authored base contract(s) (reentrancyguardupgradesafe, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 599; live-surface contracts included: 195 (38 live, 157 unknown).
- Excluded by liveness: 404 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/30 (0.0%)
- Deployed-live implementations: 30 of 186 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 156
- Unique implementations: 186
- Raw deployments: 217
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bank | unknown | bsc | n/a | [`0xef5c873494902ce586bed6d515129492cc65e8ae`](./contracts/bsc-56/0xef5c873494902ce586bed6d515129492cc65e8ae/) | ⚠️ Unaudited |
| KalmarBondingStrategy | core_logic | bsc | n/a | [`0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a`](./contracts/bsc-56/0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a/) | ⚠️ Unaudited |
| KalmarLendStaking | unknown | bsc | n/a | 2 deployments: bsc [`0xea2513acf97094b7c024cd71124be9a400397f9b`](./contracts/bsc-56/0xea2513acf97094b7c024cd71124be9a400397f9b/); bsc `0xf03c205db604fb695387ee34ba12cdaaf1ea80d3` | ⚠️ Unaudited |
| KalmarLpStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x58122898514c65c7307f0f98c84455793824794a`](./contracts/bsc-56/0x58122898514c65c7307f0f98c84455793824794a/); bsc `0x99f64ae82f76ac046af4f8860e568f26b52c637d`; bsc `0xcf70356138d43d821a7fc368efe6adb9d200e3a1` | ⚠️ Unaudited |
| KalmarLpStaking | unknown | bsc | n/a | 2 deployments: bsc [`0xdd1445a89987a2c8b1aca58f6b14e91db30528f3`](./contracts/bsc-56/0xdd1445a89987a2c8b1aca58f6b14e91db30528f3/); bsc `0xe0a133e48d5d07b8a1bc3ba7a038d698493b3da6` | ⚠️ Unaudited |
| KalmarLpStakingV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x05dfeef6d4d0f7b247b9cf69c958e600feb97d67`](./contracts/bsc-56/0x05dfeef6d4d0f7b247b9cf69c958e600feb97d67/); bsc `0x894a750f87cf3e5b16067f26908481ae85879ff6` | ⚠️ Unaudited |
| KalmarLpStakingV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x18127ae854635b8f552f8bece3b2bfa51a0228d1`](./contracts/bsc-56/0x18127ae854635b8f552f8bece3b2bfa51a0228d1/); bsc `0xa4d1063ad5dc92fb1d4c0e866c21d5a9ca16094c` | ⚠️ Unaudited |
| KalmarStakeToken | token | bsc | n/a | [`0x71af486561a7c14da0683d74cff31eb4db4ac09d`](./contracts/bsc-56/0x71af486561a7c14da0683d74cff31eb4db4ac09d/) | ⚠️ Unaudited |
| KalmarStakingRewardConfig | unknown | bsc | n/a | 4 deployments: bsc [`0x6455f7973f322306992d588114a452a5831f580a`](./contracts/bsc-56/0x6455f7973f322306992d588114a452a5831f580a/); bsc `0x8700ac384c844663a8e353faee56ba7337196c24`; bsc `0x9779c91d22182e74a881d69805cdfa57bf643c13`; bsc `0xf13d7a0a16c10161d35bc13e85f67ca3c3034840` | ⚠️ Unaudited |
| KalmarStakingV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x4c332c8e207edf7e36ae66ec54ee56286375eab7`](./contracts/bsc-56/0x4c332c8e207edf7e36ae66ec54ee56286375eab7/); bsc `0x557d49b7c30a0ae651097806846f4145fee366b5` | ⚠️ Unaudited |
| KalmarToken | token | bsc | n/a | [`0x4ba0057f784858a48fe351445c672ff2a3d43515`](./contracts/bsc-56/0x4ba0057f784858a48fe351445c672ff2a3d43515/) | ⚠️ Unaudited |
| KalmyswapV2 | unknown | bsc | n/a | [`0xbf59a80347542d7713c1072de0216e4ef0965e23`](./contracts/bsc-56/0xbf59a80347542d7713c1072de0216e4ef0965e23/) | ⚠️ Unaudited |
| LendingStaker | core_logic | bsc | n/a | [`0x72f6a431dd4522bc1cef2e472365352c98f6e275`](./contracts/bsc-56/0x72f6a431dd4522bc1cef2e472365352c98f6e275/) | ⚠️ Unaudited |
| LendingStakerByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x536d505f58701f855c2a409203e2e0edf00f5217`](./contracts/bsc-56/0x536d505f58701f855c2a409203e2e0edf00f5217/); bsc `0xf7e48657be1dd112d7c0f1ce0c7e4664abe6a642` | ⚠️ Unaudited |
| LendingStakerUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0xd749e10f0416490d86194d67c197a924ec29ebaf`](./contracts/bsc-56/0xd749e10f0416490d86194d67c197a924ec29ebaf/); bsc `0xedff7253e2c602cc1d8acc4fcca5164eae9f87b5` | ⚠️ Unaudited |
| LPStaker | unknown | bsc | n/a | 5 deployments: bsc [`0x2da912407f648393e2e79c3d349b83c339e43cb8`](./contracts/bsc-56/0x2da912407f648393e2e79c3d349b83c339e43cb8/); bsc `0x4bfea373fa2bda4f0ece9bcdd6da707e40f783b0`; bsc `0x66bf7576bc7bf05e0fe3bde775260488ff4ddcda`; bsc `0x6abfadf7141fd2484adb49651f9c8238e5d92da6`; bsc `0xb01507bd10ae415042f2f278bb834e7b37e00281` | ⚠️ Unaudited |
| LPStaker | unknown | bsc | n/a | 2 deployments: bsc [`0x3c4c9a5acab2dc525595ba68db3b4538cc12f7ad`](./contracts/bsc-56/0x3c4c9a5acab2dc525595ba68db3b4538cc12f7ad/); bsc `0xe5c4e1c85a34d4db17ed5ee6f3bbd070fdddff58` | ⚠️ Unaudited |
| MasterChefGoblinHelio | unknown | bsc | n/a | 2 deployments: bsc [`0x2245ccadd45d5bb75b3f4d9a7ed5f686f9cfb3f5`](./contracts/bsc-56/0x2245ccadd45d5bb75b3f4d9a7ed5f686f9cfb3f5/); bsc `0xa3b8fb0ddaca8b2930eeb8b4a205d57b1e7121f1` | ⚠️ Unaudited |
| MasterChefGoblinHelioStableLP | unknown | bsc | n/a | 2 deployments: bsc [`0x224ca12b212a7f94ad0978ca678f75c75ad582e4`](./contracts/bsc-56/0x224ca12b212a7f94ad0978ca678f75c75ad582e4/); bsc `0xca1d37dd6e91712e9eead81161034e75f8501754` | ⚠️ Unaudited |
| MasterChefGoblinWombat | unknown | bsc | n/a | 4 deployments: bsc [`0x1b9f38e893ba4cf5c3a59d6b49ae5b6273899cfc`](./contracts/bsc-56/0x1b9f38e893ba4cf5c3a59d6b49ae5b6273899cfc/); bsc `0x2125182e95b9527f0ad9c25ae6e9a6eb7849bd90`; bsc `0xa753c81b8d840923da3aaf5790e72ce3273ae852`; bsc `0xd5ab392e5ff03e1fe4ba540c48d0cf20e6734116` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x083bf0c8527a0080ccc80727dc03719523490949`](./contracts/bsc-56/0x083bf0c8527a0080ccc80727dc03719523490949/); bsc `0xc0e06eebd3ba59532e03937a0bdfce5dc4447613` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x2f611da2d8c486985d3b7e053dbebf2b92025920`](./contracts/bsc-56/0x2f611da2d8c486985d3b7e053dbebf2b92025920/); bsc `0x685368fc3c0ac137b2ecdc6928d00da33f021dc9` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3430dfdf6633ce23b370966c2409dc29a867d25b`](./contracts/bsc-56/0x3430dfdf6633ce23b370966c2409dc29a867d25b/); bsc `0x57a1704c75bd82840070aa148118ab79687e7b95` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3dcd7ff2567084b58afa6f9cf45485158f0e68fd`](./contracts/bsc-56/0x3dcd7ff2567084b58afa6f9cf45485158f0e68fd/); bsc `0x43863b1236a2684590f9e77596cc9e19f16397f1` | ⚠️ Unaudited |
| RewardVault | unknown | bsc | n/a | 2 deployments: bsc [`0x1615cd8502056f6c76bb9c69f55ac301680b485e`](./contracts/bsc-56/0x1615cd8502056f6c76bb9c69f55ac301680b485e/); bsc `0x4bca2d4614df73655638b5c963186852adcaff43` | ⚠️ Unaudited |
| RewardVaultV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x67dd2c716342cd0cea4dc6fc127a19d2b99daf9e`](./contracts/bsc-56/0x67dd2c716342cd0cea4dc6fc127a19d2b99daf9e/); bsc `0xecfa55e804a85a73813b89ac3e0d7c56c6daa52b` | ⚠️ Unaudited |
| RewardVesting | operational_periphery | bsc | n/a | [`0x46c593c411845c9f6f88b99a93473e27d214e855`](./contracts/bsc-56/0x46c593c411845c9f6f88b99a93473e27d214e855/) | ⚠️ Unaudited |
| TokenLocker | unknown | bsc | n/a | 2 deployments: bsc [`0x0cd2c2a5df790b00f2278f5a0296031e80f122cc`](./contracts/bsc-56/0x0cd2c2a5df790b00f2278f5a0296031e80f122cc/); bsc `0xc55ec8ac9f1765014b8a90b62f418b791b65ff33` | ⚠️ Unaudited |
| TokenLocker | unknown | bsc | n/a | 2 deployments: bsc [`0x1943ee65dceaa0deab42b2e9609f2c50300e71c8`](./contracts/bsc-56/0x1943ee65dceaa0deab42b2e9609f2c50300e71c8/); bsc `0xb65c3c0b10de94eacf5981823a3f2f5850130682` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6881d158b7d8f2a5c40b2958b580ef407dc6921f`](./contracts/bsc-56/0x6881d158b7d8f2a5c40b2958b580ef407dc6921f/); bsc `0xeb248c4c91c37e4a41c321e48bfc6463da48f2e5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (156)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0200df8d48bbd2417032db155bdb019c2f981f9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03eff36bb97e1f6d2a5a24b8aa530ceb473ba752` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x046838d7f7a32a6df9222d67d35bf5009fc90a37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x055002bf94a64c545844b23e93dc723da9c04d52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05e9c8ce1e6872953351982a5ea1923503761555` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082420537e0f2e4807abd15915f39fef29d6559e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0918e12ddfe5d08552d1797cab72806889cd1b1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c0bcfa70b63607fd4a74102f1c5fe9e2a6b97af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f7084972b4356e76ff76113d02b393b96d3c453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fa054b13f85803fc81c28b05a055e98ad90ec03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10c5949209700201065fd2dd368765426862316a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x134265efff7b556b92eaece50a9bf54b8af6cfe1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14683234922f27e75dfc0d60b32456ca327dd015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x165333bfdf9b05f252ae77a0ce32a52a06decbc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170219fcf507cac56fdfe65d478b40216f7b2e3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x176bd0752148fc4854bcc941a3332976ee3df609` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x178ec62bc54fbe77e30f9008bcfa154f5a03f8d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x183f3bc7b5aba951b332b541ec687f16ab9e6a41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19570779fead1763fe892a046addd98b6e81462b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fd5e90604acc9c5d4fed5d8e0cf5d68d019f832` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21936cfbc55b927bdd206265c6d1659c262a3b13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x219b1e7fd4012b5f79f6aab520163e17d7c3054a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21b373528fd256bca6df264d6f399f13fb20074e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2284c42d311ea06878fe7640756b7548bcae4489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24024d88b7ec9a0fe9f41ad9622f0bdbf29d177b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2576b1eb0891ac35e32123fb8e22eaa4e8944219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2654d733feae94b150b01500976d6dd4b9313905` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x272fdcc54aa195b92ff5c3ecd8ce8b6a4c7dcb29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b2329861209a4c875ee6ad9b44081aaeedd8f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc75d3be622d69b76c325facfc0becb8113d93e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2db35b1c30d7ef5b22d82452fa60e715ac2159d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dc7ec417173a2507b8a06f81f3a8de123cb87f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f52b9566a3ff81b1dadfe9f042f35b428bc209` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32aef8a414ef9ec104b2f13024838cc44056d245` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34ae38d493062cc4023279cffa81076b71ea6804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37712bd2a82b41f659522367a218a3db32404763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x391fa287bb7c705af7b53758d7037dda2dab6eed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a16f242ad2074d76d05642d621cf88a0dfadee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ce467b8f0e5b967a84cf8ab2e312601002ccae7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d483b9ffa802f573c67c746201cf5bfa6a00e1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dc215c2e5262a69f91fda3291b3bcdbc3821cf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f31aef981fe30e90d50119a68e2d53afdbf7aaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x411c706b11d0d93a43eee157f2123c8601c3d42f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41f2081529ac996be3fb3473284267582007bb55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x421da30108a3cec9654a64569a1b3e4bb167278b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x434079784569e4a7bdfcda6ea1355ac39dc2ce7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4416169c1eb4c1e76ada9af2d9e7dc6459d51412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45cd39305ccefa9d06097b4e43bf495f2e49767f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x498517647dea7e2bc8628d8a05f7274a3acff2c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a4911b97f726af6ca210323dd738678c028d823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e7b09dd90b7f2992f2502172d993a26a8eff43d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x506e28655cb601a0ae4ac4f79fddf8f1c8ff337d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5087057455f0f8c272b73dff2722351cb6a376e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51d0840d83a479d4406fe7e5b7497056f7b66412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53a82e20d9d8fffc866b69f3a86a593dc40666a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53e761fade0b693a5dd7ad881c132e0bf5e0eb10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54efd2030ab660e0642a8caa3f78e25708216cbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55741c3fa7ccd8e9c3d906fad73745d9a1b449e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x572c973d20c27681f515fd107166f841fb2bf4d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58a9b4ed3c18df790363b4cbd7e8bbda78b899e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x599b00b439cb67dbe72f342841039cebd70dcf90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bf518e63f9a5803ee6699411726931bd41f1350` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f3f074000623394954b145a04f33684488251c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6085fb43aae444a9bcb531a1bf394a7520cf6be0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6268f480de9e0a40f88d6b2d317abce2dd163d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62a119a2a8dad5b8fd274993e06fd09072c5df52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x636cc8556f8a9364156808bc65f95a94d08f5945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64fc7c037e7b1c405ac1943e1212fdeb3c17be21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6535207a3b28da568996267f9cc5a0d88b85fc34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65d969c90bea9a64ae08230e219c727a3c4ba946` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x660fa3c16377ffb5d0ea38c32b61b8ceb53c9dfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68e03339b5a01046722806221a058a3c15cb6258` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e9dddd917643ca626058eaded590a0a0ea87d60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ea107e4e3ffebbaba03f83c6ee4c3cedccf9246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ec4743ededad1706be02893aa7bc3ce911fd868` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f5f9bf0563043cd123efeaeabbb5a4c0328c438` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fc8a497463a7d0b28fc56f93ac062ced20f9102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73138ec49e64faab30aeca4a638674b465aff426` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7446e4d1b1323c7172dad0a775d224151d6859b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7890607443d9348f09b56b9da04d10a5fabebb8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79a1907cf429b36a5d15a489fac9723baaa5a7c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79d28790d130cc520478adef2e3d732fddc05b24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ee4bcd417c35ace31026d1611e8d92739594ffe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80a212633be04bffe696dad7a9dc49cca6e11d7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x845d1ea0a5fc1ee6c8b21d9952a6cf2171030188` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8662e7fe29ca3fe67f29953b4998b6f48c76cee1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x870a61c8cf8be671c5d0d09b688b6bdd406db9fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x883e81806729bec1cddc61eb3547deb99ab61cd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88513d6fb6ed8a30ef8bf737e25bdfe9b303d2fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b53249ef93436ac5e52461e3bd98cbf7cf0a0aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b8049182cf4daf9ef5a40ba073e4c7ae528b583` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f74f05f202a937ec6bdacf24ea6597f3b642760` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fa3c15892f2f82b0e6ca123bf199d0670cc6f83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90131c788ea41a376ee56427391e69939af83e11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91a0fd46d4eaa717c7d6e6bb2189e7e828e5b5ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92d82a9735b1794ee79c818e26c42ea513f413c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x951972781d25393c85b1118d0d7c6a2bd736fa4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95b4be7c279c9838782360a142c4065627710bbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ba1ba6f2db55277e46bf3323de879ac7bd407d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99def835ab707665e21f916e7ca4a1267910475a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9be0a8bf790e994985360cb33cf4db331eda8dac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bfdacba10a8027082c42f708970a021c0995d88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ca40611b3b9004daaeadfdfa870dd1327b1f481` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dbaca04df48d08dc87691b366f6b8dcf48885b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa029572d0d8551871e1367999410c792a693c1c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a3b1ae75821269c77ac45eacec6a3d279056a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0b2fab8d621ed4f7f01ddf72e330bb0e92f4d9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa28ead206aaf258e179fdc4b6531fe0dd404df86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa38e3b3a38175300fca4a825c5941837d24ccf26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4df1aa6184de3027738efe7d0664af3e51def78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6b6b178d8a8b488524c594aeec38feb11d816ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9a690bdaeedabd03ff650d9f4e64f8b7102e18c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabe3b6e6f8c01ae8ce056a7f6cf9c0104d2b85f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac976287ffc0d4ef7c6a45b59508ae8d49066432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad5d5addf5c19be1540e9b9dff2e7db01babd290` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae1636a241219bfc2d3a7db455b86512ad394aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb203c53de48bc3f640960c951d9ff755d1e1871d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb245fe9cac8603b05d1450652f1c4baf3c111c69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb29e95bf0e8595ff5c9e2c72f88f95156159b9fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2a9b6017ffb0eab3e5965025f166b19d82451b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4d9e69f12d13d98e78b93d997ec53bde70bc6a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8cd473f06a9151620138e9cc9e116ad0a6eb74e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb90f1e6d9d0bffeaa97b67a44c60fe6f2804d046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb4b5c5d3ed1c68ca39d2ab37cf899476a16cd43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb9286db1c2a35a93b56fea69345d6cff747be4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdc9025acbb2dc370eca836867ebed8b3fd58736` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea532861176dfe0713885336141bc5e2b4b95ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf548a18d775bbbb8cedbc9cad7b6014a9e76457` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc248924a5bd68922a53047e13bc224691121259a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30de45a01d0deee911614bf38585c759323cb02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30e5ddc3e3088f4e5ac76a034f58888781ff1cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc863f0e29277d2ffa8dfb702f5025c4e52c1e2f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9d794dfa8b0028e206a42ec349593a932e88d4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd78a880d338800b2d2cbcc7b1a35b451d43b49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2406a5193a59547799c71a039832ff3178eeffb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5ce7029346da4359d3fd5d74da994730b547f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd66278906e75157cf91bc9d0316a43d803ac5f09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda7de0bd8385d2e90930c3a4acee7aa7966b6c7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb1b1f5a59370a71c7327ced21ec23dcdf7140c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf0b19d9c650121a476a4e503620b8e97496ac16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfc58f1d5ed2c0b7283998b4d5d748ce31d46500` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe470a81dc7d2ee6fe7d50d86a777eeec8ab28bc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4c4f6e399fbaf8383e3a18deb4a00a7e12c12b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f431ca9bdc20a5fad590f8218bab25aa9166da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6b875f71019611a386e71a7918dc7e0d5db090d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea2903ba3d6d2542862d08664895a7f39e16f332` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea361fef1233b957784f35d16c12dd6c39fb4bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeead3f2d683d6f1e0b16b72f9ed0bca542f69c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef8c16432cd882464d408b182490ad46e22b7573` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf00054c5f81c58c4458d8dfbad778d8efc0c6237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf337c2539e6b55e839c4fdc2f9f6b7a3554cacc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7911bfdbc6a0664bdc1bc13aaba5c6f6712a0fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa09fd7bd9fbe8c15dc6803efe1e712f5429bf25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc0eb592d0e1b651115b0e091496fe6f6c9f9a75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc8314a1bfc82dc376d9c691ed2bf7d075feb397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd5f47297f794f334e70cfc3a875a6b2b758c662` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xef5c873494902ce586bed6d515129492cc65e8ae`](./contracts/bsc-56/0xef5c873494902ce586bed6d515129492cc65e8ae/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a`](./contracts/bsc-56/0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a/) | KalmarBondingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xea2513acf97094b7c024cd71124be9a400397f9b`](./contracts/bsc-56/0xea2513acf97094b7c024cd71124be9a400397f9b/) | KalmarLendStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58122898514c65c7307f0f98c84455793824794a`](./contracts/bsc-56/0x58122898514c65c7307f0f98c84455793824794a/) | KalmarLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdd1445a89987a2c8b1aca58f6b14e91db30528f3`](./contracts/bsc-56/0xdd1445a89987a2c8b1aca58f6b14e91db30528f3/) | KalmarLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05dfeef6d4d0f7b247b9cf69c958e600feb97d67`](./contracts/bsc-56/0x05dfeef6d4d0f7b247b9cf69c958e600feb97d67/) | KalmarLpStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18127ae854635b8f552f8bece3b2bfa51a0228d1`](./contracts/bsc-56/0x18127ae854635b8f552f8bece3b2bfa51a0228d1/) | KalmarLpStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71af486561a7c14da0683d74cff31eb4db4ac09d`](./contracts/bsc-56/0x71af486561a7c14da0683d74cff31eb4db4ac09d/) | KalmarStakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6455f7973f322306992d588114a452a5831f580a`](./contracts/bsc-56/0x6455f7973f322306992d588114a452a5831f580a/) | KalmarStakingRewardConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c332c8e207edf7e36ae66ec54ee56286375eab7`](./contracts/bsc-56/0x4c332c8e207edf7e36ae66ec54ee56286375eab7/) | KalmarStakingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ba0057f784858a48fe351445c672ff2a3d43515`](./contracts/bsc-56/0x4ba0057f784858a48fe351445c672ff2a3d43515/) | KalmarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf59a80347542d7713c1072de0216e4ef0965e23`](./contracts/bsc-56/0xbf59a80347542d7713c1072de0216e4ef0965e23/) | KalmyswapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72f6a431dd4522bc1cef2e472365352c98f6e275`](./contracts/bsc-56/0x72f6a431dd4522bc1cef2e472365352c98f6e275/) | LendingStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x536d505f58701f855c2a409203e2e0edf00f5217`](./contracts/bsc-56/0x536d505f58701f855c2a409203e2e0edf00f5217/) | LendingStakerByProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd749e10f0416490d86194d67c197a924ec29ebaf`](./contracts/bsc-56/0xd749e10f0416490d86194d67c197a924ec29ebaf/) | LendingStakerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2da912407f648393e2e79c3d349b83c339e43cb8`](./contracts/bsc-56/0x2da912407f648393e2e79c3d349b83c339e43cb8/) | LPStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c4c9a5acab2dc525595ba68db3b4538cc12f7ad`](./contracts/bsc-56/0x3c4c9a5acab2dc525595ba68db3b4538cc12f7ad/) | LPStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2245ccadd45d5bb75b3f4d9a7ed5f686f9cfb3f5`](./contracts/bsc-56/0x2245ccadd45d5bb75b3f4d9a7ed5f686f9cfb3f5/) | MasterChefGoblinHelio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x224ca12b212a7f94ad0978ca678f75c75ad582e4`](./contracts/bsc-56/0x224ca12b212a7f94ad0978ca678f75c75ad582e4/) | MasterChefGoblinHelioStableLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b9f38e893ba4cf5c3a59d6b49ae5b6273899cfc`](./contracts/bsc-56/0x1b9f38e893ba4cf5c3a59d6b49ae5b6273899cfc/) | MasterChefGoblinWombat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x083bf0c8527a0080ccc80727dc03719523490949`](./contracts/bsc-56/0x083bf0c8527a0080ccc80727dc03719523490949/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f611da2d8c486985d3b7e053dbebf2b92025920`](./contracts/bsc-56/0x2f611da2d8c486985d3b7e053dbebf2b92025920/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3430dfdf6633ce23b370966c2409dc29a867d25b`](./contracts/bsc-56/0x3430dfdf6633ce23b370966c2409dc29a867d25b/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3dcd7ff2567084b58afa6f9cf45485158f0e68fd`](./contracts/bsc-56/0x3dcd7ff2567084b58afa6f9cf45485158f0e68fd/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1615cd8502056f6c76bb9c69f55ac301680b485e`](./contracts/bsc-56/0x1615cd8502056f6c76bb9c69f55ac301680b485e/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67dd2c716342cd0cea4dc6fc127a19d2b99daf9e`](./contracts/bsc-56/0x67dd2c716342cd0cea4dc6fc127a19d2b99daf9e/) | RewardVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46c593c411845c9f6f88b99a93473e27d214e855`](./contracts/bsc-56/0x46c593c411845c9f6f88b99a93473e27d214e855/) | RewardVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cd2c2a5df790b00f2278f5a0296031e80f122cc`](./contracts/bsc-56/0x0cd2c2a5df790b00f2278f5a0296031e80f122cc/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1943ee65dceaa0deab42b2e9609f2c50300e71c8`](./contracts/bsc-56/0x1943ee65dceaa0deab42b2e9609f2c50300e71c8/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 156 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13339] hacken.io/audits

Fork inheritance lineage and inherited audits are included when available.
