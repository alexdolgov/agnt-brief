# Agentic Audit Brief: EthicHub

⚠️ Lifecycle status: UNKNOWN - TVL changed 13.8% over 90 days

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: unknown (Tier 0, 78.9% below peak)
- Generated: 2026-05-23T23:48:49.036Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: celo, ethereum, gnosis
- Contract surface: 58 unique implementations (213 raw deployments)
- DeFi Llama TVL: $4,045,216.77
- On-chain TVL (included contracts): $22,676,394.36
- TVL by chain: Ethereum $17,233,068.49 | Celo $5,419,528.19 | Gnosis $23,797.67

## Project Description

EthicHub is a decentralized protocol that connects lenders with smallholder farmers in emerging markets, enabling real-world asset (RWA) lending. It uses tokenized bonds, staking mechanisms, and cross-chain bridges to facilitate and secure agricultural loans.

### Architecture

The ETHEREUM SMART CONTRACTS family provides the foundational EthixToken and staking contracts, which are mirrored or bridged to the EthicHub family on Gnosis and Celo. The EthicHub family uses these tokens for bonding, staking, and liquidity, while ForeignOmnibridge enables cross-chain asset transfers between networks.

## Audit Coverage Summary

- Verified implementations audited: 0/47 (0.0%)
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 1
- Unverified implementations: 11
- Unique implementations: 58
- Raw deployments: 213
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $22,676,394.36
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $22,676,394.36 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EthixToken | token | ethereum | 2 deployments: ethereum [`0xdc0c39...c898b5`](./contracts/ethereum-1/0xdc0c39780a6f3165f61fb27f3d47668033c898b5/); ethereum `0xfd0991...d80d3e` | ⚠️ Unaudited |
| ERC20Reserve | token | ethereum | 5 deployments: ethereum [`0x1ecc7e...04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/); ethereum `0xb27132...063073`; ethereum `0xb97ef2...6e3518`; celo `0xa14b1d...3e1567`; celo `0xa9a824...b28530` | ⚠️ Unaudited |
| TokenImplementation | token | celo | [`0x9995cc...c931ed`](./contracts/celo-42220/0x9995cc8f20db5896943afc8ee0ba463259c931ed/) | ⚠️ Unaudited |
| MultiTokenReserve | token | celo | 4 deployments: celo [`0x49bc61...1fe9de`](./contracts/celo-42220/0x49bc61a91f5a3a2d74d04583a23758f15e1fe9de/); celo `0x70c85e...92651f`; celo `0x7d7c28...6cbb8d`; celo `0x851029...3c5b62` | ⚠️ Unaudited |
| PermittableToken | token | ethereum | 4 deployments: ethereum [`0x7c24d0...b254b3`](./contracts/ethereum-1/0x7c24d0061b484b267f286aa2dce891220db254b3/); ethereum `0xe1ca72...aba03d`; ethereum `0xf886bf...245e00`; gnosis `0xec3f3e...3fbb19` | ⚠️ Unaudited |
| BPool | core_logic | ethereum | [`0xb93aa4...db19f1`](./contracts/ethereum-1/0xb93aa4cdeef1293303f628e16dd06ddd42db19f1/) | ⚠️ Unaudited |
| ForeignAMBErc20ToNative | token | ethereum | 2 deployments: ethereum [`0x218056...d9ff9f`](./contracts/ethereum-1/0x2180560e79d68f8e3adbd38f3b81bb9b48d9ff9f/); ethereum `0xf6edfa...fd54ed` | ⚠️ Unaudited |
| AccessManager | governance | celo | 4 deployments: ethereum `0xd63956...84d361`; ethereum `0xeb69c1...9179ad`; celo [`0x25e7b7...148d22`](./contracts/celo-42220/0x25e7b7149e1067d0664f7646f33b17bc79148d22/); celo `0x7670ea...212ec8` | ⚠️ Unaudited |
| AMBFlashbotHelper | periphery | ethereum | [`0xeb4c5a...7005a5`](./contracts/ethereum-1/0xeb4c5ab9b36437f969888be99af42fc9087005a5/) | ⚠️ Unaudited |
| BridgeValidators | operational_periphery | ethereum | 9 deployments: ethereum [`0x4f386c...34ed56`](./contracts/ethereum-1/0x4f386c4dae45a94619aee4852d92780fbd34ed56/); ethereum `0x6943a2...7ad65a`; ethereum `0x7169e5...391f89`; ethereum `0x727485...81e8e6`; ethereum `0xd83893...24d218`; ethereum `0xe3316d...26b543`; ethereum `0xeb6e09...76c36d`; ethereum `0xed84a6...9d4064`; ethereum `0xf0b456...131ea9` | ⚠️ Unaudited |
| ChinosUlti | unknown | celo | 3 deployments: celo [`0x6f58a1...c0775e`](./contracts/celo-42220/0x6f58a18b4fcb513fca971f11f42252d68dc0775e/); celo `0xb04bda...43e9fa`; celo `0xbf83fc...3ad51e` | ⚠️ Unaudited |
| CompensationSystemManager | governance | ethereum | 2 deployments: ethereum [`0x25e7b7...148d22`](./contracts/ethereum-1/0x25e7b7149e1067d0664f7646f33b17bc79148d22/); ethereum `0xb26f8f...beb99f` | ⚠️ Unaudited |
| CreditLine | unknown | celo | 9 deployments: celo [`0x059c8a...35b488`](./contracts/celo-42220/0x059c8a9bd3ea305fb8c9215c1ee47dfdf835b488/); celo `0x08e066...2ea21b`; celo `0x1d4e90...92fc7d`; celo `0x1f6e60...5e03b9`; celo `0x223051...8d4be9`; celo `0x36523a...d5dd5e`; celo `0x95deb3...8e8285`; celo `0xdb5d3a...03acdd`; celo `0xf417e8...7bd076` | ⚠️ Unaudited |
| CrowdEquityVestingReserve | operational_periphery | celo | [`0x2bf3d1...7ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | ⚠️ Unaudited |
| ERC1155BridgeToken | operational_periphery | ethereum | [`0xf714c3...a17908`](./contracts/ethereum-1/0xf714c3aa632ece07eeba241803b26f806ea17908/) | ⚠️ Unaudited |
| ERC20NFTBond | token | ethereum | 32 deployments: ethereum [`0x011042...e0f9d6`](./contracts/ethereum-1/0x0110425d2f26595d21969085fe4f784064e0f9d6/); ethereum `0x194cb1...8d7338`; ethereum `0x213206...c554d9`; ethereum `0x262569...aa9030`; ethereum `0x36d45e...a7313c`; ethereum `0x573325...7122e2`; ethereum `0x696d74...5679de`; ethereum `0x733e9c...97e49d`; ethereum `0x8eb87a...69cfa6`; ethereum `0x92be91...7730d2`; ethereum `0xa258ee...51a589`; ethereum `0xa97f2f...80eed9`; ethereum `0xd41e96...9d357e`; ethereum `0xd5277d...61d8a5`; ethereum `0xe84686...cf22b1`; ethereum `0xf3839c...bd46b6`; celo `0x05a71c...a096d3`; celo `0x0f497a...378ff0`; celo `0x1a3417...7967c4`; celo `0x350d1a...8be0ad`; celo `0x3ca21f...944ae4`; celo `0x4426f8...130e3e`; celo `0x7cf02b...2f2bca`; celo `0x89cea1...9478f5`; celo `0x99a6cd...dc0705`; celo `0xa16281...4b8fd0`; celo `0xb3369f...b26de9`; celo `0xbc449d...d9da27`; celo `0xc918ed...a35c93`; celo `0xd27e31...9b7620`; celo `0xd8c315...b62c9b`; celo `0xe0eb2d...111cbc` | ⚠️ Unaudited |
| ERC721BridgeToken | operational_periphery | ethereum | 2 deployments: ethereum [`0x7259b1...c24dfb`](./contracts/ethereum-1/0x7259b1612b464c65205b7dcdc5ba9fd7aec24dfb/); ethereum `0x8b9e7c...4dd21d` | ⚠️ Unaudited |
| EternalStorageProxy | token | ethereum | [`0x01db9f...ddb5cf`](./contracts/ethereum-1/0x01db9f9a32d4d11d82882bf705e01c39e0ddb5cf/) | ⚠️ Unaudited |
| ForeignAMB | unknown | ethereum | 12 deployments: ethereum [`0x07955b...a594e2`](./contracts/ethereum-1/0x07955be2967b655cf52751fce7ccc8c61ea594e2/); ethereum `0x2140ec...2c8671`; ethereum `0x2946f6...37461e`; ethereum `0x4c36d2...9ce64e`; ethereum `0x54c6df...c98ed7`; ethereum `0x5a91b3...bd2b7e`; ethereum `0x5f1e78...a924be`; ethereum `0x82b67a...7ac6ab`; ethereum `0x872796...a5c943`; ethereum `0xa5ac7d...7aa2a1`; ethereum `0xceb06e...6f65a5`; ethereum `0xe804fe...2f4b16` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | ethereum | 6 deployments: ethereum [`0x41a4ee...01133e`](./contracts/ethereum-1/0x41a4ee2855a7dc328524babb07d7f505b201133e/); ethereum `0x6ea6c6...630c2f`; ethereum `0x71f12d...99db8d`; ethereum `0x7c14be...778e24`; ethereum `0xaa60a7...c49faf`; ethereum `0xd92500...2ea7a7` | ⚠️ Unaudited |
| ForeignAMBNativeToErc20 | token | ethereum | 2 deployments: ethereum [`0xb11c0c...ec2540`](./contracts/ethereum-1/0xb11c0c3ce15a998fe403b36f2606c3be78ec2540/); ethereum `0xe877fb...deb866` | ⚠️ Unaudited |
| ForeignBridge | operational_periphery | ethereum | [`0x46d811...60256d`](./contracts/ethereum-1/0x46d811fa0a435ea9bce8cae11ebf9fbd0a60256d/) | ⚠️ Unaudited |
| ForeignBridgeErcToNative | operational_periphery | ethereum | 4 deployments: ethereum [`0x75df5a...a0bb59`](./contracts/ethereum-1/0x75df5af045d91108662d8080fd1fefad6aa0bb59/); ethereum `0x7e7669...9228c2`; ethereum `0x83c2e0...0fde8b`; ethereum `0xd40355...92c2cd` | ⚠️ Unaudited |
| ForeignFeeManagerAMBNativeToErc20 | governance | ethereum | [`0x1f96a4...223bda`](./contracts/ethereum-1/0x1f96a42cdfe3c3e90d1b58561d8731de63223bda/) | ⚠️ Unaudited |
| ForeignMultiAMBErc20ToErc677 | token | ethereum | 6 deployments: ethereum [`0x280f04...d22ca9`](./contracts/ethereum-1/0x280f04a988513610584057bf3fde1f56f4d22ca9/); ethereum `0x2dca02...38c961`; ethereum `0x4b8618...eb8dbe`; ethereum `0x5275e7...0b85ae`; ethereum `0x7bff37...0cc40e`; ethereum `0xb0a18f...9c2e94` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | operational_periphery | ethereum | 7 deployments: ethereum [`0x1762d3...c148f0`](./contracts/ethereum-1/0x1762d3e9d7ae6bc7a2a70c25a4aca69391c148f0/); ethereum `0x51af99...179726`; ethereum `0x564785...daf036`; ethereum `0x6c8d0a...73c480`; ethereum `0x89d321...cc1dc8`; ethereum `0xba7bc1...ca85c5`; ethereum `0xd116e8...9f9e3a` | ⚠️ Unaudited |
| ForeignOmnibridge | operational_periphery | ethereum | 5 deployments: ethereum [`0x543fb4...bfb9d5`](./contracts/ethereum-1/0x543fb43e829cceec32b623dfed83ef3622bfb9d5/); ethereum `0x69c707...32cd03`; ethereum `0x88ad09...655671`; ethereum `0x8eb3b7...48e347`; ethereum `0x94447a...bf98c3` | ⚠️ Unaudited |
| HomeAMBErc677ToErc677 | unknown | ethereum | 2 deployments: ethereum [`0xa8cbad...78a846`](./contracts/ethereum-1/0xa8cbad2ff217cb9c32ca8d3903e2a2b65578a846/); ethereum `0xe7228b...262dcd` | ⚠️ Unaudited |
| IncentiveVestingReserve | operational_periphery | ethereum | 4 deployments: ethereum [`0x6f58a1...c0775e`](./contracts/ethereum-1/0x6f58a18b4fcb513fca971f11f42252d68dc0775e/); ethereum `0xbf83fc...3ad51e`; ethereum `0xcb16e2...273c6b`; ethereum `0xd5bab2...559793` | ⚠️ Unaudited |
| InvestorsVestingReserve | operational_periphery | ethereum | 6 deployments: ethereum [`0x08214e...bc86fa`](./contracts/ethereum-1/0x08214eb1d6c53cbf35c72fb27cd2ee3252bc86fa/); ethereum `0x34d3c9...216705`; ethereum `0xde629e...870cf5`; celo `0x2c67c2...098858`; celo `0x635775...4beac7`; celo `0xa9383c...de8f20` | ⚠️ Unaudited |
| MembershipBond | unknown | celo | 7 deployments: celo [`0x302e47...4463bb`](./contracts/celo-42220/0x302e471ae434c50c1fe931a4a0fe0d84074463bb/); celo `0x4bf4a8...452260`; celo `0x6e0262...53d029`; celo `0x890341...3f3d1f`; celo `0x9dd572...70bbd3`; celo `0xceeb15...a78059`; celo `0xda70b3...228614` | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | ethereum | [`0x2f36b4...9b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | ⚠️ Unaudited |
| OriginatorStaking | unknown | celo | 19 deployments: ethereum `0x1e70f4...082c8b`; ethereum `0x2f19bd...2de481`; ethereum `0x3b61cd...04d0e3`; ethereum `0x3ef3ee...852440`; ethereum `0x7435c0...1dd955`; ethereum `0xa1cf21...444444`; ethereum `0xa7e499...fa44b8`; ethereum `0xacb56e...135c70`; ethereum `0xe03244...d9784e`; celo [`0x0306f7...9043a8`](./contracts/celo-42220/0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8/); celo `0x18843e...ab9693`; celo `0x2ffa2c...06389a`; celo `0x519599...acf899`; celo `0x6ed247...5000f7`; celo `0x7d413d...3d2fa1`; celo `0x8181d3...582c7c`; celo `0x903134...d032ea`; celo `0xcc0d68...a9eef7`; celo `0xe33c7d...74073a` | ⚠️ Unaudited |
| OriginatorStakingFactory | registry | ethereum | 4 deployments: ethereum [`0xaf9ad3...172314`](./contracts/ethereum-1/0xaf9ad360163e614ab98ab258a35514f41d172314/); ethereum `0xf18248...659d17`; celo `0xe03244...d9784e`; celo `0xe1d776...5b153f` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | celo | 2 deployments: celo [`0x51246a...ef1f55`](./contracts/celo-42220/0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55/); celo `0xdd2ca0...fbf8fa` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | registry | celo | 2 deployments: celo [`0x3a3079...d6dca3`](./contracts/celo-42220/0x3a3079f84c474487be83a615b248ba9353d6dca3/); celo `0xa9f740...494883` | ⚠️ Unaudited |
| StakedBETHIX | token | ethereum | 2 deployments: ethereum [`0x713782...5bc004`](./contracts/ethereum-1/0x713782bed530adcf28604b04980ee8d5fd5bc004/); ethereum `0xcfd8ee...54fd8e` | ⚠️ Unaudited |
| StakedETHIX | token | celo | 6 deployments: ethereum `0x55231a...4c4090`; ethereum `0x5b2bbb...39cc2d`; ethereum `0x7d8767...ca93c2`; celo [`0x1905ec...fd407c`](./contracts/celo-42220/0x1905ec0769775179a9b2e042ce0fd59e27fd407c/); celo `0xc564e1...cad638`; celo `0xcb16e2...273c6b` | ⚠️ Unaudited |
| StakedUETHIX | token | ethereum | 2 deployments: ethereum [`0x3f4b71...4dd673`](./contracts/ethereum-1/0x3f4b71f7b81d9829008504b8bfa09d215c4dd673/); ethereum `0x89cea1...9478f5` | ⚠️ Unaudited |
| StakingRewards | unknown | celo | [`0xbfa274...a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | ⚠️ Unaudited |
| TeamVestingReserve | operational_periphery | ethereum | 2 deployments: ethereum [`0x48c5bf...73517b`](./contracts/ethereum-1/0x48c5bf17fafbf7a41436d46503599f96c173517b/); ethereum `0x82e336...6211ae` | ⚠️ Unaudited |
| TokenFactory | registry | ethereum | 2 deployments: ethereum [`0x3efa9b...72502e`](./contracts/ethereum-1/0x3efa9b4b936d8dcb4887ba147c8192f8f872502e/); ethereum `0x71d5ba...8f0424` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | gnosis | 4 deployments: ethereum `0xb14b94...06b458`; gnosis [`0x2b8d7a...f2acd1`](./contracts/gnosis-100/0x2b8d7a0ed5e642f6441862d353c60c8f8ff2acd1/); gnosis `0xe5bc36...3577eb`; celo `0x62cfa2...85ddb7` | ⚠️ Unaudited |
| UpgradeBeaconProxy | registry | celo | [`0x751c08...a45119`](./contracts/celo-42220/0x751c0834599c49e2e857ca9f1cdf929e6fa45119/) | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | [`0xa6439c...c9038a`](./contracts/ethereum-1/0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a/) | ⚠️ Unaudited |
| XDaiForeignBridge | operational_periphery | ethereum | [`0xeee4f8...6d0473`](./contracts/ethereum-1/0xeee4f8db4410bebd74a76cb711d096c5e66d0473/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | 5 deployments: ethereum [`0x0e0f44...e66029`](./contracts/ethereum-1/0x0e0f447be0058ba019a59dbffc24563d8fe66029/); ethereum `0x5787b9...3627b6`; celo `0x21cc49...0ea81c`; celo `0x75a6a0...5aab60`; celo `0xc684b1...79d605` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | celo | `0x0e1c2d...23f821` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2dfbe4...e1cc9f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x78ccd8...5e2fae` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7e7457...b3b2e7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x84b1d6...8cec25` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa317c3...119945` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xad2f9f...767d4d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd582df...e24bf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd9aea7...7aab2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe5b70b...0b1052` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe70330...eb5b5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdc0c39...c898b5`](./contracts/ethereum-1/0xdc0c39780a6f3165f61fb27f3d47668033c898b5/) | EthixToken | token | $12,257,771.86 | Verified native implementation with $12,257,771.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecc7e...04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/) | ERC20Reserve | token | $7,105,450.81 | Verified native implementation with $7,105,450.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x49bc61...1fe9de`](./contracts/celo-42220/0x49bc61a91f5a3a2d74d04583a23758f15e1fe9de/) | MultiTokenReserve | token | $94,324.21 | Verified native implementation with $94,324.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c24d0...b254b3`](./contracts/ethereum-1/0x7c24d0061b484b267f286aa2dce891220db254b3/) | PermittableToken | token | $23,797.67 | Verified native implementation with $23,797.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6f58a1...c0775e`](./contracts/celo-42220/0x6f58a18b4fcb513fca971f11f42252d68dc0775e/) | ChinosUlti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x059c8a...35b488`](./contracts/celo-42220/0x059c8a9bd3ea305fb8c9215c1ee47dfdf835b488/) | CreditLine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2bf3d1...7ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | CrowdEquityVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011042...e0f9d6`](./contracts/ethereum-1/0x0110425d2f26595d21969085fe4f784064e0f9d6/) | ERC20NFTBond | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f58a1...c0775e`](./contracts/ethereum-1/0x6f58a18b4fcb513fca971f11f42252d68dc0775e/) | IncentiveVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08214e...bc86fa`](./contracts/ethereum-1/0x08214eb1d6c53cbf35c72fb27cd2ee3252bc86fa/) | InvestorsVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x302e47...4463bb`](./contracts/celo-42220/0x302e471ae434c50c1fe931a4a0fe0d84074463bb/) | MembershipBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f36b4...9b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | MerkleTreeVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf9ad3...172314`](./contracts/ethereum-1/0xaf9ad360163e614ab98ab258a35514f41d172314/) | OriginatorStakingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1905ec...fd407c`](./contracts/celo-42220/0x1905ec0769775179a9b2e042ce0fd59e27fd407c/) | StakedETHIX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f4b71...4dd673`](./contracts/ethereum-1/0x3f4b71f7b81d9829008504b8bfa09d215c4dd673/) | StakedUETHIX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbfa274...a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48c5bf...73517b`](./contracts/ethereum-1/0x48c5bf17fafbf7a41436d46503599f96c173517b/) | TeamVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 9 |
| standard_library | 8 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2663] DL audit link
- [2664] DL audit link

Fork inheritance lineage and inherited audits are included when available.
