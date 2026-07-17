# Agentic Audit Brief: Sumer.money

## Project Overview

- Project: Sumer.money (`sumer.money`)
- Website: [https://sumer.money](https://sumer.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.971Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,338,910.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sumer.money is cross-chain synthetic-asset and liquidity infrastructure that supports suTokens such as suETH and suUSD, alongside lending and borrowing markets. Its design includes a correlation-aware risk engine for collateral and liquidity management; any Compound-style lineage should be treated as code/audit-supported context rather than the primary project description.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (0 live, 5 unknown).
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
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
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
| UnnamedContract | unknown | ethereum | n/a | `0x5ee48e2471a8fa4faddff7cbb6fa0489d951f9b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cbb9605f439d5106506259f5b3112801ea18084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc552e5fcdbc1d9f3e8352961d3a1b62e5e34bd79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb4cdda50c1b6b0e33f544c98420722093b7aa88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb2426f277a2d33dab0ce00df4a4d67c46aa5b3f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SumerAuditReportAnciliav1.3.pdf](https://github.com/meterio/sumer-contracts/blob/main/audits/Ancilia/SumerAuditReportAnciliav1.3.pdf) | Ancilia | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [SumerAuditReportAnciliav1.6.pdf](https://github.com/meterio/sumer-contracts/blob/main/audits/Ancilia/SumerAuditReportAnciliav1.6.pdf) | Ancilia | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [SumerMoneyAuditCertik.pdf](https://github.com/meterio/sumer-contracts/blob/main/audits/Certik/SumerMoneyAuditCertik.pdf) | yAudit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2950] SumerAuditReportAnciliav1.3.pdf
- [2951] SumerAuditReportAnciliav1.6.pdf
- [16503] SumerMoneyAuditCertik.pdf

Fork inheritance lineage and inherited audits are included when available.
