# Agentic Audit Brief: Salvor

## Project Overview

- Project: Salvor (`salvor`)
- Website: [https://salvor.io](https://salvor.io)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:46.507Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: avalanche, base
- Contract surface: 286 unique implementations (560 raw deployments)
- DeFi Llama TVL: $542,237.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 126 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 26 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (erc20burnable, erc20permit, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 650; live-surface contracts included: 555 (237 live, 318 unknown).
- Excluded by liveness: 95 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/97 (6.2%)
- Deployed-live implementations: 97 of 286 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/159
- Verified + Unaudited implementations: 153
- Verified by bytecode match: 0
- Unverified implementations: 127
- Unique implementations: 286
- Raw deployments: 560
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 3.8% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Migrations | unknown | avalanche | n/a | 7 deployments: avalanche [`0x49c3f3...7ef110`](./contracts/avalanche-43114/0x49c3f341106d087490fb6cbad749179dab7ef110/); avalanche `0x4c8607...6c5f40`; avalanche `0x7276e6...a3edea`; avalanche `0xa45701...e33fcd`; avalanche `0xcc4db7...08cd10`; avalanche `0xe9affc...3fbbc1`; avalanche `0xf93b7a...5cc4a8` | ✅ Audited |
| PaymentManager | unknown | base | n/a | [`0xef4364...856c7f`](./contracts/base-8453/0xef4364fe4487353df46eb7c811d4fac78b856c7f/) | ✅ Audited |
| PaymentManager | unknown | avalanche | n/a | 2 deployments: base `0x8e4fa9...ab19ab`; avalanche [`0x174b0d...41df6a`](./contracts/avalanche-43114/0x174b0d6b0f4cc58e5c7a223841594052c741df6a/) | ✅ Audited |
| SalvorGovernanceToken | token | avalanche | n/a | [`0xf99516...70a90e`](./contracts/avalanche-43114/0xf99516bc189af00ff8effd5a1f2295b67d70a90e/) | ✅ Audited |
| VeArt | unknown | avalanche | n/a | [`0x72b73f...02ebaa`](./contracts/avalanche-43114/0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa/) | ✅ Audited |
| Vesting | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x93640f...d7dcc5`](./contracts/avalanche-43114/0x93640f79cca740bdaaec37cd0eaf553ae5d7dcc5/); avalanche `0xefac81...c2be20` | ✅ Audited |

### ⚠️ Verified + Unaudited (153)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirDropGEC | unknown | avalanche | n/a | 3 deployments: avalanche [`0x3cabb8...bebb59`](./contracts/avalanche-43114/0x3cabb887d32fdaa1f9a09ac34d2a48b309bebb59/); avalanche `0xa8700f...d4941e`; avalanche `0xc0ae43...006ca4` | ⚠️ Unaudited |
| AntTokenV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5424f5...43e32c`](./contracts/avalanche-43114/0x5424f5896d80a4f333b35980d15856a34e43e32c/); avalanche `0xad25c7...4e1262` | ⚠️ Unaudited |
| ApexMaker | unknown | avalanche | n/a | [`0xf98ea8...e4f18e`](./contracts/avalanche-43114/0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e/) | ⚠️ Unaudited |
| ApexMakerV2 | unknown | avalanche | n/a | [`0x3bf597...4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ⚠️ Unaudited |
| ApexPremier | unknown | avalanche | n/a | [`0xd189d2...d8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ⚠️ Unaudited |
| ApexPremierAccess | unknown | avalanche | n/a | [`0x734d8c...d38f79`](./contracts/avalanche-43114/0x734d8cfeccd8485df397719e7128ca153dd38f79/) | ⚠️ Unaudited |
| ApexPremierFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd92558...c4929f`](./contracts/avalanche-43114/0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f/); avalanche `0xe3593d...8f8cfa` | ⚠️ Unaudited |
| ArtifactHardwareProvider | unknown | avalanche | n/a | [`0xc095ec...24194c`](./contracts/avalanche-43114/0xc095ece2c0f315381b4bf6de169fbc219b24194c/) | ⚠️ Unaudited |
| ArtMarketplace | unknown | avalanche | n/a | [`0x648133...b56f66`](./contracts/avalanche-43114/0x64813357113500b9829fd47956e6fa58ebb56f66/) | ⚠️ Unaudited |
| AssetLocker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x376862...6b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/); avalanche `0xd7c8f6...cbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x456a6e...76e87b`](./contracts/avalanche-43114/0x456a6e49409f137138e2e0255368a3a37876e87b/); avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| BellumToken | token | avalanche | n/a | 4 deployments: avalanche [`0x03f774...42f155`](./contracts/avalanche-43114/0x03f77458e1eb9fa72b8186b573e40b106442f155/); avalanche `0x4a5bb4...e6e4d5`; avalanche `0x6ec180...4ab3d7`; avalanche `0xb44b64...006196` | ⚠️ Unaudited |
| BIFKN314 | unknown | avalanche | n/a | 15 deployments: avalanche [`0x1d2771...0e1192`](./contracts/avalanche-43114/0x1d27713179d379416a22cd28331ccbd19f0e1192/); avalanche `0x301946...37cd6e`; avalanche `0x666a53...2d1909`; avalanche `0x6aba46...d788eb`; avalanche `0x801089...8b89e9`; avalanche `0x958704...486a92`; avalanche `0xa0de70...ce0a82`; avalanche `0xa55894...8d06d1`; avalanche `0xbc47f3...09890b`; avalanche `0xc6f992...05d89b`; avalanche `0xcbcc39...79d338`; avalanche `0xcffb86...9363dd`; avalanche `0xd74fd3...eab9e7`; avalanche `0xe0ee1a...ef035e`; avalanche `0xfe47b6...d529ee` | ⚠️ Unaudited |
| BIFKN314Factory | registry | avalanche | n/a | 3 deployments: avalanche [`0x3d193d...106a87`](./contracts/avalanche-43114/0x3d193de151f8e4e3ce1c4cb2977f806663106a87/); avalanche `0x96a97d...dab0f0`; avalanche `0xad2203...8bc71d` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2aabaf...32a2b2`](./contracts/avalanche-43114/0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2/); avalanche `0xb39224...71e8c9` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 5 deployments: avalanche [`0x4ecd8b...59f450`](./contracts/avalanche-43114/0x4ecd8bdc617d68789ac2afefbab5d24e2859f450/); avalanche `0x576fbd...da622b`; avalanche `0x58dd21...99eded`; avalanche `0xabfbfe...345e9a`; avalanche `0xeed436...afb465` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4f7078...eaf769`](./contracts/avalanche-43114/0x4f70785606938b4ba963feea1bf74a1c80eaf769/); avalanche `0x72cf3a...7cd315` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x754a0c...820f01`](./contracts/avalanche-43114/0x754a0c42c35562ee7a41eb824d14bc1259820f01/); avalanche `0xdcaece...81f99a` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | [`0x759a06...c7a8e5`](./contracts/avalanche-43114/0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5/) | ⚠️ Unaudited |
| BIFKN314FeeHook | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2af654...038306`](./contracts/avalanche-43114/0x2af654340459b0a294f9b441b374e64b9a038306/); avalanche `0xa56b59...8ac70c` | ⚠️ Unaudited |
| BIFKN314FeeHookLegacyFix | unknown | avalanche | n/a | [`0x3aa19b...2bc262`](./contracts/avalanche-43114/0x3aa19b923e93850b093d5c48c4971de0042bc262/) | ⚠️ Unaudited |
| BIFKN314Locker | unknown | avalanche | n/a | [`0xdfb880...845802`](./contracts/avalanche-43114/0xdfb8803797b11c64cd8520b611816924ce845802/) | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | avalanche | n/a | 31 deployments: avalanche [`0x18e015...25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/); avalanche `0x19b7cc...7f4fed`; avalanche `0x1b923f...3b1516`; avalanche `0x1c7b3f...aad39a`; avalanche `0x1ff575...914d2f`; avalanche `0x2aaad9...974761`; avalanche `0x2e3ac2...e536fb`; avalanche `0x463a7e...c75e9a`; avalanche `0x490bf7...02e3eb`; avalanche `0x4a8876...2e6138`; avalanche `0x4ab51b...404d80`; avalanche `0x4df08c...f5dc9a`; avalanche `0x5b5913...481ce1`; avalanche `0x5facc8...a26461`; avalanche `0x65fcc0...e053f0`; avalanche `0x772ebf...308cdc`; avalanche `0x836094...e47cd1`; avalanche `0x8ab6a0...c4aa02`; avalanche `0x8bb1e4...324bed`; avalanche `0x8e02a1...f65d96`; avalanche `0x9a25d8...f70736`; avalanche `0x9af107...5d697e`; avalanche `0x9fa9b0...92c15e`; avalanche `0xb643d9...5b5720`; avalanche `0xbe2ff4...fc545b`; avalanche `0xbf835b...ae176d`; avalanche `0xce6450...616da6`; avalanche `0xcec0b5...0442bd`; avalanche `0xda5d3f...b00947`; avalanche `0xdd4bfa...956d14`; avalanche `0xeb3dfd...6a8734` | ⚠️ Unaudited |
| BIFKN314Oracle | unknown | avalanche | n/a | 6 deployments: avalanche [`0x2c4ea5...305c96`](./contracts/avalanche-43114/0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96/); avalanche `0x42bff7...255951`; avalanche `0xa0f24a...8f5760`; avalanche `0xc04d3a...c44020`; avalanche `0xca94e2...7b38e3`; avalanche `0xf8ac03...e98df1` | ⚠️ Unaudited |
| BIFKN314Router | unknown | avalanche | n/a | [`0x5f4378...03d8cd`](./contracts/avalanche-43114/0x5f4378a634cc046f12143ee9403d31fd4e03d8cd/) | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | avalanche | n/a | 3 deployments: avalanche [`0x5d2dda...28082b`](./contracts/avalanche-43114/0x5d2dda02280f55a9d4529eadfa45ff032928082b/); avalanche `0x6242c8...2744fc`; avalanche `0xa6d21c...11a682` | ⚠️ Unaudited |
| BIFKN314Wrapper | unknown | avalanche | n/a | 6 deployments: avalanche [`0x36ef5b...624b00`](./contracts/avalanche-43114/0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00/); avalanche `0x884400...e2ec61`; avalanche `0x978f58...a7e951`; avalanche `0xd153fe...8d1e92`; avalanche `0xf43d68...33a15e`; avalanche `0xfd3a5a...1cdee3` | ⚠️ Unaudited |
| BIFKN314WrapperFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x39ab4a...83f4b4`](./contracts/avalanche-43114/0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4/); avalanche `0xa242da...23e8b5` | ⚠️ Unaudited |
| BIFKN314WrapperFactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x709d66...6315cc`](./contracts/avalanche-43114/0x709d667c0f7cb42e6099b1a2b2b71409086315cc/); avalanche `0xfb68c9...5c5bd2` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | avalanche | n/a | 31 deployments: avalanche [`0x0133a8...374bff`](./contracts/avalanche-43114/0x0133a82c4a2ec404ea61529c45ee15b08d374bff/); avalanche `0x098086...18b3da`; avalanche `0x1a308e...620f54`; avalanche `0x1f6c7e...f8e50f`; avalanche `0x1fb3f2...49c612`; avalanche `0x26ab72...3124d5`; avalanche `0x28f699...ad020c`; avalanche `0x430dde...ab2f46`; avalanche `0x485ea0...d6ed82`; avalanche `0x52e44b...e119ad`; avalanche `0x5c84b4...c3e9f9`; avalanche `0x5fe449...1ac6d6`; avalanche `0x636483...3b8941`; avalanche `0x69e852...87143b`; avalanche `0x6c5d31...5f05a2`; avalanche `0x737805...6a2e68`; avalanche `0x77cb12...9e8573`; avalanche `0x7e4126...811b5d`; avalanche `0x9dcde3...8be6c4`; avalanche `0xa28745...c00abe`; avalanche `0xae3f01...1b47a0`; avalanche `0xb47f0d...7ce5c3`; avalanche `0xb51dfb...361f31`; avalanche `0xbf2b86...97789e`; avalanche `0xbf88e0...31bb18`; avalanche `0xc80f88...fc817d`; avalanche `0xd714f2...fba4ec`; avalanche `0xde2468...0114a1`; avalanche `0xf31856...7d639a`; avalanche `0xfb0cf8...d29332`; avalanche `0xfc6c9b...4e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | avalanche | n/a | [`0x421d0d...128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x317828...ea4573`](./contracts/avalanche-43114/0x317828cbe7ac8707743bae02a2bab8219aea4573/); avalanche `0x599587...ed38d3`; avalanche `0x87f073...74d66e` | ⚠️ Unaudited |
| BIFKNRewarder | unknown | avalanche | n/a | 38 deployments: avalanche [`0x0d4c97...134a4b`](./contracts/avalanche-43114/0x0d4c97526dc88b7c208b36644d131a7ee7134a4b/); avalanche `0x273a7a...433025`; avalanche `0x3438fe...bc7c01`; avalanche `0x3f7229...a2416a`; avalanche `0x43b617...f30ddf`; avalanche `0x49070a...912382`; avalanche `0x4da6c4...9dd044`; avalanche `0x518a8d...6715b0`; avalanche `0x59c76d...bfb5ac`; avalanche `0x5a2d94...b51c64`; avalanche `0x6e33f5...36d041`; avalanche `0x70e5e1...71d058`; avalanche `0x78ce75...9ff37b`; avalanche `0x7d8416...4332b0`; avalanche `0x812f7e...c45248`; avalanche `0x882342...aed475`; avalanche `0x8890c4...1aad8b`; avalanche `0x88db87...9d97f3`; avalanche `0x8d7946...fa85b8`; avalanche `0x8df656...3cd581`; avalanche `0x982c47...da4418`; avalanche `0x9a78ec...0bb340`; avalanche `0x9f1908...745aeb`; avalanche `0xb32f18...d8163e`; avalanche `0xb683a3...eff7b0`; avalanche `0xc05d6a...e0d70a`; avalanche `0xc158d2...67194f`; avalanche `0xc36a0b...7da63d`; avalanche `0xc52749...f37727`; avalanche `0xc9b97d...3cc2f7`; avalanche `0xcc5cd9...361da7`; avalanche `0xdc35e5...42e34c`; avalanche `0xde7780...e015b2`; avalanche `0xe95da2...7c99e8`; avalanche `0xeda361...026a71`; avalanche `0xf07776...9296e1`; avalanche `0xf11e82...31f7ea`; avalanche `0xfde2ea...a81f19` | ⚠️ Unaudited |
| BLS | unknown | avalanche | n/a | [`0x46b914...dcaf9d`](./contracts/avalanche-43114/0x46b9144771cb3195d66e4eda643a7493fadcaf9d/) | ⚠️ Unaudited |
| BnanaCourt | unknown | avalanche | n/a | [`0x80f5c1...9e2238`](./contracts/avalanche-43114/0x80f5c122df691384199a8b448408b426639e2238/) | ⚠️ Unaudited |
| Bonez | unknown | avalanche | n/a | [`0x4d6ec4...2ab677`](./contracts/avalanche-43114/0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677/) | ⚠️ Unaudited |
| BonezClaim | unknown | avalanche | n/a | [`0x7ccff2...5a54cf`](./contracts/avalanche-43114/0x7ccff2d7d97f0577fd79e91c2f28e30bb65a54cf/) | ⚠️ Unaudited |
| BonezStaking | unknown | avalanche | n/a | [`0xd63bbc...cfdfe8`](./contracts/avalanche-43114/0xd63bbc7afd3a76da88f42702ec9a7aade7cfdfe8/) | ⚠️ Unaudited |
| BonezSwapping | unknown | avalanche | n/a | [`0x4a3fb3...fda7c4`](./contracts/avalanche-43114/0x4a3fb36934a74380e0f28d4bbd4e16a01afda7c4/) | ⚠️ Unaudited |
| BpayPortalz | unknown | avalanche | n/a | [`0x7147f6...c899b4`](./contracts/avalanche-43114/0x7147f6002cc36e93e6b64f3f9cc82e3e6ac899b4/) | ⚠️ Unaudited |
| BrevUniversity | unknown | avalanche | n/a | 2 deployments: avalanche [`0xcf7b2c...ee3532`](./contracts/avalanche-43114/0xcf7b2caee040def16bfa1090c8c9f69d61ee3532/); avalanche `0xd13510...8bf5c8` | ⚠️ Unaudited |
| BSCSNFT | unknown | avalanche | n/a | [`0x66841c...30cef1`](./contracts/avalanche-43114/0x66841c6ddb09831c73d1addf0503b958d930cef1/) | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | 4 deployments: avalanche [`0x286fab...848205`](./contracts/avalanche-43114/0x286fab35db995dc26a1d57707cb0faa9ee848205/); avalanche `0x2affb6...dcb9bb`; avalanche `0xbb6b57...a7d43a`; avalanche `0xcf5de4...e8f857` | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7e71e4...ee4813`](./contracts/avalanche-43114/0x7e71e483986b1e87d2c871595201fab9e3ee4813/); avalanche `0x84926d...913d8b` | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | 4 deployments: avalanche [`0x8ade2c...1d591b`](./contracts/avalanche-43114/0x8ade2c3c04731d382a29d871d67296e15b1d591b/); avalanche `0xc331d7...3a9f8b`; avalanche `0xdd4d94...91ad42`; avalanche `0xdef673...ad5ef6` | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | [`0xd49d18...bfb6e7`](./contracts/avalanche-43114/0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7/) | ⚠️ Unaudited |
| BurstFactoryV2 | unknown | avalanche | n/a | [`0x4a47cd...952c76`](./contracts/avalanche-43114/0x4a47cd3efb448bbed62a5a290a20928110952c76/) | ⚠️ Unaudited |
| BurstFactoryV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6c8823...612602`](./contracts/avalanche-43114/0x6c882394a9fe366de13f2d5229449be81d612602/); avalanche `0xef89a7...276644` | ⚠️ Unaudited |
| BurstFactoryV4 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1f62f4...36f1ba`](./contracts/avalanche-43114/0x1f62f42726414ac807d8fd553423c0f55936f1ba/); avalanche `0xce4d39...d9677b` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x27b12f...c84c7e`](./contracts/avalanche-43114/0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e/); avalanche `0xab9356...0d1ad6`; avalanche `0xb86490...0a2b6d`; avalanche `0xdaebd8...71b72a` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xb83ad9...13a903`](./contracts/avalanche-43114/0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903/); avalanche `0xb91b66...f463d1` | ⚠️ Unaudited |
| BurstFactoryV6 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xbc74a3...c07cdd`](./contracts/avalanche-43114/0xbc74a3c24d8aa980445adc889577e29089c07cdd/); avalanche `0xde2762...d0c9a7` | ⚠️ Unaudited |
| BurstToken | unknown | avalanche | n/a | 10 deployments: avalanche [`0x1c8df0...1d0dfc`](./contracts/avalanche-43114/0x1c8df0cae834438de0a301c499078c068e1d0dfc/); avalanche `0x2025ad...cffea8`; avalanche `0x52d370...1203b6`; avalanche `0x5410bb...15c0b6`; avalanche `0x6c0a29...b05e98`; avalanche `0x737729...ad4893`; avalanche `0x7824ef...5e3b5e`; avalanche `0x9e8502...ef486a`; avalanche `0xbb5deb...efff66`; avalanche `0xe33d44...b2928d` | ⚠️ Unaudited |
| ChiknPortalzV3 | unknown | avalanche | n/a | [`0x9cf31e...1e72a9`](./contracts/avalanche-43114/0x9cf31e89a2cc500d7cb2396509e674c1701e72a9/) | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4169cf...49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/); avalanche `0x6476a7...bb286c` | ⚠️ Unaudited |
| CloudzPortalz | unknown | avalanche | n/a | [`0xf755a8...393754`](./contracts/avalanche-43114/0xf755a817f9891954c99bf33bb731b8f9e8393754/) | ⚠️ Unaudited |
| ColonyGovernanceToken | token | avalanche | n/a | [`0xec3492...1793e6`](./contracts/avalanche-43114/0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6/) | ⚠️ Unaudited |
| ColonyRouter | adapter | avalanche | n/a | [`0xa2e7ab...89a131`](./contracts/avalanche-43114/0xa2e7ab89a2c59818e1ecd925e718a9d63889a131/) | ⚠️ Unaudited |
| CopperOrbMinter | unknown | avalanche | n/a | [`0xae51aa...20770a`](./contracts/avalanche-43114/0xae51aa005bb123f211730fed55a5fbf2a620770a/) | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7a212f...b9a6dc`](./contracts/avalanche-43114/0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc/); avalanche `0x8a2de3...9ac366` | ⚠️ Unaudited |
| DogWifTrainer | unknown | avalanche | n/a | [`0x8e3751...85f63d`](./contracts/avalanche-43114/0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d/) | ⚠️ Unaudited |
| Doorkeeper | operational_periphery | avalanche | n/a | [`0x2598eb...ed1e56`](./contracts/avalanche-43114/0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56/) | ⚠️ Unaudited |
| EarningsBayV2Token | token | avalanche | n/a | [`0x1c7c53...7a42f9`](./contracts/avalanche-43114/0x1c7c53aa86b49a28c627b6450091998e447a42f9/) | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | avalanche | n/a | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 4 deployments: avalanche [`0x0d8db5...e18a15`](./contracts/avalanche-43114/0x0d8db5209ac4994b8cb78b5d777ea854d7e18a15/); avalanche `0x2542d3...9a2521`; avalanche `0x31e9a8...d21d4e`; avalanche `0x85d148...05c927` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x143ddb...b4562c`](./contracts/avalanche-43114/0x143ddb612a40ab9865fdcd9fb96dda2323b4562c/); avalanche `0x5974d0...1be4a8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3fa691...691f9d`](./contracts/avalanche-43114/0x3fa691e4a0a48c52e0b3e4d7dfd2c2a578691f9d/); avalanche `0xd52d1e...0586cb` | ⚠️ Unaudited |
| ERC20Tokensx | token | avalanche | n/a | 3 deployments: avalanche [`0x201d04...062d38`](./contracts/avalanche-43114/0x201d04f88bc9b3bdacdf0519a95e117f25062d38/); avalanche `0x56b9f5...09c304`; avalanche `0x8f5642...aa832a` | ⚠️ Unaudited |
| GECNFT | unknown | avalanche | n/a | 3 deployments: avalanche [`0x231cb2...fbc36f`](./contracts/avalanche-43114/0x231cb2f2484e9ad123e827fadc26556eaffbc36f/); avalanche `0x2da215...6d4c8f`; avalanche `0x7f3590...b547e3` | ⚠️ Unaudited |
| GECToken | token | avalanche | n/a | [`0xe8385c...4881f3`](./contracts/avalanche-43114/0xe8385cecb013561b69beb63ff59f4d10734881f3/) | ⚠️ Unaudited |
| GEGGSINCUBATOR | unknown | avalanche | n/a | [`0xaa2cee...6b1c4f`](./contracts/avalanche-43114/0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f/) | ⚠️ Unaudited |
| GoGoGasStation | unknown | avalanche | n/a | 2 deployments: avalanche [`0x27ce13...f62b7e`](./contracts/avalanche-43114/0x27ce13ed07c367258e0e65eb932dffcb84f62b7e/); avalanche `0x52950f...8f7bd2` | ⚠️ Unaudited |
| GoldenOrbSwapper | adapter | avalanche | n/a | [`0xaa2ef7...e04ba1`](./contracts/avalanche-43114/0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1/) | ⚠️ Unaudited |
| Husky | unknown | avalanche | n/a | [`0x65378b...f4a654`](./contracts/avalanche-43114/0x65378b697853568da9ff8eab60c13e1ee9f4a654/) | ⚠️ Unaudited |
| IndexFeeDistributor | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3ec03d...b7d6b6`](./contracts/avalanche-43114/0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6/); avalanche `0x650a85...1fcd41` | ⚠️ Unaudited |
| Juicy | unknown | avalanche | n/a | 4 deployments: avalanche [`0x480d2e...44c4bd`](./contracts/avalanche-43114/0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd/); avalanche `0x9f7051...c43146`; avalanche `0xc65472...a6af55`; avalanche `0xeb0064...8bc48b` | ⚠️ Unaudited |
| JuicyStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x02d14d...314064`](./contracts/avalanche-43114/0x02d14dd765ee6524bca876b8a203000649314064/); avalanche `0x99ac35...7c88a2` | ⚠️ Unaudited |
| JuicySubscriptions | unknown | avalanche | n/a | 2 deployments: avalanche [`0x11522c...1453c9`](./contracts/avalanche-43114/0x11522c62712c4791db1258b8a8dc96e2e71453c9/); avalanche `0x37fa51...e5034e` | ⚠️ Unaudited |
| JuicyTokenSale | unknown | avalanche | n/a | 4 deployments: avalanche [`0x2ce2ed...50a730`](./contracts/avalanche-43114/0x2ce2edcf530caa540c441b61ffc9a80cb350a730/); avalanche `0x471a48...6de731`; avalanche `0xb1bb87...d0a93d`; avalanche `0xde485a...ddf650` | ⚠️ Unaudited |
| Ket | unknown | avalanche | n/a | [`0xffff00...2b6ed7`](./contracts/avalanche-43114/0xffff003a6bad9b743d658048742935fffe2b6ed7/) | ⚠️ Unaudited |
| KetPfpMinter | unknown | avalanche | n/a | 2 deployments: avalanche [`0x06d75d...18435d`](./contracts/avalanche-43114/0x06d75d9001fbf39c2303cd6154ee0419a418435d/); avalanche `0x7b1ccf...c75911` | ⚠️ Unaudited |
| KimboCollege | unknown | avalanche | n/a | [`0x4e6b2a...f4590c`](./contracts/avalanche-43114/0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c/) | ⚠️ Unaudited |
| KimboTrainer | unknown | avalanche | n/a | [`0xaeb261...a06e22`](./contracts/avalanche-43114/0xaeb261db831fd11a3f700014f3ace6073da06e22/) | ⚠️ Unaudited |
| KONG | unknown | avalanche | n/a | 2 deployments: avalanche [`0xac48e0...5026ba`](./contracts/avalanche-43114/0xac48e02ac18299e061897345991857a80e5026ba/); avalanche `0xebb5d4...1fc999` | ⚠️ Unaudited |
| KOVIN | unknown | avalanche | n/a | [`0x694200...8c5cbb`](./contracts/avalanche-43114/0x694200a68b18232916353250955be220e88c5cbb/) | ⚠️ Unaudited |
| KovinJeckpot | unknown | avalanche | n/a | [`0x70b145...7febc3`](./contracts/avalanche-43114/0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3/) | ⚠️ Unaudited |
| KycProofVerification | unknown | avalanche | n/a | [`0x580ddd...3fa0e9`](./contracts/avalanche-43114/0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9/) | ⚠️ Unaudited |
| KycStorage | unknown | avalanche | n/a | [`0x61ec16...254092`](./contracts/avalanche-43114/0x61ec16bb9fa514cfe02766b27dbdbecba9254092/) | ⚠️ Unaudited |
| Laifu | unknown | avalanche | n/a | [`0x21e32d...93c24f`](./contracts/avalanche-43114/0x21e32d59b1f9574674006a4101150a004d93c24f/) | ⚠️ Unaudited |
| Landwolf | unknown | avalanche | n/a | [`0x4f94b8...4438ec`](./contracts/avalanche-43114/0x4f94b8aef08c92fefe416af073f1df1e284438ec/) | ⚠️ Unaudited |
| M1ZPortalz | unknown | avalanche | n/a | [`0xda54f8...52e311`](./contracts/avalanche-43114/0xda54f80ddf96fad96be883e349e40b458352e311/) | ⚠️ Unaudited |
| MasterChefColony | unknown | avalanche | n/a | [`0x2ac45f...3947d0`](./contracts/avalanche-43114/0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0/) | ⚠️ Unaudited |
| MemeToken | token | avalanche | n/a | [`0x7a842a...e6bc75`](./contracts/avalanche-43114/0x7a842a6f4580edd3df41c1f31e0395044de6bc75/) | ⚠️ Unaudited |
| Meow | unknown | avalanche | n/a | [`0x8ad25b...8f6187`](./contracts/avalanche-43114/0x8ad25b0083c9879942a64f00f20a70d3278f6187/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | avalanche | n/a | 3 deployments: avalanche [`0x5463fb...95a9d0`](./contracts/avalanche-43114/0x5463fb623fe9806b78d8ebc41f4671200295a9d0/); avalanche `0xe3418a...79c871`; avalanche `0xf23396...2bc14f` | ⚠️ Unaudited |
| MinipoolManager | unknown | avalanche | n/a | 5 deployments: avalanche [`0x9e6579...b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/); avalanche `0xb84fa0...d1ed08`; avalanche `0xc300bc...268ee7`; avalanche `0xc8de41...da7037`; avalanche `0xe51262...208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 3 deployments: avalanche [`0x0a75a4...efa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/); avalanche `0x8c05d7...96115c`; avalanche `0xb5f2ed...90e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 2 deployments: avalanche [`0x746f2c...c1ecd8`](./contracts/avalanche-43114/0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8/); avalanche `0x752ab1...163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | avalanche | n/a | [`0xae1e7b...3ce4b1`](./contracts/avalanche-43114/0xae1e7b06544a13315e6f7301cc161761813ce4b1/) | ⚠️ Unaudited |
| MultisigManager | unknown | avalanche | n/a | [`0x7fff41...1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | ⚠️ Unaudited |
| NFTradeNFTToken | unknown | avalanche | n/a | [`0xba6a7a...9e60d2`](./contracts/avalanche-43114/0xba6a7aa3c1737dedb2f8db71a359fe8dde9e60d2/) | ⚠️ Unaudited |
| NodeAsAService | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3ccef5...7e805a`](./contracts/avalanche-43114/0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a/); avalanche `0xb306c9...b20b04` | ⚠️ Unaudited |
| NOODS | unknown | avalanche | n/a | 2 deployments: avalanche [`0x206336...a869e1`](./contracts/avalanche-43114/0x206336c741178d976e9c5444987497bd8fa869e1/); avalanche `0xffdb03...22da98` | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9189d1...ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/); avalanche `0xffdc3b...ad5542` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | avalanche | n/a | [`0xfe6ca6...e8fe3e`](./contracts/avalanche-43114/0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| OrbMerger | unknown | avalanche | n/a | [`0x412cb1...347839`](./contracts/avalanche-43114/0x412cb1580c33c421b2765e91a6c231a246347839/) | ⚠️ Unaudited |
| OrbRedeemer | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1f240d...f8b1d2`](./contracts/avalanche-43114/0x1f240def4c98408e22a28daec1e920810ef8b1d2/); avalanche `0xc874be...7b565a` | ⚠️ Unaudited |
| Orbs | unknown | avalanche | n/a | 2 deployments: avalanche [`0x62df6e...37fcc5`](./contracts/avalanche-43114/0x62df6e203916617ed20e87babb2105e6df37fcc5/); avalanche `0xec18aa...f8450c` | ⚠️ Unaudited |
| Orbs | unknown | avalanche | n/a | 3 deployments: avalanche [`0x9df15b...c08e2b`](./contracts/avalanche-43114/0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b/); avalanche `0xbca48e...626891`; avalanche `0xd491c8...0f9734` | ⚠️ Unaudited |
| PitBonus | unknown | avalanche | n/a | [`0xe6666f...5926c9`](./contracts/avalanche-43114/0xe6666f6fa8bc1759b9266d30d41cb443025926c9/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | n/a | 4 deployments: avalanche [`0x41a763...195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/); avalanche `0x70fd1a...fd1b65`; avalanche `0xa008cc...8ef546`; avalanche `0xfc3ea3...d8051a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 10 deployments: avalanche [`0x5313c3...b247cf`](./contracts/avalanche-43114/0x5313c309cd469b751ad3947568d65d4a70b247cf/); avalanche `0x6e8fd3...aed940`; avalanche `0x741c5f...17690c`; avalanche `0x89cf78...b9b64d`; avalanche `0x9484d5...416c71`; avalanche `0xbc5627...e9e190`; avalanche `0xc7fef2...d7a6c6`; avalanche `0xdbfe1e...a56aa7`; avalanche `0xe4d695...4e3027`; avalanche `0xf4c562...1620a9` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| SQRCAT | unknown | avalanche | n/a | [`0xc8e7fb...03f2d5`](./contracts/avalanche-43114/0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5/) | ⚠️ Unaudited |
| SQRCATMiner | unknown | avalanche | n/a | [`0x2c3694...e9d1a9`](./contracts/avalanche-43114/0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9/) | ⚠️ Unaudited |
| Staking | unknown | avalanche | n/a | 4 deployments: avalanche [`0x439776...374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/); avalanche `0x5b0d74...1dc557`; avalanche `0x9946e6...531d00`; avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StakingV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xbd2890...410bbc`](./contracts/avalanche-43114/0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc/); avalanche `0xf2501d...a040f9` | ⚠️ Unaudited |
| StakingV3 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x2b8c3c...43751c`](./contracts/avalanche-43114/0x2b8c3c4d13142d7457dc80c92db4c62f3543751c/); avalanche `0x62685d...82de5b`; avalanche `0xb9ad5f...e318e1` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| Storage | unknown | avalanche | n/a | 9 deployments: avalanche [`0x081b0a...3e1f35`](./contracts/avalanche-43114/0x081b0a036cbf55669685d2ac0f549b386d3e1f35/); avalanche `0x1bbbfa...1f9e72`; avalanche `0x3b9613...414ea4`; avalanche `0x3e186d...b54b7e`; avalanche `0x46ed33...79850b`; avalanche `0x6cb35a...c179dd`; avalanche `0x7a1164...6d078d`; avalanche `0xd9d021...ff1dc1`; avalanche `0xe0f912...56cca7` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8b85ca...f33d0b`](./contracts/avalanche-43114/0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b/); avalanche `0xf04aa1...f8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x697d7c...ba2c68`](./contracts/avalanche-43114/0x697d7c12853a59429b62ab4d310975335dba2c68/); avalanche `0x9bfade...590819` | ⚠️ Unaudited |
| ThePit | unknown | avalanche | n/a | 2 deployments: avalanche [`0x96b905...19d672`](./contracts/avalanche-43114/0x96b9058ea3af4c47223d470ac8d20322b719d672/); avalanche `0xc9871b...6fa33b` | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f...14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokenggAVAX | token | avalanche | n/a | 4 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922`; avalanche `0xd960ce...16e584`; avalanche `0xf80eb4...57843e` | ⚠️ Unaudited |
| TokenggAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa25eaf...b703e3`](./contracts/avalanche-43114/0xa25eaf2906fa1a3a13edac9b9657108af7b703e3/); avalanche `0xfad33e...163752` | ⚠️ Unaudited |
| TokenGGP | token | avalanche | n/a | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| TokenpstAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6b3775...e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/); avalanche `0x82e153...79b241` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x49424f...1d5586`](./contracts/avalanche-43114/0x49424f026731af05a7a5ecc25901d0d9841d5586/); avalanche `0x5d7dcc...a666fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0146b8...9937af`](./contracts/avalanche-43114/0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af/); avalanche `0x22bafb...a1d073` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0eb749...c52388`](./contracts/avalanche-43114/0x0eb749a42ca15d6ee8ad30e789586c09c2c52388/); avalanche `0xe6224b...ff9f08` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x146782...e1310d`](./contracts/avalanche-43114/0x1467826e9dadb57db1fb9f1ffeadf01debe1310d/); avalanche `0x23904c...f8d044` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x17ce2a...5520d4`](./contracts/avalanche-43114/0x17ce2a490cb260b48891ade019a86f4b4a5520d4/); avalanche `0xad36f6...49a86b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x36e0e8...e0f6be`](./contracts/avalanche-43114/0x36e0e8d6246e34812f5f56cafe7fc10054e0f6be/); avalanche `0xe8f9e1...5140b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5377ca...377dac`](./contracts/avalanche-43114/0x5377caf64cf02c1320c66030fbe3773431377dac/); avalanche `0xe6befa...33bc55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x60d0a8...858096`](./contracts/avalanche-43114/0x60d0a833ceeee90b12cffc8ccb235baae4858096/); avalanche `0x7ccda6...615a8d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x62b382...5c04b9`](./contracts/avalanche-43114/0x62b38293896e040e36fe5345f9d30dbfd75c04b9/); avalanche `0xda88d0...fb1d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x708e88...858b6e`](./contracts/avalanche-43114/0x708e887ab6475466379f6d7b89937add1d858b6e/); avalanche `0xd071aa...d157d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x91c5f2...6a5f3f`](./contracts/avalanche-43114/0x91c5f275afb2ae344687dfcde5354477326a5f3f/); avalanche `0xe9b65e...34d9a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xac59c2...d2f3ba`](./contracts/avalanche-43114/0xac59c21adfddb1e56a959dd60a08c07aaed2f3ba/); avalanche `0xae7bd6...d1bc93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0xb244b1...3c6c54`](./contracts/avalanche-43114/0xb244b1507d7cfb8de6883fd985ee5e205d3c6c54/); avalanche `0xba239e...48885d`; avalanche `0xc2de17...de054b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0xb79a1f...a75c67`](./contracts/avalanche-43114/0xb79a1ff59b58c7be91ac122c2b1a7ac704a75c67/); avalanche `0xc54c0c...4bfad9`; avalanche `0xfa5951...b9ab76` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| UniversalClaimer | unknown | avalanche | n/a | [`0xc84c8b...276c20`](./contracts/avalanche-43114/0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20/) | ⚠️ Unaudited |
| USDCInvestmentPool | operational_periphery | avalanche | n/a | [`0x82d7d9...9c4050`](./contracts/avalanche-43114/0x82d7d932e3e12d18f01838d4c01c1dbb539c4050/) | ⚠️ Unaudited |
| Vault | unknown | avalanche | n/a | [`0xd45cb6...41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/); avalanche `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |
| WithdrawQueue | unknown | avalanche | n/a | 2 deployments: avalanche [`0x61f908...5849a3`](./contracts/avalanche-43114/0x61f908d4992a790a2792d3c36850b4b9eb5849a3/); avalanche `0xf25dc8...c10afd` | ⚠️ Unaudited |
| xBIFKN314 | unknown | avalanche | n/a | [`0xa43f06...86374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (127)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x00f9e4...07e51a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x019258...623001` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x043026...3b4416` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0521fc...cc509a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06b959...7f7216` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08237f...fdfeb5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x091e3e...9dce7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x096459...49cef6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x096c04...7560b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a00a7...291641` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c1992...e01244` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cc748...43bd45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ea552...cede12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ff749...4926fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12005b...896754` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12eeef...5c7c60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15dbf0...68ce47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15e567...798dd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x171c78...1972e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17395a...222199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18c7a6...a9f580` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18e360...c18973` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1988aa...63cd2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19fc17...fea3d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a5bdc...71f4e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c3fa0...bf6749` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d3d3a...5e0bed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e50ae...7224d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x202f0c...a15c1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2042f4...2791fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d332...2aa064` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x257bff...5b6cad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26760c...11c9ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26a97b...53abba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d1edf...fb0341` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3db497...79c071` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41f2c5...bfea01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x423d18...20f093` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4bf0c9...f23d48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f406e...6cab5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x50c496...f29e11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x538a28...33dead` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58c4b2...0740f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5906ca...ed62bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bfdea...467ea5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fb5d0...ee2666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x602fe1...4cff1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65b58c...b9cbc2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x662550...4ed596` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x686040...35c611` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68bc23...affbd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6973af...e3cf3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6aa881...d0985f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aa41b...b52fae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b080e...d3a344` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cdf0d...fffb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d36bd...afd168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e997f...aa250b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81e542...0e6379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x861aab...cd386a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d6b7e...ce0b31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f81fa...80803d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x950e56...878dcd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96e40a...e78baa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b7f4c...a87f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cbdcb...7f12d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e1ac5...4bfa1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa043ae...bf8c47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa224dd...fc6be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3d17b...180ee9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4998c...2322bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7a925...1baeab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa915c4...205cd9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf85ae...ed31e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb023ad...84e15b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3b054...13d0d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6b70d...c9fd70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb746d1...4e75ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb9207...7bdf0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbbc98...7e9328` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbe885...f4deec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1e38f...4df212` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1eedc...d6adc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc34cbc...3909c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5d950...deb180` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5f368...c82fcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6b285...c93845` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6d086...1468dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc73aed...ef8ee6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7492a...9eec20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9fbf1...ce4e00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc42c3...b1d780` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc4af1...3515aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcfdcd7...5252ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd1dd6a...82392b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd40e60...22b577` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4fea8...9d41c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda9961...03ad32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc53b2...1bbfdb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfc2ec...fc7768` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfc900...9cfbf2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0ea31...30603b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe82b73...2f6203` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb0910...247df0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec16d6...60144d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xedd549...c90648` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf13d43...e8cad1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe305a...116608` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FLnkp7kxoSMTgU9Kh0q2A%2FSalvor_15082022_SCAudit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 10 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FaHdorsVLkkSsvnJ1557L%2FSalvor_SC%20Audit%20Report_15022023__.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 1 | n/a |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FkvTuvmkMW2m2WJhcqjQB%2FSalvor_19122022_SCAudit_Report_%5BSA-871%5D.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 286 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=10

Fork inheritance lineage and inherited audits are included when available.
