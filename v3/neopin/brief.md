# Agentic Audit Brief: NEOPIN

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: NEOPIN (`neopin`)
- Website: [https://neopin.io](https://neopin.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, kaia, polygon
- Contract surface: 87 unique implementations (105 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $41,980,360.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for NEOPIN in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x306ee0...62000c`, chain 1)
- UnnamedContract (`0xe06597...bd3815`, chain 8217)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 85 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 2 of 87 unique; 85 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 87
- Raw deployments: 105
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bdf27...2444fa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x1312e1149df72e85c18adcc79c151812ce7ab652) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xbc57a9...413917` | ❓ Unverified |
| Proxy (impl: 0x1560f0ffde7baa1fee9ba4118c2799beb4c55507) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc1e718...22566f` | ❓ Unverified |
| Proxy (impl: 0x6e6c6cf18e1dda9c429da782f76a738333ed9df1) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3afc4f...23f036`; polygon `0x6e6c6c...ed9df1` | ❓ Unverified |
| Proxy (impl: 0x73d481324cd2fc13a277391d719905db974c76fe) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1cf9e9...2e7513` | ❓ Unverified |
| Proxy (impl: 0x964fddd7623f6e7d8a0532f8bd823ac1c5c4246e) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6f051c...d12718`; polygon `0x964fdd...c4246e` | ❓ Unverified |
| Proxy (impl: 0x9817ab9947e4b2afbf9a58fc6aa97c7d19df5739) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6fd088...a139c0`; polygon `0x9817ab...df5739` | ❓ Unverified |
| Proxy (impl: 0xca22e41274cc16ec02a03eb295d93adbbb6f88df) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0807ae...d9fec0`; ethereum `0xca22e4...6f88df` | ❓ Unverified |
| Proxy (impl: 0xca4e15131c415a163052c330453435879b4f9239) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d25bc...d382a0` | ❓ Unverified |
| Proxy (impl: 0xdd1129db859ab25123d6c11aec19a8dec24a8b28) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2726a3...569106`; ethereum `0xdd1129...4a8b28` | ❓ Unverified |
| Proxy (impl: 0xe0b469cb3eda0ece9e425cfeda4df986a55ea9f8) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2d723f...abc792`; polygon `0xe0b469...5ea9f8` | ❓ Unverified |
| Proxy (impl: 0xebf597bb0e3fd63381a55c5e2c754df744f5417e) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5d25bc...d382a0`; polygon `0xebf597...f5417e` | ❓ Unverified |
| Proxy (impl: 0xf93623657af14dd2766decdbd2e050fbf1d539fd) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa6bab6...10a301`; polygon `0xf93623...d539fd` | ❓ Unverified |
| Proxy (impl: 0xfce5ea678c76fbe03c080c240796f5a9c7f0829b) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x841d3b...a4e182`; ethereum `0xfce5ea...f0829b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006fc9...fc4603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006fd2...ae0f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b3ea...d3b4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x046478...e207e9`; ethereum `0x46e581...0040d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09dc8a...995bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6c0b...14be59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19a16a...4c7893`; ethereum `0x73eb5e...6382c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19cf25...b25f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ef8e...efeee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d723f...abc792` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389853 | `0x306ee0...62000c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30fad6...748f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a1d81...2b8f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4a23...7c1901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x511c18...5980ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccb3b...55a7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e277f...a6f076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a0b5...401749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1706...6a61e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829dce...71bdae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fedbb...aa71b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa483ec...3e9e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f659...dbdccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae65d6...044595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0df2d...a52f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1157a...1979ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b5cd...a72ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a029...6a27f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7356e...ce4fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc356f...fc75f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc57a9...413917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1ec7...79b87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23b1b...874dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda33d5...74fd5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7476...1c941f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde205b...261fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b469...5ea9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17d9b...f07a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebf597...f5417e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xef9944...471cce`; ethereum `0xf5a0f6...59e13a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf03539...325292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd5948...931e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdc823...5f1884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x062565...78dc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09dc8a...995bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x117ad9...15fda4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1289ae...1e71aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19cb27...105968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a1f14...5b43e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f772c...1fb0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x511c18...5980ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57d1a6...032974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59a754...37071e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e8091...ec3e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e277f...a6f076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72a0b5...401749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74f16c...5fceee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x778b6d...ac9dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78fefc...efb404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f1706...6a61e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8331ce...7fd848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95bcd0...dfd0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa483ec...3e9e93`; polygon `0xc1e718...22566f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae65d6...044595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xceb63b...37012b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf5e73...35da8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde205b...261fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec8236...4affc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef9944...471cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4ac08...3ccb88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd28c7...d9829d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 6 deployments: kaia `0x184e03...b0e646`; kaia `0x1a1f14...5b43e9`; kaia `0x306ee0...62000c`; kaia `0x489d6d...db8057`; kaia `0xf20816...02ae10`; kaia `0xf9d92b...5a898f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-389854 | `0xe06597...bd3815` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Audit_Report_Verification_NPT_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_Verification_NPT_SlowMist.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4694] Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf — no match: Contracts extracted from scope section (commit paths) and visibility tables. Audit date from audit result table: 2022.06.20 - 2022.06.27, using end date.
- [4695] Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf — no match: Scope includes packages/dex-contract/contracts/farm and packages/dex-contract/contracts/easyDex. Contracts identified from visibility tables and code snippets.
- [4696] Audit_Report_Verification_NPT_SlowMist.pdf — no match: All source files listed in the report are considered in scope. The audit date is the end date of the audit period (2022.03.11 - 2022.03.16).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | UniswapV2Factory | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | UniswapV2Pair | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | UniswapV2Router02 | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | WETH | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | StRewardBar | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | StBonusChef | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf | StStakeChef | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf | EasyRouter | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf | BonusChef | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf | MasterChef | unmatched — not counted | — | listed in scope and visibility table | no |
| Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf | RewardBar | unmatched — not counted | — | listed in visibility table | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | Lockup | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | NeopinToken | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | Address | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | Context | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | ERC20 | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | IERC20 | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | IERC20Metadata | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | Ownable | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | SafeERC20 | unmatched — not counted | — | source code included in report | no |
| Audit_Report_Verification_NPT_SlowMist.pdf | SafeMath | unmatched — not counted | — | source code included in report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [4694] Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf
- [4695] Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf
- [4696] Audit_Report_Verification_NPT_SlowMist.pdf

Fork inheritance lineage and inherited audits are included when available.
