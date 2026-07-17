# Agentic Audit Brief: Bastion

## Project Overview

- Project: Bastion (`bastion`)
- Website: [https://app.bastionprotocol.com/](https://app.bastionprotocol.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.335Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: aurora
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $750,814.46
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
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
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
| EvmErc20 | unknown | aurora | n/a | [`0x9f1f933c660a1dc856f0e0fe058435879c5ccef0`](./contracts/aurora-1313161554/0x9f1f933c660a1dc856f0e0fe058435879c5ccef0/) | ⚠️ Unaudited |

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
| [hackmd.io/@martinetlee/BJUsbPffq](https://hackmd.io/@martinetlee/BJUsbPffq) | Quantstamp | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/drive/folders/1PCXTCpwMe9T4sWKCVqGrOFNqsXhYGR_8](https://drive.google.com/drive/folders/1PCXTCpwMe9T4sWKCVqGrOFNqsXhYGR_8) | Sentnl | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| aurora | [`0x9f1f933c660a1dc856f0e0fe058435879c5ccef0`](./contracts/aurora-1313161554/0x9f1f933c660a1dc856f0e0fe058435879c5ccef0/) | EvmErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21342] hackmd.io/@martinetlee/BJUsbPffq
- [21343] drive.google.com/drive/folders/1PCXTCpwMe9T4sWKCVqGrOFNqsXhYGR_8

Fork inheritance lineage and inherited audits are included when available.
