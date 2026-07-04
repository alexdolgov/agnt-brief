# Agentic Audit Brief: Tea-REX

## Project Overview

- Project: Tea-REX (`tea-rex`)
- Website: [https://alpha.trex.trade](https://alpha.trex.trade)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.812Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: sei
- Contract surface: 39 unique implementations (87 raw deployments)
- DeFi Llama TVL: $10,702.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 15 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 115; live-surface contracts included: 86 (82 live, 4 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/35 (14.3%)
- Deployed-live implementations: 35 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/35
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 39
- Raw deployments: 87
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 14.3% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SEINativeOracle | operational_periphery | sei | n/a | [`0xde3693...fe062f`](./contracts/sei-1329/0xde3693d33e594404aa1df704b6ad9dbbf7fe062f/) | ✅ Audited |
| TradingCore | unknown | sei | n/a | 2 deployments: sei [`0x7917fe...529491`](./contracts/sei-1329/0x7917fe88e1ba136135d951b91f0c27c1fa529491/); sei `0xb5ec75...0bd82c` | ✅ Audited |
| TradingCore | unknown | sei | n/a | [`0x99c290...21823e`](./contracts/sei-1329/0x99c2901d2883f8d295a989544f118e31ec21823e/) | ✅ Audited |
| TradingCore | unknown | sei | n/a | [`0xe33793...c27b9d`](./contracts/sei-1329/0xe33793230ad4587ec74306d52d28e80e36c27b9d/) | ✅ Audited |
| VariableInterestRateModel | unknown | sei | n/a | 6 deployments: sei [`0x46c1be...989f65`](./contracts/sei-1329/0x46c1be6a77043a7c47fcf6c9bd87147ed0989f65/); sei `0x483160...61c2c2`; sei `0x72cabd...faf3a7`; sei `0x7c7609...0d3713`; sei `0x8aa64e...ceea4f`; sei `0x8fcc61...4cc2ae` | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenericRouter1Inch | unknown | sei | n/a | 2 deployments: sei [`0x32fc18...114972`](./contracts/sei-1329/0x32fc18f94ea5c31b7b4d2220580774871d114972/); sei `0xefb9e4...db0f61` | ⚠️ Unaudited |
| MarketNFT | unknown | sei | n/a | 3 deployments: sei [`0x3fe436...be6cb6`](./contracts/sei-1329/0x3fe43696fb0a0a4d94be591ee3b5c31350be6cb6/); sei `0x565f00...308c26`; sei `0xcc7e2c...71d4bd` | ⚠️ Unaudited |
| MarketNFT | unknown | sei | n/a | 2 deployments: sei [`0x577993...70d2e2`](./contracts/sei-1329/0x57799369966901628dd9288668f19596e670d2e2/); sei `0xcad461...4b72f9` | ⚠️ Unaudited |
| MarketNFT | unknown | sei | n/a | 3 deployments: sei [`0x6d2c01...3832c1`](./contracts/sei-1329/0x6d2c01ba525c8aed3bd38fc1734abc4b953832c1/); sei `0xd576d8...c31814`; sei `0xfc7beb...f5d241` | ⚠️ Unaudited |
| MarketNFT | unknown | sei | n/a | [`0xb0dfe5...88f0ee`](./contracts/sei-1329/0xb0dfe588781c086f6c41d5dfd28864f6c088f0ee/) | ⚠️ Unaudited |
| OracleSwap | unknown | sei | n/a | 2 deployments: sei [`0x2e5d57...2dbcc5`](./contracts/sei-1329/0x2e5d577c748ae14dbd3176c99bf1b429502dbcc5/); sei `0x31e598...7c6d76` | ⚠️ Unaudited |
| OracleSwapProcessor | unknown | sei | n/a | 2 deployments: sei [`0x078112...d6a0cc`](./contracts/sei-1329/0x07811284e36fdc45f65cd56fc7c6929855d6a0cc/); sei `0xb0412d...2a14f0` | ⚠️ Unaudited |
| Pool | unknown | sei | n/a | 7 deployments: sei [`0x0a090b...91d469`](./contracts/sei-1329/0x0a090b6014ba37f78a013ad6291ae648f991d469/); sei `0x1546b2...212c05`; sei `0x66adcf...b3478b`; sei `0x75d68a...4285e8`; sei `0x98e3c9...b1328e`; sei `0xb67a8a...bbbd0e`; sei `0xd4e10d...d8dc00` | ⚠️ Unaudited |
| Pool | unknown | sei | n/a | 2 deployments: sei [`0x5d28dd...d357fa`](./contracts/sei-1329/0x5d28ddc2ce842bddd0c77ef68fc611c117d357fa/); sei `0xef3fd6...393b9c` | ⚠️ Unaudited |
| Pool | unknown | sei | n/a | 2 deployments: sei [`0x99eed8...7326f5`](./contracts/sei-1329/0x99eed8876e830aa88f0e67d4f8dfcc919c7326f5/); sei `0xbcbf6c...a07c87` | ⚠️ Unaudited |
| Pool | unknown | sei | n/a | [`0xb480c6...ea89e7`](./contracts/sei-1329/0xb480c6ede958f8f0161565967ba7585fbfea89e7/) | ⚠️ Unaudited |
| Router | unknown | sei | n/a | 2 deployments: sei [`0x016731...1fe429`](./contracts/sei-1329/0x0167311f50de1c5c14718543e15b42b98d1fe429/); sei `0xb745fd...31f36c` | ⚠️ Unaudited |
| Router | unknown | sei | n/a | 2 deployments: sei [`0x048589...ea492e`](./contracts/sei-1329/0x04858957be859c84438d7bec19724430f4ea492e/); sei `0x66345f...f75638` | ⚠️ Unaudited |
| Router | unknown | sei | n/a | 2 deployments: sei [`0x151e4a...992e15`](./contracts/sei-1329/0x151e4ad3c86f1565341a323a231f5e2efb992e15/); sei `0x36bb41...5a0e37` | ⚠️ Unaudited |
| Router | unknown | sei | n/a | 2 deployments: sei [`0x836245...6473a4`](./contracts/sei-1329/0x836245ba9e20cbbd262c75deb4ec4824906473a4/); sei `0x8f11db...cb02f6` | ⚠️ Unaudited |
| Router | unknown | sei | n/a | 2 deployments: sei [`0xa40d61...c0410d`](./contracts/sei-1329/0xa40d6143e370a0cc3df565c665ea4b2bf5c0410d/); sei `0xc5ad68...bb30fd` | ⚠️ Unaudited |
| Router | unknown | sei | n/a | 3 deployments: sei [`0xd2a9dd...b69e57`](./contracts/sei-1329/0xd2a9dd78019f28d4fee102e12119c74f6fb69e57/); sei `0xdf6bfe...59af02`; sei `0xf865b1...04d86c` | ⚠️ Unaudited |
| StakeVault | unknown | sei | n/a | 2 deployments: sei [`0xb1f4f4...8e0b1c`](./contracts/sei-1329/0xb1f4f4b1b3ae9a63ffd07b1fad1eab74db8e0b1c/); sei `0xd95020...a157dc` | ⚠️ Unaudited |
| SwapRelayer | unknown | sei | n/a | 6 deployments: sei [`0x031edb...e5d5ea`](./contracts/sei-1329/0x031edb936896978d1fc6f1b3ea9cfc9682e5d5ea/); sei `0x25f6f1...d1948a`; sei `0x2e39ef...3e074b`; sei `0x5e0659...1401c7`; sei `0x650895...156b6d`; sei `0xc525cf...dcc3d0` | ⚠️ Unaudited |
| TeaREX | unknown | sei | n/a | [`0xedf773...6ad859`](./contracts/sei-1329/0xedf7732991b3de8f46fb97dcd4c5cdb28e6ad859/) | ⚠️ Unaudited |
| TeaVaultV2Deployer | core_logic | sei | n/a | [`0xcaf51f...2326fa`](./contracts/sei-1329/0xcaf51fe06c62cf4bd855afba6a579c24d02326fa/) | ⚠️ Unaudited |
| TeaVaultV3Pair | unknown | sei | n/a | 2 deployments: sei [`0x0d9415...183608`](./contracts/sei-1329/0x0d94156522fc1592526e860e34050c4938183608/); sei `0x61733e...0c0ded` | ⚠️ Unaudited |
| TeaVaultV3Pair | unknown | sei | n/a | 2 deployments: sei [`0x3df58e...b6354c`](./contracts/sei-1329/0x3df58ecaae3e2f12082d316a32d14556a3b6354c/); sei `0xbe548c...e61f78` | ⚠️ Unaudited |
| TeaVaultV3Pair | unknown | sei | n/a | 2 deployments: sei [`0x5ab563...e9b67b`](./contracts/sei-1329/0x5ab563b563511e01cab3d78d15a52e071fe9b67b/); sei `0x662cd3...343aba` | ⚠️ Unaudited |
| TeaVaultV3Pair | unknown | sei | n/a | 2 deployments: sei [`0x7dc69b...2f7c21`](./contracts/sei-1329/0x7dc69b3900874be01b2d926a21656a9a952f7c21/); sei `0x9eba96...661368` | ⚠️ Unaudited |
| TeaVaultV3Pair | unknown | sei | n/a | 2 deployments: sei [`0x995ca8...a3823e`](./contracts/sei-1329/0x995ca8cd6e81dda7337dfbc050e59230aca3823e/); sei `0xc12db9...15f2e7` | ⚠️ Unaudited |
| TradingCore | unknown | sei | n/a | 3 deployments: sei [`0x199044...d00391`](./contracts/sei-1329/0x199044e2799cf9099b1d84b29a09f8ff23d00391/); sei `0x48a71c...f561e9`; sei `0xaa3b4d...6ef9aa` | ⚠️ Unaudited |
| TradingCore | unknown | sei | n/a | 3 deployments: sei [`0x1c44bf...c5b312`](./contracts/sei-1329/0x1c44bf3baee7eebb462c3f664de6bad6bdc5b312/); sei `0x5ccec5...209aa2`; sei `0x7fd6c4...c74396` | ⚠️ Unaudited |
| TradingCore | unknown | sei | n/a | 4 deployments: sei [`0x2464a3...55352f`](./contracts/sei-1329/0x2464a3d73aa9debe9b20b4aaca5e784dfb55352f/); sei `0x6960da...d676d3`; sei `0xda437b...91d056`; sei `0xf9b46e...f40a91` | ⚠️ Unaudited |
| VaultUtils | core_logic | sei | n/a | 2 deployments: sei [`0x525045...7b5ee9`](./contracts/sei-1329/0x52504590d7f82ce82eab61f7d84353bc757b5ee9/); sei `0xadee73...350094` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sei | n/a | `0x2ed994...823664` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x878ad0...571c5f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x90eebe...e6d1cf` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xdbfe68...acc899` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/TeahouseFinance/Tea-REX/blob/master/audit.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x32fc18...114972`](./contracts/sei-1329/0x32fc18f94ea5c31b7b4d2220580774871d114972/) | GenericRouter1Inch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x3fe436...be6cb6`](./contracts/sei-1329/0x3fe43696fb0a0a4d94be591ee3b5c31350be6cb6/) | MarketNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x577993...70d2e2`](./contracts/sei-1329/0x57799369966901628dd9288668f19596e670d2e2/) | MarketNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x6d2c01...3832c1`](./contracts/sei-1329/0x6d2c01ba525c8aed3bd38fc1734abc4b953832c1/) | MarketNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xb0dfe5...88f0ee`](./contracts/sei-1329/0xb0dfe588781c086f6c41d5dfd28864f6c088f0ee/) | MarketNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2e5d57...2dbcc5`](./contracts/sei-1329/0x2e5d577c748ae14dbd3176c99bf1b429502dbcc5/) | OracleSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x078112...d6a0cc`](./contracts/sei-1329/0x07811284e36fdc45f65cd56fc7c6929855d6a0cc/) | OracleSwapProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0a090b...91d469`](./contracts/sei-1329/0x0a090b6014ba37f78a013ad6291ae648f991d469/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5d28dd...d357fa`](./contracts/sei-1329/0x5d28ddc2ce842bddd0c77ef68fc611c117d357fa/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x99eed8...7326f5`](./contracts/sei-1329/0x99eed8876e830aa88f0e67d4f8dfcc919c7326f5/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xb480c6...ea89e7`](./contracts/sei-1329/0xb480c6ede958f8f0161565967ba7585fbfea89e7/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x016731...1fe429`](./contracts/sei-1329/0x0167311f50de1c5c14718543e15b42b98d1fe429/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x048589...ea492e`](./contracts/sei-1329/0x04858957be859c84438d7bec19724430f4ea492e/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x151e4a...992e15`](./contracts/sei-1329/0x151e4ad3c86f1565341a323a231f5e2efb992e15/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x836245...6473a4`](./contracts/sei-1329/0x836245ba9e20cbbd262c75deb4ec4824906473a4/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xa40d61...c0410d`](./contracts/sei-1329/0xa40d6143e370a0cc3df565c665ea4b2bf5c0410d/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xd2a9dd...b69e57`](./contracts/sei-1329/0xd2a9dd78019f28d4fee102e12119c74f6fb69e57/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xb1f4f4...8e0b1c`](./contracts/sei-1329/0xb1f4f4b1b3ae9a63ffd07b1fad1eab74db8e0b1c/) | StakeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x031edb...e5d5ea`](./contracts/sei-1329/0x031edb936896978d1fc6f1b3ea9cfc9682e5d5ea/) | SwapRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xedf773...6ad859`](./contracts/sei-1329/0xedf7732991b3de8f46fb97dcd4c5cdb28e6ad859/) | TeaREX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xcaf51f...2326fa`](./contracts/sei-1329/0xcaf51fe06c62cf4bd855afba6a579c24d02326fa/) | TeaVaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0d9415...183608`](./contracts/sei-1329/0x0d94156522fc1592526e860e34050c4938183608/) | TeaVaultV3Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x3df58e...b6354c`](./contracts/sei-1329/0x3df58ecaae3e2f12082d316a32d14556a3b6354c/) | TeaVaultV3Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5ab563...e9b67b`](./contracts/sei-1329/0x5ab563b563511e01cab3d78d15a52e071fe9b67b/) | TeaVaultV3Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7dc69b...2f7c21`](./contracts/sei-1329/0x7dc69b3900874be01b2d926a21656a9a952f7c21/) | TeaVaultV3Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x995ca8...a3823e`](./contracts/sei-1329/0x995ca8cd6e81dda7337dfbc050e59230aca3823e/) | TeaVaultV3Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x199044...d00391`](./contracts/sei-1329/0x199044e2799cf9099b1d84b29a09f8ff23d00391/) | TradingCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1c44bf...c5b312`](./contracts/sei-1329/0x1c44bf3baee7eebb462c3f664de6bad6bdc5b312/) | TradingCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2464a3...55352f`](./contracts/sei-1329/0x2464a3d73aa9debe9b20b4aaca5e784dfb55352f/) | TradingCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x525045...7b5ee9`](./contracts/sei-1329/0x52504590d7f82ce82eab61f7d84353bc757b5ee9/) | VaultUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
