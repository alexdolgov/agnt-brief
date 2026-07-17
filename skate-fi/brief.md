# Agentic Audit Brief: Skate Fi

## Project Overview

- Project: Skate Fi (`skate-fi`)
- Website: [https://www.rangeprotocol.com](https://www.rangeprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.374Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum, manta, mantle
- Contract surface: 7 unique implementations (17 raw deployments)
- DeFi Llama TVL: $118,981.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 10 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (ownableupgradeable, rangeprotocolvaultstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 17 (15 live, 2 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 5 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 60.0% | 2023-09 |
| CertiK | Tier 2 | 2 | 40.0% | 2023-04 |
| Halborn | Tier 2 | 2 | 40.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RangeProtocolFactory | registry | manta | n/a | [`0x52b29c6154ad0f5c02416b8cb1ceb76e082fc9c7`](./contracts/manta-169/0x52b29c6154ad0f5c02416b8cb1ceb76e082fc9c7/) | ✅ Audited |
| RangeProtocolVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ee485c06a9c6bf499ee5fc1b5e16a9a607a43d8`](./contracts/ethereum-1/0x5ee485c06a9c6bf499ee5fc1b5e16a9a607a43d8/); ethereum `0x89046305c73f2d9444bc62cde041d2e92747a046`; ethereum `0xb25071dcdffb946230fe2ffceb589adace440c11`; manta `0xe9c45a2446699954847521890b27dd9b24f7cc70`; mantle `0xfd1bfd323332002403a299ea061305251b400fa8` | ✅ Audited |
| VaultLib | unknown | ethereum | n/a | 6 deployments: ethereum [`0x5c584afadb09d02467da79ea777fa0cae49437fb`](./contracts/ethereum-1/0x5c584afadb09d02467da79ea777fa0cae49437fb/); ethereum `0x90ce9788d0e5a1ff01d4d2d34b6b69038e909cc9`; ethereum `0xb0f6b84ee516005a475fbc335c949edd17754c19`; manta `0x62fd6208a1a6f0b06e1e2788efb4ee74bf5a8f33`; manta `0x873fd467a2a7e4e0a71ad3c45966a84797e55b5b`; mantle `0xe621d00cb578bcac68896e55d60a20317c893e55` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingRewards | unknown | mantle | n/a | 2 deployments: ethereum `0xd45d4479237a77b301a8da1f69238aeef79a96ed`; mantle [`0x1a181b7acbc3aaf1c174c3fafb10d4e5f2c7311f`](./contracts/mantle-5000/0x1a181b7acbc3aaf1c174c3fafb10d4e5f2c7311f/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x21e0803103d3cf8ab0755a02e9e4f55a5590e07f`](./contracts/ethereum-1/0x21e0803103d3cf8ab0755a02e9e4f55a5590e07f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x249c2a212208bc0f11480456ee090d04603ab070` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4f1288650b3bd800a00ccd20d18b3b8914e654ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/master/audits/Certik-Audit.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |
| [Halborn-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/master/audits/Halborn-Audit.pdf) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | 2 | n/a |
| [Salusec-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/izumi-implementation/audits/Salusec-Audit.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 3 | n/a |
| [Veridise-Audit.pdf](https://github.com/Range-Protocol/contracts/blob/master/audits/Veridise-Audit.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x1a181b7acbc3aaf1c174c3fafb10d4e5f2c7311f`](./contracts/mantle-5000/0x1a181b7acbc3aaf1c174c3fafb10d4e5f2c7311f/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Fork inheritance lineage and inherited audits are included when available.
