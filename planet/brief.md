# Agentic Audit Brief: Planet

## Project Overview

- Project: Planet (`planet`)
- Website: [https://app.planet.finance/](https://app.planet.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.190Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 56 unique implementations (128 raw deployments)
- DeFi Llama TVL: $1,658,794.00
- On-chain TVL (included contracts): $1,332,809.80
- TVL by chain: Bsc $1,332,809.80

## Project Description

Dexs. Structurally: 31 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 9 common project-authored base contract(s) (gtokeninterface, gtokenstorage, exponentialnoerror). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 308; live-surface contracts included: 95 (87 live, 8 unknown).
- Excluded by liveness: 213 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/46 (8.7%)
- Deployed-live implementations: 48 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/48
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 56
- Raw deployments: 128
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,332,809.80
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 5 | 10.4% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AquaFarm | unknown | bsc | n/a | [`0xc46342...e9cb85`](./contracts/bsc-56/0xc46342b50049d470d123e1da966504d973e9cb85/) | ✅ Audited |
| AquaStrategy_AQUA | unknown | bsc | n/a | 5 deployments: bsc [`0x76263d...009eed`](./contracts/bsc-56/0x76263d34c2b996f88e3de6a4c625d14cce009eed/); bsc `0xac3988...347c74`; bsc `0xb143db...bf29da`; bsc `0xc7038a...9856f8`; bsc `0xee2059...8c2b93` | ✅ Audited |
| AquaStrategy_PCS | unknown | bsc | n/a | 4 deployments: bsc [`0x1e8592...4bad96`](./contracts/bsc-56/0x1e85923ec3101e4d0dc60cc473b21d76564bad96/); bsc `0x5ebbc2...285962`; bsc `0x82caef...46e8f7`; bsc `0xadbdf1...668619` | ✅ Audited |
| PlanetRouter | unknown | bsc | n/a | [`0xe11266...67b467`](./contracts/bsc-56/0xe112668191070467bdd0952ccbc650a2f467b467/) | ✅ Audited |
| TimelockController | unknown | bsc | n/a | 2 deployments: bsc [`0x084e9b...0df137`](./contracts/bsc-56/0x084e9b6928888a1d372b87e3d7bb3f90700df137/); bsc `0xc19f95...8de4ea` | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GErc20Delegate | token | bsc | n/a | 5 deployments: bsc [`0x045e2d...00a9c8`](./contracts/bsc-56/0x045e2df638ebec29130dd3be61161cba5f00a9c8/); bsc `0x9c5326...8c71b4`; bsc `0xb56aea...618d46`; bsc `0xc73009...3beb40`; bsc `0xe983cf...38e19a` | ⚠️ Unaudited |
| GErc20Delegate | token | bsc | n/a | [`0xcd221e...dc3fc7`](./contracts/bsc-56/0xcd221e1504442671671d3330cb8e916a5edc3fc7/) | ⚠️ Unaudited |
| GErc20Delegator | token | bsc | n/a | [`0xe58aa5...f925df`](./contracts/bsc-56/0xe58aa5826eb6e0568982018c0db833adbff925df/) | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | core_logic | bsc | n/a | 2 deployments: bsc [`0x60a895...5219a1`](./contracts/bsc-56/0x60a895073adc0e5f5a22c60bdfc584d79b5219a1/); bsc `0x78cb24...89e483` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 6 deployments: bsc [`0x2e54c8...2e6e07`](./contracts/bsc-56/0x2e54c8fa17954f51bec0249695c93afd072e6e07/); bsc `0x79d84e...38fce2`; bsc `0x7ab46a...0a262a`; bsc `0xaa3753...572fcc`; bsc `0xbea718...bf2916`; bsc `0xf6c105...b1efa0` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 6 deployments: bsc [`0x31636e...cd63e9`](./contracts/bsc-56/0x31636e47efe076b23dee7fd1d89c962deccd63e9/); bsc `0x7113a7...13663d`; bsc `0x763ba9...fc4bea`; bsc `0x7cfdb0...564769`; bsc `0xc6aa19...316cb0`; bsc `0xffe80f...b98b19` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 4 deployments: bsc [`0x33933b...a4e925`](./contracts/bsc-56/0x33933bad418bf695632db7a5b3fdaf5fafa4e925/); bsc `0x7520ec...3edcfc`; bsc `0x7d892d...648bf9`; bsc `0xe88e0e...8d2ae2` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 3 deployments: bsc [`0x349629...09fcb1`](./contracts/bsc-56/0x3496294f8ab14904cb5427556ae217ccfd09fcb1/); bsc `0x9658eb...ea6772`; bsc `0xd0121b...20a4c3` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x3edbae...50939e`](./contracts/bsc-56/0x3edbae9b2f565894a19cbf21d2f2b18f9d50939e/); bsc `0x4027a5...7a6e6d` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x4b06ab...d759ae`](./contracts/bsc-56/0x4b06ab63029fdf687c57dc95cc1164a96ad759ae/); bsc `0xb13191...b3cd07` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x5b14aa...d32f68`](./contracts/bsc-56/0x5b14aa5c2c25f3300340db11c3564d22ecd32f68/); bsc `0x95a20e...a03a9d` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x64ee24...68828b`](./contracts/bsc-56/0x64ee24e2461a5279810e752068360ebe2068828b/); bsc `0x872e64...3572aa` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x6da3e8...491a94`](./contracts/bsc-56/0x6da3e886df52d4e509167d82393a827ec2491a94/); bsc `0xeac54d...f80068` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 4 deployments: bsc [`0x7df2dc...75232d`](./contracts/bsc-56/0x7df2dc9c0bd9beade4823fb277b884466a75232d/); bsc `0x8e8720...83f8e6`; bsc `0xaf2773...633279`; bsc `0xffe99a...0a96bb` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | 3 deployments: bsc [`0xb06351...93a3ea`](./contracts/bsc-56/0xb06351e686aa3495d04db2c9776a4cd71493a3ea/); bsc `0xed9a27...0f7637`; bsc `0xf9b1b6...38356e` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | bsc | n/a | [`0xd6678a...2c2f63`](./contracts/bsc-56/0xd6678a6351757ad6cdb894d0f3097929dc2c2f63/) | ⚠️ Unaudited |
| AQUA | unknown | bsc | n/a | [`0x72b7d6...d91991`](./contracts/bsc-56/0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991/) | ⚠️ Unaudited |
| ConvertToBoost | unknown | bsc | n/a | 2 deployments: bsc [`0x2e24c7...1b338d`](./contracts/bsc-56/0x2e24c77279b55a343f1ebc8b94df5a69821b338d/); bsc `0x87d573...fb5849` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | bsc | n/a | 2 deployments: bsc [`0x0956f1...c2d400`](./contracts/bsc-56/0x0956f18a7cf4af80ff003d497f907025eec2d400/); bsc `0xa41ab6...218e5b` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | bsc | n/a | 2 deployments: bsc [`0x1e41b7...bd09c3`](./contracts/bsc-56/0x1e41b79deb60a2274ee366ee44e2f8fc8bbd09c3/); bsc `0x25ab12...e5aaa5` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | bsc | n/a | 2 deployments: bsc [`0x4d25ab...c5687b`](./contracts/bsc-56/0x4d25abefe31d769a9610b7b97a415e8ac7c5687b/); bsc `0x7f7c6f...f2cf85` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | 3 deployments: bsc [`0x2977e1...cab225`](./contracts/bsc-56/0x2977e10ff38bed7b62a0e64c6446fff11bcab225/); bsc `0x584f74...c6fa83`; bsc `0xf3aa34...841024` | ⚠️ Unaudited |
| Gamma | unknown | bsc | n/a | [`0xb3cb6d...607f15`](./contracts/bsc-56/0xb3cb6d2f8f2fde203a022201c81a96c167607f15/) | ⚠️ Unaudited |
| GBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x190354...ebdb29`](./contracts/bsc-56/0x190354707ad8221be30bf5f097fa51c9b1ebdb29/); bsc `0x246647...62082f` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 3 deployments: bsc [`0x088c9e...ee9909`](./contracts/bsc-56/0x088c9e8cc6a382d0ca6f3db01bd28dae0dee9909/); bsc `0x1b71bd...d2fc52`; bsc `0x9fc9d7...ee4fa4` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x09da19...285e47`](./contracts/bsc-56/0x09da19bb6e50e30478cc3a97750a2fc2b0285e47/); bsc `0xda93ad...6b12d2` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 5 deployments: bsc [`0x0fef45...84ad3b`](./contracts/bsc-56/0x0fef4584df237080a0de60eec12631f0a184ad3b/); bsc `0x5c4c2a...639ffd`; bsc `0x710679...42ecb1`; bsc `0xe18da3...b98e06`; bsc `0xff9653...88e93f` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 4 deployments: bsc [`0x2c7ea7...0bfb1d`](./contracts/bsc-56/0x2c7ea70259dd5153b7f8bab177126fce850bfb1d/); bsc `0x6867fa...234f92`; bsc `0x966dec...598fa7`; bsc `0xadb34c...d044a8` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 3 deployments: bsc [`0x2c9f2b...f96047`](./contracts/bsc-56/0x2c9f2b54d3bf969093c683619aa46c604bf96047/); bsc `0x893fcf...05ce9a`; bsc `0xbf67a5...66c0fa` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x30a2a3...5f1527`](./contracts/bsc-56/0x30a2a380b82df1773680059f3ac85964d55f1527/); bsc `0x536af9...a4b1af` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | bsc | n/a | 4 deployments: bsc [`0x7c3a30...d0ed9a`](./contracts/bsc-56/0x7c3a307d444c496f15526aef766534ca51d0ed9a/); bsc `0x888d5d...8fe527`; bsc `0xe49425...b131f6`; bsc `0xf6a5c2...53275d` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x28c55a...77c363`](./contracts/bsc-56/0x28c55ae3f24c6f7e45d63714421fd1c88e77c363/); bsc `0xdadd91...646eef` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x5d39c7...b24681`](./contracts/bsc-56/0x5d39c7b3cb80339edf9fee88c918abcfd5b24681/); bsc `0xca1d63...de23dd` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | bsc | n/a | 2 deployments: bsc [`0x7fdc0f...f969a8`](./contracts/bsc-56/0x7fdc0fb2c7ed9246d12c69df65c9f7cf35f969a8/); bsc `0x9d5e7f...fe12ee` | ⚠️ Unaudited |
| PlanetFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x0116b4...8c7039`](./contracts/bsc-56/0x0116b4203dbe73a255627134f24072f3918c7039/); bsc `0x405960...dfc22d` | ⚠️ Unaudited |
| PlanetFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x302ab4...94681b`](./contracts/bsc-56/0x302ab4534693598b649b79c56a7dad595094681b/); bsc `0xdf0a03...dd6c4d` | ⚠️ Unaudited |
| PlanetFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x3336cd...38d303`](./contracts/bsc-56/0x3336cd647e711f2db03901c24092e4117038d303/); bsc `0xf5ed1c...bbd1b7` | ⚠️ Unaudited |
| PlanetFarm | unknown | bsc | n/a | 2 deployments: bsc [`0xf37f4a...ba4324`](./contracts/bsc-56/0xf37f4aad86ddd9f361cd37a1575bc3e2fbba4324/); bsc `0xf7f60e...d9f1de` | ⚠️ Unaudited |
| PlanetFinance | unknown | bsc | n/a | 2 deployments: bsc [`0x0ac58f...00a933`](./contracts/bsc-56/0x0ac58fd25f334975b1b61732cf79564b6200a933/); bsc `0xb87f70...41b53d` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | unknown | bsc | n/a | 2 deployments: bsc [`0x4d8c3c...c482d0`](./contracts/bsc-56/0x4d8c3cff20f9154b6e33222ffcf15d601cc482d0/); bsc `0x6e8b65...abf7af` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | unknown | bsc | n/a | 2 deployments: bsc [`0x8ece8a...5c9c1a`](./contracts/bsc-56/0x8ece8a60e890a29aa0967a7f08dcae843b5c9c1a/); bsc `0xc5760f...8e8177` | ⚠️ Unaudited |
| PlanetPair | unknown | bsc | n/a | [`0x7cde1a...719f0f`](./contracts/bsc-56/0x7cde1a8ee90e7b03fbd554dfea9c341326719f0f/) | ⚠️ Unaudited |
| Tokenomics_Automation | unknown | bsc | n/a | 2 deployments: bsc [`0x443906...dab095`](./contracts/bsc-56/0x443906f8982a013548217e81ed1e8a8bb2dab095/); bsc `0xf3ae30...094ed4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0fb8d9...7d14ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89b234...b52f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cd21d...a84050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x985283...cebe03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58aae...7142d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4929e...acb810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb68c8...67b8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4a7ee...b7e51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | contract_name | 13 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x045e2d...00a9c8`](./contracts/bsc-56/0x045e2df638ebec29130dd3be61161cba5f00a9c8/) | GErc20Delegate | token | $1,141,433.16 | Verified native implementation with $1,141,433.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcd221e...dc3fc7`](./contracts/bsc-56/0xcd221e1504442671671d3330cb8e916a5edc3fc7/) | GErc20Delegate | token | $191,012.79 | Verified native implementation with $191,012.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe58aa5...f925df`](./contracts/bsc-56/0xe58aa5826eb6e0568982018c0db833adbff925df/) | GErc20Delegator | token | $289.45 | Verified native implementation with $289.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e54c8...2e6e07`](./contracts/bsc-56/0x2e54c8fa17954f51bec0249695c93afd072e6e07/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31636e...cd63e9`](./contracts/bsc-56/0x31636e47efe076b23dee7fd1d89c962deccd63e9/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x33933b...a4e925`](./contracts/bsc-56/0x33933bad418bf695632db7a5b3fdaf5fafa4e925/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x349629...09fcb1`](./contracts/bsc-56/0x3496294f8ab14904cb5427556ae217ccfd09fcb1/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3edbae...50939e`](./contracts/bsc-56/0x3edbae9b2f565894a19cbf21d2f2b18f9d50939e/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b06ab...d759ae`](./contracts/bsc-56/0x4b06ab63029fdf687c57dc95cc1164a96ad759ae/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b14aa...d32f68`](./contracts/bsc-56/0x5b14aa5c2c25f3300340db11c3564d22ecd32f68/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64ee24...68828b`](./contracts/bsc-56/0x64ee24e2461a5279810e752068360ebe2068828b/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6da3e8...491a94`](./contracts/bsc-56/0x6da3e886df52d4e509167d82393a827ec2491a94/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7df2dc...75232d`](./contracts/bsc-56/0x7df2dc9c0bd9beade4823fb277b884466a75232d/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb06351...93a3ea`](./contracts/bsc-56/0xb06351e686aa3495d04db2c9776a4cd71493a3ea/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6678a...2c2f63`](./contracts/bsc-56/0xd6678a6351757ad6cdb894d0f3097929dc2c2f63/) | AggregatedStrategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72b7d6...d91991`](./contracts/bsc-56/0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991/) | AQUA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e24c7...1b338d`](./contracts/bsc-56/0x2e24c77279b55a343f1ebc8b94df5a69821b338d/) | ConvertToBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0956f1...c2d400`](./contracts/bsc-56/0x0956f18a7cf4af80ff003d497f907025eec2d400/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e41b7...bd09c3`](./contracts/bsc-56/0x1e41b79deb60a2274ee366ee44e2f8fc8bbd09c3/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d25ab...c5687b`](./contracts/bsc-56/0x4d25abefe31d769a9610b7b97a415e8ac7c5687b/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb3cb6d...607f15`](./contracts/bsc-56/0xb3cb6d2f8f2fde203a022201c81a96c167607f15/) | Gamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x190354...ebdb29`](./contracts/bsc-56/0x190354707ad8221be30bf5f097fa51c9b1ebdb29/) | GBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x088c9e...ee9909`](./contracts/bsc-56/0x088c9e8cc6a382d0ca6f3db01bd28dae0dee9909/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09da19...285e47`](./contracts/bsc-56/0x09da19bb6e50e30478cc3a97750a2fc2b0285e47/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fef45...84ad3b`](./contracts/bsc-56/0x0fef4584df237080a0de60eec12631f0a184ad3b/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c7ea7...0bfb1d`](./contracts/bsc-56/0x2c7ea70259dd5153b7f8bab177126fce850bfb1d/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c9f2b...f96047`](./contracts/bsc-56/0x2c9f2b54d3bf969093c683619aa46c604bf96047/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x30a2a3...5f1527`](./contracts/bsc-56/0x30a2a380b82df1773680059f3ac85964d55f1527/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c3a30...d0ed9a`](./contracts/bsc-56/0x7c3a307d444c496f15526aef766534ca51d0ed9a/) | Locked_Strategy_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28c55a...77c363`](./contracts/bsc-56/0x28c55ae3f24c6f7e45d63714421fd1c88e77c363/) | Locked_Strategy_Penalty_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d39c7...b24681`](./contracts/bsc-56/0x5d39c7b3cb80339edf9fee88c918abcfd5b24681/) | Locked_Strategy_Penalty_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7fdc0f...f969a8`](./contracts/bsc-56/0x7fdc0fb2c7ed9246d12c69df65c9f7cf35f969a8/) | Locked_Strategy_Penalty_GAMMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0116b4...8c7039`](./contracts/bsc-56/0x0116b4203dbe73a255627134f24072f3918c7039/) | PlanetFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x302ab4...94681b`](./contracts/bsc-56/0x302ab4534693598b649b79c56a7dad595094681b/) | PlanetFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3336cd...38d303`](./contracts/bsc-56/0x3336cd647e711f2db03901c24092e4117038d303/) | PlanetFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf37f4a...ba4324`](./contracts/bsc-56/0xf37f4aad86ddd9f361cd37a1575bc3e2fbba4324/) | PlanetFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ac58f...00a933`](./contracts/bsc-56/0x0ac58fd25f334975b1b61732cf79564b6200a933/) | PlanetFinance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d8c3c...c482d0`](./contracts/bsc-56/0x4d8c3cff20f9154b6e33222ffcf15d601cc482d0/) | PlanetLiquidStakingAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ece8a...5c9c1a`](./contracts/bsc-56/0x8ece8a60e890a29aa0967a7f08dcae843b5c9c1a/) | PlanetLiquidStakingAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7cde1a...719f0f`](./contracts/bsc-56/0x7cde1a8ee90e7b03fbd554dfea9c341326719f0f/) | PlanetPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x443906...dab095`](./contracts/bsc-56/0x443906f8982a013548217e81ed1e8a8bb2dab095/) | Tokenomics_Automation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=13

Fork inheritance lineage and inherited audits are included when available.
