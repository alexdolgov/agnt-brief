# Agentic Audit Brief: BakerySwap

⚠️ Lifecycle status: DECLINING - TVL changed 7.5% over 90 days

## Project Overview

- Project: BakerySwap (`bakeryswap`)
- Lifecycle: declining (Tier 0, 98.4% below peak)
- Generated: 2026-06-17T07:00:50.565Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 12 unique implementations (17 raw deployments)
- DeFi Llama TVL: $2,886,422.27
- On-chain TVL (included contracts): $606,613.65
- TVL by chain: Bsc $606,613.65

## Project Description

BakerySwap is a decentralized exchange and NFT platform on BSC, offering token swaps, liquidity provision, yield farming, and an NFT marketplace with staking and mystery box features.

### Architecture

All contracts share the BakeryToken (BAKE) as the core incentive and governance token, with the BakerySwapFactory serving as the central registry for liquidity pools. The proxy contracts provide upgradeability for various modules like NFT exchange, staking, and IDO, all integrated under the BakerySwap ecosystem.

## Contract Surface Quality

- Indexed contracts: 193; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 130 inactive, 46 singleton, 0 uninitialized.
- Deployment units: 0/23 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/28.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 17
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $606,613.65
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $606,613.65 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BakeryToken | token | bsc | n/a | [`0xe02df9...8902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | ⚠️ Unaudited |
| ArtworkNFT | token | bsc | n/a | [`0x5bc94e...04e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ⚠️ Unaudited |
| BakeryMaster | unknown | bsc | n/a | [`0x20ec29...e5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | ⚠️ Unaudited |
| BakerySwapFactory | registry | bsc | n/a | [`0x01bf7c...ae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | ⚠️ Unaudited |
| BakerySwapPair | unknown | bsc | n/a | 6 deployments: bsc [`0x2fc2ad...48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/); bsc `0x559e3d...82188b`; bsc `0x5fef67...745d86`; bsc `0x6e218e...fce50a`; bsc `0xc2eed0...9ae492`; bsc `0xfb72d7...97d0e3` | ⚠️ Unaudited |
| BakerySwapRouter | adapter | bsc | n/a | [`0xcde540...3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | ⚠️ Unaudited |
| CAR | unknown | bsc | n/a | [`0x176a25...40264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | ⚠️ Unaudited |
| CarNFT | token | bsc | n/a | [`0x1d09fc...b04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | ⚠️ Unaudited |
| CommonMaster | unknown | bsc | n/a | [`0x6a8dbb...494f81`](./contracts/bsc-56/0x6a8dbbfbb5a57d07d14e63e757fb80b4a7494f81/) | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | token | bsc | n/a | [`0x99cc4e...91b98d`](./contracts/bsc-56/0x99cc4ec3a73b7191e5ad50811de3ff408d91b98d/) | ⚠️ Unaudited |
| MuskDogeNFT | token | bsc | n/a | [`0x1233b9...0cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | ⚠️ Unaudited |
| OneInchBAKENFT | token | bsc | n/a | [`0x2b8439...cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/bakeryswap) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xe02df9...8902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | BakeryToken | token | $606,613.65 | Verified native implementation with $606,613.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bc94e...04e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ArtworkNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20ec29...e5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | BakeryMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01bf7c...ae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | BakerySwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fc2ad...48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/) | BakerySwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcde540...3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | BakerySwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x176a25...40264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | CAR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d09fc...b04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | CarNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a8dbb...494f81`](./contracts/bsc-56/0x6a8dbbfbb5a57d07d14e63e757fb80b4a7494f81/) | CommonMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99cc4e...91b98d`](./contracts/bsc-56/0x99cc4ec3a73b7191e5ad50811de3ff408d91b98d/) | CommonStakeERC721EarnBake | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1233b9...0cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | MuskDogeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b8439...cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | OneInchBAKENFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2736] DL audit link

Fork inheritance lineage and inherited audits are included when available.
