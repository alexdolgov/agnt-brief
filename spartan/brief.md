# Agentic Audit Brief: Spartan

⚠️ Lifecycle status: DECLINING - TVL changed 13.8% over 90 days

## Project Overview

- Project: Spartan (`spartan`)
- Website: [https://spartanprotocol.org](https://spartanprotocol.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T21:00:20.997Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $6,317.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Spartan is a decentralized exchange (DEX) protocol on BSC that enables users to swap tokens and provide liquidity through automated market maker pools.

### Architecture

The PoolFactory contract deploys and registers liquidity pools, which are then used by the Sparta contract for swaps and liquidity operations.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 66.7% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 66.7% | 2021-07 |
| CertiK | Tier 2 | 1 | 33.3% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dao | unknown | bsc | n/a | [`0x805312...bf1567`](./contracts/bsc-56/0x80531284f27d8b479aca8dba18fd6303b4bf1567/) | ✅ Audited |
| Router | adapter | bsc | n/a | 2 deployments: bsc [`0x623989...fe426d`](./contracts/bsc-56/0x6239891fc4030dc050fb9f7083aa68a2e4fe426d/); bsc `0xf73d25...f6b352` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Sparta | unknown | bsc | n/a | 2 deployments: bsc [`0x3910db...6eb102`](./contracts/bsc-56/0x3910db0600ea925f63c36ddb1351ab6e2c6eb102/); bsc `0xe4ae30...ad677c` | ⚠️ Unaudited |

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
| [certik-audit.pdf](https://github.com/spartan-protocol/resources/blob/master/certik-audit.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://code4rena.com/reports/2021-07-spartan) | Code4rena | Contest | 2021-07 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3910db...6eb102`](./contracts/bsc-56/0x3910db0600ea925f63c36ddb1351ab6e2c6eb102/) | Sparta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=60

Fork inheritance lineage and inherited audits are included when available.
