# Agentic Audit Brief: Saddle Finance

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

- Project: Saddle Finance (`saddle-finance`)
- Website: [https://www.saddle.finance/](https://www.saddle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, ethereum, fantom, kava, optimism
- Contract surface: 46 unique implementations (156 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $735,649.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Saddle Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3f8e52...5626ae`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 45 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 1 of 46 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 46
- Raw deployments: 156
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5d2e8...1c0559` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3661d0...9b490b`; optimism `0x4f6a43...7ac62e`; arbitrum `0x4f6a43...7ac62e` | ⚠️ Unaudited |
| ArbitrumBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f426...04f1ad` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5bd85...fd4706` | ⚠️ Unaudited |
| GaugeHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8020e4...ce9861` | ⚠️ Unaudited |
| GenericERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x149bbb...2833a6`; optimism `0xeedb4e...e5ebde` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x59f5a3...26710c`; optimism `0x2b7a5a...563f93`; arbitrum `0xc0409e...96de1c` | ⚠️ Unaudited |
| MasterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xc5ad17...68c045`; optimism `0x0e510c...f9d875`; arbitrum `0xab94a2...8396cf` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0409e...96de1c` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x1dcb69...e30bab`; ethereum `0x456872...7f080d`; ethereum `0x69baa0...be1556`; ethereum `0x8b2db8...a38c2d`; ethereum `0x9ac17f...ec77f3`; ethereum `0xa50f20...da80d9`; ethereum `0xc765cd...4643b9`; ethereum `0xfb516c...4e9558`; optimism `0x250184...226e9d`; optimism `0x9dc370...45bc5a`; optimism `0xa9a842...f117a5`; optimism `0xc55e8c...a7732e`; optimism `0xe184f7...dda2a6`; arbitrum `0x5dd186...e58c9c`; arbitrum `0xa5bd85...fd4706`; arbitrum `0xb2a276...e5f84d`; arbitrum `0xf8504e...1dc30b` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x04d8ad...c9dba1`; ethereum `0x1e35eb...5558ab`; ethereum `0x401afb...9b4849`; ethereum `0x4f0e41...65fd11`; ethereum `0x500d0b...1dd6d0`; ethereum `0x7d6c76...73cdd8`; ethereum `0x83f87e...d261ed`; ethereum `0xabf69c...a95d61`; ethereum `0xe280ef...8c86fb`; ethereum `0xe91547...fefa38`; optimism `0x3a0c2a...17fe0f`; optimism `0x3f1d22...ae2174`; optimism `0x88cc4a...388b17`; optimism `0xb10ac3...94f89d`; optimism `0xdf815e...5d24d3`; arbitrum `0x18d246...7a3760`; arbitrum `0x1d434f...d4e694`; arbitrum `0xc8dfcf...a5079b`; arbitrum `0xdca5b1...126101` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0c8bae...9fd314`; ethereum `0x3f1d22...ae2174`; ethereum `0x824dcd...f41491`; ethereum `0x88cc4a...388b17` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x505736...b3065b`; optimism `0xbea9f7...b756e9`; arbitrum `0x0c8bae...9fd314` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x691ef7...d58534`; optimism `0x220d6b...0ae5e4`; arbitrum `0x206904...f29b55` | ⚠️ Unaudited |
| OptimismBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccfd60...310152` | ⚠️ Unaudited |
| PermissionlessDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x8f43fb...22078f`; optimism `0x293ded...dbd37f`; arbitrum `0x0232e0...9c8cc6` | ⚠️ Unaudited |
| PermissionlessMetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xfb0867...864570`; optimism `0x5224e5...131351`; arbitrum `0x151795...88441b` | ⚠️ Unaudited |
| PermissionlessMetaSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x45b48c...180d88`; ethereum `0x8b8868...4cfb48` | ⚠️ Unaudited |
| PermissionlessSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04b58d...83c765`; optimism `0x08f861...d43a81`; arbitrum `0x21d436...bd01c6` | ⚠️ Unaudited |
| PermissionlessSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10170a...33b972`; ethereum `0x47f507...2f082d` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xfb4de8...9eec81`; optimism `0x4e1484...671e01`; arbitrum `0x38262c...bf4ef1` | ⚠️ Unaudited |
| RetroactiveVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dca27...198a03` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x811b69...5dffac`; arbitrum `0x1ad1ef...bf11ee`; arbitrum `0xf428d4...d20cb2` | ⚠️ Unaudited |
| RewardScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x25d1c2...7bd8da`; arbitrum `0x3440d3...c6f8c2`; arbitrum `0x6fe745...5eb539`; arbitrum `0x824dcd...f41491`; arbitrum `0x9d7fcc...b93c0b` | ⚠️ Unaudited |
| SDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1dc50...4f6871` | ⚠️ Unaudited |
| SimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x595cce...318eb5`; ethereum `0xc09d3b...2c317f`; ethereum `0xe8e1a9...7194c2`; arbitrum `0x1e35eb...5558ab`; arbitrum `0x492ebe...5afab0` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1085e8...4b5853`; ethereum `0x4c6a2b...4ebfd8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9dc370...45bc5a`; ethereum `0xdb5c5a...21bbe5` | ⚠️ Unaudited |
| SwapCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8af8...a59033` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x29fd31...31ffce`; ethereum `0x700310...9407d0`; ethereum `0xf6c2e0...fe08b5` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x13cc34...fa2bdc`; ethereum `0x2bff1b...231d72`; ethereum `0x5847f8...993628`; ethereum `0x98d2af...5fb8fa`; ethereum `0xc68bf7...519db6`; ethereum `0xccbe39...1bab26`; optimism `0x5847f8...993628`; optimism `0xa500b0...24dd2e`; optimism `0xf6c2e0...fe08b5`; arbitrum `0x401afb...9b4849`; arbitrum `0xfeea4d...e56ee0` | ⚠️ Unaudited |
| SwapMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cdef6...16ad57` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x149bbb...2833a6`; ethereum `0x206904...f29b55`; optimism `0xcf70e2...a46894` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b7a5a...563f93`; ethereum `0x4f6a43...7ac62e` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xbea9f7...b756e9`; arbitrum `0xcf70e2...a46894` | ⚠️ Unaudited |
| SynthSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf815e...5d24d3` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| VeSDLRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b10d...2078ae` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8504e...1dc30b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x104f44...f73ae4`; ethereum `0x13ba45...b894ed`; ethereum `0x17bde8...9db33e`; ethereum `0x268319...d43c2f`; ethereum `0x358fe8...c96018`; ethereum `0x3b35a3...40f8e3`; ethereum `0x3bd413...823aa0`; ethereum `0x3dc88e...7ced93`; ethereum `0x6ec5dd...44d57c`; ethereum `0x702c1b...df2093`; ethereum `0x7b2025...d8b8ea`; ethereum `0x8b701e...8e69f6`; ethereum `0x953693...ea5e16`; ethereum `0x99cb6c...8b9b14`; ethereum `0x99d99a...d615de`; ethereum `0xa202ac...3567fd`; ethereum `0xab47ed...30bb3d`; ethereum `0xabd040...66ce04`; ethereum `0xb2ac33...84e2a6`; ethereum `0xb79b4f...0ab53a`; ethereum `0xc64f8a...817be3`; ethereum `0xc7a0e3...f7d081`; ethereum `0xd2751c...e73bb2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253448 | `0x3f8e52...5626ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d745...a53ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529c59...e698df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9585a5...0180bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9980c9...f4a96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | 3 deployments: fantom `0x700310...9407d0`; fantom `0xba684b...d44418`; kava `0x3a0c2a...17fe0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [10-29-2020_Certik.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/10-29-2020_Certik.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [www.openzeppelin.com/news/saddle-contracts-audit](https://www.openzeppelin.com/news/saddle-contracts-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [12-09-2020_Quantstamp.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/12-09-2020_Quantstamp.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13800] 10-29-2020_Certik.pdf — no match: Scope table lists 8 contracts with file paths. Audit date from cover page.
- [13801] www.openzeppelin.com/news/saddle-contracts-audit — no match: Scope explicitly includes contracts inside /contracts folder, excluding helper and interfaces. All named contracts are within that folder.
- [13802] 12-09-2020_Quantstamp.pdf — no match: All contracts listed in the file signatures appendix and mentioned in findings are included. The audit date is from the report header: 'December 10th 2020'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 10-29-2020_Certik.pdf | Allowlist | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | CERC20 | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | StakeableTokenWrapper | unmatched — not counted | — | listed in scope table | no |
| www.openzeppelin.com/news/saddle-contracts-audit | Swap | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/saddle-contracts-audit | SwapUtils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/saddle-contracts-audit | Allowlist | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | LPToken | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | OwnerPausable | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | CERC20 | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | CERC20Utils | unmatched — not counted | — | mentioned in findings | no |
| 12-09-2020_Quantstamp.pdf | Allowlist | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | CERC20 | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | LPToken | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | StakeableTokenWrapper | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | Swap | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | SwapUtils | unmatched — not counted | — | listed in scope table and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [13800] 10-29-2020_Certik.pdf
- [13801] www.openzeppelin.com/news/saddle-contracts-audit
- [13802] 12-09-2020_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
