# Agentic Audit Brief: 1inch

⚠️ Lifecycle status: DECLINING - TVL changed 1.8% over 90 days

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-28T19:15:42.004Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-1969
- Chains: ethereum
- Contract surface: 274 unique implementations (814 raw deployments)
- DeFi Llama TVL: $2,810,724.13
- On-chain TVL (included contracts): $16,092,203.53
- TVL by chain: Ethereum $16,092,203.53

## Project Description

1inch is a DEX aggregator that routes trades across multiple liquidity sources to find the best prices for users. It also includes a governance token (1INCH) and related staking mechanisms.

### Architecture

The single product family encompasses all contracts, with the MooniswapFactory serving as the core liquidity infrastructure and MoverToken as the governance token. Supporting contracts include proxy and external tokens that interact with the core aggregation and governance functions.

## Audit Coverage Summary

- Verified implementations audited: 36/107 (33.6%)
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 167
- Unique implementations: 274
- Raw deployments: 814
- Audits discovered: 416
- Scoreable audits (matched contracts): 83
- ASD (verified + unaudited TVL): $16,092,203.53
- Latest audit: 2025-09 (fresh)
- Staleness: 16 fresh, 18 aging, 109 stale, 273 unknown
- Tier 1 coverage: 13.1% (ChainSecurity, MixBytes, OpenZeppelin, Sherlock)
- Note: This protocol is classified as [declining]. ASD of $16,092,203.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 36 | 33.6% | 2025-09 |
| CertiK | Tier 2 | 7 | 6.5% | 2021-11 |
| MixBytes | Tier 1 | 7 | 6.5% | 2022-11 |
| ChainSecurity | Tier 1 | 6 | 5.6% | 2023-01 |
| ABDK | Tier 2 | 4 | 3.7% | 2023-02 |
| Decurity | Tier 2 | 4 | 3.7% | 2025-08 |
| PeckShield | Tier 2 | 3 | 2.8% | 2023-12 |
| OpenZeppelin | Tier 1 | 2 | 1.9% | 2025-08 |
| Pashov Audit Group | Tier 2 | 2 | 1.9% | 2024-03 |
| Ackee Blockchain | Tier 2 | 1 | 0.9% | 2021-08 |
| Sherlock | Tier 1 | 1 | 0.9% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrosschainWhitelistRegistry | registry | ethereum | [`0xbe8934...1b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | ✅ Audited |
| ExchangeGovernance | unknown | ethereum | 5 deployments: ethereum [`0x32d12a...fc9df8`](./contracts/ethereum-1/0x32d12a25f539e341089050e2d26794f041fc9df8/); ethereum `0x544319...46690f`; ethereum `0xb2b418...f9c7d9`; ethereum `0xb33839...4d110d`; ethereum `0xd5c5c4...2c93ef` | ✅ Audited |
| FarmingRewards | unknown | ethereum | 40 deployments: ethereum [`0x0da1b3...5437e6`](./contracts/ethereum-1/0x0da1b305d7101359434d71eceaab71e1ff5437e6/); ethereum `0x1055f6...7415fa`; ethereum `0x13927a...5d2106`; ethereum `0x18d410...4f4560`; ethereum `0x2cb9e7...b4182f`; ethereum `0x2ec255...48ffba`; ethereum `0x2ede37...d25de8`; ethereum `0x302a6e...986677`; ethereum `0x322e22...3c2d4c`; ethereum `0x3eb586...2b640d`; ethereum `0x483715...8640fa`; ethereum `0x4dab1b...b9c45e`; ethereum `0x598032...2ec9f0`; ethereum `0x73f5e5...ec465e`; ethereum `0x7cb203...1ca356`; ethereum `0x7ded1b...890e95`; ethereum `0x8acdb3...376fe8`; ethereum `0x8b1af1...7521e5`; ethereum `0x8ba0ef...b9761b`; ethereum `0x907083...3eabd9`; ethereum `0x94bc2a...08734f`; ethereum `0x950a94...0e9257`; ethereum `0x98484d...f00ae6`; ethereum `0xa21854...a82155`; ethereum `0xa355b4...fbc51b`; ethereum `0xa83fce...9339e8`; ethereum `0xafea56...5e500d`; ethereum `0xb54fc9...ed3ce7`; ethereum `0xc1e160...ac6df5`; ethereum `0xc7c42e...01d388`; ethereum `0xc84dcd...23f6eb`; ethereum `0xca6e3e...69f2a7`; ethereum `0xd7012c...5a3f52`; ethereum `0xd79360...108480`; ethereum `0xe0c701...a3596e`; ethereum `0xe22f6a...99703e`; ethereum `0xe49055...0d9583`; ethereum `0xe65184...64a240`; ethereum `0xeb7dbc...21eacd`; ethereum `0xfbd61b...c2c550` | ✅ Audited |
| FarmingVoter | unknown | ethereum | [`0x11a550...6b09dc`](./contracts/ethereum-1/0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc/) | ✅ Audited |
| FeeTaker | unknown | ethereum | [`0x1c30a1...8ee401`](./contracts/ethereum-1/0x1c30a1aeeafab7f5edb1a09a7a4a0b8bed8ee401/) | ✅ Audited |
| FixedFeeSwap | unknown | ethereum | 2 deployments: ethereum [`0x0115d0...814043`](./contracts/ethereum-1/0x0115d08f81a7b5f70316e0a85f776c43c5814043/); ethereum `0xc61f21...300637` | ✅ Audited |
| FixedRateSwap | unknown | ethereum | 3 deployments: ethereum [`0x27fe0f...8e64f3`](./contracts/ethereum-1/0x27fe0f25acabd7b4c8c28561059c8bfceb8e64f3/); ethereum `0x40bbde...4b0bb4`; ethereum `0x92b384...9ddcd1` | ✅ Audited |
| FulcrumWrapper | unknown | ethereum | [`0xf971ff...a9073c`](./contracts/ethereum-1/0xf971ff7838ae0c9316289f0e1aab69218ea9073c/) | ✅ Audited |
| FulcrumWrapperLegacy | unknown | ethereum | [`0x5335e0...def60c`](./contracts/ethereum-1/0x5335e083867fa58c70bc43b1498d80575fdef60c/) | ✅ Audited |
| GovernanceFeeReceiver | unknown | ethereum | [`0x4dfa40...609af4`](./contracts/ethereum-1/0x4dfa40fdaa7694676899f8887a45603922609af4/) | ✅ Audited |
| GovernanceMothership | unknown | ethereum | [`0xa0446d...42caba`](./contracts/ethereum-1/0xa0446d8804611944f1b527ecd37d7dcbe442caba/) | ✅ Audited |
| GovernanceRewards | unknown | ethereum | [`0x0f85a9...54b594`](./contracts/ethereum-1/0x0f85a912448279111694f4ba4f85dc641c54b594/) | ✅ Audited |
| KyberDmmOracle | operational_periphery | ethereum | [`0xf74d3a...06f101`](./contracts/ethereum-1/0xf74d3a34655954f0264b068250009aee1f06f101/) | ✅ Audited |
| LimitOrderProtocol | unknown | ethereum | 3 deployments: ethereum [`0x119c71...2d2828`](./contracts/ethereum-1/0x119c71d3bbac22029622cbaec24854d3d32d2828/); ethereum `0x3ef517...ffe782`; ethereum `0xf667e1...3221a2` | ✅ Audited |
| Mooniswap | unknown | ethereum | [`0x59a0a6...063ade`](./contracts/ethereum-1/0x59a0a6d73e6a5224871f45e6d845ce1574063ade/) | ✅ Audited |
| MooniswapDeployer | unknown | ethereum | 2 deployments: ethereum [`0xa31bb3...b3b28e`](./contracts/ethereum-1/0xa31bb36c5164b165f9c36955ea4ccbab42b3b28e/); ethereum `0xcb06df...da85b1` | ✅ Audited |
| MooniswapFactory | registry | ethereum | 3 deployments: ethereum [`0xbaf9a5...3a9643`](./contracts/ethereum-1/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643/); ethereum `0xc4a8b7...5a148d`; ethereum `0xe1b8ff...dc04d3` | ✅ Audited |
| MooniswapOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x1488a1...fec25e`](./contracts/ethereum-1/0x1488a117641ed5d2d29ab3ed2397963fdefec25e/); ethereum `0x1ad5ed...b94097`; ethereum `0x30829f...41be1d` | ✅ Audited |
| MultiWrapper | unknown | ethereum | [`0x931e32...0fe18c`](./contracts/ethereum-1/0x931e32b6d112f7be74b16f7fbc77d491b30fe18c/) | ✅ Audited |
| OffchainOracle | operational_periphery | ethereum | 5 deployments: ethereum [`0x07d91f...6893bb`](./contracts/ethereum-1/0x07d91f5fb9bf7798734c3f606db065549f6893bb/); ethereum `0x080ab7...9b24d0`; ethereum `0x6d68d9...b831f1`; ethereum `0xcfd674...afded1`; ethereum `0xe3c6b9...829aa8` | ✅ Audited |
| PowerPod | unknown | ethereum | 6 deployments: ethereum [`0x806d90...7129e8`](./contracts/ethereum-1/0x806d9073136c8a4a3fd21e0e708a9e17c87129e8/); ethereum `0x8dd297...3d1b9c`; ethereum `0xaccfac...b4f947`; ethereum `0xad9aeb...7792e3`; ethereum `0xdaf782...08fde9`; ethereum `0xeee4b3...448741` | ✅ Audited |
| PriorityFeeLimiter | unknown | ethereum | [`0x5e92d4...c7c912`](./contracts/ethereum-1/0x5e92d4021e49f9a2967b4ea1d20213b3a1c7c912/) | ✅ Audited |
| ReferralFeeReceiver | unknown | ethereum | 4 deployments: ethereum [`0x1cc617...d91b9d`](./contracts/ethereum-1/0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d/); ethereum `0x2eea44...301e40`; ethereum `0x735247...31295f`; ethereum `0xf5ab9b...0bb538` | ✅ Audited |
| ResolverMetadata | unknown | ethereum | 6 deployments: ethereum [`0x2031a8...2792fd`](./contracts/ethereum-1/0x2031a8f571ac808da3117462fc32cd933f2792fd/); ethereum `0x755585...85610e`; ethereum `0x9c6883...49e15d`; ethereum `0xa18d49...bf2097`; ethereum `0xbf4543...90a58a`; ethereum `0xf18293...a1434f` | ✅ Audited |
| SeriesNonceManager | governance | ethereum | 2 deployments: ethereum [`0x2dadf9...df01aa`](./contracts/ethereum-1/0x2dadf9264db7eb9e24470a2e6c73efbc4bdf01aa/); ethereum `0x303389...b28e10` | ✅ Audited |
| Settlement | unknown | ethereum | 8 deployments: ethereum [`0x0634db...eb01a3`](./contracts/ethereum-1/0x0634db834043922d8907edbf588aa57e42eb01a3/); ethereum `0x5e918e...a2e335`; ethereum `0x62c142...96e69c`; ethereum `0x8273f3...a25d9c`; ethereum `0xa515e1...f4cc0f`; ethereum `0xa88800...b47647`; ethereum `0xac3225...715fdb`; ethereum `0xf4f4d1...2364bf` | ✅ Audited |
| St1inch | unknown | ethereum | 3 deployments: ethereum [`0x03e93b...342241`](./contracts/ethereum-1/0x03e93bea40b2f7e25a1b3709822744a932342241/); ethereum `0x0fd0c5...62bcf1`; ethereum `0x9a0c8f...7501d7` | ✅ Audited |
| St1inchPreview | unknown | ethereum | 3 deployments: ethereum [`0x069f63...5a7f83`](./contracts/ethereum-1/0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83/); ethereum `0x45c2a2...8d09a4`; ethereum `0x722e14...446905` | ✅ Audited |
| StakingFarmingPod | unknown | ethereum | 2 deployments: ethereum [`0x1a87c0...0260be`](./contracts/ethereum-1/0x1a87c0f9cca2f0926a155640e8958a8a6b0260be/); ethereum `0x83c156...2ef27a` | ✅ Audited |
| StepVesting | operational_periphery | ethereum | 376 deployments: ethereum [`0x003ea5...b05f30`](./contracts/ethereum-1/0x003ea55ef6fb46de28fe05ae695042f103b05f30/); ethereum `0x009f54...1fe49a`; ethereum `0x0127d6...b09548`; ethereum `0x01e4b3...486846`; ethereum `0x035a2b...cdef14`; ethereum `0x06af18...718da7`; ethereum `0x06c49c...b3f391`; ethereum `0x07eb0d...1320b4`; ethereum `0x0820e5...5acd42`; ethereum `0x0880a0...b3ea1a`; ethereum `0x088763...9df908`; ethereum `0x091ab6...268f72`; ethereum `0x09a8e8...a697a1`; ethereum `0x0a0747...3fbc45`; ethereum `0x0a47c9...a1b52e`; ethereum `0x0a5fa4...3e2f6a`; ethereum `0x0a678d...5ff4b0`; ethereum `0x0ac6ff...a013ab`; ethereum `0x0c0538...86e55d`; ethereum `0x0da1fc...d139c0`; ethereum `0x0ec26f...c08dae`; ethereum `0x0f66df...3b366e`; ethereum `0x103bf8...3a31d6`; ethereum `0x116f04...578ef5`; ethereum `0x1217f2...1d4cc8`; ethereum `0x12a02b...f3acc8`; ethereum `0x135c8c...a24a93`; ethereum `0x13a283...50f8b2`; ethereum `0x13bed7...13165d`; ethereum `0x13f25f...b75714`; ethereum `0x13fb4f...005cdb`; ethereum `0x15daa6...2ec8d2`; ethereum `0x1632af...15d3c1`; ethereum `0x16be52...f0574d`; ethereum `0x1707e0...6ed297`; ethereum `0x177f86...3720ef`; ethereum `0x17d112...bb4146`; ethereum `0x1816cd...a17cb4`; ethereum `0x196937...5b2551`; ethereum `0x1b548b...c34bec`; ethereum `0x1c2947...bf9468`; ethereum `0x1c30bc...987905`; ethereum `0x1d4805...7edd9a`; ethereum `0x1dd6cb...b433e9`; ethereum `0x1e00e6...a36753`; ethereum `0x1e2064...696b8a`; ethereum `0x1f83c3...477354`; ethereum `0x1fb2f2...57a4b4`; ethereum `0x2013e6...e9e4a8`; ethereum `0x204165...9cbea9`; ethereum `0x2046ab...fc274c`; ethereum `0x20fd6f...3495d9`; ethereum `0x211ba5...277837`; ethereum `0x215603...a7b0e8`; ethereum `0x218d06...60c31e`; ethereum `0x21c69f...cc0493`; ethereum `0x24029d...d5f796`; ethereum `0x24a262...475b27`; ethereum `0x24cb49...57ca5f`; ethereum `0x24e9de...6ad3b0`; ethereum `0x25149f...fc3f8e`; ethereum `0x25ea4b...7f5787`; ethereum `0x261ec1...118a75`; ethereum `0x26a34f...fcc2c5`; ethereum `0x271136...48e329`; ethereum `0x27669f...d6125d`; ethereum `0x27e999...71eac5`; ethereum `0x2872aa...57829d`; ethereum `0x293c22...01b086`; ethereum `0x29c679...f9b1ea`; ethereum `0x2a2028...1cb1d1`; ethereum `0x2ad08a...d922ee`; ethereum `0x2be171...680129`; ethereum `0x2c6358...70df71`; ethereum `0x2da3ad...e75cb9`; ethereum `0x2e03e4...5c7b34`; ethereum `0x2e25be...cd3d1d`; ethereum `0x2ea4b8...cfcb21`; ethereum `0x2ef848...a1a2fb`; ethereum `0x2f273d...572111`; ethereum `0x2f5cb4...09b757`; ethereum `0x2fae47...48de1b`; ethereum `0x2fb07f...c8baf4`; ethereum `0x2fde74...e3ffc9`; ethereum `0x2ff244...f72bc7`; ethereum `0x3053c0...027b19`; ethereum `0x30d7a5...637797`; ethereum `0x31d2bc...00607d`; ethereum `0x321c03...efc386`; ethereum `0x32757d...e63a45`; ethereum `0x330410...826d24`; ethereum `0x33a2d5...6ffbe1`; ethereum `0x34dd2b...5a4d14`; ethereum `0x35a88e...744c7b`; ethereum `0x35d668...391a6b`; ethereum `0x36179c...247780`; ethereum `0x3755f2...86356d`; ethereum `0x375640...a4ddb1`; ethereum `0x38240b...0ccb7a`; ethereum `0x38ff58...2e0823`; ethereum `0x3a3f0c...3c1063`; ethereum `0x3c081d...73bf1f`; ethereum `0x3c98cd...4d8b1b`; ethereum `0x3eea61...ccff19`; ethereum `0x401d20...fe76b6`; ethereum `0x40bfc3...d5742b`; ethereum `0x42324a...6bfd75`; ethereum `0x4314db...c68045`; ethereum `0x434f5a...0a00fa`; ethereum `0x445b5f...ff27f4`; ethereum `0x449f03...ceeb96`; ethereum `0x451ab1...ea4775`; ethereum `0x455525...62b457`; ethereum `0x46f6bb...e38714`; ethereum `0x4826e0...768469`; ethereum `0x482897...58255c`; ethereum `0x494e56...1b9e6b`; ethereum `0x49ddd2...091659`; ethereum `0x4a2d44...3da304`; ethereum `0x4a35e5...bc9b6b`; ethereum `0x4cd383...4cd502`; ethereum `0x4d6692...c62194`; ethereum `0x4d8c1e...0c3845`; ethereum `0x4eea9f...7bd7b1`; ethereum `0x4fd984...28c411`; ethereum `0x500ee3...479860`; ethereum `0x5012a4...fb3326`; ethereum `0x502fd7...98a0fd`; ethereum `0x50980e...88e958`; ethereum `0x51e053...4f9040`; ethereum `0x51f9a1...bf1a65`; ethereum `0x532f1b...a706f9`; ethereum `0x5393a1...d6de9d`; ethereum `0x53aca5...96eedd`; ethereum `0x54534c...110475`; ethereum `0x54620d...259ea0`; ethereum `0x55d311...ad2b50`; ethereum `0x56217d...0598d7`; ethereum `0x572a53...987980`; ethereum `0x576181...7cbc4f`; ethereum `0x578813...83f9bb`; ethereum `0x5816a3...88fc2c`; ethereum `0x58f858...32d39a`; ethereum `0x5928b7...11c61c`; ethereum `0x59d8e2...0296d5`; ethereum `0x5a214a...4867f3`; ethereum `0x5a8fa0...ede4c6`; ethereum `0x5ce16e...8cb91d`; ethereum `0x5ce550...dbd96f`; ethereum `0x5dadbd...1e46dd`; ethereum `0x5f08b2...133236`; ethereum `0x5f30da...d814d2`; ethereum `0x5fcfcb...a414f6`; ethereum `0x6140ae...f73358`; ethereum `0x63b7c4...8f6214`; ethereum `0x650589...b75e6a`; ethereum `0x651cdc...921c93`; ethereum `0x6717f2...2e4fc5`; ethereum `0x67624c...7cb3c5`; ethereum `0x694d50...5a52f8`; ethereum `0x69804f...f33c13`; ethereum `0x698d3d...a8f994`; ethereum `0x6b3c64...419e5d`; ethereum `0x6b4a1d...6f9920`; ethereum `0x6c8caf...ebd816`; ethereum `0x6cb472...d1116d`; ethereum `0x6da358...2d910d`; ethereum `0x6dc428...3800ba`; ethereum `0x6e8d01...77442f`; ethereum `0x70888b...e096b9`; ethereum `0x70b341...fb5dc9`; ethereum `0x72d0a7...3ac230`; ethereum `0x732c8d...a90e61`; ethereum `0x73a30f...e19ab7`; ethereum `0x73a81b...f052bf`; ethereum `0x76b8b5...665312`; ethereum `0x783082...095e18`; ethereum `0x785cf0...fa317f`; ethereum `0x78c425...a6933a`; ethereum `0x794bd4...81079b`; ethereum `0x794c47...c9ab7e`; ethereum `0x798da0...cf320d`; ethereum `0x79febd...460f81`; ethereum `0x7af3c6...276562`; ethereum `0x7c9662...b8926a`; ethereum `0x7cf86c...2efbe6`; ethereum `0x7df428...ab18b8`; ethereum `0x7dfdbb...e5793b`; ethereum `0x7e7300...a3b02f`; ethereum `0x7e979e...d4e40b`; ethereum `0x7ebe87...8f1a6a`; ethereum `0x7f0772...33c02f`; ethereum `0x811e1f...8c9349`; ethereum `0x819071...787ab4`; ethereum `0x8598f5...ebaebc`; ethereum `0x873ef5...1f7263`; ethereum `0x873ff4...8c3162`; ethereum `0x8a410a...d9c0c8`; ethereum `0x8a7f32...07fa7e`; ethereum `0x8a8fb1...734a38`; ethereum `0x8aebe3...765412`; ethereum `0x8b5995...ebff61`; ethereum `0x8b90f6...e56ee3`; ethereum `0x8bf0b1...b9246a`; ethereum `0x8d877f...95a07d`; ethereum `0x8de929...731b95`; ethereum `0x8e0c26...952ad5`; ethereum `0x8e12c2...43ea79`; ethereum `0x8ee131...b49e43`; ethereum `0x8f1b1d...055462`; ethereum `0x92a77c...57d1e8`; ethereum `0x92fb71...09e6f7`; ethereum `0x942488...4b0f07`; ethereum `0x943988...864047`; ethereum `0x94b14c...509409`; ethereum `0x956258...3d0df4`; ethereum `0x95b12e...3a0006`; ethereum `0x95e4ea...0d670b`; ethereum `0x960bbe...dee8fd`; ethereum `0x97cdd3...2730a6`; ethereum `0x980f36...d29170`; ethereum `0x9851bf...f59844`; ethereum `0x99398c...1809d1`; ethereum `0x99c32e...f24beb`; ethereum `0x99ffa8...2df71b`; ethereum `0x9a24b6...8963a8`; ethereum `0x9af2f9...e2f46d`; ethereum `0x9b8fc2...52ccd6`; ethereum `0x9c5972...277213`; ethereum `0x9cbe10...b2f36b`; ethereum `0x9e0caa...eb5037`; ethereum `0x9f3c7b...4d10de`; ethereum `0x9fc80e...a3990e`; ethereum `0xa0daab...b3ef98`; ethereum `0xa1ac92...f69b36`; ethereum `0xa26175...d89cf6`; ethereum `0xa2ffae...05ad60`; ethereum `0xa349c7...e3d633`; ethereum `0xa3ca7c...b10f48`; ethereum `0xa52e8d...bff921`; ethereum `0xa65b82...4d45f8`; ethereum `0xa76a1a...5ef276`; ethereum `0xa77996...ec8ee2`; ethereum `0xa88643...5052eb`; ethereum `0xa8ccf2...c1c262`; ethereum `0xa8e7fc...293d10`; ethereum `0xa9d306...37795f`; ethereum `0xadf94f...e9afcc`; ethereum `0xae31b2...907dd5`; ethereum `0xaec4ab...3f94ac`; ethereum `0xaf0647...b3e65e`; ethereum `0xb0cdb9...9504d4`; ethereum `0xb0fde6...a99992`; ethereum `0xb1a2e8...b50874`; ethereum `0xb1b8b6...92e65d`; ethereum `0xb35ce5...f271d9`; ethereum `0xb39f50...e1589d`; ethereum `0xb4e4d7...27c005`; ethereum `0xb5ecaf...5f1dc9`; ethereum `0xb7286a...37536e`; ethereum `0xb83159...f52911`; ethereum `0xb93217...fb5faf`; ethereum `0xba7d79...588801`; ethereum `0xbc15e3...b31e09`; ethereum `0xbd3170...74016a`; ethereum `0xbda870...7ec74d`; ethereum `0xbddf91...4522d7`; ethereum `0xbecf1d...4ab955`; ethereum `0xbfa13e...edd787`; ethereum `0xbffb77...4b7a02`; ethereum `0xc01cf0...40ff8a`; ethereum `0xc061df...87513f`; ethereum `0xc0dfbe...2bdf1e`; ethereum `0xc1cb96...1322f3`; ethereum `0xc2175a...e415c4`; ethereum `0xc25b56...ccf120`; ethereum `0xc3016c...4bc6fc`; ethereum `0xc30685...8108f1`; ethereum `0xc41494...a56908`; ethereum `0xc425fd...41a209`; ethereum `0xc50fa5...2f628b`; ethereum `0xc554d4...9d2f6d`; ethereum `0xc5ea79...9c9f8d`; ethereum `0xc6b0fc...2628f3`; ethereum `0xc7650a...5674dc`; ethereum `0xc7818a...cabfa3`; ethereum `0xc7dfab...4dae12`; ethereum `0xc87065...4ca442`; ethereum `0xc8b514...74d389`; ethereum `0xc8e0bb...5b8cea`; ethereum `0xc98f4f...143abc`; ethereum `0xca64b6...fe894d`; ethereum `0xca98a0...80a77f`; ethereum `0xcaac73...c2b618`; ethereum `0xcad8f8...5755a6`; ethereum `0xcb945a...2348f7`; ethereum `0xcbc7af...20aa86`; ethereum `0xcc4122...f172ce`; ethereum `0xcc6a49...8d1b16`; ethereum `0xcca41c...bc94ef`; ethereum `0xcd4384...a99ad4`; ethereum `0xcdb884...d5aeb1`; ethereum `0xce08f8...030f59`; ethereum `0xce283d...badfcd`; ethereum `0xce4259...b7316c`; ethereum `0xce5f7e...fd7ce5`; ethereum `0xcfe117...0f875b`; ethereum `0xd18231...65c256`; ethereum `0xd21816...096985`; ethereum `0xd239ab...5ab0a0`; ethereum `0xd24536...2d5388`; ethereum `0xd2f29d...8c9d65`; ethereum `0xd37fe3...4aa416`; ethereum `0xd44293...2bf202`; ethereum `0xd47c24...866c9a`; ethereum `0xd4a6c7...75b7dd`; ethereum `0xd54706...356f60`; ethereum `0xd5c9b6...ed8b65`; ethereum `0xd619ec...e9f061`; ethereum `0xd631b1...fca5e0`; ethereum `0xd67832...e27075`; ethereum `0xd7fa3b...d6152e`; ethereum `0xd9b311...0f0704`; ethereum `0xda5cc7...2559a4`; ethereum `0xdb662a...9801d2`; ethereum `0xdc4fa1...93e592`; ethereum `0xdcdd91...f11988`; ethereum `0xdd1a6c...6b15a9`; ethereum `0xddad32...5df122`; ethereum `0xdde836...c3a3b5`; ethereum `0xddf6b6...97ad0b`; ethereum `0xde65b0...bc6b37`; ethereum `0xdeff4c...f734cf`; ethereum `0xe09634...2dd2b7`; ethereum `0xe15e24...70bf94`; ethereum `0xe17440...ff7607`; ethereum `0xe2bb28...39044c`; ethereum `0xe44c9a...13071c`; ethereum `0xe4cc35...164dd1`; ethereum `0xe523d0...f7f1f6`; ethereum `0xe75825...a87e45`; ethereum `0xe88b88...4495f2`; ethereum `0xeab3fa...855ed1`; ethereum `0xeb39e1...3580b6`; ethereum `0xec0043...f2108e`; ethereum `0xededb5...dc52f3`; ethereum `0xeeb100...111f71`; ethereum `0xeeef4f...a05413`; ethereum `0xef1c0d...0cd49e`; ethereum `0xf06e83...b939f4`; ethereum `0xf11741...b5545f`; ethereum `0xf24cba...a9e691`; ethereum `0xf3f04d...3635c0`; ethereum `0xf493cd...cf4c45`; ethereum `0xf51e64...ad4fa5`; ethereum `0xf55f2e...01bd68`; ethereum `0xf56af2...496c78`; ethereum `0xf7884a...50498e`; ethereum `0xf808a9...073f7e`; ethereum `0xf8b4a0...5f457d`; ethereum `0xf8d4ab...f5d859`; ethereum `0xf90e15...ed5325`; ethereum `0xf96aae...38845b`; ethereum `0xf9bc6b...72b03a`; ethereum `0xfa2175...dea27b`; ethereum `0xfa80f7...54cad7`; ethereum `0xfaa029...a78647`; ethereum `0xfbe5e6...a29e99`; ethereum `0xfca5cc...b07d48`; ethereum `0xfcd6fc...7cc870`; ethereum `0xfe149f...40a2fc`; ethereum `0xfe15be...f99da2`; ethereum `0xfed072...8b775c`; ethereum `0xff55aa...a30896`; ethereum `0xffb603...2e1e43`; ethereum `0xffd683...006b71` | ✅ Audited |
| SynthetixOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x19c23a...153a8a`](./contracts/ethereum-1/0x19c23a427d382769040e402ff6d3a48240153a8a/); ethereum `0x4d4872...0be63d` | ✅ Audited |
| WethUnwrapper | token | ethereum | 5 deployments: ethereum [`0x08b067...628b06`](./contracts/ethereum-1/0x08b067ad41e45babe5bbb52fc2fe7f692f628b06/); ethereum `0x1282d0...82437b`; ethereum `0x21f818...e9418f`; ethereum `0x8290db...d6605e`; ethereum `0xa18651...1866dc` | ✅ Audited |
| WhitelistChecker | unknown | ethereum | 3 deployments: ethereum [`0x32921c...16e4ef`](./contracts/ethereum-1/0x32921cc86e9768a946c79b3879c2d6aec016e4ef/); ethereum `0x40a04c...b19367`; ethereum `0x9a1cb3...3c93d6` | ✅ Audited |
| WhitelistHelper | periphery | ethereum | 6 deployments: ethereum [`0x1ad2ae...6d3963`](./contracts/ethereum-1/0x1ad2aef39a9036147aee2a8edd5c5092466d3963/); ethereum `0x441619...4a5c54`; ethereum `0x8c3e43...26a2fa`; ethereum `0xb61c79...79c96d`; ethereum `0xf6b000...ae4a93`; ethereum `0xf779bd...65642d` | ✅ Audited |
| WhitelistRegistry | registry | ethereum | 6 deployments: ethereum [`0x105bc5...e53aa7`](./contracts/ethereum-1/0x105bc5c5cdd224f48be9d279dd114f0a3fe53aa7/); ethereum `0x8797c2...9efad5`; ethereum `0xa49ecb...461a0b`; ethereum `0xbcf2e5...21fbcb`; ethereum `0xcb8308...e5cc77`; ethereum `0xd64134...5093b0` | ✅ Audited |
| YVaultWrapper | core_logic | ethereum | [`0x9ff110...c6eaf8`](./contracts/ethereum-1/0x9ff110f132d988bfa9bc6a21851da1af3ac6eaf8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MiniMeToken | token | ethereum | 3 deployments: ethereum [`0x53f2ea...c7a793`](./contracts/ethereum-1/0x53f2eab746305b1f500f783abefa5954b2c7a793/); ethereum `0xcd62b1...80b184`; ethereum `0xf60e55...ceab44` | ⚠️ Unaudited |
| HolyToken | token | ethereum | 3 deployments: ethereum [`0x11777d...10daab`](./contracts/ethereum-1/0x11777d951cc9be0bafff437d30fbcc759410daab/); ethereum `0x39eae9...1a6e09`; ethereum `0xa59b00...17cf4e` | ⚠️ Unaudited |
| HolyPoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x1e7062...efdb58`](./contracts/ethereum-1/0x1e7062f6458d67e74f84c37c189ab3e69eefdb58/); ethereum `0xaf9854...523719` | ⚠️ Unaudited |
| MoverToken | token | ethereum | 2 deployments: ethereum [`0x3fa729...d5324c`](./contracts/ethereum-1/0x3fa729b4548becbad4eab6ef18413470e6d5324c/); ethereum `0xb05e8d...2203a5` | ⚠️ Unaudited |
| HolyValorYearnUSDCVaultV2 | core_logic | ethereum | [`0xfa9ba2...184e61`](./contracts/ethereum-1/0xfa9ba210f70987477f4d65639ebd194dc1184e61/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | 3 deployments: ethereum [`0x1fac81...b8e755`](./contracts/ethereum-1/0x1fac81af4dde6276e5e3283ff2b0bd9970b8e755/); ethereum `0x6ad299...1c48b4`; ethereum `0xbb2390...b123ad` | ⚠️ Unaudited |
| CEOofMoneyNFT | token | ethereum | [`0x8c4075...2e4411`](./contracts/ethereum-1/0x8c4075ef135aaebb2f0fd445635e305a162e4411/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0xb68655...2d9548`](./contracts/ethereum-1/0xb686559bb45fcdb1f370836066ef9e9b4c2d9548/); ethereum `0xee262a...4dafaf` | ⚠️ Unaudited |
| DAPFToken | token | ethereum | [`0xbb9284...8ea677`](./contracts/ethereum-1/0xbb9284484cb9a2bc7950a1276edba2f6358ea677/) | ⚠️ Unaudited |
| Dice | unknown | ethereum | 2 deployments: ethereum [`0xa60184...080456`](./contracts/ethereum-1/0xa60184b67a665ede46774b5fee0acdf115080456/); ethereum `0xb75ace...99edd2` | ⚠️ Unaudited |
| EvmHelpers | periphery | ethereum | [`0x77340c...d5f91c`](./contracts/ethereum-1/0x77340c866ef1da13407d61120010f136fad5f91c/) | ⚠️ Unaudited |
| FeeCollector | unknown | ethereum | [`0x2359ab...e58dda`](./contracts/ethereum-1/0x2359ab45ac9c5b575152be21a19c33c138e58dda/) | ⚠️ Unaudited |
| HHToken | token | ethereum | [`0x62d4f5...b8d7b5`](./contracts/ethereum-1/0x62d4f5ebf2c3fffd5f58183fa7cde61dbeb8d7b5/) | ⚠️ Unaudited |
| HHTokenV2 | token | ethereum | [`0xedfd04...3fc6ca`](./contracts/ethereum-1/0xedfd04db73323502d533ef8d0557c2549a3fc6ca/) | ⚠️ Unaudited |
| HolderVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x0811ad...913c12`](./contracts/ethereum-1/0x0811ad996cd39cecaedce64a51793cfebb913c12/); ethereum `0xffe680...dde5a3` | ⚠️ Unaudited |
| HolyHand | unknown | ethereum | [`0x5e6097...944770`](./contracts/ethereum-1/0x5e609760a190822e86ae1598faf9d82aa7944770/) | ⚠️ Unaudited |
| HolyHandV2 | unknown | ethereum | [`0x038f4f...f80fc7`](./contracts/ethereum-1/0x038f4f2a032f69e5b2dfdf21623ad14b57f80fc7/) | ⚠️ Unaudited |
| HolyHandV3 | unknown | ethereum | [`0x14dae6...01e377`](./contracts/ethereum-1/0x14dae6a4adb2f0c44756d209404e3495ac01e377/) | ⚠️ Unaudited |
| HolyHandV4 | unknown | ethereum | [`0x2504b6...80f1b8`](./contracts/ethereum-1/0x2504b6a3fa927cd7ea0cf713fc6ad9124b80f1b8/) | ⚠️ Unaudited |
| HolyHandV5 | unknown | ethereum | [`0xe7a55c...f10134`](./contracts/ethereum-1/0xe7a55c10c74720fab86f483fea2181ded3f10134/) | ⚠️ Unaudited |
| HolyHandV5_1 | unknown | ethereum | [`0x52c1e7...be2f2d`](./contracts/ethereum-1/0x52c1e7e4bb6ffd5230c389be5f186403c4be2f2d/) | ⚠️ Unaudited |
| HolyHandV6 | unknown | ethereum | [`0xd5ba57...8119fc`](./contracts/ethereum-1/0xd5ba57863ac61602e96f88a934ef388ef08119fc/) | ⚠️ Unaudited |
| HolyHandV7 | unknown | ethereum | 2 deployments: ethereum [`0x1ef7a5...7fda0e`](./contracts/ethereum-1/0x1ef7a557cfa8436ee08790e3f2b190b8937fda0e/); ethereum `0xd33d88...e1e1f3` | ⚠️ Unaudited |
| HolyPaladin | unknown | ethereum | 2 deployments: ethereum [`0x26fb67...037fb3`](./contracts/ethereum-1/0x26fb67e9eb170aa01ced962a007350725b037fb3/); ethereum `0x4afe68...888e3c` | ⚠️ Unaudited |
| HolyPassageV2 | unknown | ethereum | [`0x29f2a1...3ad4af`](./contracts/ethereum-1/0x29f2a1a7c61fd7ea08bbcca95d53b1462b3ad4af/) | ⚠️ Unaudited |
| HolyPassageV3 | unknown | ethereum | 2 deployments: ethereum [`0x80179c...f61e91`](./contracts/ethereum-1/0x80179c05b34c733d7cc59763c8f690222bf61e91/); ethereum `0xf70fd0...39f407` | ⚠️ Unaudited |
| HolyPassageV4 | unknown | ethereum | 2 deployments: ethereum [`0x39ac24...8ff5b3`](./contracts/ethereum-1/0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3/); ethereum `0xc09d9d...bde363` | ⚠️ Unaudited |
| HolyPool | core_logic | ethereum | [`0x1058fb...337051`](./contracts/ethereum-1/0x1058fba8e10c1df675c79ab988c18275f6337051/) | ⚠️ Unaudited |
| HolyRedeemer | unknown | ethereum | 2 deployments: ethereum [`0x2576c0...da361a`](./contracts/ethereum-1/0x2576c08de9a369491d148f82356c5b1431da361a/); ethereum `0x496599...25c6dd` | ⚠️ Unaudited |
| HolyVisor | unknown | ethereum | [`0x153dd4...5e8bd9`](./contracts/ethereum-1/0x153dd4efb768dbd46d6c4f2d8a25a80f565e8bd9/) | ⚠️ Unaudited |
| HolyVisorV2 | unknown | ethereum | 2 deployments: ethereum [`0x0c946c...627697`](./contracts/ethereum-1/0x0c946caa389b7325141c035d71c667d4f9627697/); ethereum `0x636356...5cda6c` | ⚠️ Unaudited |
| HolyWing | unknown | ethereum | [`0x5ea3e4...7d1d45`](./contracts/ethereum-1/0x5ea3e454fe9f099a1ec7f5d14213cbc86a7d1d45/) | ⚠️ Unaudited |
| HolyWingV2 | unknown | ethereum | 2 deployments: ethereum [`0x9b986b...b8ace1`](./contracts/ethereum-1/0x9b986b20243b62628f7b47a2dea602c29eb8ace1/); ethereum `0xd5b323...50427b` | ⚠️ Unaudited |
| HolyWingV3 | unknown | ethereum | [`0xcbf944...a10198`](./contracts/ethereum-1/0xcbf944ad94e7bd190d6752e28f8c09be1da10198/) | ⚠️ Unaudited |
| HumanitarianAidNFT | token | ethereum | 2 deployments: ethereum [`0xdb33de...ef0911`](./contracts/ethereum-1/0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911/); ethereum `0xebfb3b...f41d8b` | ⚠️ Unaudited |
| LeftoverExchanger | unknown | ethereum | 4 deployments: ethereum [`0x18763f...5fc778`](./contracts/ethereum-1/0x18763f195f35078cc662b2c26b97bb1a015fc778/); ethereum `0x285e33...4105e3`; ethereum `0x89125b...f8af3f`; ethereum `0xe9f142...781b58` | ⚠️ Unaudited |
| LimitOrderProtocolPro | unknown | ethereum | [`0x5349df...3346de`](./contracts/ethereum-1/0x5349df28f8353dc8049edf11faae2d3f3b3346de/) | ⚠️ Unaudited |
| Maverick2TickHelper | periphery | ethereum | [`0x1666ef...11dcd4`](./contracts/ethereum-1/0x1666ef2e729dab497a6798a4221d0e041111dcd4/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | 4 deployments: ethereum [`0x4ee7c0...92d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/); ethereum `0x97e40d...b8ab62`; ethereum `0xb5256c...5448c3`; ethereum `0xe295ad...088afe` | ⚠️ Unaudited |
| MerkleDrop128 | operational_periphery | ethereum | 2 deployments: ethereum [`0x518ddb...54c043`](./contracts/ethereum-1/0x518ddbc6cabe97053b69199185c88754b654c043/); ethereum `0x9ce614...e1b35d` | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 2 deployments: ethereum [`0x0f9abb...ac90cd`](./contracts/ethereum-1/0x0f9abb87a091190eec58c0a7cc18c842c3ac90cd/); ethereum `0x7e166b...f070ee` | ⚠️ Unaudited |
| MoverCEOCapNFT | token | ethereum | 3 deployments: ethereum [`0x470373...f31bc6`](./contracts/ethereum-1/0x4703738dec2bbbddb5ec06c4ca5c76d325f31bc6/); ethereum `0x802630...69ef70`; ethereum `0xf2bfa8...806267` | ⚠️ Unaudited |
| MoverNFT1 | token | ethereum | [`0xa00942...23df5a`](./contracts/ethereum-1/0xa00942e25dfad2473b529642e39bbdf38d23df5a/) | ⚠️ Unaudited |
| MoverNFT1v2 | token | ethereum | 2 deployments: ethereum [`0x076974...a0aaa1`](./contracts/ethereum-1/0x0769747d4cac06bc2320e0bb1efb31d53fa0aaa1/); ethereum `0xcf55b3...33da71` | ⚠️ Unaudited |
| MoverNFTSWS | token | ethereum | 2 deployments: ethereum [`0x129b90...c73701`](./contracts/ethereum-1/0x129b9083a9f02aed65e31644a8103d5aa2c73701/); ethereum `0xc649a0...827534` | ⚠️ Unaudited |
| MoverOlympusNFT | token | ethereum | 2 deployments: ethereum [`0x2733a7...f67f22`](./contracts/ethereum-1/0x2733a766d2d79d26b2d23343db5bf38290f67f22/); ethereum `0x76dc7e...aaa409` | ⚠️ Unaudited |
| MoverUBTStakeNode | unknown | ethereum | 2 deployments: ethereum [`0x00834e...d43753`](./contracts/ethereum-1/0x00834e2763b108b01218638dc2cec27ce6d43753/); ethereum `0x8c1e98...274768` | ⚠️ Unaudited |
| MoverUBTStakeNodeV2 | unknown | ethereum | 7 deployments: ethereum [`0x3f1256...26fb49`](./contracts/ethereum-1/0x3f1256afbfae473f17f07c17b1ec0c9f0326fb49/); ethereum `0x4690d1...4dad73`; ethereum `0x67686e...66cace`; ethereum `0x88e7e1...5f1ee8`; ethereum `0xb494c1...410450`; ethereum `0xd39f52...e77b88`; ethereum `0xd5f911...991526` | ⚠️ Unaudited |
| MoverUBTStakePool | core_logic | ethereum | [`0x81cbc2...3f1f9e`](./contracts/ethereum-1/0x81cbc2e0a9d8bd3b1976e1292cc08762433f1f9e/) | ⚠️ Unaudited |
| MoverUBTStakePoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x1f15f2...dfeaff`](./contracts/ethereum-1/0x1f15f293c1cd3d05d58d3edeaf0c72c5a2dfeaff/); ethereum `0x61b3bb...4f183f` | ⚠️ Unaudited |
| MoverValorYearnUSDCv2VaultV2 | core_logic | ethereum | [`0x541d78...9a18db`](./contracts/ethereum-1/0x541d78076352a884c8358a2ac3f36408b99a18db/) | ⚠️ Unaudited |
| OGShirtNFT | token | ethereum | [`0x6e0c98...e26fcb`](./contracts/ethereum-1/0x6e0c982c05b6fb0d7465476ddef7b1b7cbe26fcb/) | ⚠️ Unaudited |
| p1MToken | token | ethereum | [`0x1590c8...0223af`](./contracts/ethereum-1/0x1590c8af474ad2c06ff3eadd1e8fb8adf60223af/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 4 deployments: ethereum [`0x0f7615...360fff`](./contracts/ethereum-1/0x0f7615375e3671de18ca653a5a7f332c50360fff/); ethereum `0x9d2efa...c03466`; ethereum `0x9fc17a...87e532`; ethereum `0xca3391...fa5cce` | ⚠️ Unaudited |
| SignatureMerkleDrop128 | operational_periphery | ethereum | 13 deployments: ethereum [`0x153818...aaf79e`](./contracts/ethereum-1/0x153818040e114e0775e14c9029619d765aaaf79e/); ethereum `0x25ac81...4c2c77`; ethereum `0x64c671...df2680`; ethereum `0x6b7c8e...cdb261`; ethereum `0x7749eb...21cbe1`; ethereum `0x9bd9e0...5bdb69`; ethereum `0xa1df96...f91107`; ethereum `0xa2286c...ecfec6`; ethereum `0xc5a113...e42311`; ethereum `0xc890d5...71555a`; ethereum `0xe02469...26638f`; ethereum `0xe45007...a550cf`; ethereum `0xecd2f9...b212f9` | ⚠️ Unaudited |
| SmartTreasury | operational_periphery | ethereum | [`0xedb2f4...ec6554`](./contracts/ethereum-1/0xedb2f430b951cfaa48cce0ce5be9621f52ec6554/) | ⚠️ Unaudited |
| SmartTreasuryFragmentPWC | operational_periphery | ethereum | 2 deployments: ethereum [`0xa8afb8...9a2e68`](./contracts/ethereum-1/0xa8afb8272434f76f9cd0fd483f15c69aaf9a2e68/); ethereum `0xf5d7bd...de157d` | ⚠️ Unaudited |
| SmartTreasuryV2 | operational_periphery | ethereum | [`0xb63aee...7f3452`](./contracts/ethereum-1/0xb63aeee274c5b3e17e3070f00eeafc916b7f3452/) | ⚠️ Unaudited |
| SmartTreasuryV3 | operational_periphery | ethereum | [`0xfcd791...2601ef`](./contracts/ethereum-1/0xfcd791c74f16061f341fe2a1f5d8fdd3d32601ef/) | ⚠️ Unaudited |
| SmartTreasuryV3_1 | operational_periphery | ethereum | [`0x3c16bb...2813fa`](./contracts/ethereum-1/0x3c16bb476315ce0c66c659e0c2fd1657e62813fa/) | ⚠️ Unaudited |
| SmartTreasuryV4 | operational_periphery | ethereum | 2 deployments: ethereum [`0x47795a...c28315`](./contracts/ethereum-1/0x47795ab886f53719e38780cedf40083aaec28315/); ethereum `0x94f748...4c960f` | ⚠️ Unaudited |
| TORN | unknown | ethereum | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | [`0xd0a95c...90631c`](./contracts/ethereum-1/0xd0a95cce85719f3fa699f5971d4378c22890631c/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | 2 deployments: ethereum [`0x0b7438...9689e3`](./contracts/ethereum-1/0x0b7438606a13f4e91305b36b7596dda4679689e3/); ethereum `0x96aa3b...3e815a` | ⚠️ Unaudited |
| VestedToken | operational_periphery | ethereum | [`0x03d1b1...6a16d2`](./contracts/ethereum-1/0x03d1b1a56708fa298198dd5e23651a29b76a16d2/) | ⚠️ Unaudited |
| VestedVotingPower | operational_periphery | ethereum | 3 deployments: ethereum [`0x19bcba...a041e3`](./contracts/ethereum-1/0x19bcba90d1160b99b8c11eb44f276505bfa041e3/); ethereum `0xba978b...ae02b3`; ethereum `0xfb7246...c4677c` | ⚠️ Unaudited |
| VestingValidator | operational_periphery | ethereum | 4 deployments: ethereum [`0x0df9a5...a6f942`](./contracts/ethereum-1/0x0df9a5fe824d1d52caadd2b7edb2859e24a6f942/); ethereum `0x4275ca...229986`; ethereum `0x439130...8c86a1`; ethereum `0xfe9dcc...295b17` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0xf81c77...ceee88`](./contracts/ethereum-1/0xf81c77c2d5d7ef6a5e4637f228efea89f7ceee88/) | ⚠️ Unaudited |
| WhitelistRegistrySimple | registry | ethereum | 3 deployments: ethereum [`0x52096d...50eebd`](./contracts/ethereum-1/0x52096d540719a8577fe634624f50badea050eebd/); ethereum `0xac8d32...ce4f35`; ethereum `0xfc0e24...aba83b` | ⚠️ Unaudited |
| Yobitcoin | unknown | ethereum | [`0x9dcae4...8e96ac`](./contracts/ethereum-1/0x9dcae4a9e65bf7925eb7809142f848d3cf8e96ac/) | ⚠️ Unaudited |
| Zedxion | unknown | ethereum | [`0xfbc4f3...9a9341`](./contracts/ethereum-1/0xfbc4f3f645c4003a2e4f4e9b51077d2daa9a9341/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (167)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x02f56b...30d265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03d0ab...863151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x047891...7b40ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x063a5d...9cc087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x081d5b...47266c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09483f...c29990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b3f6d...c0dbda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bf16c...bb33c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f4d99...e29e99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1040ad...15e936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1136b2...173ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11cb4a...c42cd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12e427...53b678` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x153eff...dd445f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15a3c2...3de233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15a57d...2a63bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x168d49...656d41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18bcfc...b50b1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19ea2e...e0797b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d68da...4d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ecd10...2ada97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2057cf...e7189a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2086cc...b739f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20d83a...16db4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2207f0...7ddbf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x220bda...2196d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x228fb0...20f112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22c7e7...25c344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25af92...690756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x272395...5b1fd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x288931...2b9fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29142e...df6f81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x298a51...b807b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a037b...bded55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b6e7f...de076e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c26cc...8f3b74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d96fd...a59a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e5748...4d5f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x320868...b7d4f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3451b6...a1e812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35ea38...28ab15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39f2bc...9f76bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a78de...564c72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b1705...a978f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c3f3c...8c7c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c9696...59fe60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e430c...158e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e7751...59f092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4487cc...a47caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x449c9d...e27c48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4aaffc...bdf8e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c5f47...5e8e6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4cbb5f...4dc884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d8f74...91533c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4da45f...e32365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e5622...6f6881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x521aba...eabfc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x532224...e63f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54fc51...a3dbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57eaec...c87ba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5deb3f...b0982f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x609262...233741` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x611207...32538c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62c9c2...45ace9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x673e8e...d3c4a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6aa7a8...94d0c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e9746...d4f127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x702fb6...e68d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7122db...fbd0e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x720b9b...5b670e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74f332...b15763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76d299...9927c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x777c7f...9d2fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78ff2e...c51045` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x794e56...ef3103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b5396...98a7a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c327e...5a0c04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c6ce2...a33f42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d8e61...272331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f22fc...20422b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80833e...2e5e70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84ab1d...2c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84d99a...c4e9b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8607bc...73e186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88d674...0f0b17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88e417...87f6eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b1ac2...906a51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b4f62...8f7027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x910b9b...f26021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92f3f7...f33588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94a68d...1e6c1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94dadd...b5e36c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x989c41...22a00d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9942e9...ac061d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x994380...f55ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99edd1...46f33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ad44a...62723d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b934b...797ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cea17...b8f756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa77c88...37bbc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7cd98...3aa308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8418d...698a65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa5ad0...3cc222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaffdd3...999d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb712e4...72ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb71cce...45bdba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7b2a7...32393a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8a335...8aae22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbae79c...87c8e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd74ec...d36e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf683b...8b525a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc17676...8ae09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1cbfc...a10c76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2c3f8...c5dd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6f9b1...cdddbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb13e9...4f895d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc0333...544d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcccf7d...142c2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd9797...a268fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1821b...2dc76c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6a5ca...132ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6eedc...489495` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7304b...1c187e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7e1c8...9155e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8f177...13c7dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9ac77...ff162b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda63a3...524090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda90ab...f548c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdab676...4f6c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb38ae...ef5944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbe8fd...cfb727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc9398...7b8be7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd3971...ab0536` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdebf89...1289cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdecf04...276140` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf660a...28d1bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0e294...0054a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe408d8...fd4269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5c375...b124b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe78794...c9507b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe872e6...510fea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe93f1a...9786a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea2a75...180fb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec193b...cefb0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee0ea8...910931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef3cff...673394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef6fa3...c18d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf021f0...db19e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2445e...c38e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf28b44...cb38be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2f400...b1b8a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf313b3...c4ec04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf37b9a...ae24e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4c0b8...5e6049` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4fce3...60a4b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5903b...2a91b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf62678...f6884f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf62bb7...0a5681` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf6784f...7cbc8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf67b40...1e8a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8439e...8595a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8a152...f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9088d...3fdbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc79e9...529e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd3dfb...540626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd4875...38fcb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff0822...9baf5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 11 | high |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 3 | high |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 3 | high |
| [Certik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) | CertiK | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Coinfabrik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Hacken - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) | Hacken | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Haechi - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Scott Bigelow - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Slowmist - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Certik - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Gulamov - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | 1 | high |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | contract_name | 3 | high |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 3 | high |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 3 | high |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 2 | high |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 3 | medium |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 9 | high |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 9 | high |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | 9 | high |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 8 | high |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 6 | high |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | 17 | high |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | 32 | high |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | 11 | high |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 17 | high |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 9 | high |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 40 | high |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 17 | high |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 17 | high |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 20 | high |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 20 | high |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [LICENSE.md](https://github.com/1inch/1inch-audits/blob/master/LICENSE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | contract_name | 3 | high |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 3 | high |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 3 | high |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | contract_name | 3 | high |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 3 | high |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | contract_name | 3 | high |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 3 | high |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 3 | high |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | contract_name | 12 | high |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 12 | high |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 12 | high |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 58 | high |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 40 | high |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 47 | high |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | 12 | high |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/1inch/1inch-audits/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | unknown | Audit | 2025-06 | fresh | Direct | n/a | 0 | n/a |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 376 | high |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 376 | high |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 376 | high |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 376 | medium |
| [GasEstimator.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/GasEstimator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MultiWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/MultiWrapper.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [OffchainOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/OffchainOracle.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [Blacklist.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/helpers/Blacklist.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ConnectorManager.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/helpers/ConnectorManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IAlgebraPool.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IAlgebraPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IBzxProtocol.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IBzxProtocol.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICToken.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ICToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IChai.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IChai.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IChainlink.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IChainlink.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IComet.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IComet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IComptroller.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IComptroller.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurveMetaregistry.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ICurveMetaregistry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurvePool.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ICurvePool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurveProvider.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ICurveProvider.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDodo.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IDodo.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDodoFactories.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IDodoFactories.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IKyberDmmFactory.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IKyberDmmFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IKyberDmmPool.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IKyberDmmPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILendingPoolV1.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ILendingPoolV1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILendingPoolV2.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ILendingPoolV2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILendingPoolV3.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ILendingPoolV3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanToken.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ILoanToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMooniswap.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IMooniswap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMooniswapFactory.md (also discovered via alternate URL)](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IMooniswapFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISDai.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ISDai.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISolidlyFactory.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ISolidlyFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IStaticATokenLM.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IStaticATokenLM.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISynthetixAddressResolver.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ISynthetixAddressResolver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISynthetixExchangeRates.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ISynthetixExchangeRates.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISynthetixProxy.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/ISynthetixProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapFactory.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IUniswapFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapV2Pair.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IUniswapV2Pair.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapV3Pool.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IUniswapV3Pool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWstETH.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IWstETH.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IYVault.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/interfaces/IYVault.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OraclePrices.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/libraries/OraclePrices.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AlgebraOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/AlgebraOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainlinkOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/ChainlinkOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CurveOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/CurveOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CurveOracleCRP.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/CurveOracleCRP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DodoOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/DodoOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DodoV2Oracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/DodoV2Oracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [KlaySwapOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/KlaySwapOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [KyberDmmOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/KyberDmmOracle.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [MooniswapOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/MooniswapOracle.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [OracleBase.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/OracleBase.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidlyOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/SolidlyOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidlyOracleNoCreate2.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/SolidlyOracleNoCreate2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SyncswapOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/SyncswapOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SynthetixOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/SynthetixOracle.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [UniswapOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/UniswapOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UniswapV2LikeOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/UniswapV2LikeOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UniswapV3LikeOracle.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/oracles/UniswapV3LikeOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AaveWrapperV1.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/AaveWrapperV1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AaveWrapperV2.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/AaveWrapperV2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AaveWrapperV3.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/AaveWrapperV3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BaseCoinWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/BaseCoinWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChaiWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/ChaiWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CompoundLikeWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/CompoundLikeWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CompoundV3Wrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/CompoundV3Wrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Erc4626Wrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/Erc4626Wrapper.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [FulcrumWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/FulcrumWrapper.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [FulcrumWrapperLegacy.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/FulcrumWrapperLegacy.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [SDaiWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/SDaiWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUSDeWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/SUSDeWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StataTokenWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/StataTokenWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Wrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/Wrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WsuperOETHbWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/WsuperOETHbWrapper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [YVaultWrapper.md](https://github.com/1inch/spot-price-aggregator/blob/master/docs/wrappers/YVaultWrapper.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [LimitOrderProtocol.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/LimitOrderProtocol.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [OrderLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/OrderLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OrderMixin.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/OrderMixin.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ApprovalPreInteraction.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ApprovalPreInteraction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainlinkCalculator.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ChainlinkCalculator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DutchAuctionCalculator.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/DutchAuctionCalculator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC1155Proxy.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ERC1155Proxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC721Proxy.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ERC721Proxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC721ProxySafe.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ERC721ProxySafe.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ETHOrders.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ETHOrders.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FeeTaker.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/FeeTaker.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [ImmutableOwner.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/ImmutableOwner.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OrderIdInvalidator.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/OrderIdInvalidator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Permit2Proxy.md](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/Permit2Proxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Permit2WitnessProxy.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/Permit2WitnessProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PrioirityFeeLimiter.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/PrioirityFeeLimiter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [RangeAmountCalculator.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/extensions/RangeAmountCalculator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OrderRegistrator.md](https://github.com/1inch/limit-order-protocol/blob/master/docs/helpers/OrderRegistrator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PredicateHelper.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/helpers/PredicateHelper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SafeOrderBuilder.md](https://github.com/1inch/limit-order-protocol/blob/master/docs/helpers/SafeOrderBuilder.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SeriesEpochManager.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/helpers/SeriesEpochManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SeriesNonceManager.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/helpers/SeriesNonceManager.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [IAmountGetter.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/IAmountGetter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICreate3Deployer.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/ICreate3Deployer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOrderMixin.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/IOrderMixin.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOrderRegistrator.md](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/IOrderRegistrator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPermit2WitnessTransferFrom.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/IPermit2WitnessTransferFrom.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPostInteraction.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/IPostInteraction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPreInteraction.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/IPreInteraction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITakerInteraction.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/interfaces/ITakerInteraction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AmountCalculatorLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/AmountCalculatorLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BitInvalidatorLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/BitInvalidatorLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Errors.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/Errors.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ExtensionLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/ExtensionLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MakerTraitsLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/MakerTraitsLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OffsetsLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/OffsetsLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RemainingInvalidatorLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/RemainingInvalidatorLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TakerTraitsLib.md (also discovered via alternate URL)](https://github.com/1inch/limit-order-protocol/blob/master/docs/libraries/TakerTraitsLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [AggregationRouterV6.md](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/AggregationRouterV6.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | high |
| [ClipperRouter.md](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/ClipperRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GenericRouter.md](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/GenericRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UnoswapRouter.md](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/UnoswapRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AddressLib.md (also discovered via alternate URL)](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/helpers/AddressLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EthReceiver.md (also discovered via alternate URL)](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/helpers/EthReceiver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OnlyWethReceiver.md (also discovered via alternate URL)](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/helpers/OnlyWethReceiver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Permitable.md](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/helpers/Permitable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapV3SwapCallback.md](https://github.com/1inch/1inch-docs/blob/master/docs/aggregation-protocol/smart-contract/interfaces/IUniswapV3SwapCallback.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [creating-fusion-orders.md](https://github.com/1inch/1inch-docs/blob/master/docs/fusion-swap/fusion-sdk/for-integrators/creating-fusion-orders.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sdk-overview.md](https://github.com/1inch/1inch-docs/blob/master/docs/fusion-swap/fusion-sdk/for-integrators/sdk-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [auction-calculator.md](https://github.com/1inch/1inch-docs/blob/master/docs/fusion-swap/fusion-sdk/for-resolvers/auction-calculator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [auction-salt.md](https://github.com/1inch/1inch-docs/blob/master/docs/fusion-swap/fusion-sdk/for-resolvers/auction-salt.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [auction-suffix.md](https://github.com/1inch/1inch-docs/blob/master/docs/fusion-swap/fusion-sdk/for-resolvers/auction-suffix.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [websocket-api.md](https://github.com/1inch/1inch-docs/blob/master/docs/fusion-swap/fusion-sdk/for-resolvers/websocket-api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUMMARY.md (also discovered via alternate URL)](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/smart-contract/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 6 | high |
| [cancel-all-limit-orders.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/cancel-all-limit-orders.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cancel-limit-order.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/cancel-limit-order.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [create-limit-order.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/create-limit-order.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [domain-separator.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/domain-separator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [fill-limit-order.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/fill-limit-order.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interactive-receiver.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/interactive-receiver.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [limit-order-structure.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/limit-order-structure.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nonce.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/nonce.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [predicate.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/predicate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [quick-start.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/quick-start.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [remaining.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/remaining.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cancel-limit-order-rfq.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/rfq-limit-orders/cancel-limit-order-rfq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [create-limit-order-rfq.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/rfq-limit-orders/create-limit-order-rfq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [fill-limit-order-rfq.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/rfq-limit-orders/fill-limit-order-rfq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [limit-order-rfq-structure.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/rfq-limit-orders/limit-order-rfq-structure.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [series-nonce-manager.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/series-nonce-manager.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [validate-limit-order.md](https://github.com/1inch/1inch-docs/blob/master/docs/limit-order-protocol/utils/guide/validate-limit-order.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDaiLikePermit.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/interfaces/IDaiLikePermit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC20MetadataUppercase.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/interfaces/IERC20MetadataUppercase.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC7597Permit.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/interfaces/IERC7597Permit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPermit2.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/interfaces/IPermit2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWETH.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/interfaces/IWETH.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AddressArray.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/AddressArray.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AddressSet.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/AddressSet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BySigTraits.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/BySigTraits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BytesMemory.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/BytesMemory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BytesStorage.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/BytesStorage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Calldata.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/Calldata.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CalldataPtr.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/CalldataPtr.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ECDSA.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/ECDSA.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RevertReasonForwarder.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/RevertReasonForwarder.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RevertReasonParser.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/RevertReasonParser.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SafeERC20.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/SafeERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StringUtil.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/StringUtil.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Transient.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/Transient.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TransientLock.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/TransientLock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UniERC20.md (also discovered via alternate URL)](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/libraries/UniERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BySig.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mixins/BySig.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Multicall.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mixins/Multicall.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PermitAndCall.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mixins/PermitAndCall.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ReentrancyGuard.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mixins/ReentrancyGuard.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SelfdestructEthSender.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mixins/SelfdestructEthSender.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Simulator.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mixins/Simulator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20PermitMock.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mocks/ERC20PermitMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SelfdestructEthSenderMock.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mocks/SelfdestructEthSenderMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenCustomDecimalsMock.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mocks/TokenCustomDecimalsMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenMock.md](https://github.com/1inch/solidity-utils/blob/master/docs/contracts/mocks/TokenMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Networks.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/hardhat-setup/classes/Networks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [assertRoughlyEqualValues.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/assertRoughlyEqualValues.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [buildBySigTraits.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/buildBySigTraits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [buildData.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/buildData.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [buildDataLikeDai.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/buildDataLikeDai.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [gasspectEVM.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/gasspectEVM.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [getPermit.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/getPermit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [getPermit2.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/getPermit2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [getPermitLikeDai.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/getPermitLikeDai.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [getPermitLikeUSDC.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/getPermitLikeUSDC.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [saveContractWithCreate3Deployment.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/saveContractWithCreate3Deployment.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [signSignedCall.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/signSignedCall.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [trackReceivedTokenAndTx.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/functions/trackReceivedTokenAndTx.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeployContractOptions.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/interfaces/DeployContractOptions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeployContractOptionsWithCreate3.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/interfaces/DeployContractOptionsWithCreate3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [constants.md](https://github.com/1inch/solidity-utils/blob/master/docs/js/src/variables/constants.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [v2-migration-guide.md](https://github.com/1inch/cross-chain-sdk/blob/master/docs/v2-migration-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-aqua-1.0.pdf](https://github.com/1inch/aqua/blob/main/docs/whitepaper-aqua-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PROGRAMS.md](https://github.com/1inch/swap-vm/blob/release%2F1.1/docs/PROGRAMS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-swap-vm-1.0.pdf](https://github.com/1inch/swap-vm/blob/release%2F1.1/docs/whitepaper-swap-vm-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CrosschainWhitelistRegistry.md](https://github.com/1inch/fusion-protocol/blob/master/docs/CrosschainWhitelistRegistry.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [FeeBank.md](https://github.com/1inch/fusion-protocol/blob/master/docs/FeeBank.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FeeBankCharger.md](https://github.com/1inch/fusion-protocol/blob/master/docs/FeeBankCharger.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [KycNFT.md](https://github.com/1inch/fusion-protocol/blob/master/docs/KycNFT.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PowerPod.md](https://github.com/1inch/fusion-protocol/blob/master/docs/PowerPod.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 6 | low |
| [Settlement.md](https://github.com/1inch/fusion-protocol/blob/master/docs/Settlement.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 8 | low |
| [SimpleSettlement.md](https://github.com/1inch/fusion-protocol/blob/master/docs/SimpleSettlement.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WhitelistRegistry.md](https://github.com/1inch/fusion-protocol/blob/master/docs/WhitelistRegistry.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 6 | low |
| [BaseExtension.md](https://github.com/1inch/fusion-protocol/blob/master/docs/extensions/BaseExtension.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IntegratorFeeExtension.md](https://github.com/1inch/fusion-protocol/blob/master/docs/extensions/IntegratorFeeExtension.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ResolverValidationExtension.md](https://github.com/1inch/fusion-protocol/blob/master/docs/extensions/ResolverValidationExtension.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ResolverMetadata.md](https://github.com/1inch/fusion-protocol/blob/master/docs/helpers/ResolverMetadata.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 6 | low |
| [IFeeBank.md](https://github.com/1inch/fusion-protocol/blob/master/docs/interfaces/IFeeBank.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IFeeBankCharger.md](https://github.com/1inch/fusion-protocol/blob/master/docs/interfaces/IFeeBankCharger.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper.md](https://github.com/1inch/solana-fusion-protocol/blob/main/docs/whitepaper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CowswapResolver.md](https://github.com/1inch/gas-comparison/blob/master/docs/CowswapResolver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [InchResolver.md](https://github.com/1inch/gas-comparison/blob/master/docs/InchResolver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Resolver.md](https://github.com/1inch/gas-comparison/blob/master/docs/Resolver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UniswapResolver.md](https://github.com/1inch/gas-comparison/blob/master/docs/UniswapResolver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICowswapGPv2Authentication.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/ICowswapGPv2Authentication.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICowswapGPv2Settlement.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/ICowswapGPv2Settlement.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISignatureTransfer.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/ISignatureTransfer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMatcha.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/limit-orders/IMatcha.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IReactor.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/limit-orders/IReactor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IReactorCallback.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/limit-orders/IReactorCallback.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ReactorStructs.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/limit-orders/ReactorStructs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IAllowanceHolder.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/0xSettler/IAllowanceHolder.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IAllowanceTransfer.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/0xSettler/IAllowanceTransfer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISettler.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/0xSettler/ISettler.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISettlerActions.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/0xSettler/ISettlerActions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IAggregationRouter.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/IAggregationRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMatchaRouter.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/IMatchaRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IParaswapRouter.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/IParaswapRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapUniversalRouter.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/IUniswapUniversalRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapV2Router.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/IUniswapV2Router.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapV3Router.md](https://github.com/1inch/gas-comparison/blob/master/docs/interfaces/router/IUniswapV3Router.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [_README.md](https://github.com/1inch/community-web-ui/blob/main/docs/_README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aqua-design.md](https://github.com/1inch/aqua-app-template/blob/main/docs/aqua-design.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aqua-dev-preview.pdf](https://github.com/1inch/aqua-app-template/blob/main/docs/aqua-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [getting-started.md](https://github.com/1inch/aqua-app-template/blob/main/docs/getting-started.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [swapvm-dev-preview.pdf](https://github.com/1inch/swap-vm-template/blob/main/docs/swapvm-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AddressToken.md](https://github.com/1inch/address-token/blob/master/docs/AddressToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AddressTokenMetadata.md](https://github.com/1inch/address-token/blob/master/docs/AddressTokenMetadata.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IAddressTokenMetadata.md](https://github.com/1inch/address-token/blob/master/docs/interfaces/IAddressTokenMetadata.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Paymaster.md](https://github.com/1inch/paymaster-zksync/blob/master/docs/Paymaster.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMuteSwitchPairDynamic.md](https://github.com/1inch/paymaster-zksync/blob/master/docs/interfaces/IMuteSwitchPairDynamic.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMuteSwitchRouterDynamic.md](https://github.com/1inch/paymaster-zksync/blob/master/docs/interfaces/IMuteSwitchRouterDynamic.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mooniswap.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/Mooniswap.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [MooniswapDeployer.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/MooniswapDeployer.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [MooniswapFactory.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/MooniswapFactory.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [ReferralFeeReceiver.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/ReferralFeeReceiver.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | low |
| [BaseGovernanceModule.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/governance/BaseGovernanceModule.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MooniswapFactoryGovernance.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/governance/MooniswapFactoryGovernance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MooniswapGovernance.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/governance/MooniswapGovernance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FarmingRewards.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/inch/farming/FarmingRewards.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 40 | low |
| [FarmingVoter.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/inch/farming/FarmingVoter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [IFeeCollector.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/interfaces/IFeeCollector.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IGovernanceModule.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/interfaces/IGovernanceModule.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMooniswapDeployer.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/interfaces/IMooniswapDeployer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMooniswapFactoryGovernance.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/interfaces/IMooniswapFactoryGovernance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IReferralFeeReceiver.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/interfaces/IReferralFeeReceiver.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ExplicitLiquidVoting.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/ExplicitLiquidVoting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidVoting.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/LiquidVoting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MooniswapConstants.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/MooniswapConstants.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SafeCast.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/SafeCast.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sqrt.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/Sqrt.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VirtualBalance.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/VirtualBalance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VirtualVote.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/VirtualVote.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Vote.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/Vote.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Voting.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/libraries/Voting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BalanceAccounting.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/utils/BalanceAccounting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BaseRewards.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/utils/BaseRewards.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Converter.md](https://github.com/1inch/liquidity-protocol/blob/master/docs/utils/Converter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x11777d...10daab`](./contracts/ethereum-1/0x11777d951cc9be0bafff437d30fbcc759410daab/) | HolyToken | token | $272,006.00 | Verified native implementation with $272,006.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7062...efdb58`](./contracts/ethereum-1/0x1e7062f6458d67e74f84c37c189ab3e69eefdb58/) | HolyPoolV2 | core_logic | $15,894.81 | Verified native implementation with $15,894.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c4075...2e4411`](./contracts/ethereum-1/0x8c4075ef135aaebb2f0fd445635e305a162e4411/) | CEOofMoneyNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68655...2d9548`](./contracts/ethereum-1/0xb686559bb45fcdb1f370836066ef9e9b4c2d9548/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60184...080456`](./contracts/ethereum-1/0xa60184b67a665ede46774b5fee0acdf115080456/) | Dice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77340c...d5f91c`](./contracts/ethereum-1/0x77340c866ef1da13407d61120010f136fad5f91c/) | EvmHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2359ab...e58dda`](./contracts/ethereum-1/0x2359ab45ac9c5b575152be21a19c33c138e58dda/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedfd04...3fc6ca`](./contracts/ethereum-1/0xedfd04db73323502d533ef8d0557c2549a3fc6ca/) | HHTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0811ad...913c12`](./contracts/ethereum-1/0x0811ad996cd39cecaedce64a51793cfebb913c12/) | HolderVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e6097...944770`](./contracts/ethereum-1/0x5e609760a190822e86ae1598faf9d82aa7944770/) | HolyHand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038f4f...f80fc7`](./contracts/ethereum-1/0x038f4f2a032f69e5b2dfdf21623ad14b57f80fc7/) | HolyHandV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14dae6...01e377`](./contracts/ethereum-1/0x14dae6a4adb2f0c44756d209404e3495ac01e377/) | HolyHandV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2504b6...80f1b8`](./contracts/ethereum-1/0x2504b6a3fa927cd7ea0cf713fc6ad9124b80f1b8/) | HolyHandV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7a55c...f10134`](./contracts/ethereum-1/0xe7a55c10c74720fab86f483fea2181ded3f10134/) | HolyHandV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52c1e7...be2f2d`](./contracts/ethereum-1/0x52c1e7e4bb6ffd5230c389be5f186403c4be2f2d/) | HolyHandV5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5ba57...8119fc`](./contracts/ethereum-1/0xd5ba57863ac61602e96f88a934ef388ef08119fc/) | HolyHandV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fb67...037fb3`](./contracts/ethereum-1/0x26fb67e9eb170aa01ced962a007350725b037fb3/) | HolyPaladin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29f2a1...3ad4af`](./contracts/ethereum-1/0x29f2a1a7c61fd7ea08bbcca95d53b1462b3ad4af/) | HolyPassageV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80179c...f61e91`](./contracts/ethereum-1/0x80179c05b34c733d7cc59763c8f690222bf61e91/) | HolyPassageV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1058fb...337051`](./contracts/ethereum-1/0x1058fba8e10c1df675c79ab988c18275f6337051/) | HolyPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2576c0...da361a`](./contracts/ethereum-1/0x2576c08de9a369491d148f82356c5b1431da361a/) | HolyRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ea3e4...7d1d45`](./contracts/ethereum-1/0x5ea3e454fe9f099a1ec7f5d14213cbc86a7d1d45/) | HolyWing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b986b...b8ace1`](./contracts/ethereum-1/0x9b986b20243b62628f7b47a2dea602c29eb8ace1/) | HolyWingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbf944...a10198`](./contracts/ethereum-1/0xcbf944ad94e7bd190d6752e28f8c09be1da10198/) | HolyWingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb33de...ef0911`](./contracts/ethereum-1/0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911/) | HumanitarianAidNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18763f...5fc778`](./contracts/ethereum-1/0x18763f195f35078cc662b2c26b97bb1a015fc778/) | LeftoverExchanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5349df...3346de`](./contracts/ethereum-1/0x5349df28f8353dc8049edf11faae2d3f3b3346de/) | LimitOrderProtocolPro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee7c0...92d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518ddb...54c043`](./contracts/ethereum-1/0x518ddbc6cabe97053b69199185c88754b654c043/) | MerkleDrop128 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f9abb...ac90cd`](./contracts/ethereum-1/0x0f9abb87a091190eec58c0a7cc18c842c3ac90cd/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x470373...f31bc6`](./contracts/ethereum-1/0x4703738dec2bbbddb5ec06c4ca5c76d325f31bc6/) | MoverCEOCapNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa00942...23df5a`](./contracts/ethereum-1/0xa00942e25dfad2473b529642e39bbdf38d23df5a/) | MoverNFT1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00834e...d43753`](./contracts/ethereum-1/0x00834e2763b108b01218638dc2cec27ce6d43753/) | MoverUBTStakeNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81cbc2...3f1f9e`](./contracts/ethereum-1/0x81cbc2e0a9d8bd3b1976e1292cc08762433f1f9e/) | MoverUBTStakePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e0c98...e26fcb`](./contracts/ethereum-1/0x6e0c982c05b6fb0d7465476ddef7b1b7cbe26fcb/) | OGShirtNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1590c8...0223af`](./contracts/ethereum-1/0x1590c8af474ad2c06ff3eadd1e8fb8adf60223af/) | p1MToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153818...aaf79e`](./contracts/ethereum-1/0x153818040e114e0775e14c9029619d765aaaf79e/) | SignatureMerkleDrop128 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedb2f4...ec6554`](./contracts/ethereum-1/0xedb2f430b951cfaa48cce0ce5be9621f52ec6554/) | SmartTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb63aee...7f3452`](./contracts/ethereum-1/0xb63aeee274c5b3e17e3070f00eeafc916b7f3452/) | SmartTreasuryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcd791...2601ef`](./contracts/ethereum-1/0xfcd791c74f16061f341fe2a1f5d8fdd3d32601ef/) | SmartTreasuryV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c16bb...2813fa`](./contracts/ethereum-1/0x3c16bb476315ce0c66c659e0c2fd1657e62813fa/) | SmartTreasuryV3_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47795a...c28315`](./contracts/ethereum-1/0x47795ab886f53719e38780cedf40083aaec28315/) | SmartTreasuryV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0a95c...90631c`](./contracts/ethereum-1/0xd0a95cce85719f3fa699f5971d4378c22890631c/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03d1b1...6a16d2`](./contracts/ethereum-1/0x03d1b1a56708fa298198dd5e23651a29b76a16d2/) | VestedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19bcba...a041e3`](./contracts/ethereum-1/0x19bcba90d1160b99b8c11eb44f276505bfa041e3/) | VestedVotingPower | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df9a5...a6f942`](./contracts/ethereum-1/0x0df9a5fe824d1d52caadd2b7edb2859e24a6f942/) | VestingValidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52096d...50eebd`](./contracts/ethereum-1/0x52096d540719a8577fe634624f50badea050eebd/) | WhitelistRegistrySimple | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 165 |
| upstream | 5 |
| standard_library | 15 |
| needs_review | 89 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 333
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=57, low=23, medium=3
- Match method counts: extraction_exact=2146

Zero-match audit list:

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf
- [8162] 1inch Aggregation Router V5_Consensys.pdf
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf
- [8164] 1inch Aggregation Router V5_MixBytes.pdf
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf
- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8168] 1inch Aggregation Router V5_Statemind.pdf
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf
- [8171] 1inch Aggregation Router V6.1_Hexens.pdf
- [8172] 1inch Aggregation Router V6.1_OpenZeppelin.pdf
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
- [8176] 1inch Aggregation Router V6.2_Pessimistic.pdf
- [8178] 1inch Aggregation Router V6_Decurity.pdf
- [8180] 1inch Aggregation Router V6_OpenZeppelin.pdf
- [8181] 1inch Aggregation Router V6_PeckShield.pdf
- [8182] 1inch Aggregation Router V6_Pessimistic.pdf
- [8185] Certik - 1inch v2 Audit Report.pdf
- [8186] Chainsulting - 1inch v2 Audit Report.pdf
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf
- [8188] Hacken - 1inch v2 Audit Report.pdf
- [8189] Haechi - 1inch v2 Audit Report.pdf
- [8190] MixBytes - 1inch v2 Audit Report.pdf
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf
- [8192] Slowmist - 1inch v2 Audit Report.pdf
- [8193] Certik - 1inch v3 Audit Report.pdf
- [8194] Gulamov - 1inch v3 Audit Report.pdf
- [8195] MixBytes - 1inch v3 Audit Report.pdf
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8210] 1inch-cross-chain-v2-Consensys.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8256] LICENSE.md
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8267] LimitSwap audit.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
- [8283] README.md
- [8284] Solana Fusion - Decurity v1.pdf
- [8285] Solana Fusion - Hexens v1.pdf
- [8286] Solana Fusion - Open Zepplin v1.pdf
- [8287] Solana Fusion - Ottersec v1.pdf
- [8288] Solana Fusion - Quantstamp v1.pdf
- [8289] Solana Fusion - Zenith v1.01.pdf
- [8290] Solana Fusion v1_Kudelski.pdf
- [8291] Solana Fusion v1_OffsideLabs.pdf
- [8292] Solana cross-chain v1.0-Hexens.pdf
- [8293] Solana cross-chain v1.0-Zenith.pdf
- [8294] Solana cross-chain v1.0_Decurity.pdf
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf
- [8296] Solana cross-chain v1.0_Sherlock.pdf
- [8297] Solana cross-chain v1.1_Decurity.pdf
- [8298] Solana cross-chain v1.1_Hexens.pdf
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf
- [8300] Solana cross-chain v1.1_Sherlock.pdf
- [8301] Solana cross-chain v1.1_Zenith.pdf
- [8306] GasEstimator.md
- [8309] Blacklist.md
- [8310] ConnectorManager.md
- [8311] IAlgebraPool.md
- [8312] IBzxProtocol.md
- [8313] ICToken.md
- [8314] IChai.md
- [8315] IChainlink.md
- [8316] IComet.md
- [8317] IComptroller.md
- [8318] ICurveMetaregistry.md
- [8319] ICurvePool.md
- [8320] ICurveProvider.md
- [8321] IDodo.md
- [8322] IDodoFactories.md
- [8323] IKyberDmmFactory.md
- [8324] IKyberDmmPool.md
- [8325] ILendingPoolV1.md
- [8326] ILendingPoolV2.md
- [8327] ILendingPoolV3.md
- [8328] ILoanToken.md
- [8329] IMooniswap.md
- [8330] IMooniswapFactory.md
- [8331] IOracle.md
- [8332] ISDai.md
- [8333] ISolidlyFactory.md
- [8334] IStaticATokenLM.md
- [8335] ISynthetixAddressResolver.md
- [8336] ISynthetixExchangeRates.md
- [8337] ISynthetixProxy.md
- [8338] IUniswapFactory.md
- [8339] IUniswapV2Pair.md
- [8340] IUniswapV3Pool.md
- [8341] IWrapper.md
- [8342] IWstETH.md
- [8343] IYVault.md
- [8344] OraclePrices.md
- [8345] AlgebraOracle.md
- [8346] ChainlinkOracle.md
- [8347] CurveOracle.md
- [8348] CurveOracleCRP.md
- [8349] DodoOracle.md
- [8350] DodoV2Oracle.md
- [8351] KlaySwapOracle.md
- [8354] OracleBase.md
- [8355] SolidlyOracle.md
- [8356] SolidlyOracleNoCreate2.md
- [8357] SyncswapOracle.md
- [8359] UniswapOracle.md
- [8360] UniswapV2LikeOracle.md
- [8361] UniswapV3LikeOracle.md
- [8362] AaveWrapperV1.md
- [8363] AaveWrapperV2.md
- [8364] AaveWrapperV3.md
- [8365] BaseCoinWrapper.md
- [8366] ChaiWrapper.md
- [8367] CompoundLikeWrapper.md
- [8368] CompoundV3Wrapper.md
- [8369] Erc4626Wrapper.md
- [8372] SDaiWrapper.md
- [8373] SUSDeWrapper.md
- [8374] StataTokenWrapper.md
- [8375] Wrapper.md
- [8376] WsuperOETHbWrapper.md
- [8379] OrderLib.md
- [8380] OrderMixin.md
- [8381] ApprovalPreInteraction.md
- [8382] ChainlinkCalculator.md
- [8383] DutchAuctionCalculator.md
- [8384] ERC1155Proxy.md
- [8385] ERC721Proxy.md
- [8386] ERC721ProxySafe.md
- [8387] ETHOrders.md
- [8389] ImmutableOwner.md
- [8390] OrderIdInvalidator.md
- [8391] Permit2Proxy.md
- [8392] Permit2WitnessProxy.md
- [8394] RangeAmountCalculator.md
- [8395] OrderRegistrator.md
- [8396] PredicateHelper.md
- [8397] SafeOrderBuilder.md
- [8398] SeriesEpochManager.md
- [8400] IAmountGetter.md
- [8401] ICreate3Deployer.md
- [8402] IOrderMixin.md
- [8403] IOrderRegistrator.md
- [8404] IPermit2WitnessTransferFrom.md
- [8405] IPostInteraction.md
- [8406] IPreInteraction.md
- [8407] ITakerInteraction.md
- [8408] AmountCalculatorLib.md
- [8409] BitInvalidatorLib.md
- [8410] Errors.md
- [8411] ExtensionLib.md
- [8412] MakerTraitsLib.md
- [8413] OffsetsLib.md
- [8414] RemainingInvalidatorLib.md
- [8415] TakerTraitsLib.md
- [8416] MixBytes.pdf
- [8418] ClipperRouter.md
- [8419] GenericRouter.md
- [8421] UnoswapRouter.md
- [8422] AddressLib.md
- [8423] EthReceiver.md
- [8425] OnlyWethReceiver.md
- [8426] Permitable.md
- [8430] IUniswapV3SwapCallback.md
- [8431] creating-fusion-orders.md
- [8432] sdk-overview.md
- [8433] auction-calculator.md
- [8434] auction-salt.md
- [8435] auction-suffix.md
- [8436] websocket-api.md
- [8477] cancel-all-limit-orders.md
- [8478] cancel-limit-order.md
- [8479] create-limit-order.md
- [8480] domain-separator.md
- [8481] fill-limit-order.md
- [8483] limit-order-structure.md
- [8484] nonce.md
- [8485] predicate.md
- [8486] quick-start.md
- [8487] remaining.md
- [8488] cancel-limit-order-rfq.md
- [8489] create-limit-order-rfq.md
- [8490] fill-limit-order-rfq.md
- [8491] limit-order-rfq-structure.md
- [8493] validate-limit-order.md
- [8497] IDaiLikePermit.md
- [8498] IERC20MetadataUppercase.md
- [8499] IERC7597Permit.md
- [8500] IPermit2.md
- [8501] IWETH.md
- [8502] AddressArray.md
- [8504] AddressSet.md
- [8505] BySigTraits.md
- [8506] BytesMemory.md
- [8507] BytesStorage.md
- [8508] Calldata.md
- [8509] CalldataPtr.md
- [8510] ECDSA.md
- [8511] RevertReasonForwarder.md
- [8512] RevertReasonParser.md
- [8513] SafeERC20.md
- [8514] StringUtil.md
- [8515] Transient.md
- [8516] TransientLock.md
- [8517] UniERC20.md
- [8518] BySig.md
- [8520] Multicall.md
- [8522] PermitAndCall.md
- [8523] ReentrancyGuard.md
- [8524] SelfdestructEthSender.md
- [8525] Simulator.md
- [8526] ERC20PermitMock.md
- [8527] SelfdestructEthSenderMock.md
- [8528] TokenCustomDecimalsMock.md
- [8529] TokenMock.md
- [8532] Networks.md
- [8534] assertRoughlyEqualValues.md
- [8535] buildBySigTraits.md
- [8536] buildData.md
- [8537] buildDataLikeDai.md
- [8538] gasspectEVM.md
- [8539] getPermit.md
- [8540] getPermit2.md
- [8541] getPermitLikeDai.md
- [8542] getPermitLikeUSDC.md
- [8543] saveContractWithCreate3Deployment.md
- [8544] signSignedCall.md
- [8545] trackReceivedTokenAndTx.md
- [8546] DeployContractOptions.md
- [8547] DeployContractOptionsWithCreate3.md
- [8548] constants.md
- [8549] v2-migration-guide.md
- [8550] whitepaper-aqua-1.0.pdf
- [8551] PROGRAMS.md
- [8552] whitepaper-swap-vm-1.0.pdf
- [8554] FeeBank.md
- [8555] FeeBankCharger.md
- [8556] KycNFT.md
- [8559] SimpleSettlement.md
- [8561] BaseExtension.md
- [8563] IntegratorFeeExtension.md
- [8564] ResolverValidationExtension.md
- [8567] IFeeBank.md
- [8568] IFeeBankCharger.md
- [8569] whitepaper.md
- [8570] CowswapResolver.md
- [8571] InchResolver.md
- [8572] Resolver.md
- [8573] UniswapResolver.md
- [8574] ICowswapGPv2Authentication.md
- [8575] ICowswapGPv2Settlement.md
- [8576] ISignatureTransfer.md
- [8577] IMatcha.md
- [8578] IReactor.md
- [8579] IReactorCallback.md
- [8580] ReactorStructs.md
- [8581] IAllowanceHolder.md
- [8582] IAllowanceTransfer.md
- [8583] ISettler.md
- [8584] ISettlerActions.md
- [8585] IAggregationRouter.md
- [8586] IMatchaRouter.md
- [8587] IParaswapRouter.md
- [8588] IUniswapUniversalRouter.md
- [8589] IUniswapV2Router.md
- [8590] IUniswapV3Router.md
- [8591] _README.md
- [8592] aqua-design.md
- [8593] aqua-dev-preview.pdf
- [8594] getting-started.md
- [8595] swapvm-dev-preview.pdf
- [8596] AddressToken.md
- [8597] AddressTokenMetadata.md
- [8598] IAddressTokenMetadata.md
- [8599] Paymaster.md
- [8600] IMuteSwitchPairDynamic.md
- [8601] IMuteSwitchRouterDynamic.md
- [8606] BaseGovernanceModule.md
- [8607] MooniswapFactoryGovernance.md
- [8608] MooniswapGovernance.md
- [8611] IFeeCollector.md
- [8612] IGovernanceModule.md
- [8613] IMooniswapDeployer.md
- [8615] IMooniswapFactoryGovernance.md
- [8616] IReferralFeeReceiver.md
- [8617] ExplicitLiquidVoting.md
- [8618] LiquidVoting.md
- [8619] MooniswapConstants.md
- [8620] SafeCast.md
- [8621] Sqrt.md
- [8623] VirtualBalance.md
- [8624] VirtualVote.md
- [8625] Vote.md
- [8626] Voting.md
- [8627] BalanceAccounting.md
- [8628] BaseRewards.md
- [8629] Converter.md
- [8630] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8631] 0002-metadata-manifest-and-pull-command.md
- [8632] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
