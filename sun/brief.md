# Agentic Audit Brief: SUN

## Project Overview

- Project: SUN (`sun`)
- Website: [https://sun.io](https://sun.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.009Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: arbitrum, bsc, ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $308,617,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Safe | unknown | ethereum | n/a | [`0xa9c99a...ebeb1e`](./contracts/ethereum-1/0xa9c99a9f70ccf9fcd23fc05f1ebdc76040ebeb1e/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xa9c99a...ebeb1e`](./contracts/bsc-56/0xa9c99a9f70ccf9fcd23fc05f1ebdc76040ebeb1e/); arbitrum [`0xa9c99a...ebeb1e`](./contracts/arbitrum-42161/0xa9c99a9f70ccf9fcd23fc05f1ebdc76040ebeb1e/) | ⚠️ Unaudited |

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
| [audit-report-sun_en.pdf](https://sun.io/docs/audit-report-sun_en.pdf) | unknown | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [audit-report_en.pdf](https://sunswap.com/docs/audit-report_en.pdf) | unknown | Audit | 2020-08 | stale | Direct | n/a | 0 | n/a |
| [Sunperp Dex - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sunperp%20Dex%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13943] audit-report-sun_en.pdf
- [13944] audit-report_en.pdf
- [13945] Sunperp Dex - SlowMist Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
