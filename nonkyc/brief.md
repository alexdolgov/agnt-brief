# Agentic Audit Brief: NonKYC

## Project Overview

- Project: NonKYC (`nonkyc`)
- Website: [https://nonkyc.io](https://nonkyc.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.805Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,265,941.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NonKYC is primarily a centralized/no-KYC cryptocurrency exchange. The four recorded EVM accounts on Ethereum, Optimism, Base, and Arbitrum One should be treated as unverified, unknown-role, very-small-code accounts unless their exact role is documented; they should not be inferred to implement exchange trading logic or to represent the complete CEX reserve/TVL surface.

### Architecture

Only one product family is identified, with four unnamed contracts at the same address, likely representing a single exchange contract or a set of related functions. No shared infrastructure or inter-family relationships are evident.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (0 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
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
| UnnamedContract | unknown | ethereum | n/a | `0x5d738fbf1d8940bbe72af847d88c517064de76e7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d738fbf1d8940bbe72af847d88c517064de76e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d738fbf1d8940bbe72af847d88c517064de76e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d738fbf1d8940bbe72af847d88c517064de76e7` | ❓ Unverified |

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
