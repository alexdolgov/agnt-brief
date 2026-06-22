# Agentic Audit Brief: NodeOps

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: NodeOps (`nodeops`)
- Website: [https://nodeops.network/](https://nodeops.network/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T08:40:03.135Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 4 unique implementations (5 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NodeOps is a DePIN protocol that facilitates decentralized node operations and infrastructure services. It enables users to participate in node running and network validation through tokenized access and incentives.

### Architecture

The NodeOps family relies on ERC1967Proxy contracts to provide upgradeable infrastructure for the NODE token. All contracts are deployed from a single deployer cluster, indicating a unified operational structure.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 1/6 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| QuillAudits | Tier 2 | 1 | 33.3% | 2024-12 |
| unknown | Tier 2 | 1 | 33.3% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NODE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3de45d...9e5bd0`](./contracts/ethereum-1/0x3de45d2226bb302fe86dee98a34b2d49729e5bd0/); ethereum `0xa234b8...9b7286` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | ethereum | unit-39448 | [`0x88cd83...c75330`](./contracts/ethereum-1/0x88cd830731eb5140d7fb5354fd6e25dd13c75330/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xa55110...64a122`](./contracts/ethereum-1/0xa5511013ec470292a8035b7ab25baa6f7a64a122/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x6ceee1...c54062` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-06-25 Audit Report - NodeOps Network.pdf](https://github.com/oak-security/audit-reports/blob/main/NodeOps/2025-06-25%20Audit%20Report%20-%20NodeOps%20Network.pdf) | unknown | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [DL audit link](https://www.halborn.com/audits/nodeops) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1mzRyqBnhNraU3CLebJxRU5Qm_ZhGbodo/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NodeOPS Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/NodeOPS%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Zero-match audit list:

- [13583] DL audit link
- [13584] DL audit link

Fork inheritance lineage and inherited audits are included when available.
