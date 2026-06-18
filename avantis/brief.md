# Agentic Audit Brief: Avantis

⚠️ Lifecycle status: DECLINING - TVL dropped 49.8% over 90 days

## Project Overview

- Project: Avantis (`avantis`)
- Website: [https://www.avantisfi.com](https://www.avantisfi.com)
- Lifecycle: declining (Tier 0, 61.9% below peak)
- Generated: 2026-06-18T20:25:41.540Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: base
- Contract surface: 21 unique implementations (106 raw deployments)
- DeFi Llama TVL: $36,220,299.23
- On-chain TVL (included contracts): $151,488,610.99
- TVL by chain: Base $151,488,610.99

## Project Description

Avantis is a derivatives protocol on Base that enables leveraged trading and liquidity provisioning. Users can trade synthetic assets and provide liquidity through tranche-based vaults, with risk managed by a VaultManager.

### Architecture

The Avantis family shares infrastructure through proxy-upgraded contracts for trading, storage, and pricing. Tranche and VaultManager handle liquidity and risk, while Trading and TradingStorage manage order execution and state, all relying on PriceAggregator for oracle data.

## Contract Surface Quality

- Indexed contracts: 246; live-surface contracts included: 106 (106 live, 0 unknown).
- Excluded by liveness: 108 inactive, 32 singleton, 0 uninitialized.
- Deployment units: 7/23 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 16/20 (80.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 21
- Raw deployments: 106
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $150,918,147.34
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $150,918,147.34 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 16 | 80.0% | 2024-09 |
| Zokyo | Tier 2 | 16 | 80.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultManager | core_logic | base | unit-38973 | [`0xe9fb8c...7348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | ✅ Audited |
| PairInfos | periphery | base | n/a | 8 deployments: base [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/); base `0x4859a4...3c6f6e`; base `0xd344d6...e90f8a`; base `0xd4d8ee...075093`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ✅ Audited |
| PairInfos | periphery | base | unit-38964 | [`0x81f22d...d977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | ✅ Audited |
| PairStorage | registry | base | n/a | 19 deployments: base [`0x3a9392...e6d64d`](./contracts/base-8453/0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d/); base `0x433cf9...62db49`; base `0x4dadd0...0f8a04`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6b0181...e7ef54`; base `0x6f839d...80f830`; base `0x7affc4...e29f50`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x9894a0...351cec`; base `0xb3048b...50db66`; base `0xceab88...eb0968`; base `0xd910d2...98b195`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf76370...426aa1` | ✅ Audited |
| PriceAggregator | operational_periphery | base | n/a | 9 deployments: base [`0x0cce4d...72fca8`](./contracts/base-8453/0x0cce4d12192ea86bde79f774409cf6f5ee72fca8/); base `0x1a172d...98d287`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xbeddac...e2684f` | ✅ Audited |
| Referral | unknown | base | unit-38952 | [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/) | ✅ Audited |
| Referral | unknown | base | n/a | 2 deployments: base [`0xa96f57...dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/); base `0xfe4173...0b64f7` | ✅ Audited |
| Trading | unknown | base | n/a | 14 deployments: base [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/); base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x99c106...3c9669`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ✅ Audited |
| Trading | unknown | base | unit-38956 | [`0x449144...e11d4e`](./contracts/base-8453/0x44914408af82bc9983bbb330e3578e1105e11d4e/) | ✅ Audited |
| Trading | unknown | base | unit-38959 | [`0x5ff292...20535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | ✅ Audited |
| TradingCallbacks | unknown | base | n/a | 12 deployments: base [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/); base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x300a64...bdb960`; base `0x45452e...7a6330`; base `0x680149...fc421c`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ✅ Audited |
| TradingStorage | unknown | base | n/a | 7 deployments: base [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/); base `0x236a48...fecffa`; base `0x717eb3...92244a`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb916e6...4ae5c3`; base `0xdbff96...e7760b` | ✅ Audited |
| TradingStorage | unknown | base | unit-38966 | [`0x8a311d...f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | ✅ Audited |
| Tranche | core_logic | base | n/a | 7 deployments: base [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/); base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x8bc806...28d2bc`; base `0x96878c...429361`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ✅ Audited |
| VaultManager | core_logic | base | n/a | 7 deployments: base [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/); base `0x12c16c...a30546`; base `0x4ab200...ada864`; base `0x6201d3...cce9fc`; base `0xa7f4c2...fdfe96`; base `0xc15c0a...41ec18`; base `0xf9c4a5...b9f60a` | ✅ Audited |
| VeTranche | core_logic | base | n/a | 2 deployments: base [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/); base `0xe5391d...7ae565` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | base | n/a | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | ⚠️ Unaudited |
| Multicall | periphery | base | n/a | 7 deployments: base [`0x1602cc...3f4920`](./contracts/base-8453/0x1602cc5de704c0a946515493683f2eeed53f4920/); base `0x261640...e9ecda`; base `0x79ec9d...9ad1ab`; base `0x7a829c...3848d8`; base `0x98ae9a...b79040`; base `0xb040be...560222`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| Multicall | periphery | base | unit-38970 | [`0xa7cfc4...5d099e`](./contracts/base-8453/0xa7cfc43872f4d7b0e6141ee8c36f1f7fee5d099e/) | ⚠️ Unaudited |
| StakedToken | token | base | n/a | 3 deployments: base [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/); base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x0aa188...4752f4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Avantis_-_Zellic_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_1.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | 89 | high |
| [Avantis_-_Zellic_Audit_Report_2.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_2.pdf) | Zellic | Audit | 2024-09 | aging | Direct | contract_name | 87 | high |
| [Avantis_-_Zokyo_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zokyo_Audit_Report_1.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | contract_name | 89 | high |
| [DL audit link](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | Token | token | $150,918,147.34 | Verified native implementation with $150,918,147.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=501

Zero-match audit list:

- [15577] DL audit link
- [15578] DL audit link

Fork inheritance lineage and inherited audits are included when available.
