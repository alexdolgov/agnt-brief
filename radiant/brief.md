# Agentic Audit Brief: Radiant

⚠️ Lifecycle status: DEAD - TVL dropped 42.5% over 90 days

## Project Overview

- Project: Radiant (`radiant`)
- Website: [https://radiant.capital/#/markets](https://radiant.capital/#/markets)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:54.121Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 360 unique implementations (1120 raw deployments)
- DeFi Llama TVL: $1,879,209.00
- On-chain TVL (included contracts): $460,065.07
- TVL by chain: Arbitrum $459,571.68 | Base $484.09 | Bsc $9.31

## Project Description

Radiant is a cross-chain lending protocol that allows users to deposit assets to earn interest and borrow against them. It operates across multiple chains (Ethereum, BSC, Base, Arbitrum) and includes features like leveraged yield farming, staking, and governance.

### Architecture

The Lending family is the core, with Governance controlling its parameters and distributing incentives via ChefIncentivesController and MultiFeeDistribution. Leveraged Yield Farming extends Lending by using adapters to interact with external protocols, while Radiant V2 (RIZ) introduces isolated pools that share oracle and incentive infrastructure with the main lending system.

## Contract Surface Quality

- Indexed contracts: 1951; live-surface contracts included: 1120 (28 live, 1092 unknown).
- Excluded by liveness: 355 inactive, 476 singleton, 0 uninitialized.
- Deployment units: 1/201 live.
- Detected codebases: aave-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 7/90.

## Audit Coverage Summary

- Verified implementations audited: 51/156 (32.7%)
- Verified + Unaudited implementations: 102
- Verified by bytecode match: 4
- Unverified implementations: 204
- Unique implementations: 360
- Raw deployments: 1120
- Audits discovered: 94
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $460,065.01
- Latest audit: 2026-02 (fresh)
- Staleness: 17 fresh, 12 aging, 11 stale, 54 unknown
- Tier 1 coverage: 27.6% (OpenZeppelin)
- Note: This protocol is classified as [dead]. ASD of $460,065.01 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 43 | 27.6% | 2024-07 |
| SourceHat | Tier 2 | 23 | 14.7% | 2022-05 |
| PeckShield | Tier 2 | 19 | 12.2% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendingPoolAddressesProvider | core_logic | arbitrum | n/a | 9 deployments: bsc `0x454a8d...d6160a`; bsc `0x637647...ef6607`; bsc `0x64a59e...eee27c`; base `0xe7f252...a0c541`; arbitrum [`0x091d52...5330e4`](./contracts/arbitrum-42161/0x091d52cace1edc5527c99cdcfa6937c1635330e4/); arbitrum `0x454a8d...d6160a`; arbitrum `0x8d4757...d52832`; arbitrum `0x9b9b30...47a1f9`; arbitrum `0xe21b29...87f003` | ✅ Audited |
| StargateBorrow | core_logic | bsc | unit-32121 | [`0x249f68...4c99f0`](./contracts/bsc-56/0x249f68ad7ea302c559642c81d8be63738b4c99f0/) | ✅ Audited |
| WETHGateway | token | arbitrum | n/a | 17 deployments: ethereum `0xf25103...250527`; bsc `0x7a84c8...ebb83d`; bsc `0x8a226b...ef9d9e`; bsc `0xd0fc69...258ac9`; bsc `0xd6ee90...5276ef`; base `0x18baa3...18900a`; base `0x5a8f45...53c78a`; base `0xa044b4...415a97`; base `0xe8a2aa...371efc`; arbitrum [`0x0aee9a...39f617`](./contracts/arbitrum-42161/0x0aee9aefa6de71ca84b01019b24579901339f617/); arbitrum `0x534d48...aa15c0`; arbitrum `0x8a8f65...7dbd22`; arbitrum `0x96e82a...34445b`; arbitrum `0x99bf5f...3da1aa`; arbitrum `0xbb5ca4...a817ce`; arbitrum `0xebf974...385e9a`; arbitrum `0xfe54ab...98f631` | ✅ Audited |
| AaveOracle | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x0bb5c1...6f3782`](./contracts/bsc-56/0x0bb5c1bc173b207cbf47cdf013617087776f3782/); base `0xe37374...922164`; arbitrum `0xc0ce5d...da454b`; arbitrum `0xff785d...ce9bac` | ✅ Audited |
| AaveProtocolDataProvider | unknown | base | n/a | 5 deployments: bsc `0x2f9d57...5917e9`; base [`0x07d2dc...1b9eaf`](./contracts/base-8453/0x07d2dc09a1cbdd01e5f6ca984b060a3ff31b9eaf/); arbitrum `0x596b0c...94a2cc`; arbitrum `0xa3e42d...6a9cca`; arbitrum `0xdd109c...aa7e41` | ✅ Audited |
| AToken | token | arbitrum | n/a | 10 deployments: bsc `0x8d0aab...6d9091`; base `0xb9104d...83e759`; arbitrum [`0x3e5161...fc4a51`](./contracts/arbitrum-42161/0x3e516184686ffb009ce9f77d67dececb2afc4a51/); arbitrum `0x561647...a31c73`; arbitrum `0x6d01a7...7c2e10`; arbitrum `0xb117da...1cbffd`; arbitrum `0xb91c7f...53455c`; arbitrum `0xc0249d...e26444`; arbitrum `0xdf3e35...1f4afe`; arbitrum `0xf2c055...db74ab` | ✅ Audited |
| ATokensAndRatesHelper | token | arbitrum | n/a | 11 deployments: bsc `0x35ac38...fda78c`; bsc `0x88ca8f...b46b2b`; base `0xfe6c43...5829e7`; arbitrum [`0x00b96e...358073`](./contracts/arbitrum-42161/0x00b96e3533268f40fcc9f1cf347d73960b358073/); arbitrum `0x29200b...c189fa`; arbitrum `0x3e0730...af74ea`; arbitrum `0x595990...8c8031`; arbitrum `0x8ad6c3...c438dc`; arbitrum `0x987553...6f273f`; arbitrum `0xe0069e...96a75c`; arbitrum `0xe1e622...8bd15c` | ✅ Audited |
| BadDebtManager | governance | base | n/a | 5 deployments: bsc `0x7c3882...1c0ed9`; base [`0x034a07...c6e8e8`](./contracts/base-8453/0x034a07d5c81c9d39fc481101832d0a89fdc6e8e8/); base `0x6bd072...83945a`; arbitrum `0x5f60b8...9cb326`; arbitrum `0x939e64...908163` | ✅ Audited |
| BalancerPoolHelper | core_logic | base | unit-32189 | [`0xcccfc1...d55eee`](./contracts/base-8453/0xcccfc150d66801808dd3e5f84b3ff82957d55eee/) | ✅ Audited |
| BalancerPoolHelper | core_logic | arbitrum | unit-32247 | [`0xfc05ec...8fbb57`](./contracts/arbitrum-42161/0xfc05ec21b106e0c1e035ec4718c1394f098fbb57/) | ✅ Audited |
| BountyManager | governance | base | n/a | 3 deployments: bsc `0xe0a572...91c310`; base [`0x27dd6b...6d9451`](./contracts/base-8453/0x27dd6b151b6d558a3418fa790b1a88e8b66d9451/); arbitrum `0xa06edf...df86e9` | ✅ Audited |
| ChefIncentivesController | governance | arbitrum | n/a | 11 deployments: bsc `0x8bd4ae...f151b9`; bsc `0xdf78d3...89ed87`; bsc `0xe6b3e0...d530d6`; bsc `0xfc6798...3d9b69`; arbitrum [`0x1eb356...5adc03`](./contracts/arbitrum-42161/0x1eb356137f1499961f3daeb80d971fd1275adc03/); arbitrum `0x1fe159...aab26f`; arbitrum `0x287ff9...f0db32`; arbitrum `0x28b844...871ff7`; arbitrum `0x43828c...ab7e88`; arbitrum `0x844c0a...225e3f`; arbitrum `0xb3a086...f252d3` | ✅ Audited |
| EligibilityDataProvider | unknown | base | n/a | 13 deployments: bsc `0x24f80f...e5450c`; bsc `0x28d745...3972d9`; bsc `0x324f4b...c4e3c3`; bsc `0xa932fa...7e9658`; base [`0x15429b...a20739`](./contracts/base-8453/0x15429b9085ce461a5e79de5167116fe373a20739/); base `0x1c3df9...0adcdd`; base `0x39c5b4...5df68b`; base `0xa2b370...2a7c3e`; arbitrum `0x2c5a86...3d308a`; arbitrum `0x69a42a...c07ab4`; arbitrum `0x99aaf3...208d93`; arbitrum `0xa96846...07643f`; arbitrum `0xe51738...e5922f` | ✅ Audited |
| EmergencyWithdraw | operational_periphery | arbitrum | n/a | [`0x6bd072...83945a`](./contracts/arbitrum-42161/0x6bd0729815f529c5fbdf74d60b1561379c83945a/) | ✅ Audited |
| LendingPool | core_logic | bsc | n/a | 14 deployments: bsc [`0x11f9d3...c7360d`](./contracts/bsc-56/0x11f9d31c3fba3c0b64368fbe0d54cb6ae1c7360d/); bsc `0x210097...a3fc70`; bsc `0x4a44f5...12c120`; bsc `0x5deed2...0115df`; bsc `0xfab8ec...f0dcfd`; base `0x31ec3d...04388e`; base `0xbe666b...277223`; arbitrum `0x3d2640...f8db73`; arbitrum `0x453213...7d8c16`; arbitrum `0x499e33...033847`; arbitrum `0x6bd9ef...11bd19`; arbitrum `0x6c8b3c...52e075`; arbitrum `0x9d0cfd...5990f2`; arbitrum `0xd1b589...ef9140` | ✅ Audited |
| LendingPoolAddressesProviderRegistry | registry | bsc | n/a | 9 deployments: bsc [`0x16cd51...a9b0ce`](./contracts/bsc-56/0x16cd518fe9db541fea810b3091fbee6829a9b0ce/); bsc `0x1e8323...c620a5`; base `0x3eaf34...06b724`; arbitrum `0x397824...9e83ae`; arbitrum `0x63f4df...d0a3db`; arbitrum `0x7bb843...9c0be0`; arbitrum `0x9d36dc...c1aa5e`; arbitrum `0xbcc61a...9ee679`; arbitrum `0xdba0fa...87378c` | ✅ Audited |
| LendingPoolCollateralManager | core_logic | bsc | n/a | 10 deployments: bsc [`0x0eaf83...e8bc51`](./contracts/bsc-56/0x0eaf83f188697b02c7491830685137559ae8bc51/); bsc `0xe9e4ef...f5cd74`; base `0xa0ee2f...2a296a`; base `0xa915b9...9a1f6f`; base `0xc1e64b...7534ca`; arbitrum `0x1f88b0...57eaa4`; arbitrum `0xae32d7...46ba1e`; arbitrum `0xb8b4db...55c608`; arbitrum `0xe142ca...6b4ee8`; arbitrum `0xea09b9...8cf04a` | ✅ Audited |
| LendingPoolConfigurator | core_logic | base | n/a | 21 deployments: bsc `0x07d05f...706743`; bsc `0x657f48...4ffd70`; bsc `0x67c49d...cfbcee`; bsc `0x9d0839...8d7cea`; bsc `0x9f1da1...aed5df`; bsc `0xa2178b...82c27c`; bsc `0xb285f1...eccfd0`; base [`0x06a9e6...a9e158`](./contracts/base-8453/0x06a9e69af7a98ee3942210cf251bfaa8aea9e158/); base `0x29200b...c189fa`; base `0x3d2640...f8db73`; base `0x622fd4...da1fb1`; base `0x6ea7d8...b8cda5`; base `0x7c3882...1c0ed9`; base `0x94c5d4...41b92e`; base `0xb562f7...f00b52`; arbitrum `0x6e2b55...66b32d`; arbitrum `0x7a84c8...ebb83d`; arbitrum `0x87f60c...dd83b7`; arbitrum `0xb562f7...f00b52`; arbitrum `0xf0f1f7...7c406b`; arbitrum `0xfaf437...af91ec` | ✅ Audited |
| Leverager | unknown | bsc | n/a | 12 deployments: bsc [`0x2cd991...c4ce50`](./contracts/bsc-56/0x2cd991b0427d7676ba9aeb2bbe839f34a7c4ce50/); bsc `0x7d1568...bdde36`; bsc `0x94544f...962a22`; bsc `0xa99c14...83d079`; bsc `0xf815a4...f145d0`; base `0x6c1c68...cad25b`; base `0x954b74...747dd0`; arbitrum `0x2eab66...24be3c`; arbitrum `0x3ae05b...254ad3`; arbitrum `0x5682a3...be3b1b`; arbitrum `0x9db4c0...953b05`; arbitrum `0xc299bb...035db9` | ✅ Audited |
| LiquidityZap | adapter | bsc | n/a | [`0xa4c0aa...a3c5eb`](./contracts/bsc-56/0xa4c0aa26c7f41899d3b1bb081bc2516753a3c5eb/) | ✅ Audited |
| LockZap | adapter | bsc | n/a | 13 deployments: bsc [`0x0b4804...b2b45b`](./contracts/bsc-56/0x0b48049b1f497e50b512c9ef9149b1fff2b2b45b/); bsc `0x1b8884...40446f`; bsc `0x2a25ad...62f46a`; bsc `0x5a871b...cddca8`; bsc `0x9fbb02...4032d8`; bsc `0xade59f...ffbcd1`; base `0x32b221...10acce`; arbitrum `0x324f4b...c4e3c3`; arbitrum `0x7c8fc2...9eaabd`; arbitrum `0x8269fe...9888b9`; arbitrum `0xb285f1...eccfd0`; arbitrum `0xd59efe...620658`; arbitrum `0xe68566...de8109` | ✅ Audited |
| MasterChef | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x854775...783a95`](./contracts/arbitrum-42161/0x854775e2607a65321476f7f40d4dd33ada783a95/); arbitrum `0xc963ef...28d010` | ✅ Audited |
| MerkleDistributor | operational_periphery | arbitrum | n/a | [`0xefab5c...a23a82`](./contracts/arbitrum-42161/0xefab5c6f57f301f87875b3270bb4659e27a23a82/) | ✅ Audited |
| MiddleFeeDistribution | unknown | arbitrum | n/a | 4 deployments: bsc `0x6b29d0...d92763`; bsc `0x9d1471...168fc0`; arbitrum [`0x0633c4...f3d685`](./contracts/arbitrum-42161/0x0633c4f2dc0ef55ddc81da32f62e897c2af3d685/); arbitrum `0x0a6833...9c9c34` | ✅ Audited |
| Migration | operational_periphery | arbitrum | n/a | [`0x3f1b4d...7818f9`](./contracts/arbitrum-42161/0x3f1b4dae9c5cc45fcbadb14be6b2687f387818f9/) | ✅ Audited |
| MultiFeeDistribution | unknown | bsc | n/a | 28 deployments: bsc [`0x0df02e...46f61a`](./contracts/bsc-56/0x0df02eadc12a6c0e99404aa3831cec551c46f61a/); bsc `0x114595...053b0e`; bsc `0x24f59b...36b73a`; bsc `0x3eacec...7c5c21`; bsc `0x451841...451630`; bsc `0x80b748...39cd75`; bsc `0x8b51d6...cffcf3`; bsc `0xd1fa41...e1b1e5`; bsc `0xe9fb34...8936ec`; bsc `0xf2b789...b613ed`; base `0x2e62e4...ce0afe`; base `0x6300a1...cd7c7e`; base `0x8a0da5...ce655c`; base `0x9981ac...b9c24b`; arbitrum `0x1087f9...b51e8a`; arbitrum `0x114595...053b0e`; arbitrum `0x179c2a...9092b3`; arbitrum `0x258e97...c0ceb4`; arbitrum `0x4aa656...0591ce`; arbitrum `0x5487f9...98dc28`; arbitrum `0x893374...ae3045`; arbitrum `0xa98668...9eda99`; arbitrum `0xc20140...6e024c`; arbitrum `0xc2054a...455c13`; arbitrum `0xdb5be9...c3026c`; arbitrum `0xea541f...3a88a8`; arbitrum `0xf18547...924ab2`; arbitrum `0xf604db...f2f35d` | ✅ Audited |
| OracleRouter | operational_periphery | bsc | n/a | 16 deployments: bsc [`0x1029a5...73a165`](./contracts/bsc-56/0x1029a53c7e8e00bf9272533cd1cbec395073a165/); bsc `0x239f38...506a80`; bsc `0x56008c...98e678`; bsc `0x954b74...747dd0`; base `0x211dd8...cfb350`; arbitrum `0x3d5c91...0188e1`; arbitrum `0x44055d...61fa69`; arbitrum `0x449b8d...fe8650`; arbitrum `0x46cf30...6bcf14`; arbitrum `0x8e9554...827118`; arbitrum `0xaca72b...171c69`; arbitrum `0xb0de7e...183eb7`; arbitrum `0xceac14...4edde1`; arbitrum `0xd01cac...e5d366`; arbitrum `0xe7ff51...c70014`; arbitrum `0xf51c84...8fc324` | ✅ Audited |
| PriceProvider | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x75f6b5...3a4d89`](./contracts/bsc-56/0x75f6b5f1338f64d7471b7e9b1cc35c26c73a4d89/); arbitrum `0x940382...d81c1d` | ✅ Audited |
| RevenueManagement | unknown | arbitrum | n/a | 6 deployments: bsc `0x36b47c...259b87`; bsc `0x68b672...6ead15`; bsc `0xafbf0b...d5710f`; arbitrum [`0x2bf462...53a385`](./contracts/arbitrum-42161/0x2bf46284e2284cb2e309f89a66c1831c1653a385/); arbitrum `0x8652c1...b3e1e9`; arbitrum `0xb80b81...7f228e` | ✅ Audited |
| RizAToken | token | arbitrum | n/a | 13 deployments: bsc `0x284c6a...66395f`; bsc `0xe9d415...0ec63e`; base `0xa98668...9eda99`; base `0xbaa5d4...af341b`; base `0xfab8ec...f0dcfd`; arbitrum [`0x10b320...bcf357`](./contracts/arbitrum-42161/0x10b3202fdfa6c9947d3a81639d2e088ce3bcf357/); arbitrum `0x172e1f...c11b3f`; arbitrum `0x18628b...7b37c5`; arbitrum `0x735326...53816f`; arbitrum `0x784333...495174`; arbitrum `0x900c10...f61b44`; arbitrum `0xafea11...108229`; arbitrum `0xe0f1be...f8e3c5` | ✅ Audited |
| RizLendingPool | core_logic | arbitrum | n/a | 5 deployments: base `0x854c10...fbfcee`; arbitrum [`0x11737f...f47e73`](./contracts/arbitrum-42161/0x11737f86f10c22d7d53ea99fa3be6f79c0f47e73/); arbitrum `0x57e28a...cbe115`; arbitrum `0x9f5809...09c067`; arbitrum `0x9f8a39...792f1c` | ✅ Audited |
| RizLendingPoolAddressesProvider | core_logic | base | n/a | 21 deployments: bsc `0x2e4348...bfa062`; bsc `0xbe7c10...4c0482`; bsc `0xe986b0...0eeaef`; bsc `0xf2e9dd...0e36c2`; base [`0x0496f4...e454ef`](./contracts/base-8453/0x0496f4c03e810b7f640437bc767f9b2209e454ef/); base `0x221c7e...7dbd67`; base `0x395025...2ef6bf`; base `0x61cbce...139feb`; base `0x88d875...4cef5b`; base `0x902a27...5ec2fe`; base `0xfa5841...36204f`; arbitrum `0x35dcfe...6402c8`; arbitrum `0x368633...a4ad7f`; arbitrum `0x43c7f9...1441fe`; arbitrum `0x4c128a...14ca97`; arbitrum `0x58a2d3...213a35`; arbitrum `0xc424bf...7da33c`; arbitrum `0xc4da16...62b689`; arbitrum `0xd2dfe8...a822ba`; arbitrum `0xf4664e...3a104e`; arbitrum `0xffd5d4...293344` | ✅ Audited |
| RizLendingPoolConfigurator | core_logic | bsc | n/a | 5 deployments: bsc [`0x1cbc11...0425df`](./contracts/bsc-56/0x1cbc119fc75e069772ed148d05ed3b321f0425df/); base `0x760efe...c2f190`; base `0xb1b646...6b5091`; arbitrum `0x85c831...2e1a5b`; arbitrum `0xd8b53a...f22f23` | ✅ Audited |
| RizLeverager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x76c82c...0577fe`](./contracts/arbitrum-42161/0x76c82c3b3a5991397f5b4c7245eff39bce0577fe/); arbitrum `0x88ca8f...b46b2b` | ✅ Audited |
| RizLockZap | adapter | base | n/a | 2 deployments: base [`0x5c1abc...2bf434`](./contracts/base-8453/0x5c1abcda37237b8ca4a85d243055d192352bf434/); arbitrum `0xe83fb4...33a84c` | ✅ Audited |
| RizRegistry | registry | arbitrum | n/a | 10 deployments: bsc `0xbef81e...74a826`; base `0x28ab20...a5f201`; base `0x45b996...0f5eaf`; base `0xc19c2c...9aae7e`; arbitrum [`0x04fd72...a0d11d`](./contracts/arbitrum-42161/0x04fd72bcc546f33501a56de9bce495c436a0d11d/); arbitrum `0x1a62ec...912cc9`; arbitrum `0x4e897d...c6bcd0`; arbitrum `0x7ac8a6...7068a9`; arbitrum `0xb0be3b...daf2ed`; arbitrum `0xd50512...4bad41` | ✅ Audited |
| StableAndVariableTokensHelper | token | arbitrum | n/a | 5 deployments: bsc `0xff20cd...83074f`; base `0x94ec38...db1f53`; arbitrum [`0x0f9819...c1772b`](./contracts/arbitrum-42161/0x0f9819516eadfc947e652710e3dbf738d6c1772b/); arbitrum `0x5eb35e...a17f29`; arbitrum `0x777d8e...6055cc` | ✅ Audited |
| StableDebtToken | token | arbitrum | n/a | 8 deployments: bsc `0xd1e8a7...b597ae`; bsc `0xfe1da0...aab86c`; base `0x69633f...d0e0b4`; base `0x9bd924...8a9db8`; base `0xb985ae...92777b`; arbitrum [`0x23b7bf...d5b31d`](./contracts/arbitrum-42161/0x23b7bfd4690729748aeec9dad904dbc01bd5b31d/); arbitrum `0x34a7a8...24ebd0`; arbitrum `0xb05432...adf7c5` | ✅ Audited |
| StargateBorrow | core_logic | base | unit-32170 | [`0x664403...110804`](./contracts/base-8453/0x664403cf9558a544e334be7a664ca34914110804/) | ✅ Audited |
| StargateBorrow | core_logic | arbitrum | unit-32225 | [`0x9441fc...e51dc9`](./contracts/arbitrum-42161/0x9441fcd3e538a84e122ac6ffe3c07417cbe51dc9/) | ✅ Audited |
| StargateBorrow | core_logic | arbitrum | n/a | [`0xed60be...f1f68f`](./contracts/arbitrum-42161/0xed60be096713de7c98558d4e5206bdb397f1f68f/) | ✅ Audited |
| TokenizedStrategy | core_logic | arbitrum | n/a | [`0x1636c9...9f0297`](./contracts/arbitrum-42161/0x1636c951df87b6d1eb757f835d8abffd759f0297/) | ✅ Audited |
| TokenVesting | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5a88e4...d15740`](./contracts/arbitrum-42161/0x5a88e473fa2f4012e6c1b730dd070e4b15d15740/); arbitrum `0x6596d5...381608` | ✅ Audited |
| UiPoolDataProvider | core_logic | bsc | n/a | 2 deployments: bsc [`0x856d2e...29c7ee`](./contracts/bsc-56/0x856d2e8769f802a40ad4236e481d45e53c29c7ee/); arbitrum `0x9d7c08...f3bcc6` | ✅ Audited |
| UiPoolDataProviderV2V3 | core_logic | arbitrum | n/a | 7 deployments: bsc `0xb9f4de...065691`; bsc `0xfb99b2...e612b6`; base `0xe3809a...f9996c`; arbitrum [`0x56d4b0...fdd733`](./contracts/arbitrum-42161/0x56d4b07292343b149e0c60c7c41b7b1eeefdd733/); arbitrum `0x80c641...20fc31`; arbitrum `0xc8e3be...2fa5d8`; arbitrum `0xed1ef2...dc08ce` | ✅ Audited |
| UniswapPoolHelper | core_logic | bsc | unit-32122 | [`0x279e50...ac47cb`](./contracts/bsc-56/0x279e503b5cc11c733fa10d90ea10e93739ac47cb/) | ✅ Audited |
| ValidationLogic | unknown | arbitrum | n/a | 7 deployments: bsc `0xab92ea...40cf11`; bsc `0xf275d5...d4aaae`; base `0xb4a36f...b9298a`; arbitrum [`0x09a654...38fea6`](./contracts/arbitrum-42161/0x09a654fcc30bc5a57b6b8750e958a35d6038fea6/); arbitrum `0x355eea...8d50e1`; arbitrum `0xabc131...580ff6`; arbitrum `0xbc3c93...3eefb8` | ✅ Audited |
| VariableDebtToken | token | arbitrum | n/a | 15 deployments: bsc `0x8803e8...0a3d87`; base `0x73084c...acc261`; base `0x91597e...c21348`; base `0xb3a2ba...caf704`; base `0xe0060d...67d16e`; arbitrum [`0x0d7510...02cfed`](./contracts/arbitrum-42161/0x0d75108820d13ca90303ae4f9c7c4fffb102cfed/); arbitrum `0x1272a4...67e64d`; arbitrum `0x48057f...21fe19`; arbitrum `0x5ca5cf...6d41e1`; arbitrum `0x7a6bfc...409013`; arbitrum `0x88f589...dfbca8`; arbitrum `0x8ecdcd...f42635`; arbitrum `0xc9e4f5...b04c5d`; arbitrum `0xf3224e...cc2ba7`; arbitrum `0xfa6ce6...b1208d` | ✅ Audited |
| WalletBalanceProvider | unknown | arbitrum | n/a | 5 deployments: bsc `0xa04a72...b8891b`; base `0xd3c1ac...0e1504`; arbitrum [`0x6ac30e...885610`](./contracts/arbitrum-42161/0x6ac30e227468773af2f70cd0f3a0375520885610/); arbitrum `0xe36d52...75c621`; arbitrum `0xe71881...3ee643` | ✅ Audited |
| YRizStrategy | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x0bf3f9...784686`](./contracts/arbitrum-42161/0x0bf3f9e707108a76c7a28501d9ffd0cadf784686/); arbitrum `0x78862a...dab57c` | ✅ Audited |

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GLPStrategy | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x43ea3e...6c6dc1`](./contracts/arbitrum-42161/0x43ea3e4bce7b4c6be61cee8aac475596ca6c6dc1/); arbitrum `0xb0ff86...a053d7`; arbitrum `0xf6e0fa...5b26a7` | ⚠️ Unaudited |
| GLPVault | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x76b0d9...41f4b7`](./contracts/arbitrum-42161/0x76b0d99fd5f1314f30b4f609d0841fb3b741f4b7/); arbitrum `0xc0e823...d04078`; arbitrum `0xd75cbe...778999` | ⚠️ Unaudited |
| RadiantToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x01a01d...67f6ba`](./contracts/arbitrum-42161/0x01a01deaf702e960d91151de6113e1fc4667f6ba/); arbitrum `0x0c4681...d96017` | ⚠️ Unaudited |
| RadiantLendingMarket | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x636563...f973aa`; bsc `0xcdc0e0...8e645d`; base `0x5d6492...93dd66`; base `0xdffe96...d974eb`; base `0xfdfca0...8b1f54`; arbitrum [`0x41e558...67ae38`](./contracts/arbitrum-42161/0x41e5585496c6e43d9fd548b5f88fc2d90d67ae38/); arbitrum `0x7d19e0...4f86b8` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | arbitrum | n/a | 4 deployments: bsc `0x55e367...dffa47`; base `0x7bb8b0...8d6570`; arbitrum [`0x436705...2bb52f`](./contracts/arbitrum-42161/0x436705ffeefde180ddc4f1cb09c5d8fff32bb52f/); arbitrum `0xad891b...486dd5` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | bsc | n/a | 4 deployments: ethereum `0x63c5d4...daccc1`; bsc [`0x172e1f...c11b3f`](./contracts/bsc-56/0x172e1f86277c9e7e2ec175c6b3d1d47576c11b3f/); base `0xcd4b35...811b3a`; arbitrum `0xbf6120...33c703` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-32218 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | base | n/a | [`0xb5ecaa...d706bf`](./contracts/base-8453/0xb5ecaa1a867feccd6d87604bc16a2b6b53d706bf/) | ⚠️ Unaudited |
| ArbAirdrop | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x3b5ab6...03e421`](./contracts/arbitrum-42161/0x3b5ab6516c567f83c9835065608ee4e04703e421/); arbitrum `0x64d17c...58cac8` | ⚠️ Unaudited |
| ATokenUSDCnFix | token | arbitrum | n/a | [`0x2cecbf...d0154f`](./contracts/arbitrum-42161/0x2cecbf7a49c78cbf9490695c43978aa340d0154f/) | ⚠️ Unaudited |
| ChainlinkAdapterComputedGeneric | adapter | base | n/a | 4 deployments: base [`0x7703f9...8fa4c4`](./contracts/base-8453/0x7703f93b43c5f722bdf3197b37eaf4291a8fa4c4/); base `0xbffc0f...bbfa0a`; arbitrum `0x818a3b...cfb031`; arbitrum `0xd257bf...2ef3c3` | ⚠️ Unaudited |
| ChainlinkAdapterWSTETH | adapter | base | unit-32158 | [`0x2edce2...30b104`](./contracts/base-8453/0x2edce2440b34afaaf5e0f1da33a8d5acaf30b104/) | ⚠️ Unaudited |
| ChainlinkAdapterWSTETH | adapter | arbitrum | unit-32224 | [`0x939582...06f7b9`](./contracts/arbitrum-42161/0x939582ea3953bf77fe5cafd5f5f2719c5406f7b9/) | ⚠️ Unaudited |
| ChainlinkOracleV2Factory | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x043fff...5d6d39`](./contracts/ethereum-1/0x043fff1bda86602652d3e3148d7ee0ef4e5d6d39/); bsc `0x735326...53816f`; base `0xfa59e2...30747e`; arbitrum `0x54ac95...1fb778` | ⚠️ Unaudited |
| Compounder | adapter | bsc | unit-32132 | [`0x8fe962...04c367`](./contracts/bsc-56/0x8fe962dd1f322780f2cb0264ea1edc8a1504c367/) | ⚠️ Unaudited |
| Compounder | adapter | base | unit-32180 | [`0x963ea0...8cc214`](./contracts/base-8453/0x963ea010998aad74c0a0b96b1047142a7a8cc214/) | ⚠️ Unaudited |
| Compounder | adapter | base | unit-32186 | [`0xb905f3...eabfb7`](./contracts/base-8453/0xb905f3c95576baa125c56e477d119db9f9eabfb7/) | ⚠️ Unaudited |
| Compounder | adapter | arbitrum | unit-32231 | [`0xb2c2c7...8f9610`](./contracts/arbitrum-42161/0xb2c2c72f57864baca7bda6bcb5965ab8f58f9610/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | arbitrum | n/a | 245 deployments: ethereum `0x2fca33...ce6b42`; ethereum `0x56d01b...1c158d`; ethereum `0xa2178b...82c27c`; ethereum `0xc3720c...dd1403`; bsc `0x08849c...437680`; bsc `0x0f1265...1194e9`; bsc `0x115a49...7a5918`; bsc `0x148f1f...4b2044`; bsc `0x16ad36...537e08`; bsc `0x21368d...ab8802`; bsc `0x2c1864...a1f4b3`; bsc `0x316773...c02e0b`; bsc `0x35829d...a4f67f`; bsc `0x393b7d...52685d`; bsc `0x3a7437...aeb46d`; bsc `0x3d272a...476ffa`; bsc `0x411d27...a7b3e7`; bsc `0x435832...eb3d2e`; bsc `0x4593c1...03ce02`; bsc `0x484aa7...e2f43e`; bsc `0x493fa9...2acd43`; bsc `0x49b4b4...551757`; bsc `0x533a2f...a4ed4d`; bsc `0x580f09...3a328c`; bsc `0x58dbfd...85d851`; bsc `0x59722f...39d947`; bsc `0x5a10bb...ebe9ab`; bsc `0x5b5826...413a1f`; bsc `0x5c94d4...9fa995`; bsc `0x5d07ba...9d0582`; bsc `0x604f49...fe26a5`; bsc `0x61969a...3f52ca`; bsc `0x666d6e...6ddd2f`; bsc `0x70b767...7b31ee`; bsc `0x71ade8...f25025`; bsc `0x71b692...2f86de`; bsc `0x808b3a...cbb267`; bsc `0x827bea...bf0b8f`; bsc `0x84d638...37611f`; bsc `0x8aff59...6b5e88`; bsc `0x8c35b0...6abc12`; bsc `0x8d3448...c40610`; bsc `0x927943...0cca6f`; bsc `0x94747f...13f58c`; bsc `0x96fd9c...a417e2`; bsc `0x99283a...31c32d`; bsc `0x9caf77...6e7c14`; bsc `0x9f2ae0...46f27a`; bsc `0x9f8977...9e78cb`; bsc `0xa6fa10...c614e3`; bsc `0xa81328...b9c946`; bsc `0xb4b54f...31e888`; bsc `0xb77e7e...8d2ca6`; bsc `0xb87d92...6283a3`; bsc `0xb9bf86...8dadc6`; bsc `0xbabf97...a174d6`; bsc `0xc51380...3118c6`; bsc `0xc97225...975d5c`; bsc `0xc9a505...2df7e5`; bsc `0xcb1ee2...951c06`; bsc `0xcb48e3...f5b043`; bsc `0xcbb1af...cecc9d`; bsc `0xce189d...a9a57f`; bsc `0xd033d1...fa28a3`; bsc `0xd9c8df...a5fb33`; bsc `0xda5034...70fc4e`; bsc `0xe1ecc1...1a7505`; bsc `0xe86f8c...15528b`; bsc `0xe9d780...5b916f`; bsc `0xf46e25...869050`; bsc `0xf4ac36...fa4b90`; bsc `0xf7146d...9f1b3f`; base `0x061f72...3ecfd6`; base `0x0db9c1...98ca57`; base `0x167520...0c2949`; base `0x234984...c559b4`; base `0x3318dc...7da14a`; base `0x376cb2...4385c7`; base `0x3ff14f...e03109`; base `0x44bf53...939a13`; base `0x5371fa...e4113b`; base `0x5f4f9b...e87120`; base `0x613189...dcf136`; base `0x61bdaf...0fb17d`; base `0x6e680f...a6f357`; base `0x75be55...2cecfc`; base `0x81fbbe...4072b6`; base `0x900286...e17ff6`; base `0x9fab3d...d490d8`; base `0xa2015d...820e24`; base `0xa2178b...82c27c`; base `0xa8a713...fb5aac`; base `0xb7b4ed...76049b`; base `0xb9b35a...cb4dc7`; base `0xba35a9...8d3e16`; base `0xc8dba6...007293`; base `0xe0e151...bebac8`; base `0xe36694...660a84`; base `0xfc0630...a30592`; arbitrum [`0x009658...7e55a2`](./contracts/arbitrum-42161/0x00965890db00c8fda3eb9d6345fd09ea447e55a2/); arbitrum `0x00ff3b...3a9577`; arbitrum `0x0210c3...6d0dc3`; arbitrum `0x033b24...7e905c`; arbitrum `0x0361c0...bb44a5`; arbitrum `0x041fa8...3481e1`; arbitrum `0x0434cf...26ff92`; arbitrum `0x057e31...194112`; arbitrum `0x07d05f...706743`; arbitrum `0x0854e4...bfc2f4`; arbitrum `0x0a8971...939733`; arbitrum `0x0b7734...7f1870`; arbitrum `0x0b9f9f...230c05`; arbitrum `0x1022d9...1c55db`; arbitrum `0x10b2c1...8f974b`; arbitrum `0x1403ba...19149a`; arbitrum `0x15cf77...a1f4af`; arbitrum `0x166e84...20147f`; arbitrum `0x17a4b3...5a7d3e`; arbitrum `0x18e3a3...f61aaa`; arbitrum `0x1de7b3...7e7018`; arbitrum `0x1eeda2...09230e`; arbitrum `0x1ff183...193f45`; arbitrum `0x201cfa...831c80`; arbitrum `0x210097...a3fc70`; arbitrum `0x226a23...f44449`; arbitrum `0x2544c8...cfb551`; arbitrum `0x25e71c...305c2d`; arbitrum `0x28f173...3cc49f`; arbitrum `0x29f6ba...0da4dc`; arbitrum `0x2b69dd...59e84b`; arbitrum `0x2c0e2a...0610a8`; arbitrum `0x2c5e48...8bcea6`; arbitrum `0x3574a2...f4bb4d`; arbitrum `0x358ad5...902a60`; arbitrum `0x35d598...8ac5cb`; arbitrum `0x3a1eb8...c35e88`; arbitrum `0x3cf0be...1f8332`; arbitrum `0x3d51ae...6d1ddc`; arbitrum `0x40e73d...72e275`; arbitrum `0x40ecbd...1acc0c`; arbitrum `0x441b33...5ae0ce`; arbitrum `0x44bf53...939a13`; arbitrum `0x44fc17...136a5b`; arbitrum `0x4593c1...03ce02`; arbitrum `0x466a6d...5d655e`; arbitrum `0x46d4f3...75dacf`; arbitrum `0x470600...1ccc90`; arbitrum `0x4b2fe7...eccdd0`; arbitrum `0x4d5fc4...9f56d8`; arbitrum `0x4e4cb4...ac2f50`; arbitrum `0x4feb6a...7e17cb`; arbitrum `0x501f62...bf4946`; arbitrum `0x51baef...382f3f`; arbitrum `0x51e0ed...54b25b`; arbitrum `0x562de1...e328f7`; arbitrum `0x5c151e...f89cde`; arbitrum `0x5cbe40...e1bb0a`; arbitrum `0x6183e8...c75d00`; arbitrum `0x64dc70...37eb14`; arbitrum `0x657f48...4ffd70`; arbitrum `0x68a89f...202ccb`; arbitrum `0x699ddf...03e436`; arbitrum `0x69e2c9...4f1844`; arbitrum `0x6c6573...443670`; arbitrum `0x6d840d...c963ba`; arbitrum `0x6dc3fa...b546ed`; arbitrum `0x6dd74e...e53655`; arbitrum `0x6f7316...8f9de4`; arbitrum `0x7385ee...d47d7b`; arbitrum `0x75a3bb...79790d`; arbitrum `0x77177c...02f6c9`; arbitrum `0x77dc93...264188`; arbitrum `0x7a4ae7...aa219e`; arbitrum `0x7bd068...ab75a2`; arbitrum `0x7c0c36...1e28c7`; arbitrum `0x7e8c4c...b7cabd`; arbitrum `0x7ebe30...1f9251`; arbitrum `0x7f34ba...2e782b`; arbitrum `0x808ea4...4896db`; arbitrum `0x814cbe...8c0cc1`; arbitrum `0x846c62...73c79f`; arbitrum `0x85740a...323e3d`; arbitrum `0x878120...f4cfaf`; arbitrum `0x884956...5738a5`; arbitrum `0x8b9bc0...a3ac98`; arbitrum `0x8dab96...6aedce`; arbitrum `0x8fb799...a608a5`; arbitrum `0x92f750...a685db`; arbitrum `0x93820d...92236a`; arbitrum `0x93a69d...b3ccde`; arbitrum `0x93e960...95c9c1`; arbitrum `0x95a9c9...7cf121`; arbitrum `0x96c516...cff2b5`; arbitrum `0x9787a3...e61d64`; arbitrum `0x9b3610...3e8873`; arbitrum `0x9c42af...6d18c0`; arbitrum `0x9caf77...6e7c14`; arbitrum `0x9d0839...8d7cea`; arbitrum `0x9ea26f...b40f07`; arbitrum `0x9fa24f...4014b8`; arbitrum `0xa1aeb1...078df6`; arbitrum `0xa47d30...f6627c`; arbitrum `0xad22d8...5dac38`; arbitrum `0xad622d...c4674b`; arbitrum `0xaf33ff...c619a3`; arbitrum `0xb8b960...f7dc92`; arbitrum `0xbba569...55891c`; arbitrum `0xbbc6de...a933ca`; arbitrum `0xbca707...1bd002`; arbitrum `0xbfc85e...3f0f4e`; arbitrum `0xc0361e...a53d8f`; arbitrum `0xc3720c...dd1403`; arbitrum `0xc42bb9...496eea`; arbitrum `0xc5abff...c08f54`; arbitrum `0xc7d630...4a4b34`; arbitrum `0xcb1d92...8b4b44`; arbitrum `0xcd8a46...c31bd9`; arbitrum `0xd0c1bf...71b17d`; arbitrum `0xd68792...16e719`; arbitrum `0xd7de80...aab29d`; arbitrum `0xd82108...d845d7`; arbitrum `0xdaa1bd...484c77`; arbitrum `0xdd967b...f64f48`; arbitrum `0xde3aa6...626d83`; arbitrum `0xde8a78...2e19c3`; arbitrum `0xe129f0...0589c2`; arbitrum `0xe1e47f...99303a`; arbitrum `0xe33191...bab3a7`; arbitrum `0xe53c9a...5d18a9`; arbitrum `0xe5d8b8...b02e54`; arbitrum `0xe5fca7...4c0e34`; arbitrum `0xe9d415...0ec63e`; arbitrum `0xebb280...fc9973`; arbitrum `0xef363f...7b3a93`; arbitrum `0xef3d9c...68485f`; arbitrum `0xf0a1e7...63158b`; arbitrum `0xf46319...25e221`; arbitrum `0xf963bc...9e38b8`; arbitrum `0xf9cb0f...0196ff`; arbitrum `0xfa11a4...a57c6f`; arbitrum `0xfaaebe...e3e791`; arbitrum `0xfaee84...99080f`; arbitrum `0xfb3737...bb4dcc`; arbitrum `0xfc0ba6...5e4a27`; arbitrum `0xfe2259...408b03` | ⚠️ Unaudited |
| DiamondCut | unknown | base | n/a | 2 deployments: base [`0x931462...b6fe2e`](./contracts/base-8453/0x9314625e61fbcd3b325679c7910d8a3747b6fe2e/); base `0xe235f1...fdd63f` | ⚠️ Unaudited |
| DiamondEtherscan | unknown | base | n/a | 2 deployments: base [`0x4063fc...82718f`](./contracts/base-8453/0x4063fc291f4ff732e8fba39cd6576659a982718f/); base `0x8cba6c...305378` | ⚠️ Unaudited |
| DiamondLoupe | unknown | base | n/a | 2 deployments: base [`0x001f14...b65295`](./contracts/base-8453/0x001f1489750bd260dbc2a91e92d3fc459eb65295/); base `0xd0c5dc...b31a15` | ⚠️ Unaudited |
| DistributionCreator | unknown | base | n/a | 5 deployments: base [`0x7db281...a23383`](./contracts/base-8453/0x7db28175b63f154587bbb1cae62d39ea80a23383/); base `0x7f9154...1d0725`; base `0xa0e088...f53de4`; base `0xa6055d...2e2918`; base `0xd411d0...bdc84f` | ⚠️ Unaudited |
| Distributor | operational_periphery | base | n/a | 3 deployments: base [`0x65d69b...6339c0`](./contracts/base-8453/0x65d69b87f18f34eb0590b4261aee12e18f6339c0/); base `0x918261...5cca35`; base `0xe23f6b...1cd25e` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | base | n/a | 2 deployments: base [`0x5270e2...6d7c43`](./contracts/base-8453/0x5270e2c0b953ee5219476a33c98007ffcd6d7c43/); base `0x65f98c...a5c545` | ⚠️ Unaudited |
| EligibilityDataProviderInterim | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4dac19...a62537`](./contracts/arbitrum-42161/0x4dac1940011f919b758a5a4ea4fdd46a09a62537/); arbitrum `0xe2f6ef...52c208`; arbitrum `0xf86054...a75ca1` | ⚠️ Unaudited |
| ERC4626GenericLevSwapper | adapter | base | n/a | [`0x722cdb...737d7b`](./contracts/base-8453/0x722cdb0ab7eee7ac5c9f4a8775ac921dc1737d7b/) | ⚠️ Unaudited |
| FixedRateIrm | unknown | ethereum | n/a | 7 deployments: ethereum [`0x533597...043b39`](./contracts/ethereum-1/0x533597ae474ccc102a5bc5a291b50874f7043b39/); bsc `0x784333...495174`; base `0xa3349c...1a0cb2`; base `0xfb4c97...215fe3`; base `0xfd239e...53b800`; arbitrum `0xad26ff...d13ca0`; arbitrum `0xcd34bf...836a3e` | ⚠️ Unaudited |
| GenericLogic | unknown | base | n/a | 7 deployments: bsc `0xb6faad...2ac1d8`; bsc `0xd1e31e...319bd2`; base [`0x02fdca...808f9d`](./contracts/base-8453/0x02fdcaa5ec8283cf1a23de4fb53dd561c4808f9d/); arbitrum `0x2e4348...bfa062`; arbitrum `0x395025...2ef6bf`; arbitrum `0x65f3d6...3d74fa`; arbitrum `0x9d56f3...375257` | ⚠️ Unaudited |
| Getters | unknown | base | n/a | 2 deployments: base [`0x4c01fb...b41989`](./contracts/base-8453/0x4c01fb29619edac4971362940085c012e4b41989/); base `0x593143...2fb330` | ⚠️ Unaudited |
| GMXRadiantLiquidator | operational_periphery | arbitrum | n/a | [`0x3bd090...79cfb2`](./contracts/arbitrum-42161/0x3bd090cf9e74f39033ca7f8e1b9f9e009e79cfb2/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-32102 | [`0xcd264f...47a8fb`](./contracts/ethereum-1/0xcd264f5d45e407770dec2975337716779e47a8fb/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-32120 | [`0x23a06b...c69aed`](./contracts/bsc-56/0x23a06b7644405be380acc1be0ff54eebeec69aed/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-32157 | [`0x2ab122...8a89ae`](./contracts/base-8453/0x2ab122a2703d02c2f12fb17b6dd63f7f7c8a89ae/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-32215 | [`0x750129...658497`](./contracts/arbitrum-42161/0x750129c21c7846cfe0ce2c966d84c0bca5658497/) | ⚠️ Unaudited |
| HypernativeModule | unknown | arbitrum | n/a | [`0x4405f3...f91036`](./contracts/arbitrum-42161/0x4405f3b660eb53c4d1ac04546ef30a7a6bf91036/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | arbitrum | n/a | 29 deployments: ethereum `0x85f974...a9c9c7`; ethereum `0x8715d5...34cc3f`; ethereum `0x8bec00...7a8385`; ethereum `0xa9f391...719177`; ethereum `0xac1bbb...26ce98`; ethereum `0xb146da...00570e`; ethereum `0xb41bd9...8b657c`; ethereum `0xc8cbb4...b644a7`; ethereum `0xe491c1...730e5c`; ethereum `0xec8218...e052d9`; bsc `0x5cc832...aecf22`; bsc `0x7473d4...e3980f`; bsc `0x75ccd6...6b5c55`; bsc `0x94b6f7...496300`; bsc `0xf9956d...42dc61`; base `0x7a2d83...5ba28a`; base `0xdd8ff0...42c4be`; arbitrum [`0x04f2a8...72fb95`](./contracts/arbitrum-42161/0x04f2a8f7fcc86cddcca89e1ea98f333cc072fb95/); arbitrum `0x1b103f...f4f416`; arbitrum `0x29adee...e64f01`; arbitrum `0x2b2b3d...35268f`; arbitrum `0x469be5...89e5f8`; arbitrum `0x60a60e...c7450d`; arbitrum `0x78587e...fb6eba`; arbitrum `0x7f9322...257b64`; arbitrum `0x7fa17f...37bce7`; arbitrum `0x97a786...ea285e`; arbitrum `0x9d4179...4ae87b`; arbitrum `0xcbb44d...02f183` | ⚠️ Unaudited |
| InverseWETHChainlinkAdapter | adapter | arbitrum | n/a | [`0x04bfea...686681`](./contracts/arbitrum-42161/0x04bfea605e8615ae42cb8d8fffad78f113686681/) | ⚠️ Unaudited |
| LendingPoolUSDCnFix | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x0b55e8...4d8735`](./contracts/arbitrum-42161/0x0b55e8877dbbecfcd348c28c3b0224b89e4d8735/); arbitrum `0xfe6609...71d51f` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | arbitrum | n/a | 5 deployments: bsc `0x5aa499...64deb0`; base `0x64eb9a...6553b4`; arbitrum [`0x1fab9a...3d7ecb`](./contracts/arbitrum-42161/0x1fab9ae08e670f853158e40bfc6a5e0b3c3d7ecb/); arbitrum `0x795ada...fd3f79`; arbitrum `0xec21dd...56b716` | ⚠️ Unaudited |
| LockerList | unknown | bsc | n/a | 2 deployments: bsc [`0x4d94a7...92ce3c`](./contracts/bsc-56/0x4d94a7a3a1f9ed87863160be37a488804392ce3c/); arbitrum `0xc23ad4...6188b8` | ⚠️ Unaudited |
| LPStaking | unknown | bsc | n/a | 5 deployments: ethereum `0xb0d502...31d62b`; bsc [`0x3052a0...6dab47`](./contracts/bsc-56/0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47/); bsc `0x8731d5...e01e98`; arbitrum `0x8731d5...e01e98`; arbitrum `0xea8dfe...4c2176` | ⚠️ Unaudited |
| LPStakingTime | unknown | base | n/a | 6 deployments: ethereum `0x1c3000...3122fc`; bsc `0x18e087...3671f4`; bsc `0x2c6dce...2f457a`; bsc `0x447f20...d41f70`; base [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/); arbitrum `0x977455...0594b1` | ⚠️ Unaudited |
| MockCLAggregatorV2 | unknown | arbitrum | n/a | [`0xa16b27...c25edc`](./contracts/arbitrum-42161/0xa16b27372bdf1cfbe11a2a37e9a3f6adbec25edc/) | ⚠️ Unaudited |
| MockLendingPool | core_logic | arbitrum | n/a | 3 deployments: bsc `0xbfda1f...1f1e18`; arbitrum [`0x4c8e6c...c0283b`](./contracts/arbitrum-42161/0x4c8e6c1af8d7c04f91f3ed78eda73ab42fc0283b/); arbitrum `0xb7d629...e27717` | ⚠️ Unaudited |
| MockLendingPoolAddressesProvider | core_logic | bsc | n/a | 5 deployments: bsc [`0x3622d5...76e54a`](./contracts/bsc-56/0x3622d5a18ea002cf03b2e3ca55f45cb6f876e54a/); arbitrum `0x7221ba...d78267`; arbitrum `0x845962...36282d`; arbitrum `0xc07ade...fd71ea`; arbitrum `0xe8f905...8e88d0` | ⚠️ Unaudited |
| MockLendingPoolConfigurator | core_logic | arbitrum | n/a | 6 deployments: bsc `0xcbac0a...d40634`; arbitrum [`0x83e10b...0e1549`](./contracts/arbitrum-42161/0x83e10bc0f77e51dd8047ae6a93c996480a0e1549/); arbitrum `0xab1e7a...9f4e26`; arbitrum `0xc3c17b...1bbf2c`; arbitrum `0xe482a2...09bf13`; arbitrum `0xf7d1cf...84e23e` | ⚠️ Unaudited |
| Multicall | periphery | bsc | n/a | [`0x44efc0...6b00dc`](./contracts/bsc-56/0x44efc05146f64711f1fefcae274af82d156b00dc/) | ⚠️ Unaudited |
| Multicall3 | periphery | base | n/a | [`0xca11bd...76ca11`](./contracts/base-8453/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiCallWithFailure | periphery | base | n/a | [`0x3d2b30...1f41e5`](./contracts/base-8453/0x3d2b304db670f8b85fc6bb412743fd8dad1f41e5/) | ⚠️ Unaudited |
| MultiFeeDistributionTemp | unknown | base | n/a | [`0xf2b789...b613ed`](./contracts/base-8453/0xf2b78909fd388a1bc757c1aad926f2dce6b613ed/) | ⚠️ Unaudited |
| NativeCoinLocker | unknown | base | n/a | [`0x8ce140...e517b0`](./contracts/base-8453/0x8ce1405ecf2c2c3bfc90b24cf66cb320c1e517b0/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x346575...5322e1`](./contracts/bsc-56/0x346575fc7f07e6994d76199e41d13dc1575322e1/) | ⚠️ Unaudited |
| PriceFeedPythWrapper | operational_periphery | arbitrum | n/a | 3 deployments: bsc `0xb06a3d...e03ba9`; arbitrum [`0x076896...6dc018`](./contracts/arbitrum-42161/0x0768967f5a8fa1be73324e48f2d7ba0b4e6dc018/); arbitrum `0x54b887...f9a307` | ⚠️ Unaudited |
| ProductionSidechain | unknown | base | n/a | 2 deployments: base [`0xd63c07...3365f4`](./contracts/base-8453/0xd63c07e2e88ac633afdb0f0a583ae824e43365f4/); base `0xd9c598...a94f3b` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 12 deployments: bsc `0x40c9ff...64358a`; bsc `0xcf6206...48afe3`; bsc `0xd960e8...2a71d5`; bsc `0xfc3d14...48d228`; base `0x244f14...cc807d`; base `0x83844c...3e7472`; base `0x931d84...43a087`; arbitrum [`0x0524eb...0bcf1f`](./contracts/arbitrum-42161/0x0524eb3cc82a836c4fd3f7243cdcd1e90e0bcf1f/); arbitrum `0x284c6a...66395f`; arbitrum `0x47a9f6...aea8b7`; arbitrum `0xbcf5eb...da237d`; arbitrum `0xf4d314...c762ec` | ⚠️ Unaudited |
| QuickLock | unknown | arbitrum | n/a | [`0x75206c...921bad`](./contracts/arbitrum-42161/0x75206c2a29b646706c8856df0e8acaea38921bad/) | ⚠️ Unaudited |
| Quoter | periphery | base | n/a | 3 deployments: base [`0x90bc19...1b2d02`](./contracts/base-8453/0x90bc19d9ab321bb5f60e5774475c36c5c01b2d02/); base `0xe173a3...5935f0`; base `0xf3c711...3438b4` | ⚠️ Unaudited |
| RadiantChainlinkOracle | operational_periphery | bsc | unit-32136 | [`0xbafb59...e6aff8`](./contracts/bsc-56/0xbafb5921917aa8ab8daa35bf689179cd72e6aff8/) | ⚠️ Unaudited |
| RadiantChainlinkOracle | operational_periphery | arbitrum | unit-32223 | [`0x910b5e...1bf5ca`](./contracts/arbitrum-42161/0x910b5ec2bce6254f44cd786978d122ead51bf5ca/) | ⚠️ Unaudited |
| RadiantMerklTokenWrapper | token | base | n/a | [`0xd3dfa1...a67beb`](./contracts/base-8453/0xd3dfa1130aeb954ab941a177cd4971ec70a67beb/) | ⚠️ Unaudited |
| ReadRecoverTransferRemoveReward | unknown | arbitrum | n/a | [`0x00f356...45e88e`](./contracts/arbitrum-42161/0x00f3560c91efaad5e0284d0e739571379745e88e/) | ⚠️ Unaudited |
| Redeemer | unknown | base | n/a | 2 deployments: base [`0x4d4544...fd1bf3`](./contracts/base-8453/0x4d4544b2507f28f649fd19659afb9744e3fd1bf3/); base `0x551e81...81f075` | ⚠️ Unaudited |
| ReserveLogic | unknown | arbitrum | n/a | 7 deployments: bsc `0x8d3eba...3d11f1`; bsc `0xceede4...39481f`; base `0xcef21d...d489dd`; arbitrum [`0x03d72f...34879e`](./contracts/arbitrum-42161/0x03d72f03f9da6f96a13a5f5f2ab7a86a8d34879e/); arbitrum `0x06c7e6...a93c09`; arbitrum `0x7c3882...1c0ed9`; arbitrum `0xa68564...3c349b` | ⚠️ Unaudited |
| RewardHandler | unknown | base | n/a | 2 deployments: base [`0x3e0150...1337b0`](./contracts/base-8453/0x3e015076f42b267e9e9a4e10bc68e5343c1337b0/); base `0xad5dbc...53f97e` | ⚠️ Unaudited |
| RizGenericTwapUsdAdapter | adapter | base | n/a | 2 deployments: bsc `0xab54df...ac421a`; base [`0x08a790...de6d79`](./contracts/base-8453/0x08a7903d646bb1d3fef71b23b131c26913de6d79/) | ⚠️ Unaudited |
| RizLendingPoolAddressesProviderMinimalProxy | core_logic | arbitrum | n/a | [`0xd145b6...af78b4`](./contracts/arbitrum-42161/0xd145b625bd4e2a85f75cd08739632ea5c0af78b4/) | ⚠️ Unaudited |
| RizOneClickStrategy | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x52af01...cc421a`](./contracts/arbitrum-42161/0x52af013c9d38cbd5f29f85bcfd705b931ecc421a/); arbitrum `0x5dbf91...04f182`; arbitrum `0xc43190...7815f0` | ⚠️ Unaudited |
| RizRegistryUpgradeable | registry | arbitrum | n/a | [`0xe165e8...931e39`](./contracts/arbitrum-42161/0xe165e86373c7119673d71ce607a5a15182931e39/) | ⚠️ Unaudited |
| RizWrappedERC4626Adapter | adapter | base | n/a | [`0x8ba268...f2ab81`](./contracts/base-8453/0x8ba268fb865b19298f78ffa9a18b4e3ca0f2ab81/) | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | 6 deployments: ethereum `0x8731d5...e01e98`; bsc [`0x45a01e...2033cd`](./contracts/bsc-56/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/); bsc `0x4a364f...cf18d8`; base `0x45f1a9...4d263b`; arbitrum [`0x45a01e...2033cd`](./contracts/arbitrum-42161/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/); arbitrum `0x53bf83...a41614` | ⚠️ Unaudited |
| RouterETH | adapter | ethereum | n/a | 3 deployments: ethereum [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/); base `0x50b6eb...0d7ae4`; arbitrum `0xbf22f0...d23e40` | ⚠️ Unaudited |
| SavingsNameable | unknown | base | n/a | [`0x1899d4...ff72ee`](./contracts/base-8453/0x1899d4cc1bff96038f9e8f5ecc898c70e2ff72ee/) | ⚠️ Unaudited |
| SettersGovernor | governance | base | n/a | 2 deployments: base [`0x5a1591...42fb17`](./contracts/base-8453/0x5a1591a4b60e3f187873cf037d94fcaa4542fb17/); base `0xdde6d8...4d23b4` | ⚠️ Unaudited |
| SettersGuardian | governance | base | n/a | 2 deployments: base [`0xd46e01...43a1f4`](./contracts/base-8453/0xd46e01d070226739a92174dbc91aa6688543a1f4/); base `0xf0cbd6...2b7fdc` | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | ethereum | unit-32049 | [`0x07bac9...673712`](./contracts/ethereum-1/0x07bac9a0db5233794d3c3d9a6291288c28673712/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | bsc | unit-32123 | [`0x333071...ac278c`](./contracts/bsc-56/0x333071f6627711829b4bf72ce49cf8fd19ac278c/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | bsc | unit-32138 | [`0xbf7d85...3e9ce9`](./contracts/bsc-56/0xbf7d856f51350847617fbb91bb987f7cac3e9ce9/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | base | unit-32171 | [`0x68a703...69c03c`](./contracts/base-8453/0x68a703683916e98133dfdd646e3f249a8169c03c/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | arbitrum | unit-32197 | [`0x0a9d64...4465f5`](./contracts/arbitrum-42161/0x0a9d64eca260473d133f49d405213525554465f5/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | arbitrum | unit-32202 | [`0x14614d...a3b0c5`](./contracts/arbitrum-42161/0x14614d139f80a87ae5a2fc28b4c896fff2a3b0c5/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | arbitrum | unit-32210 | [`0x326f40...59afad`](./contracts/arbitrum-42161/0x326f4071935308123725f91282af44473659afad/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | 2 deployments: base [`0x3b20dd...380592`](./contracts/base-8453/0x3b20ddc3eee6750ef6c3dcfd52283446ba380592/); base `0x833385...bd0c43` | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | [`0x36892d...bc0aed`](./contracts/base-8453/0x36892dd7eb579112e7e3d048649f2aa739bc0aed/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | n/a | [`0x0b6f13...1dc7a9`](./contracts/arbitrum-42161/0x0b6f135db3a621ab9041ac261276d8f38e1dc7a9/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | n/a | 6 deployments: bsc [`0x1d1256...e6355a`](./contracts/bsc-56/0x1d12564407d6e8c418f2a76debeee5af72e6355a/); bsc `0x27fc8f...2aff92`; base [`0x1d1256...e6355a`](./contracts/base-8453/0x1d12564407d6e8c418f2a76debeee5af72e6355a/); base `0x27fc8f...2aff92`; arbitrum [`0x1d1256...e6355a`](./contracts/arbitrum-42161/0x1d12564407d6e8c418f2a76debeee5af72e6355a/); arbitrum `0x27fc8f...2aff92` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 4 deployments: bsc [`0x2df8e2...4e492e`](./contracts/bsc-56/0x2df8e2ec90c7c22dda6d24a8b2d083bef04e492e/); bsc `0x316fc8...1edfa3`; bsc `0x472a3d...cb5567`; bsc `0xe8f905...8e88d0` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x24704a...46dafc`](./contracts/arbitrum-42161/0x24704aff49645d32655a76df6d407e02d146dafc/) | ⚠️ Unaudited |
| UniV3PoolHelper | core_logic | base | n/a | 9 deployments: base [`0x1eb275...8802bc`](./contracts/base-8453/0x1eb2759834af9781d476bc6d765e66f48d8802bc/); base `0x24f468...bf42a4`; base `0x3b93cf...988b43`; base `0x650b81...27d833`; base `0x8e7348...4c878d`; base `0x96e82a...34445b`; base `0xd145b6...af78b4`; base `0xee5129...576ee5`; base `0xfd7785...1ab6a8` | ⚠️ Unaudited |
| UniV3PoolHelperTemp | core_logic | base | n/a | 3 deployments: base [`0x205ce9...e105bd`](./contracts/base-8453/0x205ce926e93ee5a718b583cbe206914214e105bd/); base `0x6b2f8f...189a1a`; base `0xf73b28...bc52db` | ⚠️ Unaudited |
| UniV3PoolMath | core_logic | base | n/a | 3 deployments: base [`0xdab107...20b613`](./contracts/base-8453/0xdab107a41ade4bc1c2ad4619d83c3c657b20b613/); base `0xe4d84d...ba079c`; base `0xf46e25...869050` | ⚠️ Unaudited |
| UniV3TokenizedLp | token | base | n/a | 9 deployments: base [`0x14a3c5...59d736`](./contracts/base-8453/0x14a3c59f2ae265d5f7073d0a27102d252659d736/); base `0x171620...80c1af`; base `0x284f3e...8b8c8f`; base `0x697aff...0b2c00`; base `0x93fea7...71370d`; base `0xd5e6b4...470c72`; base `0xdc9db5...834b32`; base `0xe59981...9aa92b`; base `0xf6f146...41df1c` | ⚠️ Unaudited |
| ValidatedChainlinkAdapterWithSequencer | adapter | arbitrum | n/a | 18 deployments: base `0x878120...f4cfaf`; base `0x897d57...213f5f`; base `0x95f0d3...678548`; base `0xb38f6e...310899`; base `0xe5980c...72879d`; base `0xfcbd30...34dc3c`; arbitrum [`0x3a8009...cfb18b`](./contracts/arbitrum-42161/0x3a8009653e9e64de0b2561ad7690d5cfa9cfb18b/); arbitrum `0x52cf59...2aaf43`; arbitrum `0x696d36...86ffb5`; arbitrum `0x6cf2ab...69722c`; arbitrum `0x78b3a2...bf6fd9`; arbitrum `0x79db43...06bff3`; arbitrum `0x8b9e71...87163c`; arbitrum `0xaa063e...2733f3`; arbitrum `0xb17e14...44434a`; arbitrum `0xdbe631...f69129`; arbitrum `0xf7273d...7fd590`; arbitrum `0xfb79a6...0821a2` | ⚠️ Unaudited |
| VelodromeQuoterV2 | periphery | base | n/a | 3 deployments: base [`0x203bde...f12454`](./contracts/base-8453/0x203bde7d17c56a6ab037f05cdc60485895f12454/); base `0x7b46b1...5e274e`; base `0xc2c313...2f34c5` | ⚠️ Unaudited |
| VelodromeSwapRouter | adapter | base | n/a | 2 deployments: base [`0x869778...878d40`](./contracts/base-8453/0x869778f18c3e18de7ef9756156fd1c0301878d40/); base `0xccfab4...52c159` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/); bsc `0xd48888...bda26d`; arbitrum `0xfbd849...660268` | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WeightedPool | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xcf7b51...a1d52a`; arbitrum [`0x32df62...165841`](./contracts/arbitrum-42161/0x32df62dc3aed2cd6224193052ce665dc18165841/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | n/a | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |
| WidgetSwap | unknown | bsc | n/a | 4 deployments: bsc [`0x2eb9ea...9b82ee`](./contracts/bsc-56/0x2eb9ea9df49bebb97e7750f231a32129a89b82ee/); bsc `0xa8ba2f...cb2e00`; arbitrum `0x6c33a7...8f4780`; arbitrum `0x962f92...550616` | ⚠️ Unaudited |
| Yearn Vault Factory | registry | base | n/a | 3 deployments: bsc `0x3bb250...f6f973`; base [`0x2eeedf...6223d1`](./contracts/base-8453/0x2eeedf53e4ed0a4a3d364fc95b364df5c56223d1/); arbitrum `0x533597...043b39` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RadiantOFT | unknown | ethereum | n/a | 8 deployments: ethereum [`0x137ddb...84f893`](./contracts/ethereum-1/0x137ddb47ee24eaa998a535ab00378d6bfa84f893/); bsc `0x155627...9847d5`; bsc `0x35e2fb...48ff2c`; bsc `0xa24014...7c3a39`; bsc `0xf7de7e...1384df`; base `0xd722e5...3dc5d4`; arbitrum `0x3082cc...50aaa0`; arbitrum `0xa24014...7c3a39` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); bsc `0x669434...ce1eb6`; bsc `0x9d1b16...25b944`; base `0xaf54be...239398`; arbitrum `0x352d82...beb3dd`; arbitrum `0x9d1b16...25b944` | ⚠️ Unaudited (bytecode match) |
| Factory | registry | arbitrum | n/a | 5 deployments: bsc `0x808d7c...bc0949`; bsc `0xe7ec68...051f25`; base `0xaf5191...ba2cd6`; arbitrum [`0x55bdb4...ac9970`](./contracts/arbitrum-42161/0x55bdb4164d28fbaf0898e0ef14a589ac09ac9970/); arbitrum `0x808d7c...bc0949` | ⚠️ Unaudited (bytecode match) |
| PointToken | token | base | n/a | 6 deployments: base [`0x52ad00...5c447c`](./contracts/base-8453/0x52ad00bd0f6f52229478bf504e4939ba745c447c/); base `0x56ae0d...3f3847`; base `0x57e70a...9f761b`; base `0x5e0db2...df6e9e`; base `0x641582...240287`; base `0xbdcb2e...d727b1` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (204)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0654f8...eae54f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06eb48...92739c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0835b6...4e96fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dbec1...22e2c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e62c9...9e751a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d6284...64805b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x258e97...c0ceb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27dd6b...6d9451` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x376b59...1ed5a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a1eb8...c35e88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b5ab6...03e421` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40104b...20a063` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b2fe7...eccdd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4edfa0...845411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x506839...90eb87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53680d...95c6c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53bf83...a41614` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5487f9...98dc28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58c783...cf4813` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5949b1...73c2f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x615853...cdea6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x673798...1e6ded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x688b1e...565105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bd9ef...11bd19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c8b3c...52e075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x701a95...360883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7221ba...d78267` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x770dcc...eba337` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7850e0...7b2fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c8fc2...9eaabd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cf2e1...07371a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x813dfe...71e217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cc40a...7cafdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96d8fb...169ac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb388bb...410244` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc19121...7f8ac5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc566d3...ff1136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb2c18...36e10e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcec161...4873b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfdb4f...8eedb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd288cc...e509f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd66d4b...140995` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7a78a...b075ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7b2dd...b10048` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcfecd...a1fc95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea82e...0fd61b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3b53a...f764df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe83fb4...33a84c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8eb96...157c62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea9c0f...498739` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06d538...c2173e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0784b0...7f78b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39d2da...1b65d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a2b00...14e002` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x459fc5...eaf91b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x570591...76069d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x701a95...360883` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75ee10...f71841` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d2dbe...44286d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0d502...31d62b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbef7b...19dc8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc4b66...50c500` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc05f55...ae3ff8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7d625...ca2699` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef6f05...ab62f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4edea...b55781` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9be8e...437c60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03b485...227ff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x040811...f3b743` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07f4ec...e2cdeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08115b...9cb5e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0835b6...4e96fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x144a96...19a491` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17aff1...1ba668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ae95a...91dfed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b8361...434b0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b8605...9d0d42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cb894...3191f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cbc11...0425df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20039e...51df38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x215aba...1d5903` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24b9f1...4efe95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28446a...e2fc07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28d745...3972d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x290cbb...2bb421` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x294baa...71c3a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x296f55...cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d28ff...ac6c2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e5dda...4da2fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ee84b...82f0bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2eeedf...6223d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3052a0...6dab47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x314220...997f12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31b8fd...845ff5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33ab2c...b72b10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x345c78...8e577c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x348eab...2ece9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34d517...ecbf93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3717aa...3a611b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d2b18...fb33c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x429d33...4b0732` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42ac19...86286a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4381d7...298694` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44621f...ea604e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45f1a9...4d263b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c114c...648b7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c55a2...ceedc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c97ff...291568` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54e491...e063ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57da86...34a9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x588fe2...b1d0fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x597e70...cf6234` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c1a97...f30de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cf047...72449e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x603d3f...8dead2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6561ee...727264` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x693604...562341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a8324...cba1f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7191ad...470876` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x739515...da09cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73c1db...6c4cf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x786980...d47c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b6572...920481` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ed750...ed92af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f3bc4...185c5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82f65d...08a77e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84fb77...02bc91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85f21c...5abeb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87fa05...b253e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8803e8...0a3d87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8943cb...e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ec2b1...3e8f9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x91bc58...1bf31e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x941ec8...0a190c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x943eeb...cc6eb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a0bb8...33ef1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a646f...126f1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a9cdc...b64b49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9af01a...82bfc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f74c1...41c0d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa130a9...a39ba6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2015d...820e24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa42d38...5cea39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa914f1...01ca92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacb89c...818730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae7280...f3606b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf54be...239398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb08af9...78abd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb25317...cae451` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb26c72...7a7f46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb58670...0386a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6c11b...193820` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb70f9e...b5c099` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb78637...4de62e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8eb3a...4d6745` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbffd32...738bd0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0bddc...b3a319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1acd9...870aaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc20ee9...b6bc9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc25a57...1b02ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2d2be...f84fd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3392b...0686bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbb398...f011bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcde9fd...552e6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2b796...41958f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2eba8...fb73ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3440a...8351a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3a540...7d1a39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3aaa3...d79e41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8cef0...35bac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9e5c4...03134f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcaa28...49cab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe001d1...d2ad4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3469d...430ff2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe534f7...545831` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6e8df...d9403c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe75027...a533d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7ec68...051f25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe921ca...ff232b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe98dcd...b6c45e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea73f0...da0fa0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb75af...62de16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeca365...f431b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed1678...914072` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed29a8...cf0018` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0bd07...2b2e3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3727a...6a0e94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5205a...d271cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5238c...4f75cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf53ca2...cd84aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf61e86...ae7049` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa0e19...a3afe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb8836...31ff78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcf873...969110` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe1da0...aab86c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeaec8...2ae1c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/RadiantProtocol) | SourceHat | Audit | 2022-05 | stale | Direct | contract_name | 191 | high |
| [here](https://www.openzeppelin.com/news/radiant-riz-audit) | OpenZeppelin | Audit | 2024-07 | aging | Direct | contract_name | 89 | high |
| [Zokyo](https://github.com/zokyo-sec/audit-reports/blob/main/Radiant/Radiant%20Capital%20audit%20report_06_March.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 136 | high |
| [BlockSec](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_radiant_v2.0.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | contract_name | 144 | high |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Radiant-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 131 | medium |
| [PeckShield-Audit-Report-RadiantV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-RadiantV2-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 63 | high |
| [blocksec_radiant_glp_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_radiant_glp_v1.0-signed.pdf) | BlockSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DVN-OtterSec-12SEPT2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-OtterSec-12SEPT2023.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DVN-Paladin-26AUG2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Paladin-26AUG2023.pdf) | Paladin | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [DVN-Zellic-25AUG2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Zellic-25AUG2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DVN1.0-Zellic-14MAR2024.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN1.0-Zellic-14MAR2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gasolina-OtterSec-10DEC2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/Gasolina/Gasolina-OtterSec-10DEC2025.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Ottersec_Sep-18-25.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Zellic_Sep-25-25.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Ackee-15MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Ackee-15MAR2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Certora-28JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Certora-28JUL2022.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-SlowMist-15MAR2022Audit.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-SlowMist-15MAR2022Audit.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Zellic-03JUN2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zellic-03JUN2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Zokyo-22OCT2021.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zokyo-22OCT2021.pdf) | Zokyo | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-proof-lib-Ackee-11MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-proof-lib-Ackee-11MAR2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UltraLightNodeV2Radar-Zellic-22NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/UltraLightNodeV2Radar-Zellic-22NOV2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf) | Paladin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LzApp&Token-Ackee-03MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/LzApp%26Token-Ackee-03MAY2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NativeOFTV2-Zellic-16JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTV2-Zellic-16JUN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NativeOFTWithFee-Zellic-30JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTWithFee-Zellic-30JUN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExample-Ackee-27JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExample-Ackee-27JUL2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ackee-10OCT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-10OCT2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ackee-14NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-14NOV2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-21MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-21MAR2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-24JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-24JAN2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-27APR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-27APR2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Zellic-21MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Zellic-21MAY2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamplesONFT-Zellic-19JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesONFT-Zellic-19JAN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AptosBridge-Ottersec-30SEPT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/AptosBridge-Ottersec-30SEPT2022.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WrappedAssetBridge-Zellic-28FEB2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridge-Zellic-28FEB2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WrappedAssetBridgeV2-Hexens-AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Hexens-AUG2024.pdf) | Hexens | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf) | OtterSec | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf) | Paladin | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [EndpointV2-Blockian-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Blockian-13DEC2023.pdf) | Blockian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-CMichel-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-CMichel-13DEC2023.pdf) | CMichel | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Certora-DEDC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Certora-DEDC2023.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Ottersec 14DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Ottersec%2014DEC2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Paladin-15DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Paladin-15DEC2023.pdf) | Paladin | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [EndpointV2-Windhustler-15DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Windhustler-15DEC2023.pdf) | Windhustler | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Zellic-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Zellic-13DEC2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2Alt/EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf) | OtterSec | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2Alt/EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf) | Paladin | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20IOTA%20L1/LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf) | OtterSec | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Receive-Types_OtterSec_July-12-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/LZ-Receive-Types_OtterSec_July-12-2025.pdf) | OtterSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SolanaEndPoint-Pashov-28MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndPoint-Pashov-28MAY2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-Halborn-24MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Halborn-24MAY2024.pdf) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-Ottersec-07JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Ottersec-07JUN2024.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-V2_Starknet_Zellic_30_Sept_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_Zellic_30_Sept_2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf) | OtterSec | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf) | UNH-IOL | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf) | OtterSec | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [TempoOFTWrapper-OtterSec-16Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-OtterSec-16Feb2026.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TempoOFTWrapper-Paladin-10Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-Paladin-10Feb2026.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [HyperLiquid_Composer-Paladin-9MAY2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/HyperLiquid_Composer-Paladin-9MAY2025.pdf) | Paladin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf) | OtterSec | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Multicall_OtterSec_Dec-30th-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_OtterSec_Dec-30th-2025.pdf) | OtterSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [LZ-Multicall_Paladin_Jan-16th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_Paladin_Jan-16th-2026.pdf) | Paladin | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf) | UNH-IOL | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-OApp&OFT_Zellic_Sep-23-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/LZ-OApp%26OFT_Zellic_Sep-23-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OApp&OFT-Zellic-12JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OApp%26OFT-Zellic-12JUN2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OFT-OAPP-ChainSecurity-30JAN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OFT-OAPP-ChainSecurity-30JAN2024.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeableOapp&OFT-Hexens-01NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/UpgradeableOapp%26OFT-Hexens-01NOV2024.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Solana-Example-Review_Zellic_Dec-17-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-Example-Review_Zellic_Dec-17-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Ottersec-23May2025.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RateLimiter-Hexens-MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiter-Hexens-MAY2024.pdf) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Hexens-OCT2024oct24%20(1).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RateLimiterFlows-Pashov-20SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Pashov-20SEPT2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ONFT721_Paladin_10AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ONFT/ONFT721_Paladin_10AUG2024.pdf) | Paladin | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [LZ_OVault-Composer_Paladin_Oct-23-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Composer_Paladin_Oct-23-25.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ_OVault-Yield.xyz_19-Nov-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Yield.xyz_19-Nov-25.pdf) | Yield.xyz | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [LZ_OVault_Ottersec_Jul-16-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Ottersec_Jul-16-25.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_OVault_Paladin_Aug-06-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Paladin_Aug-06-25.pdf) | Paladin | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [AptosZROAirdrop-Paladin-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/Aptos%20ZRO%20Airdrop/AptosZROAirdrop-Paladin-17JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZROClaim-Paladin-18JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Paladin-18JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZROClaim-Pashov-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Pashov-17JUN2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZROclaim-hexens-23JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROclaim-hexens-23JUN2024.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VeDistributor_Paladin_09-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Paladin_09-Sep-2025.pdf) | Paladin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [VeDistributor_Zellic_08-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Zellic_08-Sep-2025.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [lzRead-Paladin-25OCT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/lzRead/lzRead-Paladin-25OCT2024.pdf) | Paladin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lzRead-Sec3-12NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/lzRead/lzRead-Sec3-12NOV2024.pdf) | Sec3 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x76b0d9...41f4b7`](./contracts/arbitrum-42161/0x76b0d99fd5f1314f30b4f609d0841fb3b741f4b7/) | GLPVault | core_logic | $210,421.78 | Verified native implementation with $210,421.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01a01d...67f6ba`](./contracts/arbitrum-42161/0x01a01deaf702e960d91151de6113e1fc4667f6ba/) | RadiantToken | token | $37,225.75 | Verified native implementation with $37,225.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x41e558...67ae38`](./contracts/arbitrum-42161/0x41e5585496c6e43d9fd548b5f88fc2d90d67ae38/) | RadiantLendingMarket | core_logic | $1,734.29 | Verified native implementation with $1,734.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x172e1f...c11b3f`](./contracts/bsc-56/0x172e1f86277c9e7e2ec175c6b3d1d47576c11b3f/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb5ecaa...d706bf`](./contracts/base-8453/0xb5ecaa1a867feccd6d87604bc16a2b6b53d706bf/) | AgTokenSideChainMultiBridgeNameable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7db281...a23383`](./contracts/base-8453/0x7db28175b63f154587bbb1cae62d39ea80a23383/) | DistributionCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x65d69b...6339c0`](./contracts/base-8453/0x65d69b87f18f34eb0590b4261aee12e18f6339c0/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5270e2...6d7c43`](./contracts/base-8453/0x5270e2c0b953ee5219476a33c98007ffcd6d7c43/) | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x722cdb...737d7b`](./contracts/base-8453/0x722cdb0ab7eee7ac5c9f4a8775ac921dc1737d7b/) | ERC4626GenericLevSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533597...043b39`](./contracts/ethereum-1/0x533597ae474ccc102a5bc5a291b50874f7043b39/) | FixedRateIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02fdca...808f9d`](./contracts/base-8453/0x02fdcaa5ec8283cf1a23de4fb53dd561c4808f9d/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4c01fb...b41989`](./contracts/base-8453/0x4c01fb29619edac4971362940085c012e4b41989/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04f2a8...72fb95`](./contracts/arbitrum-42161/0x04f2a8f7fcc86cddcca89e1ea98f333cc072fb95/) | InitializableImmutableAdminUpgradeabilityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1fab9a...3d7ecb`](./contracts/arbitrum-42161/0x1fab9ae08e670f853158e40bfc6a5e0b3c3d7ecb/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d94a7...92ce3c`](./contracts/bsc-56/0x4d94a7a3a1f9ed87863160be37a488804392ce3c/) | LockerList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3052a0...6dab47`](./contracts/bsc-56/0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/) | LPStakingTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3622d5...76e54a`](./contracts/bsc-56/0x3622d5a18ea002cf03b2e3ca55f45cb6f876e54a/) | MockLendingPoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3d2b30...1f41e5`](./contracts/base-8453/0x3d2b304db670f8b85fc6bb412743fd8dad1f41e5/) | MultiCallWithFailure | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ce140...e517b0`](./contracts/base-8453/0x8ce1405ecf2c2c3bfc90b24cf66cb320c1e517b0/) | NativeCoinLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52ad00...5c447c`](./contracts/base-8453/0x52ad00bd0f6f52229478bf504e4939ba745c447c/) | PointToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75206c...921bad`](./contracts/arbitrum-42161/0x75206c2a29b646706c8856df0e8acaea38921bad/) | QuickLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x90bc19...1b2d02`](./contracts/base-8453/0x90bc19d9ab321bb5f60e5774475c36c5c01b2d02/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4d4544...fd1bf3`](./contracts/base-8453/0x4d4544b2507f28f649fd19659afb9744e3fd1bf3/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e0150...1337b0`](./contracts/base-8453/0x3e015076f42b267e9e9a4e10bc68e5343c1337b0/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08a790...de6d79`](./contracts/base-8453/0x08a7903d646bb1d3fef71b23b131c26913de6d79/) | RizGenericTwapUsdAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ba268...f2ab81`](./contracts/base-8453/0x8ba268fb865b19298f78ffa9a18b4e3ca0f2ab81/) | RizWrappedERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45a01e...2033cd`](./contracts/bsc-56/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/) | RouterETH | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1899d4...ff72ee`](./contracts/base-8453/0x1899d4cc1bff96038f9e8f5ecc898c70e2ff72ee/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5a1591...42fb17`](./contracts/base-8453/0x5a1591a4b60e3f187873cf037d94fcaa4542fb17/) | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b20dd...380592`](./contracts/base-8453/0x3b20ddc3eee6750ef6c3dcfd52283446ba380592/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b6f13...1dc7a9`](./contracts/arbitrum-42161/0x0b6f135db3a621ab9041ac261276d8f38e1dc7a9/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1eb275...8802bc`](./contracts/base-8453/0x1eb2759834af9781d476bc6d765e66f48d8802bc/) | UniV3PoolHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x205ce9...e105bd`](./contracts/base-8453/0x205ce926e93ee5a718b583cbe206914214e105bd/) | UniV3PoolHelperTemp | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14a3c5...59d736`](./contracts/base-8453/0x14a3c59f2ae265d5f7073d0a27102d252659d736/) | UniV3TokenizedLp | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2eb9ea...9b82ee`](./contracts/bsc-56/0x2eb9ea9df49bebb97e7750f231a32129a89b82ee/) | WidgetSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 130 |
| upstream | 17 |
| standard_library | 21 |
| needs_review | 192 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 88
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=1968

Zero-match audit list:

- [3733] blocksec_radiant_glp_v1.0-signed.pdf
- [3734] DVN-OtterSec-12SEPT2023.pdf
- [3735] DVN-Paladin-26AUG2023.pdf
- [3736] DVN-Zellic-25AUG2023.pdf
- [3737] DVN1.0-Zellic-14MAR2024.pdf
- [3738] Gasolina-OtterSec-10DEC2025.pdf
- [3739] LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf
- [3740] LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf
- [3741] EndpointV1-Ackee-15MAR2022.pdf
- [3742] EndpointV1-Certora-28JUL2022.pdf
- [3743] EndpointV1-SlowMist-15MAR2022Audit.pdf
- [3744] EndpointV1-Zellic-03JUN2022.pdf
- [3745] EndpointV1-Zokyo-22OCT2021.pdf
- [3746] EndpointV1-proof-lib-Ackee-11MAR2022.pdf
- [3747] UltraLightNodeV2Radar-Zellic-22NOV2022.pdf
- [3748] OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf
- [3749] OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf
- [3750] LzApp&Token-Ackee-03MAY2022.pdf
- [3751] NativeOFTV2-Zellic-16JUN2023.pdf
- [3752] NativeOFTWithFee-Zellic-30JUN2023.pdf
- [3753] SolidityExample-Ackee-27JUL2022.pdf
- [3754] SolidityExamples-Ackee-10OCT2022.pdf
- [3755] SolidityExamples-Ackee-14NOV2022.pdf
- [3756] SolidityExamples-Ottersec-21MAR2023.pdf
- [3757] SolidityExamples-Ottersec-24JAN2023.pdf
- [3758] SolidityExamples-Ottersec-27APR2023.pdf
- [3759] SolidityExamples-Zellic-21MAY2022.pdf
- [3760] SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf
- [3761] SolidityExamplesONFT-Zellic-19JAN2023.pdf
- [3762] AptosBridge-Ottersec-30SEPT2022.pdf
- [3763] WrappedAssetBridge-Zellic-28FEB2023.pdf
- [3764] WrappedAssetBridgeV2-Hexens-AUG2024.pdf
- [3765] WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf
- [3766] LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf
- [3767] LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf
- [3772] EndpointV2-Blockian-13DEC2023.pdf
- [3773] EndpointV2-CMichel-13DEC2023.pdf
- [3774] EndpointV2-Certora-DEDC2023.pdf
- [3775] EndpointV2-Ottersec 14DEC2023.pdf
- [3776] EndpointV2-Paladin-15DEC2023.pdf
- [3777] EndpointV2-Windhustler-15DEC2023.pdf
- [3778] EndpointV2-Zellic-13DEC2023.pdf
- [3779] EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf
- [3780] EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf
- [3781] LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf
- [3782] LZ-Receive-Types_OtterSec_July-12-2025.pdf
- [3783] SolanaEndPoint-Pashov-28MAY2024.pdf
- [3784] SolanaEndpoint-Halborn-24MAY2024.pdf
- [3785] SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf
- [3786] SolanaEndpoint-Ottersec-07JUN2024.pdf
- [3787] LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf
- [3788] LZ-V2_Starknet_Zellic_30_Sept_2025.pdf
- [3789] LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf
- [3790] LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf
- [3791] LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf
- [3792] LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf
- [3795] TempoOFTWrapper-OtterSec-16Feb2026.pdf
- [3796] TempoOFTWrapper-Paladin-10Feb2026.pdf
- [3797] HyperLiquid_Composer-Paladin-9MAY2025.pdf
- [3798] LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf
- [3799] LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf
- [3800] LZ-Multicall_OtterSec_Dec-30th-2025.pdf
- [3801] LZ-Multicall_Paladin_Jan-16th-2026.pdf
- [3802] LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf
- [3803] LZ-OApp&OFT_Zellic_Sep-23-2025.pdf
- [3804] OApp&OFT-Zellic-12JUN2024.pdf
- [3805] OFT-OAPP-ChainSecurity-30JAN2024.pdf
- [3806] UpgradeableOapp&OFT-Hexens-01NOV2024.pdf
- [3807] Solana-Example-Review_Zellic_Dec-17-2025.pdf
- [3808] Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf
- [3809] TON_OFT-Ottersec-23May2025.pdf
- [3810] TON_OFT-Zellic-19May2025.pdf
- [3811] RateLimiter-Hexens-MAY2024.pdf
- [3812] RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf
- [3813] RateLimiterFlows-Pashov-20SEPT2024.pdf
- [3814] ONFT721_Paladin_10AUG2024.pdf
- [3815] LZ_OVault-Composer_Paladin_Oct-23-25.pdf
- [3816] LZ_OVault-Yield.xyz_19-Nov-25.pdf
- [3817] LZ_OVault_Ottersec_Jul-16-25.pdf
- [3818] LZ_OVault_Paladin_Aug-06-25.pdf
- [3819] AptosZROAirdrop-Paladin-17JUN2024.pdf
- [3820] ZROClaim-Paladin-18JUN2024.pdf
- [3821] ZROClaim-Pashov-17JUN2024.pdf
- [3822] ZROclaim-hexens-23JUN2024.pdf
- [3823] VeDistributor_Paladin_09-Sep-2025.pdf
- [3824] VeDistributor_Zellic_08-Sep-2025.pdf
- [3825] lzRead-Paladin-25OCT2024.pdf
- [3826] lzRead-Sec3-12NOV2024.pdf

Fork inheritance lineage and inherited audits are included when available.
