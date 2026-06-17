# Agentic Audit Brief: Butter Network

⚠️ Lifecycle status: DECLINING - TVL dropped 44.7% over 90 days

## Project Overview

- Project: Butter Network (`butter-network`)
- Website: [https://www.butterswap.io/swap](https://www.butterswap.io/swap)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:42.692Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, klaytn, linea, mantle, merlin, optimism, polygon, scroll, zksync-era
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,280,837.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Butter Network, also presented as ButterSwap, is an omnichain interoperability hub and one-step cross-chain swap and bridge product. Its EVM contract surface includes chain-specific OmniServiceProxy proxy deployments with distinct current implementations, while the broader live product advertises support for additional networks beyond the listed EVM OmniServiceProxy deployments.

### Architecture

The protocol consists of a single product family where multiple OmniServiceProxy instances, deployed on different chains, share the same proxy address and implement the Bridge logic. These proxies collectively form the bridging infrastructure, with each instance operating on its respective chain to handle cross-chain messages and asset transfers.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 15 (11 live, 4 unknown).
- Excluded by liveness: 1 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 7/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | optimism | unit-20023 | [`0x000031...8f6a56`](./contracts/optimism-10/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| Bridge | operational_periphery | polygon | unit-20024 | [`0x000031...8f6a56`](./contracts/polygon-137/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| Bridge | operational_periphery | mantle | unit-20025 | [`0x000031...8f6a56`](./contracts/mantle-5000/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| Bridge | operational_periphery | base | unit-20026 | [`0x000031...8f6a56`](./contracts/base-8453/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| Bridge | operational_periphery | arbitrum | unit-20027 | [`0x000031...8f6a56`](./contracts/arbitrum-42161/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| Bridge | operational_periphery | linea | unit-20028 | [`0x000031...8f6a56`](./contracts/linea-59144/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| Bridge | operational_periphery | blast | unit-20029 | [`0x000031...8f6a56`](./contracts/blast-81457/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| OmniServiceProxy | unknown | scroll | n/a | [`0x000031...8f6a56`](./contracts/scroll-534352/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x58a64d...28bbf5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbd8df7...f112a9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdef84c...02fa3d` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x000031...8f6a56` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x41d903...fb0f71` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x000031...8f6a56` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xd077a4...3e4fdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x000031...8f6a56`](./contracts/optimism-10/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000031...8f6a56`](./contracts/polygon-137/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x000031...8f6a56`](./contracts/mantle-5000/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x000031...8f6a56`](./contracts/base-8453/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x000031...8f6a56`](./contracts/arbitrum-42161/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x000031...8f6a56`](./contracts/linea-59144/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x000031...8f6a56`](./contracts/blast-81457/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x000031...8f6a56`](./contracts/scroll-534352/0x0000317bec33af037b5fab2028f52d14658f6a56/) | OmniServiceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
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
