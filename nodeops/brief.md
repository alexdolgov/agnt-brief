# Agentic Audit Brief: NodeOps

## Project Overview

- Project: NodeOps (`nodeops`)
- Website: [https://nodeops.network/](https://nodeops.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.780Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 9 unique implementations (17 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DePIN. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 15 (11 live, 4 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 8 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 9
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| QuillAudits | Tier 2 | 1 | 12.5% | 2024-12 |
| unknown | Tier 2 | 1 | 12.5% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NODE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3de45d2226bb302fe86dee98a34b2d49729e5bd0`](./contracts/ethereum-1/0x3de45d2226bb302fe86dee98a34b2d49729e5bd0/); ethereum `0xa234b8924bb2707195664e4c4cf17668db9b7286` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x015520df75ea6afc8065fc864d196ff5b6f3f66b`](./contracts/ethereum-1/0x015520df75ea6afc8065fc864d196ff5b6f3f66b/); ethereum `0xa741c2c997353607ab69e4b0d1d45e6e3d05deba` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1bce1330e93d08f2996fdaed23a9168b9e3ed090`](./contracts/ethereum-1/0x1bce1330e93d08f2996fdaed23a9168b9e3ed090/); ethereum `0x6ae55195e51ccb5907a90cf0bd742ca0a84b2a82`; ethereum `0xcba485746fe9a96e56f264c750c4025b135129df`; ethereum `0xcdfc2cc484e5cf5669d34ba44260c83c4279f7b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b7c37e3ed1fe86cec521a271dc54c5ad8c1356c`](./contracts/ethereum-1/0x3b7c37e3ed1fe86cec521a271dc54c5ad8c1356c/); ethereum `0xa32f9a1a9628dada0d7a35098bc75b7871a90269` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x88cd830731eb5140d7fb5354fd6e25dd13c75330`](./contracts/ethereum-1/0x88cd830731eb5140d7fb5354fd6e25dd13c75330/) | ⚠️ Unaudited |
| NODE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f714d7b9a035d4ce24af8d9b6091c07e37f43fb`](./contracts/ethereum-1/0x2f714d7b9a035d4ce24af8d9b6091c07e37f43fb/); ethereum `0x41d0b9dfbf915a77e6db1c1880c4d3b4f27a9b77` | ⚠️ Unaudited |
| NodeOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a36a91a660c3de86fde482dc78629609b6f2056`](./contracts/ethereum-1/0x3a36a91a660c3de86fde482dc78629609b6f2056/); ethereum `0xa516f018d5ac6d086a04bbb1a8ecb00eb61a970a` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xa5511013ec470292a8035b7ab25baa6f7a64a122`](./contracts/ethereum-1/0xa5511013ec470292a8035b7ab25baa6f7a64a122/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x6ceee1d9149fc0b878a12bbdc5cc577f49c54062` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-06-25 Audit Report - NodeOps Network.pdf](https://github.com/oak-security/audit-reports/blob/main/NodeOps/2025-06-25%20Audit%20Report%20-%20NodeOps%20Network.pdf) | unknown | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |
| [www.halborn.com/audits/nodeops](https://www.halborn.com/audits/nodeops) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1mzRyqBnhNraU3CLebJxRU5Qm_ZhGbodo/view](https://drive.google.com/file/d/1mzRyqBnhNraU3CLebJxRU5Qm_ZhGbodo/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NodeOPS Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/NodeOPS%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2f714d7b9a035d4ce24af8d9b6091c07e37f43fb`](./contracts/ethereum-1/0x2f714d7b9a035d4ce24af8d9b6091c07e37f43fb/) | NODE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a36a91a660c3de86fde482dc78629609b6f2056`](./contracts/ethereum-1/0x3a36a91a660c3de86fde482dc78629609b6f2056/) | NodeOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [13583] www.halborn.com/audits/nodeops
- [13584] drive.google.com/file/d/1mzRyqBnhNraU3CLebJxRU5Qm_ZhGbodo/view

Fork inheritance lineage and inherited audits are included when available.
