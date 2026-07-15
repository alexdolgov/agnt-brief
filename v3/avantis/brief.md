# Agentic Audit Brief: Avantis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 54.4% over 90 days

## Project Overview

- Project: Avantis (`avantis`)
- Website: [https://www.avantisfi.com](https://www.avantisfi.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 33 unique implementations (184 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $31,297,482.40
- On-chain TVL (included contracts): $91,168,445.84
- TVL by chain: Base $91,168,445.84

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Avantis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (2), abstract (1)
- Detected standards: erc1967proxy (2), erc165 (1), erc20 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Token (`0x696f94...5df4f1`, chain 8453)
- TransparentUpgradeableProxy (`0x449144...e11d4e`, chain 8453)
- TransparentUpgradeableProxy (`0x8a311d...f7422d`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 3 of 33 unique; 30 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/28
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 33
- Raw deployments: 184
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $90,427,212.63
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $90,427,212.63 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 7.1% | 2023-12 |
| Zellic | Tier 2 | 2 | 7.1% | 2024-09 |
| Zokyo | Tier 2 | 2 | 7.1% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Trading | unknown | project_anchor | own_supporting | 1 | base | unit-379852 | `0x449144...e11d4e` | ✅ Audited |
| TradingStorage | unknown | project_anchor | own_supporting | 1 | base | unit-379851 | `0x8a311d...f7422d` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | project_anchor | own_supporting | 0 | base | unit-379846 | `0x696f94...5df4f1` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe9fb8c...7348dd` | ⚠️ Unaudited |
| Execute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x9d1510...a41e31`; base `0x9d4846...c5b7f8` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x125d3e...742fe8`; base `0x141d8b...2a7257`; base `0x1602cc...3f4920`; base `0x20076b...9296da`; base `0x261640...e9ecda`; base `0x513137...ebb2be`; base `0x79ec9d...9ad1ab`; base `0x7a829c...3848d8`; base `0x98ae9a...b79040`; base `0xb040be...560222`; base `0xd46933...a0a8a4`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x23035f...29f33c`; base `0x603664...0f82c5` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x88ab4a...33eb80`; base `0xc40153...5e7eda` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xa7cfc4...5d099e` | ⚠️ Unaudited |
| OpClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1c69cc...0203a5`; base `0x93c08d...6663ca` | ⚠️ Unaudited |
| PairInfos | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x18cbd5...b9a975`; base `0x28f525...c0e136`; base `0x4859a4...3c6f6e`; base `0x7cc70d...cfde64`; base `0x7e7463...b5afb8`; base `0x86ff25...2ba98d`; base `0x8f50ea...3b6de3`; base `0x9323cb...2ad489`; base `0xa86a0d...dae787`; base `0xd344d6...e90f8a`; base `0xd4d8ee...075093`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ⚠️ Unaudited |
| PairInfos | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x81f22d...d977e5` | ⚠️ Unaudited |
| PairStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 28 deployments: base `0x2f0926...969ca9`; base `0x3a9392...e6d64d`; base `0x433cf9...62db49`; base `0x45ad5d...5e515d`; base `0x4dadd0...0f8a04`; base `0x4ff011...de7eba`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6b0181...e7ef54`; base `0x6eca24...d2b1e9`; base `0x6f839d...80f830`; base `0x7affc4...e29f50`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x9894a0...351cec`; base `0x9db724...575a71`; base `0xb3048b...50db66`; base `0xbf8d25...2542b3`; base `0xceab88...eb0968`; base `0xd2c75f...39187b`; base `0xd910d2...98b195`; base `0xe41c54...372c26`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf68a5c...4b0397`; base `0xf76370...426aa1` | ⚠️ Unaudited |
| PairStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5db377...6faec4`; base `0x6a2be7...2b2a88` | ⚠️ Unaudited |
| PriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x0611a3...336ad9`; base `0x0cce4d...72fca8`; base `0x1996eb...921698`; base `0x1a172d...98d287`; base `0x4efea7...8e74f9`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xa4a1a9...e09b41`; base `0xbe4c3b...073be5`; base `0xbeddac...e2684f` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1a110b...9de82d` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45e061...49112b`; base `0xa3672c...5228a4` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x7f163a...019bd1`; base `0xa96f57...dbb1bd`; base `0xfe4173...0b64f7` | ⚠️ Unaudited |
| StakedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x553000...a1ced5`; base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc00989...89e070` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 19 deployments: base `0x00695e...ef1295`; base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x658828...3748b4`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x828b64...bed78c`; base `0x99c106...3c9669`; base `0xbd958a...9c70b0`; base `0xc10a28...18790b`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xd973b8...6d9783`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5ff292...20535f` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x60ff79...961248`; base `0xcb2806...156ad8` | ⚠️ Unaudited |
| TradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: base `0x001230...833f9f`; base `0x00ee42...c53bda`; base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x27282c...3442e9`; base `0x300a64...bdb960`; base `0x373fae...919349`; base `0x4263f0...eea20c`; base `0x45452e...7a6330`; base `0x680149...fc421c`; base `0x6a2293...7c5de0`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ⚠️ Unaudited |
| TradingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x0e8214...cd7dc9`; base `0x20155a...16e131`; base `0x222818...d23318`; base `0x236a48...fecffa`; base `0x586f65...b4e4f2`; base `0x62c544...371ca2`; base `0x717eb3...92244a`; base `0x83dbaf...35a996`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb4d2f8...320c47`; base `0xb916e6...4ae5c3`; base `0xd14447...a7728c`; base `0xdbff96...e7760b`; base `0xe8ae56...e966d8`; base `0xf77e2b...01db70` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x2db4ff...473775`; base `0x548f3f...90d500`; base `0x5d023a...637c8f`; base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x8bc806...28d2bc`; base `0x96878c...429361`; base `0xc14930...f56559`; base `0xc3769e...fba26d`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x0ca0ba...527486`; base `0x12c16c...a30546`; base `0x13c7e5...7de37a`; base `0x4ab200...ada864`; base `0x535940...a437b8`; base `0x6201d3...cce9fc`; base `0x866e4a...e3973d`; base `0x8e99ae...dd367d`; base `0xa7f4c2...fdfe96`; base `0xc15c0a...41ec18`; base `0xf9c4a5...b9f60a`; base `0xffd831...f811c5` | ⚠️ Unaudited |
| VeTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8b0cf2...aa23ac`; base `0xa0ab93...5a9b46`; base `0xadeb64...21fcdd`; base `0xe5391d...7ae565` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b2ca7...28f086`; base `0xfa420c...a1a730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aa188...4752f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x22353c...0f078b`; base `0x37de04...63f17c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-379847 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8c43f...9502ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Avantis_-_Zellic_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_1.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 2 | 0 | 9 | n/a |
| [Avantis_-_Zellic_Audit_Report_2.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_2.pdf) | Zellic | Audit | 2024-09 | aging | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [Avantis_-_Zokyo_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zokyo_Audit_Report_1.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 2 | 0 | 9 | n/a |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3864] Avantis_-_Zellic_Audit_Report_1.pdf — matched: No reason recorded
- [3865] Avantis_-_Zellic_Audit_Report_2.pdf — matched: No reason recorded
- [3866] Avantis_-_Zokyo_Audit_Report_1.pdf — matched: No reason recorded
- [15577] spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf — matched: Scope section lists 11 contracts: Execute, PairInfos, PairStorage, PriceAggregator, Referral, Trading, TradingCallbacks, TradingStorage, Tranche, VaultManager, VeTranche. Audit date is December 1, 2023 from cover page.
- [15578] spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf — matched: Scope explicitly lists 11 contracts in the 'Auditing Strategy and Techniques Applied' section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Avantis_-_Zellic_Audit_Report_1.pdf | Execute | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PairInfos | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PairStorage | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PriceAggregator | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | Referral | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_1.pdf | TradingCallbacks | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_1.pdf | Tranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | VeTranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PairInfos | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PairStorage | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PriceAggregator | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | Referral | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_2.pdf | TradingCallbacks | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_2.pdf | Tranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | VaultManager | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Execute.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PairInfos.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PairStorage.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PriceAggregator.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Referral.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Trading.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zokyo_Audit_Report_1.pdf | TradingCallbacks.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | TradingStorage.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Tranche.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | VaultManager.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | VeTranche.sol | unmatched — not counted | — | — | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Execute | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PairInfos | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PairStorage | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PriceAggregator | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Referral | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | TradingCallbacks | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | VeTranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Execute | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PairInfos | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PairStorage | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PriceAggregator | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Referral | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | TradingCallbacks | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | VeTranche | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x696f94...5df4f1` | Token | token | $90,427,212.63 | Verified native implementation with $90,427,212.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 43 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=10

Fork inheritance lineage and inherited audits are included when available.
