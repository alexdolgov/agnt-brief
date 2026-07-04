# Agentic Audit Brief: Hypertrade

## Project Overview

- Project: Hypertrade (`hypertrade`)
- Website: [https://ht.xyz?referral=defillama](https://ht.xyz?referral=defillama)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.814Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $97,538.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 0 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (0 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1cd836...c943bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23e3bf...1827fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35c36c...d67fdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b6ac7...7f6573` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6646e5...7f724f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6df4e1...f661c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x705d1a...f41c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73aa77...094453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf56b42...2f8077` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bailsec - Hypertrade - V3 Core - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Hypertrade%20-%20V3%20Core%20-%20Final%20Report.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13261] Bailsec - Hypertrade - V3 Core - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
