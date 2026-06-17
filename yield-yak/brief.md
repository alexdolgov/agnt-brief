# Agentic Audit Brief: Yield Yak

⚠️ Lifecycle status: DECLINING - TVL dropped 18.5% over 90 days

## Project Overview

- Project: Yield Yak (`yield-yak`)
- Website: [https://yieldyak.com](https://yieldyak.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:47.042Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, mantle
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $13,741,669.00
- On-chain TVL (included contracts): $772,189.29
- TVL by chain: Avalanche $771,608.06 | Mantle $581.24

## Project Description

Yield Yak is an Avalanche-focused DeFi yield optimizer that provides set-and-forget, autocompounding yield vaults. Users deposit assets into vaults that automatically reinvest rewards to maximize returns. The protocol also offers a liquid staking token for AVAX.

### Architecture

The Yield Yak Aggregator and Staked Avax families share the YAK token for governance and incentives. The YAK token is used across both families, with staking mechanisms (YyStaking) supporting the aggregator's tokenomics.

## Contract Surface Quality

- Indexed contracts: 131; live-surface contracts included: 15 (14 live, 1 unknown).
- Excluded by liveness: 106 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/5 live.
- Detected codebases: aave-v2
- Unverified dependencies: 5/26.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $772,189.29
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $772,189.29 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YakToken | token | avalanche | n/a | [`0x59414b...776ec7`](./contracts/avalanche-43114/0x59414b3089ce2af0010e7523dea7e2b35d776ec7/) | ⚠️ Unaudited |
| ERC20InterfaceUpgradable | token | avalanche | n/a | [`0xf7d928...965d27`](./contracts/avalanche-43114/0xf7d9281e8e363584973f946201b82ba72c965d27/) | ⚠️ Unaudited |
| YakTokenProxyOFTV2 | token | avalanche | n/a | [`0x656d33...18a8d9`](./contracts/avalanche-43114/0x656d33bfb74863e7ab1f5496a7a86a717a18a8d9/) | ⚠️ Unaudited |
| YakTokenOFTV2 | token | mantle | n/a | [`0x7f4db3...f13696`](./contracts/mantle-5000/0x7f4db37d7beb31f445307782bc3da0f18df13696/) | ⚠️ Unaudited |
| AlgebraIntegralAdapter | adapter | avalanche | n/a | [`0xe3d2c1...b24d6d`](./contracts/avalanche-43114/0xe3d2c10c2122e6f02c702064015554d468b24d6d/) | ⚠️ Unaudited |
| ArenaAdapter | adapter | avalanche | n/a | [`0xef3cce...76f13c`](./contracts/avalanche-43114/0xef3ccefb2fe23e9d0aa7b578724b92f59f76f13c/) | ⚠️ Unaudited |
| BlackholeAdapter | adapter | avalanche | n/a | [`0x123577...d8a651`](./contracts/avalanche-43114/0x123577a1560004d4432dc5e31f97363d0cd8a651/) | ⚠️ Unaudited |
| gAVAX | unknown | avalanche | n/a | [`0x6026a8...2d9808`](./contracts/avalanche-43114/0x6026a85e11bd895c934af02647e8c7b4ea2d9808/) | ⚠️ Unaudited |
| LB2WhitelistAdapter | adapter | avalanche | n/a | [`0xe76329...46750c`](./contracts/avalanche-43114/0xe7632926806e9513708232bcda8f70356646750c/) | ⚠️ Unaudited |
| MasterYak | unknown | avalanche | n/a | [`0x0cf605...5daf5f`](./contracts/avalanche-43114/0x0cf605484a512d3f3435fed77ab5ddc0525daf5f/) | ⚠️ Unaudited |
| YakRouter | adapter | avalanche | n/a | [`0xc4729e...77488c`](./contracts/avalanche-43114/0xc4729e56b831d74bbc18797e0e17a295fa77488c/) | ⚠️ Unaudited |
| YyStaking | unknown | arbitrum | n/a | [`0xbb82b4...1f3403`](./contracts/arbitrum-42161/0xbb82b43bf2057b804253d5db8c18a647fc1f3403/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x030b6d...72694c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf48704...c31736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf9f824...26261e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x59414b...776ec7`](./contracts/avalanche-43114/0x59414b3089ce2af0010e7523dea7e2b35d776ec7/) | YakToken | token | $410,284.77 | Verified native implementation with $410,284.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf7d928...965d27`](./contracts/avalanche-43114/0xf7d9281e8e363584973f946201b82ba72c965d27/) | ERC20InterfaceUpgradable | token | $358,732.46 | Verified native implementation with $358,732.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x656d33...18a8d9`](./contracts/avalanche-43114/0x656d33bfb74863e7ab1f5496a7a86a717a18a8d9/) | YakTokenProxyOFTV2 | token | $2,590.83 | Verified native implementation with $2,590.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7f4db3...f13696`](./contracts/mantle-5000/0x7f4db37d7beb31f445307782bc3da0f18df13696/) | YakTokenOFTV2 | token | $581.24 | Verified native implementation with $581.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe3d2c1...b24d6d`](./contracts/avalanche-43114/0xe3d2c10c2122e6f02c702064015554d468b24d6d/) | AlgebraIntegralAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xef3cce...76f13c`](./contracts/avalanche-43114/0xef3ccefb2fe23e9d0aa7b578724b92f59f76f13c/) | ArenaAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x123577...d8a651`](./contracts/avalanche-43114/0x123577a1560004d4432dc5e31f97363d0cd8a651/) | BlackholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6026a8...2d9808`](./contracts/avalanche-43114/0x6026a85e11bd895c934af02647e8c7b4ea2d9808/) | gAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe76329...46750c`](./contracts/avalanche-43114/0xe7632926806e9513708232bcda8f70356646750c/) | LB2WhitelistAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0cf605...5daf5f`](./contracts/avalanche-43114/0x0cf605484a512d3f3435fed77ab5ddc0525daf5f/) | MasterYak | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc4729e...77488c`](./contracts/avalanche-43114/0xc4729e56b831d74bbc18797e0e17a295fa77488c/) | YakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb82b4...1f3403`](./contracts/arbitrum-42161/0xbb82b43bf2057b804253d5db8c18a647fc1f3403/) | YyStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11729] 0xmacro-boring-vault-arctic-0.pdf
- [11730] 0xmacro-boring-vault-arctic-1.pdf
- [11731] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
