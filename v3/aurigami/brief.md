# Agentic Audit Brief: Aurigami

⚠️ Lifecycle status: DEAD - TVL changed 9.4% over 90 days

## Project Overview

- Project: Aurigami (`aurigami`)
- Website: [https://www.aurigami.finance](https://www.aurigami.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-03T21:05:31.892Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: aurora, ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $772,292.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EvmErc20 | token | aurora | n/a | 2 deployments: aurora [`0x09c9d4...8d3a4f`](./contracts/aurora-1313161554/0x09c9d464b58d96837f8d8b6f4d9fe4ad408d3a4f/); aurora `0x3d4205...bb7980` | ⚠️ Unaudited |
| Ply | unknown | ethereum | n/a | [`0x1ab432...2ef90b`](./contracts/ethereum-1/0x1ab43204a195a0fd37edec621482afd3792ef90b/) | ⚠️ Unaudited |

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
| [Aurigami_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/Aurigami-Finance/aurigami-smart-contracts/blob/main/docs/Aurigami_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [www.watchpug.org](https://www.watchpug.org/) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12702] Aurigami_Finance_Audit_Report_by_WatchPug.pdf
- [12703] www.watchpug.org

Fork inheritance lineage and inherited audits are included when available.
