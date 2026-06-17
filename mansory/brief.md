# Agentic Audit Brief: Mansory

## Project Overview

- Project: Mansory (`mansory`)
- Website: [https://www.mansory.com/](https://www.mansory.com/)
- Lifecycle: active (Tier 0, 81% below peak)
- Generated: 2026-06-17T07:00:36.878Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $6,179,583.00
- On-chain TVL (included contracts): $170,021.61
- TVL by chain: Bsc $170,021.61

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Mansory / MNSRY should be described as a Mansory-branded utility or RWA-style token associated with luxury automotive benefits, VIP events, NFT-authenticated assets, and lifestyle rewards, consistent with the current DefiLlama framing and homepage evidence. The public homepage does not substantiate broad protocol-level claims that Mansory is primarily a BSC asset-tokenization, lottery, or staking protocol. Separately, the observed BSC contract surface includes components named MyOFTUpgradeable, IpfsProofLotteryUpgradeable, NftTierStaking variants, and URI-builder/helper bytecode, indicating OFT, lottery, staking, and metadata-related smart-contract components where supported by contract names. The project should not be presented as BSC-only: DefiLlama tracks Mansory on both Binance/BSC and Solana, and any BSC-only contract review should explicitly disclose that Solana coverage is excluded.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 6 inactive, 5 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PancakeV3Pool | core_logic | bsc | n/a | [`0x4700ac...f3649a`](./contracts/bsc-56/0x4700ac98ee76e0d63598e2bfc24a2646fdf3649a/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
