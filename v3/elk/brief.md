# Agentic Audit Brief: Elk

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

- Project: Elk (`elk`)
- Website: [https://elk.finance](https://elk.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, gnosis, harmony, heco, kava, linea, metis, moonriver, optimism, polygon
- Contract surface: 60 unique implementations (60 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $157,260.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Elk. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, fantom, gnosis, metis, moonriver, optimism, polygon. Structural roles: 2 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), infra (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x077106de127dd5ea610dbcfa2f7e61832e867575`, chain 56)
- UnnamedContract (`0x349218829a34e6c3abeda21d046da84d8a9a89f2`, chain 56)
- UnnamedContract (`0x426e25e358fe997e6fb1f21c3efec4b82c4a5a58`, chain 56)
- UnnamedContract (`0x8c3483df8fa193a18c0eda71d2f7114381ea28c7`, chain 56)
- UnnamedContract (`0x8cb83d4b4a406589b78664add7060a79430c077a`, chain 56)
- UnnamedContract (`0x8d5144167d8403deef15acf459cf9a610f12ea2e`, chain 56)
- UnnamedContract (`0x9122431edc9ae8d7b79836f7c77980ab24098349`, chain 56)
- UnnamedContract (`0x9c5a7ccaee7015388d8e9663c94d4027f8038cd1`, chain 56)
- UnnamedContract (`0xd7d71e4bc981b50696fa536d330bf745ae563e25`, chain 56)
- UnnamedContract (`0xdb59ef120ff1fa5013bb5047e513162003034723`, chain 56)
- UnnamedContract (`0xde3f38fd15f566416fe3941b57e1b0a50a9487e1`, chain 56)
- UnnamedContract (`0xeeed679772e95663c38f6b7335668d4ca9358e36`, chain 56)
- UnnamedContract (`0x3956684d3c22fc1606cc5ea113c96b92a2dd1d60`, chain 137)
- UnnamedContract (`0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071`, chain 137)
- UnnamedContract (`0x3f95b4938b11bb3901585d561f4adbcd90273ce6`, chain 137)
- UnnamedContract (`0x400445e4ffd2ade6435b36c9a827b50a496960a2`, chain 137)
- UnnamedContract (`0x8c3483df8fa193a18c0eda71d2f7114381ea28c7`, chain 137)
- UnnamedContract (`0xd7d71e4bc981b50696fa536d330bf745ae563e25`, chain 250)
- UnnamedContract (`0xde3f38fd15f566416fe3941b57e1b0a50a9487e1`, chain 250)
- ElkFactory (`0x091d35d7f63487909c863001ddca481c6de47091`, chain 43114)
- StakeManager (`0x6c21e50fb9c592d5427d790fe424ae4acc24338f`, chain 137)
- TransparentUpgradeableProxy (`0x965991775da1a3550445f76b2aa799eac0a05434`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 38 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 22 of 60 unique; 38 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ⚠️ Unaudited |
| AtletaInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ⚠️ Unaudited |
| DonaswapInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ⚠️ Unaudited |
| Elk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c` | ⚠️ Unaudited |
| ElkDexOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4` | ⚠️ Unaudited |
| ElkDexV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ⚠️ Unaudited |
| ElkFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-236810 | `0x091d35d7f63487909c863001ddca481c6de47091` | ⚠️ Unaudited |
| ElkPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00ad7f72a98e222c6f2680f312037e41690e242e` | ⚠️ Unaudited |
| ElkRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a2e5a3dc2f74e5bfaf0bf90685a5a899f379cb0` | ⚠️ Unaudited |
| ElkSeasonNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28d606535d18471bf7c966c0157895a9f613d995` | ⚠️ Unaudited |
| ElkTeamNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e75edd8d85c059ad8e365908d807f361c8844c2` | ⚠️ Unaudited |
| ElkUpgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fbd13af146cf0857fd47db7fbb1441bde5ffaf8` | ⚠️ Unaudited |
| ElkV2FactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ⚠️ Unaudited |
| ElkV2FactoryHelperPermissioned | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ⚠️ Unaudited |
| ElkV2FarmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd` | ⚠️ Unaudited |
| ElkV2FarmManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ⚠️ Unaudited |
| FarmingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x019d4b975287b7b27ac4ce4fc0538a4a7f305b91` | ⚠️ Unaudited |
| MooseNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fa5409d159f6b8be52ac89531124761df21d393` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xde7258b4c27a958d6a212d04280002cbe3a1c16b` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26bab438d10ac10a5f1747a53ff1fa3af984e68f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87affd43ed21b0d73b080fd5d0b90a46f10a80b7` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f01387f0c5c1aed7b86edd9da3932984e06999d` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ⚠️ Unaudited |
| SingleStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ⚠️ Unaudited |
| StakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ⚠️ Unaudited |
| StakeManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-236805 | `0x6c21e50fb9c592d5427d790fe424ae4acc24338f` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0106acef3106a417f1dd83fe543999c8b5637452` | ⚠️ Unaudited |
| StakingRewardsILP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04c25ab761f9518c6c43d6835e76736f06696dfe` | ⚠️ Unaudited |
| StakingRewardsILPV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0137ddc034562f854cc3232b805d50d52effce66` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ⚠️ Unaudited |
| TeamCompensationVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05f37c1fb49eda6cd2656de4365da45e58cac3a6` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | polygon | unit-236807 | `0x965991775da1a3550445f76b2aa799eac0a05434` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x352d8f40cd62ffd82d98210ffe2d75584387de05` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc146c9b9ce89fe9ee472470395a4cc4e73b7a825` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ⚠️ Unaudited |
| WarpDefiV3InterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cc2738fa0c8ce397872bc0dc51140936d3a6b12` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236811 | `0x077106de127dd5ea610dbcfa2f7e61832e867575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236812 | `0x349218829a34e6c3abeda21d046da84d8a9a89f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236813 | `0x426e25e358fe997e6fb1f21c3efec4b82c4a5a58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236814 | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236815 | `0x8cb83d4b4a406589b78664add7060a79430c077a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236816 | `0x8d5144167d8403deef15acf459cf9a610f12ea2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236817 | `0x9122431edc9ae8d7b79836f7c77980ab24098349` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236818 | `0x9c5a7ccaee7015388d8e9663c94d4027f8038cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236819 | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236820 | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236821 | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236822 | `0xeeed679772e95663c38f6b7335668d4ca9358e36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236801 | `0x3956684d3c22fc1606cc5ea113c96b92a2dd1d60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236802 | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236803 | `0x3f95b4938b11bb3901585d561f4adbcd90273ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236804 | `0x400445e4ffd2ade6435b36c9a827b50a496960a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236806 | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236808 | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236809 | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b](https://blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b?gi=1d70ac6a5ea2) | HashEx | Audit | 2021-07 | stale | Direct | address | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20288] blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b — no match: Contracts overview section lists four contracts: ElkERC20, ElkFactory, ElkPair, ElkRouter. Libraries and interfaces are noted as same as UniswapV2 but not individually named. Audit date is end of audit period (July 20, 2021).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b | ElkERC20 | unmatched — not counted | — | listed in Contracts overview | no |
| blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b | ElkFactory | unmatched — not counted | — | listed in Contracts overview and deployment addresses | no |
| blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b | ElkPair | unmatched — not counted | — | listed in Contracts overview | no |
| blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b | ElkRouter | unmatched — not counted | — | listed in Contracts overview and deployment addresses | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x091d35d7f63487909c863001ddca481c6de47091` | ElkFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6c21e50fb9c592d5427d790fe424ae4acc24338f` | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20288] blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b

Fork inheritance lineage and inherited audits are included when available.
