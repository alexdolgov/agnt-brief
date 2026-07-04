# Agentic Audit Brief: Avantis

⚠️ Lifecycle status: DECLINING - TVL dropped 54.4% over 90 days

## Project Overview

- Project: Avantis (`avantis`)
- Website: [https://www.avantisfi.com](https://www.avantisfi.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:05.028Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base
- Contract surface: 31 unique implementations (177 raw deployments)
- DeFi Llama TVL: $31,297,482.40
- On-chain TVL (included contracts): $91,168,445.84
- TVL by chain: Base $91,168,445.84

## Project Description

Derivatives. Structurally: 37 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 4 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (contextupgradeable, proxy, erc1967upgrade). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 183; live-surface contracts included: 174 (168 live, 6 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/17 (82.4%)
- Deployed-live implementations: 27 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 20/27
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 31
- Raw deployments: 177
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $90,427,212.63
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 20 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $90,427,212.63 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 20 | 74.1% | 2023-12 |
| Zellic | Tier 2 | 20 | 74.1% | 2024-09 |
| Zokyo | Tier 2 | 16 | 59.3% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultManager | core_logic | base | n/a | [`0xe9fb8c...7348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | ✅ Audited |
| Execute | unknown | base | n/a | 2 deployments: base [`0x9d1510...a41e31`](./contracts/base-8453/0x9d15103f8fdbf9b989583a37a49724f6b3a41e31/); base `0x9d4846...c5b7f8` | ✅ Audited |
| PairInfos | periphery | base | n/a | 15 deployments: base [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/); base `0x28f525...c0e136`; base `0x4859a4...3c6f6e`; base `0x7cc70d...cfde64`; base `0x7e7463...b5afb8`; base `0x86ff25...2ba98d`; base `0x8f50ea...3b6de3`; base `0x9323cb...2ad489`; base `0xa86a0d...dae787`; base `0xd344d6...e90f8a`; base `0xd4d8ee...075093`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ✅ Audited |
| PairInfos | periphery | base | n/a | [`0x81f22d...d977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | ✅ Audited |
| PairStorage | unknown | base | n/a | 28 deployments: base [`0x2f0926...969ca9`](./contracts/base-8453/0x2f09260089c75112ef20621d947f96cea6969ca9/); base `0x3a9392...e6d64d`; base `0x433cf9...62db49`; base `0x45ad5d...5e515d`; base `0x4dadd0...0f8a04`; base `0x4ff011...de7eba`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6b0181...e7ef54`; base `0x6eca24...d2b1e9`; base `0x6f839d...80f830`; base `0x7affc4...e29f50`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x9894a0...351cec`; base `0x9db724...575a71`; base `0xb3048b...50db66`; base `0xbf8d25...2542b3`; base `0xceab88...eb0968`; base `0xd2c75f...39187b`; base `0xd910d2...98b195`; base `0xe41c54...372c26`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf68a5c...4b0397`; base `0xf76370...426aa1` | ✅ Audited |
| PairStorage | unknown | base | n/a | 2 deployments: base [`0x5db377...6faec4`](./contracts/base-8453/0x5db3772136e5557efe028db05ee95c84d76faec4/); base `0x6a2be7...2b2a88` | ✅ Audited |
| PriceAggregator | unknown | base | n/a | 14 deployments: base [`0x0611a3...336ad9`](./contracts/base-8453/0x0611a36cb46a19f5df3dc57951248a6f5f336ad9/); base `0x0cce4d...72fca8`; base `0x1996eb...921698`; base `0x1a172d...98d287`; base `0x4efea7...8e74f9`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xa4a1a9...e09b41`; base `0xbe4c3b...073be5`; base `0xbeddac...e2684f` | ✅ Audited |
| Referral | unknown | base | n/a | [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/) | ✅ Audited |
| Referral | unknown | base | n/a | 2 deployments: base [`0x45e061...49112b`](./contracts/base-8453/0x45e0611972e930462781c75c7295504c0e49112b/); base `0xa3672c...5228a4` | ✅ Audited |
| Referral | unknown | base | n/a | 3 deployments: base [`0x7f163a...019bd1`](./contracts/base-8453/0x7f163ae5cdde135d96c27f5be626341a20019bd1/); base `0xa96f57...dbb1bd`; base `0xfe4173...0b64f7` | ✅ Audited |
| Trading | unknown | base | n/a | 19 deployments: base [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/); base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x658828...3748b4`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x828b64...bed78c`; base `0x99c106...3c9669`; base `0xbd958a...9c70b0`; base `0xc10a28...18790b`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xd973b8...6d9783`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ✅ Audited |
| Trading | unknown | base | n/a | [`0x449144...e11d4e`](./contracts/base-8453/0x44914408af82bc9983bbb330e3578e1105e11d4e/) | ✅ Audited |
| Trading | unknown | base | n/a | [`0x5ff292...20535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | ✅ Audited |
| Trading | unknown | base | n/a | 2 deployments: base [`0x60ff79...961248`](./contracts/base-8453/0x60ff7987fa2ad267fc6723b96bb2426bd7961248/); base `0xcb2806...156ad8` | ✅ Audited |
| TradingCallbacks | unknown | base | n/a | 17 deployments: base [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/); base `0x00ee42...c53bda`; base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x27282c...3442e9`; base `0x300a64...bdb960`; base `0x373fae...919349`; base `0x4263f0...eea20c`; base `0x45452e...7a6330`; base `0x680149...fc421c`; base `0x6a2293...7c5de0`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ✅ Audited |
| TradingStorage | unknown | base | n/a | 16 deployments: base [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/); base `0x20155a...16e131`; base `0x222818...d23318`; base `0x236a48...fecffa`; base `0x586f65...b4e4f2`; base `0x62c544...371ca2`; base `0x717eb3...92244a`; base `0x83dbaf...35a996`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb4d2f8...320c47`; base `0xb916e6...4ae5c3`; base `0xd14447...a7728c`; base `0xdbff96...e7760b`; base `0xe8ae56...e966d8`; base `0xf77e2b...01db70` | ✅ Audited |
| TradingStorage | unknown | base | n/a | [`0x8a311d...f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | ✅ Audited |
| Tranche | core_logic | base | n/a | 11 deployments: base [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/); base `0x548f3f...90d500`; base `0x5d023a...637c8f`; base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x8bc806...28d2bc`; base `0x96878c...429361`; base `0xc14930...f56559`; base `0xc3769e...fba26d`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ✅ Audited |
| VaultManager | core_logic | base | n/a | 12 deployments: base [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/); base `0x12c16c...a30546`; base `0x13c7e5...7de37a`; base `0x4ab200...ada864`; base `0x535940...a437b8`; base `0x6201d3...cce9fc`; base `0x866e4a...e3973d`; base `0x8e99ae...dd367d`; base `0xa7f4c2...fdfe96`; base `0xc15c0a...41ec18`; base `0xf9c4a5...b9f60a`; base `0xffd831...f811c5` | ✅ Audited |
| VeTranche | core_logic | base | n/a | 4 deployments: base [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/); base `0xa0ab93...5a9b46`; base `0xadeb64...21fcdd`; base `0xe5391d...7ae565` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | base | n/a | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | ⚠️ Unaudited |
| Multicall | periphery | base | n/a | 7 deployments: base [`0x1602cc...3f4920`](./contracts/base-8453/0x1602cc5de704c0a946515493683f2eeed53f4920/); base `0x261640...e9ecda`; base `0x79ec9d...9ad1ab`; base `0x7a829c...3848d8`; base `0x98ae9a...b79040`; base `0xb040be...560222`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| Multicall | unknown | base | n/a | 2 deployments: base [`0x23035f...29f33c`](./contracts/base-8453/0x23035f0574adc543f5611eac9a518215fa29f33c/); base `0x603664...0f82c5` | ⚠️ Unaudited |
| Multicall | unknown | base | n/a | 2 deployments: base [`0x88ab4a...33eb80`](./contracts/base-8453/0x88ab4ad767955f495b25fad394318b920533eb80/); base `0xc40153...5e7eda` | ⚠️ Unaudited |
| Multicall | periphery | base | n/a | [`0xa7cfc4...5d099e`](./contracts/base-8453/0xa7cfc43872f4d7b0e6141ee8c36f1f7fee5d099e/) | ⚠️ Unaudited |
| OpClaim | unknown | base | n/a | 2 deployments: base [`0x1c69cc...0203a5`](./contracts/base-8453/0x1c69cc8be2b29225b74743752a721ca21d0203a5/); base `0x93c08d...6663ca` | ⚠️ Unaudited |
| StakedToken | token | base | n/a | 3 deployments: base [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/); base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |

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
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | unknown | base | n/a | 2 deployments: base `0x8b2ca7...28f086`; base `0xfa420c...a1a730` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0aa188...4752f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x22353c...0f078b`; base `0x37de04...63f17c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8c43f...9502ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Avantis_-_Zellic_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_1.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | 16 | n/a |
| [Avantis_-_Zellic_Audit_Report_2.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_2.pdf) | Zellic | Audit | 2024-09 | aging | Direct | contract_name | 15 | n/a |
| [Avantis_-_Zokyo_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zokyo_Audit_Report_1.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | contract_name | 16 | n/a |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | 153 | high |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 153 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | Token | token | $90,427,212.63 | Verified native implementation with $90,427,212.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c69cc...0203a5`](./contracts/base-8453/0x1c69cc8be2b29225b74743752a721ca21d0203a5/) | OpClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=47, extraction_exact=350

Fork inheritance lineage and inherited audits are included when available.
