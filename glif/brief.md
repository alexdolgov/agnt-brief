# Agentic Audit Brief: GLIF

## Project Overview

- Project: GLIF (`glif`)
- Website: [https://glif.io](https://glif.io)
- Lifecycle: active (Tier 0, 90% below peak)
- Generated: 2026-05-31T08:09:21.216Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base
- Contract surface: 6 unique implementations (13 raw deployments)
- DeFi Llama TVL: $33,718,896.73
- On-chain TVL (included contracts): $726,983.69
- TVL by chain: Base $726,983.69

## Project Description

GLIF is a liquid staking protocol on Base that allows users to stake assets and receive liquid staking tokens, enabling them to earn staking rewards while maintaining liquidity. It provides a decentralized way to participate in network security without locking up capital.

### Architecture

The GLIF family consists of a single product family centered around the PoolV2 contract, which is accessed via an ERC1967Proxy. All other contracts in the inventory are periphery contracts that support the pool's operations, such as managing rewards and user interactions.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $726,983.69
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
| PoolV2 | core_logic | base | 2 deployments: base [`0x530a0c...5edceb`](./contracts/base-8453/0x530a0cdd4e5f24a5be77587146a05056c35edceb/); base `0xaed7c2...fb68f3` | ⚠️ Unaudited |
| ERC20Token | token | base | 2 deployments: base [`0x4a7c37...e53746`](./contracts/base-8453/0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746/); base `0x9f3f9a...ce0711` | ⚠️ Unaudited |
| Periphery | periphery | base | 3 deployments: base [`0x24d242...4ad082`](./contracts/base-8453/0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082/); base `0x6e7c44...d39488`; base `0xdbe31f...6e520f` | ⚠️ Unaudited |
| PeripheryV2 | periphery | base | [`0x35e137...f1ecff`](./contracts/base-8453/0x35e1371b87b742a99ab863d3cecf04e73ef1ecff/) | ⚠️ Unaudited |
| PeripheryV3 | periphery | base | 4 deployments: base [`0x2223ef...830bd8`](./contracts/base-8453/0x2223eff8c8acaac86cca206a10e707b2e9830bd8/); base `0x3a24cf...1112b8`; base `0x592286...7019f9`; base `0xadf046...62d11c` | ⚠️ Unaudited |
| Pool | core_logic | base | [`0xed236d...024cf0`](./contracts/base-8453/0xed236d2f99346a17555f4161b2b099be80024cf0/) | ⚠️ Unaudited |

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
| base | [`0x530a0c...5edceb`](./contracts/base-8453/0x530a0cdd4e5f24a5be77587146a05056c35edceb/) | PoolV2 | core_logic | $726,983.69 | Verified native implementation with $726,983.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a7c37...e53746`](./contracts/base-8453/0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746/) | ERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24d242...4ad082`](./contracts/base-8453/0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082/) | Periphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xed236d...024cf0`](./contracts/base-8453/0xed236d2f99346a17555f4161b2b099be80024cf0/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
