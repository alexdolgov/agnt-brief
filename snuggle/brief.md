# Agentic Audit Brief: Snuggle

## Project Overview

- Project: Snuggle (`snuggle`)
- Website: [https://snuggle.fi/](https://snuggle.fi/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T12:15:37.271Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-d9fc
- Chains: arbitrum, base
- Contract surface: 88 unique implementations (179 raw deployments)
- DeFi Llama TVL: $1,001,156.36
- On-chain TVL (included contracts): $0.00
- TVL by chain: Base $0.00

## Project Description

Snuggle is a liquidity manager that automates concentrated liquidity positions across multiple decentralized exchanges. It uses vaults to manage user deposits and optimize yields through position adapters and reward strategies.

### Architecture

Both families share the same core vault logic (SnuggleVaultUpgradeable) and adapter pattern, but the Snuggle family extends functionality with reward adapters, governance contracts, and additional DEX support. The Base family appears to be a subset deployment, while the Snuggle family represents the full protocol suite with shared infrastructure like proxy admin and staking.

## Audit Coverage Summary

- Verified implementations audited: 12/51 (23.5%)
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 88
- Raw deployments: 179
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 23.5% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AerodromePositionAdapter | adapter | base | 2 deployments: base [`0x0aedee...9794d1`](./contracts/base-8453/0x0aedeed5ad8d45d3d928fb872161efaa559794d1/); base `0xe3efa7...f79589` | ✅ Audited |
| AerodromeRewardAdapter | adapter | base | [`0xcb16cb...d77306`](./contracts/base-8453/0xcb16cb2cd32768c65418b22385888bd2c8d77306/) | ✅ Audited |
| FeeTransferHelper | periphery | arbitrum | 3 deployments: base `0x613ba8...28b1f3`; arbitrum [`0x59c2a1...349461`](./contracts/arbitrum-42161/0x59c2a172e52a61c4f1bb6dbdcab41b76d9349461/); arbitrum `0xbfd8cf...0cabae` | ✅ Audited |
| PancakeSwapPositionAdapter | adapter | base | 4 deployments: base [`0x0c0ba0...1b39e5`](./contracts/base-8453/0x0c0ba0b81a4ac60321c2414bdcef24c5851b39e5/); base `0xad35ec...bf0a71`; arbitrum `0x78bb36...bd4589`; arbitrum `0xf20bc2...2b84d9` | ✅ Audited |
| PancakeSwapRewardAdapter | adapter | arbitrum | 4 deployments: base `0x63de14...18b1cf`; arbitrum [`0x4cd1a0...62a065`](./contracts/arbitrum-42161/0x4cd1a0b610117a688998325e3779e858ff62a065/); arbitrum `0x6af9c5...8d19a8`; arbitrum `0xb668e7...69f7c9` | ✅ Audited |
| ProxyAdmin | governance | base | 4 deployments: base [`0x269dc2...cca86f`](./contracts/base-8453/0x269dc2f974abed1c7a55a447758fcaef2dcca86f/); arbitrum `0x427bf5...5396c1`; arbitrum `0x8bca45...e037df`; arbitrum `0x999a74...a891de` | ✅ Audited |
| ReferralTracker | unknown | base | 3 deployments: base [`0x2536a7...68d9ee`](./contracts/base-8453/0x2536a771111861bc0be61bd986f0c2dc0f68d9ee/); arbitrum `0x6915b5...01cd00`; arbitrum `0xb52cca...e4705e` | ✅ Audited |
| SnuggleRebalanceLib | unknown | base | [`0xf84b57...1dcddc`](./contracts/base-8453/0xf84b575e4e6d9fc07a3f2b863cb6a23cc11dcddc/) | ✅ Audited |
| StakingManager | governance | arbitrum | 3 deployments: base `0x3f928d...a270c1`; arbitrum [`0x020ed2...9948bd`](./contracts/arbitrum-42161/0x020ed29a0b1ced89c4309b32709a2a97699948bd/); arbitrum `0xd977c0...e2b40d` | ✅ Audited |
| TreasurySplitter | operational_periphery | arbitrum | 3 deployments: base `0x93d0d1...a9ec12`; arbitrum [`0x8c7d96...c176f6`](./contracts/arbitrum-42161/0x8c7d966b6bee480bf96b41870ccb89559ac176f6/); arbitrum `0xafe51c...84c92a` | ✅ Audited |
| UniswapV3Adapter | adapter | arbitrum | 4 deployments: base `0xca4cf9...debabd`; base `0xf757c9...f33010`; arbitrum [`0x76bdb4...c44ef2`](./contracts/arbitrum-42161/0x76bdb43d2ec3b190087076649224f47a58c44ef2/); arbitrum `0xa6e465...be082c` | ✅ Audited |
| ViewHelper | periphery | arbitrum | 4 deployments: base `0x286490...ce18bd`; base `0x298028...976a1c`; arbitrum [`0x0ef66d...3da5b6`](./contracts/arbitrum-42161/0x0ef66de171293285a8f8ffd0d0d564ca093da5b6/); arbitrum `0x4a14af...a19df9` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SnuggleVaultUpgradeable | core_logic | base | 11 deployments: base [`0x02415b...0224c0`](./contracts/base-8453/0x02415b4e29e00cf76b27ab0403e1e1382d0224c0/); base `0x43ca8d...43f043`; base `0x7d27cd...2afd55`; base `0xd3923b...6b7470`; arbitrum `0x0d8039...da22da`; arbitrum `0x1638b6...894f9d`; arbitrum `0x413ca9...2630f6`; arbitrum `0x4b1cbd...bcb07d`; arbitrum `0x572351...9cd430`; arbitrum `0x9da886...bab114`; arbitrum `0xa86b81...a85c68` | ⚠️ Unaudited |
| AlgebraCommunityVault | core_logic | arbitrum | 2 deployments: arbitrum [`0x971ba9...3a5e5a`](./contracts/arbitrum-42161/0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a/); arbitrum `0xe3c3e2...1da69e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | arbitrum | [`0xbf1849...aea3ef`](./contracts/arbitrum-42161/0xbf1849090b659505a0d7a75fead3068020aea3ef/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | arbitrum | [`0x0b3538...99db1b`](./contracts/arbitrum-42161/0x0b3538cc8d06e73f26956f81d1a4be513d99db1b/) | ⚠️ Unaudited |
| AlgebraFactory | registry | arbitrum | 8 deployments: arbitrum [`0x1a3c9b...1fd35b`](./contracts/arbitrum-42161/0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b/); arbitrum `0x1e3db3...8455ca`; arbitrum `0x6b692b...4e5bb8`; arbitrum `0x9a8ddc...aed592`; arbitrum `0xd3b4c3...5d6aea`; arbitrum `0xd490f2...f684dd`; arbitrum `0xd97b6e...db61d6`; arbitrum `0xe907d0...994ae3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | arbitrum | [`0xac1ce7...bf44ea`](./contracts/arbitrum-42161/0xac1ce734566f390a94b00eb9bf561c2625bf44ea/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | arbitrum | 8 deployments: arbitrum [`0x0f9dff...741870`](./contracts/arbitrum-42161/0x0f9dff83d8b1f1b41dfbe340b8d9d75aa1741870/); arbitrum `0x34f74f...c69bd2`; arbitrum `0x5e1e14...45ffe1`; arbitrum `0x6dd3fb...974f65`; arbitrum `0x89aee0...fff226`; arbitrum `0x8b5665...ca6f15`; arbitrum `0xd5143d...c4fa56`; arbitrum `0xf09c08...74af8d` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | registry | arbitrum | 2 deployments: arbitrum [`0x1cb8ee...1333f6`](./contracts/arbitrum-42161/0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6/); arbitrum `0x653658...32d540` | ⚠️ Unaudited |
| BasePluginV1Factory | registry | arbitrum | [`0xe3ae84...cbd03d`](./contracts/arbitrum-42161/0xe3ae84a486c737e4e260b48f1173dfcd96cbd03d/) | ⚠️ Unaudited |
| BatchAuction | periphery | arbitrum | [`0x7603a3...62c8ce`](./contracts/arbitrum-42161/0x7603a35af5cf10b113f167d424eb75bb7062c8ce/) | ⚠️ Unaudited |
| CamelotPositionAdapter | adapter | arbitrum | 2 deployments: arbitrum [`0x19ec46...47f217`](./contracts/arbitrum-42161/0x19ec46eb3cbcec146de2d9b4336187e4f147f217/); arbitrum `0xbfbf7d...9a8956` | ⚠️ Unaudited |
| ConstantProductPoolFactory | registry | arbitrum | [`0xc79ae8...872787`](./contracts/arbitrum-42161/0xc79ae87e9f55761c08e346b98dddf070c9872787/) | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | registry | arbitrum | [`0x827179...866976`](./contracts/arbitrum-42161/0x827179dd56d07a7eea32e3873493835da2866976/) | ⚠️ Unaudited |
| Crowdsale | unknown | arbitrum | [`0x120140...e55afe`](./contracts/arbitrum-42161/0x120140d0c1ebc938befc84840575ecdc5fe55afe/) | ⚠️ Unaudited |
| DutchAuction | unknown | arbitrum | [`0x438a2b...8b8d43`](./contracts/arbitrum-42161/0x438a2b1c6c715fb1b051c04ca65755560d8b8d43/) | ⚠️ Unaudited |
| FarmingCenter | unknown | arbitrum | [`0x3eee90...342c46`](./contracts/arbitrum-42161/0x3eee90c983e2728ae6d7880064b0c5b055342c46/) | ⚠️ Unaudited |
| FixedToken | token | arbitrum | [`0xcaabdd...fe66f5`](./contracts/arbitrum-42161/0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5/) | ⚠️ Unaudited |
| KeepersHelper | operational_periphery | arbitrum | 5 deployments: base `0x60431b...563345`; arbitrum [`0x0e7edc...8f9869`](./contracts/arbitrum-42161/0x0e7edc3856349ed0126f863cc39fc9bc008f9869/); arbitrum `0x408229...ea716f`; arbitrum `0x71b55e...7f30f7`; arbitrum `0xc962c9...8ad7d6` | ⚠️ Unaudited |
| MasterDeployer | unknown | arbitrum | [`0xf0e1f9...8fe48d`](./contracts/arbitrum-42161/0xf0e1f962e3e6d8e2af8190b2798c1b4f018fe48d/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | [`0xf4d733...bd62c3`](./contracts/arbitrum-42161/0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3/) | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | 2 deployments: arbitrum [`0x0769fd...b2841f`](./contracts/arbitrum-42161/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/); arbitrum `0x80c7dd...a314de` | ⚠️ Unaudited |
| NFTDescriptor | token | arbitrum | 3 deployments: arbitrum [`0x0367a6...d7f2c6`](./contracts/arbitrum-42161/0x0367a647a68f304f2a6e453c25033a4249d7f2c6/); arbitrum `0x1e12aa...781dae`; arbitrum `0xff7da6...fb3a62` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | arbitrum | 7 deployments: arbitrum [`0x1ad8c5...e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/); arbitrum `0x2d22aa...7606dc`; arbitrum `0x49f598...32067c`; arbitrum `0x52d2eb...b48325`; arbitrum `0x674d07...e7a7ef`; arbitrum `0x89a13b...b8a68a`; arbitrum `0x96e045...c19385` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | token | arbitrum | 2 deployments: arbitrum [`0x3d00cd...652227`](./contracts/arbitrum-42161/0x3d00cdb4785f0ef20c903a13596e0b9b2c652227/); arbitrum `0xb099b4...456cff` | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | 9 deployments: arbitrum [`0x02102b...1b88ac`](./contracts/arbitrum-42161/0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac/); arbitrum `0x0fc730...4fa76e`; arbitrum `0x27d3ce...fefe92`; arbitrum `0x32ab0c...54e73c`; arbitrum `0x6c78f2...bbc0bd`; arbitrum `0x9b7a7c...38c063`; arbitrum `0xaaf703...2eb3ac`; arbitrum `0xc50b12...9fe056`; arbitrum `0xd70dd6...63b955` | ⚠️ Unaudited |
| QuoterV2 | periphery | arbitrum | 2 deployments: arbitrum [`0x66d756...5e639b`](./contracts/arbitrum-42161/0x66d756335bff276d73a8ab0853c3d336475e639b/); arbitrum `0xb048bb...e25997` | ⚠️ Unaudited |
| RouteProcessor | unknown | arbitrum | 2 deployments: arbitrum [`0x9c6522...e7dbe0`](./contracts/arbitrum-42161/0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0/); arbitrum `0x9f1865...c6c12f` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | arbitrum | [`0xfc506a...52d674`](./contracts/arbitrum-42161/0xfc506aaa1340b4dedffd88be278bee058952d674/) | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | arbitrum | [`0x3c1fba...852c82`](./contracts/arbitrum-42161/0x3c1fba3bcee7ce410b155a8c71f9ff1312852c82/) | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | arbitrum | [`0x09bd2a...4a8e8c`](./contracts/arbitrum-42161/0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c/) | ⚠️ Unaudited |
| SliverConfig | governance | arbitrum | [`0xe7b13b...e299f1`](./contracts/arbitrum-42161/0xe7b13bb95d5fc2ae028187d50e4f083573e299f1/) | ⚠️ Unaudited |
| SnuggleHedgeHelper | periphery | arbitrum | 2 deployments: arbitrum [`0x8b3a79...03ef9f`](./contracts/arbitrum-42161/0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f/); arbitrum `0xb1364a...feada7` | ⚠️ Unaudited |
| SnuggleVaultAdminSatellite | core_logic | arbitrum | 3 deployments: base `0x5a332c...e4d271`; arbitrum [`0x1195c0...fe6dce`](./contracts/arbitrum-42161/0x1195c074f898b7644ba732407619c9804dfe6dce/); arbitrum `0x454059...d7d3f4` | ⚠️ Unaudited |
| StablePoolFactory | registry | arbitrum | [`0xc2fb25...9a0288`](./contracts/arbitrum-42161/0xc2fb256aba36852dccea92181ec6b355f09a0288/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | 8 deployments: arbitrum [`0x17585d...640b50`](./contracts/arbitrum-42161/0x17585d045eb322d292e0166a4cd643f793640b50/); arbitrum `0x1b81d6...13eb14`; arbitrum `0x1f721e...339e18`; arbitrum `0x22535b...18ad98`; arbitrum `0x377b58...93c51d`; arbitrum `0x49c98f...1d951a`; arbitrum `0xa55582...839ef5`; arbitrum `0xad3a43...b64e12` | ⚠️ Unaudited |
| TickLens | periphery | arbitrum | 4 deployments: arbitrum [`0x22cb09...9b8034`](./contracts/arbitrum-42161/0x22cb092d904eb13cdaca0ca5d93093fae19b8034/); arbitrum `0x6e39cc...4bde38`; arbitrum `0x851694...016c9e`; arbitrum `0x9a4895...ae3796` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 4 deployments: arbitrum [`0x903293...594c13`](./contracts/arbitrum-42161/0x903293c1e922a72a95a69c61ede74073c8594c13/); arbitrum `0xa76021...280b5c`; arbitrum `0xd8676f...0e34ae`; arbitrum `0xfecbac...7e4321` | ⚠️ Unaudited |
| TridentRouter | adapter | arbitrum | [`0xd9988b...8e0523`](./contracts/arbitrum-42161/0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523/) | ⚠️ Unaudited |
| V3Migrator | periphery | arbitrum | [`0xbc203d...ecc5c2`](./contracts/arbitrum-42161/0xbc203d7f83677c7ed3f7acec959963e7f4ecc5c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x011e52...e2e581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x145d82...522e6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cf9cf...e98a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1f054c...46d8ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x259ba0...85ea3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f6867...050066` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3046cf...942dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30cea6...f943b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x351447...0b0187` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3db923...7cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3fc3f7...d931af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x400bb7...81e231` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48813f...7caf33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4b5348...8c72f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5822a4...6bc460` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67468e...f70792` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6e9aed...a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x790b6c...f049a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8cc276...39b16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92883a...fd8087` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x933951...0ff328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9dd655...abe2bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd87be...1736d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc27d4d...5e5657` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcd6a4...1232d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe4331d...304d36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4c88b...e7dd41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf53b4b...edd8c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf78031...cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf8644a...243c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfdd069...2eb659` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [security review](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 36 | high |
| [AUDIT PARTNERAudited by Valves SecurityValves Security is one of the top security firms in the industry. We have also been audited by multiple independent researchers and white hat groups, with more third-party audits to come.Visit Valves Security →](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x02415b...0224c0`](./contracts/base-8453/0x02415b4e29e00cf76b27ab0403e1e1382d0224c0/) | SnuggleVaultUpgradeable | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cb8ee...1333f6`](./contracts/arbitrum-42161/0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6/) | AlgebraVaultFactoryStub | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7603a3...62c8ce`](./contracts/arbitrum-42161/0x7603a35af5cf10b113f167d424eb75bb7062c8ce/) | BatchAuction | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x438a2b...8b8d43`](./contracts/arbitrum-42161/0x438a2b1c6c715fb1b051c04ca65755560d8b8d43/) | DutchAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcaabdd...fe66f5`](./contracts/arbitrum-42161/0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5/) | FixedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e7edc...8f9869`](./contracts/arbitrum-42161/0x0e7edc3856349ed0126f863cc39fc9bc008f9869/) | KeepersHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe7b13b...e299f1`](./contracts/arbitrum-42161/0xe7b13bb95d5fc2ae028187d50e4f083573e299f1/) | SliverConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b3a79...03ef9f`](./contracts/arbitrum-42161/0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f/) | SnuggleHedgeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1195c0...fe6dce`](./contracts/arbitrum-42161/0x1195c074f898b7644ba732407619c9804dfe6dce/) | SnuggleVaultAdminSatellite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 18 |
| standard_library | 5 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=36

Zero-match audit list:

- [3119] DL audit link
- [11989] AUDIT PARTNERAudited by Valves SecurityValves Security is one of the top security firms in the industry. We have also been audited by multiple independent researchers and white hat groups, with more third-party audits to come.Visit Valves Security →

Fork inheritance lineage and inherited audits are included when available.
