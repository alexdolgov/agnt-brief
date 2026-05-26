# Agentic Audit Brief: Avantis

⚠️ Lifecycle status: UNKNOWN - TVL dropped 49.8% over 90 days

## Project Overview

- Project: Avantis (`avantis`)
- Website: [https://www.avantisfi.com/referral?code=DefiLlama](https://www.avantisfi.com/referral?code=DefiLlama)
- Lifecycle: unknown (Tier 0, 61.9% below peak)
- Generated: 2026-05-26T12:15:45.347Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: base
- Contract surface: 61 unique implementations (240 raw deployments)
- DeFi Llama TVL: $45,493,850.13
- On-chain TVL (included contracts): $196,511,711.50
- TVL by chain: Base $196,511,711.50

## Project Description

Avantis is a derivatives protocol on Base that enables leveraged trading and liquidity provisioning. Users can trade synthetic assets and provide liquidity through tranche-based vaults, with risk managed by a VaultManager.

### Architecture

The Avantis family shares infrastructure through proxy-upgraded contracts for trading, storage, and pricing. Tranche and VaultManager handle liquidity and risk, while Trading and TradingStorage manage order execution and state, all relying on PriceAggregator for oracle data.

## Audit Coverage Summary

- Verified implementations audited: 11/16 (68.8%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 61
- Raw deployments: 240
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $150,918,147.34
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $150,918,147.34 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 11 | 68.8% | 2024-09 |
| Zokyo | Tier 2 | 11 | 68.8% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Tranche | core_logic | base | 15 deployments: base [`0x1216d1...151680`](./contracts/base-8453/0x1216d111d35fb660624885b2d37b09ce48151680/); base `0x2ac590...6d56e7`; base `0x2db4ff...473775`; base `0x548f3f...90d500`; base `0x5d023a...637c8f`; base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x83084c...7b66f7`; base `0x8bc806...28d2bc`; base `0x944766...c9e7f9`; base `0x96878c...429361`; base `0xc14930...f56559`; base `0xc3769e...fba26d`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ✅ Audited |
| VaultManager | core_logic | base | 16 deployments: base [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/); base `0x12c16c...a30546`; base `0x13c7e5...7de37a`; base `0x4ab200...ada864`; base `0x535940...a437b8`; base `0x6201d3...cce9fc`; base `0x866e4a...e3973d`; base `0x8e99ae...dd367d`; base `0xa7f4c2...fdfe96`; base `0xbe37bc...1c8cd7`; base `0xc15c0a...41ec18`; base `0xe9fb8c...7348dd`; base `0xee7126...109a77`; base `0xf68920...5526ab`; base `0xf9c4a5...b9f60a`; base `0xffd831...f811c5` | ✅ Audited |
| VeTranche | core_logic | base | 8 deployments: base [`0x39fe28...d4785b`](./contracts/base-8453/0x39fe2822f3b1a02099bd89cced23af69f4d4785b/); base `0x691411...d21693`; base `0x7bf094...8efb05`; base `0x8b0cf2...aa23ac`; base `0xa0ab93...5a9b46`; base `0xa13e59...aa61f7`; base `0xadeb64...21fcdd`; base `0xe5391d...7ae565` | ✅ Audited |
| Execute | unknown | base | 4 deployments: base [`0x37382e...2f9735`](./contracts/base-8453/0x37382e497877b827e0da32521a152d41ee2f9735/); base `0x9d1510...a41e31`; base `0x9d4846...c5b7f8`; base `0xdbdd7b...2c306a` | ✅ Audited |
| PairInfos | periphery | base | 15 deployments: base [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/); base `0x28f525...c0e136`; base `0x3075ca...e5c3d9`; base `0x4859a4...3c6f6e`; base `0x7cc70d...cfde64`; base `0x7e7463...b5afb8`; base `0x81f22d...d977e5`; base `0x86ff25...2ba98d`; base `0x8f50ea...3b6de3`; base `0x9323cb...2ad489`; base `0xa86a0d...dae787`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ✅ Audited |
| PairStorage | registry | base | 30 deployments: base [`0x2f0926...969ca9`](./contracts/base-8453/0x2f09260089c75112ef20621d947f96cea6969ca9/); base `0x433cf9...62db49`; base `0x45ad5d...5e515d`; base `0x4dadd0...0f8a04`; base `0x4ff011...de7eba`; base `0x5db377...6faec4`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6a2be7...2b2a88`; base `0x6b0181...e7ef54`; base `0x6eca24...d2b1e9`; base `0x6f839d...80f830`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x92ed15...d6ff94`; base `0x9894a0...351cec`; base `0x991cc2...531e87`; base `0x9db724...575a71`; base `0xb3048b...50db66`; base `0xbf8d25...2542b3`; base `0xceab88...eb0968`; base `0xd2c75f...39187b`; base `0xd910d2...98b195`; base `0xe41c54...372c26`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf68a5c...4b0397`; base `0xf76370...426aa1` | ✅ Audited |
| PriceAggregator | operational_periphery | base | 16 deployments: base [`0x0611a3...336ad9`](./contracts/base-8453/0x0611a36cb46a19f5df3dc57951248a6f5f336ad9/); base `0x0cce4d...72fca8`; base `0x1996eb...921698`; base `0x1a172d...98d287`; base `0x4efea7...8e74f9`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x64e262...3da511`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xa4a1a9...e09b41`; base `0xbe4c3b...073be5`; base `0xbeddac...e2684f`; base `0xd008f2...ff5e19` | ✅ Audited |
| Referral | unknown | base | 6 deployments: base [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/); base `0x45e061...49112b`; base `0x7f163a...019bd1`; base `0xa3672c...5228a4`; base `0xa96f57...dbb1bd`; base `0xfe4173...0b64f7` | ✅ Audited |
| Trading | unknown | base | 24 deployments: base [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/); base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x449144...e11d4e`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x5ff292...20535f`; base `0x60ff79...961248`; base `0x658828...3748b4`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x828b64...bed78c`; base `0x99c106...3c9669`; base `0x9f6158...97d644`; base `0xbd958a...9c70b0`; base `0xc10a28...18790b`; base `0xcb2806...156ad8`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xd973b8...6d9783`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ✅ Audited |
| TradingCallbacks | unknown | base | 19 deployments: base [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/); base `0x00ee42...c53bda`; base `0x0c16ff...9c7970`; base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x27282c...3442e9`; base `0x300a64...bdb960`; base `0x373fae...919349`; base `0x4263f0...eea20c`; base `0x45452e...7a6330`; base `0x5e9045...6dc186`; base `0x680149...fc421c`; base `0x6a2293...7c5de0`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ✅ Audited |
| TradingStorage | unknown | base | 18 deployments: base [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/); base `0x20155a...16e131`; base `0x222818...d23318`; base `0x236a48...fecffa`; base `0x586f65...b4e4f2`; base `0x62c544...371ca2`; base `0x717eb3...92244a`; base `0x83dbaf...35a996`; base `0x8a311d...f7422d`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb4d2f8...320c47`; base `0xb916e6...4ae5c3`; base `0xcee7ec...50cfd7`; base `0xd14447...a7728c`; base `0xdbff96...e7760b`; base `0xe8ae56...e966d8`; base `0xf77e2b...01db70` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | base | 2 deployments: base [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/); base `0xc00989...89e070` | ⚠️ Unaudited |
| Multicall | periphery | base | 16 deployments: base [`0x118f99...c1e5c0`](./contracts/base-8453/0x118f99abd7101b528b17ab91c7d7aefd2cc1e5c0/); base `0x125d3e...742fe8`; base `0x141d8b...2a7257`; base `0x1602cc...3f4920`; base `0x20076b...9296da`; base `0x23035f...29f33c`; base `0x261640...e9ecda`; base `0x513137...ebb2be`; base `0x603664...0f82c5`; base `0x7a829c...3848d8`; base `0x88ab4a...33eb80`; base `0xa7cfc4...5d099e`; base `0xb040be...560222`; base `0xc40153...5e7eda`; base `0xd46933...a0a8a4`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| OpClaim | unknown | base | 2 deployments: base [`0x1c69cc...0203a5`](./contracts/base-8453/0x1c69cc8be2b29225b74743752a721ca21d0203a5/); base `0x93c08d...6663ca` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | [`0x2d898e...1ae8bb`](./contracts/base-8453/0x2d898e46a20ebfc1424d4bbf69bacd92dc1ae8bb/) | ⚠️ Unaudited |
| StakedToken | token | base | 3 deployments: base [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/); base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x22353ca850ac6bf0f1f1641f7a256f6e690f078b) | proxy | base | `0x37de04...63f17c` | ❓ Unverified |
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | proxy | base | `0x8b2ca7...28f086` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0301d4...1c8dcf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0694b9...678abb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x09ba7f...607294` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0aa188...4752f4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c78ee...e11897` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0e1456...29916a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fe822...9f8623` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x188c9b...2eac3f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x22353c...0f078b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x23c1e2...82e528` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x307f65...fcc653` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x37e799...6f2e01` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4631ee...c3fff7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4a4126...b2d193` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4cf914...c91e46` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5d56b8...77c43d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5efce5...f5073c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x646f66...828001` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x699b36...db854a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c6eb6...63b1cc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6f5fb1...4c3a42` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x715cb5...3f739b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x75eef2...fa14f9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7de3b1...7b76ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87b76f...d57952` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x88f82a...d2921f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9e50ce...ceec8f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xad6962...eb1446` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb07b88...38e75e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb8c43f...9502ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbdd3f9...536f74` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd09324...841529` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd4fea9...d0d641` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd6dd0a...28bc3f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdb1a5f...8d59ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe1a60b...695044` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xedc822...cc1a9a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf1e881...7c8f18` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf2299b...f42f01` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfa420c...a1a730` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfd8238...3ce547` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe264c...bb49f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xffd093...06a08f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Avantis_-_Zellic_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_1.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | 171 | high |
| [Avantis_-_Zellic_Audit_Report_2.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_2.pdf) | Zellic | Audit | 2024-09 | aging | Direct | contract_name | 159 | high |
| [Avantis_-_Zokyo_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zokyo_Audit_Report_1.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | contract_name | 171 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | Token | token | $150,918,147.34 | Verified native implementation with $150,918,147.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=501

Fork inheritance lineage and inherited audits are included when available.
