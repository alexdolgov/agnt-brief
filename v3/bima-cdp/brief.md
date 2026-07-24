# Agentic Audit Brief: BIMA CDP

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: BIMA CDP (`bima-cdp`)
- Website: [https://bima.money/](https://bima.money/)
- Lifecycle: active (Tier 0, 66.7% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, sonic
- Contract surface: 107 unique implementations (161 raw deployments)
- Coverage basis: 4/42 confirmed own live verified implementations (9.5%); conservative 9.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,207,050.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BIMA CDP. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across bsc, ethereum, sonic. Structural roles: 28 unclassified, 17 supporting, 14 core, 2 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (28), supporting (17), core (14), infra (2)
- Contract kinds: contract (61)
- Detected standards: erc20 (6), pausable (6), ownable (3), erc1967proxy (2), erc20permit (2)
- Frameworks: openzeppelin (30), layerzero (24), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 71 contracts are derived from known codebases. 70 contracts have no detected origin.

### Forked Contracts

**TroveManager** (`0x5066dc39248e6696c0f2606a744a4482a3d36b97`, chain 1)
Origin: mellow-protocol (`0x8ed4f2...657938`)
Containment: 100.0% - 79 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x29467211ad35f97cea26ae11da0c427836ec4c05`, chain 1)
- UnnamedContract (`0xf4030086522a5beea4988f8ca5b36dbc97bee88c`, chain 1)
- UnnamedContract (`0x264990fbd0a4796a3e3d8e37c4d5f87a3aca5ebf`, chain 56)
- UnnamedContract (`0x623f2774d9f27b59bc6b954544487532ce79d9df`, chain 56)
- UnnamedContract (`0x6a62989d451c4f359a30bfcece51da8a313dd490`, chain 56)
- UnnamedContract (`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`, chain 56)
- UnnamedContract (`0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15`, chain 146)
- UnnamedContract (`0x6a62989d451c4f359a30bfcece51da8a313dd490`, chain 146)
- UnnamedContract (`0x6bede1c6009a78c222d9bdb7974bb67847fdb68c`, chain 146)
- UnnamedContract (`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`, chain 146)
- UnnamedContract (`0x8bcd59cb7eeeea8e2da3080c891609483dae53ef`, chain 146)
- Bfbtc (`0x623f2774d9f27b59bc6b954544487532ce79d9df`, chain 1)
- BimaBurner (`0x93ee18e6d372a2c9bf8c876932e39c4126f80f09`, chain 56)
- BimaCore (`0x227e9323d692578ca3df92b87d06625df22380ab`, chain 1)
- BimaCore (`0x227e9323d692578ca3df92b87d06625df22380ab`, chain 56)
- BimaCore (`0x227e9323d692578ca3df92b87d06625df22380ab`, chain 146)
- BimaToken (`0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15`, chain 1)
- BimaToken (`0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15`, chain 56)
- BimaVault (`0xc4bbfb26a2285b3d5e7406f383a676e78b126799`, chain 1)
- BimaVault (`0xc4bbfb26a2285b3d5e7406f383a676e78b126799`, chain 56)
- BimaVault (`0xc4bbfb26a2285b3d5e7406f383a676e78b126799`, chain 146)
- BimaWrappedCollateral (`0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1`, chain 1)
- BimaWrappedCollateral (`0x856db20b0c326afee3bf64770f7d8d39bf232ce0`, chain 1)
- BimaWrappedCollateral (`0xdc0ccad18ca645a03870676c78a81524b4655197`, chain 1)
- BimaWrappedCollateralFactory (`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`, chain 1)
- BimaWrappedCollateralFactory (`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`, chain 56)
- BimaWrappedCollateralFactory (`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`, chain 146)
- BorrowerOperations (`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`, chain 1)
- DebtToken (`0x6bede1c6009a78c222d9bdb7974bb67847fdb68c`, chain 1)
- EnzoBTC (`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`, chain 1)
- Factory (`0xc5790164d3ccb6533b241eee3fd7f56862759376`, chain 1)
- Factory (`0xc5790164d3ccb6533b241eee3fd7f56862759376`, chain 56)
- Factory (`0xc5790164d3ccb6533b241eee3fd7f56862759376`, chain 146)
- GasPool (`0xcbf15324c5838aefe6731077c55adc85bdae8b89`, chain 1)
- GasPool (`0xcbf15324c5838aefe6731077c55adc85bdae8b89`, chain 56)
- GasPool (`0xcbf15324c5838aefe6731077c55adc85bdae8b89`, chain 146)
- IncentiveVoting (`0x5587416ef31da806948e6975c377844f5eddb7a8`, chain 1)
- IncentiveVoting (`0x5587416ef31da806948e6975c377844f5eddb7a8`, chain 56)
- IncentiveVoting (`0x5587416ef31da806948e6975c377844f5eddb7a8`, chain 146)
- LiquidationManager (`0x2d3b9e988470d14a81b9965e4e5229aae06b73ba`, chain 1)
- LiquidationManager (`0x2d3b9e988470d14a81b9965e4e5229aae06b73ba`, chain 56)
- LiquidationManager (`0x2d3b9e988470d14a81b9965e4e5229aae06b73ba`, chain 146)
- MultiCollateralHintHelpers (`0x6a62989d451c4f359a30bfcece51da8a313dd490`, chain 1)
- MultiTroveGetter (`0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b`, chain 1)
- MultiTroveGetter (`0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b`, chain 56)
- MultiTroveGetter (`0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b`, chain 146)
- PriceFeed (`0x4b248f3646755f5b71a66bae8c55c568809cbff2`, chain 1)
- PriceFeed (`0x4b248f3646755f5b71a66bae8c55c568809cbff2`, chain 56)
- PriceFeed (`0x4b248f3646755f5b71a66bae8c55c568809cbff2`, chain 146)
- SortedTroves (`0x870a108234dee42a9fa01c36368e5e4ea3c56b4a`, chain 1)
- SortedTroves (`0x870a108234dee42a9fa01c36368e5e4ea3c56b4a`, chain 56)
- SortedTroves (`0x870a108234dee42a9fa01c36368e5e4ea3c56b4a`, chain 146)
- StabilityPool (`0x5f2283c7c8967c5fb3a959e63ea89865b882d627`, chain 1)
- StabilityPool (`0x5f2283c7c8967c5fb3a959e63ea89865b882d627`, chain 56)
- StabilityPool (`0x5f2283c7c8967c5fb3a959e63ea89865b882d627`, chain 146)
- StakedUsbd (`0xda44aa5c42c020147625cce1f1878075d106f92a`, chain 1)
- TokenLocker (`0x09a028587705b49fa162671d2507567cfef75bf7`, chain 1)
- TokenLocker (`0x09a028587705b49fa162671d2507567cfef75bf7`, chain 56)
- TokenLocker (`0x09a028587705b49fa162671d2507567cfef75bf7`, chain 146)
- TransparentUpgradeableProxy (`0xecac9c5f704e954931349da37f60e39f515c11c1`, chain 1)
- TransparentUpgradeableProxy (`0xecac9c5f704e954931349da37f60e39f515c11c1`, chain 146)
- TroveManager (`0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938`, chain 1)
- TroveManager (`0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`, chain 1)
- TroveManager (`0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938`, chain 56)
- TroveManager (`0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`, chain 56)
- TroveManager (`0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938`, chain 146)
- TroveManager (`0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`, chain 146)
- TroveManagerGetters (`0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1`, chain 1)
- TroveManagerGetters (`0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1`, chain 56)
- TroveManagerGetters (`0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 72/85 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/42 (9.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 49 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 58 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 49 of 107 unique; 58 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/56
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 2
- Unverified implementations: 51
- Unique implementations: 107
- Raw deployments: 161
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 9.5% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 2 | 3.6% | 2024-09 |
| Spearbit | Tier 1 | 2 | 3.6% | 2025-06 |
| Unknown | Tier 2 | 1 | 1.8% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BimaToken | token | project_anchor | own_supporting | 0 | bsc | unit-230352 | `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | ✅ Audited |
| DebtToken | token | project_anchor | own_supporting | 0 | bsc | unit-230358 | `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca67a794051e036eefb5aa4b34fe2bd836069f0` | ⚠️ Unaudited |
| Bfbtc | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230300 | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | ⚠️ Unaudited |
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` | ⚠️ Unaudited |
| BimaBurner | unknown | project_anchor | own_supporting | 0 | bsc | unit-230364 | 3 deployments: ethereum `0xf0de02a2d05a82222cbb98df3eea10cafc8c92c1`; bsc `0x93ee18e6d372a2c9bf8c876932e39c4126f80f09`; sonic `0x93ee18e6d372a2c9bf8c876932e39c4126f80f09` | ⚠️ Unaudited |
| BimaCore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230288 | `0x227e9323d692578ca3df92b87d06625df22380ab` | ⚠️ Unaudited |
| BimaCore | unknown | project_anchor | own_supporting | 0 | bsc | unit-230348 | `0x227e9323d692578ca3df92b87d06625df22380ab` | ⚠️ Unaudited |
| BimaCore | unknown | project_anchor | own_supporting | 0 | sonic | unit-230328 | `0x227e9323d692578ca3df92b87d06625df22380ab` | ⚠️ Unaudited |
| BimaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x42ad6834a6599a0b7a7812f01f8092b580523d67`; ethereum `0x705fd2306bf6e4dec47bf8aaab378b04024792d4`; ethereum `0x97bb3167a88fe34b1ec6d7f02560c4f0aa6009e9`; ethereum `0xea811c2c400ee846e352d45c849657d920a888fe` | ⚠️ Unaudited |
| BimaToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230294 | `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | ⚠️ Unaudited |
| BimaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230318 | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | ⚠️ Unaudited |
| BimaVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-230366 | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | ⚠️ Unaudited |
| BimaVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-230344 | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230298 | `0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230308 | `0x856db20b0c326afee3bf64770f7d8d39bf232ce0` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230324 | `0xdc0ccad18ca645a03870676c78a81524b4655197` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-230306 | 3 deployments: ethereum `0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`; bsc `0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`; sonic `0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf` | ⚠️ Unaudited |
| BitFiStablecoinManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06` | ⚠️ Unaudited |
| BitFiStablecoinZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140b5517df7e33878eb0a494d6882cfac54b66cb` | ⚠️ Unaudited |
| DebtToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230304 | `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | ⚠️ Unaudited |
| EnzoBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230303 | `0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a` | ⚠️ Unaudited |
| EnzoBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5` | ⚠️ Unaudited |
| EnzoNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`; ethereum `0xdc2156498144f172746c4e6d4baab54d87950068` | ⚠️ Unaudited |
| EnzoNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8dd5acadf5131054ebbbd644420e4c4dcf8d18c3`; ethereum `0xe8ca7c813534618d639ce487e4c9defab743fd71` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-230319 | 3 deployments: ethereum `0xc5790164d3ccb6533b241eee3fd7f56862759376`; bsc `0xc5790164d3ccb6533b241eee3fd7f56862759376`; sonic `0xc5790164d3ccb6533b241eee3fd7f56862759376` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230321 | 3 deployments: ethereum `0xcbf15324c5838aefe6731077c55adc85bdae8b89`; bsc `0xcbf15324c5838aefe6731077c55adc85bdae8b89`; sonic `0xcbf15324c5838aefe6731077c55adc85bdae8b89` | ⚠️ Unaudited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230297 | `0x5587416ef31da806948e6975c377844f5eddb7a8` | ⚠️ Unaudited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | bsc | unit-230354 | `0x5587416ef31da806948e6975c377844f5eddb7a8` | ⚠️ Unaudited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | sonic | unit-230333 | `0x5587416ef31da806948e6975c377844f5eddb7a8` | ⚠️ Unaudited |
| LBTC | unknown | project_anchor | own_supporting | 1 | sonic | unit-230370 | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| LiquidationManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230291 | 3 deployments: ethereum `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba`; bsc `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba`; sonic `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` | ⚠️ Unaudited |
| MintSecurity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`; ethereum `0x47c4ac7d1d0ff9594de5f3d2d07ff67253620a1c` | ⚠️ Unaudited |
| MintStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x81d7dab8b95085034d9ce90958038251726b2c59`; ethereum `0xb3cf78f3e483b63280cfe19d52c9c1bdd03d02ab` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230293 | 3 deployments: ethereum `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b`; bsc `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b`; sonic `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-230295 | 3 deployments: ethereum `0x4b248f3646755f5b71a66bae8c55c568809cbff2`; bsc `0x4b248f3646755f5b71a66bae8c55c568809cbff2`; sonic `0x4b248f3646755f5b71a66bae8c55c568809cbff2` | ⚠️ Unaudited |
| ProxyMock | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230369 | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230309 | 3 deployments: ethereum `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a`; bsc `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a`; sonic `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230299 | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-230355 | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | sonic | unit-230334 | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | ⚠️ Unaudited |
| StakedBitFiStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x688745d56f93924dbda1c2caa613adcbcea871c5`; ethereum `0xd32224533b63ddeb63409010fe6c841350951734` | ⚠️ Unaudited |
| StakedUsbd | token | project_anchor | own_core | 0 | ethereum | n/a | 8 deployments: ethereum `0x15ba049b9481e8c30531f736b58609b8aa1d1eef`; ethereum `0x1909094d058a6eb0e88d405173b61413634b7504`; ethereum `0x42414732a955225b55dd51871e503653a3fd71ae`; ethereum `0x7d0ae62aab8208b3cae5e3a1e6556a65bf421522`; ethereum `0xb4b22aab6cd09d4ee106a1023af3667b15a6a3d0`; ethereum `0xbf095f8d3691cf07d6d0e2e00b8e0b852979d6df`; ethereum `0xcbc8297c67f02c5e14ebf84e4444d6113cfe023d`; ethereum `0xda44aa5c42c020147625cce1f1878075d106f92a` | ⚠️ Unaudited |
| StakedUsbdOftAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x450bd4e955ee33ff42bf9dff84dbbb301ce0b42f`; ethereum `0x64a5ec05901ba18da523d8015709737ce4035b2a`; ethereum `0x6e75ce2196a2b93ac1660648a0934c9e49008e49`; ethereum `0x9e50174ef96977227d054ed1c4741f4c989264a3`; ethereum `0xb768470bdc0bc78e203e1f9c3e7db3b7075a7f9d`; ethereum `0xc302c5a22a7abe2e6b1d2162ed3ea1797136c13b`; ethereum `0xc499149c6735d001f7ba431559385513be0c8170`; ethereum `0xf9d8354ad7ab4a731e9076a3f3f8ea01ae52db57` | ⚠️ Unaudited |
| StakingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x048408944dc91720fda3a3059540227bd707705f`; ethereum `0x59961e063662fc5bd61102fcc2a06e21c0d9959c`; ethereum `0x71e7c8f2b7d7f6c99e375023916cb3ed9ffc4621`; ethereum `0xbf35d5f1d243349be8f55ee944cc21b4dc8ef409`; ethereum `0xc0e4eaf617e337ffb452b820ce52e514f43112fb`; ethereum `0xda1cc53f39e74b48fd75716b17ef4fcd00eb0755`; ethereum `0xf4f2c212009cb0a918c32290731f1b7b7cdb3bcf`; ethereum `0xfbbe9cb312e667b1db97cba9638815cba11cb468` | ⚠️ Unaudited |
| TokenAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | ethereum | unit-230286 | `0x09a028587705b49fa162671d2507567cfef75bf7` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | bsc | unit-230347 | `0x09a028587705b49fa162671d2507567cfef75bf7` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | sonic | unit-230327 | `0x09a028587705b49fa162671d2507567cfef75bf7` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230296 | 4 deployments: ethereum `0x5066dc39248e6696c0f2606a744a4482a3d36b97`; ethereum `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`; bsc `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`; sonic `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230313 | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | bsc | unit-230363 | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | sonic | unit-230342 | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | ⚠️ Unaudited |
| TroveManagerGetters | governance | project_anchor | own_supporting | 0 | ethereum | unit-230305 | 3 deployments: ethereum `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1`; bsc `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1`; sonic `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230310 | 3 deployments: ethereum `0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`; bsc `0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`; sonic `0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec` | ✅ Audited (bytecode match) |
| MultiCollateralHintHelpers | periphery | project_anchor | own_supporting | 0 | ethereum | unit-230302 | 3 deployments: ethereum `0x6a62989d451c4f359a30bfcece51da8a313dd490`; bsc `0x6a62989d451c4f359a30bfcece51da8a313dd490`; sonic `0x6a62989d451c4f359a30bfcece51da8a313dd490` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230290 | `0x29467211ad35f97cea26ae11da0c427836ec4c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbd33135621ce0d2faa023adec2faf5a7458a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5363949018262d778a6ff7b4a16c82b4e5c78395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f339e8811941271e9037a5d899766e3f5a7ff47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230325 | `0xf4030086522a5beea4988f8ca5b36dbc97bee88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d52d2dcf58d25fd17a526874fade9d35cdd9144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-230349 | `0x264990fbd0a4796a3e3d8e37c4d5f87a3aca5ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fdbdf64f9db00331bea08c43e6d34831f4bbace` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-230356 | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x632d2713f48ac2df441b3ce46bd7fa4467d419d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ae19e7e2e03b3edab51390099ab7e6783ebc8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x944b319cb0326887c39a851813186273846dae7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b974faa2987a16a39a4bb731cb2a191d31c54dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bc574a6f1170e90d80826d86a6126d59198a3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ef1b8c0e4f7dc8bf5719ea496883dc6401d5b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8fd30ca96b6d120fc7646108e11c13e8bb128eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd59be1da2e9b30b6f7ab27b2d08f841b39c349fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00125b6b204590c6e3ee662dd1f94a469f28d3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01df8f64052f03c0ba20769d3152f83b9b0a19c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1654df3d2543717534ee1c38eb9af5f0407ec708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b577837015d1acaf2da0beb9c084f6667177d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2320551e3de8c3743f56e7a3b8f544d61ce7f5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26e450ca14d7bf598c89f212010c691434486119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e312ad65a48400f69bde7ff74886f7f23b07d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43f845f2b2d065eab3c1bc9d16bc7c4214f323ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-230331 | `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55bca887199d5520b3ce285d41e6dc10c08716c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5e7b8000f967ada54edb8696d21ccfeb7ec36ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-230336 | `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x76f4c040a792afb7f6dbadc7e30ca3eea140d216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7fe2adde154eb97ad68d5ad70328a1db13701bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x824364077993847f71293b24cca8567c00c2de11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8a296b21c1950312bac99728d110d721e73a8f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-230341 | `0x8bcd59cb7eeeea8e2da3080c891609483dae53ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x901696563727e64dad3e263efa3a100c4b8180ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xace5e348a341a740004304c2c228af1a4581920f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaea573d423bdce5af0e54d137faaf8e4b76d6849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1061e9ab9fc2e9e2f7a036f8e3c287d7395d671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb17ea469fdbded7bb8f7d70fba53960d505ee6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb3f98fb7da34407a43d2d872efb9aa8d41eda9ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbb223278ece74329276099e71d0f0be70ba74fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc26deefbf72cfc862610db23830970fc6663ccc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc369235d4af740c6f32fcd33f37e944ad6dadc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcdf021ebd115b1b225801f4056c40f4ff14a574d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3b87e6f953b1126056b914a8cbe78035fb3e241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdd234767f6368629fdf50cb21090aa69c9f56651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe936119f730329878ace2c741fbd7308dca594b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6c0fc715a195f33e6de303e0a07d07224947413` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 119
- Live contracts: 47
- Unknown liveness contracts: 72
- Source-verified contracts: 77
- Currently scope-matched contracts retained as-is: 3
- Classification counts: currently scope matched=3, candidate review=4, exact address book overlap=44, source verified unclassified=32, unverified unclassified=36

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | MultiCollateralHintHelpers<br>`0x6a62989d451c4f359a30bfcece51da8a313dd490` | project_anchor | periphery | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| currently scope matched | BimaToken<br>`0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | project_anchor | token | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| currently scope matched | DebtToken<br>`0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| candidate review | BfbtcProxy<br>`0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| candidate review | ERC1967Proxy<br>`0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x03db22c204cda695d387f43cff7a4be711933226` |
| candidate review | ERC1967Proxy<br>`0x7efb3515d9ec4537fafca635a1de7da7a5c5c567` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x03db22c204cda695d387f43cff7a4be711933226` |
| candidate review | ERC1967Proxy<br>`0xb3cf78f3e483b63280cfe19d52c9c1bdd03d02ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x03db22c204cda695d387f43cff7a4be711933226` |
| exact address book overlap | Bfbtc<br>`0x623f2774d9f27b59bc6b954544487532ce79d9df` | project_anchor | unknown | live | verified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| exact address book overlap | BimaCore<br>`0x227e9323d692578ca3df92b87d06625df22380ab` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | BimaToken<br>`0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | project_anchor | token | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | GasPool<br>`0xcbf15324c5838aefe6731077c55adc85bdae8b89` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | IncentiveVoting<br>`0x5587416ef31da806948e6975c377844f5eddb7a8` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | LiquidationManager<br>`0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | MultiTroveGetter<br>`0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | SortedTroves<br>`0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | StabilityPool<br>`0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | StakedUsbd<br>`0xda44aa5c42c020147625cce1f1878075d106f92a` | project_anchor | token | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TokenLocker<br>`0x09a028587705b49fa162671d2507567cfef75bf7` | project_anchor | token | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TroveManager<br>`0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TroveManagerGetters<br>`0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | BimaBurner<br>`0x93ee18e6d372a2c9bf8c876932e39c4126f80f09` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | BimaCore<br>`0x227e9323d692578ca3df92b87d06625df22380ab` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | BimaVault<br>`0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | GasPool<br>`0xcbf15324c5838aefe6731077c55adc85bdae8b89` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | IncentiveVoting<br>`0x5587416ef31da806948e6975c377844f5eddb7a8` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | LiquidationManager<br>`0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | MultiTroveGetter<br>`0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | PriceFeed<br>`0x4b248f3646755f5b71a66bae8c55c568809cbff2` | project_anchor | operational_periphery | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | SortedTroves<br>`0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | StabilityPool<br>`0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TokenLocker<br>`0x09a028587705b49fa162671d2507567cfef75bf7` | project_anchor | token | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TroveManager<br>`0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TroveManagerGetters<br>`0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | UnnamedContract<br>`0x6a62989d451c4f359a30bfcece51da8a313dd490` | project_anchor | unknown | live | unverified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | UnnamedContract<br>`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec` | project_anchor | unknown | live | unverified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | BimaCore<br>`0x227e9323d692578ca3df92b87d06625df22380ab` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | BimaVault<br>`0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | GasPool<br>`0xcbf15324c5838aefe6731077c55adc85bdae8b89` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | IncentiveVoting<br>`0x5587416ef31da806948e6975c377844f5eddb7a8` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | LiquidationManager<br>`0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | MultiTroveGetter<br>`0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | PriceFeed<br>`0x4b248f3646755f5b71a66bae8c55c568809cbff2` | project_anchor | operational_periphery | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | SortedTroves<br>`0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` | project_anchor | unknown | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | StabilityPool<br>`0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | project_anchor | core_logic | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TokenLocker<br>`0x09a028587705b49fa162671d2507567cfef75bf7` | project_anchor | token | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TroveManager<br>`0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | TroveManagerGetters<br>`0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` | project_anchor | governance | live | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | UnnamedContract<br>`0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | project_anchor | unknown | live | unverified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | UnnamedContract<br>`0x6a62989d451c4f359a30bfcece51da8a313dd490` | project_anchor | unknown | live | unverified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | UnnamedContract<br>`0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | project_anchor | unknown | live | unverified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| exact address book overlap | UnnamedContract<br>`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec` | project_anchor | unknown | live | unverified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | BimaBurner<br>`0xf0de02a2d05a82222cbb98df3eea10cafc8c92c1` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | EnzoBTCOFTAdapter<br>`0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | EnzoNetwork<br>`0x8dd5acadf5131054ebbbd644420e4c4dcf8d18c3` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | EnzoNetwork<br>`0xdc2156498144f172746c4e6d4baab54d87950068` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | EnzoNetwork<br>`0xe8ca7c813534618d639ce487e4c9defab743fd71` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | MintSecurity<br>`0x47c4ac7d1d0ff9594de5f3d2d07ff67253620a1c` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | MintStrategy<br>`0x81d7dab8b95085034d9ce90958038251726b2c59` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | StakedUsbd<br>`0x15ba049b9481e8c30531f736b58609b8aa1d1eef` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbd<br>`0x1909094d058a6eb0e88d405173b61413634b7504` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbd<br>`0x42414732a955225b55dd51871e503653a3fd71ae` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbd<br>`0x7d0ae62aab8208b3cae5e3a1e6556a65bf421522` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbd<br>`0xb4b22aab6cd09d4ee106a1023af3667b15a6a3d0` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbd<br>`0xbf095f8d3691cf07d6d0e2e00b8e0b852979d6df` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbd<br>`0xcbc8297c67f02c5e14ebf84e4444d6113cfe023d` | non_address_book | token | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0x450bd4e955ee33ff42bf9dff84dbbb301ce0b42f` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0x64a5ec05901ba18da523d8015709737ce4035b2a` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0x6e75ce2196a2b93ac1660648a0934c9e49008e49` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0x9e50174ef96977227d054ed1c4741f4c989264a3` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0xb768470bdc0bc78e203e1f9c3e7db3b7075a7f9d` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0xc302c5a22a7abe2e6b1d2162ed3ea1797136c13b` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0xc499149c6735d001f7ba431559385513be0c8170` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakedUsbdOftAdapter<br>`0xf9d8354ad7ab4a731e9076a3f3f8ea01ae52db57` | non_address_book | adapter | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0x048408944dc91720fda3a3059540227bd707705f` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0x59961e063662fc5bd61102fcc2a06e21c0d9959c` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0x71e7c8f2b7d7f6c99e375023916cb3ed9ffc4621` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0xbf35d5f1d243349be8f55ee944cc21b4dc8ef409` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0xc0e4eaf617e337ffb452b820ce52e514f43112fb` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0xda1cc53f39e74b48fd75716b17ef4fcd00eb0755` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0xf4f2c212009cb0a918c32290731f1b7b7cdb3bcf` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | StakingModule<br>`0xfbbe9cb312e667b1db97cba9638815cba11cb468` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| source verified unclassified | TokenAuthority<br>`0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663` | non_address_book | unknown | unknown | verified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| source verified unclassified | BimaBurner<br>`0x93ee18e6d372a2c9bf8c876932e39c4126f80f09` | non_address_book | unknown | unknown | verified | n/a | `0xe3fbba95bb35be804696624dd1e9344a86e3cbc4` |
| unverified unclassified | UnnamedContract<br>`0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| unverified unclassified | UnnamedContract<br>`0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee` | non_address_book | unknown | unknown | unverified | n/a | `0x77e9d15fbadbd91c138c5793fb92b436157675a5` |
| unverified unclassified | UnnamedContract<br>`0x0d52d2dcf58d25fd17a526874fade9d35cdd9144` | non_address_book | unknown | unknown | unverified | n/a | `0x77e9d15fbadbd91c138c5793fb92b436157675a5` |
| unverified unclassified | UnnamedContract<br>`0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| unverified unclassified | UnnamedContract<br>`0x4fdbdf64f9db00331bea08c43e6d34831f4bbace` | non_address_book | unknown | unknown | unverified | n/a | `0x77e9d15fbadbd91c138c5793fb92b436157675a5` |
| unverified unclassified | UnnamedContract<br>`0x944b319cb0326887c39a851813186273846dae7b` | non_address_book | unknown | unknown | unverified | n/a | `0x77e9d15fbadbd91c138c5793fb92b436157675a5` |
| unverified unclassified | UnnamedContract<br>`0x9b974faa2987a16a39a4bb731cb2a191d31c54dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| unverified unclassified | UnnamedContract<br>`0x9ef1b8c0e4f7dc8bf5719ea496883dc6401d5b2e` | non_address_book | unknown | unknown | unverified | n/a | `0x77e9d15fbadbd91c138c5793fb92b436157675a5` |
| unverified unclassified | UnnamedContract<br>`0x00125b6b204590c6e3ee662dd1f94a469f28d3a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x01df8f64052f03c0ba20769d3152f83b9b0a19c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x1654df3d2543717534ee1c38eb9af5f0407ec708` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x1b577837015d1acaf2da0beb9c084f6667177d21` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x2320551e3de8c3743f56e7a3b8f544d61ce7f5b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x26e450ca14d7bf598c89f212010c691434486119` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x2e312ad65a48400f69bde7ff74886f7f23b07d26` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x43f845f2b2d065eab3c1bc9d16bc7c4214f323ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x55bca887199d5520b3ce285d41e6dc10c08716c9` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x5e7b8000f967ada54edb8696d21ccfeb7ec36ec6` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x76f4c040a792afb7f6dbadc7e30ca3eea140d216` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x7fe2adde154eb97ad68d5ad70328a1db13701bc2` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x824364077993847f71293b24cca8567c00c2de11` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x8a296b21c1950312bac99728d110d721e73a8f34` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0x901696563727e64dad3e263efa3a100c4b8180ea` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xace5e348a341a740004304c2c228af1a4581920f` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xaea573d423bdce5af0e54d137faaf8e4b76d6849` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xb1061e9ab9fc2e9e2f7a036f8e3c287d7395d671` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xb17ea469fdbded7bb8f7d70fba53960d505ee6df` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xb3f98fb7da34407a43d2d872efb9aa8d41eda9ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xbb223278ece74329276099e71d0f0be70ba74fac` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xc26deefbf72cfc862610db23830970fc6663ccc3` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xc369235d4af740c6f32fcd33f37e944ad6dadc5a` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xcdf021ebd115b1b225801f4056c40f4ff14a574d` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xd3b87e6f953b1126056b914a8cbe78035fb3e241` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xdd234767f6368629fdf50cb21090aa69c9f56651` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xe936119f730329878ace2c741fbd7308dca594b0` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |
| unverified unclassified | UnnamedContract<br>`0xf6c0fc715a195f33e6de303e0a07d07224947413` | non_address_book | unknown | unknown | unverified | n/a | `0xc298a97ecc8faeb7d4d571983c5141175dd272f8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-09-27-cyfrin-bima-v2.0.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/2024-09-27-cyfrin-bima-v2.0.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 33 | high |
| [20241023-Bima-Final-Audit-Report.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/20241023-Bima-Final-Audit-Report.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 21 | high |
| [cantina_competition_bima_december2024.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/cantina_competition_bima_december2024.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2480] 2024-09-27-cyfrin-bima-v2.0.pdf — matched: All contracts listed in the Audit Scope section (page 3-4) are included. Interfaces are also in scope but not extracted as separate contracts.
- [2481] 20241023-Bima-Final-Audit-Report.pdf — matched: All contracts listed in the 'Files in Scope' table were extracted. The audit date is the end date of the timeline (Sat Sep 28 2024).
- [2482] cantina_competition_bima_december2024.pdf — matched: Extracted contract names from findings context and file paths. Audit date from document title: 'Bima Money Competition June29,2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-09-27-cyfrin-bima-v2.0.pdf | MultiCollateralHintHelpers | own contract | MultiCollateralHintHelpers (selected) `0x6a62989d451c4f359a30bfcece51da8a313dd490` — deployed 2025-03-21 17:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-27-cyfrin-bima-v2.0.pdf | MultiTroveGetter | ambiguous — not counted | MultiTroveGetter (alternative) `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` — deployed 2025-05-02 14:35:08+03 — liveness: live (current_address_book_code)<br>MultiTroveGetter (alternative) `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` — deployed 2025-03-21 17:05:23+03 — liveness: live (current_address_book_code)<br>MultiTroveGetter (alternative) `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` — deployed 2025-05-22 12:25:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | TroveManagerGetters | ambiguous — not counted | TroveManagerGetters (alternative) `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` — deployed 2025-03-21 17:05:35+03 — liveness: live (current_address_book_code)<br>TroveManagerGetters (alternative) `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` — deployed 2025-05-22 12:25:20+03 — liveness: live (current_address_book_code)<br>TroveManagerGetters (alternative) `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` — deployed 2025-05-02 14:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelCore | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec` — deployed 2025-03-21 17:03:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-27-cyfrin-bima-v2.0.pdf | DebtToken | ambiguous — not counted | DebtToken (alternative) `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` — deployed 2025-05-22 12:24:40+03 — liveness: live (code_present_context)<br>DebtToken (alternative) `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` — deployed 2025-03-21 17:03:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-03-21 17:03:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-05-22 12:24:32+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-05-02 14:34:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0xcbf15324c5838aefe6731077c55adc85bdae8b89` — deployed 2025-05-02 14:34:30+03 — liveness: live (current_address_book_code)<br>GasPool (alternative) `0xcbf15324c5838aefe6731077c55adc85bdae8b89` — deployed 2025-05-22 12:24:22+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0xcbf15324c5838aefe6731077c55adc85bdae8b89` — deployed 2025-03-21 17:02:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | LiquidationManager | ambiguous — not counted | LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-05-22 12:24:35+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-05-02 14:34:40+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-03-21 17:03:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | PriceFeed | ambiguous — not counted | PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-03-21 17:02:35+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-05-22 12:24:17+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-05-02 14:34:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-03-21 17:02:59+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-05-22 12:24:28+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-05-02 14:34:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-03-21 17:03:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-05-02 14:34:48+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-05-22 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | StorkOracleWrapper | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x5066dc39248e6696c0f2606a744a4482a3d36b97` — deployed 2025-09-03 16:54:59+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-05-22 14:58:01+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-05-22 12:24:52+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-03-23 22:56:35+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-05-02 14:54:07+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-03-21 17:04:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-05-02 14:34:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | AdminVoting | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | AirdropDistributor | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | AllocationVesting | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BoostCalculator | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | EmissionSchedule | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | FeeReceiver | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | IncentiveVoting | ambiguous — not counted | IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-05-02 14:34:57+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-03-21 17:04:35+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-05-22 12:25:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | InterimAdmin | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | PrismaToken | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | TokenLocker | ambiguous — not counted | TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-05-22 12:24:56+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-05-02 14:34:54+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-03-21 17:04:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelBase | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelMath | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelOwnable | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | ConvexDepositFactory | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | ConvexDepositToken | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | CurveDepositFactory | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | CurveDepositToken | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | CurveProxy | unmatched — not counted | — | listed in scope | no |
| 20241023-Bima-Final-Audit-Report.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-03-21 17:03:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-05-02 14:34:48+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-05-22 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | BabelCore | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec` — deployed 2025-03-21 17:03:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20241023-Bima-Final-Audit-Report.pdf | PriceFeed | ambiguous — not counted | PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-03-21 17:02:35+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-05-22 12:24:17+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-05-02 14:34:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | DebtToken | ambiguous — not counted | DebtToken (alternative) `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` — deployed 2025-05-22 12:24:40+03 — liveness: live (code_present_context)<br>DebtToken (alternative) `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` — deployed 2025-03-21 17:03:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0xcbf15324c5838aefe6731077c55adc85bdae8b89` — deployed 2025-05-02 14:34:30+03 — liveness: live (current_address_book_code)<br>GasPool (alternative) `0xcbf15324c5838aefe6731077c55adc85bdae8b89` — deployed 2025-05-22 12:24:22+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0xcbf15324c5838aefe6731077c55adc85bdae8b89` — deployed 2025-03-21 17:02:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-03-21 17:02:59+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-05-22 12:24:28+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-05-02 14:34:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-03-21 17:03:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-05-22 12:24:32+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-05-02 14:34:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | StorkOracleWrapper | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x5066dc39248e6696c0f2606a744a4482a3d36b97` — deployed 2025-09-03 16:54:59+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-05-22 14:58:01+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-05-22 12:24:52+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-03-23 22:56:35+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-05-02 14:54:07+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-03-21 17:04:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-05-02 14:34:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | LiquidationManager | ambiguous — not counted | LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-05-22 12:24:35+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-05-02 14:34:40+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-03-21 17:03:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | AdminVoting | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | AirdropDistributor | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | AllocationVesting | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | IncentiveVoting | ambiguous — not counted | IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-05-02 14:34:57+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-03-21 17:04:35+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-05-22 12:25:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | BoostCalculator | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | InterimAdmin | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | BabelToken | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | FeeReceiver | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | EmissionSchedule | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | TokenLocker | ambiguous — not counted | TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-05-22 12:24:56+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-05-02 14:34:54+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-03-21 17:04:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | PriceFeed | ambiguous — not counted | PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-03-21 17:02:35+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-05-22 12:24:17+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f3646755f5b71a66bae8c55c568809cbff2` — deployed 2025-05-02 14:34:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | TokenLocker | ambiguous — not counted | TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-05-22 12:24:56+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-05-02 14:34:54+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028587705b49fa162671d2507567cfef75bf7` — deployed 2025-03-21 17:04:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-03-21 17:03:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-05-02 14:34:48+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` — deployed 2025-05-22 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x5066dc39248e6696c0f2606a744a4482a3d36b97` — deployed 2025-09-03 16:54:59+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-05-22 14:58:01+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-05-22 12:24:52+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-03-23 22:56:35+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` — deployed 2025-05-02 14:54:07+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-03-21 17:04:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` — deployed 2025-05-02 14:34:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | Vault | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | LiquidationManager | ambiguous — not counted | LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-05-22 12:24:35+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-05-02 14:34:40+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` — deployed 2025-03-21 17:03:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-03-21 17:03:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-05-22 12:24:32+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc5790164d3ccb6533b241eee3fd7f56862759376` — deployed 2025-05-02 14:34:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | AdminVoting | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | BoostCalculator | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | CurveDepositToken | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | ConvexDepositToken | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | IncentiveVoting | ambiguous — not counted | IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-05-02 14:34:57+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-03-21 17:04:35+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x5587416ef31da806948e6975c377844f5eddb7a8` — deployed 2025-05-22 12:25:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | BorrowOperations | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | BimaVault | ambiguous — not counted | BimaVault (alternative) `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` — deployed 2025-05-22 12:25:10+03 — liveness: live (code_present_context)<br>BimaVault (alternative) `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` — deployed 2025-03-21 17:04:59+03 — liveness: live (code_present_context)<br>BimaVault (alternative) `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` — deployed 2025-05-02 14:35:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | BimaCore | ambiguous — not counted | BimaCore (alternative) `0x227e9323d692578ca3df92b87d06625df22380ab` — deployed 2025-03-21 17:02:23+03 — liveness: live (code_present_context)<br>BimaCore (alternative) `0x227e9323d692578ca3df92b87d06625df22380ab` — deployed 2025-05-22 12:24:13+03 — liveness: live (code_present_context)<br>BimaCore (alternative) `0x227e9323d692578ca3df92b87d06625df22380ab` — deployed 2025-05-02 14:34:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | BimaToken | own contract | BimaToken (selected) `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` — deployed 2025-05-22 12:25:05+03 — liveness: live (code_present_context)<br>BimaToken (alternative) `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` — deployed 2025-03-21 17:04:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-05-22 was 38d from audit; next candidate 100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina_competition_bima_december2024.pdf | DebtToken | own contract | DebtToken (selected) `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` — deployed 2025-05-22 12:24:40+03 — liveness: live (code_present_context)<br>DebtToken (alternative) `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` — deployed 2025-03-21 17:03:35+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-05-22 was 38d from audit; next candidate 100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina_competition_bima_december2024.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-03-21 17:02:59+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-05-22 12:24:28+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` — deployed 2025-05-02 14:34:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | MockOracle | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | MockCurveDepositToken | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | MockOracle_PoC | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | StakedBTC | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | StakedBTC2 | unmatched — not counted | — | listed in scope context lines | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | Bfbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x93ee18e6d372a2c9bf8c876932e39c4126f80f09` | BimaBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x227e9323d692578ca3df92b87d06625df22380ab` | BimaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x227e9323d692578ca3df92b87d06625df22380ab` | BimaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x227e9323d692578ca3df92b87d06625df22380ab` | BimaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | BimaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | BimaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | BimaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | BimaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1` | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x856db20b0c326afee3bf64770f7d8d39bf232ce0` | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc0ccad18ca645a03870676c78a81524b4655197` | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf` | BimaWrappedCollateralFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a` | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5790164d3ccb6533b241eee3fd7f56862759376` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbf15324c5838aefe6731077c55adc85bdae8b89` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5587416ef31da806948e6975c377844f5eddb7a8` | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5587416ef31da806948e6975c377844f5eddb7a8` | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5587416ef31da806948e6975c377844f5eddb7a8` | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` | LiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15ba049b9481e8c30531f736b58609b8aa1d1eef` | StakedUsbd | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a028587705b49fa162671d2507567cfef75bf7` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x09a028587705b49fa162671d2507567cfef75bf7` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09a028587705b49fa162671d2507567cfef75bf7` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5066dc39248e6696c0f2606a744a4482a3d36b97` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 32 ambiguous, 43 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: temporal_name=2, unique_name=3

Fork inheritance lineage and inherited audits are included when available.
