# Agentic Audit Brief: Reppo

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Reppo (`reppo`)
- Website: [https://reppo.xyz/](https://reppo.xyz/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-23T10:46:39.737Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $6,438,351.99
- On-chain TVL (included contracts): $19,774,880.15
- TVL by chain: Base $19,774,880.15

## Project Description

Reppo is a prediction market protocol on Base that enables users to create and trade outcome tokens tied to real-world events. The AgentTokenV2 contract serves as the core token representing positions in these markets.

### Architecture

The protocol consists of a single product family with no additional supporting contracts, indicating a self-contained token contract that handles all prediction market logic.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $19,774,880.15
- Latest audit: 2026-03 (fresh)
- Staleness: 3 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $19,774,880.15 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AgentTokenV2 | token | base | [`0xff8104...8583d6`](./contracts/base-8453/0xff8104251e7761163fac3211ef5583fb3f8583d6/) | ⚠️ Unaudited |

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
| [2025-06-25.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-06-25.pdf) | unknown | Audit | 2025-06 | fresh | Direct | n/a | 0 | n/a |
| [2025-07-15.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-07-15.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2026-03-24.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2026-03-24.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xff8104...8583d6`](./contracts/base-8453/0xff8104251e7761163fac3211ef5583fb3f8583d6/) | AgentTokenV2 | token | $19,774,880.15 | Verified native implementation with $19,774,880.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2257] 2025-06-25.pdf
- [2258] 2025-07-15.pdf
- [2259] 2026-03-24.pdf

Fork inheritance lineage and inherited audits are included when available.
