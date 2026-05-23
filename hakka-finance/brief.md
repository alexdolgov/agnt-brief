# Agentic Audit Brief: Hakka Finance

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: active (Tier 0, 70.8% below peak)
- Generated: 2026-05-23T19:54:18.414Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 103 unique implementations (222 raw deployments)
- DeFi Llama TVL: $4,741,232.83
- On-chain TVL (included contracts): $1,693,366.97
- TVL by chain: Ethereum $1,693,366.97

## Project Description

Hakka Finance is a decentralized finance protocol offering a suite of derivative and yield-generating products. It includes vaults for automated yield strategies, liquidity pools for stablecoin and token swaps, and staking mechanisms for governance and rewards.

### Architecture

The protocol's vaults (bVault) and liquidity pools (BAC pools, BPool) are the core yield-generating components, while staking contracts (HakkaRewards, MasterChef) distribute rewards in the form of tokens like BlackPoolToken and StakedBPT. Supporting contracts such as GuildBank and ThreeFMutual provide treasury management and mutual cover, sharing the same deployer clusters and token infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 9/84 (10.7%)
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 103
- Raw deployments: 222
- Audits discovered: 7
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $1,693,366.97
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 7 | 8.3% | 2021-03 |
| unknown | Tier 2 | 3 | 3.6% | 2022-01 |
| yAudit | Tier 2 | 2 | 2.4% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| blackholeswap | unknown | ethereum | 3 deployments: ethereum [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/); ethereum `0x592ad4...a76853`; ethereum `0xd1cce7...e4ebad` | ✅ Audited |
| GuildBank | unknown | ethereum | 3 deployments: ethereum [`0x1e20b7...28a935`](./contracts/ethereum-1/0x1e20b7d24d429b0de705d3ff8b88ec651d28a935/); ethereum `0x83d0d8...bec8e7`; ethereum `0xd05336...8ad77a` | ✅ Audited |
| Hakka | unknown | ethereum | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ✅ Audited |
| HakkaRewardsVesting | operational_periphery | ethereum | 3 deployments: ethereum [`0x38ddc7...9826ea`](./contracts/ethereum-1/0x38ddc71bc1bfe2bc0d3c51e863a7ec3c6a9826ea/); ethereum `0x735a80...40c95a`; ethereum `0xf4d1f9...5b7977` | ✅ Audited |
| ImpermanentGain | unknown | ethereum | [`0xbf00da...64b6ab`](./contracts/ethereum-1/0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab/) | ✅ Audited |
| InsuranceImprovementProposalProxy | unknown | ethereum | 2 deployments: ethereum [`0x5dd277...92448f`](./contracts/ethereum-1/0x5dd2777c42c34ed155fd3cc063a956d03f92448f/); ethereum `0x9933ad...530780` | ✅ Audited |
| TokenFactory | registry | ethereum | [`0x2efc35...f11715`](./contracts/ethereum-1/0x2efc352936d5c52b3ee061367c834bf768f11715/) | ✅ Audited |
| Underwriter | unknown | ethereum | [`0xe58cde...fa2357`](./contracts/ethereum-1/0xe58cde3cbeecc8d9306f482729084b909afa2357/) | ✅ Audited |
| VestingVault | operational_periphery | ethereum | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| TokenStore | token | ethereum | 2 deployments: ethereum [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/); ethereum `0xa90e66...a79405` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| BPool | core_logic | ethereum | 2 deployments: ethereum [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/); ethereum `0xae95d3...4a27dd` | ⚠️ Unaudited |
| BASPool | core_logic | ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| ABDKMath64x64 | unknown | ethereum | [`0xe7e73e...15724a`](./contracts/ethereum-1/0xe7e73e8faa16b8bb551567bdd43314009e15724a/) | ⚠️ Unaudited |
| Agency | unknown | ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | ⚠️ Unaudited |
| BACPool | core_logic | ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| bhsAlpha | unknown | ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | ⚠️ Unaudited |
| BIP11 | unknown | ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| Boardroom | unknown | ethereum | 4 deployments: ethereum [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/); ethereum `0x4b1824...0a342c`; ethereum `0xa01ffb...154a65`; ethereum `0xffd035...5d6118` | ⚠️ Unaudited |
| BoardroomV2 | unknown | ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | ⚠️ Unaudited |
| Bond | unknown | ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | ⚠️ Unaudited |
| Bondroom | unknown | ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | ⚠️ Unaudited |
| ControlledAsset | unknown | ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | core_logic | ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | core_logic | ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | ⚠️ Unaudited |
| DepositaryReceipt | unknown | ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | ⚠️ Unaudited |
| DummyModel | unknown | ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | ⚠️ Unaudited |
| Feeder | unknown | ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | ⚠️ Unaudited |
| FlashMigrator | periphery | ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | ⚠️ Unaudited |
| FulcrumEmergencyEjection | unknown | ethereum | 4 deployments: ethereum [`0x47ca21...0a4e95`](./contracts/ethereum-1/0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95/); ethereum `0xb54f0b...0dee41`; ethereum `0xca3b60...93c499`; ethereum `0xec4b77...b8001a` | ⚠️ Unaudited |
| Game | unknown | ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | ethereum | [`0x0f2fd9...43140b`](./contracts/ethereum-1/0x0f2fd95c221770d108acd5363d25b06bdc43140b/) | ⚠️ Unaudited |
| HakkaRewards1 | unknown | ethereum | 2 deployments: ethereum [`0x047c21...1a6d6f`](./contracts/ethereum-1/0x047c216ebe3fa55544e04a72264e1016531a6d6f/); ethereum `0x6b1ecb...c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | ethereum | 2 deployments: ethereum [`0x6ee668...e52f27`](./contracts/ethereum-1/0x6ee6683cb9b44810369c873679f8073bcbe52f27/); ethereum `0xdfe604...18b16a` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | ethereum | [`0x3792ee...5e00bf`](./contracts/ethereum-1/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | ⚠️ Unaudited |
| HakkaRewards4 | unknown | ethereum | [`0x3bd145...a64645`](./contracts/ethereum-1/0x3bd145f66203b19ce7bedaac9a8147e08ea64645/) | ⚠️ Unaudited |
| HakkaRewards5 | unknown | ethereum | [`0x0aa6c4...d11058`](./contracts/ethereum-1/0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058/) | ⚠️ Unaudited |
| HakkaVotingPower | unknown | ethereum | [`0x6aec51...71d04d`](./contracts/ethereum-1/0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d/) | ⚠️ Unaudited |
| InitialCashDistributor | operational_periphery | ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | ⚠️ Unaudited |
| InitialShareDistributor | operational_periphery | ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | ethereum | 2 deployments: ethereum [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/); ethereum `0x616305...8956b2` | ⚠️ Unaudited |
| LinearThreshold | unknown | ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | 2 deployments: ethereum [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/); ethereum `0x820670...b7f154` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/); ethereum `0x3e233a...7fdfec`; ethereum `0x6a8618...30ff44`; ethereum `0x751d0e...bf75ca`; ethereum `0x8a573c...1f9502`; ethereum `0xe4efd8...7debfa` | ⚠️ Unaudited |
| PickleProxy | unknown | ethereum | 3 deployments: ethereum [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/); ethereum `0x190503...2e799f`; ethereum `0x4d89dd...8fd5fd` | ⚠️ Unaudited |
| PoolMigrator | core_logic | ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | ⚠️ Unaudited |
| PoolProxy | core_logic | ethereum | 6 deployments: ethereum [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/); ethereum `0x5312ec...2f6bf2`; ethereum `0x81ee0e...e71e96`; ethereum `0x824770...2fe192`; ethereum `0xa4210a...c58677`; ethereum `0xdebe83...f51b50` | ⚠️ Unaudited |
| PoolStore | core_logic | ethereum | 3 deployments: ethereum [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/); ethereum `0x3855c2...658f7d`; ethereum `0x4bd3a0...689f10` | ⚠️ Unaudited |
| PoolWrapper | core_logic | ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | ⚠️ Unaudited |
| sHakka | unknown | ethereum | 2 deployments: ethereum [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/); ethereum `0xd99588...f15040` | ⚠️ Unaudited |
| Share | unknown | ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | ⚠️ Unaudited |
| ShareV2 | unknown | ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ⚠️ Unaudited |
| SigmoidThreshold | unknown | ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | ⚠️ Unaudited |
| SimpleERC20 | token | ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleERCFund | unknown | ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | ⚠️ Unaudited |
| SquidFarmer | unknown | ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| stakingRateModel | operational_periphery | ethereum | 2 deployments: ethereum [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/); ethereum `0x6d04ba...c741b2` | ⚠️ Unaudited |
| tCDP | unknown | ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | ⚠️ Unaudited |
| TFToken | token | ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThankYouToken | token | ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0x9a8541...d47bd1`](./contracts/ethereum-1/0x9a8541ddf3a932a9a922b607e9cf7301f1d47bd1/); ethereum `0xd98bc1...5d0e6a` | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 14 deployments: ethereum [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/); ethereum `0x0f5ecb...e0f7b3`; ethereum `0x121bae...1078bd`; ethereum `0x4e153d...5e19d3`; ethereum `0x67a883...f2117a`; ethereum `0x7715a2...df3430`; ethereum `0x88da51...4ee747`; ethereum `0x9dcea4...d3c216`; ethereum `0xa89572...8e2e22`; ethereum `0xaf7005...24ebe2`; ethereum `0xcd2dfe...8d1fba`; ethereum `0xe5fc22...b27884`; ethereum `0xf43775...28fb93`; ethereum `0xf8acea...d72dea` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | ⚠️ Unaudited |
| votingPowerViewer | periphery | ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 65 deployments: ethereum [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/); ethereum `0x075b1b...e70fb3`; ethereum `0x0dfdc4...939a9d`; ethereum `0x14f9bd...0d7d15`; ethereum `0x179484...19762c`; ethereum `0x192092...3b36ef`; ethereum `0x1bd65c...ceaace`; ethereum `0x1f2a66...62b275`; ethereum `0x2088a8...2d8f6c`; ethereum `0x2146b0...f881b6`; ethereum `0x2b645a...8d1434`; ethereum `0x2e60cf...0ef419`; ethereum `0x3740fb...06f5fd`; ethereum `0x3b3ac5...24333b`; ethereum `0x45f783...055f51`; ethereum `0x49849c...fb3675`; ethereum `0x4e680f...357bd4`; ethereum `0x4f0e0e...053841`; ethereum `0x52ea46...35d85c`; ethereum `0x54ee22...68b800`; ethereum `0x5e71f0...cf0e8d`; ethereum `0x61dc3c...896e87`; ethereum `0x6812c0...50fc74`; ethereum `0x6ff57e...d4fa00`; ethereum `0x76827f...21f5c7`; ethereum `0x7771f7...cbc812`; ethereum `0x79a8c4...5a4f27`; ethereum `0x7adbf7...4456de`; ethereum `0x7b5a09...f5f55b`; ethereum `0x7fc77b...0a9714`; ethereum `0x7fe97b...44ecfd`; ethereum `0x7fffa7...7dfc7d`; ethereum `0x845838...37f8a2`; ethereum `0x8474c1...ba9f4f`; ethereum `0x884be2...ceb75c`; ethereum `0x930541...f0895b`; ethereum `0x9726e9...97313e`; ethereum `0x97b7e9...b9f86d`; ethereum `0x9fc689...4a1f23`; ethereum `0xa27476...d0eadb`; ethereum `0xa2b47e...fb7a56`; ethereum `0xa50ccc...187287`; ethereum `0xa5407e...3efbfd`; ethereum `0xaaaeee...0e9c35`; ethereum `0xac795d...747a80`; ethereum `0xb10c49...2e23e2`; ethereum `0xb241a8...e7188f`; ethereum `0xb527c4...ec5a0b`; ethereum `0xb6a793...e2eb44`; ethereum `0xb6c057...b59edb`; ethereum `0xbbc81d...73a5d3`; ethereum `0xbc7e83...f40a35`; ethereum `0xc25a3a...72917f`; ethereum `0xc97ef4...0451db`; ethereum `0xd133d1...e2f778`; ethereum `0xd905e2...1db0d8`; ethereum `0xdc31f5...96838e`; ethereum `0xdf5e0e...d806a8`; ethereum `0xeb2120...b6bc06`; ethereum `0xebdd53...957f20`; ethereum `0xedf54b...16a966`; ethereum `0xf129d6...971bab`; ethereum `0xf79d92...324b8d`; ethereum `0xfcba3e...f12851`; ethereum `0xff1188...7d5b97` | ⚠️ Unaudited |
| WeightFeeder | unknown | ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a3e36...5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ada83...2e401f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45d9a3...cc145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5113db...139089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ed2d6...71c79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x776968...83516c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb43593...45efd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbee53...b86fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2f08a...0fa7b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe146dc...f3cf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfef6ee...6d1135` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hakka Finance Urban Giggle Audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Urban%20Giggle%20Audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 4 | high |
| [Hakka Finance Vault contract wHakka audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Vault%20contract%20wHakka%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [Hakka_Finance_iGain_V2_Audit_Report.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka_Finance_iGain_V2_Audit_Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 5 | high |
| [Smart Contract Security Audit Report - BlackHoleSwap.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Smart%20Contract%20Security%20Audit%20Report%20-%20BlackHoleSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |
| [peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf](https://github.com/hakkafinance/audit-reports/blob/main/peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $300,315.24 | Verified native implementation with $300,315.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/) | TokenStore | token | $178,765.50 | Verified native implementation with $178,765.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | BPool | core_logic | $5,425.42 | Verified native implementation with $5,425.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | BASPool | core_logic | $1,391.62 | Verified native implementation with $1,391.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | Agency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | BACPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | bhsAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | BIP11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/) | Boardroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | BoardroomV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | Bondroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ControlledAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | DAIBACLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | DAIBASLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | DepositaryReceipt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | Feeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | FlashMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47ca21...0a4e95`](./contracts/ethereum-1/0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95/) | FulcrumEmergencyEjection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | Game | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2fd9...43140b`](./contracts/ethereum-1/0x0f2fd95c221770d108acd5363d25b06bdc43140b/) | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047c21...1a6d6f`](./contracts/ethereum-1/0x047c216ebe3fa55544e04a72264e1016531a6d6f/) | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ee668...e52f27`](./contracts/ethereum-1/0x6ee6683cb9b44810369c873679f8073bcbe52f27/) | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3792ee...5e00bf`](./contracts/ethereum-1/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bd145...a64645`](./contracts/ethereum-1/0x3bd145f66203b19ce7bedaac9a8147e08ea64645/) | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa6c4...d11058`](./contracts/ethereum-1/0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058/) | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aec51...71d04d`](./contracts/ethereum-1/0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d/) | HakkaVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | InitialCashDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | InitialShareDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/) | InsuranceImprovementProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | LinearThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/) | PickleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | PoolMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/) | PoolProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/) | PoolStore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | PoolWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | SigmoidThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | SimpleERCFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | SquidFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/) | stakingRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | tCDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ThankYouToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a8541...d47bd1`](./contracts/ethereum-1/0x9a8541ddf3a932a9a922b607e9cf7301f1d47bd1/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | votingPowerViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | WeightFeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 91 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf

Fork inheritance lineage and inherited audits are included when available.
