# Agentic Audit Brief: Ocean Point

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Ocean Point (`ocean-point`)
- Website: [https://app.oceanpoint.fi/](https://app.oceanpoint.fi/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-31T10:07:18.671Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 40 unique implementations (56 raw deployments)
- DeFi Llama TVL: $1,135,721.93
- On-chain TVL (included contracts): $1,078,117.52
- TVL by chain: Ethereum $1,078,117.52

## Project Description

Ocean Point is a DeFi protocol that enables users to stake BST tokens and liquidity pool tokens to earn rewards, and to participate in tokenized real estate through property registries. It combines yield farming with real-world asset tokenization.

### Architecture

Staking contracts use the BST token and LP tokens from the Uniswap pair, while property registries interact with marketplace pools for trading tokenized properties. Revenue distribution likely collects fees from staking and marketplace activities and distributes them to stakeholders.

## Audit Coverage Summary

- Verified implementations audited: 0/27 (0.0%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 40
- Raw deployments: 56
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,078,117.52
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,078,117.52 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BlocksquareToken | token | ethereum | [`0x509a38...7c7f4a`](./contracts/ethereum-1/0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a/) | ⚠️ Unaudited |
| BSPTStaking | unknown | ethereum | 3 deployments: ethereum [`0x15a63d...60997f`](./contracts/ethereum-1/0x15a63d3b8707f215a9ff97ea5e5f79b28760997f/); ethereum `0x57ba88...ecc73e`; ethereum `0x5d2c0c...c79088` | ⚠️ Unaudited |
| BSPTStakingV04 | unknown | ethereum | 2 deployments: ethereum [`0x132996...b55451`](./contracts/ethereum-1/0x13299657e662894b933bb3ee73f7f8da94b55451/); ethereum `0x4cbd2c...b319bf` | ⚠️ Unaudited |
| BSTRewardVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x5c9f20...cf05d8`](./contracts/ethereum-1/0x5c9f20647026d7ff918458be2ee12f42cdcf05d8/); ethereum `0xbd37dd...10060e` | ⚠️ Unaudited |
| CryptosnacksBSPTStakingV04 | unknown | ethereum | 3 deployments: ethereum [`0x6f5ecf...f34b07`](./contracts/ethereum-1/0x6f5ecf8a8dadaac3c8440a080c9271f845f34b07/); ethereum `0x7669b9...137ead`; ethereum `0xb0131b...d762de` | ⚠️ Unaudited |
| CryptosnacksOceanPropertyRegistryV04 | registry | ethereum | 3 deployments: ethereum [`0x05f5b7...dd0acc`](./contracts/ethereum-1/0x05f5b75d80291910a54b65aea9b45f549cdd0acc/); ethereum `0x7a5a43...938730`; ethereum `0xcd08c3...cecec8` | ⚠️ Unaudited |
| DataStorageProxy | unknown | ethereum | [`0x8c2a85...6197b5`](./contracts/ethereum-1/0x8c2a858fe7b2bf155247c7f528c6ca7b186197b5/) | ⚠️ Unaudited |
| FactoryData | registry | ethereum | [`0x146d58...9c5a05`](./contracts/ethereum-1/0x146d589cfe136644bdf4f1958452b5a4bb9c5a05/) | ⚠️ Unaudited |
| FixedPriceInitialOffering | operational_periphery | ethereum | [`0x25862c...08de78`](./contracts/ethereum-1/0x25862c4fb4ce9d6ff9b463488e0ec656fa08de78/) | ⚠️ Unaudited |
| LandhiveBSPTStakingV04 | unknown | ethereum | 2 deployments: ethereum [`0x86d133...13ee30`](./contracts/ethereum-1/0x86d13326fabb4f45a5e9a5655909f0ca1a13ee30/); ethereum `0xfc7cd2...ecdebf` | ⚠️ Unaudited |
| LandhiveOceanPropertyRegistryV04 | registry | ethereum | 3 deployments: ethereum [`0x3c18b3...6a71c0`](./contracts/ethereum-1/0x3c18b35e8e919224ea4099acc0d280eda76a71c0/); ethereum `0x59a401...c697de`; ethereum `0x6b1ab6...fc845a` | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | 2 deployments: ethereum [`0x0f2e20...65b33d`](./contracts/ethereum-1/0x0f2e209f67c8900005f71a833c484221f965b33d/); ethereum `0x1802f6...48daec` | ⚠️ Unaudited |
| MarketplacePool | core_logic | ethereum | [`0x770463...c80cf7`](./contracts/ethereum-1/0x77046396ff56a0ea858637ded142e721f4c80cf7/) | ⚠️ Unaudited |
| MarketplacePoolProxyFactory | registry | ethereum | [`0x178871...12f001`](./contracts/ethereum-1/0x17887106a14f38bf10512565bdbb5bd7ac12f001/) | ⚠️ Unaudited |
| MultipleVesting | operational_periphery | ethereum | [`0xf62e5c...ed3476`](./contracts/ethereum-1/0xf62e5cb35ee81b3c259fb002d61d7c7733ed3476/) | ⚠️ Unaudited |
| OceanPropertyRegistry | registry | ethereum | 2 deployments: ethereum [`0x14db5b...f5a335`](./contracts/ethereum-1/0x14db5b377d13ec9f9e7747f42d71634b5ef5a335/); ethereum `0xf31ce8...382936` | ⚠️ Unaudited |
| OceanPropertyRegistryV04 | registry | ethereum | 2 deployments: ethereum [`0xaeea40...e4deff`](./contracts/ethereum-1/0xaeea40bb8393174459c4016bce2625076fe4deff/); ethereum `0xd0a2b9...ad8f10` | ⚠️ Unaudited |
| OceanStaking | unknown | ethereum | [`0x6f1e92...9f7f8a`](./contracts/ethereum-1/0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a/) | ⚠️ Unaudited |
| PropertyFactory | registry | ethereum | [`0x1ae91a...7e6685`](./contracts/ethereum-1/0x1ae91a263a690bf2129cf0b3acac92bbb67e6685/) | ⚠️ Unaudited |
| PropertyRegistry | registry | ethereum | [`0x05325c...29267b`](./contracts/ethereum-1/0x05325c1ab1440df7214db38f676f95999729267b/) | ⚠️ Unaudited |
| PropToken | token | ethereum | [`0x947348...e61a1d`](./contracts/ethereum-1/0x9473481877cb241b0c8f647bf841973196e61a1d/) | ⚠️ Unaudited |
| PropTokenRENT | token | ethereum | [`0x73658d...ab984f`](./contracts/ethereum-1/0x73658d0f69c4327363d889276bced7e20dab984f/) | ⚠️ Unaudited |
| RevenueDistribution | unknown | ethereum | 3 deployments: ethereum [`0x8bb2c9...55dd13`](./contracts/ethereum-1/0x8bb2c977c129bdc44a830bfe71e1d0d46855dd13/); ethereum `0xbcb175...2da8cb`; ethereum `0xe1b9a8...f27906` | ⚠️ Unaudited |
| Roles | unknown | ethereum | [`0xcddd81...953ec4`](./contracts/ethereum-1/0xcddd81a19cfd74281c7c5f83415e195b44953ec4/) | ⚠️ Unaudited |
| TokenGeneration | token | ethereum | [`0xc8af9a...b5a72f`](./contracts/ethereum-1/0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x0e85fb...df51a6`](./contracts/ethereum-1/0x0e85fb1be698e777f2185350b4a52e5ee8df51a6/) | ⚠️ Unaudited |
| Users | unknown | ethereum | [`0x13344d...1975f7`](./contracts/ethereum-1/0x13344d0cb96b17df81c4171ce47e14ff6c1975f7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xc2a056dc7956ad77d0602cd9f2eaf8ba476f6a9e) | proxy | ethereum | `0xe81807...3f49bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x05e092...c8fb2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38da45...0bc8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66be09...481b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6cea8f...76f2f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7000ae...f48f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa273ef...48eca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac562e...b3826c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2a056...6f6a9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb641f...38550a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0b7cb...391917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0ee00...45e8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe98af4...a84b06` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" fullWidth="true" %}](https://hacken.io/audits/blocksquare) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x509a38...7c7f4a`](./contracts/ethereum-1/0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a/) | BlocksquareToken | token | $1,078,117.52 | Verified native implementation with $1,078,117.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15a63d...60997f`](./contracts/ethereum-1/0x15a63d3b8707f215a9ff97ea5e5f79b28760997f/) | BSPTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x132996...b55451`](./contracts/ethereum-1/0x13299657e662894b933bb3ee73f7f8da94b55451/) | BSPTStakingV04 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c9f20...cf05d8`](./contracts/ethereum-1/0x5c9f20647026d7ff918458be2ee12f42cdcf05d8/) | BSTRewardVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5ecf...f34b07`](./contracts/ethereum-1/0x6f5ecf8a8dadaac3c8440a080c9271f845f34b07/) | CryptosnacksBSPTStakingV04 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05f5b7...dd0acc`](./contracts/ethereum-1/0x05f5b75d80291910a54b65aea9b45f549cdd0acc/) | CryptosnacksOceanPropertyRegistryV04 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c2a85...6197b5`](./contracts/ethereum-1/0x8c2a858fe7b2bf155247c7f528c6ca7b186197b5/) | DataStorageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x146d58...9c5a05`](./contracts/ethereum-1/0x146d589cfe136644bdf4f1958452b5a4bb9c5a05/) | FactoryData | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25862c...08de78`](./contracts/ethereum-1/0x25862c4fb4ce9d6ff9b463488e0ec656fa08de78/) | FixedPriceInitialOffering | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86d133...13ee30`](./contracts/ethereum-1/0x86d13326fabb4f45a5e9a5655909f0ca1a13ee30/) | LandhiveBSPTStakingV04 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c18b3...6a71c0`](./contracts/ethereum-1/0x3c18b35e8e919224ea4099acc0d280eda76a71c0/) | LandhiveOceanPropertyRegistryV04 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2e20...65b33d`](./contracts/ethereum-1/0x0f2e209f67c8900005f71a833c484221f965b33d/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x770463...c80cf7`](./contracts/ethereum-1/0x77046396ff56a0ea858637ded142e721f4c80cf7/) | MarketplacePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178871...12f001`](./contracts/ethereum-1/0x17887106a14f38bf10512565bdbb5bd7ac12f001/) | MarketplacePoolProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf62e5c...ed3476`](./contracts/ethereum-1/0xf62e5cb35ee81b3c259fb002d61d7c7733ed3476/) | MultipleVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14db5b...f5a335`](./contracts/ethereum-1/0x14db5b377d13ec9f9e7747f42d71634b5ef5a335/) | OceanPropertyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaeea40...e4deff`](./contracts/ethereum-1/0xaeea40bb8393174459c4016bce2625076fe4deff/) | OceanPropertyRegistryV04 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f1e92...9f7f8a`](./contracts/ethereum-1/0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a/) | OceanStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ae91a...7e6685`](./contracts/ethereum-1/0x1ae91a263a690bf2129cf0b3acac92bbb67e6685/) | PropertyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05325c...29267b`](./contracts/ethereum-1/0x05325c1ab1440df7214db38f676f95999729267b/) | PropertyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x947348...e61a1d`](./contracts/ethereum-1/0x9473481877cb241b0c8f647bf841973196e61a1d/) | PropToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73658d...ab984f`](./contracts/ethereum-1/0x73658d0f69c4327363d889276bced7e20dab984f/) | PropTokenRENT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bb2c9...55dd13`](./contracts/ethereum-1/0x8bb2c977c129bdc44a830bfe71e1d0d46855dd13/) | RevenueDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcddd81...953ec4`](./contracts/ethereum-1/0xcddd81a19cfd74281c7c5f83415e195b44953ec4/) | Roles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8af9a...b5a72f`](./contracts/ethereum-1/0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f/) | TokenGeneration | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13344d...1975f7`](./contracts/ethereum-1/0x13344d0cb96b17df81c4171ce47e14ff6c1975f7/) | Users | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3225] {% embed url="<>" fullWidth="true" %}

Fork inheritance lineage and inherited audits are included when available.
