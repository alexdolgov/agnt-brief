# Agentic Audit Brief: Fortunafi

## Project Overview

- Project: Fortunafi (`fortunafi`)
- Website: [https://fortunafi.com/](https://fortunafi.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.797Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: blast
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $221,821.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 4 unknown
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
| BlastPoints | unknown | blast | n/a | [`0x45bafa...20589b`](./contracts/blast-81457/0x45bafad5a6a531bc18cf6ce5b02c58ea4d20589b/) | ⚠️ Unaudited |
| OffchainFund | unknown | blast | n/a | [`0x010869...e9beb2`](./contracts/blast-81457/0x010869d79f5f3e4b6d18783ac1acc4e01be9beb2/) | ⚠️ Unaudited |

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
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%252FuV2CWL0AZicnZxx3SgUP%252Fuploads%252FDMjHMORByqrQnWTCL5Rs%252FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt%3Dmedia%26token%3Dbb69023c-f54b-45c7-a44b-5e151002777e) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rebalancer.pdf](https://3705872066-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2F3I0OR2H1J7tydJOHsXKk%2FRebalancer.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audits](https://docs.reservoir.xyz/security-and-compliance/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FDMjHMORByqrQnWTCL5Rs%2FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt=media) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view](https://drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FLNmg84HNDNlNKagf9jLo%2FReservoir%20Protocol%20-%20lz-bridge%20_%20SSC.pdf?alt=media) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FM3Ws9qAexzuISpwSTgFS%2FReservoir%20Protocol%20-%20srusd%20%2B%20Rebalance%20_%20SSC.pdf?alt=media) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20324] docs.google.com/viewerng/viewer
- [20325] Rebalancer.pdf
- [20326] Audits
- [20327] spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [20328] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view
- [20329] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf
- [20330] spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf

Fork inheritance lineage and inherited audits are included when available.
