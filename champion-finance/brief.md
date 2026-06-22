# Agentic Audit Brief: Champion Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Champion Finance (`champion-finance`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T12:25:52.555Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: avalanche
- Contract surface: 7 unique implementations (10 raw deployments)
- DeFi Llama TVL: $23.86
- On-chain TVL (included contracts): $35,681.14
- TVL by chain: Avalanche $35,681.14

## Project Description

Champion Finance is an algorithmic stablecoin protocol on Avalanche that maintains a basket of synthetic assets pegged to real-world ETFs. It uses seigniorage and bonding mechanisms to stabilize token prices, with governance and reward distribution handled through boardroom contracts.

### Architecture

The MainToken and ShareToken are the primary assets, with Boardroom contracts enabling ShareToken staking to earn rewards. Proxies are used extensively to allow upgradeability of core logic, and multiple Treasury, RewardPool, and ETF-related contracts (seen in proxy trees) support the system's stability and reward distribution.

## Contract Surface Quality

- Indexed contracts: 225; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 171 inactive, 44 singleton, 0 uninitialized.
- Deployment units: 1/23 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 29; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 10
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $686.19
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $686.19 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 28.6% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ShareToken | token | avalanche | n/a | 2 deployments: avalanche [`0x5fa3c8...88643f`](./contracts/avalanche-43114/0x5fa3c882eef3a8d49c4466eeb7fbabb75a88643f/); avalanche `0xc65bc1...be378e` | ✅ Audited |
| MainToken | token | avalanche | n/a | 2 deployments: avalanche [`0x0fb3e4...63e430`](./contracts/avalanche-43114/0x0fb3e4e84fb78c93e466a2117be7bc8bc063e430/); avalanche `0x59b188...9d763d` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EVICToken | token | avalanche | n/a | 2 deployments: avalanche [`0x53b506...22e615`](./contracts/avalanche-43114/0x53b506bb5257d9effc86ff80d6c12e51d722e615/); avalanche `0x74fefa...528658` | ⚠️ Unaudited |
| AOEAToken | token | avalanche | n/a | [`0xcc0213...05b85d`](./contracts/avalanche-43114/0xcc0213cb713bed8f89c0225196e1afc38705b85d/) | ⚠️ Unaudited |
| BVICToken | token | avalanche | n/a | [`0x3cd3d1...33fd3e`](./contracts/avalanche-43114/0x3cd3d19ab5e88a07dbbc683ff0a7ed38e833fd3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | unit-39739 | [`0x6197f1...9cccaa`](./contracts/avalanche-43114/0x6197f1b4198296b637b731e9994bc366d29cccaa/) | ⚠️ Unaudited |
| UVICToken | token | avalanche | n/a | [`0xad9243...585b90`](./contracts/avalanche-43114/0xad92430a77854d72fcbbc5f4ec1e9f89d7585b90/) | ⚠️ Unaudited |

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
| [Champion Finance.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/Champion%20Finance/Champion%20Finance.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x53b506...22e615`](./contracts/avalanche-43114/0x53b506bb5257d9effc86ff80d6c12e51d722e615/) | EVICToken | token | $686.19 | Verified native implementation with $686.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcc0213...05b85d`](./contracts/avalanche-43114/0xcc0213cb713bed8f89c0225196e1afc38705b85d/) | AOEAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3cd3d1...33fd3e`](./contracts/avalanche-43114/0x3cd3d19ab5e88a07dbbc683ff0a7ed38e833fd3e/) | BVICToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xad9243...585b90`](./contracts/avalanche-43114/0xad92430a77854d72fcbbc5f4ec1e9f89d7585b90/) | UVICToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=39

Fork inheritance lineage and inherited audits are included when available.
