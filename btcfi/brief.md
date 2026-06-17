# Agentic Audit Brief: BTCFi

## Project Overview

- Project: BTCFi (`btcfi`)
- Website: [https://btcfi.one](https://btcfi.one)
- Lifecycle: active (Tier 0, 58.9% below peak)
- Generated: 2026-06-17T07:00:45.179Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $9,635,573.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

BTCFi is a cross-chain Bitcoin collateralization/CDP and asset-management platform centered on using Bitcoin-pegged collateral to mint BtcUSD. Its public project surface spans multiple chains, including Bitcoin, Bifrost Network, Base, and CORE; the Base contracts represent only a small subset of the overall project and TVL. Any Base-only contract brief should be labeled as limited coverage and should not imply that total parent-project TVL is secured solely by the listed Base deployments.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 5 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x55506b...735060` | ❓ Unverified |

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
