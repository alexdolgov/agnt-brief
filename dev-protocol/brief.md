# Agentic Audit Brief: Dev Protocol

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Dev Protocol (`dev-protocol`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T08:52:29.992Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dev Protocol is a decentralized staking and yield generation platform that allows creators and projects to tokenize their work and earn ongoing revenue. Users stake DEV tokens to support creators and receive yield in return.

### Architecture

The AddressConfig contract manages protocol addresses and governance, while the Dev contract contains the core staking and yield logic. Both contracts are deployed together and form the foundational layer of the protocol.

## Contract Surface Quality

- Indexed contracts: 217; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 201 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/3 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 100.0% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dev | unknown | ethereum | n/a | [`0x5caf45...fd5b26`](./contracts/ethereum-1/0x5caf454ba92e6f2c929df14667ee360ed9fd5b26/) | ✅ Audited |
| Lockup | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1440ac...0179b7`](./contracts/ethereum-1/0x1440ac02e0f8a8bbe1451d98a2a6b14b6f0179b7/); ethereum `0x2a2273...e830bb` | ✅ Audited |
| Withdraw | operational_periphery | ethereum | n/a | [`0x1fd4cc...77843b`](./contracts/ethereum-1/0x1fd4cc54564f880d267d8cb75f60b04f4777843b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [audit-report__quantstamp--sept-15-2020.pdf](https://github.com/dev-protocol/protocol/blob/main/docs/audit-report__quantstamp--sept-15-2020.pdf) | Quantstamp | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=118

Fork inheritance lineage and inherited audits are included when available.
