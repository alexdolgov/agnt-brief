# Agentic Audit Brief: MOBOX

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: MOBOX (`mobox`)
- Website: [https://www.mobox.io/home/#/iframe/momo](https://www.mobox.io/home/#/iframe/momo)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:36.076Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $1,250,217.76
- On-chain TVL (included contracts): $6,635,312.43
- TVL by chain: Bsc $6,635,312.43

## Project Description

MOBOX is a BNB Chain Gaming/GameFi project with staking and pool2/yield-farming components. Its measurable DeFi activity should be treated as BNB Chain staking/pool2 TVL rather than as a broad multi-chain protocol surface, unless additional official MOBOX deployments and validated audit scope are confirmed.

### Architecture

The MOBOX family relies on a shared set of proxy contracts (MoMoProxy, MoboxProxy) for upgradeability and governance across chains. Core staking and farming contracts interact with liquidity pools (UniswapV2Pair, PancakePair) and reward tokens (MoboxToken, StakedBPT) to distribute incentives, while controllers (FarmV2Controller, FarmV3Controller) manage farm parameters.

## Contract Surface Quality

- Indexed contracts: 423; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 264 inactive, 151 singleton, 0 uninitialized.
- Deployment units: 2/69 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $6,635,312.43
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $6,635,312.43 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MoboxToken | token | bsc | n/a | [`0x3203c9...da2377`](./contracts/bsc-56/0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377/) | ⚠️ Unaudited |
| KeyToken | token | bsc | n/a | [`0x85c128...b51d33`](./contracts/bsc-56/0x85c128ee1feeb39a59490c720a9c563554b51d33/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | bsc | n/a | [`0xa5f8c5...f07652`](./contracts/bsc-56/0xa5f8c5dbd5f286960b9d90548680ae5ebff07652/) | ⚠️ Unaudited |
| MoMoProxy | proxy | bsc | unit-21723 | [`0x2873d9...7c69e7`](./contracts/bsc-56/0x2873d94d21efa8af064b02174413966b357c69e7/) | ⚠️ Unaudited |
| MoMoProxy | proxy | bsc | unit-21730 | [`0x529e2a...393757`](./contracts/bsc-56/0x529e2a515ce4499c41b23102e56e45025e393757/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x8fa596...7a7c3f`](./contracts/bsc-56/0x8fa59693458289914db0097f5f366d771b7a7c3f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x9c7cba...9026a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc444e...a48f6f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [certik.org/projects/mobox](https://skynet.certik.com/projects/mobox) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3203c9...da2377`](./contracts/bsc-56/0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377/) | MoboxToken | token | $6,604,034.84 | Verified native implementation with $6,604,034.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85c128...b51d33`](./contracts/bsc-56/0x85c128ee1feeb39a59490c720a9c563554b51d33/) | KeyToken | token | $31,277.59 | Verified native implementation with $31,277.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa5f8c5...f07652`](./contracts/bsc-56/0xa5f8c5dbd5f286960b9d90548680ae5ebff07652/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2873d9...7c69e7`](./contracts/bsc-56/0x2873d94d21efa8af064b02174413966b357c69e7/) | MoMoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x529e2a...393757`](./contracts/bsc-56/0x529e2a515ce4499c41b23102e56e45025e393757/) | MoMoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2864] certik.org/projects/mobox

Fork inheritance lineage and inherited audits are included when available.
