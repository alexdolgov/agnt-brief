# Agentic Audit Brief: EthicHub

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:48.820Z
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

- Coverage of deployed-live implementations: 0/42 (0.0%)
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
| AccessManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd63956...84d361`](./contracts/ethereum-1/0xd63956610babe22576103e28c96ec61f0e84d361/); ethereum `0xeb69c1...9179ad` | ⚠️ Unaudited |
| AccessManager | unknown | celo | n/a | 2 deployments: celo [`0x25e7b7...148d22`](./contracts/celo-42220/0x25e7b7149e1067d0664f7646f33b17bc79148d22/); celo `0x7670ea...212ec8` | ⚠️ Unaudited |
| BPool | core_logic | ethereum | n/a | [`0xb93aa4...db19f1`](./contracts/ethereum-1/0xb93aa4cdeef1293303f628e16dd06ddd42db19f1/) | ⚠️ Unaudited |
| CompensationSystemManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25e7b7...148d22`](./contracts/ethereum-1/0x25e7b7149e1067d0664f7646f33b17bc79148d22/); ethereum `0xb26f8f...beb99f` | ⚠️ Unaudited |
| CreditLine | unknown | celo | n/a | 3 deployments: celo [`0x08e066...2ea21b`](./contracts/celo-42220/0x08e06685da497fddb15a5fd2fab85daa712ea21b/); celo `0x1d4e90...92fc7d`; celo `0xdb5d3a...03acdd` | ⚠️ Unaudited |
| CrowdEquityVestingReserve | operational_periphery | celo | n/a | [`0x2bf3d1...7ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | ⚠️ Unaudited |
| ERC20NFTBond | unknown | ethereum | n/a | 2 deployments: ethereum [`0x213206...c554d9`](./contracts/ethereum-1/0x21320683556bb718c8909080489f598120c554d9/); ethereum `0x92be91...7730d2` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | celo | n/a | 3 deployments: celo [`0x0f497a...378ff0`](./contracts/celo-42220/0x0f497a790429685a3cfd43b841865ee185378ff0/); celo `0xd27e31...9b7620`; celo `0xd8c315...b62c9b` | ⚠️ Unaudited |
| ERC20NFTBond | token | celo | n/a | 2 deployments: celo [`0x485851...7725f0`](./contracts/celo-42220/0x4858512aa44da566b23caa954db2e6ecc57725f0/); celo `0x89cea1...9478f5` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | celo | n/a | 2 deployments: celo [`0x99a6cd...dc0705`](./contracts/celo-42220/0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705/); celo `0xe0eb2d...111cbc` | ⚠️ Unaudited |
| ERC20Reserve | token | ethereum | n/a | 4 deployments: ethereum [`0x1ecc7e...04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/); ethereum `0xb27132...063073`; celo `0xa14b1d...3e1567`; celo `0xa9a824...b28530` | ⚠️ Unaudited |
| EthixToken | token | ethereum | n/a | [`0xfd0991...d80d3e`](./contracts/ethereum-1/0xfd09911130e6930bf87f2b0554c44f400bd80d3e/) | ⚠️ Unaudited |
| ForeignAMB | unknown | ethereum | n/a | [`0x4c36d2...9ce64e`](./contracts/ethereum-1/0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e/) | ⚠️ Unaudited |
| ForeignBridgeErcToNative | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x75df5a...a0bb59`](./contracts/ethereum-1/0x75df5af045d91108662d8080fd1fefad6aa0bb59/); ethereum `0x7e7669...9228c2`; ethereum `0x83c2e0...0fde8b`; ethereum `0xd40355...92c2cd` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | unknown | ethereum | n/a | [`0xba7bc1...ca85c5`](./contracts/ethereum-1/0xba7bc1adf0c9a252922760075e607f510cca85c5/) | ⚠️ Unaudited |
| InvestorsVestingReserve | operational_periphery | celo | n/a | 2 deployments: ethereum `0xde629e...870cf5`; celo [`0x635775...4beac7`](./contracts/celo-42220/0x63577522f8fbc3adc023f787d207f43fa54beac7/) | ⚠️ Unaudited |
| MembershipBond | unknown | celo | n/a | 2 deployments: celo [`0x890341...3f3d1f`](./contracts/celo-42220/0x8903412ac24281421f1d94fe27de56c0433f3d1f/); celo `0x9dd572...70bbd3` | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | ethereum | n/a | [`0x2f36b4...9b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | ⚠️ Unaudited |
| MultiTokenReserve | token | celo | n/a | 3 deployments: celo [`0x70c85e...92651f`](./contracts/celo-42220/0x70c85e77ae595fa22adc2a892e4175984c92651f/); celo `0x7d7c28...6cbb8d`; celo `0x851029...3c5b62` | ⚠️ Unaudited |
| OriginatorStaking | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1e70f4...082c8b`](./contracts/ethereum-1/0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b/); ethereum `0x2f19bd...2de481`; ethereum `0x3b61cd...04d0e3`; ethereum `0x7435c0...1dd955`; ethereum `0xa7e499...fa44b8`; ethereum `0xe03244...d9784e` | ⚠️ Unaudited |
| OriginatorStaking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x338833...cbc7ac`](./contracts/ethereum-1/0x338833be596a94e8245e94e2e5d95f213ecbc7ac/); ethereum `0x3ef3ee...852440`; ethereum `0xa1cf21...444444`; ethereum `0xacb56e...135c70`; celo `0x9b755b...62098b` | ⚠️ Unaudited |
| OriginatorStaking | unknown | celo | n/a | 9 deployments: celo [`0x0306f7...9043a8`](./contracts/celo-42220/0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8/); celo `0x18843e...ab9693`; celo `0x2ffa2c...06389a`; celo `0x519599...acf899`; celo `0x6ed247...5000f7`; celo `0x7d413d...3d2fa1`; celo `0x8181d3...582c7c`; celo `0xcc0d68...a9eef7`; celo `0xe33c7d...74073a` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12f46a...548b2b`](./contracts/ethereum-1/0x12f46a371e70bd19900790ac4895371386548b2b/); celo `0x57094e...2e5947` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaf9ad3...172314`](./contracts/ethereum-1/0xaf9ad360163e614ab98ab258a35514f41d172314/); ethereum `0xf18248...659d17` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | celo | n/a | 2 deployments: celo [`0xe03244...d9784e`](./contracts/celo-42220/0xe0324499ede832bd11fa37efefa46077d7d9784e/); celo `0xe1d776...5b153f` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | celo | n/a | 2 deployments: celo [`0x51246a...ef1f55`](./contracts/celo-42220/0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55/); celo `0xdd2ca0...fbf8fa` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | celo | n/a | [`0x59921f...713525`](./contracts/celo-42220/0x59921ff5cd63d3fd712f48ad3d2c2574bf713525/) | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | celo | n/a | 2 deployments: celo [`0x3a3079...d6dca3`](./contracts/celo-42220/0x3a3079f84c474487be83a615b248ba9353d6dca3/); celo `0xa9f740...494883` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | celo | n/a | [`0x5ccf42...30e7d7`](./contracts/celo-42220/0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7/) | ⚠️ Unaudited |
| PermittableToken | token | ethereum | n/a | [`0xe1ca72...aba03d`](./contracts/ethereum-1/0xe1ca72ff3434b131765c62cbcbc26060f7aba03d/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0xec3f3e...3fbb19`](./contracts/gnosis-100/0xec3f3e6d7907acda3a7431abd230196cda3fbb19/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e0f44...e66029`](./contracts/ethereum-1/0x0e0f447be0058ba019a59dbffc24563d8fe66029/); ethereum `0x5787b9...3627b6`; celo `0x75a6a0...5aab60` | ⚠️ Unaudited |
| StakedBETHIX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x713782...5bc004`](./contracts/ethereum-1/0x713782bed530adcf28604b04980ee8d5fd5bc004/); ethereum `0xcfd8ee...54fd8e` | ⚠️ Unaudited |
| StakedETHIX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b2bbb...39cc2d`](./contracts/ethereum-1/0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d/); ethereum `0x7d8767...ca93c2` | ⚠️ Unaudited |
| StakedETHIX | unknown | celo | n/a | 2 deployments: ethereum `0x55231a...4c4090`; celo [`0x1905ec...fd407c`](./contracts/celo-42220/0x1905ec0769775179a9b2e042ce0fd59e27fd407c/) | ⚠️ Unaudited |
| StakedETHIX | unknown | celo | n/a | 2 deployments: celo [`0xc564e1...cad638`](./contracts/celo-42220/0xc564e19eca51df927f43f04a3beaaa414fcad638/); celo `0xcb16e2...273c6b` | ⚠️ Unaudited |
| StakedUETHIX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f4b71...4dd673`](./contracts/ethereum-1/0x3f4b71f7b81d9829008504b8bfa09d215c4dd673/); ethereum `0x89cea1...9478f5` | ⚠️ Unaudited |
| StakingRewards | unknown | celo | n/a | [`0xbfa274...a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | ⚠️ Unaudited |
| TokenImplementation | token | celo | n/a | [`0x9995cc...c931ed`](./contracts/celo-42220/0x9995cc8f20db5896943afc8ee0ba463259c931ed/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | celo | n/a | 3 deployments: ethereum `0xb14b94...06b458`; gnosis `0xe5bc36...3577eb`; celo [`0x62cfa2...85ddb7`](./contracts/celo-42220/0x62cfa295864cff683cde9b47d4bacc77b885ddb7/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | celo | n/a | [`0x342072...955a5d`](./contracts/celo-42220/0x3420720e561f3082f1e514a4545f0f2e0c955a5d/) | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | n/a | [`0xa6439c...c9038a`](./contracts/ethereum-1/0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a/) | ⚠️ Unaudited |
| XDaiForeignBridge | unknown | ethereum | n/a | [`0xeee4f8...6d0473`](./contracts/ethereum-1/0xeee4f8db4410bebd74a76cb711d096c5e66d0473/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | celo | n/a | `0x0e1c2d...23f821` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x21cc49...0ea81c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dfbe4...e1cc9f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x78ccd8...5e2fae` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7e7457...b3b2e7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x84b1d6...8cec25` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa317c3...119945` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xad2f9f...767d4d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc684b1...79d605` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd582df...e24bf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd9aea7...7aab2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe5b70b...0b1052` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe70330...eb5b5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EthicHub - Smart Contract Audit Report Final.pdf](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 56 |

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
