# Agentic Audit Brief: Elk

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Elk (`elk`)
- Website: [https://elk.finance](https://elk.finance)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, gnosis, harmony, heco, kava, linea, metis, moonriver, optimism, polygon
- Contract surface: 332 unique implementations (332 raw deployments)
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
- Address-book implementation classification: 22 own, 272 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 38 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 22 of 332 unique; 310 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 291
- Unique implementations: 332
- Raw deployments: 332
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

### ❓ Unverified (291)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236811 | `0x077106de127dd5ea610dbcfa2f7e61832e867575` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0cf6af4e4a24bee60803581ad01aeaf9e0be57b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x195936d054b8876b494a20bd9c8da45a63ad003f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x281c3c63274e3cefcbb3710b23239f8082109789` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2cb08919e3d342d883a9a756908b2e3672d725e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x31affd875e9f68cd6cd12cee8943566c9a4bba13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236812 | `0x349218829a34e6c3abeda21d046da84d8a9a89f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3662dfedca2b1e2b8eb5eade48554c122c082f71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236813 | `0x426e25e358fe997e6fb1f21c3efec4b82c4a5a58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4dad3e7ccd3f4bdb30f6fa1ecccf472f67814671` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x597ef9e1c55f410c953b094bf35eb420273086cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6352d0945ee2e4800c7b2d4440681e29ad858485` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7ff20da1326ad86eb22a8ffd2f390d9eaf9ba6a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236814 | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236815 | `0x8cb83d4b4a406589b78664add7060a79430c077a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236816 | `0x8d5144167d8403deef15acf459cf9a610f12ea2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236817 | `0x9122431edc9ae8d7b79836f7c77980ab24098349` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x97abce9fd08d913a5041fa9f42cfab0949249244` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x98f3567591a66570f9c91d965269c9bb87212da9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236818 | `0x9c5a7ccaee7015388d8e9663c94d4027f8038cd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa1603a0f7ace578b47e7bc73564d1b348d610b37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa63b831264183d755756ca9ae5190ff5183d65d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa8e2f6c79d789b50b52e1616f63ff485d3330ad3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb3902044b49125e5fcdea726c725a1c265d145eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb39ef3a56532305461ed35e0c5fd8798c7770f76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbfe4ef7419117c0ff5fb7ef5ff8acdbfc7610c84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236819 | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd85d48cce64af59b14946b2793511eab2c4243a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236820 | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236821 | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe285d36b04f74fff865b52a3a6ce9365ba964531` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe64c10465c6ff393f374e984841b5bc115a0ea9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xed6e895d9ccf97a23df0a92f4a3454d3a7c2fdd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236822 | `0xeeed679772e95663c38f6b7335668d4ca9358e36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x103024f6f514a229c87583acd12ca51a027d4456` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x1253f5c01dca5a6c796fe7236bec9c224edfca61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x13efe90e53213943fe85e859a780687eec31b8ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x24bac77ceef5b61ce34be5ee6730970270dccda2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4106ac46726a43859d7fdc9462565eb22097bf05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x50a29c0e7f5794a74decc1e57ea870202818a210` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x5942a302f2bdceb43c2934b42c584f4ee5f7b027` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x6e34e2c8b655e4db4378bc193e115d55d62789ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x737ffa0fc4dfb6fadbee0d2fd9b7ddab30efb3b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x81735a3a77e6c3bbcb04075fb9b33602418b1d08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8a718a2f0293345fc6339812b36771af6b9e9bb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x94a59d8eb6d09f64aa9f4deda8bf1272debc07f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa7cd72a96398557291263b9b8193038edca063c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa88072bb6fdfd51c4e9158e95a9b8d2c200c7291` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xac06311636978f0245f2542473763424923d6b55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbf770986abf674cf7f94caa4ceb4ed48c2400802` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc28dc5458aeba5c87dc4c3fd89578c7a90cdd38b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc2a230442e0fe4785741d1b4c15831ff298fbb19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xcb018587da9590a18f49ffe2b85314c33af3ad3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd3dbe261e4bac67611c63f849a6363621b34939c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd5fcd5c0d1614fb3e8c5aadd43f8ac8d7a3d0c9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd6a14e672b4817955a5764eb95510370cf6121e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe5759714998e8b50a33c7333c04c2d02e5dce77f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfb14c8888ae9e78265a9a61a5b63c93f9545ddf6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x021079e9c60ab36d62ac10087fc9b62047722403` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x02d3364c3cd184dbdb34671cc390cc32cb887d73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1b6d429e3f16b1cce06cb6627ff519592a5e488e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x234c25dc9e2e57678ae209c56e13ee8a4ee21b77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x25e8c1fc499beadde44ac2d7ec0c0cebfe49bff7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x316addf512b2d3c98769d694d7c17540c3bd477f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236801 | `0x3956684d3c22fc1606cc5ea113c96b92a2dd1d60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236802 | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236803 | `0x3f95b4938b11bb3901585d561f4adbcd90273ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236804 | `0x400445e4ffd2ade6435b36c9a827b50a496960a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x41493bed44258bd8ab4b904b05a8213d8c47f6e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x52022b1e244787b66b2e55d5bf75d05557d960be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x54f6a2183238a741430234062d4ad290b17ae240` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5ae1f972cbe3f52e1ded29b03be82ab0cbfa7c12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5db4b169605ac0e7f0ec45709132e65844af5d9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x63d22c55bd1107eaabab6a26e2c36ff2b8699a87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x66d4192cfd56c5a066542f6fc6a83fcd03c4065f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x722decdb222fa559fd9c71d2ba604f7293dbde32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x764dcdab30d0af8fd1f45755e3d905bc1e2f5792` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x77aa1ff063d6d76573a0c95593eec7dd2761790f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x78e42225686dc2dae106218336a2c83779eb98e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7f63f56851f54518c0659d936ea5739b2a300733` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236806 | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x8e406d0c422e98d2581bc37996f6efcbf6667a25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9f8a0cc4017be26e58e270b9009d236a1628aa3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xaa5baca9ec15ea12f65e871010805485b614739a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xab45e606be58c8547d67aae0f9b76d70ee3175db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb00a200ae1c1213e97c981d882dd79a7175f7735` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xbae1638dc1bc5392d26b8fa03b34b59c6b65b352` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc43f4d970cc759b78bd21f9414f1984ca80e5ea6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xcb6b3d5831de65a491d00b95cf21d41f1014f978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd0595ff44638182e6b54051493ec0f045d04335f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xdc113f0bda33cd2d68c9345fb67791165ff8f4e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe0e2157bb15b66cf1303a67f9e0bfc5f3bf12a9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe3bd06c7ac7e1ceb17bdd2e5ba83e40d1515af2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe45c607b3f8ad48d16df969406c1901d6ae6b735` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe9b73fa8a44bff5233b7f5a65cd8de19731cff61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf38a7a7ac2d745e2204c13f824c00139df831fff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf99c496c4bc62d4ce47f79bc7d367af4ffab105b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xfe9f1e417afe603f6de14cba06ec878fd132cde2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x03aba9f2dfbafe83595f5f68041b76d04ae40298` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x07eb3645ded6a1ad923f5b59bd8f6f5e54c592a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x153de4627a30215be383dbeee21b6472cb343e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x20c5a9b94a2257a7b554c4f9707a6df10db88128` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2c3d8d03dd56442cd420419027d92e76990ef7cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x3119a28add4bd3cdafe479b23306790ea48b4b3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x3d2f2bb4917abf4169e40ab28370f2fcb310f410` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x4d2cf285a519261f30b4d9c2c344baf260d65fa2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x684aacb6565d623b5405c941452bc88ca7b0ef9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x7503c6086cafb3cb382efccb1f2dbb37a73dea22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x7ba73c99e6f01a37f3e33854c8f544bbbadd3420` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x7cc1e3a9ae85291134f89e07ceb07495bcfdedb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x84de2d359ebb02a6bf6fe67722a1abbca2e8762a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x8818d109ab3da8978ec1c851614365c4b8226b63` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x9baa8eea25522234bbe36e93133db34711d3e66b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x9cd232a4381489ee9b6e082b7086353c605c7247` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb258ebadb6b5b81e105007a3a325fb5b7830923c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd1cefccf46e4b755139ffa6958b2efbc773fd3c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd1f2d7396b810a53c5923c47264c65f7516012ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236808 | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xda2eb5fd65c975032be2eda3b9e7a746f709e309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-236809 | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xdf482b5968ab3a20f4643d1541f3ca1d90dfa8a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf7a6f6364f078b9c04e12474c775ddc878db83ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x014604233e95a18341db91983192ced8c65c62b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x049eb0b4beb8d21a197918b1474c974708153988` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x060981d5c74519c1982ef912374758087fc9137e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0826e1a55ebef25d725bb944555f714db84d95bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x08dd4eae3bb564192aa17e0d430b98380e36ae02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0da1a3138a5f80872550233abcd5b14d46d0951f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x103024f6f514a229c87583acd12ca51a027d4456` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x134cc9c50c50fae58f2a019e275693196c0ee7c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x153decae36d7f08808dafc5dd8bb1e8159eb4730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x1e11d44cab7d311f723ff6b11a49d8f4b75dcde2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x219329c0a0c97e83805c432c07b749fa2aaa0350` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x269fafdc9f362414b9c08adbb8a3106af5a2dc01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x288ffb87fc69dc652f9b564faf05db7468013544` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x2c0daa339ec7756f9ff3d6e5a3e432bae08d2131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4106ac46726a43859d7fdc9462565eb22097bf05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x48d37778f44a08cbd75d85dbaf5b468dabbc52b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x490c69b3a746a10b163f1e9a5674f2057d3d956f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4c0dfc81f7f971de4b9717350c0a02c8c4645be7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x563d2d28ea10691bae85838d1ee8f1397217b252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x5dec8fbe088d11c9d8e607f0d4817e6dc7ac2c01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x63b7326dfe1f1cbfd736c74f98f95919d2dbea81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x697ce6502bd0c6430830a6c57d85710f202b2a4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x6a0c03c0b933875daf767bb90584ba696b713243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x737ffa0fc4dfb6fadbee0d2fd9b7ddab30efb3b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x78c688f05a70c7d085c737121e6433eb99c86418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x7b0c437930876a42c91bd5e261066104eaaf8eab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x7f57939d503cb8687213690906a8addb2cd6794b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8754dae9540afdae0b7c53d295c41f89272d2a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8a1132aa54de8c2810e3d361fe87913a901c33c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8a60d92eec1cad75ca21e6095a10a6d77eda4239` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8b131b34fa09d3a76d9833085258d8a014124719` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8befa9a3434cd2efaaefdaf850b22fd307d0c84b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8f13649873761a6d57b5b53ece3ebff89d9cd604` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9af0a83fa4ba1ef35b385dec6550ff02c4f38f1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9c5a7ccaee7015388d8e9663c94d4027f8038cd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9e4aabd2b3e60ee1322e94307d0776f2c8e6cfbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa57c3be3c8c8547d89436ad40b94052b6a093733` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa88072bb6fdfd51c4e9158e95a9b8d2c200c7291` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xaeb9488d0bd5ad782784b3d873c496d91c883091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb3ee46c7ee7f499fa096443dc57a4dbb4c270229` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xbe43ac8151b6ae3a9228e46c4d01b6c6566e3fbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xbf770986abf674cf7f94caa4ceb4ed48c2400802` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc152ef9f756abe21ccbba7db2fab13460bd19fb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc3cfcc7fbdb3811eb59505870b979c42920d0449` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xcd32dd6dc3a26137fc93f7dd833a30fa5d3dcc2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd0ccb71a33346001fc8f7b0160450f31c464c2c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd514419729a55d2615f87b074e15cd28eca3fc9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd5fcd5c0d1614fb3e8c5aadd43f8ac8d7a3d0c9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd6a14e672b4817955a5764eb95510370cf6121e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdda5f70a3923775dbeeb500692a12821797ea079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xde757b3f121b8d15686722ca41071e3d7692f5e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdfff750529a2eaba8b13e1b81f054ede83ca52a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe168951f493fb1a6cabded806c3294d3da3dfd0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe4b269b61471d81898be034dab496910a5796154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe65d7106fb96112189c7e92e88e38370ca629623` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xeb1fce24b7a60510d22cbeea455a709dfd3d63a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xeba8431c8d8552934545288df136bf46bc556923` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf499b74b036ea7ad5215175f8f40687ed384810c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf726bf6f3a24933c75e2d45c212023b2173410d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf9ae08539fc40eef15089624d69dd2d96b3ccaa4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xfb00260b73041ef941307d486559fb1fb04cfe60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xfbe18a8262f7849659541ffb42bfd91d1fb7179d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xfd4d0c8cbb2d4899f50b3dbddacdbf2f565bd0f2` | ❓ Unverified |

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
| needs_review | 291 |

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
