# Agentic Audit Brief: Eclipse Bridge

## Project Overview

- Project: Eclipse Bridge (`eclipse-bridge`)
- Website: [https://www.eclipse.xyz](https://www.eclipse.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.324Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $4,747,570.15
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
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 3 stale, 0 unknown
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
| Eclipse | unknown | ethereum | n/a | [`0x6055dc6ff1077eebe5e6d2ba1a1f53d7ef8430de`](./contracts/ethereum-1/0x6055dc6ff1077eebe5e6d2ba1a1f53d7ef8430de/) | ⚠️ Unaudited |

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
| [20240313 - Zellic Audit Report.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240313%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240718%20-%20Ottersec%20-%20Eclipse%20Canonical%20Bridge%20Audit%20-%20final.pdf) | Ottersec | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [20240722 - Halborn - V1 Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240722%20-%20Halborn%20-%20V1%20Audit.pdf) | Halborn | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [20241104 - Ottersec Bridge Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20241104%20-%20Ottersec%20Bridge%20Audit.pdf) | Ottersec | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [20241104 - Zellic Bridge Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20241104%20-%20Zellic%20Bridge%20Audit.pdf) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6055dc6ff1077eebe5e6d2ba1a1f53d7ef8430de`](./contracts/ethereum-1/0x6055dc6ff1077eebe5e6d2ba1a1f53d7ef8430de/) | Eclipse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20343] 20240313 - Zellic Audit Report.pdf
- [20344] 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf
- [20345] 20240722 - Halborn - V1 Audit.pdf
- [20346] 20241104 - Ottersec Bridge Audit.pdf
- [20347] 20241104 - Zellic Bridge Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
