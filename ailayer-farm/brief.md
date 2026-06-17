# Agentic Audit Brief: AILayer farm

## Project Overview

- Project: AILayer farm (`ailayer-farm`)
- Website: [https://ailayer.xyz/](https://ailayer.xyz/)
- Lifecycle: active (Tier 0, 89.1% below peak)
- Generated: 2026-06-17T07:00:50.531Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $65,666,011.09
- On-chain TVL (included contracts): $211,858.71
- TVL by chain: Bsc $211,858.71

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

AILayer farm is the DefiLlama Farm listing for AILayer staking, associated with AILayer's broader AI-modular Bitcoin Layer2 ecosystem. The recorded BSC AILayerToken address represents only a token contract and should not be treated as the full protocol architecture or complete contract surface; additional staking, bridge, node/PoS, AI protocol controller, prover/miner/subnet, and reward contracts require discovery.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $211,858.71
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AILayerToken | token | bsc | n/a | [`0x66e3da...442244`](./contracts/bsc-56/0x66e3daa0c86e0ad56302d36af0e7c1ba24442244/) | ⚠️ Unaudited |

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
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
