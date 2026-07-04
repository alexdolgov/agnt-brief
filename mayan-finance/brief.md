# Agentic Audit Brief: Mayan Finance

## Project Overview

- Project: Mayan Finance (`mayan-finance`)
- Website: [https://mayan.finance/](https://mayan.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.479Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $123,787.00
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
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
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
| MayanForwarder2 | unknown | ethereum | n/a | [`0x337685...7cc3e2`](./contracts/ethereum-1/0x337685fdab40d39bd02028545a4ffa7d287cc3e2/) | ⚠️ Unaudited |

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
| [Swift v2 Audit](https://mayanintern.github.io/docs/mayan_svm_audit_final.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Otter Sec Audit](https://2301516674-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNGiifMbrcug9ogAfisQY%2Fuploads%2F9YSweDuRP1P28bMmjy63%2FMayan_Audit_OtterSec.pdf) | OtterSec | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [MCTP Audit](https://2301516674-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNGiifMbrcug9ogAfisQY%2Fuploads%2FPxfV4xPmOCVKng8LcjiH%2FMayan_MCTP_Sec3.pdf) | Sec3 | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Swift Audit](https://2301516674-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNGiifMbrcug9ogAfisQY%2Fuploads%2Fz6Gq4wJprv7LomYsQ1LY%2FMayan_Swift_Sec3.pdf) | Sec3 | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x337685...7cc3e2`](./contracts/ethereum-1/0x337685fdab40d39bd02028545a4ffa7d287cc3e2/) | MayanForwarder2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24133] Swift v2 Audit
- [24134] Otter Sec Audit
- [24135] MCTP Audit
- [24136] Swift Audit

Fork inheritance lineage and inherited audits are included when available.
