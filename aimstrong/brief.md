# Agentic Audit Brief: AImstrong

⚠️ Lifecycle status: DECLINING - TVL dropped 57.3% over 90 days

## Project Overview

- Project: AImstrong (`aimstrong`)
- Website: [https://www.aimstrong.ai/](https://www.aimstrong.ai/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:58.106Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, base, bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $178.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (0 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
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

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x267d6c0eddd8639eeb4d8f2ae3e694884626e546) | proxy | base | n/a | `0x7c9460...c79c0c` | ❓ Unverified |
| Proxy (impl: 0x2ae8095205570d089e6bcaee9d29ce718201f1fe) | proxy | arbitrum | n/a | `0x7c9460...c79c0c` | ❓ Unverified |
| Proxy (impl: 0xb265e9785d0cf2c2d88581d841e49338387da51f) | proxy | bsc | n/a | `0xa0a61c...0d929f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x183514...35801d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1de70f...7fb677` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa614ae...407f1d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/rkrREcPFpTTgFuPim3df/uploads/QMwySJTkLhLR3mPixKNw/report-aimstrong-ai.pdf](https://128740385-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FrkrREcPFpTTgFuPim3df%2Fuploads%2FQMwySJTkLhLR3mPixKNw%2Freport-aimstrong-ai.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [trufy.io](https://trufy.io/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12627] spaces/rkrREcPFpTTgFuPim3df/uploads/QMwySJTkLhLR3mPixKNw/report-aimstrong-ai.pdf
- [12628] trufy.io

Fork inheritance lineage and inherited audits are included when available.
