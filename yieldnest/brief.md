# Agentic Audit Brief: YieldNest

⚠️ Lifecycle status: DECLINING - TVL dropped 4.8% over 90 days

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T11:45:20.085Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 33 unique implementations (72 raw deployments)
- DeFi Llama TVL: $22,859,932.39
- On-chain TVL (included contracts): $19,206,391.98
- TVL by chain: Ethereum $19,048,274.90 | Bsc $158,097.18 | Optimism $11.85 | Base $8.05

## Project Description

YieldNest is an onchain capital allocator that aggregates and manages yield-bearing strategies across multiple chains. It offers liquid restaking tokens (e.g., ynETH, ynLSDe) and vault products (e.g., ynETHx, ynBNBx) that optimize returns through EigenLayer and other DeFi protocols.

### Architecture

The ynETH family feeds rewards into ynETHx vaults, which issue L2YnERC20Upgradeable tokens. Kernel strategies like ynBTCk and vaults like ynBNBx share the same L2 token standard and are governed by multisigs, with YND serving as the ecosystem token.

## Audit Coverage Summary

- Verified implementations audited: 13/29 (44.8%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 1
- Unverified implementations: 4
- Unique implementations: 33
- Raw deployments: 72
- Audits discovered: 21
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $295,088.52
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 10 aging, 10 stale, 1 unknown
- Tier 1 coverage: 31.0% (ChainSecurity)
- Note: This protocol is classified as [declining]. ASD of $295,088.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 37.9% | 2025-05 |
| ChainSecurity | Tier 1 | 9 | 31.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 5 deployments: ethereum [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/); ethereum `0x3be73e...9c4e73`; ethereum `0x3db228...ddcb4b`; ethereum `0x657d9a...c96dcb`; bsc `0x32c830...0a2c5f` | ✅ Audited |
| KernelStrategy | core_logic | bsc | [`0x78839c...606a56`](./contracts/bsc-56/0x78839ce14a8213779128ee4da6d75e1326606a56/) | ✅ Audited |
| AssetRegistry | registry | ethereum | 2 deployments: ethereum [`0x031ae4...9d6879`](./contracts/ethereum-1/0x031ae4a8a09b1779dbf69828356945fdf59d6879/); ethereum `0x323c93...4270fd` | ✅ Audited |
| Provider | unknown | ethereum | 2 deployments: ethereum [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/); ethereum `0xb03299...b6fca3` | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | [`0x40d5ff...652351`](./contracts/ethereum-1/0x40d5ff3e218f54f4982661a0464a298cf6652351/) | ✅ Audited |
| RewardsReceiver | unknown | ethereum | 2 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0xe439fe...26536e` | ✅ Audited |
| StakingNode | unknown | ethereum | 2 deployments: ethereum [`0x56d43f...857117`](./contracts/ethereum-1/0x56d43f8c6c3891d081ad93b27419c37394857117/); ethereum `0x79388c...e65e1e` | ✅ Audited |
| StakingNodesManager | governance | ethereum | 3 deployments: ethereum [`0x8c33a1...59cd7d`](./contracts/ethereum-1/0x8c33a1d6d062db7b51f79702355771d44359cd7d/); ethereum `0x8e0b49...4d41ab`; ethereum `0xf1eb27...55a7ce` | ✅ Audited |
| TokenStakingNode | token | ethereum | 2 deployments: ethereum [`0x28fd4c...9c41fd`](./contracts/ethereum-1/0x28fd4c04620d95c4bec9397e2d303937779c41fd/); ethereum `0x74ff5c...d43655` | ✅ Audited |
| TokenStakingNodesManager | governance | ethereum | 2 deployments: ethereum [`0x29ac77...747b6b`](./contracts/ethereum-1/0x29ac770abfa12b0ab726c5e6eb38124061747b6b/); ethereum `0x6fbd79...6adb2c` | ✅ Audited |
| VaultLib | core_logic | ethereum | [`0x5f0efd...76f235`](./contracts/ethereum-1/0x5f0efd70e5bb1862bb6e106bdc084a6b6476f235/) | ✅ Audited |
| ynEigen | unknown | ethereum | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ✅ Audited |
| ynETH | unknown | ethereum | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC4626WrapperStrategy | core_logic | ethereum | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ⚠️ Unaudited |
| SingleVault | core_logic | bsc | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 4 deployments: ethereum [`0x8e20ea...c4de2e`](./contracts/ethereum-1/0x8e20eaf121154b69b7b880fa6c617c0175c4de2e/); ethereum `0xa08f39...6141c3`; ethereum `0xdf51b7...0028ef`; ethereum `0xfcad67...5d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0x721688...85d436`](./contracts/bsc-56/0x721688652dea9cabec70bd99411eaeab9485d436/) | ⚠️ Unaudited |
| L1Contracts | unknown | ethereum | 2 deployments: ethereum [`0x0e7149...45b6f2`](./contracts/ethereum-1/0x0e71498a5acfb68900c0154baed9a36a2c45b6f2/); ethereum `0x4396bf...dc2f82` | ⚠️ Unaudited |
| MainnetActors | unknown | ethereum | 2 deployments: ethereum [`0x2ddcee...9429e2`](./contracts/ethereum-1/0x2ddcee5fb47aaee034aa452db60eb62fcb9429e2/); ethereum `0xccfdbf...7cb385` | ⚠️ Unaudited |
| MaxVaultViewer | core_logic | ethereum | 4 deployments: ethereum [`0x38585e...df5e8b`](./contracts/ethereum-1/0x38585e32b66961c02abacbb4db76825a00df5e8b/); ethereum `0x615635...e5c534`; ethereum `0x632e20...1e0ac5`; ethereum `0x84fe8e...9b574f` | ⚠️ Unaudited |
| ParaswapValidator | unknown | ethereum | 2 deployments: ethereum [`0xc742e2...11712b`](./contracts/ethereum-1/0xc742e24a36e6105de681c244cbbf2cd4cf11712b/); ethereum `0xf22375...40f419` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | [`0x7b4b43...86fcaf`](./contracts/bsc-56/0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 5 deployments: ethereum [`0x16748a...a319b3`](./contracts/ethereum-1/0x16748a830614b66e688f3d3b2395e1c5efa319b3/); ethereum `0x1854b5...f34169`; ethereum `0x739711...db132d`; ethereum `0xa7f5c1...b6e96f`; ethereum `0xb5e2c3...680661` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x42fb68...b8baab`](./contracts/ethereum-1/0x42fb68291c17c4e2ebdb811dff9f741465b8baab/) | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | ethereum | 3 deployments: ethereum [`0x487d9a...d7930d`](./contracts/ethereum-1/0x487d9a14941e34723bde973cabae3894bed7930d/); ethereum `0x4b2552...d5620f`; ethereum `0xd1cc0f...3a3fa7` | ⚠️ Unaudited |
| YND | unknown | ethereum | 7 deployments: ethereum [`0x6770f0...fe7c74`](./contracts/ethereum-1/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74/); ethereum `0x7159cc...8a45ba`; ethereum `0x8532da...b0f2fe`; ethereum `0x927679...dbcaac`; ethereum `0xa7d2f6...2f977e`; ethereum `0xa8c939...b23ff8`; ethereum `0xe746d2...282483` | ⚠️ Unaudited |
| ynViewer | periphery | ethereum | [`0xb088fe...08519d`](./contracts/ethereum-1/0xb088fe2ec4de9711390da7ca5a4bfd664b08519d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L2YnERC20Upgradeable | token | ethereum | 7 deployments: ethereum [`0x68589a...44ed5d`](./contracts/ethereum-1/0x68589adc7687a23ff2b06fb032b997f09b44ed5d/); optimism `0xdb8e54...af0511`; optimism `0xe231db...635a61`; bsc `0xdb8e54...af0511`; base `0xdb8e54...af0511`; arbitrum `0xdb8e54...af0511`; berachain `0xdb8e54...af0511` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2ed0eb...327557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc26328...8243c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd07049...f3dadd` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x0ce01d...bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [README.md (also discovered via alternate URL)](https://github.com/yieldnest/yieldnest-vault/blob/eth-max-vault/test/unit/vault/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf (also discovered via alternate URL)](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 9 | high |
| [2024-05-07-zokyo-yieldnest_protocol_audit.pdf (also discovered via alternate URL)](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-05-07-zokyo-yieldnest_protocol_audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 8 | high |
| [M2 Mainnet - Dedaub - Feb 2024.pdf](https://github.com/yieldnest/point-guard/blob/main/contracts/lib/eigenlayer-middleware/audits/M2%20Mainnet%20-%20Dedaub%20-%20Feb%202024.pdf) | Dedaub | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [EigenLabs — EigenLayer ConsenSys Diligence.pdf](https://github.com/yieldnest/point-guard/blob/main/contracts/lib/eigenlayer-middleware/lib/eigenlayer-contracts/audits/EigenLabs%20%E2%80%94%20EigenLayer%20ConsenSys%20Diligence.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Sigma Prime - Core Audit - v2.0 FINAL - Feb'24.pdf](https://github.com/yieldnest/point-guard/blob/main/contracts/lib/eigenlayer-middleware/lib/eigenlayer-contracts/audits/Sigma%20Prime%20-%20Core%20Audit%20-%20v2.0%20FINAL%20-%20Feb'24.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Eigen_Layer_Phase_2_Security_Assessment_Report_v2_1.pdf](https://github.com/yieldnest/point-guard/blob/main/contracts/lib/eigenlayer-middleware/lib/eigenlayer-contracts/audits/Sigma_Prime_Eigen_Layer_Phase_2_Security_Assessment_Report_v2_1.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [2017-03.md (also discovered via alternate URL)](https://github.com/yieldnest/point-guard/blob/main/contracts/lib/eigenlayer-middleware/lib/eigenlayer-contracts/lib/openzeppelin-contracts-upgradeable/audit/2017-03.md) | OpenZeppelin | Audit | 2017-03 | stale | Direct | n/a | 0 | n/a |
| [2018-10.pdf (also discovered via alternate URL)](https://github.com/yieldnest/point-guard/blob/main/contracts/lib/eigenlayer-middleware/lib/eigenlayer-contracts/lib/openzeppelin-contracts-upgradeable/audit/2018-10.pdf) | OpenZeppelin | Audit | 2018-10 | stale | Direct | n/a | 0 | n/a |
| [chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 9 | high |
| [chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 16 | high |
| [composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 8 | high |
| [yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 6 | high |
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 3 | high |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [zokyo_audit_yieldnest_May7th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_May7th_2024.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 8 | high |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 7 | high |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 9 | high |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 6 | high |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0e7149...45b6f2`](./contracts/ethereum-1/0x0e71498a5acfb68900c0154baed9a36a2c45b6f2/) | L1Contracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ddcee...9429e2`](./contracts/ethereum-1/0x2ddcee5fb47aaee034aa452db60eb62fcb9429e2/) | MainnetActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38585e...df5e8b`](./contracts/ethereum-1/0x38585e32b66961c02abacbb4db76825a00df5e8b/) | MaxVaultViewer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/) | ProxyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x487d9a...d7930d`](./contracts/ethereum-1/0x487d9a14941e34723bde973cabae3894bed7930d/) | WithdrawalsProcessor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6770f0...fe7c74`](./contracts/ethereum-1/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74/) | YND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb088fe...08519d`](./contracts/ethereum-1/0xb088fe2ec4de9711390da7ca5a4bfd664b08519d/) | ynViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 15 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=112

Zero-match audit list:

- [6052] README.md
- [6055] M2 Mainnet - Dedaub - Feb 2024.pdf
- [6056] EigenLabs — EigenLayer ConsenSys Diligence.pdf
- [6057] Sigma Prime - Core Audit - v2.0 FINAL - Feb'24.pdf
- [6058] Sigma_Prime_Eigen_Layer_Phase_2_Security_Assessment_Report_v2_1.pdf
- [6059] 2017-03.md
- [6060] 2018-10.pdf
- [6070] yieldnest_clisbnb_strategy_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
