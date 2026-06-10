# Agentic Audit Brief: Universe XYZ

⚠️ Lifecycle status: DEAD - TVL dropped 25.5% over 90 days

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Lifecycle: dead (Tier 0, 99.4% below peak)
- Generated: 2026-06-10T20:59:18.514Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 34 unique implementations (216 raw deployments)
- DeFi Llama TVL: $1,626,488.52
- On-chain TVL (included contracts): $216,115.35
- TVL by chain: Ethereum $216,115.35

## Project Description

Universe XYZ is an Ethereum NFT/community platform underpinned by the $XYZ token. Staking or yield components should only be described when specifically tied to verified Universe XYZ-owned contracts.

### Architecture

The IlluviumERC20 token is used within the Staking contract for reward distribution, while the UniswapV2Pair provides liquidity for the token. Supporting contracts like BarnBridgeToken and Comp may serve as external reward tokens or governance interfaces.

## Audit Coverage Summary

- Verified implementations audited: 5/23 (21.7%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 34
- Raw deployments: 216
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $216,115.35
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $216,115.35 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 5 | 21.7% | 2021-02 |
| Haechi Labs | Tier 2 | 4 | 17.4% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DiamondCutFacet | unknown | ethereum | [`0x441710...41a68e`](./contracts/ethereum-1/0x441710f49efe5cb0f50ffa4c24066269c141a68e/) | ✅ Audited |
| DiamondLoupeFacet | unknown | ethereum | [`0x75e333...801ec3`](./contracts/ethereum-1/0x75e333b48d71886c433c7beb879a6601bd801ec3/) | ✅ Audited |
| Governance | unknown | ethereum | [`0xa8047c...b272c2`](./contracts/ethereum-1/0xa8047c2a86d5a188b0e15c3c10e2bc144cb272c2/) | ✅ Audited |
| OwnershipFacet | unknown | ethereum | [`0x5c7cb1...3e75cc`](./contracts/ethereum-1/0x5c7cb19978cf51594a121c650d031761c73e75cc/) | ✅ Audited |
| Rewards | unknown | ethereum | [`0xf306ad...c31205`](./contracts/ethereum-1/0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| XYZToken | token | ethereum | [`0x618679...fa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | ethereum | [`0x0391d2...37750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | ⚠️ Unaudited |
| CommunityVault | core_logic | ethereum | [`0xc6f269...f9bd8e`](./contracts/ethereum-1/0xc6f269bcde85cba7c9d91ae5fb91f5612ff9bd8e/) | ⚠️ Unaudited |
| DevFund | unknown | ethereum | [`0xf1e72f...b083d7`](./contracts/ethereum-1/0xf1e72f91f6319b50d64536fe6777c9c0a8b083d7/) | ⚠️ Unaudited |
| HolderToken | token | ethereum | [`0x5e4e66...fd04f4`](./contracts/ethereum-1/0x5e4e6685a84eb1a597c7f794700893ab8ffd04f4/) | ⚠️ Unaudited |
| IlluviumNFT | token | ethereum | [`0x384aa0...af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/) | ⚠️ Unaudited |
| ILVPool | core_logic | ethereum | 3 deployments: ethereum [`0x6b7220...e201c6`](./contracts/ethereum-1/0x6b72209b2514940606910dd9ad309ee1e5e201c6/); ethereum `0x7f5f85...34291d`; ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xa904f2...a8c79a`](./contracts/ethereum-1/0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a/) | ⚠️ Unaudited |
| MockedPool | core_logic | ethereum | [`0xa1b1c0...e5a8c6`](./contracts/ethereum-1/0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6/) | ⚠️ Unaudited |
| NFTClaimManager | governance | ethereum | [`0x3fa9f4...aa9c4c`](./contracts/ethereum-1/0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c/) | ⚠️ Unaudited |
| NFTDisperser | token | ethereum | [`0xf5df4f...b3233c`](./contracts/ethereum-1/0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c/) | ⚠️ Unaudited |
| PoolFactory | registry | ethereum | 2 deployments: ethereum [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/); ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| Staking | unknown | ethereum | [`0x2d6157...ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | ⚠️ Unaudited |
| Supernova | proxy | ethereum | [`0x7b8660...872962`](./contracts/ethereum-1/0x7b86600211e62b597e7cea03476b9efeb6872962/) | ⚠️ Unaudited |
| SushiLPPool | core_logic | ethereum | [`0xe98477...571cc2`](./contracts/ethereum-1/0xe98477bdc16126bb0877c6e3882e3edd72571cc2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0xbbbdb1...14d69a`](./contracts/ethereum-1/0xbbbdb106a806173d1eea1640961533ff3114d69a/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | 174 deployments: ethereum [`0x0321d9...5352f8`](./contracts/ethereum-1/0x0321d99ef353fd25a29b0805125f9203c75352f8/); ethereum `0x036654...fded99`; ethereum `0x04f1dc...e521f2`; ethereum `0x074bbf...461249`; ethereum `0x07afd4...10a7cc`; ethereum `0x098400...7fb963`; ethereum `0x0c19ef...268d2c`; ethereum `0x0c638d...38531e`; ethereum `0x0cd11e...3c8a1d`; ethereum `0x0cda7f...06157a`; ethereum `0x0d90a3...69601c`; ethereum `0x0ed3b3...b9a8c3`; ethereum `0x0faea9...0bc70f`; ethereum `0x10f27e...8c35cc`; ethereum `0x111316...5ee755`; ethereum `0x1133b8...7f6490`; ethereum `0x11dd9d...dcb414`; ethereum `0x14dbff...fb9ccf`; ethereum `0x14f768...88cb34`; ethereum `0x1531d9...8a988e`; ethereum `0x1568b2...2323de`; ethereum `0x15b789...993386`; ethereum `0x15c936...44ae0a`; ethereum `0x16d85c...f7674d`; ethereum `0x18c520...e7e7c5`; ethereum `0x191e56...bd5a3e`; ethereum `0x19b135...ee853e`; ethereum `0x1cc631...f1eea3`; ethereum `0x1fdc8d...dc00f7`; ethereum `0x2181d9...d1d1be`; ethereum `0x222c14...00f822`; ethereum `0x230407...5c4f20`; ethereum `0x25ea79...10b242`; ethereum `0x26e116...deead1`; ethereum `0x29c956...99f9ae`; ethereum `0x2b014d...4f88d1`; ethereum `0x2e7f9b...9ea347`; ethereum `0x2f25c2...dadfe9`; ethereum `0x2f5007...b65676`; ethereum `0x3363fa...f8a5dc`; ethereum `0x3395c2...ec63e0`; ethereum `0x3736ce...f10214`; ethereum `0x386153...2e47ab`; ethereum `0x3a50b4...b74d8f`; ethereum `0x3ac7c6...94ce29`; ethereum `0x3bc624...938a76`; ethereum `0x3d282d...9a9b86`; ethereum `0x3d44a1...aa4a13`; ethereum `0x3e26b6...79caa8`; ethereum `0x3f2de6...acce7c`; ethereum `0x40fcb9...cd44d1`; ethereum `0x41092c...75d757`; ethereum `0x4243b2...f2955b`; ethereum `0x454e0e...e7bda9`; ethereum `0x45b90e...9c6039`; ethereum `0x4808a6...db7486`; ethereum `0x486597...b75958`; ethereum `0x4955ca...8242db`; ethereum `0x4cc488...fe1807`; ethereum `0x4d0640...c9e8ab`; ethereum `0x4d116d...5d1b78`; ethereum `0x51022e...46d607`; ethereum `0x5384b6...450630`; ethereum `0x54ae04...2b49cb`; ethereum `0x5520a5...ca2060`; ethereum `0x559896...4d0ec2`; ethereum `0x55a8e6...bc2976`; ethereum `0x5f6a1e...2749cc`; ethereum `0x63ed6e...b7c206`; ethereum `0x640d37...e0ff7a`; ethereum `0x642bbe...6e050e`; ethereum `0x646d08...b43a0c`; ethereum `0x64ddfc...3d6c3c`; ethereum `0x64f9f2...b50a15`; ethereum `0x6592fb...a4115b`; ethereum `0x6b0f2f...7510f7`; ethereum `0x6b91b1...fd56eb`; ethereum `0x6b96e1...1bb61f`; ethereum `0x6c1320...ebef85`; ethereum `0x6cf3da...aaa110`; ethereum `0x6d8537...e7123f`; ethereum `0x705804...0a68f3`; ethereum `0x709d44...f6cef8`; ethereum `0x72af11...8fa1b4`; ethereum `0x7336af...f2f191`; ethereum `0x73e68b...34930b`; ethereum `0x7800cd...31751e`; ethereum `0x783cf9...90e42f`; ethereum `0x786ee8...eb190a`; ethereum `0x7ba699...e9290c`; ethereum `0x7bd02b...b9ac45`; ethereum `0x7d0fe8...90ee4a`; ethereum `0x7d2691...f8aeda`; ethereum `0x82bcd4...a9ff83`; ethereum `0x831512...b45765`; ethereum `0x846f0d...d54451`; ethereum `0x852077...d69b9c`; ethereum `0x853448...7ac342`; ethereum `0x85409f...d019f3`; ethereum `0x854a23...e9e9ca`; ethereum `0x889a70...c47b95`; ethereum `0x8957ec...0ce2b8`; ethereum `0x8a77cd...314007`; ethereum `0x8b5381...8cccb4`; ethereum `0x8c9596...690efc`; ethereum `0x90ea42...c68aca`; ethereum `0x910fa9...1a0785`; ethereum `0x965e03...8257f0`; ethereum `0x99cd8c...bc31f5`; ethereum `0x9c9cbc...b9991a`; ethereum `0x9d063c...43b0c7`; ethereum `0xa1bbad...043841`; ethereum `0xa2e754...3351e5`; ethereum `0xa3e080...d94353`; ethereum `0xa5d9b8...a315db`; ethereum `0xa9a534...b61e85`; ethereum `0xaaff4c...917c5b`; ethereum `0xac5451...a3a36c`; ethereum `0xad6eb0...16c75a`; ethereum `0xb19683...437bae`; ethereum `0xb43b25...9373ac`; ethereum `0xb7d407...6209a7`; ethereum `0xb9adef...d39af1`; ethereum `0xb9c6a6...7d685c`; ethereum `0xbb4b3f...e06173`; ethereum `0xbb773d...0ab3c6`; ethereum `0xbf1ac0...d1e194`; ethereum `0xc0e835...ca275a`; ethereum `0xc25045...d60154`; ethereum `0xc387dc...b4ef87`; ethereum `0xc77719...955961`; ethereum `0xc94c55...d62201`; ethereum `0xca46fd...1ded64`; ethereum `0xce49e2...62b7b4`; ethereum `0xd0bd07...b6937d`; ethereum `0xd0f6a8...4c85f6`; ethereum `0xd292c5...97e95c`; ethereum `0xd39795...225882`; ethereum `0xd480c9...7a98fc`; ethereum `0xd5ca08...9c6e32`; ethereum `0xd6173b...4c3cc4`; ethereum `0xd756ea...7fe2a6`; ethereum `0xd847d7...5608c5`; ethereum `0xdb87d2...e735c0`; ethereum `0xdc6a0c...14e2c8`; ethereum `0xdd510b...b50d3e`; ethereum `0xdd6506...b1d4d7`; ethereum `0xdd76ea...68de6f`; ethereum `0xded5c1...c9f690`; ethereum `0xdf206f...dba130`; ethereum `0xdf42c0...cdd5b3`; ethereum `0xdfb512...955f27`; ethereum `0xe050e0...877793`; ethereum `0xe24dde...0dd847`; ethereum `0xe6fa7c...ea2935`; ethereum `0xe7ca02...d2b0f9`; ethereum `0xe83aab...3b74f3`; ethereum `0xe9d10f...f9b433`; ethereum `0xea0c0c...41d036`; ethereum `0xead154...ced8ba`; ethereum `0xed15b1...778618`; ethereum `0xef2439...5e7f4c`; ethereum `0xef2abb...0c26e5`; ethereum `0xf081ee...18b764`; ethereum `0xf25ecb...f05b3e`; ethereum `0xf2bdbe...c27c68`; ethereum `0xf386cc...aef64a`; ethereum `0xf38cc3...b13abf`; ethereum `0xf4a302...ec56b9`; ethereum `0xf4ab19...69da18`; ethereum `0xf8a3d8...f97454`; ethereum `0xf8e6c7...69024f`; ethereum `0xfea490...e057e1`; ethereum `0xffa1cd...16980e` | ⚠️ Unaudited |
| YieldFarmGenericToken | token | ethereum | 7 deployments: ethereum [`0x0ef485...0ea0c7`](./contracts/ethereum-1/0x0ef4852645fa17fdad5f15f7b4021251090ea0c7/); ethereum `0x1d59a8...d7fc8f`; ethereum `0x1f926b...d0185e`; ethereum `0x49e01d...9fdf29`; ethereum `0x4c82b9...2811a9`; ethereum `0x9f8b01...7ea659`; ethereum `0xe3e186...7a5f32` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x088823...cae7b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10033f...24130c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1db797...b888c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x257377...9fc96e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d07e1...1d4340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7263ca...cdf003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8aa438...4f1f0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b42d3...4c2419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa305cd...a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae37e6...59e819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd293ed...8ce487` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi Labs | Audit | 2021-01 | stale | Direct | contract_name | 4 | high |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x618679...fa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | XYZToken | token | $216,115.35 | Verified native implementation with $216,115.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6f269...f9bd8e`](./contracts/ethereum-1/0xc6f269bcde85cba7c9d91ae5fb91f5612ff9bd8e/) | CommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1e72f...b083d7`](./contracts/ethereum-1/0xf1e72f91f6319b50d64536fe6777c9c0a8b083d7/) | DevFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e4e66...fd04f4`](./contracts/ethereum-1/0x5e4e6685a84eb1a597c7f794700893ab8ffd04f4/) | HolderToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b7220...e201c6`](./contracts/ethereum-1/0x6b72209b2514940606910dd9ad309ee1e5e201c6/) | ILVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa904f2...a8c79a`](./contracts/ethereum-1/0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1b1c0...e5a8c6`](./contracts/ethereum-1/0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6/) | MockedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fa9f4...aa9c4c`](./contracts/ethereum-1/0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c/) | NFTClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5df4f...b3233c`](./contracts/ethereum-1/0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c/) | NFTDisperser | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d6157...ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b8660...872962`](./contracts/ethereum-1/0x7b86600211e62b597e7cea03476b9efeb6872962/) | Supernova | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0321d9...5352f8`](./contracts/ethereum-1/0x0321d99ef353fd25a29b0805125f9203c75352f8/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ef485...0ea0c7`](./contracts/ethereum-1/0x0ef4852645fa17fdad5f15f7b4021251090ea0c7/) | YieldFarmGenericToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=9

Zero-match audit list:

- [3018] PerfectAbstractions-Marketplace-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
