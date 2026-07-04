# Agentic Audit Brief: Sirius Finance

## Project Overview

- Project: Sirius Finance (`sirius-finance`)
- Website: [https://www.sirius.finance](https://www.sirius.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.351Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $7,249.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 0 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (0 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
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

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x290c75...1938fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x417e9d...27f333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46f63e...ceb950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x944861...ca4838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa82222...32ff67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaeaaf0...f0f720` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9d383...0b6397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd18abe...bdb176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8bc54...89f9e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed6e10...5f8266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeea640...ac01e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff3909...60f2cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SiriusFinance-v1.0.pdf](https://github.com/SiriusFinance/siriusfinance-contract/blob/main/audit/PeckShield-Audit-Report-SiriusFinance-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [audit (GitHub directory)](https://github.com/SiriusFinance/siriusfinance-contract/tree/main/audit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - Sirius finance.pdf](https://github.com/SiriusFinance/siriusfinance-contract/blob/main/audit/SlowMist%20Audit%20Report%20-%20Sirius%20finance.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13840] PeckShield-Audit-Report-SiriusFinance-v1.0.pdf
- [13841] audit (GitHub directory)
- [13842] SlowMist Audit Report - Sirius finance.pdf

Fork inheritance lineage and inherited audits are included when available.
