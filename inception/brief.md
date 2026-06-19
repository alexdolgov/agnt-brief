# Agentic Audit Brief: Inception

⚠️ Lifecycle status: DECLINING - TVL changed 5.3% over 90 days

## Project Overview

- Project: Inception (`inception`)
- Website: [https://www.inceptionlrt.com/](https://www.inceptionlrt.com/)
- Lifecycle: declining (Tier 1, sunsetting)
- Generated: 2026-06-19T06:14:22.493Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, blast, bsc, ethereum, linea, mode, optimism
- Contract surface: 12 unique implementations (20 raw deployments)
- DeFi Llama TVL: $4,625,094.00
- On-chain TVL (included contracts): $62,530.42
- TVL by chain: Blast $49,928.36 | Linea $11,180.07 | Arbitrum $1,216.39 | Optimism $168.83 | Bsc $36.78

## Project Description

Inception is a liquid restaking protocol for Ethereum-based assets that allows users to deposit into Inception-controlled vault and restaking contracts and receive liquid restaking tokens representing their positions. External third-party vault systems such as Amphor should be treated as integrations or out-of-scope infrastructure unless separate ownership evidence is provided.

### Architecture

The Inception family issues LRTs that are used across the protocol, while InceptionLRT and Amphor provide vault strategies that may utilize these tokens. The Ethereum family supplies rate providers and a bridge that connect the multi-chain deployments, enabling cross-chain restaking and yield aggregation.

## Contract Surface Quality

- Indexed contracts: 265; live-surface contracts included: 20 (16 live, 4 unknown).
- Excluded by liveness: 116 inactive, 129 singleton, 0 uninitialized.
- Deployment units: 4/59 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/9 (66.7%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 12
- Raw deployments: 20
- Audits discovered: 11
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 8 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 66.7% | 2024-10 |
| Veridise | Tier 2 | 4 | 44.4% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| XERC20 | token | optimism | n/a | 8 deployments: optimism [`0x5a7a18...b1d76d`](./contracts/optimism-10/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); optimism `0xd08c3f...9a4959`; bsc [`0x5a7a18...b1d76d`](./contracts/bsc-56/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); arbitrum [`0x5a7a18...b1d76d`](./contracts/arbitrum-42161/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); arbitrum `0xd08c3f...9a4959`; linea [`0x5a7a18...b1d76d`](./contracts/linea-59144/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); linea `0xd08c3f...9a4959`; blast [`0x5a7a18...b1d76d`](./contracts/blast-81457/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/) | ✅ Audited |
| InceptionBridge | operational_periphery | optimism | unit-37810 | [`0xc00cd5...83b3ac`](./contracts/optimism-10/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| InceptionBridge | operational_periphery | bsc | unit-37812 | [`0xc00cd5...83b3ac`](./contracts/bsc-56/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| InceptionBridge | operational_periphery | base | unit-37818 | [`0xc00cd5...83b3ac`](./contracts/base-8453/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| InceptionBridge | operational_periphery | mode | n/a | [`0xc00cd5...83b3ac`](./contracts/mode-34443/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| XERC20 | token | bsc | unit-37811 | [`0xb2b446...6c5878`](./contracts/bsc-56/0xb2b446386633c6746b0a2735fb57edbb066c5878/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmphorVaultWithPermit | core_logic | ethereum | n/a | [`0x920f17...82c079`](./contracts/ethereum-1/0x920f17e741029d904936c58a545dffc72f82c079/) | ⚠️ Unaudited |
| Silo | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06ecfa...8a8144`](./contracts/ethereum-1/0x06ecfaade8fcb8c1bc58cb05104604282f8a8144/); ethereum `0x361a02...5880d9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | [`0xfe7153...735d5e`](./contracts/mode-34443/0xfe715358368416e01d3a961d3a037b7359735d5e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | mode | n/a | `0x5a7a18...b1d76d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5d9447...f80a46` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfea428...8b0415` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [**Veridise Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf) | Halborn | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [* [**Halborn Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [* [**Oxorio Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf) | Oxorio | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |
| [* [**Veridise Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf) | Veridise | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |
| [* [**Halborn Report**]()](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 13 | high |
| [* [**Veridise Report**]()](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) | Veridise | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [Inception_DiamondProxy_SymbioticVault_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [Inception_FlashWithdrawal_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_FlashWithdrawal_Halborn.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | 0 | n/a |
| [VAR_GenesisLRT_231221-V1.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_GenesisLRT_231221-V1.pdf) | VAR | Audit | 2024-01 | stale | Direct | contract_name | 0 | n/a |
| [Salus_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Salus_final_report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [Bailsec_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Bailsec_final_report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=211

Zero-match audit list:

- [2400] * [**Veridise Report**]()
- [2401] * [**Halborn Report**]()
- [2402] * [**Oxorio Report**]()
- [2403] * [**Veridise Report**]()
- [2406] Inception_DiamondProxy_SymbioticVault_Halborn.pdf
- [2407] Inception_FlashWithdrawal_Halborn.pdf
- [2408] VAR_GenesisLRT_231221-V1.pdf
- [15428] Salus_final_report.pdf
- [15429] Bailsec_final_report.pdf

Fork inheritance lineage and inherited audits are included when available.
