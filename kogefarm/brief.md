# Agentic Audit Brief: Kogefarm

⚠️ Lifecycle status: DEAD - TVL dropped 7.8% over 90 days

## Project Overview

- Project: Kogefarm (`kogefarm`)
- Website: [https://kogefarm.io](https://kogefarm.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T09:46:14.251Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: polygon
- Contract surface: 4 unique implementations (10 raw deployments)
- DeFi Llama TVL: $138,224.56
- On-chain TVL (included contracts): $312.94
- TVL by chain: Polygon $312.94

## Project Description

Kogefarm is a yield farming protocol on Polygon that allows users to deposit liquidity into vaults to earn rewards. It uses a MasterChef contract to distribute its native Koge token as incentives.

### Architecture

The vault contracts (vaultBase/VaultBase) hold user deposits and interact with MasterChef to distribute Koge rewards. The Koge token is the reward asset, and UniswapV2Pair likely serves as the LP token for one or more vaults.

## Contract Surface Quality

- Indexed contracts: 235; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 225 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/22.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 10
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 25.0% | 2021-10 |
| unknown | Tier 2 | 1 | 25.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| vaultBase | core_logic | polygon | n/a | 7 deployments: polygon [`0x2d0389...6f7271`](./contracts/polygon-137/0x2d03892d0fae4479ae2b0d945f67675f006f7271/); polygon `0x510d77...e69621`; polygon `0x55c08f...6905e3`; polygon `0x58201c...19875b`; polygon `0x58fe96...63770b`; polygon `0x7a9be7...b791ec`; polygon `0x992ae1...62a657` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Koge | unknown | polygon | n/a | [`0x13748d...cffa23`](./contracts/polygon-137/0x13748d548d95d78a3c83fe3f32604b4796cffa23/) | ⚠️ Unaudited |
| MasterChef | unknown | polygon | n/a | [`0x627551...32fabd`](./contracts/polygon-137/0x6275518a63e891b1bc54feebbb5333776e32fabd/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x388550...1c8154`](./contracts/polygon-137/0x3885503aef5e929fcb7035fbdca87239651c8154/) | ⚠️ Unaudited |

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
| [Kogefarm.pdf (also discovered via alternate URL)](https://github.com/Tibereum/obelisk-audits/blob/main/Kogefarm.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 7 | high |
| [Paladin](https://paladinsec.co/projects/kogefarm) | Paladin | Audit | 2021-10 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x13748d...cffa23`](./contracts/polygon-137/0x13748d548d95d78a3c83fe3f32604b4796cffa23/) | Koge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x627551...32fabd`](./contracts/polygon-137/0x6275518a63e891b1bc54feebbb5333776e32fabd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=251

Fork inheritance lineage and inherited audits are included when available.
