# Agentic Audit Brief: The Parallel

## Project Overview

- Project: The Parallel (`the-parallel`)
- Website: [https://theparallel.io](https://theparallel.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.379Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 46 unique implementations (46 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 46 (3 live, 43 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ParallelToken | token | bsc | n/a | [`0xd07e82...4f8b24`](./contracts/bsc-56/0xd07e82440a395f3f3551b42da9210cd1ef4f8b24/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DMMPool | core_logic | bsc | n/a | [`0x3e95e0...3f7c57`](./contracts/bsc-56/0x3e95e07550e9798272130ab65b58f2f17b3f7c57/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xb5feae...f4fa0e`](./contracts/bsc-56/0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x098460...4c7636` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b1bc2...aae048` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d18c6...b1f20f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15b22d...8a5bb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d139c...2ded1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d7f02...882c5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8251...e06cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21efc3...924785` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b8828...7d0deb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fdc0b...c681e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37214a...086020` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ec78d...e8d766` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x406020...8ba356` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43b1a8...794a0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ba246...39a137` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c0e69...06a0f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a7dd9...7716dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b3820...5fc7cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64c003...8a71c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b0cd6...20b1e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3c74...9cd880` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70ab3e...10d7dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bdd07...73b727` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x887972...266caa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fb2a6...0de7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94ede2...9458a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96526a...368770` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad0da...6c04dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b22b6...f6d5b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bf607...32be7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa31feb...0e2ba4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6a520...bdfeb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf09de...433b1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb45e62...fa7ba5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdc021...092aeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf8b40...65884e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfdf2c...97465f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce6c22...330015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd99268...489dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcd450...f207f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0414b...e31912` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe103e1...476bf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6c683...9eae95` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Public Audit Report - TheParallel - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20TheParallel%20-%20v1.1.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3e95e0...3f7c57`](./contracts/bsc-56/0x3e95e07550e9798272130ab65b58f2f17b3f7c57/) | DMMPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5feae...f4fa0e`](./contracts/bsc-56/0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
