# Agentic Audit Brief: DPEX

⚠️ Lifecycle status: DEAD - TVL dropped 2.1% over 90 days

## Project Overview

- Project: DPEX (`dpex`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T13:11:50.131Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: polygon
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $142.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DPEX is a derivatives trading protocol on Polygon that enables users to trade perpetual contracts with leverage. It provides a decentralized exchange for synthetic assets, likely using an oracle-based pricing and liquidation mechanism.

### Architecture

The protocol consists of a single product family with one core contract, indicating a monolithic design where all trading logic is contained within the DPEX contract. No shared infrastructure or inter-family relationships are present.

## Contract Surface Quality

- Indexed contracts: 159; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 153 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/9.

## Audit Coverage Summary

- Verified implementations audited: 2/6 (33.3%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 33.3% | n/a |
| CertiK | Tier 2 | 1 | 16.7% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DPEX | unknown | polygon | n/a | [`0x3ed4c2...8f3b00`](./contracts/polygon-137/0x3ed4c2d63def617f436eb031bacae16f478f3b00/) | ✅ Audited |
| Vault | core_logic | polygon | n/a | [`0x24afb3...83f05c`](./contracts/polygon-137/0x24afb3b27156e71e68e292e4ad71db827f83f05c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| eDPX | unknown | polygon | n/a | [`0xa23cd4...dbf902`](./contracts/polygon-137/0xa23cd4da2400b31bcf18e3a8f27578c706dbf902/) | ⚠️ Unaudited |
| EsDPEX | unknown | polygon | n/a | [`0x5e4a7b...044435`](./contracts/polygon-137/0x5e4a7bf3e07608ac5805c74144f2149518044435/) | ⚠️ Unaudited |
| PositionRouter | adapter | polygon | n/a | [`0x6c17c3...f1636b`](./contracts/polygon-137/0x6c17c37ebc95c739f9b68ecc7ad6a0c682f1636b/) | ⚠️ Unaudited |
| Timelock | governance | polygon | n/a | [`0xfef980...431338`](./contracts/polygon-137/0xfef980f130b9b8f3c1a1a71627af8e08f9431338/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/dpex) | CertiK | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [DPEX_Zokyo audit report.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/DPEX/DPEX_Zokyo%20audit%20report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xa23cd4...dbf902`](./contracts/polygon-137/0xa23cd4da2400b31bcf18e3a8f27578c706dbf902/) | eDPX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5e4a7b...044435`](./contracts/polygon-137/0x5e4a7bf3e07608ac5805c74144f2149518044435/) | EsDPEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6c17c3...f1636b`](./contracts/polygon-137/0x6c17c37ebc95c739f9b68ecc7ad6a0c682f1636b/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=30

Fork inheritance lineage and inherited audits are included when available.
