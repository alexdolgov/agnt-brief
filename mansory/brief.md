# Agentic Audit Brief: Mansory

## Project Overview

- Project: Mansory (`mansory`)
- Website: [https://www.mansory.com/](https://www.mansory.com/)
- Lifecycle: active (Tier 0, 80.9% below peak)
- Generated: 2026-06-13T02:06:31.986Z
- Pipeline run: v2-pipeline-2026-06-13-546062-d5d2
- Chains: bsc
- Contract surface: 6 unique implementations (12 raw deployments)
- DeFi Llama TVL: $6,179,583.00
- On-chain TVL (included contracts): $170,021.61
- TVL by chain: Bsc $170,021.61

## Project Description

Mansory / MNSRY should be described as a Mansory-branded utility or RWA-style token associated with luxury automotive benefits, VIP events, NFT-authenticated assets, and lifestyle rewards, consistent with the current DefiLlama framing and homepage evidence. The public homepage does not substantiate broad protocol-level claims that Mansory is primarily a BSC asset-tokenization, lottery, or staking protocol. Separately, the observed BSC contract surface includes components named MyOFTUpgradeable, IpfsProofLotteryUpgradeable, NftTierStaking variants, and URI-builder/helper bytecode, indicating OFT, lottery, staking, and metadata-related smart-contract components where supported by contract names. The project should not be presented as BSC-only: DefiLlama tracks Mansory on both Binance/BSC and Solana, and any BSC-only contract review should explicitly disclose that Solana coverage is excluded.

### Architecture

All contracts are deployed by the same deployer and share the TransparentUpgradeableProxy pattern, indicating a unified upgradeable infrastructure. The OFT token likely serves as the core asset used in the lottery and staking contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 12
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $170,021.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PancakeV3Pool | core_logic | bsc | [`0x4700ac...f3649a`](./contracts/bsc-56/0x4700ac98ee76e0d63598e2bfc24a2646fdf3649a/) | ⚠️ Unaudited |
| NftTierStakingUpgradeable | token | bsc | 4 deployments: bsc [`0x2bd867...2a54c2`](./contracts/bsc-56/0x2bd86707412fadc3b453558ac32013e7d82a54c2/); bsc `0x88fa77...31b7a8`; bsc `0xa033ab...b7bde3`; bsc `0xd6dd93...039f2a` | ⚠️ Unaudited |
| IpfsProofLotteryUpgradeable | unknown | bsc | [`0xbc7dee...462d38`](./contracts/bsc-56/0xbc7dee0f48ca7aa4e9b7603329b0fc4b5e462d38/) | ⚠️ Unaudited |
| MyOFTUpgradeable | unknown | bsc | 2 deployments: bsc [`0x0fcfe3...8f9255`](./contracts/bsc-56/0x0fcfe33b46e5b21e5e96b722d4c85510198f9255/); bsc `0x1ed605...8f1a0e` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 2 deployments: bsc [`0x023820...85d489`](./contracts/bsc-56/0x0238200679ce049f2dc3c335ae817d594885d489/); bsc `0xdf07c9...56b0e8` | ⚠️ Unaudited |
| TierStakingTokenUriBuilder | token | bsc | 2 deployments: bsc [`0x88c5b9...f626e7`](./contracts/bsc-56/0x88c5b935c63a047898dbbebc6af294cc7df626e7/); bsc `0xc5bd1f...6e8ddc` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2bd867...2a54c2`](./contracts/bsc-56/0x2bd86707412fadc3b453558ac32013e7d82a54c2/) | NftTierStakingUpgradeable | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88c5b9...f626e7`](./contracts/bsc-56/0x88c5b935c63a047898dbbebc6af294cc7df626e7/) | TierStakingTokenUriBuilder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
