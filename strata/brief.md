# Agentic Audit Brief: Strata

⚠️ Lifecycle status: UNKNOWN - TVL dropped 42.9% over 90 days

## Project Overview

- Project: Strata (`strata`)
- Website: [https://strata.money](https://strata.money)
- Lifecycle: unknown (Tier 0, 70.3% below peak)
- Generated: 2026-05-27T10:54:51.292Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: ethereum
- Contract surface: 39 unique implementations (227 raw deployments)
- DeFi Llama TVL: $97,423,016.00
- On-chain TVL (included contracts): $97,224,620.43
- TVL by chain: Ethereum $97,224,620.43

## Project Description

Strata is a DeFi yield and structured products protocol on Ethereum. It offers vaults for yield-bearing tokens (like pUSDe) and a tranche-based market system that splits yield-generating strategies into senior and junior risk positions, enabling users to farm yields or trade risk-adjusted returns.

### Architecture

Strata Markets and Strata Vaults share governance and access control infrastructure (AccessControlManager, TwoStepConfigManager) and rely on common oracle/APR feed contracts. The vaults may feed into or complement the tranche strategies, but the contract surface shows them as distinct product lines with no direct on-chain dependency.

## Audit Coverage Summary

- Verified implementations audited: 12/38 (31.6%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 39
- Raw deployments: 227
- Audits discovered: 8
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $289,602.86
- Latest audit: 2026-01 (fresh)
- Staleness: 3 fresh, 0 aging, 1 stale, 4 unknown
- Tier 1 coverage: 28.9% (Cyfrin)
- Note: This protocol is classified as [unknown]. ASD of $289,602.86 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 11 | 28.9% | 2026-01 |
| Guardian | Tier 2 | 10 | 26.3% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Tranche | core_logic | ethereum | 36 deployments: ethereum [`0x011e55...5a455d`](./contracts/ethereum-1/0x011e55d2b28306458e37ca7e997c879bb25a455d/); ethereum `0x35bff7...9232eb`; ethereum `0x3d7d6f...cdc003`; ethereum `0x4111c7...7366d0`; ethereum `0x461d16...5d0b83`; ethereum `0x5c8df1...72a6db`; ethereum `0x5ddb16...0b5999`; ethereum `0x627ea6...129b53`; ethereum `0x64c628...d9630e`; ethereum `0x65a445...f589db`; ethereum `0x86e638...cd739e`; ethereum `0x901443...19209d`; ethereum `0x90f806...dcbcdb`; ethereum `0x96f88f...30c1c9`; ethereum `0xb0a808...89f62c`; ethereum `0xb1f6a2...396d62`; ethereum `0xb4eea6...44f2b1`; ethereum `0xb8b04f...db6013`; ethereum `0xb8e946...80499e`; ethereum `0xc58d04...a53d8f`; ethereum `0xc71b90...07e767`; ethereum `0xcc3777...0aab6f`; ethereum `0xcced21...c40d60`; ethereum `0xd4847c...105525`; ethereum `0xdc3190...0bc297`; ethereum `0xe89405...30210b`; ethereum `0xe91869...5ac09c`; ethereum `0xeb205d...78714b`; ethereum `0xecbde9...4de952`; ethereum `0xf1115b...8e3a68`; ethereum `0xf4c91f...4c2f27`; ethereum `0xf7eb8d...821688`; ethereum `0xfaa9a0...53d066`; ethereum `0xfc8070...25e772`; ethereum `0xfcda74...e0d847`; ethereum `0xffe76a...50f2be` | ✅ Audited |
| sUSDeStrategy | core_logic | ethereum | 7 deployments: ethereum [`0x0da391...78f213`](./contracts/ethereum-1/0x0da391431cc9760005c113c1a2dcb9d67878f213/); ethereum `0x2b9796...adb107`; ethereum `0x4f514f...fd5b17`; ethereum `0x75489e...d40f20`; ethereum `0x99fe6b...5f1a20`; ethereum `0xcbb548...16c5e0`; ethereum `0xdbf4fb...e7099f` | ✅ Audited |
| AccessControlManager | governance | ethereum | 6 deployments: ethereum [`0x040ef2...f8c74a`](./contracts/ethereum-1/0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a/); ethereum `0x06e84a...8203e4`; ethereum `0x1d19e1...605f60`; ethereum `0x6ce1aa...601c36`; ethereum `0xd5d18d...e44014`; ethereum `0xd61990...d399b8` | ✅ Audited |
| Accounting | unknown | ethereum | 13 deployments: ethereum [`0x0f751e...67a20e`](./contracts/ethereum-1/0x0f751ea4af9390c8eb530ee3ce2275a85167a20e/); ethereum `0x180f7b...e8cf88`; ethereum `0x4e409d...64e5b6`; ethereum `0x4e9f8d...8e8da2`; ethereum `0x5a8d34...59cbff`; ethereum `0x5efe7c...a2aa52`; ethereum `0x6b9ab8...99767b`; ethereum `0x8cabd1...048643`; ethereum `0xa436c5...355102`; ethereum `0xc634e9...d3be7e`; ethereum `0xc89951...7734f3`; ethereum `0xd1efb5...ea5651`; ethereum `0xeb97f3...dea057` | ✅ Audited |
| AprPairFeed | unknown | ethereum | 15 deployments: ethereum [`0x1695a2...b4d171`](./contracts/ethereum-1/0x1695a2ff3e45365ab4111d2e1083b2a143b4d171/); ethereum `0x1f3aab...0a3c57`; ethereum `0x21d616...579115`; ethereum `0x2bb416...800ec2`; ethereum `0x3ea2f3...2bb26c`; ethereum `0x74188a...0fbadc`; ethereum `0x80f7b3...41ecf9`; ethereum `0xbd1844...94d5bb`; ethereum `0xd1fc85...82e4e9`; ethereum `0xd2923d...e32044`; ethereum `0xd9d971...baaf08`; ethereum `0xece480...f28d64`; ethereum `0xed83dc...8000e9`; ethereum `0xf158a4...6ef6a2`; ethereum `0xfb0294...668e8a` | ✅ Audited |
| ERC20Cooldown | token | ethereum | 16 deployments: ethereum [`0x1abc3c...907990`](./contracts/ethereum-1/0x1abc3c3c15a862276d057b2acbcfeab358907990/); ethereum `0x25138d...2929ab`; ethereum `0x428c24...33508e`; ethereum `0x4c2680...72296e`; ethereum `0x5a428c...75c1a4`; ethereum `0x5c818c...ab687d`; ethereum `0x71ec07...788fda`; ethereum `0x73dfde...292219`; ethereum `0x74c74f...a78913`; ethereum `0x940a04...925933`; ethereum `0xa14009...74db9d`; ethereum `0xbe71d2...e324be`; ethereum `0xc284ae...93a84e`; ethereum `0xd6dad1...6a6faf`; ethereum `0xe4489e...32b272`; ethereum `0xe93b75...e938f8` | ✅ Audited |
| SharesCooldown | unknown | ethereum | 10 deployments: ethereum [`0x0404ea...cdf1ce`](./contracts/ethereum-1/0x0404ea6f1c89a5032ea2baddfbac20ce11cdf1ce/); ethereum `0x25f7ce...58bcae`; ethereum `0x655c80...8a1e58`; ethereum `0x83c11b...0a59e1`; ethereum `0x8da07f...6638cf`; ethereum `0xa9e7e9...4982b8`; ethereum `0xb56240...b01a08`; ethereum `0xce7043...deb3f1`; ethereum `0xe851de...455b66`; ethereum `0xeb30f8...b4f693` | ✅ Audited |
| StrataCDO | unknown | ethereum | 16 deployments: ethereum [`0x0eccfa...c1b756`](./contracts/ethereum-1/0x0eccfa55f1739cdcb112ada272c910ba50c1b756/); ethereum `0x0f8d08...448bc1`; ethereum `0x1f5a75...c4cdc4`; ethereum `0x30faef...87f02a`; ethereum `0x39c7e6...27e6cf`; ethereum `0x3afc31...05d0a9`; ethereum `0x613d17...120e5f`; ethereum `0x7b6c96...bedd10`; ethereum `0x908b39...6c0e20`; ethereum `0x93f45b...4fa358`; ethereum `0x94a956...94c24c`; ethereum `0xa61776...fb846b`; ethereum `0xb3d4f2...9c79ba`; ethereum `0xecff8b...730b94`; ethereum `0xf39e55...fc4e00`; ethereum `0xff408b...71c234` | ✅ Audited |
| StrataMasterChef | unknown | ethereum | 2 deployments: ethereum [`0x4f2682...7e022d`](./contracts/ethereum-1/0x4f2682b78f37910704fb1aff29358a1da07e022d/); ethereum `0xb2a3cf...77b706` | ✅ Audited |
| sUSDeCooldownRequestImpl | unknown | ethereum | 6 deployments: ethereum [`0x00a960...26dde2`](./contracts/ethereum-1/0x00a96056c30a22b684ff7a09f4a0afeae426dde2/); ethereum `0x3f7041...79a2cc`; ethereum `0x97f7e9...d62e69`; ethereum `0x9c8c72...7ad6a8`; ethereum `0xc5827b...0c76a4`; ethereum `0xe5e4fe...fa42c8` | ✅ Audited |
| TwoStepConfigManager | governance | ethereum | 12 deployments: ethereum [`0x03dbbc...11dbcc`](./contracts/ethereum-1/0x03dbbc507360a16f477e53af985261c3ce11dbcc/); ethereum `0x084fe1...9fa11c`; ethereum `0x0a0e72...a846c8`; ethereum `0x0f93ba...818994`; ethereum `0x452f0e...51fe8a`; ethereum `0x60dae2...47eb79`; ethereum `0x663ddb...caf190`; ethereum `0x7a0f6f...89b30e`; ethereum `0xadbba0...c25afc`; ethereum `0xd85d0f...fd3341`; ethereum `0xef9911...e7a95a`; ethereum `0xf4ff82...7c4ddc` | ✅ Audited |
| UnstakeCooldown | unknown | ethereum | 16 deployments: ethereum [`0x0aff54...3ec57c`](./contracts/ethereum-1/0x0aff54afe4e3ef30a2ddaf7668c0864d8f3ec57c/); ethereum `0x2822b8...d98ce5`; ethereum `0x2a5236...2bc749`; ethereum `0x440938...1bfbaa`; ethereum `0x616af7...9381ac`; ethereum `0x6f6904...d681c1`; ethereum `0x735edd...610f74`; ethereum `0x7910cb...08805c`; ethereum `0x7a7fa1...a28a1b`; ethereum `0xa3b5c1...1a7473`; ethereum `0xc4eaa8...5d419c`; ethereum `0xd2843c...6f3451`; ethereum `0xd59b3f...d47613`; ethereum `0xea3676...a5fb20`; ethereum `0xf783d4...d0ed1f`; ethereum `0xff8d8a...33ac7a` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| pUSDeVault | core_logic | ethereum | 2 deployments: ethereum [`0x7fe8d7...47b851`](./contracts/ethereum-1/0x7fe8d7efe89b240b7f2879eebf488152f647b851/); ethereum `0xa62b20...aa96ce` | ⚠️ Unaudited |
| SaturnStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x36f593...8c1939`](./contracts/ethereum-1/0x36f5930e314b2f611a786476d939f47b318c1939/); ethereum `0x9686e3...9dc286`; ethereum `0xcaf086...e19d9b`; ethereum `0xce7b00...97b090` | ⚠️ Unaudited |
| TrancheDepositor | core_logic | ethereum | 11 deployments: ethereum [`0x127f27...d4eb80`](./contracts/ethereum-1/0x127f27d2154c8761d4576cffbbd6d86213d4eb80/); ethereum `0x22f929...4cabaa`; ethereum `0x50e850...52f47e`; ethereum `0x60f130...0b4f1f`; ethereum `0x6e5a69...26b20b`; ethereum `0x7945e4...cb4bf7`; ethereum `0x7a6ad3...b6e50f`; ethereum `0x932a1d...ac0d11`; ethereum `0xb8f2da...3a3abf`; ethereum `0xd8ea64...2e7823`; ethereum `0xe375c1...f85cee` | ⚠️ Unaudited |
| MidasStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x807150...fd184d`](./contracts/ethereum-1/0x8071500d237a8da2a2a020419d7bb5f8e2fd184d/); ethereum `0x839d89...9637ec`; ethereum `0x96ef7d...71cf6e`; ethereum `0xeed127...c18c75` | ⚠️ Unaudited |
| FigureStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x46d68d...697376`](./contracts/ethereum-1/0x46d68d3f663fd03564a5719a46954a4c41697376/); ethereum `0x80187f...f51c9e` | ⚠️ Unaudited |
| AaveAprPairProvider | unknown | ethereum | [`0x1c1377...f0af73`](./contracts/ethereum-1/0x1c137776e04803f807616c382abba12d9bf0af73/) | ⚠️ Unaudited |
| AaveOracleAprPairProvider | operational_periphery | ethereum | [`0x991e78...b929aa`](./contracts/ethereum-1/0x991e78df32a08b5327f73a58f08aff0c1bb929aa/) | ⚠️ Unaudited |
| CDOLens | periphery | ethereum | 5 deployments: ethereum [`0x02d622...ab5b62`](./contracts/ethereum-1/0x02d622c6f8b1814fdcaebed36457f8da90ab5b62/); ethereum `0x16f62b...16fff0`; ethereum `0x38274d...e1bb25`; ethereum `0xa7c547...2da3a4`; ethereum `0xea62e3...851f4e` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | ethereum | 2 deployments: ethereum [`0x8b7258...018bf0`](./contracts/ethereum-1/0x8b7258e8cc89894b56f757bc886b430d0c018bf0/); ethereum `0xd7bac4...b9eadc` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | ethereum | 6 deployments: ethereum [`0x0e90b8...6267d7`](./contracts/ethereum-1/0x0e90b8971bc0abba696641eee85b39fd986267d7/); ethereum `0x628bdd...35872e`; ethereum `0xaf32d4...f2b228`; ethereum `0xd6e34b...e6f0c5`; ethereum `0xd8ef4b...d4f0b8`; ethereum `0xe4a3a2...bb2a4a` | ⚠️ Unaudited |
| EulerIntegration | unknown | ethereum | [`0xf25129...876682`](./contracts/ethereum-1/0xf251290866cfca9ad4d0cbbde3742a0d12876682/) | ⚠️ Unaudited |
| EulerLens | periphery | ethereum | 2 deployments: ethereum [`0x5c36c8...e309fa`](./contracts/ethereum-1/0x5c36c8f79236e9fa215a16b13a6390ddebe309fa/); ethereum `0xc7e74a...b54727` | ⚠️ Unaudited |
| FigureCooldownRequestImpl | unknown | ethereum | 3 deployments: ethereum [`0x0107cf...abeaa0`](./contracts/ethereum-1/0x0107cf58ab1593347ccd85ab091be4e086abeaa0/); ethereum `0x4889e2...e3d5da`; ethereum `0x837ab0...127da4` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xa27ca9...b68b50`](./contracts/ethereum-1/0xa27ca9292268ee0f0258b749f1d5740c9bb68b50/) | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | ethereum | 6 deployments: ethereum [`0x086332...d88087`](./contracts/ethereum-1/0x08633203642d99af2286b68399bfa3caf7d88087/); ethereum `0x0afc25...3f8a8a`; ethereum `0x109f11...63ab60`; ethereum `0x5d6e12...c89cf6`; ethereum `0x6ce2fa...a12348`; ethereum `0xb4605c...f7752e` | ⚠️ Unaudited |
| pUSDeDepositor | unknown | ethereum | 2 deployments: ethereum [`0x1516d0...403660`](./contracts/ethereum-1/0x1516d031ccae6c73f4cc106474ae87628a403660/); ethereum `0x28ab38...8ce118` | ⚠️ Unaudited |
| pUSDeLens | periphery | ethereum | 3 deployments: ethereum [`0x32e333...e62637`](./contracts/ethereum-1/0x32e3333e5a03402aa1b6d45d6852a3a34ee62637/); ethereum `0xc734d6...62eca8`; ethereum `0xd23de7...1b3006` | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0x4be374...694ef4`](./contracts/ethereum-1/0x4be3749a0f6557b8fd98f3967e859dbd7c694ef4/) | ⚠️ Unaudited |
| SaturnAprPairProvider | unknown | ethereum | [`0x4bcc15...854be8`](./contracts/ethereum-1/0x4bcc15f6c0c63e511a1b55a7625f311a93854be8/) | ⚠️ Unaudited |
| SaturnCooldownRequestImpl | unknown | ethereum | 3 deployments: ethereum [`0x7399f5...41d780`](./contracts/ethereum-1/0x7399f54b967c4d6530cf3d64b5bf9bcfd541d780/); ethereum `0x9aacf1...38fc18`; ethereum `0xfb8db7...9ac84e` | ⚠️ Unaudited |
| sNUSDAprPairProvider | unknown | ethereum | [`0x12db79...2f9eab`](./contracts/ethereum-1/0x12db794342437aaa93970c106f2b5d5dfe2f9eab/) | ⚠️ Unaudited |
| sNUSDCooldownRequestImpl | unknown | ethereum | 3 deployments: ethereum [`0x1545cf...472d20`](./contracts/ethereum-1/0x1545cf03f38100912e672e07120f99fc1a472d20/); ethereum `0xca8649...fe22f7`; ethereum `0xea5595...ee32d7` | ⚠️ Unaudited |
| sNUSDStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x3cef2c...b5de88`](./contracts/ethereum-1/0x3cef2c09c4fad37e9bdd86cd9810c3042fb5de88/); ethereum `0x4c8fa0...4af269` | ⚠️ Unaudited |
| sNUSDSwapAdapter | adapter | ethereum | [`0xbebbeb...3d6303`](./contracts/ethereum-1/0xbebbeb5ec0fa689def85423d6c161b30bf3d6303/) | ⚠️ Unaudited |
| sUSDeAprPairProvider | unknown | ethereum | 2 deployments: ethereum [`0xa621c5...b80277`](./contracts/ethereum-1/0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277/); ethereum `0xaff405...6d596b` | ⚠️ Unaudited |
| TermmaxIntegration | unknown | ethereum | [`0x7940b9...1a4a7b`](./contracts/ethereum-1/0x7940b983ccdd5818cf55129b84df5231751a4a7b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x277d26...2cea5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audits](https://docs.strata.markets/technical-documentation/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/strata-discrete-accounting/02318e87-e35f-4e96-81ad-192253203d55/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | 94 | high |
| [2025-10-08-cyfrin-strata-tranches-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-10-08-cyfrin-strata-tranches-v2.0.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | 105 | high |
| [Strata_Tranches_report.pdf](https://github.com/GuardianAudits/Audits/blob/main/Strata/Strata_Tranches_report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | 133 | high |
| [www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b](https://www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b) | Cyfrin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.papermark.com/view/cmgm9op9b0003l404g395i6a5](https://www.papermark.com/view/cmgm9op9b0003l404g395i6a5) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-03-07-linkpool_liquid_sd_index_pool.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-03-07-linkpool_liquid_sd_index_pool.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7fe8d7...47b851`](./contracts/ethereum-1/0x7fe8d7efe89b240b7f2879eebf488152f647b851/) | pUSDeVault | core_logic | $289,602.81 | Verified native implementation with $289,602.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36f593...8c1939`](./contracts/ethereum-1/0x36f5930e314b2f611a786476d939f47b318c1939/) | SaturnStrategy | core_logic | $0.04 | Verified native implementation with $0.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x127f27...d4eb80`](./contracts/ethereum-1/0x127f27d2154c8761d4576cffbbd6d86213d4eb80/) | TrancheDepositor | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x807150...fd184d`](./contracts/ethereum-1/0x8071500d237a8da2a2a020419d7bb5f8e2fd184d/) | MidasStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46d68d...697376`](./contracts/ethereum-1/0x46d68d3f663fd03564a5719a46954a4c41697376/) | FigureStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02d622...ab5b62`](./contracts/ethereum-1/0x02d622c6f8b1814fdcaebed36457f8da90ab5b62/) | CDOLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7258...018bf0`](./contracts/ethereum-1/0x8b7258e8cc89894b56f757bc886b430d0c018bf0/) | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf25129...876682`](./contracts/ethereum-1/0xf251290866cfca9ad4d0cbbde3742a0d12876682/) | EulerIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bcc15...854be8`](./contracts/ethereum-1/0x4bcc15f6c0c63e511a1b55a7625f311a93854be8/) | SaturnAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12db79...2f9eab`](./contracts/ethereum-1/0x12db794342437aaa93970c106f2b5d5dfe2f9eab/) | sNUSDAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1545cf...472d20`](./contracts/ethereum-1/0x1545cf03f38100912e672e07120f99fc1a472d20/) | sNUSDCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbebbeb...3d6303`](./contracts/ethereum-1/0xbebbeb5ec0fa689def85423d6c161b30bf3d6303/) | sNUSDSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa621c5...b80277`](./contracts/ethereum-1/0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277/) | sUSDeAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7940b9...1a4a7b`](./contracts/ethereum-1/0x7940b983ccdd5818cf55129b84df5231751a4a7b/) | TermmaxIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 2 |
| standard_library | 16 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=332

Zero-match audit list:

- [4595] Audits
- [4596] index.html
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5
- [4604] 2023-03-07-linkpool_liquid_sd_index_pool.pdf

Fork inheritance lineage and inherited audits are included when available.
