# Agentic Audit Brief: Marginly

## Project Overview

- Project: Marginly (`marginly`)
- Website: [https://marginly.com](https://marginly.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.432Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, blast, ethereum
- Contract surface: 9 unique implementations (20 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 12 project-authored contract(s) across 2 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 20 (17 live, 3 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/5 (80.0%)
- Deployed-live implementations: 6 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/6
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 9
- Raw deployments: 20
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 66.7% | 2024-04 |
| Quantstamp | Tier 2 | 3 | 50.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MarginlyFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x0721f616a6e2d4d7a47eed87d268bf0454b1d4a5`](./contracts/ethereum-1/0x0721f616a6e2d4d7a47eed87d268bf0454b1d4a5/); ethereum `0xc1ac50d46783387f4236a8364435b5cceadd9fe2`; ethereum `0xf8d88a292b0afa85e5cf0d1195d0d3728cfd7070` | ✅ Audited |
| MarginlyPool | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x34ad008303b2c48668a1d567306cc84f2e753b7f`; ethereum `0x96244d564d5f2661c9a7b653e857246a8311eecb`; arbitrum [`0x0f750fbb044037254b5843c6b4a715aa12876d94`](./contracts/arbitrum-42161/0x0f750fbb044037254b5843c6b4a715aa12876d94/); arbitrum `0x53c08a5e2b7bc973d3d5aee60373969e30e93b93`; arbitrum `0x5ceb22fe09c7259b9dceef243615f180664bce70`; arbitrum `0x87e711bcb9ed1f2f6dec8fcc74cd2e0613d43b86`; blast `0xb312d61915c878938fce09d13dd3006c6835b3e5` | ✅ Audited |
| MarginlyRouter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x47394fa722af686fd9263465c7120f012680cd63`](./contracts/ethereum-1/0x47394fa722af686fd9263465c7120f012680cd63/); ethereum `0x6ec48569a33e9465c5325ff205afa81209c33f31`; ethereum `0xcf33069db942ddcc2f42917f552157249d1223b4` | ✅ Audited |
| PythOracle | unknown | ethereum | n/a | [`0x7988ac69133c5d5e4970476f8d6fcab994230fa0`](./contracts/ethereum-1/0x7988ac69133c5d5e4970476f8d6fcab994230fa0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TimelockController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54da69e2c91a1886fd9c36f0e7f16f015cd052ef`](./contracts/ethereum-1/0x54da69e2c91a1886fd9c36f0e7f16f015cd052ef/); ethereum `0x63de6d2ec4289339569250dc000b658c7f1244c5` | ⚠️ Unaudited |
| TimelockWhitelist | governance | ethereum | n/a | [`0x8cdaf202ebe2f38488074dcfca08c0b0cb7b8aa5`](./contracts/ethereum-1/0x8cdaf202ebe2f38488074dcfca08c0b0cb7b8aa5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x9ffd55a972369283d4b8527b6953d38bb8d67316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcddba9e308a71375fce9abbebace15dbece19958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8ac17f34e6973ede78c884709c49b8b5fd06d3f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Quantstamp-marginly-final-report.pdf](https://github.com/eq-lab/marginly/blob/main/audit/Quantstamp-marginly-final-report.pdf) | Quantstamp | Audit | 2023-10 | stale | Direct | contract_name | 3 | n/a |
| [Marginly-Oracle-Feature-Final-Report.pdf](https://github.com/eq-lab/marginly/blob/main/audit/Marginly-Oracle-Feature-Final-Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [spaces/QiFBW4qPpAjrKQaezZ3s/uploads/44riQdio4FbpMe9uuLzp/marginly-final-report.pdf](https://698120604-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FQiFBW4qPpAjrKQaezZ3s%2Fuploads%2F44riQdio4FbpMe9uuLzp%2Fmarginly-final-report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 13 | high |
| [spaces/QiFBW4qPpAjrKQaezZ3s/uploads/QeydGxQVvNL332dL7Xi2/Marginly Oracle Feature Final Report 2.pdf](https://698120604-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FQiFBW4qPpAjrKQaezZ3s%2Fuploads%2FQeydGxQVvNL332dL7Xi2%2FMarginly%20Oracle%20Feature%20Final%20Report%202.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8cdaf202ebe2f38488074dcfca08c0b0cb7b8aa5`](./contracts/ethereum-1/0x8cdaf202ebe2f38488074dcfca08c0b0cb7b8aa5/) | TimelockWhitelist | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=5, extraction_exact=24

Fork inheritance lineage and inherited audits are included when available.
