# Agentic Audit Brief: Gridex

⚠️ Lifecycle status: DEAD - TVL dropped 10.4% over 90 days

## Project Overview

- Project: Gridex (`gridex`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-21T06:48:37.747Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $54,054.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gridex is a decentralized exchange protocol that facilitates trading of digital assets through an order book model. It provides a factory for creating trading grids and a native token (GDX) likely used for governance or fee incentives.

### Architecture

The GridFactory contract serves as a registry for deploying and managing trading grids, while the GDX token likely functions as the protocol's native asset for fees or governance, though no direct on-chain dependency is visible from the provided contract surface.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GDX | unknown | arbitrum | n/a | [`0x2f2711...a6975d`](./contracts/arbitrum-42161/0x2f27118e3d2332afb7d165140cf1bb127ea6975d/) | ⚠️ Unaudited |
| SwapRouterHub | adapter | base | n/a | [`0x426b75...757733`](./contracts/base-8453/0x426b751aba5f49914bfbd4a1e45aee099d757733/) | ⚠️ Unaudited |

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
| [CertiK-Audit-for-Gridex.pdf](https://github.com/GridexProtocol/core/blob/main/audits/certik/CertiK-Audit-for-Gridex.pdf) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x2f2711...a6975d`](./contracts/arbitrum-42161/0x2f27118e3d2332afb7d165140cf1bb127ea6975d/) | GDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x426b75...757733`](./contracts/base-8453/0x426b751aba5f49914bfbd4a1e45aee099d757733/) | SwapRouterHub | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [13207] CertiK-Audit-for-Gridex.pdf

Fork inheritance lineage and inherited audits are included when available.
