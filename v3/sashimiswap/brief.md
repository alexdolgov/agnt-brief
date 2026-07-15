# Agentic Audit Brief: SashimiSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SashimiSwap (`sashimiswap`)
- Website: [https://sashimi.cool/home/swap](https://sashimi.cool/home/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, heco
- Contract surface: 57 unique implementations (110 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,149,650.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SashimiSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across ethereum, heco. Structural roles: 17 unclassified, 10 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (17), core (10), supporting (1)
- Contract kinds: contract (28)
- Detected standards: erc20 (8), ownable (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SashimiBar (`0x6ed306...b91977`, chain 1)
- SashimiLendingVaultProvider (`0x194402...dcdfcb`, chain 1)
- SashimiLendingVaultProvider (`0x206d84...b60fcc`, chain 1)
- SashimiLendingVaultProvider (`0x33a057...5e72cf`, chain 1)
- SashimiLendingVaultProvider (`0x7bc801...0bce2b`, chain 1)
- SashimiLendingVaultProvider (`0x7cf056...d8b942`, chain 1)
- SashimiLendingVaultProvider (`0xd3d3fc...f891be`, chain 1)
- SashimiLendingVaultProvider (`0xfdedb3...6cf2f4`, chain 1)
- SashimiPlate (`0x422133...541ca6`, chain 1)
- SashimiPlate (`0x56bb94...fd6168`, chain 1)
- SashimiPlate (`0x722669...4edcc2`, chain 1)
- SashimiPlate (`0x81885d...9697fa`, chain 1)
- SashimiPlate (`0x8e95bc...778648`, chain 1)
- SashimiPlate (`0xc5d00a...60de7f`, chain 1)
- SashimiPlate (`0xe6cb94...cfda91`, chain 1)
- SLErc20Delegator (`0x2394de...fe013d`, chain 1)
- SLErc20Delegator (`0x6ddbcb...84f1b0`, chain 1)
- SLErc20Delegator (`0x8ce5aa...6e3af3`, chain 1)
- SLErc20Delegator (`0xbbcc16...01b9ea`, chain 1)
- SLErc20Delegator (`0xdddaf1...c86b45`, chain 1)
- Timelock (`0x84ee34...0224f3`, chain 1)
- Unitroller (`0xb5d53e...32d770`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (25 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 20 of 57 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 57
- Raw deployments: 110
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSashimi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb133ff...02e9d2` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392034 | 2 deployments: ethereum `0x8d7e38...f4aa2b`; ethereum `0xb5d53e...32d770` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a7a9...ba8c13` | ⚠️ Unaudited |
| CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa73f04...951a07` | ⚠️ Unaudited |
| CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdba694...9d95a0`; ethereum `0xf8c227...b1c1d3` | ⚠️ Unaudited |
| DAIInterestRateModelV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1d14...234b19` | ⚠️ Unaudited |
| DForceVaultProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30d75a...fed1e3`; ethereum `0x34cf6e...f7cbb9`; ethereum `0x801068...27da96` | ⚠️ Unaudited |
| Dipper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x786448...eb2368` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7eaeba...5f10f5`; ethereum `0xd06f07...82f365` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea01...136d04` | ⚠️ Unaudited |
| GolffVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2d60dd...e16652`; ethereum `0x51dee6...c840fc`; ethereum `0x65d34f...18c394`; ethereum `0x89ecde...91b564`; ethereum `0x9492d7...808518`; ethereum `0xb38209...ca7b47`; ethereum `0xec0c65...04b621`; ethereum `0xeebef4...d47ea7` | ⚠️ Unaudited |
| GolffVaultProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9886b...f560cd` | ⚠️ Unaudited |
| HSashimi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2544d6...88a287` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6ab160...132a08`; ethereum `0x9c8b5d...940ab8`; ethereum `0xc4e8fa...abc2ee` | ⚠️ Unaudited |
| LpBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x9ec7de...a37af1`; ethereum `0xc8b5b7...4635bd`; ethereum `0xd4f7ca...ef4e10`; ethereum `0xe835db...2766ad` | ⚠️ Unaudited |
| LSashimi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e199c...68acbd` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1daed7...51234d` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x295e33...4ac8ae` | ⚠️ Unaudited |
| OpenOraclePriceData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541200...cfa8d6` | ⚠️ Unaudited |
| SashimiBar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392022 | `0x6ed306...b91977` | ⚠️ Unaudited |
| SashimiGovVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bf80...4607b1` | ⚠️ Unaudited |
| SashimiInvestment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x385799...67f5ab`; ethereum `0x3f966f...e07ef4`; ethereum `0x421909...899cef`; ethereum `0x4ce106...87d3ec`; ethereum `0x939cb7...af315b`; ethereum `0xc38013...2d13c9` | ⚠️ Unaudited |
| SashimiLendingLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d19a...530f81` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392017 | `0x194402...dcdfcb` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392018 | `0x206d84...b60fcc` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392019 | `0x33a057...5e72cf` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392024 | `0x7bc801...0bce2b` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392025 | `0x7cf056...d8b942` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392031 | `0xd3d3fc...f891be` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392033 | `0xfdedb3...6cf2f4` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392020 | `0x422133...541ca6` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392021 | `0x56bb94...fd6168` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392023 | `0x722669...4edcc2` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392026 | `0x81885d...9697fa` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392028 | `0x8e95bc...778648` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392030 | `0xc5d00a...60de7f` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392032 | `0xe6cb94...cfda91` | ⚠️ Unaudited |
| SashimiPlateController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3884ea...a944ae` | ⚠️ Unaudited |
| SashimiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc28e27...b464c2` | ⚠️ Unaudited |
| SLDaiDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392035 | 2 deployments: ethereum `0x291823...313ea4`; ethereum `0x946eee...936341` | ⚠️ Unaudited |
| SLErc20Delegate | unknown | project_anchor | own_supporting | 6 | ethereum | unit-392036 (6 proxies) | 7 deployments: ethereum `0x09a7fb...fb36f9`; ethereum `0x2394de...fe013d`; ethereum `0x6ddbcb...84f1b0`; ethereum `0x8ce5aa...6e3af3`; ethereum `0xbbcc16...01b9ea`; ethereum `0xd6ad22...4f2671`; ethereum `0xdddaf1...c86b45` | ⚠️ Unaudited |
| SLEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392029 | `0xc597f8...ca5d82` | ⚠️ Unaudited |
| StrategyDForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c486c...1e33dc`; ethereum `0xa6bcd2...b3f1bd`; ethereum `0xac8cd3...771b27` | ⚠️ Unaudited |
| StrategyUniStakingReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x52632d...d14f16`; ethereum `0x53fbf4...df34c1`; ethereum `0x74e417...36f54e`; ethereum `0xa7feea...500e61` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392027 | `0x84ee34...0224f3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xea97a7...e5b0ca`; ethereum `0xf559a3...7f076f` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fe6a...db9410` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x693f49...2c35c3`; ethereum `0x9e2806...e43d7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b8c75...e1a302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7578fd...56de11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7707...0af831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbacbd1...66c3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34146...5a65c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda26ef...f10b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b43f...ae87cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88997...18ac66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | 18 deployments: heco `0x06068d...47fd31`; heco `0x377dca...15a9a1`; heco `0x389eec...796e1b`; heco `0x3f3aaa...e39a4e`; heco `0x611e93...3272df`; heco `0x6c606f...b44d5a`; heco `0x6cb9d7...5c00fa`; heco `0x6ccbc3...956655`; heco `0x818bbc...890632`; heco `0x891daa...1721e2`; heco `0x937a48...5f076f`; heco `0xae399a...a39431`; heco `0xc28e27...b464c2`; heco `0xc2d36a...e67736`; heco `0xc597f8...ca5d82`; heco `0xe2a246...7f25ba`; heco `0xe9c958...11903f`; heco `0xeaac96...737d8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sashimi_audit_report.pdf](https://sashimi.cool/files/sashimi_audit_report.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2521] sashimi_audit_report.pdf — no match: All contracts listed in the scope table on page 6-7 of the report. Audit date is the end date of testing period: 2020-09-25.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sashimi_audit_report.pdf | SashimiInvestment | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | Migrations | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | SashimiVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | GolffVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IGOFPool | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ETHCandy | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockGolff | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockRouter | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockToken | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockWETH | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockYFI | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | WETHVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ISashimiVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ISashimiInvestment | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8d7e38...f4aa2b` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ed306...b91977` | SashimiBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194402...dcdfcb` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x206d84...b60fcc` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33a057...5e72cf` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bc801...0bce2b` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7cf056...d8b942` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3d3fc...f891be` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdedb3...6cf2f4` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x422133...541ca6` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56bb94...fd6168` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x722669...4edcc2` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x81885d...9697fa` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e95bc...778648` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5d00a...60de7f` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6cb94...cfda91` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x291823...313ea4` | SLDaiDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a7fb...fb36f9` | SLErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc597f8...ca5d82` | SLEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84ee34...0224f3` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2521] sashimi_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
