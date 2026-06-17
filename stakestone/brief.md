# Agentic Audit Brief: StakeStone

## Project Overview

- Project: StakeStone (`stakestone`)
- Website: [https://stakestone.io](https://stakestone.io)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:50.474Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, berachain, bsc, ethereum, linea, mantle, merlin, scroll
- Contract surface: 86 unique implementations (147 raw deployments)
- DeFi Llama TVL: $18,343,441.33
- On-chain TVL (included contracts): $49,724,169.62
- TVL by chain: Bsc $37,345,311.97 | Ethereum $11,208,817.37 | Berachain $1,170,040.28

## Project Description

StakeStone has evolved beyond its legacy DeFiLlama-style identity as primarily a liquid staking and yield aggregation protocol issuing assets such as STONE and SBTC. Its current public positioning presents StakeStone as a crypto-native, autonomous neo bank and payments/yield layer, offering personal accounts, borderless payments, AI-agent payment capabilities, and yield-bearing USD products, while its legacy staking and on-chain yield products remain part of the broader historical protocol context.

### Architecture

The StakeStone family provides core vaults and tokens (STONE, SBTC) used across chains, while Berachain Vault and SBTC Contracts are chain-specific or asset-specific extensions. STONEBTC and STONEUSD are additional tokenized products that likely integrate with the core vaults and strategies.

## Contract Surface Quality

- Indexed contracts: 301; live-surface contracts included: 147 (141 live, 6 unknown).
- Excluded by liveness: 150 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Unverified dependencies: 4/43.

## Audit Coverage Summary

- Verified implementations audited: 0/52 (0.0%)
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 1
- Unverified implementations: 34
- Unique implementations: 86
- Raw deployments: 147
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $49,724,169.62
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | ethereum | n/a | 10 deployments: ethereum [`0x0de028...731ee4`](./contracts/ethereum-1/0x0de028af168524f3557615d2f0ef9943e6731ee4/); ethereum `0x6a6e3a...38721e`; ethereum `0x97ad75...07a706`; ethereum `0xb28ecf...91b1a7`; ethereum `0xc620cb...ca75fa`; bsc `0x8b4e28...1d7c0b`; bsc `0xdaf169...98cf07`; berachain `0x93f4d0...d21116`; berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ⚠️ Unaudited |
| StoneBeraVault | core_logic | ethereum | n/a | [`0x8f88ae...b577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | ⚠️ Unaudited |
| SBTCBeraVault | core_logic | ethereum | n/a | [`0xf401cc...4deec7`](./contracts/ethereum-1/0xf401cc9f467c7046796d9a8b44b0c1348b4deec7/) | ⚠️ Unaudited |
| StoneBTCVault | core_logic | bsc | n/a | 2 deployments: ethereum `0x7dbac0...09108d`; bsc [`0x3aa067...9aff9b`](./contracts/bsc-56/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ⚠️ Unaudited |
| AccessRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x728da6...d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/); bsc `0x8449e6...6b223d` | ⚠️ Unaudited |
| AssetRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| AssetsRouter | adapter | ethereum | n/a | [`0x219e15...eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | ⚠️ Unaudited |
| AssetVault | core_logic | ethereum | n/a | [`0x1fc603...628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| DepositBridge | operational_periphery | ethereum | n/a | [`0xdaf169...98cf07`](./contracts/ethereum-1/0xdaf1695c41327b61b9b9965ac6a5843a3198cf07/) | ⚠️ Unaudited |
| DepositHelper | periphery | ethereum | n/a | [`0xea96d9...38db19`](./contracts/ethereum-1/0xea96d98d9a947b68899365202a43890a4d38db19/) | ⚠️ Unaudited |
| DepositVault | core_logic | ethereum | n/a | [`0x749342...8ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | ⚠️ Unaudited |
| DepositWrapper | unknown | ethereum | n/a | [`0x2aca0c...343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | ⚠️ Unaudited |
| EigenLSTRestaking | unknown | ethereum | n/a | [`0x87d004...256982`](./contracts/ethereum-1/0x87d004f22bdd5f9c85ad6d3f74f1fb6e7a256982/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | n/a | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| GenesisExpedition | unknown | bsc | n/a | 6 deployments: bsc [`0x1f3994...8b1bf4`](./contracts/bsc-56/0x1f3994c851696fabc9742b53558334950b8b1bf4/); bsc `0x2a6dc7...165c3c`; bsc `0x9f269f...8d69b4`; bsc `0xdcb29a...aa5bbb`; bsc `0xe33da1...20f1db`; bsc `0xe9f292...b7d2ea` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | n/a | [`0xa1bc65...a3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | n/a | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| NoDelayTimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x00e723...6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/); ethereum `0xa6b4bf...c71c7c` | ⚠️ Unaudited |
| OneDayDelayTimelockController | governance | ethereum | n/a | [`0x5eddcf...86de9a`](./contracts/ethereum-1/0x5eddcfe6b829621487a00e3b3d211ef80986de9a/) | ⚠️ Unaudited |
| OracleRegistry | operational_periphery | ethereum | n/a | [`0xa77cf3...fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | ⚠️ Unaudited |
| ParamRegistry | registry | ethereum | n/a | [`0x1fa8e2...125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ⚠️ Unaudited |
| Proposal | unknown | ethereum | n/a | [`0x3aa067...9aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ⚠️ Unaudited |
| ReferralRegistry | registry | bsc | n/a | 6 deployments: bsc [`0x1a24e3...92bd4e`](./contracts/bsc-56/0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e/); bsc `0xa3ac2f...fab007`; bsc `0xa52248...9f448d`; bsc `0xe38f0d...049af6`; bsc `0xf00142...e5cba9`; bsc `0xfa10ce...beda58` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x46319f...f59fd0`](./contracts/bsc-56/0x46319f1a5e7bd21b89897de87679a4662cf59fd0/); bsc `0x5502fd...b3c1d9`; bsc `0x84c58b...d1fc5f`; bsc `0xc2f513...1d35cb`; berachain `0xf46a21...ffbbe5` | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | n/a | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/); ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | operational_periphery | ethereum | n/a | [`0xfd9779...b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | ⚠️ Unaudited |
| STO | unknown | ethereum | n/a | [`0x1d8871...b4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/) | ⚠️ Unaudited |
| Stone | unknown | ethereum | n/a | [`0x712298...45bd3c`](./contracts/ethereum-1/0x7122985656e38bdc0302db86685bb972b145bd3c/) | ⚠️ Unaudited |
| StoneBTC | unknown | ethereum | n/a | 4 deployments: ethereum [`0x094c0e...b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/); bsc `0x154695...33dd7d`; bsc `0x342198...6cb20b`; bsc `0xd081be...e9c08d` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x3f690f...8ca57f`](./contracts/ethereum-1/0x3f690f43a9fca689829a22bf925c89b7a48ca57f/); bsc `0x712298...45bd3c`; scroll `0x4f9f13...918501` | ⚠️ Unaudited |
| StoneCarnival | unknown | ethereum | n/a | [`0x4d831e...2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | ⚠️ Unaudited |
| StoneCarnivalETH | token | ethereum | n/a | [`0xb3fc73...b54541`](./contracts/ethereum-1/0xb3fc739972795e0f2a8da00173ee9cf834b54541/) | ⚠️ Unaudited |
| StoneOFT | unknown | ethereum | n/a | [`0x823513...388d67`](./contracts/ethereum-1/0x8235139902590521ba96b9c26009d34080388d67/) | ⚠️ Unaudited |
| StoneOracle | operational_periphery | ethereum | n/a | [`0x2c1d3d...f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | ⚠️ Unaudited |
| STONEUSDStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x18eb3e...525fe6`](./contracts/bsc-56/0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6/); bsc `0x4dff4a...9426d2`; bsc `0x5cd3cc...fe632f`; bsc `0x8dd2aa...125968` | ⚠️ Unaudited |
| StoneVault | core_logic | ethereum | n/a | [`0xa62f9c...b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | ⚠️ Unaudited |
| STOStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x3a6dae...7e28c9`](./contracts/bsc-56/0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9/); bsc `0x627a17...580b06`; bsc `0xaee118...fa225d`; bsc `0xc716b7...a52f21` | ⚠️ Unaudited |
| StrategyController | core_logic | ethereum | n/a | [`0x396abf...a017b2`](./contracts/ethereum-1/0x396abf9ff46e21694f4ef01ca77c6d7893a017b2/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0xb90a47...26c686` | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | governance | ethereum | n/a | [`0xbc29f7...031ae6`](./contracts/ethereum-1/0xbc29f7781a26dd3958d0caf26885c4820d031ae6/) | ⚠️ Unaudited |
| WithdrawController | operational_periphery | ethereum | n/a | [`0x081d90...db0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StoneCross | unknown | mantle | n/a | 4 deployments: bsc `0x801375...747bf7`; mantle [`0x2fde62...c1264c`](./contracts/mantle-5000/0x2fde62942759d7c0aaf25952da4098423bc1264c/); base `0xd2012f...c728c6`; linea `0x93f4d0...d21116` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0e8061...1b10d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23d7c4...b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d83f5...4c32f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3035ad...e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38d98f...4db5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9f9c...260fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x502f17...0da29e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58fb2f...4e9b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78cb7b...ee3947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf51c...36af9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82bd64...e4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c9c3...dc779e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4998...622180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94cabf...c44341` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd80060...5ae48b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcd0c0...d3608a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84a28...e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf10044...d9980b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7d904...76199a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b70ff...1df54e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc323...097cc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f88ae...b577f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3e904...bc47c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb4cb3...909a03` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xb5d8b1...24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x801375...747bf7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
