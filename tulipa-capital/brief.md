# Agentic Audit Brief: Tulipa Capital

## Project Overview

- Project: Tulipa Capital (`tulipa-capital`)
- Website: [https://www.tulipa.capital](https://www.tulipa.capital)
- Lifecycle: active (Tier 0, 78.5% below peak)
- Generated: 2026-06-17T07:00:52.387Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, berachain, ethereum
- Contract surface: 6 unique implementations (10 raw deployments)
- DeFi Llama TVL: $40,980,856.82
- On-chain TVL (included contracts): $40,788,764.58
- TVL by chain: Ethereum $40,788,396.17 | Berachain $367.37 | Base $1.04

## Project Description

Tulipa Capital is a DeFi risk-curation project focused on lending markets and vaults, emphasizing capital protection, transparency, and institutional-scale capital deployment. Its indexed contract set includes vaults and proxy-based deployments on Ethereum and Avalanche, while its broader DefiLlama-listed footprint spans additional chains; the indexed contracts should not be treated as the full multichain project surface.

### Architecture

All product families share the same proxy-based upgradeability pattern, with BeaconProxy and OptinProxy instances pointing to a small set of Vault implementations. The TokenizedAccount contract likely serves as a user-facing entry point or receipt token, while BoringVault and LendingVault represent specialized strategy vaults within the same infrastructure.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 10 (8 live, 2 unknown).
- Excluded by liveness: 5 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 3/9 live.
- Detected codebases: none
- Unverified dependencies: 2/5.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $40,788,764.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | ethereum | unit-31901 (4 proxies) | 4 deployments: ethereum [`0x7895a0...6f6396`](./contracts/ethereum-1/0x7895a046b26cc07272b022a0c9bafc046e6f6396/); ethereum `0x7a12d4...37e428`; ethereum `0x936fac...d81bc7`; ethereum `0xce0b79...b574f3` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x699e04...976490`](./contracts/ethereum-1/0x699e04f98de2fc395a7dcbf36b48ec837a976490/); ethereum `0x6bf340...1c3ddf` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | unit-31897 | [`0x3b028b...73f228`](./contracts/ethereum-1/0x3b028b4b6c567ef5f8ca1144da4fbaa0d973f228/) | ⚠️ Unaudited |
| EVault | core_logic | berachain | unit-31905 | [`0xe932da...54c444`](./contracts/berachain-80094/0xe932da5a4d00536c224f8153f299cdcd8054c444/) | ⚠️ Unaudited |
| LendingVault | core_logic | base | n/a | [`0x61a860...ae47d4`](./contracts/base-8453/0x61a8606e04d350dfa1d1aaa68b37260746ae47d4/) | ⚠️ Unaudited |
| Vault | core_logic | base | unit-31903 | [`0xee6a60...c8b150`](./contracts/base-8453/0xee6a60be216058afd7a0643795b4f1e197c8b150/) | ⚠️ Unaudited |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
