# Agentic Audit Brief: Superfluid

## Project Overview

- Project: Superfluid (`superfluid`)
- Website: [https://superfluid.org/](https://superfluid.org/)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-06-18T17:28:34.139Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: arbitrum, avalanche, base, bsc, celo, ethereum, gnosis, optimism, polygon, scroll
- Contract surface: 101 unique implementations (711 raw deployments)
- DeFi Llama TVL: $4,035,516.18
- On-chain TVL (included contracts): $1,651,414.69
- TVL by chain: Gnosis $1,651,394.08 | Ethereum $20.60

## Project Description

Superfluid is a protocol for real-time, continuous money streams and instant distributions on EVM chains. It enables payments, subscriptions, and token vesting that flow by the second, along with one-to-many distributions and a pool-based distribution model.

### Architecture

The two families share the same core contracts and supporting infrastructure, indicating they are not distinct product lines but rather different organizational views of the same protocol. The 'Table of Contract Addresses' family appears to be a flat listing of all contracts, while the 'Superfluid' family groups them under a single umbrella, with no separate product families identified.

## Contract Surface Quality

- Indexed contracts: 2532; live-surface contracts included: 711 (650 live, 61 unknown).
- Excluded by liveness: 1509 inactive, 312 singleton, 0 uninitialized.
- Deployment units: 2/120 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 3/39.

## Audit Coverage Summary

- Verified implementations audited: 14/61 (23.0%)
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 1
- Unverified implementations: 40
- Unique implementations: 101
- Raw deployments: 711
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 2 fresh, 1 aging, 5 stale, 0 unknown
- Tier 1 coverage: 6.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 8 | 13.1% | 2022-02 |
| PeckShield | Tier 2 | 5 | 8.2% | 2021-01 |
| Trail of Bits | Tier 1 | 4 | 6.6% | 2023-12 |
| unknown | Tier 2 | 4 | 6.6% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SuperToken | token | gnosis | unit-38409 | [`0x63e629...b07d51`](./contracts/gnosis-100/0x63e62989d9eb2d37dfdb1f93a22f063635b07d51/) | ✅ Audited |
| SuperToken | token | polygon | n/a | 41 deployments: ethereum `0x78743a...2e3c2d`; ethereum `0x96b82b...c2a0d4`; ethereum `0xb75bd1...c9cef6`; ethereum `0xb7bfa1...4a32cf`; ethereum `0xd7ffba...2fc58a`; optimism `0x0d35fc...c6277f`; optimism `0x2e1d01...d5ae93`; optimism `0xd4f3d5...5b1549`; optimism `0xfcb633...94a990`; bsc `0x0742de...e772ea`; bsc `0x1c971e...7c9508`; bsc `0x31d584...75e9ec`; bsc `0x9daf7b...391693`; polygon [`0x036ea0...50ff74`](./contracts/polygon-137/0x036ea0dca13615c2a8b48b7a3407cc255d50ff74/); polygon `0x28dc4c...8c8b65`; polygon `0x392914...fd3788`; polygon `0x3fa9e8...e11105`; polygon `0x74e4e8...92181a`; polygon `0x7daa2a...b1436a`; polygon `0x90ce40...e64d08`; polygon `0xf59bf2...245c73`; polygon `0xff2c72...6ff255`; base `0x37a024...f212b7`; base `0x5f4f9a...5b6058`; base `0xaaeb86...05c9fc`; base `0xd59ba9...6586f9`; base `0xeb796b...418603`; arbitrum `0x295cef...ec76b1`; arbitrum `0x85a58e...bad55f`; arbitrum `0xe68143...1e960e`; arbitrum `0xe9748b...60ff47`; celo `0x165152...2e623e`; celo `0x87be92...027c5b`; celo `0x996766...bb18c1`; celo `0x9d63e7...9b0fd3`; avalanche `0x165152...2e623e`; avalanche `0x23e9a1...7bd52a`; avalanche `0x37a024...f212b7`; avalanche `0x7b9b78...4f8c6d`; avalanche `0xb688e4...5d2013`; avalanche `0xfcb633...94a990` | ✅ Audited |
| BatchLiquidator | operational_periphery | bsc | n/a | 9 deployments: ethereum `0x42b709...f06481`; optimism `0x84956c...2215ce`; bsc [`0x27636f...773be5`](./contracts/bsc-56/0x27636f8e129cdd4cca0f30e2b4c116ddac773be5/); polygon `0xa7afdc...f64e19`; base `0x6b008b...88b6f9`; arbitrum `0x922441...b07ce7`; celo `0xcb0ff4...8417a6`; avalanche `0x3b3876...af824c`; scroll `0x2eaa49...2077b5` | ✅ Audited |
| ConstantFlowAgreementV1 | unknown | polygon | n/a | 42 deployments: ethereum `0x20d9e5...8e020b`; ethereum `0x62ce6f...4081ee`; ethereum `0xce106a...a5411d`; ethereum `0xdc062a...d9a885`; ethereum `0xe821ec...3a53f0`; optimism `0x23e9a1...7bd52a`; optimism `0x66e754...f25863`; optimism `0x8ca302...37f226`; optimism `0xc89972...b4dc04`; bsc `0x5b81ff...41e9ed`; bsc `0x6b5c75...f41030`; bsc `0x886d2c...6e5e02`; bsc `0x996766...bb18c1`; bsc `0xe0c565...1c74e6`; polygon [`0x1d25c0...90d2e6`](./contracts/polygon-137/0x1d25c063ed90a365fdfbf98bb91510198a90d2e6/); polygon `0x35e032...462cf3`; polygon `0x6cb0e1...3efd80`; polygon `0x81325c...2e309c`; polygon `0x9c06f2...f49b7e`; polygon `0xde0b84...d4a4c6`; polygon `0xe0c565...1c74e6`; polygon `0xe7d4bd...9eb714`; polygon `0xe89239...6aea54`; polygon `0xf36688...62a629`; base `0x3903df...13b3b6`; base `0x5a2362...f6ed42`; base `0xb3fb82...415275`; base `0xc2aa65...63943c`; arbitrum `0x44f6d4...86f4ec`; arbitrum `0x5a2362...f6ed42`; arbitrum `0xbb815b...a13c37`; arbitrum `0xd73afb...b77b5a`; celo `0x57897b...8509e5`; celo `0xd571f5...c9e141`; celo `0xf0e163...a3e68e`; celo `0xf36688...62a629`; avalanche `0x5a2362...f6ed42`; avalanche `0x8ce0ec...3568bd`; avalanche `0xd07ed0...0cae54`; avalanche `0xe72f28...c920db`; avalanche `0xf0e163...a3e68e`; avalanche `0xffd0f6...ca17f3` | ✅ Audited |
| FlowScheduler | unknown | arbitrum | n/a | 4 deployments: ethereum `0xaa0cd3...5accda`; polygon `0x55f775...98264d`; base `0xc72ced...0811ee`; arbitrum [`0x3fa8b6...1f97a1`](./contracts/arbitrum-42161/0x3fa8b653f9abf91428800c0ba0f8d145a71f97a1/) | ✅ Audited |
| GeneralDistributionAgreementV1 | unknown | arbitrum | n/a | 41 deployments: ethereum `0x463090...d6eb5a`; ethereum `0x862f59...0e6cdd`; ethereum `0xd5529d...030879`; ethereum `0xe7374b...152e33`; ethereum `0xf10e52...62a3d0`; optimism `0x57897b...8509e5`; optimism `0xad0a83...0bd6af`; optimism `0xb0ee14...7be313`; optimism `0xb8065d...8584eb`; optimism `0xd73afb...b77b5a`; bsc `0x275bae...e5790c`; bsc `0x44f6d4...86f4ec`; bsc `0x816509...95f957`; bsc `0x8e03f0...8f4b53`; bsc `0xd09302...b3f4a6`; polygon `0x2e733b...bde233`; polygon `0x323009...e5a55b`; polygon `0x413243...7406ad`; polygon `0x4e274e...a345e8`; polygon `0xa4f5a8...d0ec5b`; base `0x2c916f...965b67`; base `0x4c37d6...61534c`; base `0x886d2c...6e5e02`; base `0xd571f5...c9e141`; base `0xff04c0...2845d1`; arbitrum [`0x0d35fc...c6277f`](./contracts/arbitrum-42161/0x0d35fc1c2031b63ee9f068a417e61c9626c6277f/); arbitrum `0x3e834a...0e3e80`; arbitrum `0x5ab84e...d3b3e4`; arbitrum `0xf17e88...65f221`; arbitrum `0xff04c0...2845d1`; celo `0x2cdd45...c3bd8d`; celo `0x4c78ca...7e4d81`; celo `0x96c3c2...2834d7`; celo `0xa347bd...38e178`; celo `0xee79d1...fc3eb8`; avalanche `0x34b706...17e17c`; avalanche `0x814618...316c40`; avalanche `0x9a1977...1ec600`; avalanche `0xd1d06b...50b022`; avalanche `0xee79d1...fc3eb8`; avalanche `0xff04c0...2845d1` | ✅ Audited |
| Superfluid | unknown | optimism | n/a | 55 deployments: ethereum `0x353890...4d9c5f`; ethereum `0x70bbb7...778637`; ethereum `0xb9b8cd...557e61`; ethereum `0xda368d...a60032`; ethereum `0xf2b4e8...e87fd2`; optimism [`0x02cf84...ef657f`](./contracts/optimism-10/0x02cf8483b15eb1211235d8bb5041be5024ef657f/); optimism `0x816509...95f957`; optimism `0x886d2c...6e5e02`; optimism `0xb66334...a1432b`; optimism `0xe68143...1e960e`; bsc `0x3c1bcb...cbab2e`; bsc `0x87be92...027c5b`; bsc `0xaaeb86...05c9fc`; bsc `0xbb815b...a13c37`; bsc `0xc8d7a0...e044a2`; bsc `0xe33944...8db0d0`; bsc `0xfc5fa7...91497c`; polygon `0x372b31...681a93`; polygon `0x404627...a6edb1`; polygon `0x5ba258...02c5ee`; polygon `0xa99a19...4f5de2`; polygon `0xc5dc33...0cf1d6`; polygon `0xc79d70...2da3bf`; polygon `0xe01f87...fc2433`; polygon `0xe08a86...21eadf`; polygon `0xe33944...8db0d0`; polygon `0xe72830...3acd08`; polygon `0xebbe9a...92897f`; polygon `0xf1bc22...eed2dc`; polygon `0xf4a0ce...aa3ed2`; polygon `0xf94152...56a657`; base `0x1bbc06...3368be`; base `0x22b06d...eba5fa`; base `0x39dc66...760580`; base `0xa03226...7b1ef3`; base `0xd07ed0...0cae54`; arbitrum `0x22b06d...eba5fa`; arbitrum `0x400d31...7014b9`; arbitrum `0x9c1adb...afd3b9`; arbitrum `0xd6dd13...7644ad`; arbitrum `0xffd0f6...ca17f3`; celo `0x3b526b...8351ac`; celo `0x5a2362...f6ed42`; celo `0x89587b...1976ee`; celo `0x8e03f0...8f4b53`; celo `0x97620d...4eed99`; celo `0x9daf7b...391693`; avalanche `0x22b06d...eba5fa`; avalanche `0x22f391...beacaa`; avalanche `0x2f93fb...aba41b`; avalanche `0x9daf7b...391693`; avalanche `0xd54799...9d4868`; avalanche `0xde6203...fc7a9e`; avalanche `0xe2b207...687896`; avalanche `0xf36688...62a629` | ✅ Audited |
| SuperfluidPool | core_logic | bsc | n/a | 41 deployments: ethereum `0x6fc99f...1d2797`; ethereum `0x7d7258...bd1f90`; ethereum `0x9a65e8...ee7b3d`; ethereum `0x9c3ba8...57e0a6`; ethereum `0xab1286...295562`; optimism `0x534247...989d46`; optimism `0x5b81ff...41e9ed`; optimism `0x6f55cd...2fbb58`; optimism `0xd226e7...0db5ce`; optimism `0xd5d5cf...13c38e`; bsc [`0x0fcddf...b59d61`](./contracts/bsc-56/0x0fcddf2d5023219145e902cb3b0c44159ab59d61/); bsc `0x57897b...8509e5`; bsc `0x83fd14...dd82d8`; bsc `0x91bd02...7796fc`; bsc `0x93839e...246328`; bsc `0xb0ee14...7be313`; polygon `0x1cdb58...d4cb3f`; polygon `0x4f612e...68b9da`; polygon `0x50a859...8e62d0`; polygon `0x5426db...77130c`; polygon `0xfa5846...f7232f`; base `0x400d31...7014b9`; base `0x745500...8b443b`; base `0x85a58e...bad55f`; base `0xb688e4...5d2013`; base `0xc3069b...bcce67`; arbitrum `0x2616c0...9fe547`; arbitrum `0x2cdd45...c3bd8d`; arbitrum `0xee79d1...fc3eb8`; arbitrum `0xf4101b...e96740`; celo `0x37a024...f212b7`; celo `0x5eae10...4e2c49`; celo `0x63af16...36acf1`; celo `0xd73afb...b77b5a`; celo `0xebd331...b60032`; avalanche `0x3998d3...f0428c`; avalanche `0x5eae10...4e2c49`; avalanche `0x85a58e...bad55f`; avalanche `0x85fe79...d29386`; avalanche `0xa4806d...881ed5`; avalanche `0xaaeb86...05c9fc` | ✅ Audited |
| SuperfluidPoolDeployerLibrary | core_logic | arbitrum | n/a | 48 deployments: ethereum `0x149744...b8a0f1`; ethereum `0x225d66...48c389`; ethereum `0x614af7...5815a5`; ethereum `0xc3af2d...38a3b9`; ethereum `0xda4daa...d1a70d`; ethereum `0xf0f640...e9924b`; optimism `0x1c971e...7c9508`; optimism `0x3e834a...0e3e80`; optimism `0x996766...bb18c1`; optimism `0xa72cd0...650445`; optimism `0xb08170...09d263`; optimism `0xe0ed76...bb11f1`; bsc `0x32ae3c...fa325c`; bsc `0x81e600...11d64c`; bsc `0x9956ff...86bc42`; bsc `0xe0ed76...bb11f1`; bsc `0xee2060...01ddb9`; bsc `0xf3218d...c53947`; polygon `0x05df4a...ac5cd5`; polygon `0x6d01eb...908224`; polygon `0x9bdcb6...ebd156`; polygon `0xaf3456...e6b7b2`; polygon `0xc92790...75d467`; polygon `0xf76f45...d97852`; base `0x814618...316c40`; base `0x818fbe...0ab21e`; base `0xbb815b...a13c37`; base `0xd5e470...084338`; base `0xda647b...bc7a63`; base `0xf1bc22...eed2dc`; arbitrum [`0x02cf84...ef657f`](./contracts/arbitrum-42161/0x02cf8483b15eb1211235d8bb5041be5024ef657f/); arbitrum `0x275bae...e5790c`; arbitrum `0xa03226...7b1ef3`; arbitrum `0xc04fe9...f49744`; arbitrum `0xd5e470...084338`; arbitrum `0xfc5fa7...91497c`; celo `0xa55632...e3ef6d`; celo `0xb0ee14...7be313`; celo `0xb3fb82...415275`; celo `0xe68143...1e960e`; celo `0xf4101b...e96740`; celo `0xff04c0...2845d1`; avalanche `0x1d38a1...d9d8da`; avalanche `0x2c916f...965b67`; avalanche `0x4c37d6...61534c`; avalanche `0x5ab84e...d3b3e4`; avalanche `0xd5e470...084338`; avalanche `0xe68143...1e960e` | ✅ Audited |
| SuperTokenFactory | registry | polygon | n/a | 39 deployments: ethereum `0x0a7c38...29a628`; ethereum `0x0d1f0d...5418d9`; ethereum `0x81398a...719195`; ethereum `0xd6cb23...35f057`; ethereum `0xe89239...6aea54`; optimism `0x22e70f...c7b21b`; optimism `0x59314e...347ad8`; optimism `0x87be92...027c5b`; optimism `0x9785d5...c446c1`; bsc `0x17e0b9...674640`; bsc `0x295cef...ec76b1`; bsc `0xb08170...09d263`; bsc `0xf0e163...a3e68e`; polygon [`0x039bca...496919`](./contracts/polygon-137/0x039bcab91fb8d55ac34e48bfa1176e5a46496919/); polygon `0x2fbdb1...f45633`; polygon `0x4dbe7e...d3010b`; polygon `0x800731...6d8d7e`; polygon `0x967046...272d47`; polygon `0xe49c89...710138`; polygon `0xf2c284...da31ad`; polygon `0xf8d8f0...3410b5`; base `0x65bbea...dc5033`; base `0x667029...b92874`; base `0x85fe79...d29386`; base `0x996766...bb18c1`; arbitrum `0x1d38a1...d9d8da`; arbitrum `0xa72cd0...650445`; arbitrum `0xb0ee14...7be313`; arbitrum `0xc09612...3da578`; celo `0x3b5889...918d9c`; celo `0x400d31...7014b9`; celo `0x5b81ff...41e9ed`; celo `0x658aac...6c9abd`; avalanche `0x07efa4...b2fecb`; avalanche `0x3b5889...918d9c`; avalanche `0x5f4f9a...5b6058`; avalanche `0x65bbea...dc5033`; avalanche `0xc8f6f1...e5154e`; scroll `0xacfbed...e7c673` | ✅ Audited |
| TOGA | unknown | avalanche | n/a | 7 deployments: ethereum `0x8b5a2c...544ddc`; optimism `0xa3c850...946c8f`; bsc `0xfcd842...5d10df`; polygon `0x6aeaee...90a8f7`; base `0xa87f76...3d9a09`; arbitrum `0xfc63b7...28c9ef`; avalanche [`0x3d9a67...6b6159`](./contracts/avalanche-43114/0x3d9a67d5ec1e72ceca8157e028855056786b6159/) | ✅ Audited |
| TokenCustodian | token | avalanche | n/a | [`0xa4dd3f...e65528`](./contracts/avalanche-43114/0xa4dd3f3b68647206e996e1c756f9c36096e65528/) | ✅ Audited |
| UUPSProxy | proxy | scroll | n/a | 5 deployments: avalanche `0xa7b197...62e4d2`; avalanche `0xbfc8c0...73eff1`; scroll [`0x0f86a2...520bb7`](./contracts/scroll-534352/0x0f86a21f6216c061b222c224e315d9fc34520bb7/); scroll `0x411255...61144d`; scroll `0xb3bcd6...b6c00c` | ✅ Audited |
| VestingScheduler | operational_periphery | optimism | n/a | 5 deployments: optimism [`0x65377d...782892`](./contracts/optimism-10/0x65377d4dfe9c01639a41952b5083d58964782892/); bsc `0x9b91c2...16c5b9`; polygon `0xcfe638...e32b0c`; polygon `0xf9b3b4...ddf210`; base `0xdf92d0...e3c6b2` | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentPoolDistributor | operational_periphery | base | n/a | [`0x15dcc5...489a70`](./contracts/base-8453/0x15dcc5564908a3a2c4c7b4659055d0b9e1489a70/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | 2 deployments: polygon [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/); celo `0xdd11b6...12303f` | ⚠️ Unaudited |
| BeaconProxy | registry | bsc | n/a | 8 deployments: bsc [`0x165152...2e623e`](./contracts/bsc-56/0x165152bbcdb9c2f4c94b0bc2c61a62273a2e623e/); bsc `0x1c31f0...1ad88a`; bsc `0x32c95d...7ace58`; bsc `0x3c7fbf...a17d7d`; bsc `0x3e834a...0e3e80`; bsc `0x8ca302...37f226`; bsc `0xc04fe9...f49744`; bsc `0xd6dd13...7644ad` | ⚠️ Unaudited |
| BitBTCOptimism | unknown | optimism | n/a | [`0xc98b98...e1f272`](./contracts/optimism-10/0xc98b98d17435aa00830c87ea02474c5007e1f272/) | ⚠️ Unaudited |
| CFAv1Forwarder | unknown | ethereum | n/a | 9 deployments: ethereum [`0xcfa132...ceb125`](./contracts/ethereum-1/0xcfa132e353cb4e398080b9700609bb008eceb125/); optimism [`0xcfa132...ceb125`](./contracts/optimism-10/0xcfa132e353cb4e398080b9700609bb008eceb125/); bsc [`0xcfa132...ceb125`](./contracts/bsc-56/0xcfa132e353cb4e398080b9700609bb008eceb125/); polygon [`0xcfa132...ceb125`](./contracts/polygon-137/0xcfa132e353cb4e398080b9700609bb008eceb125/); base [`0xcfa132...ceb125`](./contracts/base-8453/0xcfa132e353cb4e398080b9700609bb008eceb125/); arbitrum [`0xcfa132...ceb125`](./contracts/arbitrum-42161/0xcfa132e353cb4e398080b9700609bb008eceb125/); celo [`0xcfa132...ceb125`](./contracts/celo-42220/0xcfa132e353cb4e398080b9700609bb008eceb125/); avalanche [`0xcfa132...ceb125`](./contracts/avalanche-43114/0xcfa132e353cb4e398080b9700609bb008eceb125/); scroll [`0xcfa132...ceb125`](./contracts/scroll-534352/0xcfa132e353cb4e398080b9700609bb008eceb125/) | ⚠️ Unaudited |
| ConstantOutflowNFT | token | polygon | n/a | [`0xe7e986...73ae71`](./contracts/polygon-137/0xe7e986499e3f6aaf3cad379cbd08da7e7073ae71/) | ⚠️ Unaudited |
| CRNFT | token | base | n/a | 10 deployments: base [`0x067342...a09591`](./contracts/base-8453/0x067342de10afc725782988302dffe4628ca09591/); base `0x24166b...8d0851`; base `0x4a5b90...57b4c0`; base `0x755e8a...e2faae`; base `0x78fd17...eda0d9`; base `0x7be8f9...12b29c`; base `0x8ac1bb...3e961c`; base `0x8b06b0...d5b851`; base `0x9f9982...cb6f1a`; base `0xc5ce7a...d5d9f7` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | celo | n/a | 36 deployments: ethereum `0x06469e...7e61c6`; ethereum `0x4dd7be...0bf94b`; ethereum `0x6a75a8...98013c`; ethereum `0x712a3e...972e78`; optimism `0x2525fa...2ae520`; optimism `0x25382f...227b9e`; optimism `0x9956ff...86bc42`; optimism `0x9c1adb...afd3b9`; bsc `0x2525fa...2ae520`; bsc `0x49a092...df0da1`; bsc `0x8054bd...a228ea`; bsc `0xcece5b...84eec5`; bsc `0xd0ef89...c4bde9`; polygon `0x056ecd...7bc372`; polygon `0x3b017b...0b8d00`; polygon `0x5779e4...5f3acf`; polygon `0xa63591...b05381`; polygon `0xbc20e0...f47782`; polygon `0xc371e3...0d4b89`; base `0x165152...2e623e`; base `0x3efc20...1e62ea`; base `0xe75eaf...3cb53f`; base `0xf36688...62a629`; arbitrum `0x069546...79f77a`; arbitrum `0x48b77d...502f12`; arbitrum `0xaaeb86...05c9fc`; arbitrum `0xe342b8...b4dc64`; celo [`0x02cf84...ef657f`](./contracts/celo-42220/0x02cf8483b15eb1211235d8bb5041be5024ef657f/); celo `0x59314e...347ad8`; celo `0x5ad965...c0b70b`; celo `0x81e600...11d64c`; avalanche `0x111b7c...931ee4`; avalanche `0x329114...170218`; avalanche `0x59314e...347ad8`; avalanche `0xe75eaf...3cb53f`; avalanche `0xfc5fa7...91497c` | ⚠️ Unaudited |
| ExistentialNFT | token | polygon | n/a | [`0xfaf97c...4c6bcd`](./contracts/polygon-137/0xfaf97c63a59995334bef196240e385225a4c6bcd/) | ⚠️ Unaudited |
| ExistentialNFTCloneFactory | registry | base | n/a | [`0x642332...a497ac`](./contracts/base-8453/0x642332562bc60a4bd9681e7bb1588f7456a497ac/) | ⚠️ Unaudited |
| FlowScheduler712Macro | unknown | base | n/a | 3 deployments: base [`0x48b77d...502f12`](./contracts/base-8453/0x48b77d94d51a63626a724acfd3a2391639502f12/); base `0x5b81ff...41e9ed`; base `0xd6dd13...7644ad` | ⚠️ Unaudited |
| FlowSchedulerMacro | unknown | base | n/a | 4 deployments: ethereum `0x9db165...b9cda0`; base [`0x63af16...36acf1`](./contracts/base-8453/0x63af16ced41417c801015e74c6faad347a36acf1/); base `0x87be92...027c5b`; base `0xee2060...01ddb9` | ⚠️ Unaudited |
| FluidLocker | unknown | base | n/a | 3 deployments: base [`0x04a7d7...abbc37`](./contracts/base-8453/0x04a7d7485da244edd5f99c821fbf0dbbe2abbc37/); base `0x248858...e68b62`; base `0x3d90ac...182e55` | ⚠️ Unaudited |
| FluidLockerFactory | registry | base | n/a | [`0x2189e7...98c055`](./contracts/base-8453/0x2189e75caf2785b9324a15c6df4608716598c055/) | ⚠️ Unaudited |
| GDAv1Forwarder | unknown | ethereum | n/a | 9 deployments: ethereum [`0x6da13b...d1de08`](./contracts/ethereum-1/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); optimism [`0x6da13b...d1de08`](./contracts/optimism-10/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); bsc [`0x6da13b...d1de08`](./contracts/bsc-56/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); polygon [`0x6da13b...d1de08`](./contracts/polygon-137/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); base [`0x6da13b...d1de08`](./contracts/base-8453/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); arbitrum [`0x6da13b...d1de08`](./contracts/arbitrum-42161/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); celo [`0x6da13b...d1de08`](./contracts/celo-42220/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); avalanche [`0x6da13b...d1de08`](./contracts/avalanche-43114/0x6da13bde224a05a288748d857b9e7ddeffd1de08/); scroll [`0x6da13b...d1de08`](./contracts/scroll-534352/0x6da13bde224a05a288748d857b9e7ddeffd1de08/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | gnosis | unit-38408 (5 proxies) | 5 deployments: gnosis [`0x1d9896...471cef`](./contracts/gnosis-100/0x1d9896f00fd51df839b2f5b7ffdd0bd60b471cef/); gnosis `0x5b3392...4ae779`; gnosis `0xa298d0...efe8e5`; gnosis `0xdfdec8...251dfd`; gnosis `0xecd2d1...8ce398` | ⚠️ Unaudited |
| InstantDistributionAgreementV1 | unknown | celo | n/a | 36 deployments: ethereum `0x4ddb0f...f039cc`; ethereum `0xa2b295...0db563`; ethereum `0xf44ac2...8406ba`; ethereum `0xf88dd7...dae0a9`; ethereum `0xfc00de...635456`; optimism `0x31d584...75e9ec`; optimism `0x7e1153...fa96f4`; optimism `0x81e600...11d64c`; optimism `0xaaeb86...05c9fc`; bsc `0x48b77d...502f12`; bsc `0xa97ab2...c18042`; bsc `0xc8bdd4...e93aa0`; bsc `0xd73afb...b77b5a`; polygon `0x102516...2249b2`; polygon `0x49c2a7...a96be6`; polygon `0x85eb36...a06def`; polygon `0x86e8ac...4bacbf`; polygon `0xf21019...1a3083`; polygon `0xfe39ab...bc7eb6`; base `0x2cdd45...c3bd8d`; base `0x8ce0ec...3568bd`; base `0xac4ef4...333cdd`; base `0xd26b36...d9eb8f`; arbitrum `0x32c95d...7ace58`; arbitrum `0x765224...050c5f`; arbitrum `0x8ca302...37f226`; arbitrum `0xac4ef4...333cdd`; celo [`0x080192...b270fa`](./contracts/celo-42220/0x0801927da5dcc0fd1f588755bef8d30b49b270fa/); celo `0x1d38a1...d9d8da`; celo `0xa03226...7b1ef3`; celo `0xf0ec6a...9e18a8`; avalanche [`0x080192...b270fa`](./contracts/avalanche-43114/0x0801927da5dcc0fd1f588755bef8d30b49b270fa/); avalanche `0x9d29e1...a16961`; avalanche `0xac4ef4...333cdd`; avalanche `0xb3fb82...415275`; avalanche `0xe01f87...fc2433` | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-38465 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MacroForwarder | unknown | optimism | n/a | 4 deployments: optimism [`0xfd0268...87f89f`](./contracts/optimism-10/0xfd0268e33111565de546af2675351a4b1587f89f/); base [`0xfd0268...87f89f`](./contracts/base-8453/0xfd0268e33111565de546af2675351a4b1587f89f/); arbitrum [`0xfd0268...87f89f`](./contracts/arbitrum-42161/0xfd0268e33111565de546af2675351a4b1587f89f/); celo [`0xfd0268...87f89f`](./contracts/celo-42220/0xfd0268e33111565de546af2675351a4b1587f89f/) | ⚠️ Unaudited |
| Manager | governance | base | n/a | 8 deployments: ethereum `0x30ae28...e1d7a1`; optimism `0x1fa76f...0cac23`; bsc `0x2acdd6...d7f325`; polygon `0x2581c2...716b32`; base [`0x041d4b...befd01`](./contracts/base-8453/0x041d4bf21367e9b92016b28fb5a2f697c1befd01/); base `0x5f6526...a58b7f`; arbitrum `0xf01825...68d272`; avalanche `0x8082e5...a03db0` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | avalanche | n/a | 11 deployments: optimism `0x9cc7fc...a74336`; optimism `0xb93493...2fb581`; bsc `0x4c10ff...287ea7`; bsc `0xfc63b7...28c9ef`; base `0x8b5a2c...544ddc`; arbitrum `0x9cc7fc...a74336`; arbitrum `0xb93493...2fb581`; celo `0xa87f76...3d9a09`; celo `0xee1bd2...7d7b90`; avalanche [`0x1bf9d7...792ceb`](./contracts/avalanche-43114/0x1bf9d75d50fd828a93f69ecb06f2b85767792ceb/); avalanche `0xee07d9...c2982f` | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| Pool | core_logic | polygon | n/a | [`0xfb1b48...ee0083`](./contracts/polygon-137/0xfb1b483567711d98f670aad610ae9d52cbee0083/) | ⚠️ Unaudited |
| PoolAdminNFT | core_logic | celo | n/a | 37 deployments: ethereum `0x27636f...773be5`; ethereum `0x3eafc7...e8f7d5`; ethereum `0xcdd427...b01913`; ethereum `0xcf3f4f...9dbf02`; ethereum `0xff208f...78c212`; optimism `0x4bff86...605ef1`; optimism `0x625f04...f12c11`; optimism `0xa347bd...38e178`; optimism `0xf3218d...c53947`; bsc `0x7db964...53ff70`; bsc `0x80f053...66ba1d`; bsc `0xc89972...b4dc04`; bsc `0xf17e88...65f221`; polygon `0x31fd5d...b1126e`; polygon `0x904b97...da07b4`; polygon `0xa1f477...d32263`; polygon `0xaf756a...ad9696`; polygon `0xdb0afd...40a96d`; polygon `0xe590cf...73fe01`; base `0x23e9a1...7bd52a`; base `0x48acf0...8649ea`; base `0x79ae8b...5f6c11`; base `0x96c3c2...2834d7`; arbitrum `0x79ae8b...5f6c11`; arbitrum `0x7e1153...fa96f4`; arbitrum `0x8e03f0...8f4b53`; arbitrum `0x91bd02...7796fc`; celo [`0x07efa4...b2fecb`](./contracts/celo-42220/0x07efa4e436ee9c3a6ff1f0a3a7b4135aabb2fecb/); celo `0x7b9b78...4f8c6d`; celo `0x8054bd...a228ea`; celo `0xb8065d...8584eb`; avalanche `0x3c1bcb...cbab2e`; avalanche `0x511cba...1ab84b`; avalanche `0x79ae8b...5f6c11`; avalanche `0x848497...2b19a7`; avalanche `0xa347bd...38e178`; avalanche `0xb8065d...8584eb` | ⚠️ Unaudited |
| PoolMemberNFT | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xacedc4...6bffe0`](./contracts/ethereum-1/0xacedc4c2ac1965f2ec3473f4486a59fb286bffe0/); avalanche `0xd59ba9...6586f9` | ⚠️ Unaudited |
| Resolver | unknown | polygon | n/a | [`0x8bdcb5...6dbe58`](./contracts/polygon-137/0x8bdcb5613153f41b2856f71bd7a7e0432f6dbe58/) | ⚠️ Unaudited |
| SimpleACL | governance | bsc | n/a | 11 deployments: ethereum `0x9ac0cd...ce666a`; ethereum `0xaeaca6...729a18`; ethereum `0xf45722...c75627`; optimism `0x3c1bcb...cbab2e`; bsc [`0x07efa4...b2fecb`](./contracts/bsc-56/0x07efa4e436ee9c3a6ff1f0a3a7b4135aabb2fecb/); bsc `0x814618...316c40`; polygon `0x88b614...46a535`; base `0xa90e28...8783e1`; arbitrum `0xf2c284...da31ad`; celo `0xf1bc22...eed2dc`; avalanche `0x3903df...13b3b6` | ⚠️ Unaudited |
| SimpleForwarder | unknown | polygon | n/a | 39 deployments: ethereum `0x1f7383...b43694`; ethereum `0x31523e...c4dcd7`; ethereum `0x998595...9001c6`; ethereum `0xb3ea69...0a2cdb`; optimism `0x916717...9e723d`; optimism `0xd6dd13...7644ad`; optimism `0xe342b8...b4dc64`; optimism `0xf7ba9a...11e715`; bsc `0x34b706...17e17c`; bsc `0x534247...989d46`; bsc `0x916717...9e723d`; bsc `0x9785d5...c446c1`; bsc `0xd226e7...0db5ce`; bsc `0xdcf916...3fcbe8`; polygon [`0x1c9a68...ab2164`](./contracts/polygon-137/0x1c9a68578b9f7a2c20abe9eecc9457e08bab2164/); polygon `0x60e590...df361f`; polygon `0x8997a1...feb0ea`; polygon `0x8a3339...424e11`; polygon `0xd4610e...81c9d1`; polygon `0xd7d521...aeefcb`; polygon `0xf94c3d...f050ca`; base `0x329114...170218`; base `0x7940d9...5525c9`; base `0xb8065d...8584eb`; base `0xebd331...b60032`; arbitrum `0x23e9a1...7bd52a`; arbitrum `0x3b5889...918d9c`; arbitrum `0x5b81ff...41e9ed`; arbitrum `0xef8038...6d6caa`; celo `0x25382f...227b9e`; celo `0x2616c0...9fe547`; celo `0x80f053...66ba1d`; celo `0x8ca302...37f226`; avalanche `0x25456a...5718bf`; avalanche `0x80f053...66ba1d`; avalanche `0x878d43...7ab064`; avalanche `0xb66334...a1432b`; avalanche `0xebd331...b60032`; avalanche `0xf3218d...c53947` | ⚠️ Unaudited |
| SlotsBitmapLibrary | unknown | optimism | n/a | 45 deployments: ethereum `0x2d50a1...159c40`; ethereum `0x4e212e...95a853`; ethereum `0x9538c4...4116a4`; ethereum `0xc970a1...cc82b1`; ethereum `0xdf874b...20ddbd`; ethereum `0xf26967...98d19e`; optimism [`0x07efa4...b2fecb`](./contracts/optimism-10/0x07efa4e436ee9c3a6ff1f0a3a7b4135aabb2fecb/); optimism `0x2dc25e...b47678`; optimism `0x88bb53...8ca499`; optimism `0xf17e88...65f221`; optimism `0xfc5fa7...91497c`; bsc `0x2dc25e...b47678`; bsc `0x400d31...7014b9`; bsc `0x63af16...36acf1`; bsc `0xb0adc0...b19a32`; bsc `0xf7ba9a...11e715`; polygon `0x5ce000...63e2b5`; polygon `0xcf5674...0c1857`; polygon `0xdd1fdb...d55094`; polygon `0xedf178...ac65fe`; polygon `0xee34cb...35fe85`; polygon `0xf76529...93b888`; polygon `0xf7ba9a...11e715`; polygon `0xffd0f6...ca17f3`; base `0x47a5ca...923a0d`; base `0x5ab84e...d3b3e4`; base `0x5d7dd5...584572`; base `0x959653...9cd384`; base `0xc02d95...bfbb42`; arbitrum `0x25382f...227b9e`; arbitrum `0xa97ab2...c18042`; arbitrum `0xb66334...a1432b`; arbitrum `0xc02d95...bfbb42`; arbitrum `0xf3218d...c53947`; celo `0x1c971e...7c9508`; celo `0x513b7c...03bef4`; celo `0x91bd02...7796fc`; celo `0xe9748b...60ff47`; celo `0xffd0f6...ca17f3`; avalanche `0x57897b...8509e5`; avalanche `0x818fbe...0ab21e`; avalanche `0x91bd02...7796fc`; avalanche `0xa03226...7b1ef3`; avalanche `0xc02d95...bfbb42`; avalanche `0xe40983...5b5ba9` | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| Super721SVG | unknown | polygon | n/a | [`0xf99984...c13a9b`](./contracts/polygon-137/0xf999847f38426dfce1d0d369796b6b3a87c13a9b/) | ⚠️ Unaudited |
| Super721SVGOffChain | unknown | polygon | n/a | [`0xf42830...e060ca`](./contracts/polygon-137/0xf428308b426d7cd7ad8ebe549d750f31c8e060ca/) | ⚠️ Unaudited |
| Super721SVGOnChain | unknown | polygon | n/a | 2 deployments: polygon [`0xe39ec5...dafcd0`](./contracts/polygon-137/0xe39ec59fcbf4439acd2785c15e52e7cec0dafcd0/); polygon `0xf24291...1856a5` | ⚠️ Unaudited |
| SuperfluidNFT | token | base | n/a | 4 deployments: base [`0x9a0d21...1cbdcf`](./contracts/base-8453/0x9a0d21033be14f5ad32a67eb2a599101ea1cbdcf/); base `0xac6b9a...8f6721`; base `0xac85d5...1d931c`; base `0xdc8798...7c6a99` | ⚠️ Unaudited |
| SuperfluidNFTFactory | registry | base | n/a | 2 deployments: base [`0x69bcb0...5f1ac9`](./contracts/base-8453/0x69bcb0a689cea64d4d736c951cbbb68c805f1ac9/); base `0xea1f83...a1a00f` | ⚠️ Unaudited |
| SupVesting | operational_periphery | base | n/a | 2 deployments: base [`0x2680c2...11e683`](./contracts/base-8453/0x2680c23feb82d7b49a9fcc35c6776b7f2e11e683/); base `0x78aee9...d887b4` | ⚠️ Unaudited |
| SupVestingFactory | operational_periphery | base | n/a | 2 deployments: base [`0x398581...1635b1`](./contracts/base-8453/0x3985810f94a0a4bb24f34650d54e264aa61635b1/); base `0x3df8a6...93e285` | ⚠️ Unaudited |
| SwapRouter02LiquidityMover | adapter | optimism | n/a | 2 deployments: optimism [`0xb2c22f...76ac3b`](./contracts/optimism-10/0xb2c22f1a0dddb6222dae2f29269c703d3b76ac3b/); optimism `0xb32d94...a1ca84` | ⚠️ Unaudited |
| Testbed | unknown | base | n/a | [`0xf4101b...e96740`](./contracts/base-8453/0xf4101b8886dfceb81c8049c6a91329508ee96740/) | ⚠️ Unaudited |
| TestResolver | unknown | polygon | n/a | [`0xe0cc76...7af39c`](./contracts/polygon-137/0xe0cc76334405ee8b39213e620587d815967af39c/) | ⚠️ Unaudited |
| Upgrader | unknown | bsc | n/a | 2 deployments: bsc [`0x30ae28...e1d7a1`](./contracts/bsc-56/0x30ae282cf477e2ef28b14d0125acead57fe1d7a1/); avalanche `0x9e308c...70f199` | ⚠️ Unaudited |
| VestingSchedulerV2 | operational_periphery | base | n/a | 2 deployments: optimism `0xe567b3...ed192c`; base [`0x7b77a3...cbe257`](./contracts/base-8453/0x7b77a34b8b76b66e97a5ae01ad052205d5cbe257/) | ⚠️ Unaudited |
| VestingSchedulerV3 | operational_periphery | polygon | n/a | 4 deployments: ethereum `0xbeedf5...3ce84c`; optimism `0x5ab84e...d3b3e4`; polygon [`0x488913...c0ca43`](./contracts/polygon-137/0x488913833474bbd9b11f844fdc2f0897fac0ca43/); base `0x6bf35a...ef9312` | ⚠️ Unaudited |
| WrapStrategy | core_logic | optimism | n/a | 8 deployments: ethereum `0x1d65c6...6ea96d`; optimism [`0x0cf060...1c6bb4`](./contracts/optimism-10/0x0cf060a501c0040e9ccc708efe94079f501c6bb4/); bsc `0x9e308c...70f199`; polygon `0xb4afa3...20ee4b`; base `0x7b7336...273fba`; base `0xd790cd...336e23`; arbitrum `0x342076...a31e61`; avalanche `0x51fbab...264a4e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StreamingFarm | unknown | gnosis | n/a | 2 deployments: gnosis [`0xa2eac0...522b6f`](./contracts/gnosis-100/0xa2eac044fe1e004caac4e8c4164a39f4cc522b6f/); gnosis `0xfd989d...29efe9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd59ba9...6586f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23e9a1...7bd52a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b5889...918d9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5eae10...4e2c49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb66334...a1432b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8065d...8584eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5d5cf...13c38e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0862cc...d2420b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x681d95...e36ef7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d7e1a...4f4404` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7717ab...6fc9b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8df02b...5735dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ea02f...e107f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb35cb8...f2255e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe72f28...c920db` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe75eaf...3cb53f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9748b...60ff47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xebd331...b60032` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0d7d1...f1eea3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0ec6a...9e18a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf10e52...62a3d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6ad14...8a3eb7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc00de...635456` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc5fa7...91497c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfdf087...85c328` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff04c0...2845d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff208f...78c212` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91bd02...7796fc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc02d95...bfbb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd5e470...084338` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47a5ca...923a0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d7dd5...584572` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97620d...4eed99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f9eed...a9c534` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae28ec...4f3068` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb84c98...fd0daf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0fbc4...473dcf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2aa65...63943c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd26b36...d9eb8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd399e2...621005` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [202408 Sherlock - super-boring-audit-report-1723469151.pdf](https://github.com/superfluid-finance/averagex-contracts-cloned/blob/master/packages/evm-contracts/audits/202408%20Sherlock%20-%20super-boring-audit-report-1723469151.pdf) | Sherlock | Contest | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Superfluid-Scheduler-Report.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/automation-contracts/scheduler/audit/Superfluid-Scheduler-Report.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 9 | high |
| [2021-01 PeckShield - Audit-Report-Superfluid-v1.0.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2021-01%20PeckShield%20-%20Audit-Report-Superfluid-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | 144 | high |
| [2022-02 Halborn - Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2022-02%20Halborn%20-%20Superfluid_Finance_Smart_Contract_Security_Audit_Report_.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 195 | high |
| [2023-12 Trail of Bits - Changes Since Audit.md](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2023-12%20Trail%20of%20Bits%20-%20Changes%20Since%20Audit.md) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | 137 | medium |
| [2023-12 Trail of Bits - Comprehensive Report with Fix Review.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2023-12%20Trail%20of%20Bits%20-%20Comprehensive%20Report%20with%20Fix%20Review.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | 130 | high |
| [2026-01-27 - Final - Superfluid Collaborative Audit Report 1769517931.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2026-01-27%20-%20Final%20-%20Superfluid%20Collaborative%20Audit%20Report%201769517931.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | 42 | high |
| [2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf](https://github.com/superfluid-finance/protocol-monorepo/blob/dev/packages/ethereum-contracts/audits/2026-05-25%20-%20Final%20-%20Superfluid%20Public%20Best%20Efforts%20Audit%20Contest%20Report%201779704022.pdf) | unknown | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcfa132...ceb125`](./contracts/ethereum-1/0xcfa132e353cb4e398080b9700609bb008eceb125/) | CFAv1Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x642332...a497ac`](./contracts/base-8453/0x642332562bc60a4bd9681e7bb1588f7456a497ac/) | ExistentialNFTCloneFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6da13b...d1de08`](./contracts/ethereum-1/0x6da13bde224a05a288748d857b9e7ddeffd1de08/) | GDAv1Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfd0268...87f89f`](./contracts/optimism-10/0xfd0268e33111565de546af2675351a4b1587f89f/) | MacroForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x041d4b...befd01`](./contracts/base-8453/0x041d4bf21367e9b92016b28fb5a2f697c1befd01/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacedc4...6bffe0`](./contracts/ethereum-1/0xacedc4c2ac1965f2ec3473f4486a59fb286bffe0/) | PoolMemberNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8bdcb5...6dbe58`](./contracts/polygon-137/0x8bdcb5613153f41b2856f71bd7a7e0432f6dbe58/) | Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07efa4...b2fecb`](./contracts/bsc-56/0x07efa4e436ee9c3a6ff1f0a3a7b4135aabb2fecb/) | SimpleACL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07efa4...b2fecb`](./contracts/optimism-10/0x07efa4e436ee9c3a6ff1f0a3a7b4135aabb2fecb/) | SlotsBitmapLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x30ae28...e1d7a1`](./contracts/bsc-56/0x30ae282cf477e2ef28b14d0125acead57fe1d7a1/) | Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b77a3...cbe257`](./contracts/base-8453/0x7b77a34b8b76b66e97a5ae01ad052205d5cbe257/) | VestingSchedulerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x488913...c0ca43`](./contracts/polygon-137/0x488913833474bbd9b11f844fdc2f0897fac0ca43/) | VestingSchedulerV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0cf060...1c6bb4`](./contracts/optimism-10/0x0cf060a501c0040e9ccc708efe94079f501c6bb4/) | WrapStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=2446

Zero-match audit list:

- [7697] 202408 Sherlock - super-boring-audit-report-1723469151.pdf
- [7705] 2026-05-25 - Final - Superfluid Public Best Efforts Audit Contest Report 1779704022.pdf

Fork inheritance lineage and inherited audits are included when available.
