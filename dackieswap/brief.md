# Agentic Audit Brief: DackieSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 10.6% over 90 days

## Project Overview

- Project: DackieSwap (`dackieswap`)
- Website: [https://dackieswap.xyz](https://dackieswap.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T07:12:21.618Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, blast, ethereum, linea, mode, optimism, unichain
- Contract surface: 61 unique implementations (100 raw deployments)
- DeFi Llama TVL: $52,541.00
- On-chain TVL (included contracts): $640,676.76
- TVL by chain: Base $640,676.76

## Project Description

DackieSwap is a decentralized exchange (DEX) protocol that enables users to swap tokens, provide liquidity, and manage concentrated liquidity positions across multiple blockchain networks. It supports both V2 (constant product) and V3 (concentrated liquidity) automated market maker (AMM) models, along with cross-chain token bridging via OFT (Omnichain Fungible Token) adapters.

### Architecture

The V2 and V3 families share the same token contracts (DackieToken, QuackToken) and cross-chain OFT adapters, allowing liquidity and trading across both AMM versions. V3 routers (SmartRouter, DackieRouter) aggregate liquidity from V3 pools and may also interface with V2 pools, while the NonfungiblePositionManager relies on factory and pool deployer contracts to create and manage V3 positions.

## Contract Surface Quality

- Indexed contracts: 338; live-surface contracts included: 100 (99 live, 1 unknown).
- Excluded by liveness: 221 inactive, 17 singleton, 0 uninitialized.
- Deployment units: 1/8 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 2/89.

## Audit Coverage Summary

- Verified implementations audited: 2/32 (6.3%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 2
- Unverified implementations: 29
- Unique implementations: 61
- Raw deployments: 100
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $640,676.76
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $640,676.76 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 6.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DackieNFT | token | base | n/a | [`0xebcec2...72242b`](./contracts/base-8453/0xebcec2e959bad4137925f9ddb68e163cca72242b/) | ✅ Audited |
| MasterChefV3 | unknown | base | n/a | 3 deployments: base [`0x3df411...5fcbee`](./contracts/base-8453/0x3df41177096d1e18c1d4447fa16ecc12175fcbee/); base `0xf2890e...d83b6d`; arbitrum `0xd1575b...a670cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| QuackToken | token | base | n/a | 2 deployments: base [`0x0c6a50...789c9d`](./contracts/base-8453/0x0c6a5070c9ec83399770f20685add0754e789c9d/); base `0x639c0d...b58109` | ⚠️ Unaudited |
| DackieToken | token | base | n/a | [`0xc2bc7a...4d617b`](./contracts/base-8453/0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b/) | ⚠️ Unaudited |
| DackiePool | core_logic | base | n/a | 2 deployments: base [`0x4ad387...388b05`](./contracts/base-8453/0x4ad387bcb03b92a6e22a72391cc37493fc388b05/); base `0xf6c5b5...bcf5e5` | ⚠️ Unaudited |
| DackieVault | core_logic | base | n/a | 2 deployments: base [`0x645d25...a5fc98`](./contracts/base-8453/0x645d25cc63578096edbe941cb9ee56d20da5fc98/); base `0xdd23df...e67988` | ⚠️ Unaudited |
| SmartStakingPoolV1 | core_logic | base | n/a | 7 deployments: base [`0x136428...057b98`](./contracts/base-8453/0x13642860ba5649d74588c7c0b519af9fe1057b98/); base `0x1ce2f9...abc2b0`; base `0x406415...226ffd`; base `0x57782c...364042`; base `0x9b48d9...08f19a`; base `0xbc905e...d0c1bc`; base `0xc8042b...2a7da6` | ⚠️ Unaudited |
| DackieFlexiblePool | core_logic | base | n/a | 2 deployments: base [`0x5cb903...8b5b95`](./contracts/base-8453/0x5cb90378614631b3d1baceddce6bc09e508b5b95/); base `0xc845cc...34a43b` | ⚠️ Unaudited |
| DackieFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x3d237a...a48870`](./contracts/ethereum-1/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/); unichain `0x507940...de2f5c` | ⚠️ Unaudited |
| DackieOFT | unknown | linea | n/a | 3 deployments: mode `0xf15578...413bca`; linea [`0x507940...de2f5c`](./contracts/linea-59144/0x507940c2469e6e3b33032f1d4ff8d123bdde2f5c/); linea `0x757cd5...3f6d30` | ⚠️ Unaudited |
| DackieRouter | adapter | ethereum | n/a | 5 deployments: ethereum [`0x241703...ad7f9b`](./contracts/ethereum-1/0x2417036313b66eb0495f573f11142efdaead7f9b/); unichain `0xe4efb9...70fe20`; base `0xca4eaa...7fe56f`; linea `0x79b3a6...177cbb`; blast `0x5ba546...a53802` | ⚠️ Unaudited |
| DackieTokenMigrator | token | base | n/a | [`0x03d573...b8050e`](./contracts/base-8453/0x03d573c792a074ad71ddd9cd04ed93bac0b8050e/) | ⚠️ Unaudited |
| DackieUSD | unknown | base | n/a | [`0x613ce2...e4a71d`](./contracts/base-8453/0x613ce28076289de255f1a6487437f03e37e4a71d/) | ⚠️ Unaudited |
| DackieV3Factory | registry | unichain | n/a | [`0xb90109...e82f39`](./contracts/unichain-130/0xb9010964301326160173da694c0697a2fce82f39/) | ⚠️ Unaudited |
| DackieV3PoolDeployer | core_logic | unichain | n/a | [`0xc6f396...be54c7`](./contracts/unichain-130/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/) | ⚠️ Unaudited |
| DackieVaultReward | core_logic | base | n/a | [`0x4a911c...a4005c`](./contracts/base-8453/0x4a911c7c98088a3e762273c9e962bf7456a4005c/) | ⚠️ Unaudited |
| KingDackieNFT | token | base | n/a | [`0x78f814...8a48a0`](./contracts/base-8453/0x78f8142ea59ae08d81bc80b2fd415405628a48a0/) | ⚠️ Unaudited |
| MasterChefDACKIE | unknown | base | n/a | [`0x3905f0...6b94ad`](./contracts/base-8453/0x3905f0c724a284095353befafd932204ee6b94ad/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | base | n/a | [`0x5083e8...e67fa1`](./contracts/base-8453/0x5083e8d08e1e154e1465b1f044ba3a524de67fa1/) | ⚠️ Unaudited |
| MasterChefV3KeeperV1 | operational_periphery | base | n/a | [`0x6238e3...ac4f5b`](./contracts/base-8453/0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-41607 | [`0xcfb05a...906b77`](./contracts/base-8453/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | n/a | 8 deployments: ethereum `0x6510e6...ff5055`; optimism `0x2d1b82...715678`; unichain `0xa466eb...4889bb`; mode `0x88651e...285e84`; arbitrum `0x4f205d...3ff9b7`; linea `0x776c05...017f93`; blast [`0x11ca45...35290d`](./contracts/blast-81457/0x11ca45eb43517d4a84b79671104654954535290d/); blast `0xf2890e...d83b6d` | ⚠️ Unaudited |
| PancakeV3Factory | registry | ethereum | n/a | [`0x2d1b82...715678`](./contracts/ethereum-1/0x2d1b823962c401a7b229e1a9b38760d2f1715678/) | ⚠️ Unaudited |
| PancakeV3PoolDeployer | core_logic | ethereum | n/a | [`0x1a4b30...07c422`](./contracts/ethereum-1/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x5ba546...a53802`](./contracts/ethereum-1/0x5ba546a342bbee029a7729a7e8e0adb844a53802/); unichain `0xa0e595...d10291` | ⚠️ Unaudited |
| QuackOFT | unknown | mode | n/a | [`0xd2ecb0...973c35`](./contracts/mode-34443/0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35/) | ⚠️ Unaudited |
| QuoterV2 | periphery | unichain | n/a | 2 deployments: ethereum `0xef9ed1...7576ea`; unichain [`0x4f205d...3ff9b7`](./contracts/unichain-130/0x4f205d69834f9b101b9289f7affac9b77b3ff9b7/) | ⚠️ Unaudited |
| SmartRouter | adapter | base | n/a | 5 deployments: optimism `0xd1575b...a670cc`; unichain `0x241703...ad7f9b`; base [`0x195fbc...4f34f7`](./contracts/base-8453/0x195fbc5b8fbd5ac739c1ba57d4ef6d5a704f34f7/); base `0x6f887c...28090f`; blast `0xe5535d...708159` | ⚠️ Unaudited |
| SmartRouterHelper | adapter | unichain | n/a | [`0x3d237a...a48870`](./contracts/unichain-130/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/) | ⚠️ Unaudited |
| SmartStakingNFTPoolV1 | core_logic | optimism | n/a | 3 deployments: optimism [`0x50eef1...554046`](./contracts/optimism-10/0x50eef105100209976392c743d3185e256d554046/); base `0x607c0a...ae6772`; base `0xc02ee6...06738f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DackieSuperchain | unknown | unichain | n/a | 2 deployments: unichain [`0x73326b...70aaf4`](./contracts/unichain-130/0x73326b4d0225c429bed050c11c4422d91470aaf4/); base [`0x73326b...70aaf4`](./contracts/base-8453/0x73326b4d0225c429bed050c11c4422d91470aaf4/) | ⚠️ Unaudited (bytecode match) |
| DackieUSDOFT | unknown | optimism | n/a | 5 deployments: optimism [`0x1d01aa...e342c5`](./contracts/optimism-10/0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5/); mode `0xfdf91d...914c2f`; arbitrum `0x711b77...37be11`; linea `0xfd7353...92a374`; blast `0xf53c57...62733e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd592e2...99708e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2890e...d83b6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf74b82...3029e5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1a4b30...07c422` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a961d...19d72f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b053d...09d0b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x213c18...2ca8dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x261565...973e36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x306374...18ba14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a5533...d02d68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x578e36...b3c787` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6292be...3d0447` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a6fb3...743898` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775ffc...4e4bc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81b421...1207c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f0e08...05b2a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa824fa...95a1d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb63dcb...031a42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc86103...28e5ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd19e9d...a92b2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2971e...80bdb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3cd1d...2f1ad1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddea26...a5b102` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe26a41...8e2a65` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2b349...46d636` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf870cb...0ab58c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe0398...af3868` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d1b82...715678` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x537d0d...7e5ce2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DackieSwap-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DackieSwap-v1.0.pdf) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0c6a50...789c9d`](./contracts/base-8453/0x0c6a5070c9ec83399770f20685add0754e789c9d/) | QuackToken | token | $586,700.00 | Verified native implementation with $586,700.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc2bc7a...4d617b`](./contracts/base-8453/0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b/) | DackieToken | token | $48,159.99 | Verified native implementation with $48,159.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4ad387...388b05`](./contracts/base-8453/0x4ad387bcb03b92a6e22a72391cc37493fc388b05/) | DackiePool | core_logic | $5,729.14 | Verified native implementation with $5,729.14 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x645d25...a5fc98`](./contracts/base-8453/0x645d25cc63578096edbe941cb9ee56d20da5fc98/) | DackieVault | core_logic | $51.77 | Verified native implementation with $51.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x136428...057b98`](./contracts/base-8453/0x13642860ba5649d74588c7c0b519af9fe1057b98/) | SmartStakingPoolV1 | core_logic | $35.86 | Verified native implementation with $35.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5cb903...8b5b95`](./contracts/base-8453/0x5cb90378614631b3d1baceddce6bc09e508b5b95/) | DackieFlexiblePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d237a...a48870`](./contracts/ethereum-1/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/) | DackieFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x507940...de2f5c`](./contracts/linea-59144/0x507940c2469e6e3b33032f1d4ff8d123bdde2f5c/) | DackieOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x241703...ad7f9b`](./contracts/ethereum-1/0x2417036313b66eb0495f573f11142efdaead7f9b/) | DackieRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03d573...b8050e`](./contracts/base-8453/0x03d573c792a074ad71ddd9cd04ed93bac0b8050e/) | DackieTokenMigrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x613ce2...e4a71d`](./contracts/base-8453/0x613ce28076289de255f1a6487437f03e37e4a71d/) | DackieUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1d01aa...e342c5`](./contracts/optimism-10/0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5/) | DackieUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xb90109...e82f39`](./contracts/unichain-130/0xb9010964301326160173da694c0697a2fce82f39/) | DackieV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xc6f396...be54c7`](./contracts/unichain-130/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/) | DackieV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a911c...a4005c`](./contracts/base-8453/0x4a911c7c98088a3e762273c9e962bf7456a4005c/) | DackieVaultReward | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78f814...8a48a0`](./contracts/base-8453/0x78f8142ea59ae08d81bc80b2fd415405628a48a0/) | KingDackieNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3905f0...6b94ad`](./contracts/base-8453/0x3905f0c724a284095353befafd932204ee6b94ad/) | MasterChefDACKIE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5083e8...e67fa1`](./contracts/base-8453/0x5083e8d08e1e154e1465b1f044ba3a524de67fa1/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6238e3...ac4f5b`](./contracts/base-8453/0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b/) | MasterChefV3KeeperV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcfb05a...906b77`](./contracts/base-8453/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x11ca45...35290d`](./contracts/blast-81457/0x11ca45eb43517d4a84b79671104654954535290d/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd2ecb0...973c35`](./contracts/mode-34443/0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35/) | QuackOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4f205d...3ff9b7`](./contracts/unichain-130/0x4f205d69834f9b101b9289f7affac9b77b3ff9b7/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x195fbc...4f34f7`](./contracts/base-8453/0x195fbc5b8fbd5ac739c1ba57d4ef6d5a704f34f7/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x3d237a...a48870`](./contracts/unichain-130/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/) | SmartRouterHelper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x50eef1...554046`](./contracts/optimism-10/0x50eef105100209976392c743d3185e256d554046/) | SmartStakingNFTPoolV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=24

Fork inheritance lineage and inherited audits are included when available.
