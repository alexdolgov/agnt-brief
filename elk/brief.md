# Agentic Audit Brief: Elk

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Elk (`elk`)
- Website: [https://elk.finance](https://elk.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, gnosis, harmony, heco, kava, linea, metis, moonriver, optimism, polygon
- Contract surface: 777 unique implementations (777 raw deployments)
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
- Outside the address book: 483 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 22 of 777 unique; 755 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 736
- Unique implementations: 777
- Raw deployments: 777
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

### ❓ Unverified (736)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793eab1953e650c422c92ccc8b7e36cce62bcd04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x967750742ab55b2e15c100093497b452aef97b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25afe3e1f9f1b317b8c1c277ca59d700eefa8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a8b9acc739fccf52a382452dcfcef2338d731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd5bf0dcc6c61760baaa536d0d17b1d2e358cc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca4bd724825a228e49257b3e4e1b5637416d830a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8234393e0ffe32785bd78366be2fffce51795b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88380fc1d221916c2f3593ead78f5316f971d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe988b3d66a76d022becc75516e1997690d51855f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4682fe03c0734ffae6606d7a4894f7129ea0bed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e5220d22631aecb8a9e72e1d6820897e4464210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed6e895d9ccf97a23df0a92f4a3454d3a7c2fdd6` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4682fe03c0734ffae6606d7a4894f7129ea0bed5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4dad3e7ccd3f4bdb30f6fa1ecccf472f67814671` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x597ef9e1c55f410c953b094bf35eb420273086cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e5220d22631aecb8a9e72e1d6820897e4464210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236819 | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd85d48cce64af59b14946b2793511eab2c4243a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236820 | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236821 | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe285d36b04f74fff865b52a3a6ce9365ba964531` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe64c10465c6ff393f374e984841b5bc115a0ea9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebae2a864f342a2ac7fcd06905f5b1a106751593` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x35ad4269d3c5e3d4666a16403801e607a74c75f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3956684d3c22fc1606cc5ea113c96b92a2dd1d60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x400445e4ffd2ade6435b36c9a827b50a496960a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x40a69e1678521c69b0cf62b3ca653b5dce8a4f00` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9614ae1c4f2aa5834fa99c0273613ccc6c991f56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa7cd72a96398557291263b9b8193038edca063c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa88072bb6fdfd51c4e9158e95a9b8d2c200c7291` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xac06311636978f0245f2542473763424923d6b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae27dbe0e6d0ec9e5ea6b8600787a5d321535dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaeb9488d0bd5ad782784b3d873c496d91c883091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe43ac8151b6ae3a9228e46c4d01b6c6566e3fbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbf770986abf674cf7f94caa4ceb4ed48c2400802` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc28dc5458aeba5c87dc4c3fd89578c7a90cdd38b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc2a230442e0fe4785741d1b4c15831ff298fbb19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc35ecbca23597747a11e34e733efe54c2d774f1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc62b0d37f74bc13a6abe85f90acaee63ae8011ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xcb018587da9590a18f49ffe2b85314c33af3ad3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd3dbe261e4bac67611c63f849a6363621b34939c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd5fcd5c0d1614fb3e8c5aadd43f8ac8d7a3d0c9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd6a14e672b4817955a5764eb95510370cf6121e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe5759714998e8b50a33c7333c04c2d02e5dce77f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf3a7e46a12fee2d5ca149cae70cf36b3308bfc1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfb14c8888ae9e78265a9a61a5b63c93f9545ddf6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x021079e9c60ab36d62ac10087fc9b62047722403` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x02d3364c3cd184dbdb34671cc390cc32cb887d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x051f5ec4b87a3100cecb2ced93db44e35712147c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06c31076e557830f5712d2f31818ffc4731d4cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b350348ce22c1ff3038058c0ab499c3c8c6c830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bb3ad807b52e262065a942f1658e77369082c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cd663c5f4d085fd6c4e963d726aa6c03ded7c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0da14372d1e2fb4dd8336c1d24d2b26262360503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x148fc5122a96fc883afc5e302570c2d4a3c70e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x180abd1e232eea7c25d9de223d148182200c3fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19bac5ff9c20a1551d5477ad974e1a90ab6d15d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a3e4293f64f977bb83ca3d33b280b7f679dfc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a63cd97d73af1688c4ec754e1973adcee6acb09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1b6d429e3f16b1cce06cb6627ff519592a5e488e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b6f59a6c619c5a9f373efdd2533b684e4371ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b745c2e6a0894bac7d27cf6a50e786453da0c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bc9b1304f929a42f753f64169a795a4d0f3e05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d03aa1ae2de91eaae30995ed29aacee99c98348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1eec47150cf32b008c87bf504cb53b81b426d1d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2009f05dd05644fed6f5a49e39f65ed75e21616d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20d9176eb6756b629ba7e8f4446ac3029bdd086d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x216f23b48f1cc5f86cfd5a9ad4c00e74af0c323b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2213db505fcb23441058f845a2b7c6214c1ae5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2241c94c1da28df5d2b9136348aea483b6440f09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x234c25dc9e2e57678ae209c56e13ee8a4ee21b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x236717aee18e172d57106043342a6f262ee55add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x249531992a7f6ba5c6ef976df88153af06f6bb64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25bc790869959319410551c83509b1983264fa58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x25e8c1fc499beadde44ac2d7ec0c0cebfe49bff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x276abbf44db3ba49e6538679410df85bb303aa10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x279bec4222a1640b06a94bdd1d8a3d3d573d1f96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x290b9b60d9bdff2386325bca70efce986247e83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2daeb55f1e5a679b88d46451381f95eeaae78bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f2a44ec67d6a4c8b1ae35c021ce3c1eb5e6d03c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x316addf512b2d3c98769d694d7c17540c3bd477f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x316f53268eccd822659d806eca1333bfb2d1e617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x319c5ab4733f75cfe2f59f971bb94921aea1111d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33687d5ff897168771bedf9f752ddc0c9927fd12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3375f65e54ed99672f828e9be1610def88fdace7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36771ba67280a7b9e9653b51d062b6a280df6c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3954a81de20e9b077db007f61a8f85d3aa815743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236801 | `0x3956684d3c22fc1606cc5ea113c96b92a2dd1d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39fb63f7c86f4bca044516c0ca6bc677367c2507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a02f19a6f147da4d9e2061a3fd390504582ff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b37350c1b0c86f68419868d4a2e244104efdf8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c09a149344fc7c26e7a4feb82f879ab18ec6049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d6d982a91d94c6ad3f7dca04eb94e7eecce5fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d9738e6b4d12864c9dabf7ae1903f1c8f888288` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236802 | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236803 | `0x3f95b4938b11bb3901585d561f4adbcd90273ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236804 | `0x400445e4ffd2ade6435b36c9a827b50a496960a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4032d2e979db2c6a22ea8f7d5dab550270217559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x411c3b40fee09be56fb894ca68a8d9784fb9fa16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x41493bed44258bd8ab4b904b05a8213d8c47f6e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x435f09b8cc410c11a882ae7186d5ea690a6b4e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44026ff9540b790f5dc2ff0e8b99d4316d736300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44dbd6c52762e85c674041a045d90a6d852f2ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x464903d5fb1594049fa7d4945f61e25e481d1e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4679e9da3b23dad26fe517be23406b66590425e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4679fe292f7c468c09b3b23c3910de9601084c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4682fe03c0734ffae6606d7a4894f7129ea0bed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47aa625b1f72b3eb80f0ca3423a3bff1dafd7e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47bd0382ebd06f80afa9f8d17660e7f9f3c5adab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x480f85be9fe344b75e210b1745af2c9603f09eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49a9ba19e35846297f6a0c306ac9345ba5aec311` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b3c4ac3f82896236ad023d8a532fc6553b1bc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dd44edd06f3e86ed4a91cafc352b6c764603d82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x52022b1e244787b66b2e55d5bf75d05557d960be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52a9a3f3540ee91ecb0359f5be424c7c888933b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52b6ddb94d52c44588858e1728aa1fd2ef7b432e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5386e54351f4f87241c54866357dc779c0234b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x542ff835fa2af9d484f534d32cb981e1451d4a13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x54f6a2183238a741430234062d4ad290b17ae240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x552f7f21226ecd695245e1f149aca63361a88199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55e30bcdce0f973ebb4a0781f7aee442ead6ae2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x562f54f87179e6ac462920721f7fa1d1258fea32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57c0786528eaf913d9350c13c01d2c1a556a9133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5911d20d1ebe52c18baf937334a0be27018cf6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a8a61527b634873055a36118e8573c2e6596bda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5ae1f972cbe3f52e1ded29b03be82ab0cbfa7c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bef13945055926b1cbb18200ea84b1c944d657c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c6a3b0f8855f2d2d853a5f445745f03ad9a15dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c7628d53e11b018ef5f6654323e927414d52aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d4a299a4795a03d26834e088c00e878a0f094b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5db4b169605ac0e7f0ec45709132e65844af5d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e5220d22631aecb8a9e72e1d6820897e4464210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e90efcc096160dcbbb38bf4d234b811c1b31be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x63d22c55bd1107eaabab6a26e2c36ff2b8699a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63fd6d71da82f9da88ce99304144be1d88251c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x646b5e8e317ce1c15b97a9b3679071894d44d4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x647055fb725411ce7a44d4c0ef81efe983c7965e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64a27f4d1ed590d6fb68f6364b2ff07dd51fcb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65430f2673450b6d66258b678dc84f3f1dc053c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65e4d55792f17b429221b1b45e7e79775cccbdf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66cfa75305b7a12fa8915afa38106774c5903768` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x66d4192cfd56c5a066542f6fc6a83fcd03c4065f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x670f4a403cdccfa8628ca2b15521d62ecc38afde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6888f980057626fd978974012e0c13bb3542d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x697bd6b3bd203ced4dbba11a8a9218d03b2a2000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c2693cdc5467872ca386e55871c816231f8e27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c87dc1feb36fcdfed3dd93c8f61eec305a0f366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ca20386a322ee6545def7ed9910aef724ebe1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dbdfc9f5dbae52e8f9d8730187ae5516b84deb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e024e6b997c2ff57f4e5d7fd82f153bf27a1e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e552c2c4a71f99ade4d281bbad4002891310d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e99df988793d74a17db7663c3ee3ab8b85b9996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fa9b8b80e15cb1e67a7fd0414a21955254cdf83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7107fbf1f32b59215d858b8808970f72a8e40a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7229674e186bad05335f62a67fba4982ef6259f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x722decdb222fa559fd9c71d2ba604f7293dbde32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72597da97c2f54431699215e4748763a31159419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7367aec11bca829fae3f66842ac7d3cf5f6a441a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x739a88d3c91045bd4b2ce6c03f8059123574dde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7444720c19b97d95b650e71e29fbbde1029b671a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x764dcdab30d0af8fd1f45755e3d905bc1e2f5792` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77826efa48b81595cb367753cf735fbb294ea508` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x77aa1ff063d6d76573a0c95593eec7dd2761790f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77f1746ddfefdc766e2d688ec720451664b3c611` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x78e42225686dc2dae106218336a2c83779eb98e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ad73fdd84b44f974c6ed2c682f82b614d1fe545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7be62af887bd79c3a09485065a12d8896e3a4398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c8dd5a4fa03c63e33c95dd3c413ba750b92aae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d6ff1da253d8fd86c830358748f263242de45d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e0b5724e136eb142e8459448afd3eb5643875d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e848a4abd9b5f73f7354d8e72a5e244370e26e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7f63f56851f54518c0659d936ea5739b2a300733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x817031d11529eb0974bad13ec78355e4302b4122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x823111786a8761e445f4798cb01211bacafe73dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83155dd485b2da438a5341091102f9d8ce2816c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x856da16e2970ff85b8fd36fe02238f785e501ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87021746dc7b37cfb5c4e500bbc2146c97b843a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8802db5f59581773d3d420201b7141a6ab588998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x884e967863b678af451a62d04d566f26b7b5836e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a3e3d3cb695237a90b871585551508b43d980e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-236806 | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8cd597a5abbf42f78c0593b6a07ada5e292e427a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x8e406d0c422e98d2581bc37996f6efcbf6667a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f94b6aaeb70a7447fd29ff27a02024af7eb9a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x907a7b172a9c21ea4b9fb38ab31046754c502389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91847e8b7a4e3b4edfa0e823efab29baed1a0c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9225a2e7912d4b9c7f8608d98a77c1622a66a2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x940010effc31830355eca48a621eebbbe00b965c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9458888b70a68848e2d1dcce02ebf46e3923173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x946474a7a385c5d8c36c59049d6af1e9536a70da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94cb11e631d116acaab7df5c590ac9a3d0588c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96af68ab315cb173e9bd49d585c2293f5ca80880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9703251e29fd9b7369af00b5f2cf4d44a1808bd0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a27e4ed2a1d8dee4a28af69a728fbf7731fc7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a30885b1023d530910b237d801d73bf4c50a978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9aa68e54c52af5e31359ab56572372fb7f023364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c5b03827a212e013c79c76d42ac714c0c1f3184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ddbfc0f7a3da6b188268040240f67e2ae587d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ebee1d3465d27f316a6627ba4cb603619ba98be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9f8a0cc4017be26e58e270b9009d236a1628aa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa11d266e9f9ed8edcf4215a6b4de868121725112` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa46e9f226276facfd12e71d458064b5151fbadcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa54f29597ce397f5ffec3bc2b683b80b65a29e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6af5f32f889e062240536ec04a32d36e6f68027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8888b5c465a34df61837db9fdfb413fb6d8558b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9d19464c7824f298bb3780353e37e32fd06d1cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xaa5baca9ec15ea12f65e871010805485b614739a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xab45e606be58c8547d67aae0f9b76d70ee3175db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac09748131711fe5ca943f0ca1148f5ffa1a401b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xacfb86ebde56e1c1abc68db499fa5ceccfa61188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae0f7a4442edfdf4f37256fa1f006a3e025bd02d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb00a200ae1c1213e97c981d882dd79a7175f7735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1a6618f757a9408b3b7a97519728c5289bc6ace` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb268b2934e9ee98aa4f00c78719e287414a45826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3d0822121add6feb06a163778b0df79f5a01d83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb518b7964c9761a27d206e5483f9c38ed24d31c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5dd5b9b4d1998ee5bce686e37c4dd70cbc18978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8cbce256a713228f690ac36b6a0953eed58b957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb97d63257d8e1c3a74d8f3ce98b83e4ddbd49844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9b11621d60eb4d0f7c0cbc751e36798da5ced8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba1e9213c4e7713611323bc4d9764f04cdf493fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xbae1638dc1bc5392d26b8fa03b34b59c6b65b352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbcb71316552f1ed37641b05376c938570d424d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbccd3682cc5f99a7af5293b73e576db5e45f4eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbcf85f201fd98e7f2a6ebd660cbf331169b72fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbdddbb8b676970f5181ea2532e87862ca8046172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc02694d627fbd1ff9308de07bdf686292eecea61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0bab0b3725f0423faa65549f6e517480f2bea02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1a88da0344cfd356a6f3135d5599daf50837775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc43f4d970cc759b78bd21f9414f1984ca80e5ea6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5f86a05c622f505b3c330ca13e71c333da2859f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc647f98f14528e3716b521bcc0f2b63d6204ad55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca29fb67bbb8f16b7efb986ebe91cb9490842560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca4a50eba69126b3575c36bd77096d62f550235d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xcb6b3d5831de65a491d00b95cf21d41f1014f978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcde6fad8d5c560729e2e36ae3b046d30e95f5a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce52aedf7f1e989c8f5e0508bb7e2bcdb7544bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcfd161b26304df50d4b9b09852155b661b033b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd056d18ab521f3ec6dbd95674c8007340195a4eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd0595ff44638182e6b54051493ec0f045d04335f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0a60ca3723f396d95d652c4ea42845527890e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd13483363eceeba078f25032649bac8400e94ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd23a5dc624d9b9138ab3cb6ddbe4fe3de868a923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2c768263fdde839d4ba638f44204bfa12d03030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd442e60fffd0825ee1aa0306d1c229f54e0019fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4a45fe6cd681fd056f8bc5936e1b34d096587f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5a3cfc6cbf0c7dcf0987c0612eedda13674e45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5ef28e80439f3372f35ada5529bc6fea874af14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd67ce1f05fe7bc4799848e60f9ae89dfcf72d0c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd85d48cce64af59b14946b2793511eab2c4243a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda88dbfb6d4547e82049cef4dbe6107c3f2a6b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb09d83b6d1f7ebc849ef24ffa7a813cec87e797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb9f72936dac89e8a5180d0fb406e0fde9f951f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbd257a2ca19a734096f62a38efc9a6ebaad37ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xdc113f0bda33cd2d68c9345fb67791165ff8f4e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe0e2157bb15b66cf1303a67f9e0bfc5f3bf12a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe163243b0969780bf978eb19fd26ddc5e49bcdb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1d3f9f9047313c3970271c1ceb8cf20604d71b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe3bd06c7ac7e1ceb17bdd2e5ba83e40d1515af2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe434251bbcd5736c018d3ffbe7a323ed913b65d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe45c607b3f8ad48d16df969406c1901d6ae6b735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe48c93b8c804edc08e61b70e5b2132b7f6f1a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe76bef3fa9074891c946b783b47b963d2a1fd81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe81d5f27465f814754aeb6ea26ecf33cb3bd4ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe89362b911c567d14844f9372e649b823f4b5bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe909b93adae06a3f540af7caba46f56346a51bac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe9b73fa8a44bff5233b7f5a65cd8de19731cff61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea35a9bc850e0e75fe4c67197e82812fd0a0cfd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea4babc5a73693bd24adc9aec644e73965a45b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb56efedb28b15787ace2087e957964892d7d43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb6dcb8a9edbf9588e201956668546746b70fe34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebae2a864f342a2ac7fcd06905f5b1a106751593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecc036390479b26d7aa10ba3f685204651fb0887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed61f029e4129e3f162c8226764da6f8a460fbdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed6e895d9ccf97a23df0a92f4a3454d3a7c2fdd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefc017fb96401f72626f6c6709517f53a7b68641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefd57fe058ef86ae9b6aa48d1e403a44f2aa24b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf260fe3ae82490ec66164fd2de67efa00dcb22db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf38a7a7ac2d745e2204c13f824c00139df831fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf506d6925ce39755cc43ecf56a6f79b598fa28cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5b5c67330232fd15b56d28fb6c435cecef81e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5c84f5f8a8cde30126b8f29d4dd564cbabc9382` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf99c496c4bc62d4ce47f79bc7d367af4ffab105b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb0820e51fb53e6a7a29d06216e02e9df1387470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc5d5f9560de820aac6eb22b34030c114d303965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd22b4c00dee16d0cd266cabf317b80e1b0eecd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfdb7762bd3a18ed53accdd1ce9223db00832696d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xfe9f1e417afe603f6de14cba06ec878fd132cde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff5ec2cdce40a681690fb8c9c7c356cdbb1104eb` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x04d35ead49500bb69a2e4cb7a75a05a8e529095b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7ae799fdbe4c330a4ac18d8d65765222a0d47e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfbb4e52fecc90924c79f980eb24a9794ae4affa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04d35ead49500bb69a2e4cb7a75a05a8e529095b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ae799fdbe4c330a4ac18d8d65765222a0d47e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde7258b4c27a958d6a212d04280002cbe3a1c16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbb4e52fecc90924c79f980eb24a9794ae4affa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93e96d0a871d3787f171ab4057497db55f69667f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa59b2044eafd15ee4def138d410d764c9023e1f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x014604233e95a18341db91983192ced8c65c62b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01645d7c05cbe5d8028584f0c8b6d6407b7febb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x049eb0b4beb8d21a197918b1474c974708153988` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x060981d5c74519c1982ef912374758087fc9137e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0826e1a55ebef25d725bb944555f714db84d95bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08d52263c47ad6b5ae03de52269fcaa5460c4fe1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x08dd4eae3bb564192aa17e0d430b98380e36ae02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a471974c1093bdc7d00586baaf3e64ea675ea06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aaa6b13149900f39ef949ba690fd9159801167b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0b921fc8b84656157f5b7ddbf385205d1873a72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c7460a12fad2f1e0e1d3ec86a3471947c16a2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d59c0092a1d7d2b348824419d5fc7d7f42d7c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0da14647cc52cd93cd5c57bb67dc45de4cd12ef1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0da1a3138a5f80872550233abcd5b14d46d0951f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f503ff3eec91a882513c4ec0cced8ce543f6bcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x103024f6f514a229c87583acd12ca51a027d4456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13109717a76a16df578ac5b4a06139ff255f3fbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x134cc9c50c50fae58f2a019e275693196c0ee7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x143fc3b2f36287339edca2b121033e2a72d0d4ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x153decae36d7f08808dafc5dd8bb1e8159eb4730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c430b3ef5b4db173c199b91fcfb983329bbd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17c2e0d60b75961729aecc69ccc7e904b9411fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17ded44898131526f1d980d93d69aaba2cc1dcc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e3b80c69dad91f61a454f7a5d63187c69c8f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a9292de525231f377b59b982fa1bbe16b83e166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ccbb416bfafa14fb06192b9f542db0c246388fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dd9d03da8d3fc3af45ad57d75fa99e97ca9abc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x1e11d44cab7d311f723ff6b11a49d8f4b75dcde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f03e53401ec22fbd125d61aa194741d46cc3bcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x219329c0a0c97e83805c432c07b749fa2aaa0350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x222dce077caf88dedfdf5c8a5242ac2fa883e03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x234362079da44960fa6f8ce24fb9da5a36a096ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25d8f5acdfc4086865c57d0b4567e47b9f9db0b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x269fafdc9f362414b9c08adbb8a3106af5a2dc01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x28462f0898120db3138e5dbbe83f2f6206624722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x288ffb87fc69dc652f9b564faf05db7468013544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x296d24ce3df6a1c5421d035212d30da2abf52a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29c06e6a797fef985290e71a819f49619153e129` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x2c0daa339ec7756f9ff3d6e5a3e432bae08d2131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2cb6c0710a5b9ee30ff41358dacc7bd7bbd8681f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d9c1e87595c6ed24cfec114549a955b7023e1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e9c04ca74bcfc4b7f67579ed4981bb2424073fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ef4590f4f282e7c042874ff9c37d9d371963f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f9cac73265bc89257aeb33ae0ed273ebdfb755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30534a68450f2492d04256ac78b9b9a7a7214a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x325d72d3d0806fd2a45a6c44e3e51d18d8187117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3291e7c26e4d140eeca633d868d77d4851a35f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3421d04fd330e9642a8a38236b3ffe270050ea93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35ad31f2431e6b6759bcf21f8677fab64db62de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3606b6602b429907cf6033e9c228316981970d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x369ff85f05961f2b88cb1233d0c863bfd864171b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38be387c33946fa92c800e761ea486f5a0c4ddf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39936916b137409c5c4c546b91d54d4ae5d3786e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a79b48d3dcc17dd6f1f844769ab309e4b969071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ab4b2738fe5712332b8a1d8bc251f9854c22053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b7aeb242f55204dc31ce09cc31d0315caead638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c6d9dedd2a2d2e57df988e7d7bd77eb4aa72ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3da423405d2eb675b9046fe7c18b843b20ffadd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ecc0622b9abb91ca475a6f2360698d4f56ab71d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x408baefcecb217d23b225b67286ec64d01f3b365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40bda6c6f687c42b89df7f18db13f66a9f7e2eec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4106ac46726a43859d7fdc9462565eb22097bf05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41537105d5702f77a0e04cfdf5519aa9739ae683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4235f9be035541a69525fa853e2369fe493ba936` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x42424242b0c0d8a19dcd0df362815e242586354a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4280492c441c3ed592a6537bd428fecbe4bc3787` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x430638b0710eb36ec68bbf2fca97085339470701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4454d8df7cc99ccf1f5463ba3fffe1499a432392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44bdcf5bf279fef689e1e0cc4cee81e35d297833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x482dcc1b2477d44af818d7a9b0d1f545356cb58a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x48d37778f44a08cbd75d85dbaf5b468dabbc52b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x490c69b3a746a10b163f1e9a5674f2057d3d956f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4b094aecf5598ca868c4470dc2c99425da6256f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4c0dfc81f7f971de4b9717350c0a02c8c4645be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51e07ff9c0f78f88b3c094a71d338d1681c3ad20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52377d76101ead5a614e946dbce9c80f23be9d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5311ea28df83703fde89797a56a39e30f09a2016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54d434c6688986b24a2d01df8e0c116744fca5f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x563d2d28ea10691bae85838d1ee8f1397217b252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5685697148563e21e3f896de7d1c89183dc84e9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5916de85c68db865f35df760f01110f09b5be90e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x598acf0e3af1b81891403167e9ecd4744a1e6f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x599d0d43af7f84e245bf68b9e4517f3f8e43d900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a0ebab01680ea686bba5bc502527a74d2821ed7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x5ad267449556588cbfc5eec5d7fc4057b278e6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b26b28276616a247ee61b9bb1b09e99a4576764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cc7b78432140b7a8dd955d51f3d9ba4e707b65e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x5dec8fbe088d11c9d8e607f0d4817e6dc7ac2c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60f5e19ea1488ef514cdc7d42953ca0157caf720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6177187e1e767cc62ed70c3d75a2d6c905994e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x621b5adc58cce0f1efa0c51007ab9a923213f759` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x63b7326dfe1f1cbfd736c74f98f95919d2dbea81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x642d7d545e991e913bd03eb4e65562dca1d85246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6609b69a3ea9f8239dce55e99ff349517525326d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x662643b4feaaa99b355f8d5b31d91030fb9d9a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x676f108f321585d3194b9bda29698bbae277f3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x685f0548b356f97fa44bda366e9cc47d82d5d989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69572262bd8efe1f1c58955aeaff4ce720e67b1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x697ce6502bd0c6430830a6c57d85710f202b2a4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x6a0c03c0b933875daf767bb90584ba696b713243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ebc13418aaae79031e5cba2c46343d551454a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7051a7918a869aff8bd9636785f7e50edca9b01b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x737ffa0fc4dfb6fadbee0d2fd9b7ddab30efb3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75a83ae18023ef32d97451117d9e6b202d17291f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76550efe55e28887ed84393cd6d0d7848542118c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76d80ca1fc1dd8355b692f961d198dd7a2858edb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x7740c2ee0051e275323feb42521ca1161925c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x777e391521a542430bdd59be48b1eac00117427c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x78c688f05a70c7d085c737121e6433eb99c86418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78ec4648d2463bc792f0fe0131fa40c9381ca0cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x7b0c437930876a42c91bd5e261066104eaaf8eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c3edab3fab6f4786fe4a89c6ac8c539e0bb2aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c516cf7e4f4f1bd49d355a97f81f13dbfcbe0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e1e7c5123f857a3e57e0802f3603d120f69c819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7eb3a69252b5a29d0239b45e088a4baec906a0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f16dff067931ee174021d744494327ef4780524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x7f57939d503cb8687213690906a8addb2cd6794b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8020138c90433d8918a95d141231a5f34ecc69ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x819bbc76fd65a385a7b727723df5e636fc3e877f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83f1237728ecafd010b1b593b947d2e44a3fac25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84757de29c74306be2eec7738c2fa8281a8312e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84ecab09c480121cf0b94726d6230901886f97ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86b2188aca3abce88ecb27cf6814790cb58587f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8754dae9540afdae0b7c53d295c41f89272d2a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88dbb9f7c7e814832bd5c15f90334b3b7dd28842` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8a1132aa54de8c2810e3d361fe87913a901c33c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8a60d92eec1cad75ca21e6095a10a6d77eda4239` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8b131b34fa09d3a76d9833085258d8a014124719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b763519d3e634533b4039491e09f5774281e4b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8befa9a3434cd2efaaefdaf850b22fd307d0c84b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8c3483df8fa193a18c0eda71d2f7114381ea28c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8f13649873761a6d57b5b53ece3ebff89d9cd604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9080bd46a55f8a32db2b609c74f8125a08dafbc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91dac6ab6e55d3ea926af84c05c3ab123c5d7791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92bfa7f1a3095de19320e2cfc52ef7787de50461` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x965991775da1a3550445f76b2aa799eac0a05434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x975cbf5e26a1dc010d9c7948ee8ec152fb7b6305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97fb1a0d7cfe3bef6c2edbe1fcefd41a91318407` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9831c93f3024e06db9eee6a5add6e122d18465be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99e7ef79f166571fb6b5f156c70525f2e7b1f0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99ef222dba70eb0a396115d3ad0633c88bc73582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a4c71941d63d9060deeef1132cf76ccecb261a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9af0a83fa4ba1ef35b385dec6550ff02c4f38f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b33a551664458328c3a6e19c5168319fac6a7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bc04d39a721b48ca33700214961ac5cc3622f76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9c5a7ccaee7015388d8e9663c94d4027f8038cd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9e4aabd2b3e60ee1322e94307d0776f2c8e6cfbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ec3ca469f415a7e55a21dc662d427d59e8de8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f2dc6aa55ec08aadd73b3a6331f081a20a5f212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa18881c13ab4af4349cde10ec47537f71ecabc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa24cf18f6ba8c942d4bebc844c3a9f40138b37c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2d5783c68a5b0c492dbb02526489d17899b4f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3091f85e7bdf43bb8cb73c7130e4ca2d64a4e64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa38d20f9f3debb282bdcf130594a25516e9f9e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa44bd7601f79c5d1c51fa3a89536d7be594ad008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa492a986a2744ca65679ed36ffd3c6be2e694246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4f5447ce95fe4cdb7ecd023d6ea0274b85a27ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa57c3be3c8c8547d89436ad40b94052b6a093733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5af747d6e1b199755834f1e8490ba1df0070e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa65938df082f58fa0b9a6d8c35865cb104e2e5d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa68294fd8d399a47b7acb86d67355b0bc652b9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa811738e247b27ec3c82873b4273425b5355bd71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa88072bb6fdfd51c4e9158e95a9b8d2c200c7291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8d91c6093b700897e4654a71be67fe017f10098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8eb0fdfa77185c20beb05f40863226cd74b3d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa99469e429716a38bf1d858df3fb2a8f4a229e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa8a33e7bcadb52ab4f43152682e483607fac83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab24b80b355f1f5fd1218784cc6f080463e55176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab7298fbca5d25711961bbc1df05e14efabdce53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad7185fe19ef6607ab7631749373a261461adf7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xaeb9488d0bd5ad782784b3d873c496d91c883091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafdb3f79ac7de9d8e95c6e774f222959cc99e889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb105d4d17a09397960f2678526a4063a64fad9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb17a476e045b47185d1a28720429965da110e247` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb1f120578a7589fd9336315c4df7d5a5d90173a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2751c27982618848eb00d87bc039574fde5c2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3e31748cdbe7fa55a4cb1c0b4738d6d6aa5a60b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb3ee46c7ee7f499fa096443dc57a4dbb4c270229` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb50575ac3a84cd7510a10f52db43adfaccff23be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5bf47e84a68818e0a882153cbb215748e80aee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb79604244adc72e566eed6769ea3f3070c13fa66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7f8fcaf0fe1f24e8f870391fd5c47c0c85acad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb92655de8a5f6edcbdd6beeb110f385646de1768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb961966cae73a66e96d22965de8d253c0fcbcf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb573d20d73296ec2c8051bec2c5c8d85ce46d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbcf9f29b6cfee4dc2a1835c4707bc90b1d35fbe0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xbe43ac8151b6ae3a9228e46c4d01b6c6566e3fbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xbf770986abf674cf7f94caa4ceb4ed48c2400802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfd2c7725f1f2690eb11f2bd01ec7171b9ce8e0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc05a5aa56df0dc97d6b9849a06627a079790014f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc13c56e2b7e2362fec31fb431781b2f2b1010c86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc152ef9f756abe21ccbba7db2fab13460bd19fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1c3740a269ba3ed7aa2cea36f336a6042e1889f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1e72bf3f97505537adad52639f3bbf2df5e5736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc28927c875dd43139d23f6c16641ab6ebd4e7943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2c8944b0c66eca1b55dc9f9c959c1d6ac77f70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc384fff20a30ca860a8e4845b442ce31136b2bfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc3cfcc7fbdb3811eb59505870b979c42920d0449` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc4b501cf8f974b7e2aef41b8cf252d5b77cc0e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc990380d5fb656010bcb8ab1e7f1041bc3155dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fa936b288f12d50b4423833231ccdd57a944b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbbe932b465692150b030ae27427c6b69be9b061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd01b1ad51fafd09a59f66e80564642a9b025c4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xcd32dd6dc3a26137fc93f7dd833a30fa5d3dcc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xced63f752ab8b2a58f1c7b8ef5438b263efd990a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf025c16c9cd72eebf0513a1ed8f588f99d1bcd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd009779f5dd78651310eb7d2fca5a29ae17cb02d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd0ccb71a33346001fc8f7b0160450f31c464c2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1e8ee19f4501987468891a5505e596031610f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3641c0ebe0361de44d0298e165943b6b0422d98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd514419729a55d2615f87b074e15cd28eca3fc9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd5fcd5c0d1614fb3e8c5aadd43f8ac8d7a3d0c9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd6a14e672b4817955a5764eb95510370cf6121e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd7d71e4bc981b50696fa536d330bf745ae563e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd900c66ad9dc48b1b0dc08b6a3106c0165cc0d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda9cf7ca08982db05dc04e538a2d9a4ffdee6952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb05da15a08b59e6227f2d5047723243be5b8525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdb59ef120ff1fa5013bb5047e513162003034723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb8a8c4556fbe797507b0d9a14b74541492f6b87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdda5f70a3923775dbeeb500692a12821797ea079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xde3f38fd15f566416fe3941b57e1b0a50a9487e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xde757b3f121b8d15686722ca41071e3d7692f5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf25d4ee0242bc83d12d93f92d67342a8725b2da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdfff750529a2eaba8b13e1b81f054ede83ca52a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe168951f493fb1a6cabded806c3294d3da3dfd0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe18ae29256ee2d31f7a4aa72567fde1ff7d9895e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4095f4ef9f2332f23948ea10000d00d246d2a86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe4b269b61471d81898be034dab496910a5796154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe65d7106fb96112189c7e92e88e38370ca629623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe935028df3285d1852e11dae384534d27887c196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9e6799cd59c1cea3c4606b83f38621f150c605b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb10facda0fe4b80839f3faf4886034387d6709b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb162cac1516eadb4aaaa560b1b526b27b3d3c4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xeb1fce24b7a60510d22cbeea455a709dfd3d63a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xeba8431c8d8552934545288df136bf46bc556923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebf8bd7a000d02849cced5feb2079028e2fa6d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec4676aaae8b958464d087d4faaa6731f0596ae9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xeeeeeb57642040be42185f49c52f7e9b38f8eeee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf14c5f5f2675c0d44ccef16ef6a4368061f7b79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf24e205fa694678bfa17689f5e257d92193b8a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2c55153b408b5030e62617861a15aa99727ff3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf3295f2178762aa96edf5e3e30178e60c79b6ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf45c092db852534947cbdd8382f189201a0baa27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf48178449edc09f59e3b04261d51a3bf43aed71e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf499b74b036ea7ad5215175f8f40687ed384810c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf726bf6f3a24933c75e2d45c212023b2173410d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7aa6e07dee4065cefd20d2cb719638dc14df371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9381821ab0c50cbc2fd9e6d578dcaf12c547ec6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xf9ae08539fc40eef15089624d69dd2d96b3ccaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4a3c321475d3cc2fc3067f36a34805f3ba7f41` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xfb00260b73041ef941307d486559fb1fb04cfe60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xfbe18a8262f7849659541ffb42bfd91d1fb7179d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xfd4d0c8cbb2d4899f50b3dbddacdbf2f565bd0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfeeff2fcb7fe9f3211abe643c3f49f3a4f04063a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff0b671ecd65fdcd0064c93f2975870e0a6075d8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 480
- Live contracts: 0
- Unknown liveness contracts: 480
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=35, unverified unclassified=445

Showing first 200 of 480 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93e96d0a871d3787f171ab4057497db55f69667f` | non_address_book | unknown | unknown | unverified | n/a | `0x84b93d7e20bd0f2fd683e26a9826266d461d0537` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa59b2044eafd15ee4def138d410d764c9023e1f0` | non_address_book | unknown | unknown | unverified | n/a | `0x84b93d7e20bd0f2fd683e26a9826266d461d0537` |
| avalanche | exact address book overlap | UnnamedContract<br>`0x9e4aabd2b3e60ee1322e94307d0776f2c8e6cfbb` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01645d7c05cbe5d8028584f0c8b6d6407b7febb2` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08d52263c47ad6b5ae03de52269fcaa5460c4fe1` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0a471974c1093bdc7d00586baaf3e64ea675ea06` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0aaa6b13149900f39ef949ba690fd9159801167b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c7460a12fad2f1e0e1d3ec86a3471947c16a2b6` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0d59c0092a1d7d2b348824419d5fc7d7f42d7c98` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0da14647cc52cd93cd5c57bb67dc45de4cd12ef1` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f503ff3eec91a882513c4ec0cced8ce543f6bcf` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x13109717a76a16df578ac5b4a06139ff255f3fbd` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x143fc3b2f36287339edca2b121033e2a72d0d4ef` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x16c430b3ef5b4db173c199b91fcfb983329bbd41` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x17c2e0d60b75961729aecc69ccc7e904b9411fa3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x17ded44898131526f1d980d93d69aaba2cc1dcc4` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x17e3b80c69dad91f61a454f7a5d63187c69c8f14` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a9292de525231f377b59b982fa1bbe16b83e166` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ccbb416bfafa14fb06192b9f542db0c246388fe` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1dd9d03da8d3fc3af45ad57d75fa99e97ca9abc6` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f03e53401ec22fbd125d61aa194741d46cc3bcf` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x222dce077caf88dedfdf5c8a5242ac2fa883e03a` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x234362079da44960fa6f8ce24fb9da5a36a096ba` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x25d8f5acdfc4086865c57d0b4567e47b9f9db0b9` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x296d24ce3df6a1c5421d035212d30da2abf52a1e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29c06e6a797fef985290e71a819f49619153e129` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2cb6c0710a5b9ee30ff41358dacc7bd7bbd8681f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d9c1e87595c6ed24cfec114549a955b7023e1a9` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2e9c04ca74bcfc4b7f67579ed4981bb2424073fa` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ef4590f4f282e7c042874ff9c37d9d371963f32` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f9cac73265bc89257aeb33ae0ed273ebdfb755f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x30534a68450f2492d04256ac78b9b9a7a7214a5a` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x325d72d3d0806fd2a45a6c44e3e51d18d8187117` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3291e7c26e4d140eeca633d868d77d4851a35f4e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3421d04fd330e9642a8a38236b3ffe270050ea93` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x35ad31f2431e6b6759bcf21f8677fab64db62de7` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3606b6602b429907cf6033e9c228316981970d7c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x369ff85f05961f2b88cb1233d0c863bfd864171b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38be387c33946fa92c800e761ea486f5a0c4ddf3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x39936916b137409c5c4c546b91d54d4ae5d3786e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a79b48d3dcc17dd6f1f844769ab309e4b969071` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ab4b2738fe5712332b8a1d8bc251f9854c22053` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3b7aeb242f55204dc31ce09cc31d0315caead638` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c6d9dedd2a2d2e57df988e7d7bd77eb4aa72ea0` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3da423405d2eb675b9046fe7c18b843b20ffadd3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ecc0622b9abb91ca475a6f2360698d4f56ab71d` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x408baefcecb217d23b225b67286ec64d01f3b365` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x40bda6c6f687c42b89df7f18db13f66a9f7e2eec` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x41537105d5702f77a0e04cfdf5519aa9739ae683` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4235f9be035541a69525fa853e2369fe493ba936` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4280492c441c3ed592a6537bd428fecbe4bc3787` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4454d8df7cc99ccf1f5463ba3fffe1499a432392` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x44bdcf5bf279fef689e1e0cc4cee81e35d297833` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x482dcc1b2477d44af818d7a9b0d1f545356cb58a` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x51e07ff9c0f78f88b3c094a71d338d1681c3ad20` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x52377d76101ead5a614e946dbce9c80f23be9d50` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5311ea28df83703fde89797a56a39e30f09a2016` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x54d434c6688986b24a2d01df8e0c116744fca5f6` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5685697148563e21e3f896de7d1c89183dc84e9b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5916de85c68db865f35df760f01110f09b5be90e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x598acf0e3af1b81891403167e9ecd4744a1e6f9f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x599d0d43af7f84e245bf68b9e4517f3f8e43d900` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5a0ebab01680ea686bba5bc502527a74d2821ed7` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5b26b28276616a247ee61b9bb1b09e99a4576764` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5cc7b78432140b7a8dd955d51f3d9ba4e707b65e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x60f5e19ea1488ef514cdc7d42953ca0157caf720` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6177187e1e767cc62ed70c3d75a2d6c905994e35` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x621b5adc58cce0f1efa0c51007ab9a923213f759` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x642d7d545e991e913bd03eb4e65562dca1d85246` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6609b69a3ea9f8239dce55e99ff349517525326d` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x676f108f321585d3194b9bda29698bbae277f3cd` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x685f0548b356f97fa44bda366e9cc47d82d5d989` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x69572262bd8efe1f1c58955aeaff4ce720e67b1b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6ebc13418aaae79031e5cba2c46343d551454a6a` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7051a7918a869aff8bd9636785f7e50edca9b01b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x75a83ae18023ef32d97451117d9e6b202d17291f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x76550efe55e28887ed84393cd6d0d7848542118c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x76d80ca1fc1dd8355b692f961d198dd7a2858edb` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x777e391521a542430bdd59be48b1eac00117427c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x78ec4648d2463bc792f0fe0131fa40c9381ca0cb` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7c3edab3fab6f4786fe4a89c6ac8c539e0bb2aab` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7c516cf7e4f4f1bd49d355a97f81f13dbfcbe0d7` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e1e7c5123f857a3e57e0802f3603d120f69c819` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7eb3a69252b5a29d0239b45e088a4baec906a0b1` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f16dff067931ee174021d744494327ef4780524` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8020138c90433d8918a95d141231a5f34ecc69ed` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x819bbc76fd65a385a7b727723df5e636fc3e877f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x83f1237728ecafd010b1b593b947d2e44a3fac25` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x84757de29c74306be2eec7738c2fa8281a8312e0` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x84ecab09c480121cf0b94726d6230901886f97ef` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x86b2188aca3abce88ecb27cf6814790cb58587f3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x88dbb9f7c7e814832bd5c15f90334b3b7dd28842` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8b763519d3e634533b4039491e09f5774281e4b4` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9080bd46a55f8a32db2b609c74f8125a08dafbc3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x91dac6ab6e55d3ea926af84c05c3ab123c5d7791` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x92bfa7f1a3095de19320e2cfc52ef7787de50461` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x975cbf5e26a1dc010d9c7948ee8ec152fb7b6305` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x97fb1a0d7cfe3bef6c2edbe1fcefd41a91318407` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99e7ef79f166571fb6b5f156c70525f2e7b1f0af` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99ef222dba70eb0a396115d3ad0633c88bc73582` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a4c71941d63d9060deeef1132cf76ccecb261a9` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9b33a551664458328c3a6e19c5168319fac6a7de` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9bc04d39a721b48ca33700214961ac5cc3622f76` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9ec3ca469f415a7e55a21dc662d427d59e8de8f6` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9f2dc6aa55ec08aadd73b3a6331f081a20a5f212` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa18881c13ab4af4349cde10ec47537f71ecabc4e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa24cf18f6ba8c942d4bebc844c3a9f40138b37c3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa2d5783c68a5b0c492dbb02526489d17899b4f5f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa3091f85e7bdf43bb8cb73c7130e4ca2d64a4e64` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa44bd7601f79c5d1c51fa3a89536d7be594ad008` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa492a986a2744ca65679ed36ffd3c6be2e694246` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa4f5447ce95fe4cdb7ecd023d6ea0274b85a27ff` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa5af747d6e1b199755834f1e8490ba1df0070e24` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa65938df082f58fa0b9a6d8c35865cb104e2e5d1` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa68294fd8d399a47b7acb86d67355b0bc652b9f8` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa811738e247b27ec3c82873b4273425b5355bd71` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa8d91c6093b700897e4654a71be67fe017f10098` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa8eb0fdfa77185c20beb05f40863226cd74b3d5b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa99469e429716a38bf1d858df3fb2a8f4a229e4c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaa8a33e7bcadb52ab4f43152682e483607fac83f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xab24b80b355f1f5fd1218784cc6f080463e55176` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xab7298fbca5d25711961bbc1df05e14efabdce53` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xad7185fe19ef6607ab7631749373a261461adf7c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xafdb3f79ac7de9d8e95c6e774f222959cc99e889` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb105d4d17a09397960f2678526a4063a64fad9bd` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb17a476e045b47185d1a28720429965da110e247` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb2751c27982618848eb00d87bc039574fde5c2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb3e31748cdbe7fa55a4cb1c0b4738d6d6aa5a60b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb5bf47e84a68818e0a882153cbb215748e80aee2` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb79604244adc72e566eed6769ea3f3070c13fa66` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb7f8fcaf0fe1f24e8f870391fd5c47c0c85acad0` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb92655de8a5f6edcbdd6beeb110f385646de1768` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb961966cae73a66e96d22965de8d253c0fcbcf04` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbb573d20d73296ec2c8051bec2c5c8d85ce46d22` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbcf9f29b6cfee4dc2a1835c4707bc90b1d35fbe0` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbfd2c7725f1f2690eb11f2bd01ec7171b9ce8e0c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc13c56e2b7e2362fec31fb431781b2f2b1010c86` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc1c3740a269ba3ed7aa2cea36f336a6042e1889f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc1e72bf3f97505537adad52639f3bbf2df5e5736` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc28927c875dd43139d23f6c16641ab6ebd4e7943` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc2c8944b0c66eca1b55dc9f9c959c1d6ac77f70e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc384fff20a30ca860a8e4845b442ce31136b2bfe` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc990380d5fb656010bcb8ab1e7f1041bc3155dfd` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc9fa936b288f12d50b4423833231ccdd57a944b6` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcbbe932b465692150b030ae27427c6b69be9b061` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcd01b1ad51fafd09a59f66e80564642a9b025c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xced63f752ab8b2a58f1c7b8ef5438b263efd990a` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcf025c16c9cd72eebf0513a1ed8f588f99d1bcd9` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd009779f5dd78651310eb7d2fca5a29ae17cb02d` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd1e8ee19f4501987468891a5505e596031610f86` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd3641c0ebe0361de44d0298e165943b6b0422d98` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd900c66ad9dc48b1b0dc08b6a3106c0165cc0d53` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xda9cf7ca08982db05dc04e538a2d9a4ffdee6952` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdb05da15a08b59e6227f2d5047723243be5b8525` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdb8a8c4556fbe797507b0d9a14b74541492f6b87` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdf25d4ee0242bc83d12d93f92d67342a8725b2da` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe18ae29256ee2d31f7a4aa72567fde1ff7d9895e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe4095f4ef9f2332f23948ea10000d00d246d2a86` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe935028df3285d1852e11dae384534d27887c196` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe9e6799cd59c1cea3c4606b83f38621f150c605b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeb10facda0fe4b80839f3faf4886034387d6709b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeb162cac1516eadb4aaaa560b1b526b27b3d3c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xebf8bd7a000d02849cced5feb2079028e2fa6d23` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xec4676aaae8b958464d087d4faaa6731f0596ae9` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf14c5f5f2675c0d44ccef16ef6a4368061f7b79d` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf24e205fa694678bfa17689f5e257d92193b8a0b` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf2c55153b408b5030e62617861a15aa99727ff3f` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf45c092db852534947cbdd8382f189201a0baa27` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf48178449edc09f59e3b04261d51a3bf43aed71e` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf7aa6e07dee4065cefd20d2cb719638dc14df371` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf9381821ab0c50cbc2fd9e6d578dcaf12c547ec6` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfa4a3c321475d3cc2fc3067f36a34805f3ba7f41` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfeeff2fcb7fe9f3211abe643c3f49f3a4f04063a` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xff0b671ecd65fdcd0064c93f2975870e0a6075d8` | non_address_book | unknown | unknown | unverified | n/a | `0xba49776326a1ca54eb4f406c94ae4e1ebe458e19` |
| base | unverified unclassified | UnnamedContract<br>`0x04d35ead49500bb69a2e4cb7a75a05a8e529095b` | non_address_book | unknown | unknown | unverified | n/a | `0xc61c7afe9ba943f0665e5c05a7d6b57e3ed3ebf5` |
| base | unverified unclassified | UnnamedContract<br>`0x7ae799fdbe4c330a4ac18d8d65765222a0d47e6d` | non_address_book | unknown | unknown | unverified | n/a | `0xc61c7afe9ba943f0665e5c05a7d6b57e3ed3ebf5` |
| base | unverified unclassified | UnnamedContract<br>`0xde7258b4c27a958d6a212d04280002cbe3a1c16b` | non_address_book | unknown | unknown | unverified | n/a | `0xc61c7afe9ba943f0665e5c05a7d6b57e3ed3ebf5` |
| base | unverified unclassified | UnnamedContract<br>`0xfbb4e52fecc90924c79f980eb24a9794ae4affa4` | non_address_book | unknown | unknown | unverified | n/a | `0xc61c7afe9ba943f0665e5c05a7d6b57e3ed3ebf5` |
| bsc | exact address book overlap | UnnamedContract<br>`0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | exact address book overlap | UnnamedContract<br>`0xd85d48cce64af59b14946b2793511eab2c4243a8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | exact address book overlap | UnnamedContract<br>`0xed6e895d9ccf97a23df0a92f4a3454d3a7c2fdd6` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4682fe03c0734ffae6606d7a4894f7129ea0bed5` | non_address_book | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5e5220d22631aecb8a9e72e1d6820897e4464210` | non_address_book | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | unverified unclassified | UnnamedContract<br>`0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4` | non_address_book | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3d712e6253e33ba3cf361d00ba5382da4d30fb6` | non_address_book | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| bsc | unverified unclassified | UnnamedContract<br>`0xebae2a864f342a2ac7fcd06905f5b1a106751593` | non_address_book | unknown | unknown | unverified | n/a | `0x56bbca92068ca6a30155e0a08dd676a8433262ff` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x793eab1953e650c422c92ccc8b7e36cce62bcd04` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x967750742ab55b2e15c100093497b452aef97b25` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa25afe3e1f9f1b317b8c1c277ca59d700eefa8c5` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2a8b9acc739fccf52a382452dcfcef2338d731b` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd5bf0dcc6c61760baaa536d0d17b1d2e358cc27` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca4bd724825a228e49257b3e4e1b5637416d830a` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8234393e0ffe32785bd78366be2fffce51795b9` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe88380fc1d221916c2f3593ead78f5316f971d95` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe988b3d66a76d022becc75516e1997690d51855f` | non_address_book | unknown | unknown | unverified | n/a | `0x749af73fd51f1459c8fbcc65e160046b6c0c8880` |
| gnosis | exact address book overlap | UnnamedContract<br>`0x103024f6f514a229c87583acd12ca51a027d4456` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x111617795c52555d45cf100d0cbf01c82e157e81` |
| gnosis | exact address book overlap | UnnamedContract<br>`0x3f069263c05a31c3b8cc3f621cd4baf3c8c9b071` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x111617795c52555d45cf100d0cbf01c82e157e81` |
| gnosis | exact address book overlap | UnnamedContract<br>`0x4106ac46726a43859d7fdc9462565eb22097bf05` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x111617795c52555d45cf100d0cbf01c82e157e81` |
| gnosis | exact address book overlap | UnnamedContract<br>`0x5942a302f2bdceb43c2934b42c584f4ee5f7b027` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x111617795c52555d45cf100d0cbf01c82e157e81` |
| gnosis | exact address book overlap | UnnamedContract<br>`0x737ffa0fc4dfb6fadbee0d2fd9b7ddab30efb3b9` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x111617795c52555d45cf100d0cbf01c82e157e81` |

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
| needs_review | 736 |

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
