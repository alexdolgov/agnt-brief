# Agentic Audit Brief: Belief Market

⚠️ Lifecycle status: UNKNOWN - TVL changed 771.4% over 90 days

## Project Overview

- Project: Belief Market (`belief-market`)
- Website: [https://www.belief.market/](https://www.belief.market/)
- Lifecycle: unknown (Tier 0, 59.6% below peak)
- Generated: 2026-07-04T14:53:05.409Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $395.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WeightedParimutuelMarkets | unknown | bsc | n/a | [`0xab1fb9b0efa9235aff385639611cb1bbbbcc3b40`](./contracts/bsc-56/0xab1fb9b0efa9235aff385639611cb1bbbbcc3b40/) | ✅ Audited |

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
| UnnamedContract | unknown | bsc | n/a | `0x5035608222e1c226781caa22fe40d0db6cc6c119` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [4-1-25-Belief-Market-Report.pdf](https://static1.squarespace.com/static/6747d433fe14856edb4bb8cf/t/67fc98e80185f366ca14ad66/1756149856695/4-1-25-Belief-Market-Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Ubet+UBucks+Audit+Report.pdf](https://static1.squarespace.com/static/6747d433fe14856edb4bb8cf/t/67fc8da3e42cb86797670cd1/1756149856695/Ubet+UBucks+Audit+Report.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Ubet+Parlay+Audit+Report.pdf](https://static1.squarespace.com/static/6747d433fe14856edb4bb8cf/t/67fc90fbb3bf0e00b943845b/1756149856695/Ubet+Parlay+Audit+Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Ubet+Audit+Report+6-12-24+(1).pdf](https://static1.squarespace.com/static/6747d433fe14856edb4bb8cf/t/67fc8dc9b3bf0e00b94350ee/1756149856695/Ubet+Audit+Report+6-12-24+%281%29.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Ubet+Audit+Report.pdf](https://static1.squarespace.com/static/6747d433fe14856edb4bb8cf/t/67fc90b37872ea0d2a8ae2d7/1756149856695/Ubet+Audit+Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit_Report_UBET-SBP_FINAL_20+(1).pdf](https://static1.squarespace.com/static/6747d433fe14856edb4bb8cf/t/67fc8f8eca75090c5568bf26/1756149856695/Audit_Report_UBET-SBP_FINAL_20%2B%281%29.pdf) | resonance | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [12758] Ubet+UBucks+Audit+Report.pdf
- [12759] Ubet+Parlay+Audit+Report.pdf
- [12760] Ubet+Audit+Report+6-12-24+(1).pdf
- [12761] Ubet+Audit+Report.pdf
- [12762] Audit_Report_UBET-SBP_FINAL_20+(1).pdf

Fork inheritance lineage and inherited audits are included when available.
