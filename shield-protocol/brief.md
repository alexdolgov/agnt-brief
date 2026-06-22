# Agentic Audit Brief: Shield Protocol

⚠️ Lifecycle status: UNKNOWN - TVL dropped 8.2% over 90 days

## Project Overview

- Project: Shield Protocol (`shield-protocol`)
- Lifecycle: unknown (Tier 0, 73.1% below peak)
- Generated: 2026-06-20T02:39:33.755Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 30 unique implementations (30 raw deployments)
- DeFi Llama TVL: $37,580.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Shield Protocol is a yield farming platform on BSC that allows users to stake assets and earn rewards. It consists of a set of farming contracts deployed in early 2025.

### Architecture

All contracts belong to a single product family with no explicit sub-families or shared infrastructure contracts identified. They are deployed by two distinct deployer addresses, suggesting possible modularity or separate development phases.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterOracleAndy | operational_periphery | bsc | n/a | [`0x034d1f...c56f04`](./contracts/bsc-56/0x034d1fefc4727c3ffb2b6d16c856df04c6c56f04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0e6f0d...8b7ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11fd47...d647be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fa5b0...bedc80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22f974...ef958e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26fe02...83208c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27d22b...72e68c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28480e...649caf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36d7fa...7bf843` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38cda1...14e996` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46a0d3...7ed58d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46a336...3a9bc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x552da2...5fa619` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e0c30...988f42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x751e34...b44918` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e6d69...e3751f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9aceea...c11361` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa976a4...d615fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacbb17...4acdc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5a343...ce8f68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb91db5...0bde91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfe801...09e668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc4089...15ecd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf4a68...16207d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd19626...922874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8d4bf...92644c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9e90d...935710` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd2ad3...6f7e90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfafea5...a8b8cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfca16c...7df07f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://spywolf.co/audits/Shield_Protocol_0xD9E90DF21F4229249E8841580cDE7048bF935710.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x034d1f...c56f04`](./contracts/bsc-56/0x034d1fefc4727c3ffb2b6d16c856df04c6c56f04/) | MasterOracleAndy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13822] DL audit link

Fork inheritance lineage and inherited audits are included when available.
