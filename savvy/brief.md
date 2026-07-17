# Agentic Audit Brief: Savvy

## Project Overview

- Project: Savvy (`savvy`)
- Website: [https://savvydefi.io](https://savvydefi.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.623Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum
- Contract surface: 31 unique implementations (33 raw deployments)
- DeFi Llama TVL: $122,822.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 18 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (mutex). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 163; live-surface contracts included: 33 (4 live, 29 unknown).
- Excluded by liveness: 130 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 31
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 50.0% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavvySyntheticToken | token | arbitrum | n/a | 3 deployments: arbitrum [`0xeee18334c414a47fb886a7317e1885b2bfb8c2a6`](./contracts/arbitrum-42161/0xeee18334c414a47fb886a7317e1885b2bfb8c2a6/); arbitrum `0xf202ab403cd7e90197ec0f010ee897e283037706`; arbitrum `0xf7728582002ef82908c8242cf552e969ba863ffa` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavvyProtocolToken | token | arbitrum | n/a | [`0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034`](./contracts/arbitrum-42161/0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x00e1b94e8d4d2bbc64b8032ba12a8e80d9bd7d4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x021fc8fdcb784460e1f2ce46cf93cc0d9fbf8389` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05d9470ccfa34400977d354f69b2679f41609419` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0625d88dabfff9f8e2c37d915e1ca34adcbeee92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e06bb959ec3bbb632691b63a1f2e10bd31cf4fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x211e823d694ea0c7e95285485efb2b4e121cbfa4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21a194dafe9bc6396eb5bc3c0bad6cd95a720dce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x334878e1db6a1281435f84146d131daa44912946` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3701a069c67b10455a7efc05c06b57b62a0fc59e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b1d730f9cbd9017493263edbfd60ab856843ff6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3de7bc2390f135bf4f8bca567e7818aa9da63fad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f143e54dad2db48eede1c4c993f9efd02d0f77b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7beb54a78a71e2548bc803dc7f334ce1ed247797` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x841060fcb1e693ce94cab7e018fa1794c82916d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ca8a5ecfbfbb1abab8dfddd5181f4dd0146d443` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97d5d719f026f12127297c7151bd2ad634b8a81f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f96907124c3949896b9e58a00d7c86c21e657ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa97ab3ec8d6d5236174fd1581be0f59cd26c5dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5b914c7af9b5fe348d2f8436b82cc0f646df1d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8a52578c80c0b903674da42babea150f22c523b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb903d29c6aae882cbf763e260c73b1624cb90c6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9dd165ebaf44fa6a15af22a7f98373409def856` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb8ea83c0cdc6a4816a2a5de81d3895b3dcf48f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdef7eb55904ea1d2457ee8ba2d60239b950168e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8a2a20ef99cde708d4528dc4aee88fc6e28a0d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe679fc3daac692eee32a259bb3e122b1627449c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6efaefc86afd94d2113ec72b3b1e66a5c10f2e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb5845eefbbc52e5103de56324f438270df9de25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xede39059579ac922ca7443e16140727a0e931688` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034`](./contracts/arbitrum-42161/0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034/) | SavvyProtocolToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
