# Agentic Audit Brief: MonoX

## Project Overview

- Project: MonoX (`monox`)
- Website: [https://monox.finance/](https://monox.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:35.094Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum, polygon
- Contract surface: 42 unique implementations (56 raw deployments)
- DeFi Llama TVL: $10,924.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 69 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 12 common project-authored base contract(s) (chainlinkedoraclesimple, oraclesimple, auth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 127; live-surface contracts included: 56 (42 live, 14 unknown).
- Excluded by liveness: 71 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/28 (3.6%)
- Deployed-live implementations: 28 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/28
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 42
- Raw deployments: 56
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 3.6% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MonoToken | token | polygon | n/a | 4 deployments: ethereum `0x2920f7d6134f4669343e70122ca9b8f19ef8fa5d`; ethereum `0x2f96856d2d1907a0ef95ec85c273affa80ebd16b`; polygon [`0x05323017c00874198cf1b0832922074beea0db83`](./contracts/polygon-137/0x05323017c00874198cf1b0832922074beea0db83/); polygon `0x988b49da1c7bf39edaf85004f9f9131fe995b2cd` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CyTokenOracle | unknown | ethereum | n/a | [`0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8`](./contracts/ethereum-1/0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48665a1410c0cd669a88898eca36b9fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | ethereum | n/a | [`0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0`](./contracts/ethereum-1/0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5b757523ca6f7f049ac02151808e6a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| LiquidationAuction01 | unknown | ethereum | n/a | [`0xa41a3625c02c60ae932515e7f921ada1811af6a5`](./contracts/ethereum-1/0xa41a3625c02c60ae932515e7f921ada1811af6a5/) | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | ethereum | n/a | [`0x854bf644e31d6619d3fe246f8d83e87ed85baa12`](./contracts/ethereum-1/0x854bf644e31d6619d3fe246f8d83e87ed85baa12/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rMainAsset | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270`](./contracts/ethereum-1/0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270/); ethereum `0x989ac9c8353c3f01412705d7e50b4ab9e804c227`; ethereum `0xa7e17e0e06544a1a281ffce2b86090e6fe5f91ed` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rPoolToken | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0ca1a59a987922375234df94919a456f61e93e1e`](./contracts/ethereum-1/0x0ca1a59a987922375234df94919a456f61e93e1e/); ethereum `0x61ad09b18c192834859e1a8c22abc457f5d38f5f`; ethereum `0xb5927cae19572166bfd19a0ad18af825760fb75b`; ethereum `0xc39c00474956e4a098a50bf796b8be07203e55ba`; ethereum `0xfeacfc01e122bb6b17dc4aef4f0e3be20fca888d` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | ethereum | n/a | [`0x20c854cdd322d3a501da91374027b4b257de57dd`](./contracts/ethereum-1/0x20c854cdd322d3a501da91374027b4b257de57dd/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78d09b58402c29016425497289e12fdd12f06027`](./contracts/ethereum-1/0x78d09b58402c29016425497289e12fdd12f06027/); ethereum `0x88f2ec209b58076db31e4221a737313941be2ef8` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | ethereum | n/a | [`0x701a228b0d7a3fc740462e9b2af13f2a5c16c882`](./contracts/ethereum-1/0x701a228b0d7a3fc740462e9b2af13f2a5c16c882/) | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | ethereum | n/a | [`0xf6f90336666413c73a940e0a53cb2f762326ab10`](./contracts/ethereum-1/0xf6f90336666413c73a940e0a53cb2f762326ab10/) | ⚠️ Unaudited |
| LiquidationTriggerSimple | unknown | ethereum | n/a | 2 deployments: ethereum [`0x18485d35c86adb634c8879a58c25f50c960c5917`](./contracts/ethereum-1/0x18485d35c86adb634c8879a58c25f50c960c5917/); ethereum `0xb088c78a8e2e454a6145bfba37ca5de129688ff7` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MonoswapStaking | unknown | polygon | n/a | 3 deployments: ethereum `0x25a08a66ed40df5408f074340ecd1f013a176f90`; polygon [`0x086be93ef2345ae696671aca1843beb0a97ed226`](./contracts/polygon-137/0x086be93ef2345ae696671aca1843beb0a97ed226/); polygon `0x4e22879abb99e935187bd0b830591d45ec3e12ec` | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x1456688345527be1f37e9e627da0837d6f08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19`](./contracts/ethereum-1/0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19/) | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | ethereum | n/a | [`0x18a2381d318ee56d19316f4a7d39a2a7996e8390`](./contracts/ethereum-1/0x18a2381d318ee56d19316f4a7d39a2a7996e8390/) | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | ethereum | n/a | [`0x7f50d78062304b6f523f20e9baca8f3c72197424`](./contracts/ethereum-1/0x7f50d78062304b6f523f20e9baca8f3c72197424/) | ⚠️ Unaudited |
| VaultManagerParameters | unknown | ethereum | n/a | [`0x203153522b9eaef4ae17c6e99851ee7b2f7d312e`](./contracts/ethereum-1/0x203153522b9eaef4ae17c6e99851ee7b2f7d312e/) | ⚠️ Unaudited |
| VaultManagerStandard | unknown | ethereum | n/a | [`0x2726ebdf958cc15f5adb01aad22741329948fbdb`](./contracts/ethereum-1/0x2726ebdf958cc15f5adb01aad22741329948fbdb/) | ⚠️ Unaudited |
| VaultParameters | unknown | ethereum | n/a | [`0xb46f8cf42e504efe8bef895f848741daa55e9f1d`](./contracts/ethereum-1/0xb46f8cf42e504efe8bef895f848741daa55e9f1d/) | ⚠️ Unaudited |
| VCASH | unknown | polygon | n/a | [`0x7621ee0ce0f686b88dd70551b05f90dd3c04d6e9`](./contracts/polygon-137/0x7621ee0ce0f686b88dd70551b05f90dd3c04d6e9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48ddd27a4d54cd3e8c34f34f7e66e998442dbce3`](./contracts/ethereum-1/0x48ddd27a4d54cd3e8c34f34f7e66e998442dbce3/); ethereum `0x92e187a03b6cd19cb6af293ba17f2745fd2357d5` | ⚠️ Unaudited |
| YvTokenOracle | unknown | ethereum | n/a | [`0x759eb07a8258bcf5590e9303763803dcf264652d`](./contracts/ethereum-1/0x759eb07a8258bcf5590e9303763803dcf264652d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3f03b937b986ad10dd171c393562f3fbe03abd9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x754106b2f312c987dd34161f8b4735392fa93f06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x852de08f3cd5b92dd8b3b92b321363d04eeec39e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f30aae9d4c15e6299d916d1117613d52331a2e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2790a32e611af1f653f2e2f151244f1dc2086eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5eb82b5929d802ca3dcfff45a1c2cb968274b48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd903b8ad06d5dd3dc42eeb587d773276eda115ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc11329dfae76e350187d2ade2ae5a7a7653c3cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c77fffc4cd32eb613f018912e9d44ce7a1c393e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14b06d3532c317ad7ecd5079431183f4aee21fed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d6ab30d0f9daea0288b6756d5fa806ada9fc99a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb695605aebd4ef761e877e5bbf5db03d769c13bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbcce33683dc632d0036d03b7612de8dc1543ee8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2658b3d54aa7b66cbe677ebaf6b728983b22ba9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MonoX_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/MonoX_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [drive.google.com/file/d/1nFS62QDifV4B8Mjo9Pj_rJ4fUujeVfq_/view](https://drive.google.com/file/d/1nFS62QDifV4B8Mjo9Pj_rJ4fUujeVfq_/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1WtlRAAfBF4HyQcUHKSJtT6MD7-mPN5Vz/view](https://drive.google.com/file/d/1WtlRAAfBF4HyQcUHKSJtT6MD7-mPN5Vz/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1V2GRFZYIXPY3omYndR0N_NgnDM9LM_3B/view](https://drive.google.com/file/d/1V2GRFZYIXPY3omYndR0N_NgnDM9LM_3B/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8`](./contracts/ethereum-1/0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8/) | CyTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd96f48665a1410c0cd669a88898eca36b9fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0`](./contracts/ethereum-1/0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0/) | ForceTransferAssetStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5b757523ca6f7f049ac02151808e6a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa41a3625c02c60ae932515e7f921ada1811af6a5`](./contracts/ethereum-1/0xa41a3625c02c60ae932515e7f921ada1811af6a5/) | LiquidationAuction01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x854bf644e31d6619d3fe246f8d83e87ed85baa12`](./contracts/ethereum-1/0x854bf644e31d6619d3fe246f8d83e87ed85baa12/) | LiquidationTriggerChainlinkMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270`](./contracts/ethereum-1/0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270/) | LiquidationTriggerKeep3rMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca1a59a987922375234df94919a456f61e93e1e`](./contracts/ethereum-1/0x0ca1a59a987922375234df94919a456f61e93e1e/) | LiquidationTriggerKeep3rPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c854cdd322d3a501da91374027b4b257de57dd`](./contracts/ethereum-1/0x20c854cdd322d3a501da91374027b4b257de57dd/) | LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78d09b58402c29016425497289e12fdd12f06027`](./contracts/ethereum-1/0x78d09b58402c29016425497289e12fdd12f06027/) | LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x701a228b0d7a3fc740462e9b2af13f2a5c16c882`](./contracts/ethereum-1/0x701a228b0d7a3fc740462e9b2af13f2a5c16c882/) | LiquidationTriggerKeydonixMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f90336666413c73a940e0a53cb2f762326ab10`](./contracts/ethereum-1/0xf6f90336666413c73a940e0a53cb2f762326ab10/) | LiquidationTriggerKeydonixPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18485d35c86adb634c8879a58c25f50c960c5917`](./contracts/ethereum-1/0x18485d35c86adb634c8879a58c25f50c960c5917/) | LiquidationTriggerSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x086be93ef2345ae696671aca1843beb0a97ed226`](./contracts/polygon-137/0x086be93ef2345ae696671aca1843beb0a97ed226/) | MonoswapStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1456688345527be1f37e9e627da0837d6f08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | USDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19`](./contracts/ethereum-1/0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18a2381d318ee56d19316f4a7d39a2a7996e8390`](./contracts/ethereum-1/0x18a2381d318ee56d19316f4a7d39a2a7996e8390/) | VaultManagerKeep3rSushiSwapPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f50d78062304b6f523f20e9baca8f3c72197424`](./contracts/ethereum-1/0x7f50d78062304b6f523f20e9baca8f3c72197424/) | VaultManagerKeydonixMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x203153522b9eaef4ae17c6e99851ee7b2f7d312e`](./contracts/ethereum-1/0x203153522b9eaef4ae17c6e99851ee7b2f7d312e/) | VaultManagerParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2726ebdf958cc15f5adb01aad22741329948fbdb`](./contracts/ethereum-1/0x2726ebdf958cc15f5adb01aad22741329948fbdb/) | VaultManagerStandard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb46f8cf42e504efe8bef895f848741daa55e9f1d`](./contracts/ethereum-1/0xb46f8cf42e504efe8bef895f848741daa55e9f1d/) | VaultParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7621ee0ce0f686b88dd70551b05f90dd3c04d6e9`](./contracts/polygon-137/0x7621ee0ce0f686b88dd70551b05f90dd3c04d6e9/) | VCASH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ddd27a4d54cd3e8c34f34f7e66e998442dbce3`](./contracts/ethereum-1/0x48ddd27a4d54cd3e8c34f34f7e66e998442dbce3/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x759eb07a8258bcf5590e9303763803dcf264652d`](./contracts/ethereum-1/0x759eb07a8258bcf5590e9303763803dcf264652d/) | YvTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [13515] drive.google.com/file/d/1nFS62QDifV4B8Mjo9Pj_rJ4fUujeVfq_/view
- [13516] drive.google.com/file/d/1WtlRAAfBF4HyQcUHKSJtT6MD7-mPN5Vz/view
- [13517] drive.google.com/file/d/1V2GRFZYIXPY3omYndR0N_NgnDM9LM_3B/view

Fork inheritance lineage and inherited audits are included when available.
