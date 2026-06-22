# Agentic Audit Brief: AImstrong

⚠️ Lifecycle status: DECLINING - TVL dropped 56.4% over 90 days

## Project Overview

- Project: AImstrong (`aimstrong`)
- Website: [https://www.aimstrong.ai/](https://www.aimstrong.ai/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T13:18:39.219Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, base
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $184.80
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
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x267d6c0eddd8639eeb4d8f2ae3e694884626e546) | proxy | base | unit-39773 | `0x7c9460...c79c0c` | ❓ Unverified |
| Proxy (impl: 0x2ae8095205570d089e6bcaee9d29ce718201f1fe) | proxy | arbitrum | unit-39774 | `0x7c9460...c79c0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://128740385-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FrkrREcPFpTTgFuPim3df%2Fuploads%2FQMwySJTkLhLR3mPixKNw%2Freport-aimstrong-ai.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [The smart contracts powering the AImstrong Omnichain Lending Protocol have been thoroughly audited by Trufy ([trufy.io]()), ensuring security, reliability, and compliance with industry standards.](https://trufy.io/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12627] DL audit link
- [12628] The smart contracts powering the AImstrong Omnichain Lending Protocol have been thoroughly audited by Trufy ([trufy.io]()), ensuring security, reliability, and compliance with industry standards.

Fork inheritance lineage and inherited audits are included when available.
