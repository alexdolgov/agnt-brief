# Agentic Audit Brief: Enjoyoors

## Project Overview

- Project: Enjoyoors (`enjoyoors`)
- Website: [http://enjoyoors.xyz](http://enjoyoors.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:47.451Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $11,256.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 3 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 66.7% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EnjoyoorsVault | core_logic | ethereum | n/a | [`0x59660c...046409`](./contracts/ethereum-1/0x59660cb83da31ec23f9d992c11f80fc527046409/) | ✅ Audited |
| EnjoyoorsWithdrawalApprover | operational_periphery | ethereum | n/a | [`0x8a4e79...8b7c17`](./contracts/ethereum-1/0x8a4e79d2e12d253f6cefec473439b4b0e98b7c17/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenLister | token | ethereum | n/a | [`0x8b3f27...ff7b04`](./contracts/ethereum-1/0x8b3f27ae96c43a301067c77dc445af2299ff7b04/) | ⚠️ Unaudited |

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
| [Enjoyoors Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/Enjoyoors%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Enjoyoors-Audit-Report.pdf](https://movebit.xyz/reports/Enjoyoors-Audit-Report.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Enjoyoors EVM Vaults Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Enjoyoors/EVM%20Vaults/Enjoyoors%20EVM%20Vaults%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [13084] Enjoyoors Smart Contract Audit Report - QuillAudits.pdf
- [13085] Enjoyoors-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
