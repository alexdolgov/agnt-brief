# Agentic Audit Brief: Strata

## Project Overview

- Project: Strata (`strata`)
- Website: [https://strata.money](https://strata.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.943Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 27 unique implementations (55 raw deployments)
- DeFi Llama TVL: $66,577,693.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 39 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 2 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 4 common project-authored base contract(s) (strategy, cdocomponent, accesscontrolled). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 227; live-surface contracts included: 55 (54 live, 1 unknown).
- Excluded by liveness: 172 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/21 (42.9%)
- Deployed-live implementations: 26 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/26
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 27
- Raw deployments: 55
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 1 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 38.1% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 9 | 34.6% | 2025-10 |
| Cyfrin | Tier 1 | 8 | 30.8% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a`](./contracts/ethereum-1/0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a/); ethereum `0x06e84a0fe0c4bc5c4ee3edb580b32eb4b88203e4`; ethereum `0x1d19e18ecac4ef332a0d5d6aa3a0f0f772605f60`; ethereum `0x6ce1aa78a196af86b752b92a2daee047ab601c36`; ethereum `0xd5d18db904fe7df2207c3f9491c5441143e44014`; ethereum `0xd61990c228fa5d4223231bf90896899daad399b8` | ✅ Audited |
| Accounting | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0f751ea4af9390c8eb530ee3ce2275a85167a20e`](./contracts/ethereum-1/0x0f751ea4af9390c8eb530ee3ce2275a85167a20e/); ethereum `0x4e409d5f9867352555e99a50cee2c4a73364e5b6`; ethereum `0x4e9f8d06aaed67ac4aaa52d9175c842e0f8e8da2`; ethereum `0xc634e92d2d2231ffc3de0615654f6ba7b6d3be7e`; ethereum `0xc89951cc4c03927ff11a0e47806e2ac3aa7734f3` | ✅ Audited |
| AprPairFeed | unknown | ethereum | n/a | [`0xf158a4f4a01ac21ddd2b09abd2232649526ef6a2`](./contracts/ethereum-1/0xf158a4f4a01ac21ddd2b09abd2232649526ef6a2/) | ✅ Audited |
| ERC20Cooldown | token | ethereum | n/a | 2 deployments: ethereum [`0x5c818c5894d7fb825c90e472b320c03572ab687d`](./contracts/ethereum-1/0x5c818c5894d7fb825c90e472b320c03572ab687d/); ethereum `0xe93b75b5f3da8c4f48dcd3cf84cd7fb001e938f8` | ✅ Audited |
| StrataCDO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0eccfa55f1739cdcb112ada272c910ba50c1b756`](./contracts/ethereum-1/0x0eccfa55f1739cdcb112ada272c910ba50c1b756/); ethereum `0x30faefa3c8022963df7538abeb8af8de1187f02a` | ✅ Audited |
| StrataMasterChef | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f2682b78f37910704fb1aff29358a1da07e022d`](./contracts/ethereum-1/0x4f2682b78f37910704fb1aff29358a1da07e022d/); ethereum `0xb2a3cf69c97afd4de7882e5fee120e4efc77b706` | ✅ Audited |
| sUSDeStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0da391431cc9760005c113c1a2dcb9d67878f213`](./contracts/ethereum-1/0x0da391431cc9760005c113c1a2dcb9d67878f213/); ethereum `0x4f514f4e92189941e0d358f5afe0483a6dfd5b17`; ethereum `0xcbb5484684ef693bc984e56d9d6330099d16c5e0` | ✅ Audited |
| Tranche | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x64c62859ce56fb9cc74c253ef59f7bfc67d9630e`](./contracts/ethereum-1/0x64c62859ce56fb9cc74c253ef59f7bfc67d9630e/); ethereum `0x90f806df8a024c1474425f8c4fca4f3301dcbcdb`; ethereum `0xdc3190a059a1dcf4c17ec1cb9cc8c4eacd0bc297`; ethereum `0xffe76a74f53b700dcd06feaa863b75003d50f2be` | ✅ Audited |
| UnstakeCooldown | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc4eaa82924883a58e39b4dfd6e60e81ee45d419c`](./contracts/ethereum-1/0xc4eaa82924883a58e39b4dfd6e60e81ee45d419c/); ethereum `0xff8d8a1a38ee927777eb78702005a70c4533ac7a` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveAprPairProvider | unknown | ethereum | n/a | [`0x1c137776e04803f807616c382abba12d9bf0af73`](./contracts/ethereum-1/0x1c137776e04803f807616c382abba12d9bf0af73/) | ⚠️ Unaudited |
| AaveOracleAprPairProvider | operational_periphery | ethereum | n/a | [`0x991e78df32a08b5327f73a58f08aff0c1bb929aa`](./contracts/ethereum-1/0x991e78df32a08b5327f73a58f08aff0c1bb929aa/) | ⚠️ Unaudited |
| CDOLens | periphery | ethereum | n/a | 4 deployments: ethereum [`0x02d622c6f8b1814fdcaebed36457f8da90ab5b62`](./contracts/ethereum-1/0x02d622c6f8b1814fdcaebed36457f8da90ab5b62/); ethereum `0x16f62bc6072a710202e7631be9b6a378de16fff0`; ethereum `0xa7c547ba0dfd91a6b1e8ab6aa5d444f9ec2da3a4`; ethereum `0xc9d29a300db9896c7c253cc729e012fbc7b06611` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x8b7258e8cc89894b56f757bc886b430d0c018bf0`](./contracts/ethereum-1/0x8b7258e8cc89894b56f757bc886b430d0c018bf0/); ethereum `0xd7bac4d57a2cae923b3dc7dd21398ed707b9eadc` | ⚠️ Unaudited |
| EulerIntegration | unknown | ethereum | n/a | [`0xf251290866cfca9ad4d0cbbde3742a0d12876682`](./contracts/ethereum-1/0xf251290866cfca9ad4d0cbbde3742a0d12876682/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xa27ca9292268ee0f0258b749f1d5740c9bb68b50`](./contracts/ethereum-1/0xa27ca9292268ee0f0258b749f1d5740c9bb68b50/) | ⚠️ Unaudited |
| MidasStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x839d89e87183f4e09cd63abe1f2b0ec8549637ec`](./contracts/ethereum-1/0x839d89e87183f4e09cd63abe1f2b0ec8549637ec/); ethereum `0x96ef7de683b8ffb8dc378fb1ea68d8b4e671cf6e` | ⚠️ Unaudited |
| PendleIntegration | unknown | ethereum | n/a | [`0x8b75970a492bfd326ef7425671117e7ec14d78fc`](./contracts/ethereum-1/0x8b75970a492bfd326ef7425671117e7ec14d78fc/) | ⚠️ Unaudited |
| pUSDeLens | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc734d636a8334f8d1d5619af3f0102fd5e62eca8`](./contracts/ethereum-1/0xc734d636a8334f8d1d5619af3f0102fd5e62eca8/); ethereum `0xd23de70dcb3fa5bec90b06bd973c400f1b1b3006` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x4be3749a0f6557b8fd98f3967e859dbd7c694ef4`](./contracts/ethereum-1/0x4be3749a0f6557b8fd98f3967e859dbd7c694ef4/) | ⚠️ Unaudited |
| SaturnAprPairProvider | unknown | ethereum | n/a | [`0x4bcc15f6c0c63e511a1b55a7625f311a93854be8`](./contracts/ethereum-1/0x4bcc15f6c0c63e511a1b55a7625f311a93854be8/) | ⚠️ Unaudited |
| SaturnStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x36f5930e314b2f611a786476d939f47b318c1939`](./contracts/ethereum-1/0x36f5930e314b2f611a786476d939f47b318c1939/); ethereum `0x9686e327a6f50aca2a1bea4219e04dc4449dc286` | ⚠️ Unaudited |
| sNUSDAprPairProvider | unknown | ethereum | n/a | [`0x12db794342437aaa93970c106f2b5d5dfe2f9eab`](./contracts/ethereum-1/0x12db794342437aaa93970c106f2b5d5dfe2f9eab/) | ⚠️ Unaudited |
| sNUSDSwapAdapter | adapter | ethereum | n/a | [`0xbebbeb5ec0fa689def85423d6c161b30bf3d6303`](./contracts/ethereum-1/0xbebbeb5ec0fa689def85423d6c161b30bf3d6303/) | ⚠️ Unaudited |
| sUSDeAprPairProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277`](./contracts/ethereum-1/0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277/); ethereum `0xaff405c3f1917a42326f28c90d0d5603c96d596b` | ⚠️ Unaudited |
| TermmaxIntegration | unknown | ethereum | n/a | [`0x7940b983ccdd5818cf55129b84df5231751a4a7b`](./contracts/ethereum-1/0x7940b983ccdd5818cf55129b84df5231751a4a7b/) | ⚠️ Unaudited |
| TrancheDepositor | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x60f130c9d1533505c3931183693d3d91060b4f1f`](./contracts/ethereum-1/0x60f130c9d1533505c3931183693d3d91060b4f1f/); ethereum `0xb8f2dac561b2a5ea2e075c8eb5fcac669c3a3abf`; ethereum `0xe375c1d79165ec365d0bc0d0c5105a8a17f85cee` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x277d26a45add5775f21256159f089769892cea5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits.md](https://docs.strata.markets/technical-documentation/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/strata-discrete-accounting/02318e87-e35f-4e96-81ad-192253203d55/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | 4 | n/a |
| [2025-10-08-cyfrin-strata-tranches-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-10-08-cyfrin-strata-tranches-v2.0.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | 7 | n/a |
| [Strata_Tranches_report.pdf](https://github.com/GuardianAudits/Audits/blob/main/Strata/Strata_Tranches_report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | 9 | n/a |
| [www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b](https://www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b) | Cyfrin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.papermark.com/view/cmgm9op9b0003l404g395i6a5](https://www.papermark.com/view/cmgm9op9b0003l404g395i6a5) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-03-07-linkpool_liquid_sd_index_pool.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-03-07-linkpool_liquid_sd_index_pool.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x02d622c6f8b1814fdcaebed36457f8da90ab5b62`](./contracts/ethereum-1/0x02d622c6f8b1814fdcaebed36457f8da90ab5b62/) | CDOLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7258e8cc89894b56f757bc886b430d0c018bf0`](./contracts/ethereum-1/0x8b7258e8cc89894b56f757bc886b430d0c018bf0/) | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf251290866cfca9ad4d0cbbde3742a0d12876682`](./contracts/ethereum-1/0xf251290866cfca9ad4d0cbbde3742a0d12876682/) | EulerIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x839d89e87183f4e09cd63abe1f2b0ec8549637ec`](./contracts/ethereum-1/0x839d89e87183f4e09cd63abe1f2b0ec8549637ec/) | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc734d636a8334f8d1d5619af3f0102fd5e62eca8`](./contracts/ethereum-1/0xc734d636a8334f8d1d5619af3f0102fd5e62eca8/) | pUSDeLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bcc15f6c0c63e511a1b55a7625f311a93854be8`](./contracts/ethereum-1/0x4bcc15f6c0c63e511a1b55a7625f311a93854be8/) | SaturnAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36f5930e314b2f611a786476d939f47b318c1939`](./contracts/ethereum-1/0x36f5930e314b2f611a786476d939f47b318c1939/) | SaturnStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12db794342437aaa93970c106f2b5d5dfe2f9eab`](./contracts/ethereum-1/0x12db794342437aaa93970c106f2b5d5dfe2f9eab/) | sNUSDAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbebbeb5ec0fa689def85423d6c161b30bf3d6303`](./contracts/ethereum-1/0xbebbeb5ec0fa689def85423d6c161b30bf3d6303/) | sNUSDSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277`](./contracts/ethereum-1/0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277/) | sUSDeAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7940b983ccdd5818cf55129b84df5231751a4a7b`](./contracts/ethereum-1/0x7940b983ccdd5818cf55129b84df5231751a4a7b/) | TermmaxIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60f130c9d1533505c3931183693d3d91060b4f1f`](./contracts/ethereum-1/0x60f130c9d1533505c3931183693d3d91060b4f1f/) | TrancheDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=20

Zero-match audit list:

- [4595] audits.md
- [4596] index.html
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5
- [15559] 2023-03-07-linkpool_liquid_sd_index_pool.pdf

Fork inheritance lineage and inherited audits are included when available.
