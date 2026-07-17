# Agentic Audit Brief: Mystic Finance

## Project Overview

- Project: Mystic Finance (`mystic-finance`)
- Website: [https://www.mysticfinance.xyz/](https://www.mysticfinance.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:37.773Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $5,089,033.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mystic Finance is a DeFi lending and money-market protocol that enables users to supply assets, borrow against collateral, access leverage, and participate in curated lending markets.

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
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 5 unknown
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
| UnnamedContract | unknown | ethereum | n/a | `0x0b14d0bdaf647c541d3887c5b1a4bd64068fcda7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2525d453d9ba13921d5ab5d8c12f9202b0e19456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb748a1346820560875cb7a9cd6b46c203230e07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0df5784f28046d11813356919b869dda5815b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbb53aa72c10680e822e255ac70d10f8bb957d64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/mystic-finance](https://hacken.io/audits/mystic-finance) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mystic Finance.pdf](https://github.com/Kann-Audits/Kann-Audits/blob/main/reports/pdf-format/Mystic%20Finance.pdf) | Hacken | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Mystic Finance_v2.pdf](https://github.com/Kann-Audits/Kann-Audits/blob/main/reports/pdf-format/Mystic%20Finance_v2.pdf) | Kann Audits | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1_rKbNL9EFs3KT6x_amWQTyrzlUTvt0R5/view](https://drive.google.com/file/d/1_rKbNL9EFs3KT6x_amWQTyrzlUTvt0R5/view?usp=sharing) | Octane Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1WZ7LJIszm-GOsrHX5-MhIhDLADwSXmzh/view](https://drive.google.com/file/d/1WZ7LJIszm-GOsrHX5-MhIhDLADwSXmzh/view?usp=sharing) | Octane Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1O8Er8ZmVqqSmHuYteDkaBOhh7lBG0uQs/view](https://drive.google.com/file/d/1O8Er8ZmVqqSmHuYteDkaBOhh7lBG0uQs/view?usp=sharing) | Kann Audits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1LerNUP9OjGmfDgyTsr11DxtGMJeCP3dR/view](https://drive.google.com/file/d/1LerNUP9OjGmfDgyTsr11DxtGMJeCP3dR/view?usp=sharing) | Kann Audits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MysticFinance-security-review-2025-12-09.pdf](https://github.com/Kann-Audits/Kann-Audits/blob/main/reports/pdf-format/MysticFinance-security-review-2025-12-09.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [MysticFinance-security-review-2026-02-13.pdf](https://github.com/Kann-Audits/Kann-Audits/blob/main/reports/pdf-format/MysticFinance-security-review-2026-02-13.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [MysticFinance-security-review-2026-05-11.pdf](https://github.com/Kann-Audits/Kann-Audits/blob/main/reports/pdf-format/MysticFinance-security-review-2026-05-11.pdf) | unknown | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2428] hacken.io/audits/mystic-finance
- [2429] Mystic Finance.pdf
- [2430] Mystic Finance_v2.pdf
- [2431] drive.google.com/file/d/1_rKbNL9EFs3KT6x_amWQTyrzlUTvt0R5/view
- [2432] drive.google.com/file/d/1WZ7LJIszm-GOsrHX5-MhIhDLADwSXmzh/view
- [2433] drive.google.com/file/d/1O8Er8ZmVqqSmHuYteDkaBOhh7lBG0uQs/view
- [2434] drive.google.com/file/d/1LerNUP9OjGmfDgyTsr11DxtGMJeCP3dR/view
- [2435] MysticFinance-security-review-2025-12-09.pdf
- [2436] MysticFinance-security-review-2026-02-13.pdf
- [2437] MysticFinance-security-review-2026-05-11.pdf

Fork inheritance lineage and inherited audits are included when available.
