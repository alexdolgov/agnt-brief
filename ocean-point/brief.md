# Agentic Audit Brief: Ocean Point

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Ocean Point (`ocean-point`)
- Website: [https://app.oceanpoint.fi/](https://app.oceanpoint.fi/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:40.228Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $948,059.16
- On-chain TVL (included contracts): $1,078,117.52
- TVL by chain: Ethereum $1,078,117.52

## Project Description

Ocean Point is a Blocksquare DeFi/liquidity layer for the BST ecosystem, positioning itself as a liquidity engine with staking and pool2-style liquidity participation around BST. It is also associated with tokenized real estate/RWA infrastructure and USD-correlating stablecoin positioning, but any marketplace-trading or fee-distribution claims should be treated as unverified unless supported by project documentation or contract-level analysis.

### Architecture

Staking contracts use the BST token and LP tokens from the Uniswap pair, while property registries interact with marketplace pools for trading tokenized properties. Revenue distribution likely collects fees from staking and marketplace activities and distributes them to stakeholders.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 19 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 1/13 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlocksquareToken | token | ethereum | n/a | [`0x509a38...7c7f4a`](./contracts/ethereum-1/0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a/) | ⚠️ Unaudited |
| CertifiedPartners | unknown | ethereum | n/a | [`0x8dbb99...78cdd3`](./contracts/ethereum-1/0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-24467 | [`0xfb531d...29ea8a`](./contracts/ethereum-1/0xfb531d5602fc0953be047605c77a7d289729ea8a/) | ⚠️ Unaudited |
| MarketplacePoolProxyFactory | registry | ethereum | n/a | [`0x178871...12f001`](./contracts/ethereum-1/0x17887106a14f38bf10512565bdbb5bd7ac12f001/) | ⚠️ Unaudited |
| OceanStaking | unknown | ethereum | n/a | [`0x6f1e92...9f7f8a`](./contracts/ethereum-1/0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a/) | ⚠️ Unaudited |
| PropertyFactory | registry | ethereum | n/a | [`0x1ae91a...7e6685`](./contracts/ethereum-1/0x1ae91a263a690bf2129cf0b3acac92bbb67e6685/) | ⚠️ Unaudited |
| PropertyRegistry | registry | ethereum | n/a | [`0x05325c...29267b`](./contracts/ethereum-1/0x05325c1ab1440df7214db38f676f95999729267b/) | ⚠️ Unaudited |
| TokenGeneration | token | ethereum | n/a | [`0xc8af9a...b5a72f`](./contracts/ethereum-1/0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x0e85fb...df51a6`](./contracts/ethereum-1/0x0e85fb1be698e777f2185350b4a52e5ee8df51a6/) | ⚠️ Unaudited |
| Users | unknown | ethereum | n/a | [`0x13344d...1975f7`](./contracts/ethereum-1/0x13344d0cb96b17df81c4171ce47e14ff6c1975f7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" fullWidth="true" %}](https://hacken.io/audits/blocksquare) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8dbb99...78cdd3`](./contracts/ethereum-1/0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3/) | CertifiedPartners | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178871...12f001`](./contracts/ethereum-1/0x17887106a14f38bf10512565bdbb5bd7ac12f001/) | MarketplacePoolProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f1e92...9f7f8a`](./contracts/ethereum-1/0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a/) | OceanStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ae91a...7e6685`](./contracts/ethereum-1/0x1ae91a263a690bf2129cf0b3acac92bbb67e6685/) | PropertyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05325c...29267b`](./contracts/ethereum-1/0x05325c1ab1440df7214db38f676f95999729267b/) | PropertyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8af9a...b5a72f`](./contracts/ethereum-1/0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f/) | TokenGeneration | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13344d...1975f7`](./contracts/ethereum-1/0x13344d0cb96b17df81c4171ce47e14ff6c1975f7/) | Users | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

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
