# Agentic Audit Brief: Youves

## Project Overview

- Project: Youves (`youves`)
- Website: [https://app.youves.com](https://app.youves.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.756Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-38b2
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $34,673,074.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01f07f...6e1854` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [09212021-LeastAuthority-TezosFoundationSyntheticAssetPlatformSmartContractsFinalAuditReport.pdf](https://github.com/youves-com/youves-smart-contract/blob/main/audits/09212021-LeastAuthority-TezosFoundationSyntheticAssetPlatformSmartContractsFinalAuditReport.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - Ubinetic - Youves engine - v1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20Ubinetic%20%20-%20Youves%20engine%20-%20v1.0.pdf) | Inference AG | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - Ubinetic - Youves flat curve swap - v1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20Ubinetic%20%20-%20Youves%20flat%20curve%20swap%20-%20v1.0.pdf) | Inference AG | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - Ubinetic - Oracle - v1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20Ubinetic%20-%20Oracle%20-%20v1.0.pdf) | Inference AG | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - Youves - DAO - 1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20Youves%20-%20DAO%20-%201.0.pdf) | Inference AG | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - Ubinetic - Checker for Youves - v1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20Ubinetic%20-%20Checker%20for%20Youves%20-%20v1.0.pdf) | Inference AG | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - Ubinetic - Improved Flat Curve for Youves - v1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20Ubinetic%20-%20Improved%20Flat%20Curve%20for%20Youves%20-%20v1.0.pdf) | Inference AG | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Inference AG - TF - stXTZ - v1.0.pdf](https://github.com/InferenceAG/ReportPublications/blob/master/Inference%20AG%20-%20TF%20-%20stXTZ%20-%20v1.0.pdf) | Inference AG | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14162] 09212021-LeastAuthority-TezosFoundationSyntheticAssetPlatformSmartContractsFinalAuditReport.pdf
- [14163] Inference AG - Ubinetic - Youves engine - v1.0.pdf
- [14164] Inference AG - Ubinetic - Youves flat curve swap - v1.0.pdf
- [14165] Inference AG - Ubinetic - Oracle - v1.0.pdf
- [14166] Inference AG - Youves - DAO - 1.0.pdf
- [14167] Inference AG - Ubinetic - Checker for Youves - v1.0.pdf
- [14168] Inference AG - Ubinetic - Improved Flat Curve for Youves - v1.0.pdf
- [14169] Inference AG - TF - stXTZ - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
