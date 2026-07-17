# Agentic Audit Brief: Alphix

## Project Overview

- Project: Alphix (`alphix`)
- Website: [https://www.alphix.fi/swap](https://www.alphix.fi/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:00.622Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $299,063.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 33.3% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BugPocer | Tier 2 | 1 | 33.3% | n/a |
| Sherlock | Tier 1 | 1 | 33.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Alphix | unknown | base | n/a | [`0x0e4b892df7c5bcf5010faf4aa106074e555660c0`](./contracts/base-8453/0x0e4b892df7c5bcf5010faf4aa106074e555660c0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphixLVRFee | unknown | base | n/a | [`0x7cbbff9c4fcd74b221c535f4fb4b1db04f1b9044`](./contracts/base-8453/0x7cbbff9c4fcd74b221c535f4fb4b1db04f1b9044/) | ⚠️ Unaudited |
| AlphixPro | unknown | base | n/a | [`0x2f9cf87a6cbfa53c3f1b184900de17298e3f9080`](./contracts/base-8453/0x2f9cf87a6cbfa53c3f1b184900de17298e3f9080/) | ⚠️ Unaudited |

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
| [| Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. |](https://github.com/alphixfi/alphix-core/blob/main/security/2025.12.17-Final-AlphixCollaborativeAuditReport.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | 1 | high |
| [BugPocer_Alphix.pdf](https://github.com/alphixfi/alphix-core/blob/main/security/BugPocer_Alphix.pdf) | BugPocer | Audit | n/a | unknown | Direct | contract_name | 1 | low |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x7cbbff9c4fcd74b221c535f4fb4b1db04f1b9044`](./contracts/base-8453/0x7cbbff9c4fcd74b221c535f4fb4b1db04f1b9044/) | AlphixLVRFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f9cf87a6cbfa53c3f1b184900de17298e3f9080`](./contracts/base-8453/0x2f9cf87a6cbfa53c3f1b184900de17298e3f9080/) | AlphixPro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
