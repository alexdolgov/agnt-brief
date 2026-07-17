# Agentic Audit Brief: EthicHub

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.576Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: celo, ethereum, gnosis
- Contract surface: 56 unique implementations (107 raw deployments)
- DeFi Llama TVL: $2,533,879.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 52 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens, 5 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 55 common project-authored base contract(s) (nftbond, nft, accessmanagedupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 215; live-surface contracts included: 99 (85 live, 14 unknown).
- Excluded by liveness: 116 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/39 (0.0%)
- Deployed-live implementations: 42 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/43
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 56
- Raw deployments: 107
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd63956610babe22576103e28c96ec61f0e84d361`](./contracts/ethereum-1/0xd63956610babe22576103e28c96ec61f0e84d361/); ethereum `0xeb69c10e59c1a8638ca0bcf8c7e6e2fa2e9179ad` | ⚠️ Unaudited |
| AccessManager | unknown | celo | n/a | 2 deployments: celo [`0x25e7b7149e1067d0664f7646f33b17bc79148d22`](./contracts/celo-42220/0x25e7b7149e1067d0664f7646f33b17bc79148d22/); celo `0x7670ea8a307fce474c90a1b699fea4d116212ec8` | ⚠️ Unaudited |
| BPool | core_logic | ethereum | n/a | [`0xb93aa4cdeef1293303f628e16dd06ddd42db19f1`](./contracts/ethereum-1/0xb93aa4cdeef1293303f628e16dd06ddd42db19f1/) | ⚠️ Unaudited |
| CompensationSystemManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25e7b7149e1067d0664f7646f33b17bc79148d22`](./contracts/ethereum-1/0x25e7b7149e1067d0664f7646f33b17bc79148d22/); ethereum `0xb26f8fbfcd1e0e7acb07f965a29281885bbeb99f` | ⚠️ Unaudited |
| CreditLine | unknown | celo | n/a | 3 deployments: celo [`0x08e06685da497fddb15a5fd2fab85daa712ea21b`](./contracts/celo-42220/0x08e06685da497fddb15a5fd2fab85daa712ea21b/); celo `0x1d4e909c63fa8941c8e0a057322a70a1ec92fc7d`; celo `0xdb5d3abf19014308a67420344021ceee6003acdd` | ⚠️ Unaudited |
| CrowdEquityVestingReserve | operational_periphery | celo | n/a | [`0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | ⚠️ Unaudited |
| ERC20NFTBond | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21320683556bb718c8909080489f598120c554d9`](./contracts/ethereum-1/0x21320683556bb718c8909080489f598120c554d9/); ethereum `0x92be919fbf4f966e349595c1e1f87421f67730d2` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | celo | n/a | 3 deployments: celo [`0x0f497a790429685a3cfd43b841865ee185378ff0`](./contracts/celo-42220/0x0f497a790429685a3cfd43b841865ee185378ff0/); celo `0xd27e312f4852b00dac9fe5dc582c0221849b7620`; celo `0xd8c31585639f044b32107e877518f30efeb62c9b` | ⚠️ Unaudited |
| ERC20NFTBond | token | celo | n/a | 2 deployments: celo [`0x4858512aa44da566b23caa954db2e6ecc57725f0`](./contracts/celo-42220/0x4858512aa44da566b23caa954db2e6ecc57725f0/); celo `0x89cea15f68950df830dfe3630d635a9ed79478f5` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | celo | n/a | 2 deployments: celo [`0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705`](./contracts/celo-42220/0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705/); celo `0xe0eb2d27ff30d21b8cd6441306a74c807f111cbc` | ⚠️ Unaudited |
| ERC20Reserve | token | ethereum | n/a | 4 deployments: ethereum [`0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/); ethereum `0xb27132625173f813085e438ee19c011867063073`; celo `0xa14b1d7e28c4f9518eb7757ddee35a18423e1567`; celo `0xa9a824bd0470d0d00938105986ebfbfa71b28530` | ⚠️ Unaudited |
| EthixToken | token | ethereum | n/a | [`0xfd09911130e6930bf87f2b0554c44f400bd80d3e`](./contracts/ethereum-1/0xfd09911130e6930bf87f2b0554c44f400bd80d3e/) | ⚠️ Unaudited |
| ForeignAMB | unknown | ethereum | n/a | [`0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e`](./contracts/ethereum-1/0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e/) | ⚠️ Unaudited |
| ForeignBridgeErcToNative | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x75df5af045d91108662d8080fd1fefad6aa0bb59`](./contracts/ethereum-1/0x75df5af045d91108662d8080fd1fefad6aa0bb59/); ethereum `0x7e7669bdff02f2ee75b68b91fb81c2b38f9228c2`; ethereum `0x83c2e0e3b5328e599a3cba95d97090fa7d0fde8b`; ethereum `0xd40355b17643bc26554c9a9bbc95b5cabd92c2cd` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | unknown | ethereum | n/a | [`0xba7bc1adf0c9a252922760075e607f510cca85c5`](./contracts/ethereum-1/0xba7bc1adf0c9a252922760075e607f510cca85c5/) | ⚠️ Unaudited |
| InvestorsVestingReserve | operational_periphery | celo | n/a | 2 deployments: ethereum `0xde629ec5423f560b914de73a927067a408870cf5`; celo [`0x63577522f8fbc3adc023f787d207f43fa54beac7`](./contracts/celo-42220/0x63577522f8fbc3adc023f787d207f43fa54beac7/) | ⚠️ Unaudited |
| MembershipBond | unknown | celo | n/a | 2 deployments: celo [`0x8903412ac24281421f1d94fe27de56c0433f3d1f`](./contracts/celo-42220/0x8903412ac24281421f1d94fe27de56c0433f3d1f/); celo `0x9dd5723fb591549625cddea8f267f1f5c370bbd3` | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | ethereum | n/a | [`0x2f36b4843129647d840911eaea49db16649b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | ⚠️ Unaudited |
| MultiTokenReserve | token | celo | n/a | 3 deployments: celo [`0x70c85e77ae595fa22adc2a892e4175984c92651f`](./contracts/celo-42220/0x70c85e77ae595fa22adc2a892e4175984c92651f/); celo `0x7d7c28155dc586bcac2521a454c9cebb9d6cbb8d`; celo `0x8510294a4d1e27cce09259c448233207a83c5b62` | ⚠️ Unaudited |
| OriginatorStaking | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b`](./contracts/ethereum-1/0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b/); ethereum `0x2f19bd0a8b9e10fd921ff18eb8689c491e2de481`; ethereum `0x3b61cd481be3ba62a9a544c49d6c09fcb804d0e3`; ethereum `0x7435c0232a69270d19f8e4010571175c3f1dd955`; ethereum `0xa7e49990baec5900e589c8571bf6a60c8bfa44b8`; ethereum `0xe0324499ede832bd11fa37efefa46077d7d9784e` | ⚠️ Unaudited |
| OriginatorStaking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x338833be596a94e8245e94e2e5d95f213ecbc7ac`](./contracts/ethereum-1/0x338833be596a94e8245e94e2e5d95f213ecbc7ac/); ethereum `0x3ef3eefa7236d1a33febb5450adc466c3c852440`; ethereum `0xa1cf210fdc4001ab706f2df8efef26975d444444`; ethereum `0xacb56e5485f1f9ed4131f5e837980457f8135c70`; celo `0x9b755bd649afe485623ca12549c9e5334262098b` | ⚠️ Unaudited |
| OriginatorStaking | unknown | celo | n/a | 9 deployments: celo [`0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8`](./contracts/celo-42220/0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8/); celo `0x18843ec5c23a290e1c866fad9acafb6160ab9693`; celo `0x2ffa2c9678c75a7e1324c3fb67ac28676306389a`; celo `0x5195997a5ce4ff6436af64b229a77d8a06acf899`; celo `0x6ed2471b09a0a3b35c7e5c977e8a4e00ea5000f7`; celo `0x7d413d46adae770dff0e478f566b5539853d2fa1`; celo `0x8181d3b933228c3e70496d11f057610e78582c7c`; celo `0xcc0d68b5e9c0e92e8d7426fb585052442ea9eef7`; celo `0xe33c7d39f6721ef0fc8ffc59c8e2f313e774073a` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12f46a371e70bd19900790ac4895371386548b2b`](./contracts/ethereum-1/0x12f46a371e70bd19900790ac4895371386548b2b/); celo `0x57094e2ffecc0b561400171986dea361e52e5947` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaf9ad360163e614ab98ab258a35514f41d172314`](./contracts/ethereum-1/0xaf9ad360163e614ab98ab258a35514f41d172314/); ethereum `0xf182484c32d8f3e035c2878d7aa842d08e659d17` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | celo | n/a | 2 deployments: celo [`0xe0324499ede832bd11fa37efefa46077d7d9784e`](./contracts/celo-42220/0xe0324499ede832bd11fa37efefa46077d7d9784e/); celo `0xe1d7760366b5b15f52d8e78ad7b95527925b153f` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | celo | n/a | 2 deployments: celo [`0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55`](./contracts/celo-42220/0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55/); celo `0xdd2ca064ce2b5e45b70c60d319d9131936fbf8fa` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | celo | n/a | [`0x59921ff5cd63d3fd712f48ad3d2c2574bf713525`](./contracts/celo-42220/0x59921ff5cd63d3fd712f48ad3d2c2574bf713525/) | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | celo | n/a | 2 deployments: celo [`0x3a3079f84c474487be83a615b248ba9353d6dca3`](./contracts/celo-42220/0x3a3079f84c474487be83a615b248ba9353d6dca3/); celo `0xa9f74072a4ef35e56ae3cb1a81906949cc494883` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | celo | n/a | [`0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7`](./contracts/celo-42220/0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7/) | ⚠️ Unaudited |
| PermittableToken | token | ethereum | n/a | [`0xe1ca72ff3434b131765c62cbcbc26060f7aba03d`](./contracts/ethereum-1/0xe1ca72ff3434b131765c62cbcbc26060f7aba03d/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0xec3f3e6d7907acda3a7431abd230196cda3fbb19`](./contracts/gnosis-100/0xec3f3e6d7907acda3a7431abd230196cda3fbb19/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e0f447be0058ba019a59dbffc24563d8fe66029`](./contracts/ethereum-1/0x0e0f447be0058ba019a59dbffc24563d8fe66029/); ethereum `0x5787b96a595fe7d4f730089607c025efa83627b6`; celo `0x75a6a00c6bbaba9e9c61f69a7f037a3fed5aab60` | ⚠️ Unaudited |
| StakedBETHIX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x713782bed530adcf28604b04980ee8d5fd5bc004`](./contracts/ethereum-1/0x713782bed530adcf28604b04980ee8d5fd5bc004/); ethereum `0xcfd8eee23a6ef73fe4f2c08b30e128f05f54fd8e` | ⚠️ Unaudited |
| StakedETHIX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d`](./contracts/ethereum-1/0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d/); ethereum `0x7d8767df201055876321f3e1b3dcb42b0cca93c2` | ⚠️ Unaudited |
| StakedETHIX | unknown | celo | n/a | 2 deployments: ethereum `0x55231ac3a67f04551c39ea8f6d3322342d4c4090`; celo [`0x1905ec0769775179a9b2e042ce0fd59e27fd407c`](./contracts/celo-42220/0x1905ec0769775179a9b2e042ce0fd59e27fd407c/) | ⚠️ Unaudited |
| StakedETHIX | unknown | celo | n/a | 2 deployments: celo [`0xc564e19eca51df927f43f04a3beaaa414fcad638`](./contracts/celo-42220/0xc564e19eca51df927f43f04a3beaaa414fcad638/); celo `0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` | ⚠️ Unaudited |
| StakedUETHIX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f4b71f7b81d9829008504b8bfa09d215c4dd673`](./contracts/ethereum-1/0x3f4b71f7b81d9829008504b8bfa09d215c4dd673/); ethereum `0x89cea15f68950df830dfe3630d635a9ed79478f5` | ⚠️ Unaudited |
| StakingRewards | unknown | celo | n/a | [`0xbfa2748a60976cd18b835c75c6a20328e9a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | ⚠️ Unaudited |
| TokenImplementation | token | celo | n/a | [`0x9995cc8f20db5896943afc8ee0ba463259c931ed`](./contracts/celo-42220/0x9995cc8f20db5896943afc8ee0ba463259c931ed/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | celo | n/a | 3 deployments: ethereum `0xb14b9464b52f502b0edf51ba3a529bc63706b458`; gnosis `0xe5bc36119ffe40541eb61949e13607bce23577eb`; celo [`0x62cfa295864cff683cde9b47d4bacc77b885ddb7`](./contracts/celo-42220/0x62cfa295864cff683cde9b47d4bacc77b885ddb7/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | celo | n/a | [`0x3420720e561f3082f1e514a4545f0f2e0c955a5d`](./contracts/celo-42220/0x3420720e561f3082f1e514a4545f0f2e0c955a5d/) | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | n/a | [`0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a`](./contracts/ethereum-1/0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a/) | ⚠️ Unaudited |
| XDaiForeignBridge | unknown | ethereum | n/a | [`0xeee4f8db4410bebd74a76cb711d096c5e66d0473`](./contracts/ethereum-1/0xeee4f8db4410bebd74a76cb711d096c5e66d0473/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | celo | n/a | `0x0e1c2da9184274d7a9efed715cd71a51d323f821` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x21cc49ce7adfbccf09b0097631cbd004140ea81c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dfbe4c7313dec4ecb8c853d924dfcc79be1cc9f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x78ccd81805167e0ed01915432dfcd45ecb5e2fae` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7e7457225934bb6d35a252969e2764ae17b3b2e7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x84b1d65a3b79b48da6b8a11081dd2869568cec25` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa317c306edb1b61638ebe941ffb8be04f4119945` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xad2f9f4cd2ae4f2dd2841eb1ea7e162fb4767d4d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc684b104809077c6e3f7d9fa916a4f9a3379d605` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd582df88d7dc8f8aaa084ee5a15121504de24bf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd9aea73730c524056ef559e2b87ec8f5667aab2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe5b70bd972c395c810e8d4f06504280f660b1052` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7033046ffc9787c9c2a1e42c9d4cca18aeb5b5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EthicHub - Smart Contract Audit Report Final.pdf](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd63956610babe22576103e28c96ec61f0e84d361`](./contracts/ethereum-1/0xd63956610babe22576103e28c96ec61f0e84d361/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x25e7b7149e1067d0664f7646f33b17bc79148d22`](./contracts/celo-42220/0x25e7b7149e1067d0664f7646f33b17bc79148d22/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93aa4cdeef1293303f628e16dd06ddd42db19f1`](./contracts/ethereum-1/0xb93aa4cdeef1293303f628e16dd06ddd42db19f1/) | BPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e7b7149e1067d0664f7646f33b17bc79148d22`](./contracts/ethereum-1/0x25e7b7149e1067d0664f7646f33b17bc79148d22/) | CompensationSystemManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x08e06685da497fddb15a5fd2fab85daa712ea21b`](./contracts/celo-42220/0x08e06685da497fddb15a5fd2fab85daa712ea21b/) | CreditLine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | CrowdEquityVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21320683556bb718c8909080489f598120c554d9`](./contracts/ethereum-1/0x21320683556bb718c8909080489f598120c554d9/) | ERC20NFTBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0f497a790429685a3cfd43b841865ee185378ff0`](./contracts/celo-42220/0x0f497a790429685a3cfd43b841865ee185378ff0/) | ERC20NFTBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4858512aa44da566b23caa954db2e6ecc57725f0`](./contracts/celo-42220/0x4858512aa44da566b23caa954db2e6ecc57725f0/) | ERC20NFTBond | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705`](./contracts/celo-42220/0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705/) | ERC20NFTBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/) | ERC20Reserve | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd09911130e6930bf87f2b0554c44f400bd80d3e`](./contracts/ethereum-1/0xfd09911130e6930bf87f2b0554c44f400bd80d3e/) | EthixToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e`](./contracts/ethereum-1/0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e/) | ForeignAMB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75df5af045d91108662d8080fd1fefad6aa0bb59`](./contracts/ethereum-1/0x75df5af045d91108662d8080fd1fefad6aa0bb59/) | ForeignBridgeErcToNative | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba7bc1adf0c9a252922760075e607f510cca85c5`](./contracts/ethereum-1/0xba7bc1adf0c9a252922760075e607f510cca85c5/) | ForeignNFTOmnibridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x63577522f8fbc3adc023f787d207f43fa54beac7`](./contracts/celo-42220/0x63577522f8fbc3adc023f787d207f43fa54beac7/) | InvestorsVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x8903412ac24281421f1d94fe27de56c0433f3d1f`](./contracts/celo-42220/0x8903412ac24281421f1d94fe27de56c0433f3d1f/) | MembershipBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f36b4843129647d840911eaea49db16649b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | MerkleTreeVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x70c85e77ae595fa22adc2a892e4175984c92651f`](./contracts/celo-42220/0x70c85e77ae595fa22adc2a892e4175984c92651f/) | MultiTokenReserve | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b`](./contracts/ethereum-1/0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b/) | OriginatorStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x338833be596a94e8245e94e2e5d95f213ecbc7ac`](./contracts/ethereum-1/0x338833be596a94e8245e94e2e5d95f213ecbc7ac/) | OriginatorStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8`](./contracts/celo-42220/0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8/) | OriginatorStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12f46a371e70bd19900790ac4895371386548b2b`](./contracts/ethereum-1/0x12f46a371e70bd19900790ac4895371386548b2b/) | OriginatorStakingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf9ad360163e614ab98ab258a35514f41d172314`](./contracts/ethereum-1/0xaf9ad360163e614ab98ab258a35514f41d172314/) | OriginatorStakingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe0324499ede832bd11fa37efefa46077d7d9784e`](./contracts/celo-42220/0xe0324499ede832bd11fa37efefa46077d7d9784e/) | OriginatorStakingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55`](./contracts/celo-42220/0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55/) | OriginatorStakingWithLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x59921ff5cd63d3fd712f48ad3d2c2574bf713525`](./contracts/celo-42220/0x59921ff5cd63d3fd712f48ad3d2c2574bf713525/) | OriginatorStakingWithLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x3a3079f84c474487be83a615b248ba9353d6dca3`](./contracts/celo-42220/0x3a3079f84c474487be83a615b248ba9353d6dca3/) | OriginatorStakingWithLPFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7`](./contracts/celo-42220/0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7/) | OriginatorStakingWithLPFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1ca72ff3434b131765c62cbcbc26060f7aba03d`](./contracts/ethereum-1/0xe1ca72ff3434b131765c62cbcbc26060f7aba03d/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xec3f3e6d7907acda3a7431abd230196cda3fbb19`](./contracts/gnosis-100/0xec3f3e6d7907acda3a7431abd230196cda3fbb19/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x713782bed530adcf28604b04980ee8d5fd5bc004`](./contracts/ethereum-1/0x713782bed530adcf28604b04980ee8d5fd5bc004/) | StakedBETHIX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d`](./contracts/ethereum-1/0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d/) | StakedETHIX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1905ec0769775179a9b2e042ce0fd59e27fd407c`](./contracts/celo-42220/0x1905ec0769775179a9b2e042ce0fd59e27fd407c/) | StakedETHIX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xc564e19eca51df927f43f04a3beaaa414fcad638`](./contracts/celo-42220/0xc564e19eca51df927f43f04a3beaaa414fcad638/) | StakedETHIX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f4b71f7b81d9829008504b8bfa09d215c4dd673`](./contracts/ethereum-1/0x3f4b71f7b81d9829008504b8bfa09d215c4dd673/) | StakedUETHIX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbfa2748a60976cd18b835c75c6a20328e9a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x9995cc8f20db5896943afc8ee0ba463259c931ed`](./contracts/celo-42220/0x9995cc8f20db5896943afc8ee0ba463259c931ed/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a`](./contracts/ethereum-1/0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a/) | WETHOmnibridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeee4f8db4410bebd74a76cb711d096c5e66d0473`](./contracts/ethereum-1/0xeee4f8db4410bebd74a76cb711d096c5e66d0473/) | XDaiForeignBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2663] Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf
- [2664] EthicHub - Smart Contract Audit Report Final.pdf

Fork inheritance lineage and inherited audits are included when available.
