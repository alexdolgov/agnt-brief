# Agentic Audit Brief: Solera

## Project Overview

- Project: Solera (`solera`)
- Website: [https://app.solera.market/](https://app.solera.market/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.483Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $6,827,216.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Solera is a lending and credit hub with RWA-focused vault interfaces and live Earn/Borrow products, powered in part by Morpho and Gauntlet infrastructure.

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
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
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

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x05c2e246156d37b39a825a25dd08d5589e3fd883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b14d0bdaf647c541d3887c5b1a4bd64068fcda7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2525d453d9ba13921d5ab5d8c12f9202b0e19456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7db73f80a173c31a1241bf97f4452a07e443c6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb748a1346820560875cb7a9cd6b46c203230e07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0df5784f28046d11813356919b869dda5815b16` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/xnKyOKJHYcrZeGHpRuHg/uploads/LPus8JS8WGA5412Nf2eH/Solera - Zenith Audit Report - 12-18-2024.pdf](https://2550339912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FxnKyOKJHYcrZeGHpRuHg%2Fuploads%2FLPus8JS8WGA5412Nf2eH%2FSolera%20-%20Zenith%20Audit%20Report%20-%2012-18-2024.pdf) | Zenith | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [spaces/xnKyOKJHYcrZeGHpRuHg/uploads/tSEQnq1GRItGbgiUcoFm/Solera - Zellic Audit Report - 02-04-2025.pdf](https://2550339912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FxnKyOKJHYcrZeGHpRuHg%2Fuploads%2FtSEQnq1GRItGbgiUcoFm%2FSolera%20-%20Zellic%20Audit%20Report%20-%2002-04-2025.pdf) | Zellic | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [spaces/xnKyOKJHYcrZeGHpRuHg/uploads/4UT7XaqETfzun5TSBrKU/Solera - Zellic Audit Report - 05-19-2025.pdf](https://2550339912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FxnKyOKJHYcrZeGHpRuHg%2Fuploads%2F4UT7XaqETfzun5TSBrKU%2FSolera%20-%20Zellic%20Audit%20Report%20-%2005-19-2025.pdf) | Zellic | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2138] spaces/xnKyOKJHYcrZeGHpRuHg/uploads/LPus8JS8WGA5412Nf2eH/Solera - Zenith Audit Report - 12-18-2024.pdf
- [2139] spaces/xnKyOKJHYcrZeGHpRuHg/uploads/tSEQnq1GRItGbgiUcoFm/Solera - Zellic Audit Report - 02-04-2025.pdf
- [2140] spaces/xnKyOKJHYcrZeGHpRuHg/uploads/4UT7XaqETfzun5TSBrKU/Solera - Zellic Audit Report - 05-19-2025.pdf

Fork inheritance lineage and inherited audits are included when available.
