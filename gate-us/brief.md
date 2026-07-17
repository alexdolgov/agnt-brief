# Agentic Audit Brief: Gate US

## Project Overview

- Project: Gate US (`gate-us`)
- Website: [https://www.gate.com/en-us](https://www.gate.com/en-us)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.443Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: chain-200, cronos, klaytn, manta, metis, scroll, sei
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $48,006,867.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gate US is a centralized exchange (CEX) that provides trading and custody services for digital assets across multiple blockchain networks.

### Architecture

All contracts belong to a single product family with no shared infrastructure or dependencies visible beyond the centralized exchange operations.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (0 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0xfc89c020774524c9d03bd5de48fec149b10bdec3` | ❓ Unverified |
| UnnamedContract | unknown | chain-200 | n/a | 5 deployments: cronos `0xfc89c020774524c9d03bd5de48fec149b10bdec3`; chain-200 `0x1699db45dc502a0395038265fcbc4fa05d6affbd`; chain-200 `0x67c30f439d7734f393c2f4a587b198b8f4086ccb`; chain-200 `0xe74ac03a2d34a9cece0a6547b1758c7a8fa10230`; klaytn `0xfc89c020774524c9d03bd5de48fec149b10bdec3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfc89c020774524c9d03bd5de48fec149b10bdec3` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xfc89c020774524c9d03bd5de48fec149b10bdec3` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfc89c020774524c9d03bd5de48fec149b10bdec3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Gate PoR Implementation](https://gimg.staticimgs.com/PoR/Gate.io%20PoR%20Implementation%205.01.2023.pdf) | unknown | Audit | 2023 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20442] Gate PoR Implementation

Fork inheritance lineage and inherited audits are included when available.
