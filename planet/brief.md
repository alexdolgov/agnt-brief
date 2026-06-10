# Agentic Audit Brief: Planet

⚠️ Lifecycle status: DECLINING - TVL changed 7.0% over 90 days

## Project Overview

- Project: Planet (`planet`)
- Website: [https://app.planet.finance/](https://app.planet.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T20:59:09.336Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 34 unique implementations (298 raw deployments)
- DeFi Llama TVL: $1,820,176.00
- On-chain TVL (included contracts): $778,287,229.96
- TVL by chain: Bsc $778,287,229.96

## Project Description

Planet is a BSC DeFi protocol with Compound-style lending/borrowing markets and earning/yield products, including farm and auto-compounding strategy contracts. Liquid-staking-related components should be treated as separate or only included where specifically confirmed by contract-level evidence.

### Architecture

The lending family provides the core money market, while yield farming strategies utilize lending market tokens (GErc20) and interact with the same governance (Unitroller/Gammatroller). Liquid staking operates independently but shares the same discount and eligibility infrastructure for user incentives.

## Audit Coverage Summary

- Verified implementations audited: 2/26 (7.7%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 34
- Raw deployments: 298
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $778,287,229.96
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $778,287,229.96 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 2 | 7.7% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PlanetRouter | adapter | bsc | 2 deployments: bsc [`0x79fa96...ff455f`](./contracts/bsc-56/0x79fa9625ac5b26d320d8fdf427b8133d9eff455f/); bsc `0xe11266...67b467` | ✅ Audited |
| TimelockController | governance | bsc | 2 deployments: bsc [`0x084e9b...0df137`](./contracts/bsc-56/0x084e9b6928888a1d372b87e3d7bb3f90700df137/); bsc `0xc19f95...8de4ea` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GErc20Delegate | token | bsc | 75 deployments: bsc [`0x0071d7...a8161c`](./contracts/bsc-56/0x0071d7c11023981271c4eda79c77c34acaa8161c/); bsc `0x045e2d...00a9c8`; bsc `0x058ce5...dc0a3b`; bsc `0x06d6f7...d4868d`; bsc `0x0c6dd1...896442`; bsc `0x0cf2c6...aaffec`; bsc `0x0e4e0d...505fe4`; bsc `0x15ab61...a9bcaf`; bsc `0x16551b...6ff241`; bsc `0x2a2957...b6e804`; bsc `0x2cf16c...c59063`; bsc `0x313288...6ebbbc`; bsc `0x3666c9...ac3a40`; bsc `0x37c396...dfb3e0`; bsc `0x3bbf3e...bbcb6c`; bsc `0x3c0ad3...1d8073`; bsc `0x3d1df2...90428d`; bsc `0x411ff9...8abb10`; bsc `0x45646b...705ebf`; bsc `0x4a80df...683749`; bsc `0x4bdde0...7232e4`; bsc `0x4c2bdd...0797b5`; bsc `0x506e53...c8794f`; bsc `0x586c8f...eb3a0b`; bsc `0x5898ce...d3ff64`; bsc `0x5eb522...c0e1ba`; bsc `0x6022ba...511b25`; bsc `0x63dca1...568f7c`; bsc `0x66fd9d...f9a434`; bsc `0x708205...09ee8f`; bsc `0x7a9cb0...5a5949`; bsc `0x7c8300...a1cacd`; bsc `0x7de0d9...f5dafb`; bsc `0x820cde...8f130f`; bsc `0x854a53...4d7b42`; bsc `0x87942c...ff59ab`; bsc `0x88fd42...e47c48`; bsc `0x8b2f09...006ba5`; bsc `0x90a093...c8adba`; bsc `0x928fa0...e00f22`; bsc `0x939e98...1d27b4`; bsc `0x999089...b08948`; bsc `0x9adf5d...129bef`; bsc `0x9b81d1...a80d94`; bsc `0x9c5326...8c71b4`; bsc `0x9e674e...be13a2`; bsc `0xa15baa...c26ee2`; bsc `0xa39093...16db1c`; bsc `0xa5ae84...6f1ace`; bsc `0xa652e6...e5eb2e`; bsc `0xaf7602...ebccc0`; bsc `0xb3a350...d4d3b0`; bsc `0xb3a4ce...6e8133`; bsc `0xb56aea...618d46`; bsc `0xb7ed4a...5d4fd7`; bsc `0xb845ec...61beea`; bsc `0xb97b73...db2d23`; bsc `0xbb2249...506559`; bsc `0xc0dad0...6ece15`; bsc `0xc4ef61...27decd`; bsc `0xc73009...3beb40`; bsc `0xcf8687...017c28`; bsc `0xcfa5b8...fcceef`; bsc `0xd14885...acbfdc`; bsc `0xd6eec9...dac25c`; bsc `0xe4b90b...9a1c86`; bsc `0xe6ec7a...13c947`; bsc `0xe983cf...38e19a`; bsc `0xeaa4a8...e557ca`; bsc `0xeb23d8...eb0470`; bsc `0xf476da...4eeae8`; bsc `0xf701a4...09962e`; bsc `0xfafed6...51f3d5`; bsc `0xfcda28...df4031`; bsc `0xfdcebc...a65a22` | ⚠️ Unaudited |
| GErc20Delegator | token | bsc | 4 deployments: bsc [`0x2acaf6...b4785b`](./contracts/bsc-56/0x2acaf66e67876d18cc5a27eb90aa32b06ab4785b/); bsc `0x5e11ec...d9014b`; bsc `0x84a785...ae7d00`; bsc `0xe58aa5...f925df` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | core_logic | bsc | 28 deployments: bsc [`0x03574c...56c0e5`](./contracts/bsc-56/0x03574cb638951ed6f4ee389cac4c58c09956c0e5/); bsc `0x07923b...f37c43`; bsc `0x088c9e...ee9909`; bsc `0x09da19...285e47`; bsc `0x0fef45...84ad3b`; bsc `0x1b71bd...d2fc52`; bsc `0x2c7ea7...0bfb1d`; bsc `0x2c9f2b...f96047`; bsc `0x30a2a3...5f1527`; bsc `0x328237...29a124`; bsc `0x46ec39...cfdef2`; bsc `0x536af9...a4b1af`; bsc `0x5c4c2a...639ffd`; bsc `0x6867fa...234f92`; bsc `0x710679...42ecb1`; bsc `0x7c3a30...d0ed9a`; bsc `0x888d5d...8fe527`; bsc `0x893fcf...05ce9a`; bsc `0x966dec...598fa7`; bsc `0x98fd55...f16e72`; bsc `0x9fc9d7...ee4fa4`; bsc `0xadb34c...d044a8`; bsc `0xbf67a5...66c0fa`; bsc `0xda93ad...6b12d2`; bsc `0xe18da3...b98e06`; bsc `0xe49425...b131f6`; bsc `0xf6a5c2...53275d`; bsc `0xff9653...88e93f` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | core_logic | bsc | 14 deployments: bsc [`0x28c55a...77c363`](./contracts/bsc-56/0x28c55ae3f24c6f7e45d63714421fd1c88e77c363/); bsc `0x39d5c9...3b5b71`; bsc `0x5b80c2...21dd1f`; bsc `0x5d39c7...b24681`; bsc `0x60172b...7747e9`; bsc `0x60a895...5219a1`; bsc `0x78cb24...89e483`; bsc `0x7fdc0f...f969a8`; bsc `0x9d5e7f...fe12ee`; bsc `0x9d73e1...ce611c`; bsc `0xca1d63...de23dd`; bsc `0xdadd91...646eef`; bsc `0xe5b392...423794`; bsc `0xe988c5...3b7843` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | core_logic | bsc | 42 deployments: bsc [`0x05e148...695a39`](./contracts/bsc-56/0x05e148f1040728ef07e0b4cec33c4b20aa695a39/); bsc `0x2e54c8...2e6e07`; bsc `0x31636e...cd63e9`; bsc `0x33933b...a4e925`; bsc `0x349629...09fcb1`; bsc `0x3edbae...50939e`; bsc `0x4027a5...7a6e6d`; bsc `0x4b06ab...d759ae`; bsc `0x552ccc...5da3a9`; bsc `0x5b14aa...d32f68`; bsc `0x64ee24...68828b`; bsc `0x6da3e8...491a94`; bsc `0x7113a7...13663d`; bsc `0x7520ec...3edcfc`; bsc `0x763ba9...fc4bea`; bsc `0x79d84e...38fce2`; bsc `0x7ab46a...0a262a`; bsc `0x7cfdb0...564769`; bsc `0x7d892d...648bf9`; bsc `0x7df2dc...75232d`; bsc `0x82656f...8da594`; bsc `0x872e64...3572aa`; bsc `0x8e8720...83f8e6`; bsc `0x95a20e...a03a9d`; bsc `0x9658eb...ea6772`; bsc `0xaa3753...572fcc`; bsc `0xaf2773...633279`; bsc `0xb06351...93a3ea`; bsc `0xb13191...b3cd07`; bsc `0xbea718...bf2916`; bsc `0xc6aa19...316cb0`; bsc `0xd0121b...20a4c3`; bsc `0xd6678a...2c2f63`; bsc `0xe88e0e...8d2ae2`; bsc `0xeac54d...f80068`; bsc `0xed9a27...0f7637`; bsc `0xf23c7d...675c39`; bsc `0xf6c105...b1efa0`; bsc `0xf7d54b...c7d66a`; bsc `0xf9b1b6...38356e`; bsc `0xffe80f...b98b19`; bsc `0xffe99a...0a96bb` | ⚠️ Unaudited |
| AirdropContract | operational_periphery | bsc | [`0xb76ab2...c3cc61`](./contracts/bsc-56/0xb76ab2b7bcb2879283df6940a9504682e1c3cc61/) | ⚠️ Unaudited |
| AQUA | unknown | bsc | [`0x72b7d6...d91991`](./contracts/bsc-56/0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | [`0x39723e...735caa`](./contracts/bsc-56/0x39723ed2c3f2820d713789e9da6aaafe59735caa/) | ⚠️ Unaudited |
| ConvertToBoost | unknown | bsc | 12 deployments: bsc [`0x27ea17...698346`](./contracts/bsc-56/0x27ea1773da535480aef1c90fb06bab4fc0698346/); bsc `0x2cfed1...b2ab6d`; bsc `0x2e24c7...1b338d`; bsc `0x79c133...e18151`; bsc `0x7a91c0...75366b`; bsc `0x7aff5f...25d2d6`; bsc `0x866ad5...7bf3ea`; bsc `0x87d573...fb5849`; bsc `0x8dc2fe...676d03`; bsc `0xa8dd55...c11824`; bsc `0xe931f7...e543c5`; bsc `0xf5f596...961041` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | bsc | 11 deployments: bsc [`0x0956f1...c2d400`](./contracts/bsc-56/0x0956f18a7cf4af80ff003d497f907025eec2d400/); bsc `0x1e41b7...bd09c3`; bsc `0x1e6762...04f8eb`; bsc `0x20c340...d06b46`; bsc `0x25ab12...e5aaa5`; bsc `0x2c7dc9...1cbf72`; bsc `0x4d25ab...c5687b`; bsc `0x7f7c6f...f2cf85`; bsc `0xa41ab6...218e5b`; bsc `0xc2f549...17e778`; bsc `0xe54e8b...888a81` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | 3 deployments: bsc [`0x2977e1...cab225`](./contracts/bsc-56/0x2977e10ff38bed7b62a0e64c6446fff11bcab225/); bsc `0x584f74...c6fa83`; bsc `0xf3aa34...841024` | ⚠️ Unaudited |
| Gamma | unknown | bsc | [`0xb3cb6d...607f15`](./contracts/bsc-56/0xb3cb6d2f8f2fde203a022201c81a96c167607f15/) | ⚠️ Unaudited |
| Gammatroller | unknown | bsc | 8 deployments: bsc [`0x0577c2...652a7a`](./contracts/bsc-56/0x0577c2ee36552a3e0757a1c4d12a170a89652a7a/); bsc `0x06d8a2...9aaa95`; bsc `0x1e0c9d...6165a3`; bsc `0x368b81...2ac6cb`; bsc `0x62282d...af28f4`; bsc `0x715310...874289`; bsc `0xd28236...9975e0`; bsc `0xf54f9e...bb9a83` | ⚠️ Unaudited |
| GBNB | unknown | bsc | 5 deployments: bsc [`0x190354...ebdb29`](./contracts/bsc-56/0x190354707ad8221be30bf5f097fa51c9b1ebdb29/); bsc `0x246647...62082f`; bsc `0x34360e...02f8f8`; bsc `0x6ecf55...000d40`; bsc `0xf610c0...e724b3` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | bsc | 4 deployments: bsc [`0x471c42...7f1bd5`](./contracts/bsc-56/0x471c4240a0d9cbf33136457a5287cf9d227f1bd5/); bsc `0x8f1a40...d93604`; bsc `0xdb6f9e...8566f5`; bsc `0xeb0576...8c0f5c` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | bsc | 9 deployments: bsc [`0x09535e...cf4b55`](./contracts/bsc-56/0x09535e43da14ffc54bf85ed6de4b65028ccf4b55/); bsc `0x2238ac...cafd67`; bsc `0x264a91...498f3b`; bsc `0x3c4787...5e37f3`; bsc `0x513062...059ba1`; bsc `0x52a62b...345444`; bsc `0x79333d...ef1439`; bsc `0x8c7e39...ac8265`; bsc `0xb46bf9...051c0f` | ⚠️ Unaudited |
| PlanetFarm | unknown | bsc | 37 deployments: bsc [`0x0116b4...8c7039`](./contracts/bsc-56/0x0116b4203dbe73a255627134f24072f3918c7039/); bsc `0x076e74...7b8edc`; bsc `0x221a5e...5b9202`; bsc `0x302ab4...94681b`; bsc `0x3336cd...38d303`; bsc `0x36f344...fa64ee`; bsc `0x405960...dfc22d`; bsc `0x449a6b...a118ce`; bsc `0x4c24bc...8dc6ca`; bsc `0x4f6bd1...5f0b74`; bsc `0x5b9d16...a02612`; bsc `0x6aa76c...3ae877`; bsc `0x7399c0...b9f163`; bsc `0x73c6b8...6da164`; bsc `0x74f3c5...e4696d`; bsc `0x78e1c0...cca458`; bsc `0x7bf079...36588e`; bsc `0x7c18c2...c0bb2c`; bsc `0x84a246...a7b091`; bsc `0x9e51a5...1ce84d`; bsc `0xa014ad...34f712`; bsc `0xa08a8b...9674b2`; bsc `0xa1e6ed...31adad`; bsc `0xa2ee3a...b1ab18`; bsc `0xab20dd...9ce0f1`; bsc `0xad4169...db8dbc`; bsc `0xbe45ad...279abc`; bsc `0xbe88fd...31a7ca`; bsc `0xc0a1e4...4de150`; bsc `0xc757ea...d7a75f`; bsc `0xd6358d...e66171`; bsc `0xdf0a03...dd6c4d`; bsc `0xf37f4a...ba4324`; bsc `0xf5ed1c...bbd1b7`; bsc `0xf631de...5efd83`; bsc `0xf7f60e...d9f1de`; bsc `0xf9800a...84d80c` | ⚠️ Unaudited |
| PlanetFinance | unknown | bsc | 2 deployments: bsc [`0x0ac58f...00a933`](./contracts/bsc-56/0x0ac58fd25f334975b1b61732cf79564b6200a933/); bsc `0xb87f70...41b53d` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | core_logic | bsc | 4 deployments: bsc [`0x4d8c3c...c482d0`](./contracts/bsc-56/0x4d8c3cff20f9154b6e33222ffcf15d601cc482d0/); bsc `0x6e8b65...abf7af`; bsc `0x8ece8a...5c9c1a`; bsc `0xc5760f...8e8177` | ⚠️ Unaudited |
| PlanetMigrateV3 | unknown | bsc | 4 deployments: bsc [`0x17c1c4...3e5d0c`](./contracts/bsc-56/0x17c1c4888c50c1247011dae2e0d4f0bbf93e5d0c/); bsc `0x2694f8...783356`; bsc `0x9b3145...cbd5b5`; bsc `0xabf896...c16e2b` | ⚠️ Unaudited |
| PlanetZapOneInch | adapter | bsc | 2 deployments: bsc [`0x108dae...6893a4`](./contracts/bsc-56/0x108daeb2036addd7fd3676354915c973966893a4/); bsc `0x12f883...0d1591` | ⚠️ Unaudited |
| pToken | token | bsc | 8 deployments: bsc [`0x170c69...697551`](./contracts/bsc-56/0x170c6948fcdbae4e59b2b617a95e9c5e7d697551/); bsc `0x4aa656...97cc72`; bsc `0x6ff382...faa8aa`; bsc `0x733fa5...8c605a`; bsc `0x7941e2...864925`; bsc `0x95836a...d312a0`; bsc `0xb68d3b...481186`; bsc `0xe8ed63...a09385` | ⚠️ Unaudited |
| Reservoir | unknown | bsc | 5 deployments: bsc [`0x0faeab...d77ff4`](./contracts/bsc-56/0x0faeab379586404a2a621e25dda195c99dd77ff4/); bsc `0x50b006...7b3795`; bsc `0x61c53a...6e9f8a`; bsc `0x7cf0e1...74660f`; bsc `0xc8f476...ad775b` | ⚠️ Unaudited |
| Tokenomics_Automation | token | bsc | 5 deployments: bsc [`0x443906...dab095`](./contracts/bsc-56/0x443906f8982a013548217e81ed1e8a8bb2dab095/); bsc `0xb2549a...36126a`; bsc `0xe7144d...b317b7`; bsc `0xf3ae30...094ed4`; bsc `0xffcee4...92edf8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x0fb8d9...7d14ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x89b234...b52f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8cd21d...a84050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x985283...cebe03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa58aae...7142d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc4929e...acb810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb68c8...67b8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4a7ee...b7e51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x03574c...56c0e5`](./contracts/bsc-56/0x03574cb638951ed6f4ee389cac4c58c09956c0e5/) | Locked_Strategy_GAMMA | core_logic | $23,438.60 | Verified native implementation with $23,438.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28c55a...77c363`](./contracts/bsc-56/0x28c55ae3f24c6f7e45d63714421fd1c88e77c363/) | Locked_Strategy_Penalty_GAMMA | core_logic | $93.19 | Verified native implementation with $93.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05e148...695a39`](./contracts/bsc-56/0x05e148f1040728ef07e0b4cec33c4b20aa695a39/) | AggregatedStrategy_GAMMA | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb76ab2...c3cc61`](./contracts/bsc-56/0xb76ab2b7bcb2879283df6940a9504682e1c3cc61/) | AirdropContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72b7d6...d91991`](./contracts/bsc-56/0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991/) | AQUA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x39723e...735caa`](./contracts/bsc-56/0x39723ed2c3f2820d713789e9da6aaafe59735caa/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27ea17...698346`](./contracts/bsc-56/0x27ea1773da535480aef1c90fb06bab4fc0698346/) | ConvertToBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0956f1...c2d400`](./contracts/bsc-56/0x0956f18a7cf4af80ff003d497f907025eec2d400/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb3cb6d...607f15`](./contracts/bsc-56/0xb3cb6d2f8f2fde203a022201c81a96c167607f15/) | Gamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0577c2...652a7a`](./contracts/bsc-56/0x0577c2ee36552a3e0757a1c4d12a170a89652a7a/) | Gammatroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x190354...ebdb29`](./contracts/bsc-56/0x190354707ad8221be30bf5f097fa51c9b1ebdb29/) | GBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09535e...cf4b55`](./contracts/bsc-56/0x09535e43da14ffc54bf85ed6de4b65028ccf4b55/) | PlanetDiscountDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0116b4...8c7039`](./contracts/bsc-56/0x0116b4203dbe73a255627134f24072f3918c7039/) | PlanetFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ac58f...00a933`](./contracts/bsc-56/0x0ac58fd25f334975b1b61732cf79564b6200a933/) | PlanetFinance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x17c1c4...3e5d0c`](./contracts/bsc-56/0x17c1c4888c50c1247011dae2e0d4f0bbf93e5d0c/) | PlanetMigrateV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x108dae...6893a4`](./contracts/bsc-56/0x108daeb2036addd7fd3676354915c973966893a4/) | PlanetZapOneInch | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x170c69...697551`](./contracts/bsc-56/0x170c6948fcdbae4e59b2b617a95e9c5e7d697551/) | pToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0faeab...d77ff4`](./contracts/bsc-56/0x0faeab379586404a2a621e25dda195c99dd77ff4/) | Reservoir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
