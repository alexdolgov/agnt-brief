# Agentic Audit Brief: Printr

## Project Overview

- Project: Printr (`printr`)
- Website: [https://www.printr.money/](https://www.printr.money/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:43.556Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: mantle
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $131,260.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PrintrProxy | unknown | mantle | n/a | [`0xb77726...243172`](./contracts/mantle-5000/0xb77726291b125515d0a7affeea2b04f2ff243172/) | ⚠️ Unaudited |

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
| [ackee-blockchain-printr-protocol-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-printr-protocol-report.pdf) | Ackee Blockchain Security | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [ackee-blockchain-printr-protocol-report-rev.2.2.pdf](https://3159715523-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBqgUMNkX5OgdF7BaqREa%2Fuploads%2FtOKFevMbiGfJhQK6oyXS%2Fackee-blockchain-printr-protocol-report-rev.2.2.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ackee-blockchain-printr-omnichain-token-launchpad-report.pdf](https://3159715523-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBqgUMNkX5OgdF7BaqREa%2Fuploads%2FWWUwR7setfzuisJmAoGe%2Fackee-blockchain-printr-omnichain-token-launchpad-report.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21436] ackee-blockchain-printr-protocol-report.pdf
- [24351] ackee-blockchain-printr-protocol-report-rev.2.2.pdf
- [24352] ackee-blockchain-printr-omnichain-token-launchpad-report.pdf

Fork inheritance lineage and inherited audits are included when available.
