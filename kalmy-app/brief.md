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
| Bank | unknown | bsc | n/a | [`0xef5c87...65e8ae`](./contracts/bsc-56/0xef5c873494902ce586bed6d515129492cc65e8ae/) | ⚠️ Unaudited |
| KalmarBondingStrategy | core_logic | bsc | n/a | [`0x2cc563...9cbc3a`](./contracts/bsc-56/0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a/) | ⚠️ Unaudited |
| KalmarLendStaking | unknown | bsc | n/a | 2 deployments: bsc [`0xea2513...397f9b`](./contracts/bsc-56/0xea2513acf97094b7c024cd71124be9a400397f9b/); bsc `0xf03c20...ea80d3` | ⚠️ Unaudited |
| KalmarLpStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x581228...24794a`](./contracts/bsc-56/0x58122898514c65c7307f0f98c84455793824794a/); bsc `0x99f64a...2c637d`; bsc `0xcf7035...00e3a1` | ⚠️ Unaudited |
| KalmarLpStaking | unknown | bsc | n/a | 2 deployments: bsc [`0xdd1445...0528f3`](./contracts/bsc-56/0xdd1445a89987a2c8b1aca58f6b14e91db30528f3/); bsc `0xe0a133...3b3da6` | ⚠️ Unaudited |
| KalmarLpStakingV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x05dfee...b97d67`](./contracts/bsc-56/0x05dfeef6d4d0f7b247b9cf69c958e600feb97d67/); bsc `0x894a75...879ff6` | ⚠️ Unaudited |
| KalmarLpStakingV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x18127a...0228d1`](./contracts/bsc-56/0x18127ae854635b8f552f8bece3b2bfa51a0228d1/); bsc `0xa4d106...16094c` | ⚠️ Unaudited |
| KalmarStakeToken | token | bsc | n/a | [`0x71af48...4ac09d`](./contracts/bsc-56/0x71af486561a7c14da0683d74cff31eb4db4ac09d/) | ⚠️ Unaudited |
| KalmarStakingRewardConfig | unknown | bsc | n/a | 4 deployments: bsc [`0x6455f7...1f580a`](./contracts/bsc-56/0x6455f7973f322306992d588114a452a5831f580a/); bsc `0x8700ac...196c24`; bsc `0x9779c9...643c13`; bsc `0xf13d7a...034840` | ⚠️ Unaudited |
| KalmarStakingV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x4c332c...75eab7`](./contracts/bsc-56/0x4c332c8e207edf7e36ae66ec54ee56286375eab7/); bsc `0x557d49...e366b5` | ⚠️ Unaudited |
| KalmarToken | token | bsc | n/a | [`0x4ba005...d43515`](./contracts/bsc-56/0x4ba0057f784858a48fe351445c672ff2a3d43515/) | ⚠️ Unaudited |
| KalmyswapV2 | unknown | bsc | n/a | [`0xbf59a8...965e23`](./contracts/bsc-56/0xbf59a80347542d7713c1072de0216e4ef0965e23/) | ⚠️ Unaudited |
| LendingStaker | core_logic | bsc | n/a | [`0x72f6a4...f6e275`](./contracts/bsc-56/0x72f6a431dd4522bc1cef2e472365352c98f6e275/) | ⚠️ Unaudited |
| LendingStakerByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x536d50...0f5217`](./contracts/bsc-56/0x536d505f58701f855c2a409203e2e0edf00f5217/); bsc `0xf7e486...e6a642` | ⚠️ Unaudited |
| LendingStakerUpgradeable | unknown | bsc | n/a | 2 deployments: bsc [`0xd749e1...29ebaf`](./contracts/bsc-56/0xd749e10f0416490d86194d67c197a924ec29ebaf/); bsc `0xedff72...9f87b5` | ⚠️ Unaudited |
| LPStaker | unknown | bsc | n/a | 5 deployments: bsc [`0x2da912...e43cb8`](./contracts/bsc-56/0x2da912407f648393e2e79c3d349b83c339e43cb8/); bsc `0x4bfea3...f783b0`; bsc `0x66bf75...4ddcda`; bsc `0x6abfad...d92da6`; bsc `0xb01507...e00281` | ⚠️ Unaudited |
| LPStaker | unknown | bsc | n/a | 2 deployments: bsc [`0x3c4c9a...12f7ad`](./contracts/bsc-56/0x3c4c9a5acab2dc525595ba68db3b4538cc12f7ad/); bsc `0xe5c4e1...ddff58` | ⚠️ Unaudited |
| MasterChefGoblinHelio | unknown | bsc | n/a | 2 deployments: bsc [`0x2245cc...cfb3f5`](./contracts/bsc-56/0x2245ccadd45d5bb75b3f4d9a7ed5f686f9cfb3f5/); bsc `0xa3b8fb...7121f1` | ⚠️ Unaudited |
| MasterChefGoblinHelioStableLP | unknown | bsc | n/a | 2 deployments: bsc [`0x224ca1...d582e4`](./contracts/bsc-56/0x224ca12b212a7f94ad0978ca678f75c75ad582e4/); bsc `0xca1d37...501754` | ⚠️ Unaudited |
| MasterChefGoblinWombat | unknown | bsc | n/a | 4 deployments: bsc [`0x1b9f38...899cfc`](./contracts/bsc-56/0x1b9f38e893ba4cf5c3a59d6b49ae5b6273899cfc/); bsc `0x212518...49bd90`; bsc `0xa753c8...3ae852`; bsc `0xd5ab39...734116` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x083bf0...490949`](./contracts/bsc-56/0x083bf0c8527a0080ccc80727dc03719523490949/); bsc `0xc0e06e...447613` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x2f611d...025920`](./contracts/bsc-56/0x2f611da2d8c486985d3b7e053dbebf2b92025920/); bsc `0x685368...021dc9` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3430df...67d25b`](./contracts/bsc-56/0x3430dfdf6633ce23b370966c2409dc29a867d25b/); bsc `0x57a170...7e7b95` | ⚠️ Unaudited |
| MasterChefGoblinWombatV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3dcd7f...0e68fd`](./contracts/bsc-56/0x3dcd7ff2567084b58afa6f9cf45485158f0e68fd/); bsc `0x43863b...6397f1` | ⚠️ Unaudited |
| RewardVault | unknown | bsc | n/a | 2 deployments: bsc [`0x1615cd...0b485e`](./contracts/bsc-56/0x1615cd8502056f6c76bb9c69f55ac301680b485e/); bsc `0x4bca2d...caff43` | ⚠️ Unaudited |
| RewardVaultV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x67dd2c...9daf9e`](./contracts/bsc-56/0x67dd2c716342cd0cea4dc6fc127a19d2b99daf9e/); bsc `0xecfa55...daa52b` | ⚠️ Unaudited |
| RewardVesting | operational_periphery | bsc | n/a | [`0x46c593...14e855`](./contracts/bsc-56/0x46c593c411845c9f6f88b99a93473e27d214e855/) | ⚠️ Unaudited |
| TokenLocker | unknown | bsc | n/a | 2 deployments: bsc [`0x0cd2c2...f122cc`](./contracts/bsc-56/0x0cd2c2a5df790b00f2278f5a0296031e80f122cc/); bsc `0xc55ec8...65ff33` | ⚠️ Unaudited |
| TokenLocker | unknown | bsc | n/a | 2 deployments: bsc [`0x1943ee...0e71c8`](./contracts/bsc-56/0x1943ee65dceaa0deab42b2e9609f2c50300e71c8/); bsc `0xb65c3c...130682` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6881d1...c6921f`](./contracts/bsc-56/0x6881d158b7d8f2a5c40b2958b580ef407dc6921f/); bsc `0xeb248c...48f2e5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x0200df...981f9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03eff3...3ba752` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x046838...c90a37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x055002...c04d52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05e9c8...761555` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082420...d6559e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0918e1...cd1b1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c0bcf...6b97af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f7084...d3c453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fa054...90ec03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10c594...62316a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x134265...f6cfe1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x146832...7dd015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x165333...decbc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170219...7b2e3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x176bd0...3df609` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x178ec6...03f8d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x183f3b...9e6a41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x195707...81462b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fd5e9...19f832` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21936c...2a3b13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x219b1e...c3054a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21b373...20074e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2284c4...ae4489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24024d...9d177b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2576b1...944219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2654d7...313905` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x272fdc...7dcb29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b2329...dd8f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc75d...13d93e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2db35b...2159d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dc7ec...cb87f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f52b...8bc209` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32aef8...56d245` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34ae38...ea6804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37712b...404763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x391fa2...ab6eed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a16f2...fadee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ce467...2ccae7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d483b...a00e1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dc215...821cf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f31ae...bf7aaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x411c70...c3d42f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41f208...07bb55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x421da3...67278b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x434079...c2ce7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x441616...d51412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45cd39...49767f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x498517...cff2c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a4911...28d823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e7b09...eff43d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x506e28...ff337d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x508705...a376e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51d084...b66412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53a82e...0666a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53e761...e0eb10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54efd2...216cbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55741c...b449e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x572c97...2bf4d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58a9b4...b899e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x599b00...0dcf90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bf518...1f1350` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f3f07...8251c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6085fb...cf6be0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6268f4...163d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62a119...c5df52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x636cc8...8f5945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64fc7c...17be21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x653520...85fc34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65d969...4ba946` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x660fa3...3c9dfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68e033...cb6258` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e9ddd...a87d60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ea107...cf9246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ec474...1fd868` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f5f9b...28c438` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fc8a4...0f9102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73138e...aff426` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7446e4...6859b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x789060...bebb8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79a190...a5a7c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79d287...c05b24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ee4bc...594ffe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80a212...e11d7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x845d1e...030188` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8662e7...76cee1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x870a61...6db9fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x883e81...b61cd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88513d...03d2fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b5324...f0a0aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b8049...28b583` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f74f0...642760` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fa3c1...cc6f83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90131c...f83e11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91a0fd...e5b5ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92d82a...f413c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x951972...36fa4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95b4be...710bbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ba1b...bd407d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99def8...10475a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9be0a8...da8dac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bfdac...995d88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ca406...b1f481` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dbaca...8885b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa02957...93c1c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a3b1...9056a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0b2fa...2f4d9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa28ead...04df86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa38e3b...4ccf26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4df1a...1def78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6b6b1...d816ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9a690...02e18c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabe3b6...2b85f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac9762...066432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad5d5a...abd290` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae1636...394aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb203c5...e1871d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb245fe...111c69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb29e95...59b9fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2a9b6...2451b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4d9e6...0bc6a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8cd47...6eb74e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb90f1e...04d046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb4b5c...16cd43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb9286...47be4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdc902...d58736` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea532...4b95ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf548a...e76457` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc24892...21259a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30de4...23cb02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30e5d...1ff1cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc863f0...c1e2f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9d794...e88d4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd78a...d43b49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2406a...8eeffb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5ce70...547f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd66278...ac5f09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda7de0...6b6c7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb1b1f...7140c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf0b19...96ac16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfc58f...d46500` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe470a8...b28bc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4c4f6...2c12b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f431...9166da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6b875...db090d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea2903...16f332` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea361f...fb4bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeead3...2f69c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef8c16...2b7573` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf00054...0c6237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf337c2...4cacc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7911b...12a0fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa09fd...29bf25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc0eb5...9f9a75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc8314...feb397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd5f47...58c662` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xef5c87...65e8ae`](./contracts/bsc-56/0xef5c873494902ce586bed6d515129492cc65e8ae/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2cc563...9cbc3a`](./contracts/bsc-56/0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a/) | KalmarBondingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xea2513...397f9b`](./contracts/bsc-56/0xea2513acf97094b7c024cd71124be9a400397f9b/) | KalmarLendStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x581228...24794a`](./contracts/bsc-56/0x58122898514c65c7307f0f98c84455793824794a/) | KalmarLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdd1445...0528f3`](./contracts/bsc-56/0xdd1445a89987a2c8b1aca58f6b14e91db30528f3/) | KalmarLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05dfee...b97d67`](./contracts/bsc-56/0x05dfeef6d4d0f7b247b9cf69c958e600feb97d67/) | KalmarLpStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18127a...0228d1`](./contracts/bsc-56/0x18127ae854635b8f552f8bece3b2bfa51a0228d1/) | KalmarLpStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71af48...4ac09d`](./contracts/bsc-56/0x71af486561a7c14da0683d74cff31eb4db4ac09d/) | KalmarStakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6455f7...1f580a`](./contracts/bsc-56/0x6455f7973f322306992d588114a452a5831f580a/) | KalmarStakingRewardConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c332c...75eab7`](./contracts/bsc-56/0x4c332c8e207edf7e36ae66ec54ee56286375eab7/) | KalmarStakingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ba005...d43515`](./contracts/bsc-56/0x4ba0057f784858a48fe351445c672ff2a3d43515/) | KalmarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf59a8...965e23`](./contracts/bsc-56/0xbf59a80347542d7713c1072de0216e4ef0965e23/) | KalmyswapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72f6a4...f6e275`](./contracts/bsc-56/0x72f6a431dd4522bc1cef2e472365352c98f6e275/) | LendingStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x536d50...0f5217`](./contracts/bsc-56/0x536d505f58701f855c2a409203e2e0edf00f5217/) | LendingStakerByProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd749e1...29ebaf`](./contracts/bsc-56/0xd749e10f0416490d86194d67c197a924ec29ebaf/) | LendingStakerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2da912...e43cb8`](./contracts/bsc-56/0x2da912407f648393e2e79c3d349b83c339e43cb8/) | LPStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c4c9a...12f7ad`](./contracts/bsc-56/0x3c4c9a5acab2dc525595ba68db3b4538cc12f7ad/) | LPStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2245cc...cfb3f5`](./contracts/bsc-56/0x2245ccadd45d5bb75b3f4d9a7ed5f686f9cfb3f5/) | MasterChefGoblinHelio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x224ca1...d582e4`](./contracts/bsc-56/0x224ca12b212a7f94ad0978ca678f75c75ad582e4/) | MasterChefGoblinHelioStableLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b9f38...899cfc`](./contracts/bsc-56/0x1b9f38e893ba4cf5c3a59d6b49ae5b6273899cfc/) | MasterChefGoblinWombat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x083bf0...490949`](./contracts/bsc-56/0x083bf0c8527a0080ccc80727dc03719523490949/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f611d...025920`](./contracts/bsc-56/0x2f611da2d8c486985d3b7e053dbebf2b92025920/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3430df...67d25b`](./contracts/bsc-56/0x3430dfdf6633ce23b370966c2409dc29a867d25b/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3dcd7f...0e68fd`](./contracts/bsc-56/0x3dcd7ff2567084b58afa6f9cf45485158f0e68fd/) | MasterChefGoblinWombatV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1615cd...0b485e`](./contracts/bsc-56/0x1615cd8502056f6c76bb9c69f55ac301680b485e/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67dd2c...9daf9e`](./contracts/bsc-56/0x67dd2c716342cd0cea4dc6fc127a19d2b99daf9e/) | RewardVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46c593...14e855`](./contracts/bsc-56/0x46c593c411845c9f6f88b99a93473e27d214e855/) | RewardVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cd2c2...f122cc`](./contracts/bsc-56/0x0cd2c2a5df790b00f2278f5a0296031e80f122cc/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1943ee...0e71c8`](./contracts/bsc-56/0x1943ee65dceaa0deab42b2e9609f2c50300e71c8/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
