# Agentic Audit Brief: HashKey Global

## Project Overview

- Project: HashKey Global (`hashkey-global`)
- Website: [https://www.hashkey.com](https://www.hashkey.com)
- Lifecycle: active (Tier 0, 85.6% below peak)
- Generated: 2026-06-17T07:01:00.797Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: scroll
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $13,434,700.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

HashKey Global is a centralized exchange (CEX) that provides trading and custody services for digital assets. The reviewed on-chain surface consists of two unverified Scroll addresses with unknown roles and an unconfirmed relationship to HashKey exchange operations; these addresses should not be described as a verified deposit/withdrawal or token-management system without further evidence.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | scroll | n/a | `0x08c974...6cab76` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdd2613...479cdb` | ❓ Unverified |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
