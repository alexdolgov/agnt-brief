# Agentic Audit Brief: Reya

⚠️ Lifecycle status: DECLINING - TVL dropped 50.2% over 90 days

## Project Overview

- Project: Reya (`reya`)
- Website: [https://app.reya.xyz/trade?referredBy=z9hwcwwd](https://app.reya.xyz/trade?referredBy=z9hwcwwd)
- Lifecycle: declining (Tier 0, 77.7% below peak)
- Generated: 2026-06-17T07:00:41.879Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 5 unique implementations (37 raw deployments)
- DeFi Llama TVL: $17,182,352.00
- On-chain TVL (included contracts): $37,853,549.92
- TVL by chain: Arbitrum $23,599,579.43 | Ethereum $14,112,315.97 | Optimism $141,481.78 | Base $167.21 | Polygon $5.53

## Project Description

Reya is a DEX and trading application built around ReyaChain, a based rollup. Its vaults and bridging components should be treated as deposit and bridging infrastructure only where Reya ownership and current app relevance are verified, not as the protocol's primary product or as a canonical cross-chain bridge surface.

### Architecture

The Vault contracts on each chain are the core user-facing components, while CommonPlug proxies serve as shared infrastructure for access control or adapters. All vaults are deployed by the same deployer cluster, indicating a unified management system.

## Contract Surface Quality

- Indexed contracts: 873; live-surface contracts included: 37 (37 live, 0 unknown).
- Excluded by liveness: 822 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Unverified dependencies: 2/88.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 37
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $37,853,549.92
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $37,853,549.92 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | ethereum | n/a | 29 deployments: ethereum [`0x052b82...bb98ef`](./contracts/ethereum-1/0x052b82b3a096a592f3f28d4736c4796445bb98ef/); ethereum `0x0b4447...61bc9e`; ethereum `0x234462...3ad4b6`; ethereum `0x3eec7c...62e3ab`; ethereum `0x5e98a2...d4ecba`; ethereum `0x5f3b30...460cd3`; ethereum `0x64df89...c5d658`; ethereum `0x6d303c...fbcc1d`; ethereum `0xca253a...889aa2`; ethereum `0xd4efe3...571b7e`; ethereum `0xdff78a...2a75f7`; optimism `0x44343a...241b02`; optimism `0x780962...3a28ef`; optimism `0x923960...3590b6`; optimism `0xad7bdd...2c1bae`; optimism `0xcbecd6...19b608`; polygon `0xbc31ec...153a25`; polygon `0xc0acbb...91546c`; base `0x2b3a8a...1e0497`; base `0xd29950...e1bf40`; base `0xd71629...367ac0`; arbitrum `0x11b3a7...8524a8`; arbitrum `0x3d20c6...60896f`; arbitrum `0x4ed9ed...743553`; arbitrum `0x5e027a...e32882`; arbitrum `0x80d40e...4d137c`; arbitrum `0xa0e9b6...0fde77`; arbitrum `0xb2cb9a...1a60a6`; arbitrum `0xd7bbe2...d13047` | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | arbitrum | n/a | [`0xdff78a...2a75f7`](./contracts/arbitrum-42161/0xdff78a949e47c1e90f3dd6dd7fe2fa72b42a75f7/) | ⚠️ Unaudited |
| GasMovr | unknown | optimism | n/a | 4 deployments: ethereum `0xb584d4...204599`; optimism [`0x580024...f814d8`](./contracts/optimism-10/0x5800249621da520adfdca16da20d8a5fc0f814d8/); polygon `0xac313d...072d91`; arbitrum `0xc0e02a...681a00` | ⚠️ Unaudited |
| Socket | unknown | base | n/a | 2 deployments: base [`0x12e6e5...280156`](./contracts/base-8453/0x12e6e58864ce4402cf2b4b8a8e9c75ead7280156/); arbitrum `0x37cc67...55f6ba` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x2ddf16...b41fc0` | ❓ Unverified |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
