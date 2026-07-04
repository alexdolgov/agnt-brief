# Agentic Audit Brief: StakeStone

## Project Overview

- Project: StakeStone (`stakestone`)
- Website: [https://stakestone.io](https://stakestone.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:31.897Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, berachain, bsc, ethereum, linea, mantle, merlin, scroll
- Contract surface: 188 unique implementations (273 raw deployments)
- DeFi Llama TVL: $17,184,100.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 88 project-authored contract(s) across 5 chain(s); 1 ERC4626 vault, 18 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 17 common project-authored base contract(s) (timelockcontroller, erc165, erc721holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 297; live-surface contracts included: 272 (149 live, 123 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 35/65 (53.8%)
- Deployed-live implementations: 65 of 188 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 35/65
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 123
- Unique implementations: 188
- Raw deployments: 273
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 35 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 38.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 25 | 38.5% | 2025-04 |
| Secure3 | Tier 2 | 20 | 30.8% | 2025-10 |
| Veridise | Tier 2 | 8 | 12.3% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x728da6...d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/); bsc `0x8449e6...6b223d` | ✅ Audited |
| AssetsRouter | adapter | ethereum | n/a | [`0x219e15...eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | ✅ Audited |
| AssetsVault | unknown | ethereum | n/a | [`0x948571...7e9ad9`](./contracts/ethereum-1/0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9/) | ✅ Audited |
| AssetVault | core_logic | ethereum | n/a | [`0x1fc603...628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | ✅ Audited |
| DepositBridge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1b70ff...1df54e`](./contracts/ethereum-1/0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e/); ethereum `0xdaf169...98cf07`; ethereum `0xfb4cb3...909a03` | ✅ Audited |
| DepositVault | core_logic | ethereum | n/a | [`0x749342...8ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | ✅ Audited |
| DepositWrapper | unknown | ethereum | n/a | [`0x2aca0c...343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | ✅ Audited |
| EigenLSTRestaking | token | ethereum | n/a | [`0x87d004...256982`](./contracts/ethereum-1/0x87d004f22bdd5f9c85ad6d3f74f1fb6e7a256982/) | ✅ Audited |
| Escrow | unknown | ethereum | n/a | [`0x2fa6f0...6d9d2d`](./contracts/ethereum-1/0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d/) | ✅ Audited |
| MellowDepositWstETHStrategy | unknown | ethereum | n/a | [`0xe9b7cc...34d574`](./contracts/ethereum-1/0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574/) | ✅ Audited |
| Minter | unknown | ethereum | n/a | [`0xec306e...133b17`](./contracts/ethereum-1/0xec306e46549a7e8f4fce823d3058f2d134133b17/) | ✅ Audited |
| NativeLendingETHStrategy | unknown | ethereum | n/a | [`0x2d7086...daa376`](./contracts/ethereum-1/0x2d70868f12a05b8c347974415bac5de053daa376/) | ✅ Audited |
| NoDelayTimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x00e723...6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/); ethereum `0xa6b4bf...c71c7c` | ✅ Audited |
| OneDayDelayTimelockController | governance | ethereum | n/a | [`0x5eddcf...86de9a`](./contracts/ethereum-1/0x5eddcfe6b829621487a00e3b3d211ef80986de9a/) | ✅ Audited |
| OracleConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6cd42e...495fb1`](./contracts/ethereum-1/0x6cd42e64630d25406bfc51cca65cffa7cd495fb1/); ethereum `0x8636dd...cfef6c` | ✅ Audited |
| OracleRegistry | operational_periphery | ethereum | n/a | [`0xa77cf3...fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | ✅ Audited |
| ParamRegistry | registry | ethereum | n/a | [`0x1fa8e2...125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ✅ Audited |
| Proposal | unknown | ethereum | n/a | [`0x3aa067...9aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ✅ Audited |
| SBTCBeraVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x437c88...6be43f`](./contracts/ethereum-1/0x437c885357425686b53e0d18c8d9c26a4a6be43f/); ethereum `0x5502fd...b3c1d9`; ethereum `0x5ae986...5bab2f`; ethereum `0xf401cc...4deec7` | ✅ Audited |
| STO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d8871...b4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/); ethereum `0x9ffc17...0af371` | ✅ Audited |
| Stone | unknown | ethereum | n/a | [`0x712298...45bd3c`](./contracts/ethereum-1/0x7122985656e38bdc0302db86685bb972b145bd3c/) | ✅ Audited |
| StoneBeraVault | core_logic | ethereum | n/a | [`0x8f88ae...b577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | ✅ Audited |
| StoneBTC | unknown | ethereum | n/a | 7 deployments: ethereum [`0x094c0e...b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/); ethereum `0x6c344c...9f7822`; ethereum `0xdc939b...e03cd0`; bsc `0x154695...33dd7d`; bsc `0x342198...6cb20b`; bsc `0xa0a291...202c7f`; bsc `0xd081be...e9c08d` | ✅ Audited |
| StoneBTCLayerZeroAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x3f690f...8ca57f`](./contracts/ethereum-1/0x3f690f43a9fca689829a22bf925c89b7a48ca57f/); bsc `0x712298...45bd3c`; scroll `0x4f9f13...918501` | ✅ Audited |
| StoneBTCVault | core_logic | bsc | n/a | 2 deployments: ethereum `0x7dbac0...09108d`; bsc [`0x3aa067...9aff9b`](./contracts/bsc-56/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ✅ Audited |
| StoneCross | unknown | bsc | n/a | 3 deployments: bsc [`0x801375...747bf7`](./contracts/bsc-56/0x80137510979822322193fc997d400d5a6c747bf7/); base `0xd2012f...c728c6`; linea `0x93f4d0...d21116` | ✅ Audited |
| StoneOFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a265b...56a976`](./contracts/ethereum-1/0x0a265bd3007931079d2eaf5ed8bddadc7156a976/); ethereum `0x823513...388d67` | ✅ Audited |
| StoneOracle | operational_periphery | ethereum | n/a | [`0x2c1d3d...f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | ✅ Audited |
| StoneVault | core_logic | ethereum | n/a | [`0xa62f9c...b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | ✅ Audited |
| StrategyController | core_logic | ethereum | n/a | [`0x396abf...a017b2`](./contracts/ethereum-1/0x396abf9ff46e21694f4ef01ca77c6d7893a017b2/) | ✅ Audited |
| ThreeDaysDelayTimelockController | governance | ethereum | n/a | [`0xbc29f7...031ae6`](./contracts/ethereum-1/0xbc29f7781a26dd3958d0caf26885c4820d031ae6/) | ✅ Audited |
| Token | unknown | berachain | n/a | 15 deployments: ethereum `0x0de028...731ee4`; ethereum `0x17091b...08d168`; ethereum `0x2ea783...626b74`; ethereum `0x6a6e3a...38721e`; ethereum `0x97ad75...07a706`; ethereum `0xb28ecf...91b1a7`; ethereum `0xc620cb...ca75fa`; ethereum `0xd7f311...e9ea38`; ethereum `0xfd47eb...8bda70`; bsc `0x8b4e28...1d7c0b`; bsc `0xdaf169...98cf07`; berachain [`0x095957...766d71`](./contracts/berachain-80094/0x095957ceb9f317ac1328f0ab3123622401766d71/); berachain `0x93f4d0...d21116`; berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ✅ Audited |
| VeSTO | unknown | ethereum | n/a | [`0xf0abc5...6828c2`](./contracts/ethereum-1/0xf0abc56ed707a55825312e2fe2f5dc11876828c2/) | ✅ Audited |
| WETHOracle | unknown | ethereum | n/a | [`0xb09b4e...cb6628`](./contracts/ethereum-1/0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628/) | ✅ Audited |
| WithdrawController | operational_periphery | ethereum | n/a | [`0x081d90...db0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| CLAdapter | unknown | ethereum | n/a | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | ⚠️ Unaudited |
| Consortium | unknown | ethereum | n/a | [`0x9f8048...c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | ⚠️ Unaudited |
| DepositHelper | periphery | ethereum | n/a | [`0xea96d9...38db19`](./contracts/ethereum-1/0xea96d98d9a947b68899365202a43890a4d38db19/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | n/a | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| GenesisExpedition | unknown | bsc | n/a | 6 deployments: bsc [`0x1f3994...8b1bf4`](./contracts/bsc-56/0x1f3994c851696fabc9742b53558334950b8b1bf4/); bsc `0x2a6dc7...165c3c`; bsc `0x9f269f...8d69b4`; bsc `0xdcb29a...aa5bbb`; bsc `0xe33da1...20f1db`; bsc `0xe9f292...b7d2ea` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | n/a | 5 deployments: ethereum [`0x12364c...348eea`](./contracts/ethereum-1/0x12364c9d095a2a43abb71b0d8313663ff0348eea/); ethereum `0x4cbd88...d0c4bc`; ethereum `0x80a23c...00053c`; ethereum `0xa1a961...bc0122`; ethereum `0xa1bc65...a3845a` | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| LombardConsortium | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67927d...0f1a1b`](./contracts/ethereum-1/0x67927d7ea19f9a1053f4f5bbdf827ed9870f1a1b/); ethereum `0xed6d64...d780e0` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | n/a | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| ReferralRegistry | registry | bsc | n/a | 6 deployments: bsc [`0x1a24e3...92bd4e`](./contracts/bsc-56/0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e/); bsc `0xa3ac2f...fab007`; bsc `0xa52248...9f448d`; bsc `0xe38f0d...049af6`; bsc `0xf00142...e5cba9`; bsc `0xfa10ce...beda58` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x46319f...f59fd0`](./contracts/bsc-56/0x46319f1a5e7bd21b89897de87679a4662cf59fd0/); bsc `0x5502fd...b3c1d9`; bsc `0x84c58b...d1fc5f`; bsc `0xc2f513...1d35cb`; berachain `0xf46a21...ffbbe5` | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | 4 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5`; ethereum `0xec2631...d21455` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | n/a | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/); ethereum `0x8236a8...634494` | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/); ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | operational_periphery | ethereum | n/a | [`0xfd9779...b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | ⚠️ Unaudited |
| StoneCarnival | unknown | ethereum | n/a | [`0x4d831e...2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42af99...15754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/); ethereum `0xb3fc73...b54541` | ⚠️ Unaudited |
| STONEUSDStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x18eb3e...525fe6`](./contracts/bsc-56/0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6/); bsc `0x4dff4a...9426d2`; bsc `0x5cd3cc...fe632f`; bsc `0x8dd2aa...125968` | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb13819...75654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/); ethereum `0xb31089...257ddb` | ⚠️ Unaudited |
| STOStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x3a6dae...7e28c9`](./contracts/bsc-56/0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9/); bsc `0x627a17...580b06`; bsc `0xaee118...fa225d`; bsc `0xc716b7...a52f21` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0xb90a47...26c686` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (123)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x009a0d...4136a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02f790...90743b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d6c5d...4b490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e8061...1b10d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fac52...9ce43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fee4d...fb1ec1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fb71...7e0344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11b4fd...e781c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x129e49...b82cf9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x154695...33dd7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ba12...cdea35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23d7c4...b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2744f1...235fd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x280cc0...c0457e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b1d94...47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d209b...93b727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d83f5...4c32f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f453d...2cd192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3035ad...e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x318cd2...8e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x342198...6cb20b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363d20...234202` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38d98f...4db5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dc916...f7986f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9f9c...260fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x502f17...0da29e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561f09...91dc0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58fb2f...4e9b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x595d20...2c1546` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60de74...7e156b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612ab7...638da1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66e53e...09d3c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a2adb...dde52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d23c3...7e2b4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7061bb...4e51ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7356c5...d594de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7519af...9e6151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x754938...a37f84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78787f...a7eebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78cb7b...ee3947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ed45...62828b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf51c...36af9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf9e2...91d75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0dcb...3c3f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f60e6...fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82bd64...e4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c9c3...dc779e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x856edf...1ec3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8613d5...4ba3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88bcc9...958354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4e28...1d7c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c17d2...c16115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4998...622180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91063e...d00d24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x916f46...d8a3ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9221fb...b236f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94cabf...c44341` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x958e01...f7dd8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99d45e...655ed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e5059...d7791b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0a291...202c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa11e34...5f72bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa23cb5...ed334f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa56248...148cc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa66723...301836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb52b...727d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae0d7c...2ec429` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaff83f...c52c46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb30510...f8d24a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb34706...bad586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f77e...df233d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8ea9f...9947cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9d5d6...21e9fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5895...9d9450` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbe90e...2b88e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc84ff...cb38ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc697a6...9872a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8b62e...7db057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb8b64...16e90c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd081be...e9c08d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0a81d...a6c61d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0ebd9...c07e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4dfb0...f97782` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5bb23...c4574f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd682c2...2206e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd80060...5ae48b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcd0c0...d3608a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf7e63...4b2cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe578ac...81d9fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84a28...e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe942cd...deb93e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94bf3...e007c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf10044...d9980b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf16709...f78e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4c1c7...eb5c48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf60b39...3eb460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7d904...76199a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf97c47...85290b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaac8b...d05545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb153d...f9164f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc5ed9...d69b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe6577...a60465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b70ff...1df54e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc323...097cc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dc916...f7986f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f60e6...fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f88ae...b577f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3e904...bc47c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb4cb3...909a03` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xb5d8b1...24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2fde62...c1264c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x801375...747bf7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x801375...747bf7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Stone Bera Vault - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 21 | high |
| [STONE BTC - SlowMist Audit Report_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20-%20SlowMist%20Audit%20Report_en-us.pdf) | SlowMist | Audit | 2024-09 | aging | Direct | contract_name | 13 | high |
| [STONE BTC Vault - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 18 | high |
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Link:** <> (also discovered via alternate URL)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [**Link:** <>\ (also discovered via alternate URL)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi_en-us.pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [<>](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy_en-us.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [<>](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F4QRxWHR92kPuv1t3HJxn%2FStakeStone%20Tokenized%20Vault%20-%20Report.pdf) | Secure3 | Audit | 2025-10 | fresh | Direct | contract_name | 26 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FrOtzZvGDMtPpY3slhFyh%2FStakeStone_Final_Report.pdf) | Secure3 | Audit | 2024-07 | stale | Direct | contract_name | 10 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20-%20StakeStone.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | contract_name | 12 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FCYIX4PcaObV8cl40ejdE%2FSlowMist%20Audit%20Report%20-%20EigenLSTRestaking.pdf) | SlowMist | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [SlowMist Audit Report - StakeStone_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone_en-us.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | contract_name | 12 | high |
| [SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [StakeStone DAO - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/StakeStone%20DAO%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | 4 | high |
| [SlowMist Audit Report - StakeStone - Restaking_en-us.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FqBfJB4MR0ZwSpCdrto6b%2FSlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FSgVpK5T5WWpoj9mwS3bm%2FSlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi%20(3).pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FF43Hk4K2PyIWiakMaSlw%2FSlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FRBZCoEprwlIAe7kN2nhn%2FStakestoneEigenlayerHelper_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [StakeStone_final_Secure3_Audit_Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FVPMwYQsoShkgFtcw3SbM%2FStakeStone_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-08 | stale | Direct | contract_name | 9 | high |
| [VAR_StakeStone_231208-Final.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FBP2QLRtKlu74IXditjFj%2FVAR_StakeStone_231208-Final.pdf) | Veridise | Audit | 2023-12 | stale | Direct | contract_name | 12 | high |
| [STONE BTC Vault - SlowMist Audit Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F8Lx18BRXLLbxnX2zC78t%2FSTONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 18 | high |
| [StakeStone DAO - SlowMist Audit Report (4).pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F0Mb2Btl5gyYFsESugiux%2FStakeStone%20DAO%20-%20SlowMist%20Audit%20Report%20(4).pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 188 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=17
- Match method counts: extraction_exact=168

Zero-match audit list:

- [18264] index.html
- [18266] **Link:** <>
- [18268] <>
- [18282] SlowMist Audit Report - StakeStone - Restaking_en-us.pdf
- [18284] SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf
- [18285] StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
