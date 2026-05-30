# Agentic Audit Brief: Kava Earn

⚠️ Lifecycle status: DECLINING - TVL changed 23.1% over 90 days

## Project Overview

- Project: Kava Earn (`kava-earn`)
- Website: [https://app.kava.io/home](https://app.kava.io/home)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-30T20:51:32.378Z
- Pipeline run: v2-pipeline-2026-05-30-9de83b-6726
- Chains: kava
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,568,529.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kava Earn is a yield aggregator on the Kava chain that optimizes user deposits across various DeFi strategies to maximize returns.

### Architecture

Only one contract is identified, so no inter-family relationships exist. The single contract likely handles all deposit, withdrawal, and strategy management functions.

## Fork Lineage

This project is a code fork of **Kava Mint** (`kava-mint`).
2 audits are inherited from this parent project.

Total inherited audits: 2.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | kava | `0xa8e48f...49fc1f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [proto-docs.md](https://github.com/kava-labs/kava/blob/master/docs/core/proto-docs.md) | unknown | Audit | n/a | unknown | Inherited from Kava Mint | n/a | 0 | n/a |
| [skynet.certik.com/projects/kava](https://skynet.certik.com/projects/kava) | CertiK | Audit | 2021-09 | stale | Inherited from Kava Mint | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11491] proto-docs.md
- [11492] skynet.certik.com/projects/kava

Fork inheritance lineage and inherited audits are included when available.
