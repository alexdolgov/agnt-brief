# Agentic Audit Brief: HOPE Money

## Project Overview

- Project: HOPE Money (`hope-money`)
- Lifecycle: active (Tier 0, 84.1% below peak)
- Generated: 2026-06-17T07:00:50.092Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 4 unique implementations (10 raw deployments)
- DeFi Llama TVL: $1,389,064.00
- On-chain TVL (included contracts): $21,983,584.15
- TVL by chain: Ethereum $21,983,584.15

## Project Description

HOPE Money is an all-in-one DeFi ecosystem featuring HOPE, a crypto-native distributed stablecoin, with related stablecoin and ecosystem components across its supported deployment surface.

### Architecture

The liquid staking family provides RockXETH, which can be restaked for rewards. BTC-backed tokens rely on vaults and rate oracles, and cross-chain infrastructure enables movement of these assets across networks.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 10 (3 live, 7 unknown).
- Excluded by liveness: 17 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: aave-v2, uniswap-v2
- Unverified dependencies: 3/53.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,983,584.15
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RockXETH | token | ethereum | unit-30601 | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ⚠️ Unaudited |
| HToken | token | ethereum | unit-30598 (7 proxies) | 7 deployments: ethereum [`0x1fc2dd...2c9386`](./contracts/ethereum-1/0x1fc2dd0dcb64e0159b0474cfe6e45985522c9386/); ethereum `0x25126f...403907`; ethereum `0x396856...a4323e`; ethereum `0x58792e...f74d90`; ethereum `0x5dd30e...303572`; ethereum `0x6090f3...51b749`; ethereum `0xb3cc0a...334e62` | ⚠️ Unaudited |
| StakingHOPE | unknown | ethereum | n/a | [`0xf5c6d9...9fd4d8`](./contracts/ethereum-1/0xf5c6d9fc73991f687f158fe30d4a77691a9fd4d8/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0x219bd2...5051e9`](./contracts/ethereum-1/0x219bd2d1449f3813c01204ee455d11b41d5051e9/) | ⚠️ Unaudited |

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
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
