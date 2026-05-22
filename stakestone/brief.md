# Agentic Audit Brief: StakeStone

⚠️ Lifecycle status: DECLINING - TVL dropped 2.1% over 90 days

## Project Overview

- Project: StakeStone (`stakestone`)
- Website: [https://stakestone.io](https://stakestone.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-22T12:17:30.212Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, berachain, bsc, ethereum, linea, mantle, merlin, scroll
- Contract surface: 183 unique implementations (264 raw deployments)
- DeFi Llama TVL: $26,054,837.14
- On-chain TVL (included contracts): $49,725,394.58
- TVL by chain: Bsc $37,345,311.97 | Ethereum $11,210,042.33 | Berachain $1,170,040.28

## Project Description

StakeStone is an on-chain capital allocator that provides liquid staking and yield aggregation across multiple chains. It issues liquid staking tokens (STONE, SBTC) representing staked assets and optimizes yields through vaults and strategies.

### Architecture

The StakeStone family provides core vaults and tokens (STONE, SBTC) used across chains, while Berachain Vault and SBTC Contracts are chain-specific or asset-specific extensions. STONEBTC and STONEUSD are additional tokenized products that likely integrate with the core vaults and strategies.

## Audit Coverage Summary

- Verified implementations audited: 0/61 (0.0%)
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 1
- Unverified implementations: 122
- Unique implementations: 183
- Raw deployments: 264
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $49,725,394.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $49,725,394.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | berachain | 15 deployments: ethereum `0x0de028...731ee4`; ethereum `0x17091b...08d168`; ethereum `0x2ea783...626b74`; ethereum `0x6a6e3a...38721e`; ethereum `0x97ad75...07a706`; ethereum `0xb28ecf...91b1a7`; ethereum `0xc620cb...ca75fa`; ethereum `0xd7f311...e9ea38`; ethereum `0xfd47eb...8bda70`; bsc `0x8b4e28...1d7c0b`; bsc `0xdaf169...98cf07`; berachain [`0x095957...766d71`](./contracts/berachain-80094/0x095957ceb9f317ac1328f0ab3123622401766d71/); berachain `0x93f4d0...d21116`; berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ⚠️ Unaudited |
| StoneBeraVault | core_logic | ethereum | [`0x8f88ae...b577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | ⚠️ Unaudited |
| SBTCBeraVault | core_logic | ethereum | 4 deployments: ethereum [`0x437c88...6be43f`](./contracts/ethereum-1/0x437c885357425686b53e0d18c8d9c26a4a6be43f/); ethereum `0x5502fd...b3c1d9`; ethereum `0x5ae986...5bab2f`; ethereum `0xf401cc...4deec7` | ⚠️ Unaudited |
| StoneBTCVault | core_logic | bsc | 2 deployments: ethereum `0x7dbac0...09108d`; bsc [`0x3aa067...9aff9b`](./contracts/bsc-56/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ⚠️ Unaudited |
| StoneCarnivalETH | token | ethereum | 2 deployments: ethereum [`0x42af99...15754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/); ethereum `0xb3fc73...b54541` | ⚠️ Unaudited |
| StoryPreDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0xb13819...75654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/); ethereum `0xb31089...257ddb` | ⚠️ Unaudited |
| AssetsVault | core_logic | ethereum | [`0x948571...7e9ad9`](./contracts/ethereum-1/0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9/) | ⚠️ Unaudited |
| MellowDepositWstETHStrategy | core_logic | ethereum | [`0xe9b7cc...34d574`](./contracts/ethereum-1/0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574/) | ⚠️ Unaudited |
| AccessRegistry | registry | ethereum | 2 deployments: ethereum [`0x728da6...d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/); bsc `0x8449e6...6b223d` | ⚠️ Unaudited |
| AssetRouter | adapter | ethereum | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| AssetsRouter | adapter | ethereum | [`0x219e15...eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | ⚠️ Unaudited |
| AssetVault | core_logic | ethereum | [`0x1fc603...628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | ⚠️ Unaudited |
| AsyncDistributor | operational_periphery | ethereum | [`0xed15e5...8656cb`](./contracts/ethereum-1/0xed15e5dd75a266110a69764ac6919ef9188656cb/) | ⚠️ Unaudited |
| AsyncVault | core_logic | bsc | [`0x693a06...2e58da`](./contracts/bsc-56/0x693a0649c24318008cf1d4d5ee4ac070f92e58da/) | ⚠️ Unaudited |
| BeraStoneRateAdapter | adapter | ethereum | [`0x48d74b...b8a664`](./contracts/ethereum-1/0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664/) | ⚠️ Unaudited |
| BevmDepositBridge | operational_periphery | ethereum | [`0x53dde9...df6c7f`](./contracts/ethereum-1/0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| CLAdapter | adapter | ethereum | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | ⚠️ Unaudited |
| DepositBridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x1b70ff...1df54e`](./contracts/ethereum-1/0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e/); ethereum `0xdaf169...98cf07`; ethereum `0xfb4cb3...909a03` | ⚠️ Unaudited |
| DepositHelper | periphery | ethereum | 4 deployments: ethereum [`0x1565db...531a76`](./contracts/ethereum-1/0x1565db133d0108e911224f174ec12d20f1531a76/); ethereum `0x27ad26...716440`; ethereum `0xc40329...d92671`; ethereum `0xea96d9...38db19` | ⚠️ Unaudited |
| DepositVault | core_logic | ethereum | [`0x749342...8ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | ⚠️ Unaudited |
| DepositWrapper | unknown | ethereum | [`0x2aca0c...343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | [`0x2fa6f0...6d9d2d`](./contracts/ethereum-1/0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d/) | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | 3 deployments: ethereum [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/); ethereum `0x80a896...ec572b`; ethereum `0xb2fb03...34ae5a` | ⚠️ Unaudited |
| GenesisExpedition | unknown | bsc | 6 deployments: bsc [`0x1f3994...8b1bf4`](./contracts/bsc-56/0x1f3994c851696fabc9742b53558334950b8b1bf4/); bsc `0x2a6dc7...165c3c`; bsc `0x9f269f...8d69b4`; bsc `0xdcb29a...aa5bbb`; bsc `0xe33da1...20f1db`; bsc `0xe9f292...b7d2ea` | ⚠️ Unaudited |
| Locker | unknown | ethereum | [`0xa0fde8...0db2fb`](./contracts/ethereum-1/0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb/) | ⚠️ Unaudited |
| LombardConsortium | unknown | ethereum | [`0xed6d64...d780e0`](./contracts/ethereum-1/0xed6d647e2f81e5262101aff72c4a7bcdcfd780e0/) | ⚠️ Unaudited |
| MiningPool | core_logic | ethereum | 2 deployments: ethereum [`0x8f5420...de709b`](./contracts/ethereum-1/0x8f5420e76eec29027800d4e3e8e879617bde709b/); ethereum `0xcf9f37...c1cd0d` | ⚠️ Unaudited |
| Minter | operational_periphery | ethereum | [`0xec306e...133b17`](./contracts/ethereum-1/0xec306e46549a7e8f4fce823d3058f2d134133b17/) | ⚠️ Unaudited |
| NativeLendingETHStrategy | core_logic | ethereum | [`0x2d7086...daa376`](./contracts/ethereum-1/0x2d70868f12a05b8c347974415bac5de053daa376/) | ⚠️ Unaudited |
| NoDelayTimelockController | governance | ethereum | 2 deployments: ethereum [`0x00e723...6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/); ethereum `0xa6b4bf...c71c7c` | ⚠️ Unaudited |
| OneDayDelayTimelockController | governance | ethereum | [`0x5eddcf...86de9a`](./contracts/ethereum-1/0x5eddcfe6b829621487a00e3b3d211ef80986de9a/) | ⚠️ Unaudited |
| OracleConfigurator | operational_periphery | ethereum | 2 deployments: ethereum [`0x6cd42e...495fb1`](./contracts/ethereum-1/0x6cd42e64630d25406bfc51cca65cffa7cd495fb1/); ethereum `0x8636dd...cfef6c` | ⚠️ Unaudited |
| OracleRegistry | operational_periphery | ethereum | [`0xa77cf3...fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | ⚠️ Unaudited |
| ParamRegistry | registry | ethereum | [`0x1fa8e2...125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ⚠️ Unaudited |
| Proposal | unknown | ethereum | [`0x3aa067...9aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ⚠️ Unaudited |
| ReferralRegistry | registry | bsc | 6 deployments: bsc [`0x1a24e3...92bd4e`](./contracts/bsc-56/0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e/); bsc `0xa3ac2f...fab007`; bsc `0xa52248...9f448d`; bsc `0xe38f0d...049af6`; bsc `0xf00142...e5cba9`; bsc `0xfa10ce...beda58` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | bsc | 6 deployments: bsc [`0x46319f...f59fd0`](./contracts/bsc-56/0x46319f1a5e7bd21b89897de87679a4662cf59fd0/); bsc `0x5502fd...b3c1d9`; bsc `0x84c58b...d1fc5f`; bsc `0xc2f513...1d35cb`; berachain `0xd4dfb0...f97782`; berachain `0xf46a21...ffbbe5` | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | 4 deployments: ethereum [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/); ethereum `0x21f352...083b02`; ethereum `0x8236a8...634494`; ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | operational_periphery | ethereum | [`0xfd9779...b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | ⚠️ Unaudited |
| STO | unknown | ethereum | 2 deployments: ethereum [`0x1d8871...b4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/); ethereum `0x9ffc17...0af371` | ⚠️ Unaudited |
| Stone | unknown | ethereum | [`0x712298...45bd3c`](./contracts/ethereum-1/0x7122985656e38bdc0302db86685bb972b145bd3c/) | ⚠️ Unaudited |
| StoneBTC | unknown | ethereum | 8 deployments: ethereum [`0x094c0e...b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/); ethereum `0x6c344c...9f7822`; ethereum `0xdc939b...e03cd0`; bsc `0x154695...33dd7d`; bsc `0x342198...6cb20b`; bsc `0xa0a291...202c7f`; bsc `0xd081be...e9c08d`; scroll `0xe630ab...e85525` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | ethereum | 3 deployments: ethereum [`0x3f690f...8ca57f`](./contracts/ethereum-1/0x3f690f43a9fca689829a22bf925c89b7a48ca57f/); bsc `0x712298...45bd3c`; scroll `0x4f9f13...918501` | ⚠️ Unaudited |
| StoneBTCOFT | unknown | ethereum | [`0x9bcf92...b9dc66`](./contracts/ethereum-1/0x9bcf92ad4aa45f6f5038afc4a15a02419fb9dc66/) | ⚠️ Unaudited |
| StoneCarnival | unknown | ethereum | [`0x4d831e...2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | ⚠️ Unaudited |
| StoneOFT | unknown | ethereum | 2 deployments: ethereum [`0x0a265b...56a976`](./contracts/ethereum-1/0x0a265bd3007931079d2eaf5ed8bddadc7156a976/); ethereum `0x823513...388d67` | ⚠️ Unaudited |
| StoneOracle | operational_periphery | ethereum | [`0x2c1d3d...f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | ⚠️ Unaudited |
| STONEUSDStaking | unknown | bsc | 4 deployments: bsc [`0x18eb3e...525fe6`](./contracts/bsc-56/0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6/); bsc `0x4dff4a...9426d2`; bsc `0x5cd3cc...fe632f`; bsc `0x8dd2aa...125968` | ⚠️ Unaudited |
| StoneVault | core_logic | ethereum | [`0xa62f9c...b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | ⚠️ Unaudited |
| STOStaking | unknown | bsc | 4 deployments: bsc [`0x3a6dae...7e28c9`](./contracts/bsc-56/0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9/); bsc `0x627a17...580b06`; bsc `0xaee118...fa225d`; bsc `0xc716b7...a52f21` | ⚠️ Unaudited |
| StrategyController | core_logic | ethereum | [`0x396abf...a017b2`](./contracts/ethereum-1/0x396abf9ff46e21694f4ef01ca77c6d7893a017b2/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | 4 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0x7c2881...e23cce`; ethereum `0xb90a47...26c686`; ethereum `0xf70bec...ac541c` | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | governance | ethereum | [`0xbc29f7...031ae6`](./contracts/ethereum-1/0xbc29f7781a26dd3958d0caf26885c4820d031ae6/) | ⚠️ Unaudited |
| VeSTO | operational_periphery | ethereum | [`0xf0abc5...6828c2`](./contracts/ethereum-1/0xf0abc56ed707a55825312e2fe2f5dc11876828c2/) | ⚠️ Unaudited |
| WETHOracle | operational_periphery | ethereum | [`0xb09b4e...cb6628`](./contracts/ethereum-1/0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628/) | ⚠️ Unaudited |
| WithdrawController | operational_periphery | ethereum | [`0x081d90...db0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StoneCross | unknown | mantle | 4 deployments: bsc `0x801375...747bf7`; mantle [`0x2fde62...c1264c`](./contracts/mantle-5000/0x2fde62942759d7c0aaf25952da4098423bc1264c/); base `0xd2012f...c728c6`; linea `0x93f4d0...d21116` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x009a0d...4136a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x02f790...90743b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d6c5d...4b490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e8061...1b10d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fac52...9ce43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fee4d...fb1ec1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10fb71...7e0344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11b4fd...e781c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x129e49...b82cf9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x154695...33dd7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22ba12...cdea35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23d7c4...b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2744f1...235fd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x280cc0...c0457e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b1d94...47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d209b...93b727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d83f5...4c32f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f453d...2cd192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3035ad...e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x318cd2...8e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x342198...6cb20b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x363d20...234202` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38d98f...4db5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4dc916...f7986f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f9f9c...260fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x502f17...0da29e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x561f09...91dc0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58fb2f...4e9b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x595d20...2c1546` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60de74...7e156b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x612ab7...638da1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66e53e...09d3c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a2adb...dde52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d23c3...7e2b4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7061bb...4e51ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7356c5...d594de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7519af...9e6151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x754938...a37f84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78787f...a7eebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78cb7b...ee3947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78ed45...62828b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bf51c...36af9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7cf9e2...91d75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f0dcb...3c3f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f60e6...fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82bd64...e4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83c9c3...dc779e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x856edf...1ec3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8613d5...4ba3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88bcc9...958354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b4e28...1d7c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8c17d2...c16115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f4998...622180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91063e...d00d24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x916f46...d8a3ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9221fb...b236f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94cabf...c44341` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x958e01...f7dd8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99d45e...655ed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e5059...d7791b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0a291...202c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa11e34...5f72bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa23cb5...ed334f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa56248...148cc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa66723...301836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xacb52b...727d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae0d7c...2ec429` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaff83f...c52c46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb30510...f8d24a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb34706...bad586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6f77e...df233d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8ea9f...9947cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9d5d6...21e9fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb5895...9d9450` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbe90e...2b88e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc84ff...cb38ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc697a6...9872a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8b62e...7db057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb8b64...16e90c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd081be...e9c08d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0a81d...a6c61d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0ebd9...c07e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4dfb0...f97782` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5bb23...c4574f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd682c2...2206e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd80060...5ae48b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcd0c0...d3608a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf7e63...4b2cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe578ac...81d9fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe84a28...e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe942cd...deb93e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe94bf3...e007c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf10044...d9980b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf16709...f78e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4c1c7...eb5c48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf60b39...3eb460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7d904...76199a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf97c47...85290b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfaac8b...d05545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb153d...f9164f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc5ed9...d69b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe6577...a60465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b70ff...1df54e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2bc323...097cc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4dc916...f7986f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f60e6...fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8f88ae...b577f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa3e904...bc47c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb4cb3...909a03` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xb5d8b1...24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x801375...747bf7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x801375...747bf7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x095957...766d71`](./contracts/berachain-80094/0x095957ceb9f317ac1328f0ab3123622401766d71/) | Token | token | $45,210,092.11 | Verified native implementation with $45,210,092.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f88ae...b577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | StoneBeraVault | core_logic | $4,494,831.87 | Verified native implementation with $4,494,831.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x437c88...6be43f`](./contracts/ethereum-1/0x437c885357425686b53e0d18c8d9c26a4a6be43f/) | SBTCBeraVault | core_logic | $17,489.82 | Verified native implementation with $17,489.82 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3aa067...9aff9b`](./contracts/bsc-56/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | StoneBTCVault | core_logic | $1,908.07 | Verified native implementation with $1,908.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42af99...15754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/) | StoneCarnivalETH | token | $1,064.22 | Verified native implementation with $1,064.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb13819...75654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/) | StoryPreDepositVault | core_logic | $8.48 | Verified native implementation with $8.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x948571...7e9ad9`](./contracts/ethereum-1/0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9/) | AssetsVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9b7cc...34d574`](./contracts/ethereum-1/0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574/) | MellowDepositWstETHStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x728da6...d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/) | AccessRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x219e15...eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | AssetsRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc603...628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | AssetVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed15e5...8656cb`](./contracts/ethereum-1/0xed15e5dd75a266110a69764ac6919ef9188656cb/) | AsyncDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x693a06...2e58da`](./contracts/bsc-56/0x693a0649c24318008cf1d4d5ee4ac070f92e58da/) | AsyncVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d74b...b8a664`](./contracts/ethereum-1/0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664/) | BeraStoneRateAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53dde9...df6c7f`](./contracts/ethereum-1/0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f/) | BevmDepositBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | CLAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b70ff...1df54e`](./contracts/ethereum-1/0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e/) | DepositBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1565db...531a76`](./contracts/ethereum-1/0x1565db133d0108e911224f174ec12d20f1531a76/) | DepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x749342...8ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | DepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aca0c...343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | DepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fa6f0...6d9d2d`](./contracts/ethereum-1/0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f3994...8b1bf4`](./contracts/bsc-56/0x1f3994c851696fabc9742b53558334950b8b1bf4/) | GenesisExpedition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0fde8...0db2fb`](./contracts/ethereum-1/0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f5420...de709b`](./contracts/ethereum-1/0x8f5420e76eec29027800d4e3e8e879617bde709b/) | MiningPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec306e...133b17`](./contracts/ethereum-1/0xec306e46549a7e8f4fce823d3058f2d134133b17/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d7086...daa376`](./contracts/ethereum-1/0x2d70868f12a05b8c347974415bac5de053daa376/) | NativeLendingETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e723...6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/) | NoDelayTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cd42e...495fb1`](./contracts/ethereum-1/0x6cd42e64630d25406bfc51cca65cffa7cd495fb1/) | OracleConfigurator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77cf3...fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | OracleRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fa8e2...125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ParamRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aa067...9aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | Proposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a24e3...92bd4e`](./contracts/bsc-56/0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e/) | ReferralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46319f...f59fd0`](./contracts/bsc-56/0x46319f1a5e7bd21b89897de87679a4662cf59fd0/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | StakedLBTCOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd9779...b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | StakeStoneRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d8871...b4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/) | STO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x712298...45bd3c`](./contracts/ethereum-1/0x7122985656e38bdc0302db86685bb972b145bd3c/) | Stone | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094c0e...b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/) | StoneBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f690f...8ca57f`](./contracts/ethereum-1/0x3f690f43a9fca689829a22bf925c89b7a48ca57f/) | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bcf92...b9dc66`](./contracts/ethereum-1/0x9bcf92ad4aa45f6f5038afc4a15a02419fb9dc66/) | StoneBTCOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d831e...2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | StoneCarnival | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a265b...56a976`](./contracts/ethereum-1/0x0a265bd3007931079d2eaf5ed8bddadc7156a976/) | StoneOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1d3d...f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | StoneOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18eb3e...525fe6`](./contracts/bsc-56/0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6/) | STONEUSDStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62f9c...b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | StoneVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6dae...7e28c9`](./contracts/bsc-56/0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9/) | STOStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x396abf...a017b2`](./contracts/ethereum-1/0x396abf9ff46e21694f4ef01ca77c6d7893a017b2/) | StrategyController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0abc5...6828c2`](./contracts/ethereum-1/0xf0abc56ed707a55825312e2fe2f5dc11876828c2/) | VeSTO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb09b4e...cb6628`](./contracts/ethereum-1/0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628/) | WETHOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x081d90...db0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | WithdrawController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
