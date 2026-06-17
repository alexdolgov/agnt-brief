# Agentic Audit Brief: Outcome Finance

⚠️ Lifecycle status: DECLINING - TVL changed 60.3% over 90 days

## Project Overview

- Project: Outcome Finance (`outcome-finance`)
- Lifecycle: declining (Tier 0, 99.4% below peak)
- Generated: 2026-06-17T07:00:52.559Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: boba, polygon
- Contract surface: 2 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,048,764.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Outcome Finance is listed by DefiLlama as a Synthetics project that helps DAOs generate positive outcomes and uses UMA-related outcome/synthetic infrastructure. The currently recorded contract surface consists primarily of UMA creator/factory contracts, rather than verified trading venues or the deployed collateral-holding outcome contracts.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 5 (0 live, 5 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LongShortPairCreator | unknown | polygon | n/a | 4 deployments: polygon [`0x3e665d...43911a`](./contracts/polygon-137/0x3e665d15425faee14eef53b9caaa0762b243911a/); polygon `0x4fba85...213424`; polygon `0x5fd7ff...104c9f`; polygon `0x62410e...7a0abe` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | boba | n/a | `0xc064b1...d41f68` | ❓ Unverified |

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
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
