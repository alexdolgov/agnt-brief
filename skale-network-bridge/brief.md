# Agentic Audit Brief: SKALE Network Bridge

## Project Overview

- Project: SKALE Network Bridge (`skale-network-bridge`)
- Website: [https://portal.skale.space/bridge](https://portal.skale.space/bridge)
- Lifecycle: active (Tier 0, 87.6% below peak)
- Generated: 2026-06-21T14:47:00.239Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 324 unique implementations (438 raw deployments)
- DeFi Llama TVL: $560,674.71
- On-chain TVL (included contracts): $25,760,593.90
- TVL by chain: Ethereum $25,760,593.90

## Project Description

The SKALE Network Bridge enables the transfer of assets between the Ethereum mainnet and the SKALE Network, a multichain scaling solution. It facilitates deposits and withdrawals of ETH, ERC20, ERC721, and ERC1155 tokens, ensuring secure cross-chain communication.

### Architecture

The bridge family relies on shared infrastructure contracts like ContractManager for address resolution and Escrow for fund custody. Supporting contracts manage network parameters, validator operations, and token economics, which underpin the bridge's security and functionality.

## Contract Surface Quality

- Indexed contracts: 503; live-surface contracts included: 438 (4 live, 434 unknown).
- Excluded by liveness: 47 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 3/21 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 11/38 (28.9%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 17
- Unverified implementations: 286
- Unique implementations: 324
- Raw deployments: 438
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $25,760,593.90
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 28.9% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommunityPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3417b0...b9e88a`](./contracts/ethereum-1/0x3417b0dd0fbcc22c3111a083992db8babab9e88a/); ethereum `0x59501e...a4af0c` | ✅ Audited |
| DepositBoxERC1155 | token | ethereum | n/a | [`0x2fadfc...79a6db`](./contracts/ethereum-1/0x2fadfcb4ab510463ba8b1ae6f44fb0d55a79a6db/) | ✅ Audited |
| DepositBoxERC20 | token | ethereum | n/a | 2 deployments: ethereum [`0x28bb59...df8ca4`](./contracts/ethereum-1/0x28bb5918c37f8170d12c211ae924bf02a7df8ca4/); ethereum `0x4b4192...c12c02` | ✅ Audited |
| DepositBoxERC721 | token | ethereum | n/a | 4 deployments: ethereum [`0x205fdf...8838b8`](./contracts/ethereum-1/0x205fdfa8bb5b035152d9aca24ca32377a98838b8/); ethereum `0x573383...f9a52e`; ethereum `0x5c6cbe...9a116c`; ethereum `0x683325...a2fa66` | ✅ Audited |
| DepositBoxEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d3c18...0d50e7`](./contracts/ethereum-1/0x1d3c18a87df66cc3f8e176f5bef4cde0c40d50e7/); ethereum `0x2f90be...b4019a` | ✅ Audited |
| DepositBoxEth | unknown | ethereum | unit-42896 | [`0x49f583...05df94`](./contracts/ethereum-1/0x49f583d263e4ef938b9e09772d3394c71605df94/) | ✅ Audited |
| Linker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4827ec...52ae09`](./contracts/ethereum-1/0x4827ece3114796c9c26459b35b6e23e2a952ae09/); ethereum `0x676faf...17cdd0` | ✅ Audited |
| MessageProxyForMainnet | unknown | ethereum | n/a | [`0x64e4cd...aa5190`](./contracts/ethereum-1/0x64e4cd4fe42eab98acd15fddac657b1537aa5190/) | ✅ Audited |
| Wallets | unknown | ethereum | n/a | 4 deployments: ethereum [`0x22462c...65b3df`](./contracts/ethereum-1/0x22462c8c1b33bb2eb46cfd5ffea95167b465b3df/); ethereum `0x3f2db5...76faec`; ethereum `0x474052...56c426`; ethereum `0x5e4b96...5d30fd` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SkaleToken | token | ethereum | n/a | [`0x00c83a...01a7a7`](./contracts/ethereum-1/0x00c83aecc790e8a4453e5dd3b0b4b3680501a7a7/) | ⚠️ Unaudited |
| BountyV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x22a4a6...c8aa58`](./contracts/ethereum-1/0x22a4a6cb813c06fbf143595a86d06552e0c8aa58/); ethereum `0x55d53a...f149ea`; ethereum `0x5cc76c...cb4bca`; ethereum `0x6d43ca...9ff496` | ⚠️ Unaudited |
| ConstantsHolder | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2a12a1...9debb9`](./contracts/ethereum-1/0x2a12a174adec798be38cc1a13dde35475f9debb9/); ethereum `0x331578...f1b07e`; ethereum `0x4967fb...56a96a`; ethereum `0x6d927b...cfffb3` | ⚠️ Unaudited |
| Decryption | unknown | ethereum | n/a | [`0x45cc87...2b4f93`](./contracts/ethereum-1/0x45cc87f74c1937886d7b6b71ece594d4252b4f93/) | ⚠️ Unaudited |
| DepositBoxERC721WithMetadata | token | ethereum | n/a | [`0x584cc3...769c1a`](./contracts/ethereum-1/0x584cc3a9305867e30594647872cb5257e6769c1a/) | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | n/a | [`0x408400...ec4f48`](./contracts/ethereum-1/0x408400515b7c1835442d1df99346ba64c5ec4f48/) | ⚠️ Unaudited |
| Nodes | unknown | ethereum | n/a | 5 deployments: ethereum [`0x450d66...626258`](./contracts/ethereum-1/0x450d6644b994f984ddb8eb194015b70ee2626258/); ethereum `0x47afe5...f0931a`; ethereum `0x5be21a...16bfe8`; ethereum `0x60eb42...54bcac`; ethereum `0x628eb9...159e3b` | ⚠️ Unaudited |
| Pricing | unknown | ethereum | n/a | [`0x3fe240...661ec8`](./contracts/ethereum-1/0x3fe2404ce36902406720d02e62bb4ceb49661ec8/) | ⚠️ Unaudited |
| Schains | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1e6d74...abe01b`](./contracts/ethereum-1/0x1e6d740e27440d0f334ee67ebbd463b7f1abe01b/); ethereum `0x287c05...e69f4c`; ethereum `0x2937f7...d08a5b`; ethereum `0x358af1...f43cde` | ⚠️ Unaudited |
| SchainsInternal | unknown | ethereum | n/a | 2 deployments: ethereum [`0x608c24...e96960`](./contracts/ethereum-1/0x608c24866d1c43c5869fe7bf4a63a26623e96960/); ethereum `0x6671af...347228` | ⚠️ Unaudited |
| TimeHelpers | periphery | ethereum | n/a | 2 deployments: ethereum [`0x1803b1...715aa9`](./contracts/ethereum-1/0x1803b11ea498e4074136b0334f845b39dc715aa9/); ethereum `0x61ef75...ac4f46` | ⚠️ Unaudited |
| ValidatorService | unknown | ethereum | n/a | 3 deployments: ethereum [`0x21e2e8...336418`](./contracts/ethereum-1/0x21e2e81fcfc25ca91fec5ec2466476d167336418/); ethereum `0x2aab22...0d8ef1`; ethereum `0x5f906a...ebaef0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommunityPool | core_logic | ethereum | unit-42899 | 12 deployments: ethereum [`0x588801...2b1621`](./contracts/ethereum-1/0x588801ca36558310d91234afc2511502282b1621/); ethereum `0x7343d3...515f2d`; ethereum `0x76f03f...133b4a`; ethereum `0x791b35...c80fa8`; ethereum `0x7f9116...e557a5`; ethereum `0x862970...8da404`; ethereum `0x8fb1a3...687669`; ethereum `0x9f8196...6b7986`; ethereum `0xb71d43...8586d5`; ethereum `0xbc8965...29d087`; ethereum `0xd4052b...c6e1b2`; ethereum `0xeee0ba...6b63f4` | ✅ Audited (bytecode match) |
| SkaleVerifier | periphery | ethereum | n/a | 3 deployments: ethereum [`0x450105...b15207`](./contracts/ethereum-1/0x45010545fdb460eeb8f82e7ccf97542ae6b15207/); ethereum `0x5c192c...ce94cf`; ethereum `0x981c26...e2cc9c` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (15)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x303234...7d3647`](./contracts/ethereum-1/0x303234eea1c148cfea1a0562ae9c3b49887d3647/); ethereum `0xbaec96...16965f`; ethereum `0xdec451...2d0703`; ethereum `0xf08aed...e93695` | ⚠️ Unaudited (bytecode match) |
| Allocator | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2ce9c5...368671`](./contracts/ethereum-1/0x2ce9c54c5e5f167a838cd49441e085ade7368671/); ethereum `0xeaa450...e3c0eb` | ⚠️ Unaudited (bytecode match) |
| ContractManager | governance | ethereum | n/a | 9 deployments: ethereum [`0x4cc16d...e6710a`](./contracts/ethereum-1/0x4cc16de04264c7865990619013c570d215e6710a/); ethereum `0x538d2b...89d5f1`; ethereum `0x5f14e0...d4ce16`; ethereum `0x644fb3...3462b3`; ethereum `0x841362...163b8d`; ethereum `0xa2dbe0...04e769`; ethereum `0xc64369...324831`; ethereum `0xe0d76b...6807f0`; ethereum `0xed3c2e...76abc1` | ⚠️ Unaudited (bytecode match) |
| DelegationController | governance | ethereum | unit-42884 | 17 deployments: ethereum [`0x06dd71...66eb79`](./contracts/ethereum-1/0x06dd71dab27c1a3e0b172d53735f00bf1a66eb79/); ethereum `0x836df7...2c6012`; ethereum `0x840c81...f761a5`; ethereum `0x86f37b...09545d`; ethereum `0x8b32f7...e2b511`; ethereum `0x8d2228...7b8c37`; ethereum `0x921a97...a3a152`; ethereum `0x9257b1...a3a9a1`; ethereum `0x96aa94...fa518e`; ethereum `0x9e50e4...25bd4c`; ethereum `0xa801f3...67f7b7`; ethereum `0xbca0ec...9b7f1e`; ethereum `0xc04a10...85a310`; ethereum `0xc58258...959cbc`; ethereum `0xd48966...9e40ba`; ethereum `0xec4ea4...d72ccd`; ethereum `0xfcc84f...10884f` | ⚠️ Unaudited (bytecode match) |
| DelegationController | governance | ethereum | n/a | 7 deployments: ethereum [`0x1d085c...b6e735`](./contracts/ethereum-1/0x1d085cd2f8b5b64923fbee60ee399d5069b6e735/); ethereum `0x1f5b38...36ec9d`; ethereum `0x368e41...187b42`; ethereum `0x5089d6...d3cb3e`; ethereum `0x6ae061...b438c8`; ethereum `0xbeb450...3f2a9f`; ethereum `0xfdce6b...e97c00` | ⚠️ Unaudited (bytecode match) |
| DelegationPeriodManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x4c8033...f85400`](./contracts/ethereum-1/0x4c8033481b0fb8d3a83fc0986d02fa3fc2f85400/); ethereum `0x60a519...24feb6`; ethereum `0x6569d6...d96291`; ethereum `0xcdb294...84ea56` | ⚠️ Unaudited (bytecode match) |
| Distributor | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x3aef80...30bd58`](./contracts/ethereum-1/0x3aef8024a9f4ab6650651ab27786e703dd30bd58/); ethereum `0x8f2dba...567fa1`; ethereum `0xe59b26...e3ef02` | ⚠️ Unaudited (bytecode match) |
| ECDH | unknown | ethereum | n/a | 5 deployments: ethereum [`0x52315e...e9a2d5`](./contracts/ethereum-1/0x52315e0b2b56909dfa1b1eeaefb228462ee9a2d5/); ethereum `0x527c50...f996c8`; ethereum `0x5c18cc...f255f3`; ethereum `0x746b42...b19413`; ethereum `0xe9dd06...b63170` | ⚠️ Unaudited (bytecode match) |
| NodeRotation | unknown | ethereum | n/a | 8 deployments: ethereum [`0x194dc7...21b01d`](./contracts/ethereum-1/0x194dc7459c2028d9b2384b7d9461807f4e21b01d/); ethereum `0x270eaa...944fe7`; ethereum `0x29d364...67c929`; ethereum `0x2fcdaa...1974aa`; ethereum `0x342867...f03dc0`; ethereum `0x348b7f...c6d8e0`; ethereum `0x43585f...f09902`; ethereum `0xb3d2bb...823a26` | ⚠️ Unaudited (bytecode match) |
| Punisher | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1b5b8c...a075be`](./contracts/ethereum-1/0x1b5b8ceddd887e5a75f3fdbec47cf59d71a075be/); ethereum `0x4fa876...2855b7`; ethereum `0x5a25e1...979ef6`; ethereum `0xc5c216...173bce` | ⚠️ Unaudited (bytecode match) |
| SkaleDKG | unknown | ethereum | n/a | 7 deployments: ethereum [`0x23f193...244792`](./contracts/ethereum-1/0x23f19328aa23afe12d65ee8fe19dda1704244792/); ethereum `0x242073...cdb045`; ethereum `0x46baf3...759a3c`; ethereum `0x601ebb...bcbc01`; ethereum `0x681192...51b862`; ethereum `0x6d794a...f2154b`; ethereum `0xffa686...bab827` | ⚠️ Unaudited (bytecode match) |
| SkaleManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x2604ae...68f30c`](./contracts/ethereum-1/0x2604ae95b752b7b4af412ee7ffb8a0387a68f30c/); ethereum `0x5c38d7...54fa75`; ethereum `0x6f053d...6de657`; ethereum `0xe03022...9e7743` | ⚠️ Unaudited (bytecode match) |
| SlashingTable | unknown | ethereum | n/a | 6 deployments: ethereum [`0x18f9aa...d96d2c`](./contracts/ethereum-1/0x18f9aa0f87a0c4298eb1707ee1f4378bcbd96d2c/); ethereum `0x2f31ee...473622`; ethereum `0x4bc774...912e84`; ethereum `0x4f5cbc...c5e943`; ethereum `0x564d53...45d743`; ethereum `0xdb3eec...bc3ca2` | ⚠️ Unaudited (bytecode match) |
| TokenLaunchLocker | token | ethereum | n/a | 4 deployments: ethereum [`0x1c0ab6...f1272a`](./contracts/ethereum-1/0x1c0ab6815b0012e8677b64315fff5d9536f1272a/); ethereum `0x340647...6ab72b`; ethereum `0x6c23eb...1ec52b`; ethereum `0x71a4b3...c4ab56` | ⚠️ Unaudited (bytecode match) |
| TokenState | token | ethereum | n/a | 5 deployments: ethereum [`0x2db9cc...2de5d3`](./contracts/ethereum-1/0x2db9ccb342003421544faba8cdf670ab922de5d3/); ethereum `0x46735e...dbe56f`; ethereum `0x661657...909beb`; ethereum `0x7a23b6...7cc034`; ethereum `0xce996c...16ee4e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (286)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1ab2fd...e9fd99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2011b3...cac012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2085d0...fd019c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20b157...ef55ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20db4e...8430f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ba5c...7f535b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23a733...25386a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x291155...e78f2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2948f7...5fa26f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d8d0...01c768` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f56c0...6270ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x331544...18ff43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3559d4...534382` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x358a97...e25631` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x378ac8...8f1a2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x382dd9...f032e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x396029...8aa938` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39b76c...9feb68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39ed2d...c7b44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3aaf4f...793ece` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f99b6...d0d827` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4290d8...f05753` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x470ffb...97f18b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x473253...e13b4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4893c4...812566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f1be8...18fce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x501a2f...357c3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51b0be...fb7e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53181e...60285a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x548de5...fda12f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x553921...c116ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5691e1...f0f307` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57fb46...e69343` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c26f...506bab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d441a...122e7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612280...998349` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x643691...9c3acb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64abdc...b51496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x684324...f50324` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x693070...63b605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a5ec6...5d37be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c907c...4e8dc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cccee...55f3c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e8220...b41423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ea5b1...f7daa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ed96f...a5c29d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fcc42...805771` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fda3f...ab0d6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x721c48...fa7be5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72bf8e...45121c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72d27b...f115a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72f311...512caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7477e7...2b7ebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x749a54...43d844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x754a43...9a7c4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x762f75...c8f6c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76bff3...19121c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x778b10...3897a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77c74f...ee6415` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78fdce...35f500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x796523...b75fe6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79f722...cf19a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79ff05...f9b9d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a7d70...7b4a30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a833d...61644d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a9c80...dcebd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cc7a3...059a92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dc057...e79b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dcaf1...f18297` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e8f3a...369602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eaf3c...a6c29d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eeb2f...ff24a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eff71...7370e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f388c...2dfef7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f7885...3fee19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x801ba1...1787bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x804046...563018` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8147db...b2068c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x825a23...d8cb83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8375ac...1a7a7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83df7f...f5d976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x847262...b61eec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8520ea...595329` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x858b1f...7dbf68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x861aed...b70a07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x873052...fd9225` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874a77...b29ecd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x886c47...12738c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89335b...a8813d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f11a...6430b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a21b6...4c4c62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bac52...d79170` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8be880...072caa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8beab2...e53080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d2923...70f0a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d45ae...e2b398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d6e78...0e2c73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7934...61e851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f8d59...bb0a78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x912b03...9cb28c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914b40...e04c9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ca13...2379c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91e48f...35bb4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x922c70...546603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942995...2b2f09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x947cb6...e076b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951e48...b9a344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x956455...dfa4db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9602ae...209516` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96a4e7...b3f19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97097e...717886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x984693...410abe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98c4d5...fa193a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99091f...259557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x997c04...fbade8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x998d6a...be70ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b1e4a...63b8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b8713...096d79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c2f0b...8ff2a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c866b...0c69a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9daebe...03032b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa04b06...123ef0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa06cd5...c74b06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa35d3f...900627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3b59b...ff641b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3d36d...5c7f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa45617...c6144e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa47893...ce13fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa478ce...f03fb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4e100...710fc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa53689...f182dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa66b81...a452e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7a9f9...56753d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa81507...8bd86d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa820c3...6c84f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa838ae...fbfd0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa984f0...88fc8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa99a7b...99b272` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9bd98...1ce65e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa47f4...95e416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba0b1...e9bf2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac1861...f48ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb26f...3dfbd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad6471...8f56d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae8e7e...6132cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaeda53...1d40dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf408f...d361ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaffef8...dc930c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb05284...8c514d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0aa3b...ef9dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0eed6...a23e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1ac64...97fe6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb22736...5f5d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2d68c...a377b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb337de...071107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb34216...6c6e2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3b627...9b3c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb566ed...d2bc8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb575c1...12a7ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6b2de...ed97aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6b750...e7d59c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb74333...1a3b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7512b...0ece02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8634b...b213b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb86499...1199d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb92754...680889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb999d5...104a42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9f0b7...efaf4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbaa063...40087c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5b3a...6baad6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc03c7...686bf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc8197...216f9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcc1c4...fb6e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcce6c...ff47a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbda6d5...934d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe06f9...abb718` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbea348...4fc3b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfa73c...c51133` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc9b1...2071a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc03fcc...28e2f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc05bfa...b5b386` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc107d8...f1ad26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc26108...3d0c38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2b941...b25f91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a895...4395eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5e7ce...73188a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5ed92...c0ef25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc616ea...0fd788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6b3fe...8b2482` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77586...115d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc795e1...e7d65f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7bad8...750ab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc817f7...06afdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8663c...a4e1f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8eed9...f350b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9e999...c5c49a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9ee08...55dea7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca4545...0f1bb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb96d5...9921af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbb527...b98249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccadd0...1b6206` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdef2f...e77e9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdfb8e...3c2739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4cef...a6eeea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce51fa...f9e4be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce73e2...3eaf12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceb113...842130` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcedf5d...41caff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf2ae6...e24551` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfb1ea...312f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0aec3...58f66e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0fc79...cc1dbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd127df...afbb9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd132ee...fde377` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd214df...7dd717` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd27aea...ddcb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3ddcb...705eb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd45d14...4493fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4ee2b...3f8952` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd56521...ff3099` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd57561...b8f87d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd62805...adbc51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6a4d9...e4005f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7eaac...689e3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd834ff...a87599` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd86a07...649fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd940de...9a2a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9d6de...213683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda2918...4c1d94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda6a99...da864f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb03dc...1b2822` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb13ec...6f1460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbb64d...b52152` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd9524...0a8c6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdde9fc...752b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7221...ac85bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdedf37...bb002b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdff011...d679c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2247c...0c1515` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe30b36...3add1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe532cb...0ff0c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe56821...05e52d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58031...d8ca35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe59d87...65f3ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe61b48...b4d351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6547f...50c4e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6ade8...8d5113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a303...427c16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe82a1d...26036e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84752...18d2bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe86089...0176e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8d18a...6b6304` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9c2e3...261003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9f992...a5dc1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb38ca...13566a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb7db8...b82c86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec12f3...eca1b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed5890...87f41a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed8ec7...05495e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeda18e...64e78d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xede996...1470be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefa30b...5ccdff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefa43b...6e7657` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0551a...754c56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1b9d1...bdae60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf20965...76f0f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2846b...6e4640` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2b47d...5b23fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3f8b7...1ab4f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf67576...6fa37b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c0fe...e4c47e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6e5a4...704475` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf721ae...5eb697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7725f...871689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a9b4...fd0de9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf92532...d8bd64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf926e4...ea7989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf99f44...74e1e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa67be...5cb8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbbeee...22eb13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd641f...9409ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe2282...955412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe38e8...b8c2e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe6faf...8a0d90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8cc9...36c336` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffc647...343f6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SKALE_Audit_Bramah.pdf](https://github.com/skalenetwork/IMA/blob/develop/audits/SKALE_Audit_Bramah.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 18 | high |
| [Audit Report - SKALE Self-Recharging Wallets.pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20SKALE%20Self-Recharging%20Wallets.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00c83a...01a7a7`](./contracts/ethereum-1/0x00c83aecc790e8a4453e5dd3b0b4b3680501a7a7/) | SkaleToken | token | $25,760,593.90 | Verified native implementation with $25,760,593.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ce9c5...368671`](./contracts/ethereum-1/0x2ce9c54c5e5f167a838cd49441e085ade7368671/) | Allocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22a4a6...c8aa58`](./contracts/ethereum-1/0x22a4a6cb813c06fbf143595a86d06552e0c8aa58/) | BountyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a12a1...9debb9`](./contracts/ethereum-1/0x2a12a174adec798be38cc1a13dde35475f9debb9/) | ConstantsHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cc16d...e6710a`](./contracts/ethereum-1/0x4cc16de04264c7865990619013c570d215e6710a/) | ContractManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45cc87...2b4f93`](./contracts/ethereum-1/0x45cc87f74c1937886d7b6b71ece594d4252b4f93/) | Decryption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d085c...b6e735`](./contracts/ethereum-1/0x1d085cd2f8b5b64923fbee60ee399d5069b6e735/) | DelegationController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c8033...f85400`](./contracts/ethereum-1/0x4c8033481b0fb8d3a83fc0986d02fa3fc2f85400/) | DelegationPeriodManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584cc3...769c1a`](./contracts/ethereum-1/0x584cc3a9305867e30594647872cb5257e6769c1a/) | DepositBoxERC721WithMetadata | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aef80...30bd58`](./contracts/ethereum-1/0x3aef8024a9f4ab6650651ab27786e703dd30bd58/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52315e...e9a2d5`](./contracts/ethereum-1/0x52315e0b2b56909dfa1b1eeaefb228462ee9a2d5/) | ECDH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x408400...ec4f48`](./contracts/ethereum-1/0x408400515b7c1835442d1df99346ba64c5ec4f48/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194dc7...21b01d`](./contracts/ethereum-1/0x194dc7459c2028d9b2384b7d9461807f4e21b01d/) | NodeRotation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x450d66...626258`](./contracts/ethereum-1/0x450d6644b994f984ddb8eb194015b70ee2626258/) | Nodes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe240...661ec8`](./contracts/ethereum-1/0x3fe2404ce36902406720d02e62bb4ceb49661ec8/) | Pricing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b5b8c...a075be`](./contracts/ethereum-1/0x1b5b8ceddd887e5a75f3fdbec47cf59d71a075be/) | Punisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e6d74...abe01b`](./contracts/ethereum-1/0x1e6d740e27440d0f334ee67ebbd463b7f1abe01b/) | Schains | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x608c24...e96960`](./contracts/ethereum-1/0x608c24866d1c43c5869fe7bf4a63a26623e96960/) | SchainsInternal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f193...244792`](./contracts/ethereum-1/0x23f19328aa23afe12d65ee8fe19dda1704244792/) | SkaleDKG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2604ae...68f30c`](./contracts/ethereum-1/0x2604ae95b752b7b4af412ee7ffb8a0387a68f30c/) | SkaleManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18f9aa...d96d2c`](./contracts/ethereum-1/0x18f9aa0f87a0c4298eb1707ee1f4378bcbd96d2c/) | SlashingTable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1803b1...715aa9`](./contracts/ethereum-1/0x1803b11ea498e4074136b0334f845b39dc715aa9/) | TimeHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c0ab6...f1272a`](./contracts/ethereum-1/0x1c0ab6815b0012e8677b64315fff5d9536f1272a/) | TokenLaunchLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db9cc...2de5d3`](./contracts/ethereum-1/0x2db9ccb342003421544faba8cdf670ab922de5d3/) | TokenState | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21e2e8...336418`](./contracts/ethereum-1/0x21e2e81fcfc25ca91fec5ec2466476d167336418/) | ValidatorService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 200 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=37

Fork inheritance lineage and inherited audits are included when available.
