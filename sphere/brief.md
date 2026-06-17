# Agentic Audit Brief: SPHERE

## Project Overview

- Project: SPHERE (`sphere`)
- Website: [https://www.sphere.finance](https://www.sphere.finance)
- Lifecycle: active (Tier 0, 75.4% below peak)
- Generated: 2026-06-17T07:00:36.786Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, kava, polygon
- Contract surface: 11 unique implementations (13 raw deployments)
- DeFi Llama TVL: $6,639,190.00
- On-chain TVL (included contracts): $229,110,920.18
- TVL by chain: Arbitrum $224,450,266.52 | Polygon $4,620,945.72 | Base $39,707.95

## Project Description

SPHERE is a DeFi ecosystem exposure and revenue-stream project centered on the SPHERE token. Its historical and related contract surface includes attributed sub-surfaces such as Dyson, Preon, and Penrose, but those should be treated as related, legacy, or separately verified components unless current SPHERE ownership and operation are independently supported. Third-party protocol infrastructure and token contracts should not be counted as SPHERE-owned assets or defended TVL.

### Architecture

Dyson vaults and Preon Finance strategies share infrastructure such as oracles (e.g., ChainlinkManager, DysonLpOracle) and proxy patterns. The Sphere token likely serves as a governance and incentive layer across both families, though direct on-chain links are not explicit in the contract surface.

## Contract Surface Quality

- Indexed contracts: 662; live-surface contracts included: 13 (12 live, 1 unknown).
- Excluded by liveness: 316 inactive, 333 singleton, 0 uninitialized.
- Deployment units: 4/118 live.
- Detected codebases: balancer-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 9/49.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $229,110,920.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | arbitrum | unit-23246 (2 proxies) | 2 deployments: arbitrum [`0x8ffdf2...0a0692`](./contracts/arbitrum-42161/0x8ffdf2de812095b1d19cb146e4c004587c0a0692/); arbitrum `0xe50fa9...8128c8` | ⚠️ Unaudited |
| ATokenInstance | token | polygon | unit-23179 (2 proxies) | 2 deployments: polygon [`0x82e64f...2312ee`](./contracts/polygon-137/0x82e64f49ed5ec1bc6e43dad4fc8af9bb3a2312ee/); polygon `0xea1132...6f7ac9` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-23161 | [`0x172370...a610af`](./contracts/polygon-137/0x172370d5cd63279efa6d502dab29171933a610af/) | ⚠️ Unaudited |
| DebtToken | token | base | n/a | [`0xc19669...be57f5`](./contracts/base-8453/0xc19669a405067927865b40ea045a2baabbbe57f5/) | ⚠️ Unaudited |
| BaseRewardPool4626 | core_logic | polygon | n/a | [`0x39ee6f...abd2c6`](./contracts/polygon-137/0x39ee6fb813052e67260a3f95d3739b336aabd2c6/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | polygon | n/a | [`0xcd78a2...4d7c8f`](./contracts/polygon-137/0xcd78a20c597e367a4e478a2411ceb790604d7c8f/) | ⚠️ Unaudited |
| Pen | unknown | polygon | n/a | [`0x9008d7...891a97`](./contracts/polygon-137/0x9008d70a5282a936552593f410abcbce2f891a97/) | ⚠️ Unaudited |
| SphereLocker | unknown | polygon | unit-23166 | [`0x4af613...889653`](./contracts/polygon-137/0x4af613f297ab00361d516454e5e46bc895889653/) | ⚠️ Unaudited |
| SphereToken | token | polygon | n/a | [`0x8d5460...5b9716`](./contracts/polygon-137/0x8d546026012bf75073d8a586f24a5d5ff75b9716/) | ⚠️ Unaudited |
| WeightedPool | core_logic | polygon | n/a | [`0xf33129...0b47b2`](./contracts/polygon-137/0xf3312968c7d768c19107731100ece7d4780b47b2/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | kava | n/a | `0x489e54...50b5be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xc19669...be57f5`](./contracts/base-8453/0xc19669a405067927865b40ea045a2baabbbe57f5/) | DebtToken | token | $39,707.95 | Verified native implementation with $39,707.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39ee6f...abd2c6`](./contracts/polygon-137/0x39ee6fb813052e67260a3f95d3739b336aabd2c6/) | BaseRewardPool4626 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8d5460...5b9716`](./contracts/polygon-137/0x8d546026012bf75073d8a586f24a5d5ff75b9716/) | SphereToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
