# Agentic Audit Brief: NEAR Intents

## Project Overview

- Project: NEAR Intents (`near-intents`)
- Website: [https://near.com/](https://near.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:36.530Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: gnosis
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $82,960,241.12
- On-chain TVL (included contracts): $3,719,105.13
- TVL by chain: Gnosis $3,719,105.13

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

NEAR Intents is an intents-based multichain liquidity, trading, and settlement system that powers cross-chain swaps and asset exchange across NEAR and other networks. The listed Gnosis/xDai contracts represent only one observed subset of its deployed surface, including token, proxy, governance, and validator-related contracts, and should not be treated as the full protocol-wide contract surface.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 9 inactive, 13 singleton, 0 uninitialized.
- Deployment units: 2/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,719,105.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermittableToken | token | gnosis | unit-22455 | [`0x177127...973d3c`](./contracts/gnosis-100/0x177127622c4a00f3d409b75571e12cb3c8973d3c/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | gnosis | unit-22456 | [`0x2a22f9...8f76f0`](./contracts/gnosis-100/0x2a22f9c3b484c3629090feed35f17ff8f88f76f0/) | ⚠️ Unaudited |

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
