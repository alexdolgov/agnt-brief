# Agentic Audit Brief: Sport.fun

## Project Overview

- Project: Sport.fun (`sport.fun`)
- Website: [https://pro.sport.fun/login/?referral_code=UBJWCCSWOVU](https://pro.sport.fun/login/?referral_code=UBJWCCSWOVU)
- Lifecycle: active (Tier 0, 48.6% below peak)
- Generated: 2026-05-24T03:14:00.527Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 1 unique implementations (2 raw deployments)
- DeFi Llama TVL: $3,651,355.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sport.fun is a prediction market protocol on Base that allows users to trade on the outcomes of sports events. It uses a pair-based mechanism where each market is represented by a proxy contract pointing to the FDFPairV3 implementation.

### Architecture

The protocol consists of a single product family with two proxy contracts sharing the same FDFPairV3 implementation, indicating a standardized market structure. No additional infrastructure contracts are present in the inventory.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FDFPairV3 | unknown | base | 2 deployments: base [`0x4fdce0...80585e`](./contracts/base-8453/0x4fdce033b9f30019337ddc5cc028dc023580585e/); base `0x9da1bb...446617` | ⚠️ Unaudited |

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
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
