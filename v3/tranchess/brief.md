# Agentic Audit Brief: Tranchess

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 9 (3 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Tranchess (`tranchess`)
- Website: [https://tranchess.com](https://tranchess.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, scroll
- Contract surface: 92 unique implementations (93 raw deployments)
- Coverage basis: 5/60 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,205,134.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tranchess. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 64 contract row(s) across ethereum, scroll. Structural roles: 26 core, 26 unclassified, 12 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 64
- Structural roles: core (26), unclassified (26), supporting (12)
- Contract kinds: contract (63), abstract (1)
- Detected standards: erc20 (13), ownable (9), erc165 (1), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 72 contracts are derived from known codebases. 72 contracts have no detected origin.

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

- Indexed contracts: 64; live-surface contracts included: 64 (61 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 92/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/60 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 92 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 92 of 92 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/60
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 92
- Raw deployments: 93
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
| PeckShield | Tier 2 | 4 | 6.7% | 2023-12 |
| CertiK | Tier 2 | 1 | 1.7% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258963 | `0xa9f575...1feaac` | ✅ Audited |
| FundV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258952 | `0x69c536...2d3966` | ✅ Audited |
| FundV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258956 | `0x811c9d...5dd0fa` | ✅ Audited |
| PrimaryMarketV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258969 | `0xcf1163...c4c829` | ✅ Audited |
| WstETHPrimaryMarketRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258961 | `0x9c69b6...9240fa` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapChess | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258972 | `0xd61232...5e2e73` | ⚠️ Unaudited |
| AnyswapChess | unknown | project_anchor | own_supporting | 0 | scroll | unit-259005 | `0x9735fb...1bccf9` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | project_anchor | own_supporting | 0 | ethereum | unit-258960 | `0x97238b...55a1d5` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | project_anchor | own_supporting | 0 | scroll | unit-259011 | `0xbefeb1...9d6e68` | ⚠️ Unaudited |
| BeaconStakingOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258977 | `0xffd319...24a15a` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258990 | `0x3d9f20...d71ca6` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259013 | `0xd151ce...9ffc6f` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259019 | `0xec8bfa...a5ff00` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259030 | `0xaa7596...062750` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259032 | `0x0c5f4b...22b03d` | ⚠️ Unaudited |
| ConstAprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258947 | `0x374738...7e10a9` | ⚠️ Unaudited |
| ControllerBallotV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258949 | `0x41b598...16826f` | ⚠️ Unaudited |
| EthStakingStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258959 | `0x96f448...9dac37` | ⚠️ Unaudited |
| FeeConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258958 | `0x96ccae...74f9d5` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258941 | `0x00db7b...8e367a` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258967 | `0xbc428f...84842c` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258973 | `0xe6e659...909cbf` | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258971 | `0xd46227...6e0c95` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-259028 | `0x1bf019...ff3a7b` | ⚠️ Unaudited |
| LiquidityGaugeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258944 | `0x287195...664a9f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-258989 | `0x3c8465...e6d464` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258980 | `0x088e2f...41679d` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258985 | `0x21366d...791cee` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258992 | `0x47b391...f194d4` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258974 | `0xe926f0...afb308` | ⚠️ Unaudited |
| NonfungibleRedemptionDescriptor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258954 | `0x7d7473...1a5504` | ⚠️ Unaudited |
| PrimaryMarketRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258975 | `0xea8e6f...2b18ba` | ⚠️ Unaudited |
| PrimaryMarketV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258962 | `0xa8be5a...477e22` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258942 | `0x18b806...241abc` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-258943 | `0x25cd49...e76815` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | project_anchor | own_supporting | 0 | scroll | unit-259023 | `0xf440e3...4f5970` | ⚠️ Unaudited |
| RewardClaimer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258955 | `0x7f08c4...f8fac1` | ⚠️ Unaudited |
| SafeStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258976 | `0xfb3995...202f3d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258946 | `0x307462...714598` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258948 | `0x379e8d...0d3934` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258953 | `0x6aff25...a30f5c` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258957 | `0x93ef1e...292e7d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258966 | `0xbb1852...9ca3a9` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258970 | `0xd2df8d...158690` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258981 | `0x097508...79165b` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258982 | `0x0e6a00...92ccaa` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258988 | `0x3b97cc...493eea` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259000 | `0x6e20e4...35d92d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259001 | `0x6f2d7c...35ff4a` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259004 | `0x820144...a7fea2` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259009 | `0xb5e3d3...105839` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259012 | `0xbf4ff7...67112e` | ⚠️ Unaudited |
| SwapBonus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258965 | `0xb6f98a...b7c9e4` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258951 | `0x657498...6c3314` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258950 | `0x509b82...562c35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-259027 | `0xffd177...f8f5ba` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259031 | `0x3fadad...6cf95e` | ⚠️ Unaudited |
| WithdrawalManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259029 | 2 deployments: ethereum `0x16d0ff...29dd88`; ethereum `0x4ec117...f3e6d3` | ⚠️ Unaudited |
| WstETHBishopStableSwap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258964 | `0xad06a2...57bdb5` | ⚠️ Unaudited |
| WstETHPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258968 | `0xc32f23...b0149f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258945 | `0x2bac57...04b916` | ❓ Unverified |
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
| ethereum | `0xaa7596...062750` | ChessControllerV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 54 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 32 |

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
