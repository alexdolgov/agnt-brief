# Agentic Audit Brief: NonKYC

## Project Overview

- Project: NonKYC (`nonkyc`)
- Website: [https://nonkyc.io](https://nonkyc.io)
- Lifecycle: active (Tier 0, 72.7% below peak)
- Generated: 2026-06-17T07:00:52.212Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,365,294.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NonKYC is primarily a centralized/no-KYC cryptocurrency exchange. The four recorded EVM accounts on Ethereum, Optimism, Base, and Arbitrum One should be treated as unverified, unknown-role, very-small-code accounts unless their exact role is documented; they should not be inferred to implement exchange trading logic or to represent the complete CEX reserve/TVL surface.

### Architecture

Only one product family is identified, with four unnamed contracts at the same address, likely representing a single exchange contract or a set of related functions. No shared infrastructure or inter-family relationships are evident.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5d738f...de76e7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d738f...de76e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d738f...de76e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d738f...de76e7` | ❓ Unverified |

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
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
