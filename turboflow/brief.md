# Agentic Audit Brief: TurboFlow

## Project Overview

- Project: TurboFlow (`turboflow`)
- Website: [https://www.tf.xyz/](https://www.tf.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.519Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: bsc
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $2,177,871.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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
| ProxyAdmin | governance | bsc | n/a | [`0xcd43379650cfe58ff73a1db0bdfa2863cd8afbcb`](./contracts/bsc-56/0xcd43379650cfe58ff73a1db0bdfa2863cd8afbcb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x145cd0d5c3dd0ef1405dcf1b4d2bce7c611625db`](./contracts/bsc-56/0x145cd0d5c3dd0ef1405dcf1b4d2bce7c611625db/); bsc `0xa8fa31388d7d9a02450a943f486bbea3b4b60bc1` | ⚠️ Unaudited |

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
| [Turboflow_202510271213.pdf](https://beosin.com/audits/Turboflow_202510271213.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14043] Turboflow_202510271213.pdf

Fork inheritance lineage and inherited audits are included when available.
