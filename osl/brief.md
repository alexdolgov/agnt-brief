# Agentic Audit Brief: OSL

## Project Overview

- Project: OSL (`osl`)
- Website: [https://www.osl.com/en](https://www.osl.com/en)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.172Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: scroll
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $19,582,590.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OSL is a regulated centralized digital asset exchange and digital asset payments/infrastructure provider. The four listed Scroll addresses are an incomplete, unknown-role on-chain surface and should not be characterized as facilitating OSL's core centralized exchange operations or representing the full multi-chain OSL/DefiLlama reserve surface without further verification.

### Architecture

All contracts belong to a single product family with no explicit sub-families or shared infrastructure identified; they likely interact directly to facilitate exchange operations.

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
| UnnamedContract | unknown | scroll | n/a | `0x136848...ea11ce` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x14dc2b...91b15e` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x19c8ed...9f6175` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xa853b3...02efc6` | ❓ Unverified |

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
