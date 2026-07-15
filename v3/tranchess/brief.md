# Agentic Audit Brief: Tranchess

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 9 (3 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tranchess (`tranchess`)
- Website: [https://tranchess.com](https://tranchess.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, scroll
- Contract surface: 213 unique implementations (555 raw deployments)
- Coverage basis: 5/60 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,205,134.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tranchess. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 64 contract row(s) across bsc, ethereum, scroll. Structural roles: 26 core, 26 unclassified, 12 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 64
- Structural roles: core (26), unclassified (26), supporting (12)
- Contract kinds: contract (63), abstract (1)
- Detected standards: erc20 (13), ownable (9), erc165 (1), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 73 contracts are derived from known codebases. 73 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2bac57...04b916`, chain 1)
- UnnamedContract (`0x009340...e058e1`, chain 534352)
- UnnamedContract (`0x034a99...0e9fd7`, chain 534352)
- UnnamedContract (`0x194c6a...179440`, chain 534352)
- UnnamedContract (`0x1bf019...ff3a7b`, chain 534352)
- UnnamedContract (`0x289e69...61253f`, chain 534352)
- UnnamedContract (`0x33b5ad...84e0c8`, chain 534352)
- UnnamedContract (`0x461f98...3509cf`, chain 534352)
- UnnamedContract (`0x49195e...e0cd65`, chain 534352)
- UnnamedContract (`0x4b0d5f...10d955`, chain 534352)
- UnnamedContract (`0x4dd610...270dff`, chain 534352)
- UnnamedContract (`0x512d9c...4378c4`, chain 534352)
- UnnamedContract (`0x62b4b4...c30c86`, chain 534352)
- UnnamedContract (`0x63baee...24cbcc`, chain 534352)
- UnnamedContract (`0x65cecc...4b3462`, chain 534352)
- UnnamedContract (`0x80800c...edf5ff`, chain 534352)
- UnnamedContract (`0x80df7e...32155f`, chain 534352)
- UnnamedContract (`0xa25342...7734a9`, chain 534352)
- UnnamedContract (`0xa2901b...e0c2bf`, chain 534352)
- UnnamedContract (`0xa793fb...3a1878`, chain 534352)
- UnnamedContract (`0xb6d5d0...621807`, chain 534352)
- UnnamedContract (`0xd180fb...ef7795`, chain 534352)
- UnnamedContract (`0xd48cc4...b09b65`, chain 534352)
- UnnamedContract (`0xdd730b...9a30df`, chain 534352)
- UnnamedContract (`0xdec17f...e00d67`, chain 534352)
- UnnamedContract (`0xe302f0...fe83e4`, chain 534352)
- UnnamedContract (`0xeda4b3...cee32f`, chain 534352)
- UnnamedContract (`0xf380bb...2434a0`, chain 534352)
- UnnamedContract (`0xf3bf24...79dafa`, chain 534352)
- UnnamedContract (`0xfae0e2...8fa13b`, chain 534352)
- UnnamedContract (`0xfbee64...c5a518`, chain 534352)
- UnnamedContract (`0xfee8cd...b86922`, chain 534352)
- AnyswapChess (`0xd61232...5e2e73`, chain 1)
- AnyswapChess (`0x9735fb...1bccf9`, chain 534352)
- BatchOperationHelper (`0x97238b...55a1d5`, chain 1)
- BatchOperationHelper (`0xbefeb1...9d6e68`, chain 534352)
- BeaconStakingOracle (`0xffd319...24a15a`, chain 1)
- BishopStableSwapV2 (`0x3d9f20...d71ca6`, chain 534352)
- BishopStableSwapV2 (`0xd151ce...9ffc6f`, chain 534352)
- BishopStableSwapV2 (`0xec8bfa...a5ff00`, chain 534352)
- ChessControllerV6 (`0x58e2db...b7a8ac`, chain 1)
- ConstAprOracle (`0x374738...7e10a9`, chain 1)
- FeeConverter (`0x96ccae...74f9d5`, chain 1)
- FlashSwapRouterV3 (`0xd46227...6e0c95`, chain 1)
- FundV4 (`0x69c536...2d3966`, chain 1)
- FundV5 (`0x811c9d...5dd0fa`, chain 1)
- GnosisSafeProxy (`0x1bf019...ff3a7b`, chain 1)
- LiquidityGaugeV2 (`0x287195...664a9f`, chain 1)
- LiquidityGaugeV2 (`0x3c8465...e6d464`, chain 534352)
- MaturityPrimaryMarket (`0x088e2f...41679d`, chain 534352)
- MaturityPrimaryMarket (`0x21366d...791cee`, chain 534352)
- MaturityPrimaryMarket (`0x47b391...f194d4`, chain 534352)
- PrimaryMarketV4 (`0xcf1163...c4c829`, chain 1)
- PrimaryMarketV5 (`0xa8be5a...477e22`, chain 1)
- ProxyOFTPool (`0x25cd49...e76815`, chain 1)
- ProxyOFTPool (`0xf440e3...4f5970`, chain 534352)
- ShareV2 (`0x307462...714598`, chain 1)
- ShareV2 (`0x379e8d...0d3934`, chain 1)
- ShareV2 (`0x6aff25...a30f5c`, chain 1)
- ShareV2 (`0x93ef1e...292e7d`, chain 1)
- ShareV2 (`0xbb1852...9ca3a9`, chain 1)
- ShareV2 (`0xd2df8d...158690`, chain 1)
- ShareV2 (`0x097508...79165b`, chain 534352)
- ShareV2 (`0x0e6a00...92ccaa`, chain 534352)
- ShareV2 (`0x3b97cc...493eea`, chain 534352)
- ShareV2 (`0x6e20e4...35d92d`, chain 534352)
- ShareV2 (`0x6f2d7c...35ff4a`, chain 534352)
- ShareV2 (`0x820144...a7fea2`, chain 534352)
- ShareV2 (`0xb5e3d3...105839`, chain 534352)
- ShareV2 (`0xbf4ff7...67112e`, chain 534352)
- SwapRouter (`0x657498...6c3314`, chain 1)
- TransparentUpgradeableProxy (`0xffd177...f8f5ba`, chain 534352)
- WstETHBishopStableSwap (`0xad06a2...57bdb5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 64; live-surface rows included: 64 (64 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 92/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/60 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 92 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 92 of 213 unique; 121 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/154
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 213
- Raw deployments: 555
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 2.6% | 2023-12 |
| CertiK | Tier 2 | 1 | 0.6% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258963 | `0xa9f575...1feaac` | ✅ Audited |
| FundV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258952 | `0x69c536...2d3966` | ✅ Audited |
| FundV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258956 | `0x811c9d...5dd0fa` | ✅ Audited |
| PrimaryMarketV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258969 | `0xcf1163...c4c829` | ✅ Audited |
| WstETHPrimaryMarketRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258961 | `0x9c69b6...9240fa` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d5485...ae0436` | ⚠️ Unaudited |
| AnyswapChess | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258972 | `0xd61232...5e2e73` | ⚠️ Unaudited |
| AnyswapChess | unknown | project_anchor | own_supporting | 0 | scroll | unit-259005 | `0x9735fb...1bccf9` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | project_anchor | own_supporting | 0 | ethereum | unit-258960 | `0x97238b...55a1d5` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5647be...52529d`; bsc `0xa6fd87...2815a1`; bsc `0xdcf0bf...a35eba` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | project_anchor | own_supporting | 0 | scroll | unit-259011 | `0xbefeb1...9d6e68` | ⚠️ Unaudited |
| BatchSettleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78fab7...dcb2ca` | ⚠️ Unaudited |
| BatchUpgradeTool | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d848...cde071` | ⚠️ Unaudited |
| BeaconStakingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0eeccd...5a7c8e`; ethereum `0x946c1c...9b63e2`; ethereum `0xd325d1...0b5242` | ⚠️ Unaudited |
| BeaconStakingOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258977 | `0xffd319...24a15a` | ⚠️ Unaudited |
| BishopStableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x56118e...ddaa37`; bsc `0x87585a...df5b6a`; bsc `0x999db2...e06742` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 21 deployments: ethereum `0xba9194...298079`; bsc `0x01209a...c21f4e`; bsc `0x074727...2a3f33`; bsc `0x094277...1400aa`; bsc `0x2fa534...311698`; bsc `0x399bbb...d62b07`; bsc `0x6da3a0...1dd970`; bsc `0x8aea25...c46d4b`; bsc `0xa6d9ad...473596`; bsc `0xb4c672...0893e6`; bsc `0xba5a53...336c2b`; bsc `0xbbb1aa...bdd28f`; bsc `0xc36553...e75dbe`; bsc `0xd0cc89...6e735c`; bsc `0xd33926...1ab9f7`; bsc `0xd3d475...b6256e`; bsc `0xd44783...e7cac1`; bsc `0xda3bd7...9d1ad4`; bsc `0xf4302b...ed2bbb`; bsc `0xf443f2...5651bc`; bsc `0xf84d3e...e0c9d9` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258990 | `0x3d9f20...d71ca6` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259013 | `0xd151ce...9ffc6f` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259019 | `0xec8bfa...a5ff00` | ⚠️ Unaudited |
| Briber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4eca7f...f76fd3`; ethereum `0x5d76ee...fa9776`; ethereum `0x99248d...e9b614` | ⚠️ Unaudited |
| BscAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8424d9...a56eed`; bsc `0xa79ff9...1b7600` | ⚠️ Unaudited |
| BscAprOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x1c319e...f35583`; bsc `0x65f5fd...0d62af`; bsc `0x82c9fd...d5b165`; bsc `0xa70308...519455`; bsc `0xf42f85...25ff04`; bsc `0xf5208b...d47cc4`; bsc `0xfc3688...f9c931` | ⚠️ Unaudited |
| BscStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x82457a...70134d`; bsc `0x8f1982...a66da6` | ⚠️ Unaudited |
| BscStakingStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0391ba...fcab66`; bsc `0xde9f4b...92437b` | ⚠️ Unaudited |
| Chess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20de22...4c82a6` | ⚠️ Unaudited |
| ChessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42e285...94e2e6` | ⚠️ Unaudited |
| ChessControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe359ef...27c02d` | ⚠️ Unaudited |
| ChessControllerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030598...d86619` | ⚠️ Unaudited |
| ChessControllerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeca69...b1dd70` | ⚠️ Unaudited |
| ChessControllerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x698649...c16cc2` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x419d4c...843f1e`; ethereum `0xec5468...0c9113` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259030 | 2 deployments: ethereum `0x58e2db...b7a8ac`; ethereum `0xaa7596...062750` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a7e89...9de8ed`; bsc `0x94ddc5...5dcece` | ⚠️ Unaudited |
| ChessSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: bsc `0x0088eb...165cc0`; bsc `0x0fadbb...ef2fb8`; bsc `0x1441f5...e511be`; bsc `0x2754e4...170858`; bsc `0x2846ac...d97edd`; bsc `0x3e53f4...984f84`; bsc `0x4ef618...4c797f`; bsc `0x4fa1e4...1dc998`; bsc `0x569381...688ec1`; bsc `0x65acd4...60c69c`; bsc `0x86a991...61466c`; bsc `0xad4dfc...5552f4`; bsc `0xd48e4c...06a9b8`; bsc `0xe0c2fc...4ed0e7`; bsc `0xf58517...8930de` | ⚠️ Unaudited |
| ChessSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0519ff...855332`; bsc `0xf071de...a03b80` | ⚠️ Unaudited |
| ChessScheduleRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8d0fff...626005`; bsc `0xb400d1...52cd10`; bsc `0xdd2cf2...8122eb` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259032 | 2 deployments: ethereum `0x0c5f4b...22b03d`; ethereum `0xf4d665...ceec69` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x41e58b...1ebdd2`; ethereum `0x43e42e...7f33f6`; ethereum `0x49b71d...9694b1` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4dad1d...83bb47`; ethereum `0xc88ac7...01d040` | ⚠️ Unaudited |
| ConstAprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258947 | `0x374738...7e10a9` | ⚠️ Unaudited |
| ConstAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: ethereum `0xe132be...d24bbd`; bsc `0x066433...e4736b`; bsc `0x0bc9fa...c6bec3`; bsc `0x241be9...4a20b5`; bsc `0x443b56...bcbad1`; bsc `0x44b8bb...acf2d3`; bsc `0x56ba1f...5dc314`; bsc `0x715cc0...f1a873`; bsc `0x83b927...015d33`; bsc `0x8dedf2...04dd79`; bsc `0x9060da...038d86`; bsc `0xa09679...8b6e48`; bsc `0xab7a90...97fad8`; bsc `0xbf4507...455338`; bsc `0xc3626f...28a983`; bsc `0xc61198...fe83ea`; bsc `0xfdc433...ebc56c` | ⚠️ Unaudited |
| ConstPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: ethereum `0x5afd58...ae7a4c`; bsc `0x18651b...4ef250`; bsc `0x2abe5f...862683`; bsc `0x30bdb4...5ddd74`; bsc `0x3c857f...3e12bf`; bsc `0x519c13...bb7e88`; bsc `0x53fd57...9b1a4a`; bsc `0x6037ae...44d165`; bsc `0x64d5af...25715c`; bsc `0x7a5a11...6f38a7`; bsc `0x827aec...0d80f9`; bsc `0x8445c6...47155e`; bsc `0x894738...0fbc6c`; bsc `0x8ceb0f...3b476f`; bsc `0xd5741e...8e13e1`; bsc `0xf63293...5df04f`; bsc `0xf81433...10c5d6` | ⚠️ Unaudited |
| ControllerBallot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x66cae7...274377`; bsc `0xd28073...ece043` | ⚠️ Unaudited |
| ControllerBallotV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258949 | `0x41b598...16826f` | ⚠️ Unaudited |
| ControllerBallotV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xadf40c...86acef`; bsc `0xd1d463...faf8d3` | ⚠️ Unaudited |
| CrossChainMintKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x72ece0...9cf710`; bsc `0xee95ac...fc4cdd` | ⚠️ Unaudited |
| CrossChainSyncKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d611d...17df4f`; ethereum `0x2e6fbd...f73097` | ⚠️ Unaudited |
| CrossChainWrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x352e9a...ab6da8` | ⚠️ Unaudited |
| EthPrimaryMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46b0d0...88da73`; ethereum `0x8a04a9...db3f2c` | ⚠️ Unaudited |
| EthStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x50fe51...2ea08e`; ethereum `0x66453f...06ef8c`; ethereum `0xf73701...c4081b` | ⚠️ Unaudited |
| EthStakingStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258959 | `0x96f448...9dac37` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x907a50...931e25`; bsc `0xfa5f59...f9ad95` | ⚠️ Unaudited |
| ExchangeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0xabad55...415080`; bsc `0xb4fd07...a7b299`; bsc `0xc39d29...329c4c`; bsc `0xe5cc18...94ac41` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04ff93...f647d7`; bsc `0xb13a07...bbcef0` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1216be...dcc1b6`; bsc `0x8c4e46...0553c6` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x382631...540e87`; bsc `0x42867d...30880b` | ⚠️ Unaudited |
| FeeConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258958 | `0x96ccae...74f9d5` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x0fd013...977087`; bsc `0x1dbf2b...6063ca`; bsc `0x292016...ca5342`; bsc `0x394e4f...ce2922`; bsc `0x417d84...1fb3b1`; bsc `0x4b1d68...2ed0bc`; bsc `0x6b0c7d...1aeaf3`; bsc `0x7716b8...3b6533`; bsc `0x782546...66badf`; bsc `0x8dc8ce...716d9f`; bsc `0x911237...09e57a`; bsc `0xb7df19...6cc790`; bsc `0xc36b90...87368f`; bsc `0xf4fa05...6ebd07`; bsc `0xfa9040...ad686b`; bsc `0xfced57...ce8885` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258941 | `0x00db7b...8e367a` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258967 | `0xbc428f...84842c` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258973 | `0xe6e659...909cbf` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x111150...c56628`; bsc `0x4832f0...16fd42`; bsc `0x4d8dce...9b7bb7`; bsc `0x57c6df...e20edb`; bsc `0x5bd53b...37eb22`; bsc `0x67eb54...fed35b`; bsc `0x857486...20e0e7`; bsc `0x85ae5e...8bcda8`; bsc `0xa4ecd9...fafb69`; bsc `0xa80287...b76ea2`; bsc `0xe06f85...639dae`; bsc `0xe5f4ef...dad5c6` | ⚠️ Unaudited |
| FlashSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d5108...fda0e0`; bsc `0xc841bd...851c49`; bsc `0xcf4091...9e0a2c` | ⚠️ Unaudited |
| FlashSwapRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c1893...70983c` | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258971 | `0xd46227...6e0c95` | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f2217...c60024` | ⚠️ Unaudited |
| FlashSwapRouterV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04ab3f...c3ddd9` | ⚠️ Unaudited |
| Fund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x677b73...698a6b`; bsc `0xd6b3b8...44e402` | ⚠️ Unaudited |
| FundKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x57c4da...3d36ba`; bsc `0x6ace40...958763`; bsc `0xd30ef2...87b5b2` | ⚠️ Unaudited |
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x629d45...a0896b` | ⚠️ Unaudited |
| FundV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1f18cc...7ba0e0`; bsc `0x2f40c2...b456bb`; bsc `0x7618f3...bd2a34` | ⚠️ Unaudited |
| FundV3WindDown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d9e1e...6d89a3`; bsc `0x60505f...4368cc`; bsc `0xa04945...10df84` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-259028 | `0x1bf019...ff3a7b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1bf019...ff3a7b` | ⚠️ Unaudited |
| InterestRateBallot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xe8061a...9783d3`; bsc `0xeb76e3...e5c09a` | ⚠️ Unaudited |
| InterestRateBallotV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5cf95...828a0e` | ⚠️ Unaudited |
| InterestRateBallotV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f6677...853352`; ethereum `0xf635b6...e197e2` | ⚠️ Unaudited |
| LiquidityGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x00d150...bd4d7a`; bsc `0x131678...1a9d30`; bsc `0x3f586a...744fc2`; bsc `0x7350d2...6f022f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258944 | `0x287195...664a9f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0xd6ef5c...5963a5`; bsc `0x424fff...65058e`; bsc `0x74c8a2...b3d633`; bsc `0xbc4ac1...73a15d`; bsc `0xf0e6b7...f1cf56`; bsc `0xf2a64f...5d0a38`; bsc `0xf71cad...bd5afe` | ⚠️ Unaudited |
| LiquidityGaugeV2 | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-258989 | `0x3c8465...e6d464` | ⚠️ Unaudited |
| LiquidityGaugeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x0ffea7...dc567f`; bsc `0x457cd6...270a35`; bsc `0x70548d...cd52e3`; bsc `0x7bd179...87c054`; bsc `0x8a6141...3862ea`; bsc `0x8a9a25...6c3d49`; bsc `0xa1e3f7...42da66`; bsc `0xb446da...eb280f`; bsc `0xc468dc...b0c753`; bsc `0xc837be...0cd295`; bsc `0xe4138a...8898ea`; bsc `0xe83cf7...1da23e`; bsc `0xf11a10...52371c` | ⚠️ Unaudited |
| MaturityFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x01907f...dc2763`; bsc `0x04eb0d...4f7bdd`; bsc `0x155ded...b0ec37`; bsc `0x2383a2...1b8df0`; bsc `0x29a90f...be387e`; bsc `0x506355...95ec6a`; bsc `0x6dcd69...cce21e`; bsc `0x78006b...6f54d6`; bsc `0x91b07b...befd34`; bsc `0x97c8d5...8807a9`; bsc `0x9c7f6d...b7be4a`; bsc `0xac05ff...a51fe6`; bsc `0xb6730d...93cea1`; bsc `0xc41097...0609ed`; bsc `0xcb00aa...ffe6b6`; bsc `0xfd53f8...d24f67` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x07a2d8...bf5559`; bsc `0x188fe2...59f274`; bsc `0x27b5dc...dd7fc4`; bsc `0x2c5752...78033a`; bsc `0x42b2a2...77a8ee`; bsc `0x4346d5...8b93f5`; bsc `0x64e30f...4d8a45`; bsc `0x756889...b8602a`; bsc `0x7a7bbe...47459d`; bsc `0x9af013...04198b`; bsc `0x9fb23b...22ead0`; bsc `0xb26009...a0eb2f`; bsc `0xc66710...8e29eb`; bsc `0xc94231...842166`; bsc `0xf2b1eb...a111c0`; bsc `0xfaf336...0eeac9` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258980 | `0x088e2f...41679d` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258985 | `0x21366d...791cee` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258992 | `0x47b391...f194d4` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262587...9dc51e` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258974 | `0xe926f0...afb308` | ⚠️ Unaudited |
| NonfungibleRedemptionDescriptor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258954 | `0x7d7473...1a5504` | ⚠️ Unaudited |
| OracleKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x141fae...db74bd`; bsc `0x4e58f9...6962ea`; bsc `0xf890ce...17a7ff` | ⚠️ Unaudited |
| PrimaryMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x19ca3b...a1008d`; bsc `0x57c804...22195f` | ⚠️ Unaudited |
| PrimaryMarketRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x10e02a...01cc40`; ethereum `0xba3c7a...2a2aef`; bsc `0x678dad...9d0fcd`; bsc `0xa61f3d...e2f6e1`; bsc `0xd5396f...2673ee` | ⚠️ Unaudited |
| PrimaryMarketRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258975 | `0xea8e6f...2b18ba` | ⚠️ Unaudited |
| PrimaryMarketRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x01a45d...7eb9ee`; bsc `0x09e9ec...029290`; bsc `0x1058c3...264191`; bsc `0x235f1b...1a3c20`; bsc `0x245a73...134123`; bsc `0x32a8bb...ab4335`; bsc `0x3a000a...c63977`; bsc `0x46e6a5...a4f5b0`; bsc `0x55ab1f...4c3dd6`; bsc `0x675b9d...eaf832`; bsc `0x8cf164...83b276`; bsc `0xa2e8c2...fb5ca6`; bsc `0xbd1450...bdfe17`; bsc `0xc5d5f9...79c343`; bsc `0xe3515e...542979`; bsc `0xfdf6c8...fd3463` | ⚠️ Unaudited |
| PrimaryMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15f2fe...d5cb59` | ⚠️ Unaudited |
| PrimaryMarketV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x25c601...01eb17`; bsc `0x991c55...977f24`; bsc `0xec887f...85f522` | ⚠️ Unaudited |
| PrimaryMarketV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0b4d...9ba70e` | ⚠️ Unaudited |
| PrimaryMarketV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258962 | `0xa8be5a...477e22` | ⚠️ Unaudited |
| ProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x023748...7d2ea9`; bsc `0xc4df28...ec0acb` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258942 | `0x18b806...241abc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c889...448147` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-258943 | `0x25cd49...e76815` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38f51b...672d59` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | project_anchor | own_supporting | 0 | scroll | unit-259023 | `0xf440e3...4f5970` | ⚠️ Unaudited |
| QueenRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6aed7...8756a2` | ⚠️ Unaudited |
| QueenStableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcf44d...ba5773` | ⚠️ Unaudited |
| RewardCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x264382...341418`; ethereum `0x410f38...e150f7`; bsc `0x79e8ea...dcfe0d`; bsc `0xacc5b8...505e37` | ⚠️ Unaudited |
| RewardClaimer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258955 | `0x7f08c4...f8fac1` | ⚠️ Unaudited |
| SafeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ef209...83f8a9`; ethereum `0xe83f1b...d9df03` | ⚠️ Unaudited |
| SafeStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258976 | `0xfb3995...202f3d` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x15d031...f4c648`; bsc `0x3a632b...ef9fb1`; bsc `0x80da8c...fab7ef`; bsc `0x8cc456...dc6f85`; bsc `0x9fd554...ad1a90`; bsc `0xa0c1a9...e4dcbb`; bsc `0xed3805...9fca43`; bsc `0xf8d829...8d2c3a`; bsc `0xfff9fc...b75dd9` | ⚠️ Unaudited |
| ShareStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x66f9d1...7d4b70`; bsc `0xaf098f...2aa1b4`; bsc `0xfa7b73...701c76` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258946 | `0x307462...714598` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258948 | `0x379e8d...0d3934` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258953 | `0x6aff25...a30f5c` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258957 | `0x93ef1e...292e7d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258966 | `0xbb1852...9ca3a9` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258970 | `0xd2df8d...158690` | ⚠️ Unaudited |
| ShareV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 57 deployments: bsc `0x01236e...aa7ed6`; bsc `0x081829...3723b7`; bsc `0x0a229c...64223f`; bsc `0x0e5304...5ac4a4`; bsc `0x1094ee...d6f175`; bsc `0x1395b8...ce5a34`; bsc `0x13df92...ca0c0e`; bsc `0x1424ca...0a5bd3`; bsc `0x17206f...26b09d`; bsc `0x1bb33b...2651b8`; bsc `0x1d56ee...387e2b`; bsc `0x20d269...57ddf3`; bsc `0x21944a...385ff1`; bsc `0x3f1436...6a4c7a`; bsc `0x3ff927...f172a1`; bsc `0x40faca...45d52f`; bsc `0x47cc4b...d74759`; bsc `0x4c1e90...e222b2`; bsc `0x4e8a73...7b5543`; bsc `0x52e435...f05ae3`; bsc `0x53ef5c...a471fd`; bsc `0x5aa903...c79da8`; bsc `0x5d3c94...59557f`; bsc `0x636939...2fea89`; bsc `0x65067c...b9df6d`; bsc `0x716155...2f5e21`; bsc `0x81607f...cdbdde`; bsc `0x89035e...f68bbc`; bsc `0x900064...a6c83f`; bsc `0x92b99c...b5fa36`; bsc `0x9c1829...e82244`; bsc `0x9d076e...44a7a6`; bsc `0x9ed29f...9f16f2`; bsc `0xa14424...fa3547`; bsc `0xa5235d...ec4e7b`; bsc `0xa5b757...60d7e7`; bsc `0xa8494c...f6389e`; bsc `0xaa107d...a125b4`; bsc `0xb309f9...0f52a2`; bsc `0xb34309...1b71d3`; bsc `0xb87967...be45d5`; bsc `0xbe7ee1...d601e1`; bsc `0xc28fb6...01d76c`; bsc `0xcdd85b...6390c3`; bsc `0xce2a34...9d9955`; bsc `0xd4b3c0...c7188a`; bsc `0xd4c753...18856e`; bsc `0xd94f01...ae5f00`; bsc `0xdb3d7e...eaa3d3`; bsc `0xdbeb5f...0ce0b9`; bsc `0xdcaecd...a3b76c`; bsc `0xe94a3e...0f4665`; bsc `0xecd4a7...92653a`; bsc `0xf87e3d...77e77e`; bsc `0xf9cd7a...1b9926`; bsc `0xfdc8a3...991286`; bsc `0xff2326...b79c7c` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258981 | `0x097508...79165b` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258982 | `0x0e6a00...92ccaa` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258988 | `0x3b97cc...493eea` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259000 | `0x6e20e4...35d92d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259001 | `0x6f2d7c...35ff4a` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259004 | `0x820144...a7fea2` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259009 | `0xb5e3d3...105839` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259012 | `0xbf4ff7...67112e` | ⚠️ Unaudited |
| SwapBonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x0df248...322231`; ethereum `0x321091...f95308`; bsc `0x125ed6...ce9c27`; bsc `0x1a4ba3...f62add`; bsc `0x1b52ba...3aa832`; bsc `0x23fac9...49bc88`; bsc `0x32b67c...6d33ae`; bsc `0x41e80d...e65d65`; bsc `0x487178...d78bae`; bsc `0x4ae819...7f4056`; bsc `0x4fca6b...52a500`; bsc `0x646b96...3602c2`; bsc `0x6911a9...8a6594`; bsc `0x6bec98...a2eb2b`; bsc `0x6e6dfc...9978a0`; bsc `0x7813b3...fcd0c3`; bsc `0x7c29a6...b1fc71`; bsc `0x979797...5c234f`; bsc `0xa70376...723f52`; bsc `0xaa712f...692c13`; bsc `0xb48d3c...7f0bba`; bsc `0xc21978...e056d5`; bsc `0xc29d80...90b15f`; bsc `0xc53207...a5d3f8`; bsc `0xc6549d...cccba7`; bsc `0xdfd3b0...f793ed`; bsc `0xe68910...adf3cb` | ⚠️ Unaudited |
| SwapBonus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258965 | `0xb6f98a...b7c9e4` | ⚠️ Unaudited |
| SwapBonusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xc690f9...bd4855`; bsc `0x6983d3...00a1ca` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258951 | `0x657498...6c3314` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x688de1...b378a3`; bsc `0x3599dd...5cadc2` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258950 | `0x509b82...562c35` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bb3ae...1cf8f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-259027 | `0xffd177...f8f5ba` | ⚠️ Unaudited |
| TwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7b2a31...4a6d61`; bsc `0xd92495...cfba28` | ⚠️ Unaudited |
| UpgradeTool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8347b6...313aa8`; bsc `0x8369d4...3705a6`; bsc `0xfd7815...536b9b` | ⚠️ Unaudited |
| VestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0c3eb0...34be06`; bsc `0x102a99...33f51c`; bsc `0x1c8e9f...945260`; bsc `0x2f0455...545355`; bsc `0x575a15...b92ffe`; bsc `0x6d2b82...d405cc`; bsc `0x77f82a...130f94`; bsc `0x966768...6c5b68`; bsc `0xfa52b0...aa67ac` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5cb57f...2b5f23`; bsc `0x8fb2a4...5837b4`; bsc `0xc11f14...8672c1` | ⚠️ Unaudited |
| VotingEscrowCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xe7ae69...1af462`; bsc `0x682ec9...931ebc` | ⚠️ Unaudited |
| VotingEscrowHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x718620...5b57f8`; bsc `0x7c0697...8e46a3`; bsc `0x983f61...355066`; bsc `0xf60b5b...479936` | ⚠️ Unaudited |
| VotingEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x147c00...775620` | ⚠️ Unaudited |
| VotingEscrowV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x116aeb...bdee9b`; ethereum `0xb9d0dd...d4daa4` | ⚠️ Unaudited |
| VotingEscrowV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeceed...d3e5cf` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x229cf0...7036e9`; bsc `0x36f417...3b3dcd` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259031 | 2 deployments: ethereum `0x3fadad...6cf95e`; ethereum `0xa0fe80...d8cb7b` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x613576...32863e`; bsc `0x95a2bb...abc6c2` | ⚠️ Unaudited |
| WithdrawalManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259029 | 2 deployments: ethereum `0x16d0ff...29dd88`; ethereum `0x4ec117...f3e6d3` | ⚠️ Unaudited |
| WithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x901d53...49d7db`; ethereum `0xb0a904...9ece05`; ethereum `0xfcd9a1...9234ee` | ⚠️ Unaudited |
| WstETHBishopStableSwap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258964 | `0xad06a2...57bdb5` | ⚠️ Unaudited |
| WstETHPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258968 | `0xc32f23...b0149f` | ⚠️ Unaudited |
| WstETHWrappingSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1e228...ee84ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f4d4...71b9d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258945 | `0x2bac57...04b916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d5a6...83ccb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af9ec...f06bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9cd4...e04f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8e56f...f9291e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe17b1...06b5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfffa62...17e54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d7f76...aa25d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dfd37...d2bf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2142a4...bb58cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aca3d...9d5cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f65f5...80d66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3634e6...a306dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41092e...004906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x440732...c7c503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a115...326225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x534b38...955d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fe452...120cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e32a...ec218f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ac57...a3c43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x953ffb...6dcaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97993c...8f74af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6689a...9a677c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb66ecd...2edcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb9a8a...f4f959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc67428...98fe76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff12ef...dc9c35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258978 | `0x009340...e058e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258979 | `0x034a99...0e9fd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258983 | `0x194c6a...179440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258984 | `0x1bf019...ff3a7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258986 | `0x289e69...61253f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258987 | `0x33b5ad...84e0c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258991 | `0x461f98...3509cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258993 | `0x49195e...e0cd65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258994 | `0x4b0d5f...10d955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258995 | `0x4dd610...270dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258996 | `0x512d9c...4378c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258997 | `0x62b4b4...c30c86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258998 | `0x63baee...24cbcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258999 | `0x65cecc...4b3462` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259002 | `0x80800c...edf5ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259003 | `0x80df7e...32155f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259006 | `0xa25342...7734a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259007 | `0xa2901b...e0c2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259008 | `0xa793fb...3a1878` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259010 | `0xb6d5d0...621807` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259014 | `0xd180fb...ef7795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259015 | `0xd48cc4...b09b65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259016 | `0xdd730b...9a30df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259017 | `0xdec17f...e00d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259018 | `0xe302f0...fe83e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259020 | `0xeda4b3...cee32f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259021 | `0xf380bb...2434a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259022 | `0xf3bf24...79dafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259024 | `0xfae0e2...8fa13b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259025 | `0xfbee64...c5a518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259026 | `0xfee8cd...b86922` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Tranchess-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Tranchess-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [skynet.certik.com/projects/tranchess](https://skynet.certik.com/projects/tranchess) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [certik-2021-06-02.pdf](https://github.com/tranchess/contract-core/blob/main/audits/certik-2021-06-02.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 33 | n/a |
| [peckshield-2021-06-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-06-28.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [peckshield-2021-09-10.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-09-10.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [peckshield-2021-12-24.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-12-24.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [peckshield-2022-05-20.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-05-20.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [peckshield-2022-10-30.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-10-30.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | n/a | matched | 2 | 0 | 0 | 3 | n/a |
| [peckshield-2023-12-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2023-12-28.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2425] PeckShield-Audit-Report-Tranchess-v1.0.pdf — no match: No reason recorded
- [2426] skynet.certik.com/projects/tranchess — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned (0x20de...4c82a6) is a token contract, but it is not explicitly listed as in scope for an audit.
- [14940] certik-2021-06-02.pdf — matched: No reason recorded
- [14941] peckshield-2021-06-28.pdf — no match: No reason recorded
- [14942] peckshield-2021-09-10.pdf — no match: Contracts extracted from findings targets and mentions; no explicit scope section found.
- [14943] peckshield-2021-12-24.pdf — no match: Only one contract name explicitly mentioned as target in findings. No explicit scope table or file listing provided.
- [14944] peckshield-2022-05-20.pdf — no match: Extracted contract names from findings targets and references. Audit date from cover page and version history.
- [14945] peckshield-2022-10-30.pdf — matched: No reason recorded
- [14946] peckshield-2023-12-28.pdf — matched: Contracts extracted from findings targets; no explicit scope table but report clearly states audit covers Tranchess protocol with these contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | AddressWhitelist | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | Exchange | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | Fund | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | LiquidityStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | PrimaryMarket | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | Staking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | VestingEscrow | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | AprOracle | own contract | AprOracle (selected) `0xa9f575...1feaac` — deployed 2022-10-27 12:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| certik-2021-06-02.pdf | CarefulMath | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Chess | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ChessController | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ChessRoles | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Exchange | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExchangeOrderBook | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExchangeRoles | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExchangeTrade | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Exponential | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExponentialNoError | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Fund | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | FundRoles | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IAprOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IBallot | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IChess | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IFund | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IPrimaryMarket | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IToken | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ITrancheIndex | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ITwapOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IVotingEscrow | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | InterestRateBallot | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | MockAprOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | MockToken | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | MockTwapOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | PrimaryMarket | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | SafeDecimalMath | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Share | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Staking | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | StakingTestWrapper | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | TranchessProxy | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | TwapOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Address | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Exchange | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Fund | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | LiquidityStaking | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | PrimaryMarket | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Staking | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | VestingEscrow | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| peckshield-2021-09-10.pdf | Fund | unmatched — not counted | — | Target in finding PVE-001 and PVE-002 | no |
| peckshield-2021-09-10.pdf | StakingV2 | unmatched — not counted | — | Target in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | Staking | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | LiquidityStaking | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | Exchange | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | ExchangeV2 | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | InterestRateBallot | unmatched — not counted | — | Target in finding PVE-004 | no |
| peckshield-2021-09-10.pdf | VotingEscrowV2 | unmatched — not counted | — | Target in findings PVE-005 and PVE-006 | no |
| peckshield-2021-12-24.pdf | PrimaryMarketV2 | unmatched — not counted | — | Listed as target in finding PVE-001 and PVE-002 | no |
| peckshield-2022-05-20.pdf | SwapReward | unmatched — not counted | — | Target in finding PVE-001 | no |
| peckshield-2022-05-20.pdf | InterestRateBallot | unmatched — not counted | — | Target in finding PVE-002 | no |
| peckshield-2022-05-20.pdf | VestingEscrow | unmatched — not counted | — | Target in finding PVE-003 | no |
| peckshield-2022-05-20.pdf | FundV3 | unmatched — not counted | — | Target in finding PVE-004 | no |
| peckshield-2022-05-20.pdf | StableSwap | unmatched — not counted | — | Target in finding PVE-005 | no |
| peckshield-2022-05-20.pdf | PrimaryMarketV3 | unmatched — not counted | — | Mentioned in finding PVE-006 as example | no |
| peckshield-2022-05-20.pdf | VotingEscrowV2 | unmatched — not counted | — | Referenced in InterestRateBallot finding | no |
| peckshield-2022-05-20.pdf | FeeDistributor | ambiguous — not counted | FeeDistributor (alternative) `0x00db7b...8e367a` — deployed 2024-02-14 11:44:11+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xbc428f...84842c` — deployed 2022-11-01 11:34:23+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xe6e659...909cbf` — deployed 2022-11-03 12:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| peckshield-2022-10-30.pdf | BatchKeeperHelperBase | unmatched — not counted | — | — | no |
| peckshield-2022-10-30.pdf | ChessScheduleRelayer | unmatched — not counted | — | — | no |
| peckshield-2022-10-30.pdf | FundV4 | own contract | FundV4 (selected) `0x69c536...2d3966` — deployed 2022-11-01 11:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2022-10-30.pdf | PrimaryMarketV4 | own contract | PrimaryMarketV4 (selected) `0xcf1163...c4c829` — deployed 2025-02-07 06:11:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2022-10-30.pdf | VotingEscrowV3 | unmatched — not counted | — | — | no |
| peckshield-2023-12-28.pdf | FundV5 | own contract | FundV5 (selected) `0x811c9d...5dd0fa` — deployed 2024-02-14 12:03:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2023-12-28.pdf | FeeDistributor | ambiguous — not counted | FeeDistributor (alternative) `0x00db7b...8e367a` — deployed 2024-02-14 11:44:11+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xbc428f...84842c` — deployed 2022-11-01 11:34:23+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xe6e659...909cbf` — deployed 2022-11-03 12:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| peckshield-2023-12-28.pdf | WstETHPrimaryMarketRouter | own contract | WstETHPrimaryMarketRouter (selected) `0x9c69b6...9240fa` — deployed 2024-02-14 12:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2023-12-28.pdf | VestingEscrow | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x97238b...55a1d5` | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xbefeb1...9d6e68` | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xffd319...24a15a` | BeaconStakingOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3d9f20...d71ca6` | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xd151ce...9ffc6f` | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xec8bfa...a5ff00` | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x58e2db...b7a8ac` | ChessControllerV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c5f4b...22b03d` | ChessSubSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x374738...7e10a9` | ConstAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41b598...16826f` | ControllerBallotV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96f448...9dac37` | EthStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96ccae...74f9d5` | FeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00db7b...8e367a` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbc428f...84842c` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6e659...909cbf` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd46227...6e0c95` | FlashSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x287195...664a9f` | LiquidityGaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3c8465...e6d464` | LiquidityGaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x088e2f...41679d` | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x21366d...791cee` | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x47b391...f194d4` | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe926f0...afb308` | NodeOperatorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d7473...1a5504` | NonfungibleRedemptionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea8e6f...2b18ba` | PrimaryMarketRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8be5a...477e22` | PrimaryMarketV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25cd49...e76815` | ProxyOFTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xf440e3...4f5970` | ProxyOFTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f08c4...f8fac1` | RewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfb3995...202f3d` | SafeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x307462...714598` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x379e8d...0d3934` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6aff25...a30f5c` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93ef1e...292e7d` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb1852...9ca3a9` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd2df8d...158690` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x097508...79165b` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x0e6a00...92ccaa` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3b97cc...493eea` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x6e20e4...35d92d` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x6f2d7c...35ff4a` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x820144...a7fea2` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xb5e3d3...105839` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xbf4ff7...67112e` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb6f98a...b7c9e4` | SwapBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x657498...6c3314` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fadad...6cf95e` | VotingEscrowV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16d0ff...29dd88` | WithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad06a2...57bdb5` | WstETHBishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc32f23...b0149f` | WstETHPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 145 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 69 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: unique_name=5

Zero-match audit list:

- [2425] PeckShield-Audit-Report-Tranchess-v1.0.pdf
- [2426] skynet.certik.com/projects/tranchess
- [14941] peckshield-2021-06-28.pdf
- [14942] peckshield-2021-09-10.pdf
- [14943] peckshield-2021-12-24.pdf
- [14944] peckshield-2022-05-20.pdf

Fork inheritance lineage and inherited audits are included when available.
