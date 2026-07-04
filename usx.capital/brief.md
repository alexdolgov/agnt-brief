# Agentic Audit Brief: USX.Capital

## Project Overview

- Project: USX.Capital (`usx.capital`)
- Website: [https://www.usx.capital/home](https://www.usx.capital/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:04.184Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: scroll
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $762,702.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (0 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | scroll | n/a | 4 deployments: scroll [`0x3b005f...a4cf03`](./contracts/scroll-534352/0x3b005fefc63ca7c8d25ee21fba3787229ba4cf03/); scroll `0x9f3d4b...0e4c35`; scroll `0xcb14bc...c7f922`; scroll `0xd16909...f0d300` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | scroll | n/a | [`0xd39df2...e8a8ad`](./contracts/scroll-534352/0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad/) | ⚠️ Unaudited |
| SafeProxy | unknown | scroll | n/a | [`0xd09e95...848f65`](./contracts/scroll-534352/0xd09e956353fc641792a0f1a7d748773358848f65/) | ⚠️ Unaudited |

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
| [docs.blend.money/resources/audits](https://docs.blend.money/resources/audits) | yAudit | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
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

- [11712] docs.blend.money/resources/audits

Fork inheritance lineage and inherited audits are included when available.
