# Agentic Audit Brief: Zero-G Finance

## Project Overview

- Project: Zero-G Finance (`zero-g-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.795Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,671.81
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
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| XERC20Lockbox | token | ethereum | n/a | [`0x742b5cb1a6a10e568a79d70ef77b542663ed3e1a`](./contracts/ethereum-1/0x742b5cb1a6a10e568a79d70ef77b542663ed3e1a/) | ⚠️ Unaudited |

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
| [spaces/4w8NVgxoxCW85tWNVjPS/uploads/Ef21cG5o3bztzaZqrW7M/Zero-G Finance - Security Review - SBSecurity.pdf](https://2429366836-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4w8NVgxoxCW85tWNVjPS%2Fuploads%2FEf21cG5o3bztzaZqrW7M%2FZero-G%20Finance%20-%20Security%20Review%20-%20SBSecurity.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x742b5cb1a6a10e568a79d70ef77b542663ed3e1a`](./contracts/ethereum-1/0x742b5cb1a6a10e568a79d70ef77b542663ed3e1a/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14171] spaces/4w8NVgxoxCW85tWNVjPS/uploads/Ef21cG5o3bztzaZqrW7M/Zero-G Finance - Security Review - SBSecurity.pdf

Fork inheritance lineage and inherited audits are included when available.
