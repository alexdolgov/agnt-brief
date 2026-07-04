# Agentic Audit Brief: Metis Bridge

## Project Overview

- Project: Metis Bridge (`metis-bridge`)
- Website: [https://bridge.metis.io/home](https://bridge.metis.io/home)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:25.818Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $25,148,876.25
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
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
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
| MToken | unknown | ethereum | n/a | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1d6tjopE25mN50ByLacX8IpoIuWSGKwQ8/view](https://drive.google.com/file/d/1d6tjopE25mN50ByLacX8IpoIuWSGKwQ8/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1yv_PBW-hanMoB50gan4zB2QKsEKNxyOO/view](https://drive.google.com/file/d/1yv_PBW-hanMoB50gan4zB2QKsEKNxyOO/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view](https://drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMkexAWdCekeDPPCMOdGs%2Fuploads%2F9VWYLfEEmUHQSTuVyMnV%2FMetisDAO%20Foundation_08092022_SCAudit_Report%20(2).pdf?alt=media) | yAudit | Audit | 2022 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20834] drive.google.com/file/d/1d6tjopE25mN50ByLacX8IpoIuWSGKwQ8/view
- [20835] drive.google.com/file/d/1yv_PBW-hanMoB50gan4zB2QKsEKNxyOO/view
- [20836] drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view
- [20837] spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf

Fork inheritance lineage and inherited audits are included when available.
