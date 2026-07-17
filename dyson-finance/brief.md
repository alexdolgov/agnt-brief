# Agentic Audit Brief: Dyson Finance

## Project Overview

- Project: Dyson Finance (`dyson-finance`)
- Website: [https://dyson.finance/](https://dyson.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.316Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: blast, polygon-zkevm
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $78,865.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (4 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 4 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 75.0% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DYSON | unknown | blast | n/a | [`0x9cbd81b43ba263ca894178366cfb89a246d1159c`](./contracts/blast-81457/0x9cbd81b43ba263ca894178366cfb89a246d1159c/) | ✅ Audited |
| Router | adapter | blast | n/a | [`0xada6e69781399990d42becb1a9427955ffa73bdc`](./contracts/blast-81457/0xada6e69781399990d42becb1a9427955ffa73bdc/) | ✅ Audited |
| sDYSON | unknown | blast | n/a | [`0x8813b3eeb279a43ac89e502e6fbe0ec89170c088`](./contracts/blast-81457/0x8813b3eeb279a43ac89e502e6fbe0ec89170c088/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| sDYSONAirdrop | unknown | blast | n/a | [`0xacd1aa2a3f5a8e7e19ecd0dceb97b869ca2a4e30`](./contracts/blast-81457/0xacd1aa2a3f5a8e7e19ecd0dceb97b869ca2a4e30/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | 2 deployments: polygon-zkevm `0x51a0d4b81400581d8722627dafcd0c1ff9357d1d`; polygon-zkevm `0x9cbd81b43ba263ca894178366cfb89a246d1159c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Dyson Finance Audit Report_2023.pdf](https://github.com/DysonFinance/dyson-audit-reports/blob/main/Dyson%20Finance%20Audit%20Report_2023.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 3 | n/a |
| [Dyson Finance Audit - October '22.pdf](https://github.com/DysonFinance/dyson-audit-reports/blob/main/Dyson%20Finance%20Audit%20-%20October%20'22.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 2 | n/a |
| [dyson-audit-reports (GitHub directory)](https://github.com/DysonFinance/dyson-audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xacd1aa2a3f5a8e7e19ecd0dceb97b869ca2a4e30`](./contracts/blast-81457/0xacd1aa2a3f5a8e7e19ecd0dceb97b869ca2a4e30/) | sDYSONAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Zero-match audit list:

- [13071] dyson-audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
