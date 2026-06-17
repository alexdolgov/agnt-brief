# Agentic Audit Brief: BabySwap

## Project Overview

- Project: BabySwap (`babyswap`)
- Lifecycle: active (Tier 0, 99.6% below peak)
- Generated: 2026-06-17T07:00:49.064Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 24 unique implementations (27 raw deployments)
- DeFi Llama TVL: $1,280,987.19
- On-chain TVL (included contracts): $234,964.17
- TVL by chain: Bsc $234,964.17

## Project Description

BabySwap is a BNB Chain AMM and NFT DEX ecosystem for swaps, liquidity provision, and emerging project markets. Its broader contract surface includes the BABY token, router infrastructure, NFT and marketplace components, farming, launchpad, and Wonderland-related modules.

### Architecture

The BabySmartRouter proxy delegates to the BabyNormalRouter implementation to handle swap logic, while BabyToken serves as the protocol's native asset, likely used for fees or rewards. All contracts are deployed from a single deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 194; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 165 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 11/56.

## Audit Coverage Summary

- Verified implementations audited: 1/23 (4.3%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 24
- Raw deployments: 27
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $234,964.17
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 4.3% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabyWonderland | unknown | bsc | n/a | [`0x1fe7f2...1dd68d`](./contracts/bsc-56/0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabyToken | token | bsc | n/a | [`0x53e562...3d2657`](./contracts/bsc-56/0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657/) | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | bsc | n/a | [`0xad7a58...94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | ⚠️ Unaudited |
| AutoBabyPool | core_logic | bsc | n/a | [`0x3e1ead...e94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | ⚠️ Unaudited |
| NFTFarm | token | bsc | n/a | [`0xa28072...363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | ⚠️ Unaudited |
| NFTFarmV4 | token | bsc | n/a | [`0x391079...aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | ⚠️ Unaudited |
| NFTFarmV5 | token | bsc | n/a | 2 deployments: bsc [`0x2f5822...3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/); bsc `0xadca12...798ea1` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | bsc | n/a | [`0x3b6279...2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | ⚠️ Unaudited |
| BabyERC721 | token | bsc | n/a | 2 deployments: bsc [`0x103aa3...4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/); bsc `0x9f0225...fd91a8` | ⚠️ Unaudited |
| BabyFactory | registry | bsc | n/a | [`0x86407b...f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/) | ⚠️ Unaudited |
| BabyFarmV2 | unknown | bsc | n/a | [`0xcb5946...0842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | ⚠️ Unaudited |
| BabyProxyOFT | unknown | bsc | n/a | [`0x000c86...c28d43`](./contracts/bsc-56/0x000c86bb08f24261453a289fa3af839e23c28d43/) | ⚠️ Unaudited |
| BabyRouter | adapter | bsc | n/a | [`0x325e34...6b38bd`](./contracts/bsc-56/0x325e343f1de602396e256b67efd1f61c3a6b38bd/) | ⚠️ Unaudited |
| BabySBTs | unknown | bsc | n/a | [`0x8c2710...76fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | ⚠️ Unaudited |
| BabySwapFeeV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x6bef42...3d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/); bsc `0x90457d...09c4f0` | ⚠️ Unaudited |
| MarketFeeManager | governance | bsc | n/a | [`0xb7949a...a791d0`](./contracts/bsc-56/0xb7949aaf569da049b3f140044f9025116ba791d0/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0xdfaa0e...0ac730`](./contracts/bsc-56/0xdfaa0e08e357db0153927c7eabb492d1f60ac730/) | ⚠️ Unaudited |
| RewardClaim | unknown | bsc | n/a | [`0xf28298...1f856d`](./contracts/bsc-56/0xf282988582538e58332a78edc98ea304921f856d/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x930c40...8da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | ⚠️ Unaudited |
| VBabyDispatch | unknown | bsc | n/a | [`0xc501a6...5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | ⚠️ Unaudited |
| VBabyDonateSchedule | unknown | bsc | n/a | [`0x740ce9...9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | ⚠️ Unaudited |
| VBabyFarmerV2 | unknown | bsc | n/a | [`0x2d2176...86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | ⚠️ Unaudited |
| vBABYToken | token | bsc | n/a | [`0x051344...e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x3325fb...1cc1c8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/babyswap) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x53e562...3d2657`](./contracts/bsc-56/0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657/) | BabyToken | token | $213,478.08 | Verified native implementation with $213,478.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad7a58...94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | BabyPoolV2 | core_logic | $19,234.89 | Verified native implementation with $19,234.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e1ead...e94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | AutoBabyPool | core_logic | $2,250.45 | Verified native implementation with $2,250.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa28072...363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | NFTFarm | token | $0.56 | Verified native implementation with $0.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391079...aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | NFTFarmV4 | token | $0.18 | Verified native implementation with $0.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f5822...3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/) | NFTFarmV5 | token | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b6279...2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103aa3...4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/) | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86407b...f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/) | BabyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb5946...0842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x325e34...6b38bd`](./contracts/bsc-56/0x325e343f1de602396e256b67efd1f61c3a6b38bd/) | BabyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c2710...76fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6bef42...3d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/) | BabySwapFeeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb7949a...a791d0`](./contracts/bsc-56/0xb7949aaf569da049b3f140044f9025116ba791d0/) | MarketFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdfaa0e...0ac730`](./contracts/bsc-56/0xdfaa0e08e357db0153927c7eabb492d1f60ac730/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf28298...1f856d`](./contracts/bsc-56/0xf282988582538e58332a78edc98ea304921f856d/) | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x930c40...8da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | SyrupBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc501a6...5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | VBabyDispatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x740ce9...9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | VBabyDonateSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d2176...86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | VBabyFarmerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x051344...e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
