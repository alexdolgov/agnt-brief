# Agentic Audit Brief: Tarot

⚠️ Lifecycle status: DEAD - TVL changed 3.3% over 90 days

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:49.891Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon
- Contract surface: 98 unique implementations (152 raw deployments)
- DeFi Llama TVL: $991,802.37
- On-chain TVL (included contracts): $154,407.65
- TVL by chain: Optimism $154,407.65

## Project Description

Tarot is a decentralized lending and borrowing protocol that enables users to supply assets into isolated lending pools and borrow against them. It also provides leveraged yield farming through its vault infrastructure, allowing users to amplify returns on liquidity provider tokens.

### Architecture

Lending pools and leveraged yield vaults share the same factory and router infrastructure for deployment and user interaction. Vaults borrow from lending pools to execute leveraged strategies, while supply vault tokens represent user deposits in lending pools, and protocol reserves manage fees and incentives across both families.

## Contract Surface Quality

- Indexed contracts: 283; live-surface contracts included: 152 (21 live, 131 unknown).
- Excluded by liveness: 131 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/27 (0.0%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 98
- Raw deployments: 152
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $154,407.65
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $154,407.65 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV6ERC20 | token | optimism | n/a | [`0x375488...e736bf`](./contracts/optimism-10/0x375488f097176507e39b9653b88fdc52cde736bf/) | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | optimism | n/a | 4 deployments: optimism [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/); optimism `0x550d17...a0465d`; optimism `0x811c27...cdd744`; optimism `0x8d3474...cd03f8` | ⚠️ Unaudited |
| AeroDexHandler | unknown | base | n/a | [`0xa516b9...84405f`](./contracts/base-8453/0xa516b9c7378799799e6dfadbdabf45d5b584405f/) | ⚠️ Unaudited |
| AeroVaultTokenFactory | registry | base | n/a | [`0x82d973...cdc245`](./contracts/base-8453/0x82d973434a509f7fe919a8e03a8113be64cdc245/) | ⚠️ Unaudited |
| BDeployer | unknown | polygon | n/a | 8 deployments: polygon [`0x1d90fd...d0989e`](./contracts/polygon-137/0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e/); base `0x5a8931...933e17`; arbitrum `0x35c052...3432ea`; arbitrum `0x455a76...ab8959`; arbitrum `0x6108fe...121834`; arbitrum `0xb092e1...e36ac2`; arbitrum `0xc5a397...51382a`; arbitrum `0xe1ac0c...c9d452` | ⚠️ Unaudited |
| CDeployer | unknown | arbitrum | n/a | 8 deployments: polygon `0xd4a6a0...e01741`; base `0x952e9c...30335a`; arbitrum [`0x6b8095...7c7227`](./contracts/arbitrum-42161/0x6b80958cfd3ceb8af809e3ed441b64ab2e7c7227/); arbitrum `0x82b341...37da11`; arbitrum `0x82d973...cdc245`; arbitrum `0xb3f352...0b6252`; arbitrum `0xb6193d...bd1bf2`; arbitrum `0xee618c...6c64bd` | ⚠️ Unaudited |
| ClaimAggregator | unknown | optimism | n/a | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ⚠️ Unaudited |
| Factory | registry | arbitrum | n/a | 8 deployments: polygon `0x36df0a...e38a35`; base `0xeb5809...dfc12d`; arbitrum [`0x1967c7...fe5883`](./contracts/arbitrum-42161/0x1967c70031e8b562a2738d22e95a049bebfe5883/); arbitrum `0x1bbd56...553f80`; arbitrum `0x2217ae...8dba55`; arbitrum `0x4b6dae...dd4723`; arbitrum `0x8cec72...2fe526`; arbitrum `0xc20099...406d3a` | ⚠️ Unaudited |
| OptiSwap | unknown | polygon | n/a | 3 deployments: polygon [`0x981bd9...c29af5`](./contracts/polygon-137/0x981bd9f77c8aafc14ebc86769503f86a3cc29af5/); base `0xf6e008...b7d697`; arbitrum [`0x981bd9...c29af5`](./contracts/arbitrum-42161/0x981bd9f77c8aafc14ebc86769503f86a3cc29af5/) | ⚠️ Unaudited |
| RamsesVaultTokenFactory | registry | arbitrum | n/a | [`0x6eb099...084e24`](./contracts/arbitrum-42161/0x6eb09970641809a23f38227af01ee41717084e24/) | ⚠️ Unaudited |
| Router02 | adapter | arbitrum | n/a | 7 deployments: optimism `0xa516b9...84405f`; bsc `0x1cafcb...54b653`; arbitrum [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/); arbitrum `0x1850b8...5b84ae`; arbitrum `0x19283d...92dc52`; arbitrum `0x1cafcb...54b653`; arbitrum `0x46fcde...301f30` | ⚠️ Unaudited |
| Router03 | adapter | arbitrum | n/a | 8 deployments: ethereum `0x3b47f0...e29771`; optimism `0x9761d4...b9a91e`; bsc `0x8184fa...405990`; polygon `0x6108fe...121834`; base `0xd7cabe...5fc83c`; arbitrum [`0x11876c...ebf1ac`](./contracts/arbitrum-42161/0x11876c56204b2e1e9763a802b7f15fc942ebf1ac/); avalanche `0x6108fe...121834`; linea `0x2217ae...8dba55` | ⚠️ Unaudited |
| SatinVaultTokenFactory | registry | polygon | n/a | [`0x82b341...37da11`](./contracts/polygon-137/0x82b3413d575aa93806308a04b53c78ae2037da11/) | ⚠️ Unaudited |
| SolidLizardStableVaultTokenFactory | registry | arbitrum | n/a | [`0x4775aa...ae3bb3`](./contracts/arbitrum-42161/0x4775aa12c9e0bb95f3b35139a4f22a886eae3bb3/) | ⚠️ Unaudited |
| SolidLizardVaultTokenFactory | registry | arbitrum | n/a | [`0x21d1ed...418cd3`](./contracts/arbitrum-42161/0x21d1ed29bcd89e1e07058575ee48ddaf02418cd3/) | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | arbitrum | n/a | 4 deployments: polygon `0xb6193d...bd1bf2`; base `0x582471...dc92e6`; arbitrum [`0x04e97d...310600`](./contracts/arbitrum-42161/0x04e97d5e3eff5981035622ef4681cf5470310600/); arbitrum `0xf54425...952691` | ⚠️ Unaudited |
| SterlingStableVaultTokenFactory | registry | arbitrum | n/a | [`0x416ae1...4830c9`](./contracts/arbitrum-42161/0x416ae142dbbe08531be93a83b13d93837a4830c9/) | ⚠️ Unaudited |
| SterlingVaultTokenFactory | registry | arbitrum | n/a | [`0x255f54...28233d`](./contracts/arbitrum-42161/0x255f549ae4fddaf22b2d75fc8344c1352a28233d/) | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | optimism | n/a | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | ⚠️ Unaudited |
| TarotMigrator | periphery | arbitrum | n/a | 2 deployments: polygon `0x5ecfec...160f18`; arbitrum [`0x07b414...604602`](./contracts/arbitrum-42161/0x07b414ad4e9b0866a30a05c6bc38fa48f7604602/) | ⚠️ Unaudited |
| TarotOFT | unknown | arbitrum | n/a | 7 deployments: ethereum `0xa10bf0...ea56e8`; optimism `0x1f514a...a737f7`; bsc `0x982e60...0690be`; polygon `0xb092e1...e36ac2`; base `0xf54425...952691`; arbitrum [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/); avalanche `0x5ecfec...160f18` | ⚠️ Unaudited |
| TarotPriceOracle | operational_periphery | arbitrum | n/a | [`0xa516b9...84405f`](./contracts/arbitrum-42161/0xa516b9c7378799799e6dfadbdabf45d5b584405f/) | ⚠️ Unaudited |
| TarotSolidlyPriceOracle | operational_periphery | arbitrum | n/a | [`0xd4a6a0...e01741`](./contracts/arbitrum-42161/0xd4a6a05081fd270dc111332845a778a49fe01741/) | ⚠️ Unaudited |
| TarotSolidlyPriceOracleV2 | operational_periphery | arbitrum | n/a | 3 deployments: polygon `0x5f90e2...e46401`; base `0x4b6dae...dd4723`; arbitrum [`0x36df0a...e38a35`](./contracts/arbitrum-42161/0x36df0a76a124d8b2205fa11766ec2eff8ce38a35/) | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | optimism | n/a | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | ⚠️ Unaudited |
| TowerPoolFactory | registry | arbitrum | n/a | 4 deployments: optimism `0x8f5301...7dfe50`; base `0xb0d74d...f57bee`; arbitrum [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/); linea `0x46fcde...301f30` | ⚠️ Unaudited |
| VaultTokenFactoryV2 | registry | arbitrum | n/a | [`0xfb3017...c898e7`](./contracts/arbitrum-42161/0xfb3017116a516898af427bdfe3aeb130f2c898e7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x04d04f...0c565a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x075b7f...96283a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0defef...5d968e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x17235b...121c35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1a8c7d...75dd4d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1f7a54...7420ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1f8e60...c5cdb7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x20aa24...f9754d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2217ae...8dba55` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x26b21e...e94572` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x283e62...89ad98` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2f7134...b36558` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3303a5...d3622e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x35c052...3432ea` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x36df0a...e38a35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3e9d8f...3341a4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3e9f34...a10251` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3f7e61...183a7c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x449ead...641561` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x44f768...e0d47d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x466ebd...a6e86b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x46fcde...301f30` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4c0931...94ebef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4f56f5...f8f897` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x51d49f...560ba7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5494b2...2a74df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5b0390...721765` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x63d555...febee6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x68d211...dacdfb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6caa3e...1c33a8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74d1d2...df92f4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7e5f7d...febb9a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x80d741...cf014b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x80fe67...c81c7b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x87d057...b64a35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9189a6...c595ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x93d014...35eaac` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa45776...c3d452` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa90092...75d876` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb7c2dd...37a274` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbf76f8...cf7322` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc2218e...c902d1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc5e2b0...8764cd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xcf8660...564889` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd204e3...c94d1e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd4fcd1...0979ef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdcaeee...c2eaed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe034c8...89f7d8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe1fe8b...e40e17` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe21ca4...1db6c7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe62745...83c275` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf62faf...9815a6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf6d943...dcd01b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0xb6193d...bd1bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0998d0...3c94d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bcd6c...746916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bd75e...24e97f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63f2a1...ae8bbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8184fa...405990` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x991b6b...a2354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa70d7...a9ad89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4b567...40b62e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6ed26...a97131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbecbd5...3d10a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc2587...d856bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd91a46...cad8c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK - Tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/) | SupplyVaultV2 | core_logic | $16,499.94 | Verified native implementation with $16,499.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x82d973...cdc245`](./contracts/base-8453/0x82d973434a509f7fe919a8e03a8113be64cdc245/) | AeroVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d90fd...d0989e`](./contracts/polygon-137/0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e/) | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b8095...7c7227`](./contracts/arbitrum-42161/0x6b80958cfd3ceb8af809e3ed441b64ab2e7c7227/) | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ClaimAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1967c7...fe5883`](./contracts/arbitrum-42161/0x1967c70031e8b562a2738d22e95a049bebfe5883/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x981bd9...c29af5`](./contracts/polygon-137/0x981bd9f77c8aafc14ebc86769503f86a3cc29af5/) | OptiSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6eb099...084e24`](./contracts/arbitrum-42161/0x6eb09970641809a23f38227af01ee41717084e24/) | RamsesVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x82b341...37da11`](./contracts/polygon-137/0x82b3413d575aa93806308a04b53c78ae2037da11/) | SatinVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4775aa...ae3bb3`](./contracts/arbitrum-42161/0x4775aa12c9e0bb95f3b35139a4f22a886eae3bb3/) | SolidLizardStableVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21d1ed...418cd3`](./contracts/arbitrum-42161/0x21d1ed29bcd89e1e07058575ee48ddaf02418cd3/) | SolidLizardVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x416ae1...4830c9`](./contracts/arbitrum-42161/0x416ae142dbbe08531be93a83b13d93837a4830c9/) | SterlingStableVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x255f54...28233d`](./contracts/arbitrum-42161/0x255f549ae4fddaf22b2d75fc8344c1352a28233d/) | SterlingVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | SupplyVaultRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07b414...604602`](./contracts/arbitrum-42161/0x07b414ad4e9b0866a30a05c6bc38fa48f7604602/) | TarotMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/) | TarotOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa516b9...84405f`](./contracts/arbitrum-42161/0xa516b9c7378799799e6dfadbdabf45d5b584405f/) | TarotPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd4a6a0...e01741`](./contracts/arbitrum-42161/0xd4a6a05081fd270dc111332845a778a49fe01741/) | TarotSolidlyPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36df0a...e38a35`](./contracts/arbitrum-42161/0x36df0a76a124d8b2205fa11766ec2eff8ce38a35/) | TarotSolidlyPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | TowerLongPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/) | TowerPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfb3017...c898e7`](./contracts/arbitrum-42161/0xfb3017116a516898af427bdfe3aeb130f2c898e7/) | VaultTokenFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3202] CertiK - Tarot

Fork inheritance lineage and inherited audits are included when available.
