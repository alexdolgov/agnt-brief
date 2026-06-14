# Agentic Audit Brief: Meeds Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Meeds Finance (`meeds-finance`)
- Website: [https://www.meeds.io/](https://www.meeds.io/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-14T00:28:14.426Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 5 unique implementations (10 raw deployments)
- DeFi Llama TVL: $1,344,336.94
- On-chain TVL (included contracts): $1,854,269.86
- TVL by chain: Ethereum $1,845,672.42 | Optimism $2,837.86 | Arbitrum $2,837.37 | Base $2,837.30 | Polygon $84.92

## Project Description

Meeds Finance is a Web3 community app and decentralized engagement platform with an Ethereum token, staking, and reward components.

### Architecture

The TokenFactory registry supports the creation and management of tokens used within the Meeds Finance ecosystem, while the proxy contracts (DeedTenantRentingProxy and DeedTenantProvisioningProxy) provide upgradeable infrastructure for renting and provisioning deeds, likely integrating with the core staking and reward mechanisms.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,854,269.86
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,854,269.86 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MeedsToken | token | ethereum | [`0x8503a7...0547b7`](./contracts/ethereum-1/0x8503a7b00b4b52692cc6c14e5b96f142e30547b7/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | polygon | 6 deployments: ethereum `0xc82b1c...12b3d1`; ethereum `0xfa127d...f9989e`; optimism `0xe13330...369b17`; polygon [`0x4e7d4e...b02a69`](./contracts/polygon-137/0x4e7d4e5fd3e4a68adcbeacaa3748b9c67bb02a69/); base `0xada40f...51dd55`; arbitrum `0xc76979...7225a1` | ⚠️ Unaudited |
| TokenFactory | registry | ethereum | [`0x1b37d0...386050`](./contracts/ethereum-1/0x1b37d04759ad542640cc44ff849a373040386050/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0x440701...f37dfa`](./contracts/ethereum-1/0x440701ca5817b5847438da2ec2ca3b9fdbf37dfa/) | ⚠️ Unaudited |
| XMeedsNFTRewarding | token | ethereum | [`0x44d6d6...e1bcd4`](./contracts/ethereum-1/0x44d6d6ab50401dd846336e9c706a492f06e1bcd4/) | ⚠️ Unaudited |

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
| ethereum | [`0x8503a7...0547b7`](./contracts/ethereum-1/0x8503a7b00b4b52692cc6c14e5b96f142e30547b7/) | MeedsToken | token | $1,836,869.78 | Verified native implementation with $1,836,869.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b37d0...386050`](./contracts/ethereum-1/0x1b37d04759ad542640cc44ff849a373040386050/) | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x440701...f37dfa`](./contracts/ethereum-1/0x440701ca5817b5847438da2ec2ca3b9fdbf37dfa/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44d6d6...e1bcd4`](./contracts/ethereum-1/0x44d6d6ab50401dd846336e9c706a492f06e1bcd4/) | XMeedsNFTRewarding | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
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
