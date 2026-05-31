# Agentic Audit Brief: HELIX Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: HELIX Finance (`helix-finance`)
- Website: [https://helixfinance.io/](https://helixfinance.io/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-31T08:21:51.105Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 9 unique implementations (14 raw deployments)
- DeFi Llama TVL: $10,995,873.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HELIX Finance is a protocol for real-world asset (RWA) lending, enabling users to borrow and lend against tokenized real-world assets. It provides a factory for creating deal-specific lending agreements and manages deal tokens, configurations, and identity verification.

### Architecture

All contracts are part of a single product family deployed by the same deployer. The HelixFactory creates deal instances using implementations from HelixDealImplementationRepository, while HelixDealTokens handles tokenization, HelixUniqueIdentity manages KYC, and HelixConfig provides global settings.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 14
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HelixAuthoriser | unknown | ethereum | [`0x3e3386...61fc49`](./contracts/ethereum-1/0x3e33865107d728336563c9a9d479173fcf61fc49/) | ⚠️ Unaudited |
| HelixConfig | governance | ethereum | 2 deployments: ethereum [`0x8c83f9...a3dd4a`](./contracts/ethereum-1/0x8c83f98953f5035cbef60d2da964f8111fa3dd4a/); ethereum `0xb7c0d0...8e0ba8` | ⚠️ Unaudited |
| HelixDeal | unknown | ethereum | [`0xcef1ce...3e62c6`](./contracts/ethereum-1/0xcef1ce6b10886a8e7698f51bad265c35883e62c6/) | ⚠️ Unaudited |
| HelixDealImplementationRepository | registry | ethereum | 2 deployments: ethereum [`0x4512ab...5df999`](./contracts/ethereum-1/0x4512abc6384431d107d264dc2c8cfe1c475df999/); ethereum `0xba665a...0e3e39` | ⚠️ Unaudited |
| HelixDealTokens | token | ethereum | 2 deployments: ethereum [`0x1c2274...bab4dc`](./contracts/ethereum-1/0x1c227497dea66f59811db6ee3a3bcfe148bab4dc/); ethereum `0x9279a5...e1eed2` | ⚠️ Unaudited |
| HelixFactory | registry | ethereum | 2 deployments: ethereum [`0x274515...a4cc36`](./contracts/ethereum-1/0x274515b23b9c4dd616c88a6c5d715f5c88a4cc36/); ethereum `0x5ab7ab...d33632` | ⚠️ Unaudited |
| HelixUniqueIdentity | unknown | ethereum | 2 deployments: ethereum [`0x67c3a8...79d740`](./contracts/ethereum-1/0x67c3a8ecd374b46d335105323f5888f70679d740/); ethereum `0x6b79b0...632315` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x7ce464...c64e3b`](./contracts/ethereum-1/0x7ce4646402d94f6006af0c7c54ce70fb7dc64e3b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x42012e...153b95`](./contracts/ethereum-1/0x42012e315c70af46585581803066243f95153b95/) | ⚠️ Unaudited |

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
| ethereum | [`0x3e3386...61fc49`](./contracts/ethereum-1/0x3e33865107d728336563c9a9d479173fcf61fc49/) | HelixAuthoriser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c83f9...a3dd4a`](./contracts/ethereum-1/0x8c83f98953f5035cbef60d2da964f8111fa3dd4a/) | HelixConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcef1ce...3e62c6`](./contracts/ethereum-1/0xcef1ce6b10886a8e7698f51bad265c35883e62c6/) | HelixDeal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
