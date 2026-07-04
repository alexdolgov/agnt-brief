# Agentic Audit Brief: 1inch

⚠️ Lifecycle status: DECLINING - TVL dropped 22.4% over 90 days

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:23.586Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc, ethereum, zksync-era
- Contract surface: 355 unique implementations (896 raw deployments)
- DeFi Llama TVL: $2,274,711.87
- On-chain TVL (included contracts): $16,092,203.53
- TVL by chain: Ethereum $16,092,203.53

## Project Description

DEX Aggregator. Structurally: 101 project-authored contract(s) across 2 chain(s); 22 ERC20 tokens, 7 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 42 common project-authored base contract(s) (accesscontrolupgradeable, contextupgradeable, erc165upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 969; live-surface contracts included: 879 (163 live, 716 unknown).
- Excluded by liveness: 90 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/47 (34.0%)
- Deployed-live implementations: 47 of 355 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/80
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 275
- Unique implementations: 355
- Raw deployments: 896
- Audits discovered: 150 (150 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 75
- ASD (verified + unaudited TVL): $16,092,203.53
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 8 fresh, 24 aging, 111 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 19.1% (ChainSecurity, MixBytes, OpenZeppelin, Sherlock)
- Note: This protocol is classified as [declining]. ASD of $16,092,203.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 17.5% | 2025-09 |
| MixBytes | Tier 1 | 6 | 7.5% | 2022-11 |
| Decurity | Tier 2 | 5 | 6.3% | 2025-08 |
| ABDK | Tier 2 | 4 | 5.0% | 2023-02 |
| OpenZeppelin | Tier 1 | 4 | 5.0% | 2025-08 |
| CertiK | Tier 2 | 3 | 3.8% | 2021-11 |
| PeckShield | Tier 2 | 3 | 3.8% | 2023-12 |
| Ackee Blockchain | Tier 2 | 1 | 1.3% | 2021-08 |
| ChainSecurity | Tier 1 | 1 | 1.3% | 2023-01 |
| Pashov Audit Group | Tier 2 | 1 | 1.3% | 2024-03 |
| Sherlock | Tier 1 | 1 | 1.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregationRouterV6 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x111111...842a65`](./contracts/ethereum-1/0x111111125421ca6dc452d289314280a0f8842a65/); bsc [`0x111111...842a65`](./contracts/bsc-56/0x111111125421ca6dc452d289314280a0f8842a65/) | ✅ Audited |
| EscrowFactory | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa7bcb4...ddf99a`](./contracts/ethereum-1/0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a/); bsc [`0xa7bcb4...ddf99a`](./contracts/bsc-56/0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a/) | ✅ Audited |
| FarmingRewards | unknown | ethereum | n/a | 40 deployments: ethereum [`0x0da1b3...5437e6`](./contracts/ethereum-1/0x0da1b305d7101359434d71eceaab71e1ff5437e6/); ethereum `0x1055f6...7415fa`; ethereum `0x13927a...5d2106`; ethereum `0x18d410...4f4560`; ethereum `0x2cb9e7...b4182f`; ethereum `0x2ec255...48ffba`; ethereum `0x2ede37...d25de8`; ethereum `0x302a6e...986677`; ethereum `0x322e22...3c2d4c`; ethereum `0x3eb586...2b640d`; ethereum `0x483715...8640fa`; ethereum `0x4dab1b...b9c45e`; ethereum `0x598032...2ec9f0`; ethereum `0x73f5e5...ec465e`; ethereum `0x7cb203...1ca356`; ethereum `0x7ded1b...890e95`; ethereum `0x8acdb3...376fe8`; ethereum `0x8b1af1...7521e5`; ethereum `0x8ba0ef...b9761b`; ethereum `0x907083...3eabd9`; ethereum `0x94bc2a...08734f`; ethereum `0x950a94...0e9257`; ethereum `0x98484d...f00ae6`; ethereum `0xa21854...a82155`; ethereum `0xa355b4...fbc51b`; ethereum `0xa83fce...9339e8`; ethereum `0xafea56...5e500d`; ethereum `0xb54fc9...ed3ce7`; ethereum `0xc1e160...ac6df5`; ethereum `0xc7c42e...01d388`; ethereum `0xc84dcd...23f6eb`; ethereum `0xca6e3e...69f2a7`; ethereum `0xd7012c...5a3f52`; ethereum `0xd79360...108480`; ethereum `0xe0c701...a3596e`; ethereum `0xe22f6a...99703e`; ethereum `0xe49055...0d9583`; ethereum `0xe65184...64a240`; ethereum `0xeb7dbc...21eacd`; ethereum `0xfbd61b...c2c550` | ✅ Audited |
| FixedRateSwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x27fe0f...8e64f3`](./contracts/ethereum-1/0x27fe0f25acabd7b4c8c28561059c8bfceb8e64f3/); ethereum `0x40bbde...4b0bb4`; ethereum `0x92b384...9ddcd1` | ✅ Audited |
| GovernanceMothership | unknown | ethereum | n/a | [`0xa0446d...42caba`](./contracts/ethereum-1/0xa0446d8804611944f1b527ecd37d7dcbe442caba/) | ✅ Audited |
| GovernanceRewards | unknown | ethereum | n/a | [`0x0f85a9...54b594`](./contracts/ethereum-1/0x0f85a912448279111694f4ba4f85dc641c54b594/) | ✅ Audited |
| LimitOrderProtocol | unknown | bsc | n/a | 4 deployments: ethereum `0x119c71...2d2828`; ethereum `0x3ef517...ffe782`; ethereum `0xf667e1...3221a2`; bsc [`0x0da1b3...5437e6`](./contracts/bsc-56/0x0da1b305d7101359434d71eceaab71e1ff5437e6/) | ✅ Audited |
| MooniswapFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0xbaf9a5...3a9643`](./contracts/ethereum-1/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643/); ethereum `0xc4a8b7...5a148d`; ethereum `0xe1b8ff...dc04d3`; bsc `0xd41b24...83cd64` | ✅ Audited |
| OneInch | unknown | ethereum | n/a | 2 deployments: ethereum [`0x111111...20c302`](./contracts/ethereum-1/0x111111111117dc0aa78b770fa6a738034120c302/); bsc [`0x111111...20c302`](./contracts/bsc-56/0x111111111117dc0aa78b770fa6a738034120c302/) | ✅ Audited |
| PowerPod | unknown | ethereum | n/a | 6 deployments: ethereum [`0x806d90...7129e8`](./contracts/ethereum-1/0x806d9073136c8a4a3fd21e0e708a9e17c87129e8/); ethereum `0x8dd297...3d1b9c`; ethereum `0xaccfac...b4f947`; ethereum `0xad9aeb...7792e3`; ethereum `0xdaf782...08fde9`; ethereum `0xeee4b3...448741` | ✅ Audited |
| Settlement | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0634db...eb01a3`](./contracts/ethereum-1/0x0634db834043922d8907edbf588aa57e42eb01a3/); ethereum `0x2ad500...b51ef5`; ethereum `0x5e918e...a2e335`; ethereum `0x62c142...96e69c`; ethereum `0x8273f3...a25d9c`; ethereum `0xa515e1...f4cc0f`; ethereum `0xa88800...b47647`; ethereum `0xac3225...715fdb`; ethereum `0xf4f4d1...2364bf`; bsc `0x1d0ae3...c7ac63`; bsc `0xadc1eb...be3648` | ✅ Audited |
| St1inch | unknown | ethereum | n/a | 3 deployments: ethereum [`0x03e93b...342241`](./contracts/ethereum-1/0x03e93bea40b2f7e25a1b3709822744a932342241/); ethereum `0x0fd0c5...62bcf1`; ethereum `0x9a0c8f...7501d7` | ✅ Audited |
| StakingFarmingPod | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a87c0...0260be`](./contracts/ethereum-1/0x1a87c0f9cca2f0926a155640e8958a8a6b0260be/); ethereum `0x83c156...2ef27a` | ✅ Audited |
| StepVesting | operational_periphery | ethereum | n/a | 376 deployments: ethereum [`0x003ea5...b05f30`](./contracts/ethereum-1/0x003ea55ef6fb46de28fe05ae695042f103b05f30/); ethereum `0x009f54...1fe49a`; ethereum `0x0127d6...b09548`; ethereum `0x01e4b3...486846`; ethereum `0x035a2b...cdef14`; ethereum `0x06af18...718da7`; ethereum `0x06c49c...b3f391`; ethereum `0x07eb0d...1320b4`; ethereum `0x0820e5...5acd42`; ethereum `0x0880a0...b3ea1a`; ethereum `0x088763...9df908`; ethereum `0x091ab6...268f72`; ethereum `0x09a8e8...a697a1`; ethereum `0x0a0747...3fbc45`; ethereum `0x0a47c9...a1b52e`; ethereum `0x0a5fa4...3e2f6a`; ethereum `0x0a678d...5ff4b0`; ethereum `0x0ac6ff...a013ab`; ethereum `0x0c0538...86e55d`; ethereum `0x0da1fc...d139c0`; ethereum `0x0ec26f...c08dae`; ethereum `0x0f66df...3b366e`; ethereum `0x103bf8...3a31d6`; ethereum `0x116f04...578ef5`; ethereum `0x1217f2...1d4cc8`; ethereum `0x12a02b...f3acc8`; ethereum `0x135c8c...a24a93`; ethereum `0x13a283...50f8b2`; ethereum `0x13bed7...13165d`; ethereum `0x13f25f...b75714`; ethereum `0x13fb4f...005cdb`; ethereum `0x15daa6...2ec8d2`; ethereum `0x1632af...15d3c1`; ethereum `0x16be52...f0574d`; ethereum `0x1707e0...6ed297`; ethereum `0x177f86...3720ef`; ethereum `0x17d112...bb4146`; ethereum `0x1816cd...a17cb4`; ethereum `0x196937...5b2551`; ethereum `0x1b548b...c34bec`; ethereum `0x1c2947...bf9468`; ethereum `0x1c30bc...987905`; ethereum `0x1d4805...7edd9a`; ethereum `0x1dd6cb...b433e9`; ethereum `0x1e00e6...a36753`; ethereum `0x1e2064...696b8a`; ethereum `0x1f83c3...477354`; ethereum `0x1fb2f2...57a4b4`; ethereum `0x2013e6...e9e4a8`; ethereum `0x204165...9cbea9`; ethereum `0x2046ab...fc274c`; ethereum `0x20fd6f...3495d9`; ethereum `0x211ba5...277837`; ethereum `0x215603...a7b0e8`; ethereum `0x218d06...60c31e`; ethereum `0x21c69f...cc0493`; ethereum `0x24029d...d5f796`; ethereum `0x24a262...475b27`; ethereum `0x24cb49...57ca5f`; ethereum `0x24e9de...6ad3b0`; ethereum `0x25149f...fc3f8e`; ethereum `0x25ea4b...7f5787`; ethereum `0x261ec1...118a75`; ethereum `0x26a34f...fcc2c5`; ethereum `0x271136...48e329`; ethereum `0x27669f...d6125d`; ethereum `0x27e999...71eac5`; ethereum `0x2872aa...57829d`; ethereum `0x293c22...01b086`; ethereum `0x29c679...f9b1ea`; ethereum `0x2a2028...1cb1d1`; ethereum `0x2ad08a...d922ee`; ethereum `0x2be171...680129`; ethereum `0x2c6358...70df71`; ethereum `0x2da3ad...e75cb9`; ethereum `0x2e03e4...5c7b34`; ethereum `0x2e25be...cd3d1d`; ethereum `0x2ea4b8...cfcb21`; ethereum `0x2ef848...a1a2fb`; ethereum `0x2f273d...572111`; ethereum `0x2f5cb4...09b757`; ethereum `0x2fae47...48de1b`; ethereum `0x2fb07f...c8baf4`; ethereum `0x2fde74...e3ffc9`; ethereum `0x2ff244...f72bc7`; ethereum `0x3053c0...027b19`; ethereum `0x30d7a5...637797`; ethereum `0x31d2bc...00607d`; ethereum `0x321c03...efc386`; ethereum `0x32757d...e63a45`; ethereum `0x330410...826d24`; ethereum `0x33a2d5...6ffbe1`; ethereum `0x34dd2b...5a4d14`; ethereum `0x35a88e...744c7b`; ethereum `0x35d668...391a6b`; ethereum `0x36179c...247780`; ethereum `0x3755f2...86356d`; ethereum `0x375640...a4ddb1`; ethereum `0x38240b...0ccb7a`; ethereum `0x38ff58...2e0823`; ethereum `0x3a3f0c...3c1063`; ethereum `0x3c081d...73bf1f`; ethereum `0x3c98cd...4d8b1b`; ethereum `0x3eea61...ccff19`; ethereum `0x401d20...fe76b6`; ethereum `0x40bfc3...d5742b`; ethereum `0x42324a...6bfd75`; ethereum `0x4314db...c68045`; ethereum `0x434f5a...0a00fa`; ethereum `0x445b5f...ff27f4`; ethereum `0x449f03...ceeb96`; ethereum `0x451ab1...ea4775`; ethereum `0x455525...62b457`; ethereum `0x46f6bb...e38714`; ethereum `0x4826e0...768469`; ethereum `0x482897...58255c`; ethereum `0x494e56...1b9e6b`; ethereum `0x49ddd2...091659`; ethereum `0x4a2d44...3da304`; ethereum `0x4a35e5...bc9b6b`; ethereum `0x4cd383...4cd502`; ethereum `0x4d6692...c62194`; ethereum `0x4d8c1e...0c3845`; ethereum `0x4eea9f...7bd7b1`; ethereum `0x4fd984...28c411`; ethereum `0x500ee3...479860`; ethereum `0x5012a4...fb3326`; ethereum `0x502fd7...98a0fd`; ethereum `0x50980e...88e958`; ethereum `0x51e053...4f9040`; ethereum `0x51f9a1...bf1a65`; ethereum `0x532f1b...a706f9`; ethereum `0x5393a1...d6de9d`; ethereum `0x53aca5...96eedd`; ethereum `0x54534c...110475`; ethereum `0x54620d...259ea0`; ethereum `0x55d311...ad2b50`; ethereum `0x56217d...0598d7`; ethereum `0x572a53...987980`; ethereum `0x576181...7cbc4f`; ethereum `0x578813...83f9bb`; ethereum `0x5816a3...88fc2c`; ethereum `0x58f858...32d39a`; ethereum `0x5928b7...11c61c`; ethereum `0x59d8e2...0296d5`; ethereum `0x5a214a...4867f3`; ethereum `0x5a8fa0...ede4c6`; ethereum `0x5ce16e...8cb91d`; ethereum `0x5ce550...dbd96f`; ethereum `0x5dadbd...1e46dd`; ethereum `0x5f08b2...133236`; ethereum `0x5f30da...d814d2`; ethereum `0x5fcfcb...a414f6`; ethereum `0x6140ae...f73358`; ethereum `0x63b7c4...8f6214`; ethereum `0x650589...b75e6a`; ethereum `0x651cdc...921c93`; ethereum `0x6717f2...2e4fc5`; ethereum `0x67624c...7cb3c5`; ethereum `0x694d50...5a52f8`; ethereum `0x69804f...f33c13`; ethereum `0x698d3d...a8f994`; ethereum `0x6b3c64...419e5d`; ethereum `0x6b4a1d...6f9920`; ethereum `0x6c8caf...ebd816`; ethereum `0x6cb472...d1116d`; ethereum `0x6da358...2d910d`; ethereum `0x6dc428...3800ba`; ethereum `0x6e8d01...77442f`; ethereum `0x70888b...e096b9`; ethereum `0x70b341...fb5dc9`; ethereum `0x72d0a7...3ac230`; ethereum `0x732c8d...a90e61`; ethereum `0x73a30f...e19ab7`; ethereum `0x73a81b...f052bf`; ethereum `0x76b8b5...665312`; ethereum `0x783082...095e18`; ethereum `0x785cf0...fa317f`; ethereum `0x78c425...a6933a`; ethereum `0x794bd4...81079b`; ethereum `0x794c47...c9ab7e`; ethereum `0x798da0...cf320d`; ethereum `0x79febd...460f81`; ethereum `0x7af3c6...276562`; ethereum `0x7c9662...b8926a`; ethereum `0x7cf86c...2efbe6`; ethereum `0x7df428...ab18b8`; ethereum `0x7dfdbb...e5793b`; ethereum `0x7e7300...a3b02f`; ethereum `0x7e979e...d4e40b`; ethereum `0x7ebe87...8f1a6a`; ethereum `0x7f0772...33c02f`; ethereum `0x811e1f...8c9349`; ethereum `0x819071...787ab4`; ethereum `0x8598f5...ebaebc`; ethereum `0x873ef5...1f7263`; ethereum `0x873ff4...8c3162`; ethereum `0x8a410a...d9c0c8`; ethereum `0x8a7f32...07fa7e`; ethereum `0x8a8fb1...734a38`; ethereum `0x8aebe3...765412`; ethereum `0x8b5995...ebff61`; ethereum `0x8b90f6...e56ee3`; ethereum `0x8bf0b1...b9246a`; ethereum `0x8d877f...95a07d`; ethereum `0x8de929...731b95`; ethereum `0x8e0c26...952ad5`; ethereum `0x8e12c2...43ea79`; ethereum `0x8ee131...b49e43`; ethereum `0x8f1b1d...055462`; ethereum `0x92a77c...57d1e8`; ethereum `0x92fb71...09e6f7`; ethereum `0x942488...4b0f07`; ethereum `0x943988...864047`; ethereum `0x94b14c...509409`; ethereum `0x956258...3d0df4`; ethereum `0x95b12e...3a0006`; ethereum `0x95e4ea...0d670b`; ethereum `0x960bbe...dee8fd`; ethereum `0x97cdd3...2730a6`; ethereum `0x980f36...d29170`; ethereum `0x9851bf...f59844`; ethereum `0x99398c...1809d1`; ethereum `0x99c32e...f24beb`; ethereum `0x99ffa8...2df71b`; ethereum `0x9a24b6...8963a8`; ethereum `0x9af2f9...e2f46d`; ethereum `0x9b8fc2...52ccd6`; ethereum `0x9c5972...277213`; ethereum `0x9cbe10...b2f36b`; ethereum `0x9e0caa...eb5037`; ethereum `0x9f3c7b...4d10de`; ethereum `0x9fc80e...a3990e`; ethereum `0xa0daab...b3ef98`; ethereum `0xa1ac92...f69b36`; ethereum `0xa26175...d89cf6`; ethereum `0xa2ffae...05ad60`; ethereum `0xa349c7...e3d633`; ethereum `0xa3ca7c...b10f48`; ethereum `0xa52e8d...bff921`; ethereum `0xa65b82...4d45f8`; ethereum `0xa76a1a...5ef276`; ethereum `0xa77996...ec8ee2`; ethereum `0xa88643...5052eb`; ethereum `0xa8ccf2...c1c262`; ethereum `0xa8e7fc...293d10`; ethereum `0xa9d306...37795f`; ethereum `0xadf94f...e9afcc`; ethereum `0xae31b2...907dd5`; ethereum `0xaec4ab...3f94ac`; ethereum `0xaf0647...b3e65e`; ethereum `0xb0cdb9...9504d4`; ethereum `0xb0fde6...a99992`; ethereum `0xb1a2e8...b50874`; ethereum `0xb1b8b6...92e65d`; ethereum `0xb35ce5...f271d9`; ethereum `0xb39f50...e1589d`; ethereum `0xb4e4d7...27c005`; ethereum `0xb5ecaf...5f1dc9`; ethereum `0xb7286a...37536e`; ethereum `0xb83159...f52911`; ethereum `0xb93217...fb5faf`; ethereum `0xba7d79...588801`; ethereum `0xbc15e3...b31e09`; ethereum `0xbd3170...74016a`; ethereum `0xbda870...7ec74d`; ethereum `0xbddf91...4522d7`; ethereum `0xbecf1d...4ab955`; ethereum `0xbfa13e...edd787`; ethereum `0xbffb77...4b7a02`; ethereum `0xc01cf0...40ff8a`; ethereum `0xc061df...87513f`; ethereum `0xc0dfbe...2bdf1e`; ethereum `0xc1cb96...1322f3`; ethereum `0xc2175a...e415c4`; ethereum `0xc25b56...ccf120`; ethereum `0xc3016c...4bc6fc`; ethereum `0xc30685...8108f1`; ethereum `0xc41494...a56908`; ethereum `0xc425fd...41a209`; ethereum `0xc50fa5...2f628b`; ethereum `0xc554d4...9d2f6d`; ethereum `0xc5ea79...9c9f8d`; ethereum `0xc6b0fc...2628f3`; ethereum `0xc7650a...5674dc`; ethereum `0xc7818a...cabfa3`; ethereum `0xc7dfab...4dae12`; ethereum `0xc87065...4ca442`; ethereum `0xc8b514...74d389`; ethereum `0xc8e0bb...5b8cea`; ethereum `0xc98f4f...143abc`; ethereum `0xca64b6...fe894d`; ethereum `0xca98a0...80a77f`; ethereum `0xcaac73...c2b618`; ethereum `0xcad8f8...5755a6`; ethereum `0xcb945a...2348f7`; ethereum `0xcbc7af...20aa86`; ethereum `0xcc4122...f172ce`; ethereum `0xcc6a49...8d1b16`; ethereum `0xcca41c...bc94ef`; ethereum `0xcd4384...a99ad4`; ethereum `0xcdb884...d5aeb1`; ethereum `0xce08f8...030f59`; ethereum `0xce283d...badfcd`; ethereum `0xce4259...b7316c`; ethereum `0xce5f7e...fd7ce5`; ethereum `0xcfe117...0f875b`; ethereum `0xd18231...65c256`; ethereum `0xd21816...096985`; ethereum `0xd239ab...5ab0a0`; ethereum `0xd24536...2d5388`; ethereum `0xd2f29d...8c9d65`; ethereum `0xd37fe3...4aa416`; ethereum `0xd44293...2bf202`; ethereum `0xd47c24...866c9a`; ethereum `0xd4a6c7...75b7dd`; ethereum `0xd54706...356f60`; ethereum `0xd5c9b6...ed8b65`; ethereum `0xd619ec...e9f061`; ethereum `0xd631b1...fca5e0`; ethereum `0xd67832...e27075`; ethereum `0xd7fa3b...d6152e`; ethereum `0xd9b311...0f0704`; ethereum `0xda5cc7...2559a4`; ethereum `0xdb662a...9801d2`; ethereum `0xdc4fa1...93e592`; ethereum `0xdcdd91...f11988`; ethereum `0xdd1a6c...6b15a9`; ethereum `0xddad32...5df122`; ethereum `0xdde836...c3a3b5`; ethereum `0xddf6b6...97ad0b`; ethereum `0xde65b0...bc6b37`; ethereum `0xdeff4c...f734cf`; ethereum `0xe09634...2dd2b7`; ethereum `0xe15e24...70bf94`; ethereum `0xe17440...ff7607`; ethereum `0xe2bb28...39044c`; ethereum `0xe44c9a...13071c`; ethereum `0xe4cc35...164dd1`; ethereum `0xe523d0...f7f1f6`; ethereum `0xe75825...a87e45`; ethereum `0xe88b88...4495f2`; ethereum `0xeab3fa...855ed1`; ethereum `0xeb39e1...3580b6`; ethereum `0xec0043...f2108e`; ethereum `0xededb5...dc52f3`; ethereum `0xeeb100...111f71`; ethereum `0xeeef4f...a05413`; ethereum `0xef1c0d...0cd49e`; ethereum `0xf06e83...b939f4`; ethereum `0xf11741...b5545f`; ethereum `0xf24cba...a9e691`; ethereum `0xf3f04d...3635c0`; ethereum `0xf493cd...cf4c45`; ethereum `0xf51e64...ad4fa5`; ethereum `0xf55f2e...01bd68`; ethereum `0xf56af2...496c78`; ethereum `0xf7884a...50498e`; ethereum `0xf808a9...073f7e`; ethereum `0xf8b4a0...5f457d`; ethereum `0xf8d4ab...f5d859`; ethereum `0xf90e15...ed5325`; ethereum `0xf96aae...38845b`; ethereum `0xf9bc6b...72b03a`; ethereum `0xfa2175...dea27b`; ethereum `0xfa80f7...54cad7`; ethereum `0xfaa029...a78647`; ethereum `0xfbe5e6...a29e99`; ethereum `0xfca5cc...b07d48`; ethereum `0xfcd6fc...7cc870`; ethereum `0xfe149f...40a2fc`; ethereum `0xfe15be...f99da2`; ethereum `0xfed072...8b775c`; ethereum `0xff55aa...a30896`; ethereum `0xffb603...2e1e43`; ethereum `0xffd683...006b71` | ✅ Audited |
| WethUnwrapper | unknown | ethereum | n/a | 6 deployments: ethereum [`0x08b067...628b06`](./contracts/ethereum-1/0x08b067ad41e45babe5bbb52fc2fe7f692f628b06/); ethereum `0x1282d0...82437b`; ethereum `0x21f818...e9418f`; ethereum `0x8290db...d6605e`; ethereum `0xa18651...1866dc`; bsc `0x0eee00...63e7e4` | ✅ Audited |
| WhitelistRegistry | unknown | ethereum | n/a | 7 deployments: ethereum [`0x105bc5...e53aa7`](./contracts/ethereum-1/0x105bc5c5cdd224f48be9d279dd114f0a3fe53aa7/); ethereum `0x8797c2...9efad5`; ethereum `0xa49ecb...461a0b`; ethereum `0xbcf2e5...21fbcb`; ethereum `0xcb8308...e5cc77`; ethereum `0xd64134...5093b0`; ethereum `0xf55684...e45e26` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x53f2ea...c7a793`](./contracts/ethereum-1/0x53f2eab746305b1f500f783abefa5954b2c7a793/); ethereum `0xcd62b1...80b184`; ethereum `0xf60e55...ceab44` | ⚠️ Unaudited |
| HolyToken | token | ethereum | n/a | [`0x39eae9...1a6e09`](./contracts/ethereum-1/0x39eae99e685906ff1c11a962a743440d0a1a6e09/) | ⚠️ Unaudited |
| HolyPoolV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1e7062...efdb58`](./contracts/ethereum-1/0x1e7062f6458d67e74f84c37c189ab3e69eefdb58/); ethereum `0xaf9854...523719` | ⚠️ Unaudited |
| MoverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3fa729...d5324c`](./contracts/ethereum-1/0x3fa729b4548becbad4eab6ef18413470e6d5324c/); ethereum `0xb05e8d...2203a5` | ⚠️ Unaudited |
| HolyValorYearnUSDCVaultV2 | core_logic | ethereum | n/a | [`0xfa9ba2...184e61`](./contracts/ethereum-1/0xfa9ba210f70987477f4d65639ebd194dc1184e61/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1fac81...b8e755`](./contracts/ethereum-1/0x1fac81af4dde6276e5e3283ff2b0bd9970b8e755/); ethereum `0x6ad299...1c48b4`; ethereum `0xbb2390...b123ad` | ⚠️ Unaudited |
| CrosschainWhitelistRegistry | registry | ethereum | n/a | [`0xbe8934...1b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb68655...2d9548`](./contracts/ethereum-1/0xb686559bb45fcdb1f370836066ef9e9b4c2d9548/); ethereum `0xee262a...4dafaf` | ⚠️ Unaudited |
| DAPFToken | token | ethereum | n/a | [`0xbb9284...8ea677`](./contracts/ethereum-1/0xbb9284484cb9a2bc7950a1276edba2f6358ea677/) | ⚠️ Unaudited |
| Dice | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa60184...080456`](./contracts/ethereum-1/0xa60184b67a665ede46774b5fee0acdf115080456/); ethereum `0xb75ace...99edd2` | ⚠️ Unaudited |
| EvmHelpers | unknown | ethereum | n/a | [`0x77340c...d5f91c`](./contracts/ethereum-1/0x77340c866ef1da13407d61120010f136fad5f91c/) | ⚠️ Unaudited |
| ExchangeGovernance | unknown | ethereum | n/a | 5 deployments: ethereum [`0x32d12a...fc9df8`](./contracts/ethereum-1/0x32d12a25f539e341089050e2d26794f041fc9df8/); ethereum `0x544319...46690f`; ethereum `0xb2b418...f9c7d9`; ethereum `0xb33839...4d110d`; ethereum `0xd5c5c4...2c93ef` | ⚠️ Unaudited |
| FarmingVoter | unknown | ethereum | n/a | [`0x11a550...6b09dc`](./contracts/ethereum-1/0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc/) | ⚠️ Unaudited |
| FeeCollector | unknown | ethereum | n/a | [`0x2359ab...e58dda`](./contracts/ethereum-1/0x2359ab45ac9c5b575152be21a19c33c138e58dda/) | ⚠️ Unaudited |
| FeeTaker | unknown | ethereum | n/a | [`0x1c30a1...8ee401`](./contracts/ethereum-1/0x1c30a1aeeafab7f5edb1a09a7a4a0b8bed8ee401/) | ⚠️ Unaudited |
| FixedFeeSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0115d0...814043`](./contracts/ethereum-1/0x0115d08f81a7b5f70316e0a85f776c43c5814043/); ethereum `0xc61f21...300637` | ⚠️ Unaudited |
| FulcrumWrapper | unknown | ethereum | n/a | [`0xf971ff...a9073c`](./contracts/ethereum-1/0xf971ff7838ae0c9316289f0e1aab69218ea9073c/) | ⚠️ Unaudited |
| FulcrumWrapperLegacy | unknown | ethereum | n/a | [`0x5335e0...def60c`](./contracts/ethereum-1/0x5335e083867fa58c70bc43b1498d80575fdef60c/) | ⚠️ Unaudited |
| GovernanceFeeReceiver | unknown | ethereum | n/a | [`0x4dfa40...609af4`](./contracts/ethereum-1/0x4dfa40fdaa7694676899f8887a45603922609af4/) | ⚠️ Unaudited |
| HolyHandV7 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ef7a5...7fda0e`](./contracts/ethereum-1/0x1ef7a557cfa8436ee08790e3f2b190b8937fda0e/); ethereum `0xd33d88...e1e1f3` | ⚠️ Unaudited |
| HolyPassageV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39ac24...8ff5b3`](./contracts/ethereum-1/0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3/); ethereum `0xc09d9d...bde363` | ⚠️ Unaudited |
| HolyRedeemer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2576c0...da361a`](./contracts/ethereum-1/0x2576c08de9a369491d148f82356c5b1431da361a/); ethereum `0x496599...25c6dd` | ⚠️ Unaudited |
| HolyVisorV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c946c...627697`](./contracts/ethereum-1/0x0c946caa389b7325141c035d71c667d4f9627697/); ethereum `0x636356...5cda6c` | ⚠️ Unaudited |
| HolyWingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9b986b...b8ace1`](./contracts/ethereum-1/0x9b986b20243b62628f7b47a2dea602c29eb8ace1/); ethereum `0xd5b323...50427b` | ⚠️ Unaudited |
| HumanitarianAidNFT | token | ethereum | n/a | 2 deployments: ethereum [`0xdb33de...ef0911`](./contracts/ethereum-1/0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911/); ethereum `0xebfb3b...f41d8b` | ⚠️ Unaudited |
| KyberDmmOracle | unknown | ethereum | n/a | [`0xf74d3a...06f101`](./contracts/ethereum-1/0xf74d3a34655954f0264b068250009aee1f06f101/) | ⚠️ Unaudited |
| LeftoverExchanger | unknown | ethereum | n/a | 4 deployments: ethereum [`0x18763f...5fc778`](./contracts/ethereum-1/0x18763f195f35078cc662b2c26b97bb1a015fc778/); ethereum `0x285e33...4105e3`; ethereum `0x89125b...f8af3f`; ethereum `0xe9f142...781b58` | ⚠️ Unaudited |
| LimitOrderProtocolPro | unknown | ethereum | n/a | [`0x5349df...3346de`](./contracts/ethereum-1/0x5349df28f8353dc8049edf11faae2d3f3b3346de/) | ⚠️ Unaudited |
| Maverick2TickHelper | unknown | ethereum | n/a | [`0x1666ef...11dcd4`](./contracts/ethereum-1/0x1666ef2e729dab497a6798a4221d0e041111dcd4/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x4ee7c0...92d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/); ethereum `0x97e40d...b8ab62`; ethereum `0xb5256c...5448c3`; ethereum `0xe295ad...088afe` | ⚠️ Unaudited |
| MerkleDrop128 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x518ddb...54c043`](./contracts/ethereum-1/0x518ddbc6cabe97053b69199185c88754b654c043/); ethereum `0x9ce614...e1b35d` | ⚠️ Unaudited |
| Mooniswap | unknown | ethereum | n/a | [`0x59a0a6...063ade`](./contracts/ethereum-1/0x59a0a6d73e6a5224871f45e6d845ce1574063ade/) | ⚠️ Unaudited |
| MooniswapDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa31bb3...b3b28e`](./contracts/ethereum-1/0xa31bb36c5164b165f9c36955ea4ccbab42b3b28e/); ethereum `0xcb06df...da85b1` | ⚠️ Unaudited |
| MooniswapOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1488a1...fec25e`](./contracts/ethereum-1/0x1488a117641ed5d2d29ab3ed2397963fdefec25e/); ethereum `0x1ad5ed...b94097`; ethereum `0x30829f...41be1d` | ⚠️ Unaudited |
| MoverNFT1v2 | token | ethereum | n/a | 2 deployments: ethereum [`0x076974...a0aaa1`](./contracts/ethereum-1/0x0769747d4cac06bc2320e0bb1efb31d53fa0aaa1/); ethereum `0xcf55b3...33da71` | ⚠️ Unaudited |
| MoverNFTSWS | token | ethereum | n/a | 2 deployments: ethereum [`0x129b90...c73701`](./contracts/ethereum-1/0x129b9083a9f02aed65e31644a8103d5aa2c73701/); ethereum `0xc649a0...827534` | ⚠️ Unaudited |
| MoverOlympusNFT | token | ethereum | n/a | 2 deployments: ethereum [`0x2733a7...f67f22`](./contracts/ethereum-1/0x2733a766d2d79d26b2d23343db5bf38290f67f22/); ethereum `0x76dc7e...aaa409` | ⚠️ Unaudited |
| MoverUBTStakeNodeV2 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3f1256...26fb49`](./contracts/ethereum-1/0x3f1256afbfae473f17f07c17b1ec0c9f0326fb49/); ethereum `0x4690d1...4dad73`; ethereum `0x67686e...66cace`; ethereum `0x88e7e1...5f1ee8`; ethereum `0xb494c1...410450`; ethereum `0xd39f52...e77b88`; ethereum `0xd5f911...991526` | ⚠️ Unaudited |
| MoverUBTStakePoolV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1f15f2...dfeaff`](./contracts/ethereum-1/0x1f15f293c1cd3d05d58d3edeaf0c72c5a2dfeaff/); ethereum `0x61b3bb...4f183f` | ⚠️ Unaudited |
| MoverValorYearnUSDCv2VaultV2 | core_logic | ethereum | n/a | [`0x541d78...9a18db`](./contracts/ethereum-1/0x541d78076352a884c8358a2ac3f36408b99a18db/) | ⚠️ Unaudited |
| MultiWrapper | unknown | ethereum | n/a | [`0x931e32...0fe18c`](./contracts/ethereum-1/0x931e32b6d112f7be74b16f7fbc77d491b30fe18c/) | ⚠️ Unaudited |
| OffchainOracle | unknown | ethereum | n/a | 5 deployments: ethereum [`0x07d91f...6893bb`](./contracts/ethereum-1/0x07d91f5fb9bf7798734c3f606db065549f6893bb/); ethereum `0x080ab7...9b24d0`; ethereum `0x6d68d9...b831f1`; ethereum `0xcfd674...afded1`; ethereum `0xe3c6b9...829aa8` | ⚠️ Unaudited |
| PriorityFeeLimiter | unknown | ethereum | n/a | [`0x5e92d4...c7c912`](./contracts/ethereum-1/0x5e92d4021e49f9a2967b4ea1d20213b3a1c7c912/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 4 deployments: ethereum [`0x0f7615...360fff`](./contracts/ethereum-1/0x0f7615375e3671de18ca653a5a7f332c50360fff/); ethereum `0x9d2efa...c03466`; ethereum `0x9fc17a...87e532`; ethereum `0xca3391...fa5cce` | ⚠️ Unaudited |
| ReferralFeeReceiver | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1cc617...d91b9d`](./contracts/ethereum-1/0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d/); ethereum `0x2eea44...301e40`; ethereum `0x735247...31295f`; ethereum `0xf5ab9b...0bb538` | ⚠️ Unaudited |
| ResolverMetadata | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2031a8...2792fd`](./contracts/ethereum-1/0x2031a8f571ac808da3117462fc32cd933f2792fd/); ethereum `0x755585...85610e`; ethereum `0x9c6883...49e15d`; ethereum `0xa18d49...bf2097`; ethereum `0xbf4543...90a58a`; ethereum `0xf18293...a1434f` | ⚠️ Unaudited |
| SeriesNonceManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2dadf9...df01aa`](./contracts/ethereum-1/0x2dadf9264db7eb9e24470a2e6c73efbc4bdf01aa/); ethereum `0x303389...b28e10` | ⚠️ Unaudited |
| SignatureMerkleDrop128 | unknown | ethereum | n/a | 13 deployments: ethereum [`0x153818...aaf79e`](./contracts/ethereum-1/0x153818040e114e0775e14c9029619d765aaaf79e/); ethereum `0x25ac81...4c2c77`; ethereum `0x64c671...df2680`; ethereum `0x6b7c8e...cdb261`; ethereum `0x7749eb...21cbe1`; ethereum `0x9bd9e0...5bdb69`; ethereum `0xa1df96...f91107`; ethereum `0xa2286c...ecfec6`; ethereum `0xc5a113...e42311`; ethereum `0xc890d5...71555a`; ethereum `0xe02469...26638f`; ethereum `0xe45007...a550cf`; ethereum `0xecd2f9...b212f9` | ⚠️ Unaudited |
| SmartTreasuryFragmentPWC | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa8afb8...9a2e68`](./contracts/ethereum-1/0xa8afb8272434f76f9cd0fd483f15c69aaf9a2e68/); ethereum `0xf5d7bd...de157d` | ⚠️ Unaudited |
| SmartTreasuryV4 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x47795a...c28315`](./contracts/ethereum-1/0x47795ab886f53719e38780cedf40083aaec28315/); ethereum `0x94f748...4c960f` | ⚠️ Unaudited |
| St1inchPreview | unknown | ethereum | n/a | 3 deployments: ethereum [`0x069f63...5a7f83`](./contracts/ethereum-1/0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83/); ethereum `0x45c2a2...8d09a4`; ethereum `0x722e14...446905` | ⚠️ Unaudited |
| SynthetixOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19c23a...153a8a`](./contracts/ethereum-1/0x19c23a427d382769040e402ff6d3a48240153a8a/); ethereum `0x4d4872...0be63d` | ⚠️ Unaudited |
| TORN | unknown | ethereum | n/a | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0b7438...9689e3`](./contracts/ethereum-1/0x0b7438606a13f4e91305b36b7596dda4679689e3/); ethereum `0x96aa3b...3e815a` | ⚠️ Unaudited |
| VestedToken | unknown | ethereum | n/a | [`0x03d1b1...6a16d2`](./contracts/ethereum-1/0x03d1b1a56708fa298198dd5e23651a29b76a16d2/) | ⚠️ Unaudited |
| VestedVotingPower | unknown | ethereum | n/a | 3 deployments: ethereum [`0x19bcba...a041e3`](./contracts/ethereum-1/0x19bcba90d1160b99b8c11eb44f276505bfa041e3/); ethereum `0xba978b...ae02b3`; ethereum `0xfb7246...c4677c` | ⚠️ Unaudited |
| VestingValidator | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0df9a5...a6f942`](./contracts/ethereum-1/0x0df9a5fe824d1d52caadd2b7edb2859e24a6f942/); ethereum `0x4275ca...229986`; ethereum `0x439130...8c86a1`; ethereum `0xfe9dcc...295b17` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xf81c77...ceee88`](./contracts/ethereum-1/0xf81c77c2d5d7ef6a5e4637f228efea89f7ceee88/) | ⚠️ Unaudited |
| WhitelistChecker | unknown | ethereum | n/a | 3 deployments: ethereum [`0x32921c...16e4ef`](./contracts/ethereum-1/0x32921cc86e9768a946c79b3879c2d6aec016e4ef/); ethereum `0x40a04c...b19367`; ethereum `0x9a1cb3...3c93d6` | ⚠️ Unaudited |
| WhitelistHelper | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1ad2ae...6d3963`](./contracts/ethereum-1/0x1ad2aef39a9036147aee2a8edd5c5092466d3963/); ethereum `0x441619...4a5c54`; ethereum `0x8c3e43...26a2fa`; ethereum `0xb61c79...79c96d`; ethereum `0xf6b000...ae4a93`; ethereum `0xf779bd...65642d` | ⚠️ Unaudited |
| WhitelistRegistrySimple | unknown | ethereum | n/a | 3 deployments: ethereum [`0x52096d...50eebd`](./contracts/ethereum-1/0x52096d540719a8577fe634624f50badea050eebd/); ethereum `0xac8d32...ce4f35`; ethereum `0xfc0e24...aba83b` | ⚠️ Unaudited |
| Yobitcoin | unknown | ethereum | n/a | [`0x9dcae4...8e96ac`](./contracts/ethereum-1/0x9dcae4a9e65bf7925eb7809142f848d3cf8e96ac/) | ⚠️ Unaudited |
| YVaultWrapper | unknown | ethereum | n/a | [`0x9ff110...c6eaf8`](./contracts/ethereum-1/0x9ff110f132d988bfa9bc6a21851da1af3ac6eaf8/) | ⚠️ Unaudited |
| Zedxion | unknown | ethereum | n/a | [`0xfbc4f3...9a9341`](./contracts/ethereum-1/0xfbc4f3f645c4003a2e4f4e9b51077d2daa9a9341/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02f56b...30d265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03d0ab...863151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x047891...7b40ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x063a5d...9cc087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075c42...9fea85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x081d5b...47266c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09483f...c29990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b3f6d...c0dbda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bf16c...bb33c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f4d99...e29e99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1040ad...15e936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1136b2...173ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11cb4a...c42cd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x129925...d217ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12e427...53b678` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x153eff...dd445f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a3c2...3de233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a57d...2a63bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x168d49...656d41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18acf2...25ef6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18bcfc...b50b1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ea2e...e0797b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d68da...4d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ecd10...2ada97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2057cf...e7189a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2086cc...b739f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20d83a...16db4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21c83b...19f6ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2207f0...7ddbf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x220bda...2196d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x228fb0...20f112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22c7e7...25c344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25af92...690756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x272395...5b1fd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x288931...2b9fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29142e...df6f81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x298a51...b807b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a037b...bded55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b6e7f...de076e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c26cc...8f3b74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d96fd...a59a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e5748...4d5f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30dcf9...c97901` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x320868...b7d4f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3451b6...a1e812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35ea38...28ab15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39f2bc...9f76bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a78de...564c72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1705...a978f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3f3c...8c7c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c9696...59fe60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d75b3...b4909b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e430c...158e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7751...59f092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4487cc...a47caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x449c9d...e27c48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aaffc...bdf8e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c5f47...5e8e6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cbb5f...4dc884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d8f74...91533c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4da45f...e32365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e5622...6f6881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x521aba...eabfc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x532224...e63f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54fc51...a3dbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57eaec...c87ba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58730a...7a20cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58e156...913f1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5acc37...2c3e77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5deb3f...b0982f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x609262...233741` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x611207...32538c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62c9c2...45ace9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x673e8e...d3c4a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aa7a8...94d0c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e9746...d4f127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x702fb6...e68d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7122db...fbd0e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x720b9b...5b670e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74f332...b15763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d299...9927c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772418...b14775` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777c7f...9d2fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ff2e...c51045` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x794e56...ef3103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b5396...98a7a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c327e...5a0c04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c6ce2...a33f42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8e61...272331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f22fc...20422b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80833e...2e5e70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84ab1d...2c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84d99a...c4e9b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8607bc...73e186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d674...0f0b17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88e417...87f6eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b1ac2...906a51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4f62...8f7027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x910b9b...f26021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92f3f7...f33588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94a68d...1e6c1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94dadd...b5e36c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989c41...22a00d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9942e9...ac061d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x994380...f55ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99edd1...46f33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad44a...62723d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b934b...797ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cea17...b8f756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2e955...b00261` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa77c88...37bbc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7cd98...3aa308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8418d...698a65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5ad0...3cc222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaffdd3...999d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb712e4...72ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb71cce...45bdba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7b2a7...32393a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8a335...8aae22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae79c...87c8e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd74ec...d36e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf683b...8b525a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc17676...8ae09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1cbfc...a10c76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2c3f8...c5dd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6f9b1...cdddbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb13e9...4f895d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc0333...544d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcccf7d...142c2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd9797...a268fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd01ecc...e8516b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0bae9...8e2866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1821b...2dc76c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6a5ca...132ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6eedc...489495` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7304b...1c187e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7e1c8...9155e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8f177...13c7dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9ac77...ff162b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda63a3...524090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda90ab...f548c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab676...4f6c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb38ae...ef5944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe8fd...cfb727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc9398...7b8be7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd3971...ab0536` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdebf89...1289cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdecf04...276140` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf660a...28d1bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0e294...0054a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe408d8...fd4269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5c375...b124b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe78794...c9507b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe872e6...510fea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93f1a...9786a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea2a75...180fb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec193b...cefb0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee0ea8...910931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3cff...673394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef6fa3...c18d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf021f0...db19e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2445e...c38e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf28b44...cb38be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f400...b1b8a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf313b3...c4ec04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf37b9a...ae24e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4c0b8...5e6049` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4fce3...60a4b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5903b...2a91b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf62678...f6884f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf62bb7...0a5681` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6784f...7cbc8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf67b40...1e8a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8439e...8595a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a152...f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9088d...3fdbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc79e9...529e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd3dfb...540626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4875...38fcb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0822...9baf5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05ad60...bea16f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06cc74...04105f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c10ea...0d84c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dd29a...11168f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e6b88...f0008f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f85a9...54b594` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11523c...9e61cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11dee3...365d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14831f...6e4353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170d2e...49ffa4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18101a...e79e7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b4018...998421` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e8ae0...9b8b9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f667d...5cfdea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x220b71...cbcdc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x230797...a38378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2403f8...36bbb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25b230...086521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26bbe8...2e1279` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dfe49...40329f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ede37...d25de8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3169de...e0be11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x322e22...3c2d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3436fd...2b96b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35df99...725af8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36d912...3b5251` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3790c9...868e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3eb586...2b640d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x403a94...a5cbd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x544319...46690f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56f9c3...f7b2e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d4e66...b83dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fdb07...cbd3e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64768a...c9872d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x672279...94a9ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6df58b...52fb9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ecacd...964331` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78ff2e...c51045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f9e34...91403b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x826802...f6b5e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84ab1d...2c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x851de4...400e76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x864a6a...e1a453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x875773...c5d39e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8789f0...dc86db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x878fd0...cb438b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x888888...65ec11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a75e9...9dca9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x907083...3eabd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x950a94...0e9257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98484d...f00ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c4350...ec0432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0446d...42caba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0f3b1...b5a12d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa31bb3...b3b28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3c7c4...1f019d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa7a9c...0f0a6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab4c21...26f591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab6391...4c041a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab8bdf...9adbb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac383e...3de751` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaea46a...41ad85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaec4a3...7ac68b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafc12b...320baf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb13c19...8c4c27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b418...f9c7d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb37689...72fc52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb482ce...521553` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb63aae...3d10ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaf9a5...3a9643` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0702e...6457b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0e626...60628b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1e160...ac6df5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4368c...7ec6f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc603a0...ba6258` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc66a8b...9f32ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7c42e...01d388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc92452...180d71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd143c...bc28fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9797...a268fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfd674...afded1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0937e...d1491a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd79360...108480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd81214...f9be09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2942b...c84202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe295ad...088afe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3c6b9...829aa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5c375...b124b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe68018...200872` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe796d6...0031cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea7caf...f9d15c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed60f3...5595df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8a152...f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf94feb...314ef3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6fd438...d561ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 1 | medium |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 1 | n/a |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
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
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | 2 | n/a |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 2 | n/a |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 3 | n/a |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | contract_name | 2 | n/a |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | n/a |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | n/a |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 4 | n/a |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 1 | n/a |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [whitepaper-aqua-1.0.pdf](https://github.com/1inch/aqua/blob/main/docs/whitepaper-aqua-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-swap-vm-1.0.pdf](https://github.com/1inch/swap-vm/blob/release%2F1.1/docs/whitepaper-swap-vm-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aqua-dev-preview.pdf](https://github.com/1inch/aqua-app-template/blob/main/docs/aqua-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [swapvm-dev-preview.pdf](https://github.com/1inch/swap-vm-template/blob/main/docs/swapvm-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [help.1inch.com/en/articles/4585088-how-secure-is-1inch](https://help.1inch.com/en/articles/4585088-how-secure-is-1inch) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x39eae9...1a6e09`](./contracts/ethereum-1/0x39eae99e685906ff1c11a962a743440d0a1a6e09/) | HolyToken | token | $272,006.00 | Verified native implementation with $272,006.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7062...efdb58`](./contracts/ethereum-1/0x1e7062f6458d67e74f84c37c189ab3e69eefdb58/) | HolyPoolV2 | core_logic | $15,894.81 | Verified native implementation with $15,894.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fa729...d5324c`](./contracts/ethereum-1/0x3fa729b4548becbad4eab6ef18413470e6d5324c/) | MoverToken | token | $15,209.99 | Verified native implementation with $15,209.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe8934...1b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | CrosschainWhitelistRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb9284...8ea677`](./contracts/ethereum-1/0xbb9284484cb9a2bc7950a1276edba2f6358ea677/) | DAPFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60184...080456`](./contracts/ethereum-1/0xa60184b67a665ede46774b5fee0acdf115080456/) | Dice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39ac24...8ff5b3`](./contracts/ethereum-1/0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3/) | HolyPassageV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2576c0...da361a`](./contracts/ethereum-1/0x2576c08de9a369491d148f82356c5b1431da361a/) | HolyRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c946c...627697`](./contracts/ethereum-1/0x0c946caa389b7325141c035d71c667d4f9627697/) | HolyVisorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b986b...b8ace1`](./contracts/ethereum-1/0x9b986b20243b62628f7b47a2dea602c29eb8ace1/) | HolyWingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb33de...ef0911`](./contracts/ethereum-1/0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911/) | HumanitarianAidNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee7c0...92d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2733a7...f67f22`](./contracts/ethereum-1/0x2733a766d2d79d26b2d23343db5bf38290f67f22/) | MoverOlympusNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47795a...c28315`](./contracts/ethereum-1/0x47795ab886f53719e38780cedf40083aaec28315/) | SmartTreasuryV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 2 |
| standard_library | 11 |
| needs_review | 290 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 75
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=16, medium=1
- Match method counts: contract_name=71, extraction_exact=41

Zero-match audit list:

- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
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
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8220] Fee flow v1-AstraSec.pdf
- [8221] Fee flow v1-Bailsec.pdf
- [8222] Fee flow v1-ChainLight.pdf
- [8223] Fee flow v1-Decurity.pdf
- [8224] Fee flow v1-Open Zepplin.pdf
- [8225] Fee flow v1-Sherlock.pdf
- [8229] 1inch FixedRateSwap_MixedBytes.pdf
- [8232] 1inch Settlement v2.1_Decurity.pdf
- [8233] 1inch Settlement v2.1_Hexens.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8267] LimitSwap audit.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
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
- [8550] whitepaper-aqua-1.0.pdf
- [8552] whitepaper-swap-vm-1.0.pdf
- [8593] aqua-dev-preview.pdf
- [8595] swapvm-dev-preview.pdf
- [15510] help.1inch.com/en/articles/4585088-how-secure-is-1inch

Fork inheritance lineage and inherited audits are included when available.
