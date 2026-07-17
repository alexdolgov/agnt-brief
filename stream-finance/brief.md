# Agentic Audit Brief: Stream Finance

## Project Overview

- Project: Stream Finance (`stream-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.950Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 4 unique implementations (26 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 6 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (oft). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 26 (25 live, 1 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StableWrapper | unknown | ethereum | n/a | 5 deployments: ethereum [`0x05f47d7cbb0f3d7f988e442e8c1401685d2cabe0`](./contracts/ethereum-1/0x05f47d7cbb0f3d7f988e442e8c1401685d2cabe0/); ethereum `0x2ca4408c2c6d75aecdc708b04f28ec15d31ab8cb`; ethereum `0x6eaf19b2fc24552925db245f9ff613157a7dbb4c`; ethereum `0xdcfd98a5681722df0d93fc11b9205f757576a427`; ethereum `0xf70f54cefdcd3c8f011865685ff49fb80a386a34` | ✅ Audited |
| StreamVault | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x12fd502e2052cafb41eccc5b596023d9978057d6`](./contracts/ethereum-1/0x12fd502e2052cafb41eccc5b596023d9978057d6/); ethereum `0x2a0a0919bab77fa74bc7ccd3eeec06fc08dfdee0`; ethereum `0x2a2f84e9afe7b39146cdaf068b06b84ee23892c2`; ethereum `0x350fa4016e5bb6d6ee5707505defe127607a916a`; ethereum `0x6efa12b38038a6249b7abdd5a047d211fb0ad48e`; ethereum `0x7e586fbaf3084c0be7ab5c82c04ffd7592723153`; ethereum `0x8a31d2d10f34aaf24a2c48713e213266bc01c68b`; ethereum `0x9e0bbbe43eb27dd0d6e02b25784df9f110476984`; ethereum `0xa791082be08b890792c558f1292ac4a2dad21920`; ethereum `0xae2e5fa6edbb5266ec150b4d4d2f875c1dc8d749`; ethereum `0xc15697f61170fc3bb4e99eb7913b4c7893f64f13`; ethereum `0xe2fc85bfb48c4cf147921fbe110cf92ef9f26f94`; ethereum `0xf3b466f09ef476e311ce275407cfb09a8d8de3a7` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultKeeper | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0735ebeec9dd125cce45c2f354883ed9e7d33bfc`](./contracts/ethereum-1/0x0735ebeec9dd125cce45c2f354883ed9e7d33bfc/); ethereum `0x642f0d57479f059efa32e9a886a86ed65a58f5e7`; ethereum `0x66b9ff597dd5f32a3460611d42695fb2d52e4e7c`; ethereum `0x7012daab8d34a6f415b2eaac3b75565592d1b09e`; ethereum `0x80ca285b0d3d42fb3a3d6ffca8df70d79c385d43`; ethereum `0x84acf9bce2b9ca1b8304da9af1fab71caa4f0637`; ethereum `0xdffb08c3366854b7bacfd6281757f9cda152994c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x4d48748b0726fc4a292f93260717d6b92720af5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zenith Audit Report - Stream Protocol.pdf](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Stream%20Protocol.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0735ebeec9dd125cce45c2f354883ed9e7d33bfc`](./contracts/ethereum-1/0x0735ebeec9dd125cce45c2f354883ed9e7d33bfc/) | VaultKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
