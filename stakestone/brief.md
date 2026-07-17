# Agentic Audit Brief: StakeStone

## Project Overview

- Project: StakeStone (`stakestone`)
- Website: [https://stakestone.io](https://stakestone.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.863Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, berachain, bsc, ethereum, linea, mantle, merlin, scroll
- Contract surface: 184 unique implementations (262 raw deployments)
- DeFi Llama TVL: $17,184,100.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 88 project-authored contract(s) across 5 chain(s); 1 ERC4626 vault, 18 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 17 common project-authored base contract(s) (timelockcontroller, erc165, erc721holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 273; live-surface contracts included: 262 (139 live, 123 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 34/60 (56.7%)
- Deployed-live implementations: 61 of 184 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 35/61
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 123
- Unique implementations: 184
- Raw deployments: 262
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 35 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 40.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 25 | 41.0% | 2025-04 |
| Secure3 | Tier 2 | 20 | 32.8% | 2025-10 |
| Veridise | Tier 2 | 8 | 13.1% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x728da61583441bb4326481ae27edeaaaa2d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/); bsc `0x8449e6886bf865d522e10cc420f92b980c6b223d` | ✅ Audited |
| AssetsRouter | adapter | ethereum | n/a | [`0x219e157c79f5b188397f6ccdb6d0f97600eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | ✅ Audited |
| AssetsVault | unknown | ethereum | n/a | [`0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9`](./contracts/ethereum-1/0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9/) | ✅ Audited |
| AssetVault | core_logic | ethereum | n/a | [`0x1fc603779dc6b4866769a58067777d2c52628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | ✅ Audited |
| DepositBridge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e`](./contracts/ethereum-1/0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e/); ethereum `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07`; ethereum `0xfb4cb3f473203fac25d292701e3274c298909a03` | ✅ Audited |
| DepositVault | core_logic | ethereum | n/a | [`0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | ✅ Audited |
| DepositWrapper | unknown | ethereum | n/a | [`0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | ✅ Audited |
| EigenLSTRestaking | token | ethereum | n/a | [`0x87d004f22bdd5f9c85ad6d3f74f1fb6e7a256982`](./contracts/ethereum-1/0x87d004f22bdd5f9c85ad6d3f74f1fb6e7a256982/) | ✅ Audited |
| Escrow | unknown | ethereum | n/a | [`0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d`](./contracts/ethereum-1/0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d/) | ✅ Audited |
| MellowDepositWstETHStrategy | unknown | ethereum | n/a | [`0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574`](./contracts/ethereum-1/0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574/) | ✅ Audited |
| Minter | unknown | ethereum | n/a | [`0xec306e46549a7e8f4fce823d3058f2d134133b17`](./contracts/ethereum-1/0xec306e46549a7e8f4fce823d3058f2d134133b17/) | ✅ Audited |
| NativeLendingETHStrategy | unknown | ethereum | n/a | [`0x2d70868f12a05b8c347974415bac5de053daa376`](./contracts/ethereum-1/0x2d70868f12a05b8c347974415bac5de053daa376/) | ✅ Audited |
| NoDelayTimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x00e72315f630b11034fd081793fca1279b6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/); ethereum `0xa6b4bfa0da2a857e074eb9f108e14012c2c71c7c` | ✅ Audited |
| OneDayDelayTimelockController | governance | ethereum | n/a | [`0x5eddcfe6b829621487a00e3b3d211ef80986de9a`](./contracts/ethereum-1/0x5eddcfe6b829621487a00e3b3d211ef80986de9a/) | ✅ Audited |
| OracleConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6cd42e64630d25406bfc51cca65cffa7cd495fb1`](./contracts/ethereum-1/0x6cd42e64630d25406bfc51cca65cffa7cd495fb1/); ethereum `0x8636dd05027ec8ba84fa8c982951bbb61dcfef6c` | ✅ Audited |
| OracleRegistry | operational_periphery | ethereum | n/a | [`0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | ✅ Audited |
| ParamRegistry | registry | ethereum | n/a | [`0x1fa8e2673ee9de09c31cad191d8974ac1f125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ✅ Audited |
| Proposal | unknown | ethereum | n/a | [`0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ✅ Audited |
| SBTCBeraVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x437c885357425686b53e0d18c8d9c26a4a6be43f`](./contracts/ethereum-1/0x437c885357425686b53e0d18c8d9c26a4a6be43f/); ethereum `0x5502fdf6f101ece6e4c7c10ef060a947d8b3c1d9`; ethereum `0x5ae986aa3777850dbe42f5afda171691225bab2f`; ethereum `0xf401cc9f467c7046796d9a8b44b0c1348b4deec7` | ✅ Audited |
| STO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/); ethereum `0x9ffc173a8b4f137f58dff176c3c85bb8de0af371` | ✅ Audited |
| Stone | unknown | ethereum | n/a | [`0x7122985656e38bdc0302db86685bb972b145bd3c`](./contracts/ethereum-1/0x7122985656e38bdc0302db86685bb972b145bd3c/) | ✅ Audited |
| StoneBeraVault | core_logic | ethereum | n/a | [`0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | ✅ Audited |
| StoneBTC | unknown | ethereum | n/a | 7 deployments: ethereum [`0x094c0e36210634c3cfa25dc11b96b562e0b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/); ethereum `0x6c344c6191fee58f0de2604721f596efbc9f7822`; ethereum `0xdc939bee0e1ccd198a5af5ac1f90ea0b8ee03cd0`; bsc `0x15469528c11e8ace863f3f9e5a8329216e33dd7d`; bsc `0x3421981450758e341f2b91397bb7b76a556cb20b`; bsc `0xa0a2917cb9fbf3159730cb502e83cc7b32202c7f`; bsc `0xd081be7f329e13c4097cfa3668f1e690cde9c08d` | ✅ Audited |
| StoneBTCLayerZeroAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x3f690f43a9fca689829a22bf925c89b7a48ca57f`](./contracts/ethereum-1/0x3f690f43a9fca689829a22bf925c89b7a48ca57f/); bsc `0x7122985656e38bdc0302db86685bb972b145bd3c`; scroll `0x4f9f1333cffa3e0dca98736e260442a86d918501` | ✅ Audited |
| StoneBTCVault | core_logic | bsc | n/a | 2 deployments: ethereum `0x7dbac0aa440a25d7fb43951f7b178ff7a809108d`; bsc [`0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b`](./contracts/bsc-56/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ✅ Audited |
| StoneCross | unknown | bsc | n/a | 3 deployments: bsc [`0x80137510979822322193fc997d400d5a6c747bf7`](./contracts/bsc-56/0x80137510979822322193fc997d400d5a6c747bf7/); base `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6`; linea `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` | ✅ Audited |
| StoneOFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a265bd3007931079d2eaf5ed8bddadc7156a976`](./contracts/ethereum-1/0x0a265bd3007931079d2eaf5ed8bddadc7156a976/); ethereum `0x8235139902590521ba96b9c26009d34080388d67` | ✅ Audited |
| StoneOracle | operational_periphery | ethereum | n/a | [`0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | ✅ Audited |
| StoneVault | core_logic | ethereum | n/a | [`0xa62f9c5af106feee069f38de51098d9d81b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | ✅ Audited |
| StrategyController | core_logic | ethereum | n/a | [`0x396abf9ff46e21694f4ef01ca77c6d7893a017b2`](./contracts/ethereum-1/0x396abf9ff46e21694f4ef01ca77c6d7893a017b2/) | ✅ Audited |
| ThreeDaysDelayTimelockController | governance | ethereum | n/a | [`0xbc29f7781a26dd3958d0caf26885c4820d031ae6`](./contracts/ethereum-1/0xbc29f7781a26dd3958d0caf26885c4820d031ae6/) | ✅ Audited |
| Token | unknown | berachain | n/a | 15 deployments: ethereum `0x0de028af168524f3557615d2f0ef9943e6731ee4`; ethereum `0x17091b36bd06bb7a60d2c36e30b68c7d5508d168`; ethereum `0x2ea78379520380d37b0708a0294664a3ab626b74`; ethereum `0x6a6e3a4396993a4ec98a6f4a654cc0819538721e`; ethereum `0x97ad75064b20fb2b2447fed4fa953bf7f007a706`; ethereum `0xb28ecfc8ae218bc2c16c1f2218a9cc799191b1a7`; ethereum `0xc620cb64c6c504f417da517048ae2dab7cca75fa`; ethereum `0xd7f311a29b54e13b0a6c97027ece4a41cbe9ea38`; ethereum `0xfd47eb1084ebdb3f1ae000cbd213420b398bda70`; bsc `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b`; bsc `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07`; berachain [`0x095957ceb9f317ac1328f0ab3123622401766d71`](./contracts/berachain-80094/0x095957ceb9f317ac1328f0ab3123622401766d71/); berachain `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116`; berachain `0xd0ebd9f75fbd0bc8852b6fa454cec6e52ac07e10`; berachain `0xec901da9c68e90798bbbb74c11406a32a70652c3` | ✅ Audited |
| VeSTO | unknown | ethereum | n/a | [`0xf0abc56ed707a55825312e2fe2f5dc11876828c2`](./contracts/ethereum-1/0xf0abc56ed707a55825312e2fe2f5dc11876828c2/) | ✅ Audited |
| WETHOracle | unknown | ethereum | n/a | [`0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628`](./contracts/ethereum-1/0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628/) | ✅ Audited |
| WithdrawController | operational_periphery | ethereum | n/a | [`0x081d9019b016d7879b3aa4b278728771bfdb0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xb823359367978a28eae71e90f79d95b62348bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d5571c61108f61787f388425fcf844255a928`; ethereum `0xfc38d40277f76a49cf5b512a7361eb1dde36972f` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc785247dc5a51223aeae23668c24a1a79841a235` | ⚠️ Unaudited |
| DepositHelper | periphery | ethereum | n/a | [`0xea96d98d9a947b68899365202a43890a4d38db19`](./contracts/ethereum-1/0xea96d98d9a947b68899365202a43890a4d38db19/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x3f987372a1ae29f834deaea66d2e72137ba10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc8e0ea5fa5f2febcbf9f6977dadf1cee901`; ethereum `0x8b80cabe10eaf14bdfe9787d346fcde18317fed2`; ethereum `0x9a7ca5e9d6713e9844c073bfe288a8c87b080ed2`; ethereum `0xc337baf4c7bd22292011614cb7c86472a3901612`; ethereum `0xeac3f8b89f8aab1c6bf664b4b65830b8c9d34ce7` | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | n/a | [`0x512258182db0ad147cdc1a116191be823f8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| GenesisExpedition | unknown | bsc | n/a | 6 deployments: bsc [`0x1f3994c851696fabc9742b53558334950b8b1bf4`](./contracts/bsc-56/0x1f3994c851696fabc9742b53558334950b8b1bf4/); bsc `0x2a6dc77ae8c6112336826af3743a6a2ca6165c3c`; bsc `0x9f269f8f2c1e2b952ebe5b1447d860c96f8d69b4`; bsc `0xdcb29a10b3f40c01268489281f6b9b52eeaa5bbb`; bsc `0xe33da1193f1142c337bc7b2bcededd56a220f1db`; bsc `0xe9f29295376a84f3530332423f50453f52b7d2ea` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | n/a | [`0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1290a6b480f7ef14925229fdb66f5680ad8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d760a15231e652a2c502182a6b44c7510c0`; ethereum `0x3a7647c1323144a16e7d0d71a581e3fe5bd95299`; ethereum `0x6bc15d7930839ec18a57f6f7df72ae1b439d077f`; ethereum `0xa7c4d94f98b6e94c139c4645e4e9a94cd7c0abf7`; ethereum `0xacb11bc20b1945e59976e3307d2a805faa126c31` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | n/a | [`0x055e84e7fe8955e2781010b866f10ef6e1e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x61003ba35d6f57e0b61442bc88c2c7a45bf56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e18636effc3b3cd520fc72b710eb99c0017bc7`; ethereum `0xba59cf1c1563a9b93a8c5d70f8e445eaca9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359563d104867a42c48cb7e688b1af22f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b89d757668a830f17d693a88d46073501df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197c89104335dcb026b28eb3ae08ab83af7b3` | ⚠️ Unaudited |
| ReferralRegistry | registry | bsc | n/a | 6 deployments: bsc [`0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e`](./contracts/bsc-56/0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e/); bsc `0xa3ac2f9d7345883512f503c4709ddbd434fab007`; bsc `0xa5224855c09603ead17345934de341e51a9f448d`; bsc `0xe38f0dbf50cee3b6997ea901f29012ced3049af6`; bsc `0xf00142149e5424259255a6b60ed2574bf4e5cba9`; bsc `0xfa10ce45e46bdaaf44ec5135337fc73ad7beda58` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x46319f1a5e7bd21b89897de87679a4662cf59fd0`](./contracts/bsc-56/0x46319f1a5e7bd21b89897de87679a4662cf59fd0/); bsc `0x5502fdf6f101ece6e4c7c10ef060a947d8b3c1d9`; bsc `0x84c58b92725a6abbaf859e53f4bcd95c8cd1fc5f`; bsc `0xc2f513f7d87462c180e963df85822cfd411d35cb`; berachain `0xf46a21bb51ae1ddeab580696106cd9924cffbbe5` | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9088d8a41744e9cca78d01e6185f2acb81be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa252131fbbc87d737b7d2c633ea6cdbdfe673675`; ethereum `0xb492ac46a8e7f0cabfa0fa4041a2f50f595df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | n/a | [`0x0bca0fb61480530e87dddbb3bb5f0539c97eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x21f352fc288b5e030867eed41f7402482b083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/); ethereum `0x8c21abcba5d634412e9d0fa503c9fe056d760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b7b2a6401efe60ee92efe9d7f1cb65c9cd6` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | operational_periphery | ethereum | n/a | [`0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | ⚠️ Unaudited |
| StoneCarnival | unknown | ethereum | n/a | [`0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42af9986e56c8c9a88368d69879a64de6715754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/); ethereum `0xb3fc739972795e0f2a8da00173ee9cf834b54541` | ⚠️ Unaudited |
| STONEUSDStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6`](./contracts/bsc-56/0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6/); bsc `0x4dff4a102623db0bfdded919b948dc70f89426d2`; bsc `0x5cd3cc345cd6c8c3889c539c325e24e6fdfe632f`; bsc `0x8dd2aa28b0a4cf7d918713c4013befd903125968` | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb1381900c742b509cf2b23d6b293649ea875654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/); ethereum `0xb310890b6ea10e97f903edcc8964aad125257ddb` | ⚠️ Unaudited |
| STOStaking | unknown | bsc | n/a | 4 deployments: bsc [`0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9`](./contracts/bsc-56/0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9/); bsc `0x627a17ec3baa4c8678b4670d57a8ccd1e8580b06`; bsc `0xaee11824eb86ddb04bf763720ee2b5b882fa225d`; bsc `0xc716b79d4d7e26ab23ae21e7f96e392792a52f21` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0xb90a473313fecf94443d2765cc74aa746a26c686` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x009a0d4f1d2b5724c1875782793786a2984136a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02f790cd26f932561f1b036546991cbb2490743b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d6c5d9078c6b5e3cd58a019183abb70d14b490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e8061e98b20f23f313bd8981f126932161b10d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fac524f8cc56f693ab84fd30b888e38439ce43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fee4de7d1246eef15f53fa5ce955f5c2afb1ec1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fb7191a7489f6be6f5739da1114ccd907e0344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11b4fdb671b4102ce1f2bc64f61ba7e16fe781c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x129e49c0399e3c932d34c3b76a598214b5b82cf9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ba12d2f3f3a7bed7dc0938ef040d38d3cdea35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23d7c4506142ed23025a9a61d696d63da6b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2744f13466a00b5073a408357936e4fb3e235fd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x280cc0dc62e12938d6af47d67406197973c0457e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b1d947f995cdad9ee38aed2096c75fcbb47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d209b857c6d1361031a2874da59ad9df593b727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d83f5bfc83cf0b09b8884101c015fa9c74c32f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f453dffecb8fb45248882bf9232b039132cd192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3035ad9b8adba657a20bc6c4aec13c29d6e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x318cd27ae7d6b81f1be3cfaf6cd62bc75c8e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3421981450758e341f2b91397bb7b76a556cb20b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363d200e54fe86985790f4e210df9bfb14234202` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38d98fb5cb6d3d05880db8a9c6c4d668684db5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dc916664dae3ae8eecce340a36af8de2af7986f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9f9cc333db3169a583d93ee64bb5971e260fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x502f174ce17c273449d3191000cabe0a040da29e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561f09697bddf86941cbdaeeddac7be39991dc0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58fb2f90f0962379e3722c55bb1abb70d14e9b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x595d2018292b8c89fc3dfb049ae95cf73f2c1546` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60de74f84f020a0f4bf6515775bb5bf48e7e156b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6109b5ff17b244914ee59104a01aaf0e61cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612ab72ec3c3493840156d45cef3d44861638da1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66e53ee3bc60899987bb2159ecc7c04beb09d3c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a2adbb67491eece4302444896ffb74ec9dde52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d23c3c68c6c8668f13892841e3c7d04e97e2b4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7061bbc6fe070aa0492dd9fc65e92d17184e51ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7356c596e6e0167b251ee80fb7567c310dd594de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7519af366e629eaa9dbfb898ae72c34ec09e6151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7549383dce0bc1b5fbdb5b8f107df0720ea37f84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78787f403e008461c45a7ece12c9ff2762a7eebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78cb7b1af1db06bec1035f2949dbe99adbee3947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ed45e12187f03bebecb94765cdb5af3362828b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf51c1a6f53fe990e47ccb9497b38c78036af9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf9e2e7fe72455fbbb698c56db81c98c891d75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0dcb8574f6d3680945c250f6674418ce3c3f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f60e63e40e5065e5a48a77010169de269fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82bd64913e71b0fa466bcc0a746cbc61bee4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c9c3a4763fc57d7e3763e23b60f40fe9dc779e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x856edf1b835ea02bf11b16f041df5a13ef1ec3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8613d529a8c243690aedd69e427216029e4ba3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88bcc9ae483d1baf65b2a45888e350c487958354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c17d2e1d968c5f71cc81c8b87f4c4e23cc16115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4998661618c5cc5dbcc0ae19923d6537622180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91063e115e49589dc058272bf5683eb881d00d24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x916f462d66154362b3546fefae6fda7104d8a3ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9221fbe66be06f43dcbda3fc17cdd66ef1b236f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94cabf2a0460661f70f044b8af2626cfacc44341` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x958e01198d746588d0fad38d86a41684bcf7dd8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99d45e2d3a24b37eef35ee00dd0bf325bc655ed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e505923f2a7ed083bab013f500978dedfd7791b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0a2917cb9fbf3159730cb502e83cc7b32202c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa11e34eeea62a157d44a0bf18a6e0c18f35f72bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa23cb55e79c08af3d30557c8f29caf640eed334f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa56248248eba8f815621f9f4c686696a6b148cc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa66723d951f15423ef2c9c11edcb821e38301836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb52b0a8f3131303ec4efbcdfd1b82cb3727d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae0d7c9a60500b16f7929d766eda67eae52ec429` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaff83f1190024e2edbdfd3e0372359f772c52c46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0824e760c44b995317b95490f97c10ab4d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb305101fd13b46d4e79bbd293526ca441af8d24a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb347062b566621604963256be3ef958f8bbad586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f77e4071dd8aee400d08ca0905425430df233d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8ea9f1d8ac2b9da5182b1e298f827e7309947cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9d5d68a9d6debdf125073a391b2a12e8321e9fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5895f5050c030c4bc4f76ba4d590d8c09d9450` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbe90e99931b65ff3055aec69b45ef21382b88e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc84ff8a2f781eb76febb8558699bba83acb38ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc697a694d3f9b25bb1851ecdc0c77c52199872a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6f830bb162e6cfb7b4bac242b0e43cf1984c853` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8b62ef27d0ef314ebcfa46f657e232bc27db057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb8b644191993ca1e9ce94920f267ed7fb16e90c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd081be7f329e13c4097cfa3668f1e690cde9c08d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0a81dacde6b8b9760302a0b91953a1392a6c61d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0ebd9f75fbd0bc8852b6fa454cec6e52ac07e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4dfb080a8904a7e2b7dfcc524cb828584f97782` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5bb230544b77e866d9769a7f1cb7da534c4574f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd682c2b9814fb096c843984da9810916cb2206e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd800602fa6d4713d90a261f16100add2105ae48b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcd0c0703146d8debc55fda559c5fb5d3ed3608a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf7e639dc4b1c3b53ca4b07c2a7f59b4064b2cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe578acc6943025150e5985409b314fe4ea81d9fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84a28afb0cece439a3fac11f19141d353e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe942cdd0af66ab9ab06515701fa3707ec7deb93e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94bf3290877d1ffb5aabbc643e4429655e007c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf100443eef300ad8c2fddb1457ee0e8ce9d9980b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1670996a123042fda40c14e13b52318d2f78e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4c1c788817a9a9f56dbe81945f7a0d712eb5c48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf60b394638ecbc2020ac3e296e04fd955a3eb460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7d904d2849e562c71ba055a859c70abe876199a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf97c478f34e1dba7e399b973f4b720ba5885290b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaac8b3fba2fcc01e4ddb5d5fc761578d0d05545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb153d3b08871f9e113e3e474eac0d944bf9164f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc5ed981bbea652ab0c44bf3006fac48b0d69b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe6577ad85a00055907b0c6f7b0c7ecc3fa60465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc32373813de01ddd3aa6df9fef30ae53097cc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dc916664dae3ae8eecce340a36af8de2af7986f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6109b5ff17b244914ee59104a01aaf0e61cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f60e63e40e5065e5a48a77010169de269fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ad75064b20fb2b2447fed4fa953bf7f007a706` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3e9043e5ffacea7bc4d37608fb6e1b277bc47c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f830bb162e6cfb7b4bac242b0e43cf1984c853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb4cb3f473203fac25d292701e3274c298909a03` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xb5d8b1e73c79483d7750c5b8df8db45a0d24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2fde62942759d7c0aaf25952da4098423bc1264c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x80137510979822322193fc997d400d5a6c747bf7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97ad75064b20fb2b2447fed4fa953bf7f007a706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa62f9c5af106feee069f38de51098d9d81b90572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x80137510979822322193fc997d400d5a6c747bf7` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb823359367978a28eae71e90f79d95b62348bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea96d98d9a947b68899365202a43890a4d38db19`](./contracts/ethereum-1/0xea96d98d9a947b68899365202a43890a4d38db19/) | DepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f987372a1ae29f834deaea66d2e72137ba10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258182db0ad147cdc1a116191be823f8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f3994c851696fabc9742b53558334950b8b1bf4`](./contracts/bsc-56/0x1f3994c851696fabc9742b53558334950b8b1bf4/) | GenesisExpedition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1290a6b480f7ef14925229fdb66f5680ad8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/) | LBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x055e84e7fe8955e2781010b866f10ef6e1e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | LombardTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003ba35d6f57e0b61442bc88c2c7a45bf56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359563d104867a42c48cb7e688b1af22f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b89d757668a830f17d693a88d46073501df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/) | NativeLBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e`](./contracts/bsc-56/0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e/) | ReferralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46319f1a5e7bd21b89897de87679a4662cf59fd0`](./contracts/bsc-56/0x46319f1a5e7bd21b89897de87679a4662cf59fd0/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9088d8a41744e9cca78d01e6185f2acb81be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | StakeAndBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0fb61480530e87dddbb3bb5f0539c97eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f352fc288b5e030867eed41f7402482b083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | StakedLBTCOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | StakeStoneRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | StoneCarnival | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42af9986e56c8c9a88368d69879a64de6715754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/) | StoneCarnivalETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6`](./contracts/bsc-56/0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6/) | STONEUSDStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1381900c742b509cf2b23d6b293649ea875654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/) | StoryPreDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9`](./contracts/bsc-56/0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9/) | STOStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 123 |

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
