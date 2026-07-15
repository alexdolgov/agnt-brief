# Agentic Audit Brief: Harvest Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 6 audit(s)
- Eligible audit results: 11 (6 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Harvest Finance (`harvest-finance`)
- Website: [https://harvest.finance/](https://harvest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon, zksync-era
- Contract surface: 1007 unique implementations (2661 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,710,769.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Harvest Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, base, bsc, ethereum, polygon. Structural roles: 4 core, 2 supporting, 1 unclassified. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (2), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (3), erc165 (2), erc20permit (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2), solmate (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AnyswapV3ERC20 (`0x4b5c23...d33743`, chain 56)
- ClonableBeaconProxy (`0x8553d2...c83c70`, chain 42161)
- ClonableBeaconProxy (`0x9dca58...8d46c1`, chain 42161)
- OptimismMintableERC20 (`0xd08a29...fb4034`, chain 8453)
- OptimismMintableERC20 (`0xe7798f...5a77ea`, chain 8453)
- UChildERC20Proxy (`0xab0b2d...d7bbff`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1001 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 458
- Confirmed-live implementations: 6 of 1007 unique; 1001 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/826
- Verified + Unaudited implementations: 825
- Verified by bytecode match: 0
- Unverified implementations: 181
- Unique implementations: 1007
- Raw deployments: 2661
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/harvest/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 0.1% | 2020-11 |
| Haechi | Tier 2 | 1 | 0.1% | 2020-09 |
| PeckShield | Tier 2 | 1 | 0.1% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NotifyHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-241747 | `0xf71042...2cc9f0` | ✅ Audited |

### ⚠️ Verified + Unaudited (825)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7dec70...d34fe4` | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8728e1...61d976` | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa2c8a6...48cffc` | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc57e34...84036d` | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcfd2f3...626757` | ⚠️ Unaudited |
| AaveV3BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a395...8c1053` | ⚠️ Unaudited |
| AaveV3BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe3abae...de4c5e`; ethereum `0xf020b9...78d884` | ⚠️ Unaudited |
| AaveV3CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06f56...c44b22` | ⚠️ Unaudited |
| AaveV3WithPriceOracleMiddlewareBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9eeee...a12612` | ⚠️ Unaudited |
| AccessManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0d6028...00a740`; ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1`; base `0x709e16...548a62`; base `0x8b41e7...76f1b3`; base `0x95cfd1...0696d2`; base `0xccf76d...b2f236` | ⚠️ Unaudited |
| AeroCLDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb90835...789a03` | ⚠️ Unaudited |
| AerodromeBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbbe09...28c838` | ⚠️ Unaudited |
| AerodromeClaimFeesFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf16899...e001de` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x079a34...873f3f`; base `0xba861c...5daf44` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x26a1b0...5f1e07`; base `0x6e386e...ad9e6a`; base `0xc07e6e...cccecc` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x33c1bc...ebd7cf`; base `0xe9292a...c65223` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x62796e...574a83`; base `0xebf162...8e5781` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: base `0x023cd3...6cbd22`; base `0x1f1b46...66c2b5`; base `0x38d45c...1b6f68`; base `0x3b8849...dc2bea`; base `0x68e6cd...0c558c`; base `0x691b1c...af2617`; base `0x7942f4...a2cc34`; base `0xb4dfb1...00f1c0`; base `0xc6f50d...f57f58` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x04b898...bbb9c1`; base `0x93b0e1...e4a709` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 9 deployments: base `0x1807a7...f77aa0`; base `0x29ec81...34707f`; base `0x328a2d...c3867a`; base `0x49416c...9d4e70`; base `0x4d58d9...6550cf`; base `0x53ecf9...f88f76`; base `0xa5aa84...4224a2`; base `0xc7622c...3aceb5`; base `0xf007f9...d3d73c` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x50c2cb...e19ded`; base `0x5a1259...a4f8ed` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6652a6...a49e3d`; base `0xa68b48...3fe167` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_tBTC_cbBTC1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x530df2...bfaeec`; base `0xbc26a9...bc322e` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_tBTC_cbBTC1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x60491b...29d128`; base `0xb01cdd...10f071` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_tBTC_cbBTC1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd92567...19f86a`; base `0xed91e8...f15c2b` | ⚠️ Unaudited |
| AerodromeDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3dbdb3...5ce756`; base `0x63dfe2...6319a2` | ⚠️ Unaudited |
| AerodromeGaugeClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91ad48...39825e` | ⚠️ Unaudited |
| AerodromeGaugeFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x436011...8e04c8` | ⚠️ Unaudited |
| AerodromeLiquidityFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x277ffc...36c275` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_DAIp_USDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe36261...889fc9` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_DOLA_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x656279...55c997`; base `0x6fd8d9...01812f` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_eUSD_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x021556...c97e45` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_ezETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c2984...1d1279` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_jEUR_EURA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x919f3a...9e7f41` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_jEUR_EURC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1166d...228bc3` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_msETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc85143...b98eda` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_msUSD_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d4687...60d8cf` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_rETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb05419...0b2547` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDC_STAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d095f...29416b` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDC_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa24d51...d69218` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDp_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49fbad...f4c597` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDp_USDCp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f5959...6c925b` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDz_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2466f5...c338be` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_AERO_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa667bc...6573ab` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_aixCB_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x623d6c...868b97` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_cbBTC_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13d452...9325a7` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_cbBTC_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd24ce2...e93295` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_cbETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7232e3...ad1e6e` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_CHAMP_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f6e45...196a3b` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_CHAMP_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2f8cd...a89d6c` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_ETH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17bb1b...a0b05e` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_ETH_USDC_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce470c...ac0fe9` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_EURA_USDA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a9a57...6330f1` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_EURC_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7991ab...db20a5` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_EURC_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88b9f8...4bbe6e` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_fBOMB_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc202d8...49ea29` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_GB_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x949394...0591d3` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_GENOME_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6baf2c...21cbd2` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_GHST_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92b99c...321fb9` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_hyUSD_eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06dc45...9f9b77` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_ION_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb02e3d...559b72` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_OVN_USDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a05d7...9a01b9` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_SEAM_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a8fed...35f5a8` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_TAROT_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2d3f1...76ac04` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_tBTC_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x802da5...4dfe31` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_tBTC_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57d862...d14a4e` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_USDC_AERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06a407...1e5005` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_USDC_KLIMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x828450...5330c9` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_USDC_SPOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1889c7...8fdb79` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_VIRTUAL_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95c6cc...6e1c16` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_VIRTUAL_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb64ef7...209d87` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_VVV_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x929c83...7bd18c` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_wBLT_BMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x163c63...f273d1` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_weETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad543...08828c` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WELL_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x396690...d01cea`; base `0x8aaf6a...513021` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_AERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e767a...67b877` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_KLIMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc337c6...9fbb24` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_WELL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d5eaa...c4ad12` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_WELS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18bf51...c0a248` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_wrsETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6fcce...4fd0a8` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_wUSDR_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe06b10...12e662` | ⚠️ Unaudited |
| AmmCloseSwapLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x066cbd...bbaac2`; ethereum `0x17bf30...94095d`; ethereum `0x8d99d6...132aa0`; ethereum `0xff69f7...32aaf8` | ⚠️ Unaudited |
| AmmCloseSwapLensBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9c7a5...749cb9` | ⚠️ Unaudited |
| AmmCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6650de...825ee3`; ethereum `0x7dc23a...10ecb5` | ⚠️ Unaudited |
| AmmCloseSwapServiceDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x072467...1dd183`; ethereum `0x735b3f...6fc3d9`; ethereum `0xe14a72...a849e4` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x578ba0...2973c2`; ethereum `0xe26126...eb6524` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07f30...292734` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x128ced...aa747f`; ethereum `0x623750...673d95`; ethereum `0x9a9f60...69f8e8` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdcBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8572eb...449a3d` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11a02a...ab56f9`; ethereum `0x6d0045...d94237`; ethereum `0x8fe90f...743ed2` | ⚠️ Unaudited |
| AmmCloseSwapServiceWstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3626c...561faf` | ⚠️ Unaudited |
| AmmCloseSwapServiceWstEthBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0de43f...8f6711`; base `0xea67e2...47e746` | ⚠️ Unaudited |
| AmmGovernanceService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4f7ef2...bda46d`; ethereum `0x8ab4d1...6e2023`; ethereum `0x8ec9ae...52158d`; ethereum `0xbd7407...95264d`; ethereum `0xbf0a6e...03f4bc` | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xb64f71...5f0470`; base `0x498eb5...28fe4c` | ⚠️ Unaudited |
| AmmOpenSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ef45e...8016d1`; ethereum `0x78034b...7ae119` | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x042ec3...59cd2c`; ethereum `0x0ccccd...3ab361` | ⚠️ Unaudited |
| AmmOpenSwapServiceUsdcBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf884c...1bb54d` | ⚠️ Unaudited |
| AmmOpenSwapServiceWstEthBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbe094...ac9472` | ⚠️ Unaudited |
| AmmPoolsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f44c5...40e04a`; ethereum `0xb653ed...940d01` | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xce9680...7db70d`; base `0xa4989a...c389dc` | ⚠️ Unaudited |
| AmmPoolsLensEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bea65...28be1e` | ⚠️ Unaudited |
| AmmPoolsLensStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a485...24904a` | ⚠️ Unaudited |
| AmmPoolsLensUsdm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326293...eac8eb` | ⚠️ Unaudited |
| AmmPoolsLensWeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d64c...e165a6` | ⚠️ Unaudited |
| AmmPoolsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x912ae5...98f337`; ethereum `0x9bcde3...400517` | ⚠️ Unaudited |
| AmmPoolsServiceEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30845...1a9bed` | ⚠️ Unaudited |
| AmmPoolsServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x406812...428be1`; ethereum `0xcd96ba...fbebbc` | ⚠️ Unaudited |
| AmmPoolsServiceUsdcBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x12bdfd...3f7522`; base `0x786afb...1d02d0` | ⚠️ Unaudited |
| AmmPoolsServiceUsdm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5765d0...95294c` | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6966de...c5a318`; ethereum `0x7b071c...e475ac` | ⚠️ Unaudited |
| AmmPoolsServiceWstEthBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2bb871...65401c` | ⚠️ Unaudited |
| AmmPoolsServiceWstEthBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0eb64f...330887`; base `0xc3577d...de47f4` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x229e0b...7411fe`; ethereum `0x98123c...de36da`; ethereum `0xec6f77...d283e6` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x364f11...f5b1ce`; ethereum `0x622827...593f2e` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4508ce...e8c0f0`; ethereum `0xb99f2a...c56e61` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91c35e...8f6ab1`; ethereum `0xb3d1c1...924ba5` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x08a8ec...0197c6`; ethereum `0x95257e...94a281` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b0277...f114d0`; ethereum `0x9c9846...701017` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f4f16...84ef8c`; ethereum `0x77fe3a...41e3b5` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x29399d...ae65b7`; base `0xeade91...feea8b` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5c53d7...bd1601`; base `0x86d94f...44ab1d` | ⚠️ Unaudited |
| AmmSwapsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x41e347...0172cf`; ethereum `0x476c44...2dcd8c`; ethereum `0x5a1cf5...4c50c2` | ⚠️ Unaudited |
| AmmSwapsLensBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6834bd...322943` | ⚠️ Unaudited |
| AmmSwapsLensLibBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1decfd...c7032c` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x137000...2e7dc9`; ethereum `0x866d6c...a0eb49` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28bc58...96b687`; ethereum `0xabcb3a...49a82b` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f4506...dc5944`; ethereum `0x916202...d3aa48`; ethereum `0xeb011b...f88a0c` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe9facd...b74dc1`; ethereum `0xed7d74...4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x390e7e...68aabd`; ethereum `0x9a449e...37123b` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x060bf7...40556a`; ethereum `0xa19b16...1bfaad`; base `0x04761b...14fc10`; base `0x787998...19542e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30ae18...05153c`; ethereum `0x63395e...8dee4e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb1c0cc...44f0c0`; ethereum `0xcc2ff2...d74196` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09388e...7b8ddf`; base `0x94eb7c...10cae8` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1aba7a...454a24`; base `0x270ff9...e7fd1e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82a1fc...5b1f1f` | ⚠️ Unaudited |
| AmmTreasuryEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7193c...50dc22` | ⚠️ Unaudited |
| AmpliFARM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8cf3f6...fe883d`; bsc `0xf10829...a4ea26` | ⚠️ Unaudited |
| Amplifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x20099e...782d14`; bsc `0x633a05...14ad6a` | ⚠️ Unaudited |
| AmpliViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f0cd8...0f63f2` | ⚠️ Unaudited |
| AnyswapV3ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x049d68...3a3c7a`; bsc `0x1f6367...f7b52f`; bsc `0x1f7216...f96eae`; bsc `0x2442af...03a6c9`; bsc `0x4d3386...fb3c6a`; bsc `0x564bef...41b9f3`; bsc `0x5986d5...0a71da`; bsc `0x627524...b671fd`; bsc `0x6a545f...9e6c29`; bsc `0x812764...1e82a0`; bsc `0x84c882...106117`; bsc `0x9899a9...4ff9ff`; bsc `0x9e0846...17da21`; bsc `0xc417b4...f4d0a5` | ⚠️ Unaudited |
| AnyswapV3ERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-241746 | `0x4b5c23...d33743` | ⚠️ Unaudited |
| ArcadiaLendStrategyMainnet_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6be087...7f30cc` | ⚠️ Unaudited |
| ArcadiaLendStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc27a66...73f6ed` | ⚠️ Unaudited |
| ArcadiaLendStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x456173...01905a` | ⚠️ Unaudited |
| AreodromeSlipstreamBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3075a8...275b53`; base `0xaff9bb...4e1188` | ⚠️ Unaudited |
| AreodromeSlipstreamCLGaugeFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x399599...01a21a`; base `0x3d1293...6c13e4` | ⚠️ Unaudited |
| AreodromeSlipstreamCollectFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x414e85...444a2e`; base `0x67442e...fb280a` | ⚠️ Unaudited |
| AreodromeSlipstreamGaugeClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x52f288...83b237`; base `0xd7b15c...c95344` | ⚠️ Unaudited |
| AreodromeSlipstreamModifyPositionFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x81dd87...e53740`; base `0xbb60dc...3faf30` | ⚠️ Unaudited |
| AreodromeSlipstreamNewPositionFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4426a0...ac210f`; base `0xb6a36f...8bac5d` | ⚠️ Unaudited |
| AssetManagementDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x160dae...cdace3`; ethereum `0xa6ac8b...96e2b0` | ⚠️ Unaudited |
| AssetManagementLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d4c4c...5f6e09`; ethereum `0xb8dbde...192389` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aa7b0...9bf260`; ethereum `0xd9f0c6...0d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6416e3...7f7ddd`; ethereum `0x8e679c...64d6b5` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37fb99...92bf6f`; base `0x89a204...f2a142` | ⚠️ Unaudited |
| AsyncActionFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04bd1e...671870`; base `0xf328e4...a9e460` | ⚠️ Unaudited |
| AutoStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12d83d...1109f0`; ethereum `0x25550c...00fc50` | ⚠️ Unaudited |
| AutoStakeMultiAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa239d5...5d32f4` | ⚠️ Unaudited |
| BalanceFusesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x870e1f...0aec1f`; base `0xe33f6a...0e8203` | ⚠️ Unaudited |
| BalancerStrategyMainnet_BAL_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2941a4...e8c89b` | ⚠️ Unaudited |
| BalancerStrategyMainnet_DAI_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc2c30c...34b5d1` | ⚠️ Unaudited |
| BalancerStrategyMainnet_USDC_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06a2e6...d080ee` | ⚠️ Unaudited |
| BalancerStrategyMainnet_USDT_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x83ddbb...093fa1` | ⚠️ Unaudited |
| BalancerStrategyMainnet_WBTC_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857be6...07c565` | ⚠️ Unaudited |
| BancorDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x61e7c4...3ad37f`; ethereum `0xe227a8...11413c`; ethereum `0xf493fc...ced071` | ⚠️ Unaudited |
| BasedStrategyMainnet_BASED_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x710543...a30e84` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_BASED_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x34bdf8...d7e109`; base `0xd3c0d2...e32fb1` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_BASED_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8e0e84...a57f9c`; base `0xec433f...18c387` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_BASED_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb30ead...9ceabe`; base `0xca4550...699464` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_bSHARE_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x231b51...e4f792` | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_BSWAP_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7978ab...6f9340` | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_CBETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb60a10...399280` | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_DAI_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46238c...2e249a` | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_ETH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eb185...e3a957` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_axlUSDC_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5294f...af9655` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_axlWBTC_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe25930...83bc3c` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_BSWAP_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x113505...61dadb`; base `0xb21ecb...fa77fe` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_BSWAP_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7d01d4...e111e6`; base `0xea73d5...90a01e` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_BSX_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x67f3e3...3f5f23`; base `0x7a641c...e94357`; base `0xc922d5...94d104` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_CBETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0555c6...7b1c4b`; base `0x8b9d17...bfdb86` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_CBETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0ad775...40282f`; base `0x2b0a02...b7f2a5` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_DAI_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x078c52...17fd00`; base `0xc08f9e...b36055` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_DAI_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3c18c5...478249`; base `0x6e818c...5dc41a` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_ETH_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1e7e7...ed5bcc` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_ETH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3e3c5d...04c841`; base `0x60a319...b40507` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_ETH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4772de...dff641`; base `0xda4fb2...79e3ce` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_USDbC_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d7103...304ea0` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_USDC_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ec83e...cb6fac` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_USDPLUS_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x628dd1...e23b22` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fefa...15ed9f` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4778...927894` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x05f9cd...ecb39b`; ethereum `0x841f5a...d126a5` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ebe1...6bbf0f` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BAS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ecfe...fd7d36` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1adafe...079361` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ab43e...af948d`; ethereum `0xad898d...678e16` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4e29...5d5ff8` | ⚠️ Unaudited |
| BasisGold2FarmStrategyMainnet_DAI_BSG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6403...9055ed` | ⚠️ Unaudited |
| BasisGold2FarmStrategyMainnet_DAI_BSGS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3718...792eb3` | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_BAC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb075ba...828ae2` | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1669c1...5ebfa8` | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI_BSG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296606...a7c6ed` | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI_BSGS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bedf3...39037b` | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x185f97...681810` | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_ESD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2a45...7361ab` | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0477b3...58864e`; bsc `0x8f2f86...a09650` | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3068d8...b68931`; bsc `0xd70e38...e54919` | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8f5a5...a7b6d8` | ⚠️ Unaudited |
| bDollarStrategyMainnet_SBDO_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36a1f2...01c90f` | ⚠️ Unaudited |
| bDollarStrategyMainnet_SBDO_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x74fad0...4da5e6`; bsc `0x77ee32...2f0676` | ⚠️ Unaudited |
| BeltSingleAssetStrategyMainnet_BeltBTCB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd8707e...72b07d`; bsc `0xe6cad0...c26dd8` | ⚠️ Unaudited |
| BeltSingleAssetStrategyMainnet_BeltETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78ac81...13dd5b` | ⚠️ Unaudited |
| BeltStrategyMainnet_BELT_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x176413...880387`; bsc `0x3839ed...2d6998` | ⚠️ Unaudited |
| BeltStrategyMainnet_BELT_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2e0a0f...c09d59`; bsc `0x497173...1b6402` | ⚠️ Unaudited |
| BeltStrategyMainnet_BELT_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf869e3...a9a8c5` | ⚠️ Unaudited |
| BeltVenusStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3736f9...89653a`; bsc `0xda23a5...a210e2` | ⚠️ Unaudited |
| BoostProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4571f...4daec3` | ⚠️ Unaudited |
| BoostRedirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x48b145...b91fe9`; bsc `0x572bc5...834a92` | ⚠️ Unaudited |
| BoostStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x27d732...d77d5f`; bsc `0xe10f2e...44d94a` | ⚠️ Unaudited |
| BoostStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0fb3d...898d1f` | ⚠️ Unaudited |
| BorrowRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x108dbb...03c58e`; ethereum `0xdc2622...ecc0f0` | ⚠️ Unaudited |
| BurnRequestFeeFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x79e8b1...d29ab4`; base `0x7f8024...0b62a9`; base `0x8aad08...22c073`; base `0xcabc40...ee4414` | ⚠️ Unaudited |
| CalculateWeightedLpTokenBalanceEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3843f9...c18915`; ethereum `0x6df58f...ca5971`; ethereum `0x77bf38...ff549c` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b219f...d98602`; base `0x64eca0...2c7532` | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5b0584...20e393`; base `0x6966d6...efedba` | ⚠️ Unaudited |
| CLRebalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f3af3...222a92` | ⚠️ Unaudited |
| CLRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x13e292...9eed99`; base `0x24864d...558fd7`; base `0x363a2e...007351`; base `0xfe3f01...be8288` | ⚠️ Unaudited |
| CLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x00d373...ee7ad3`; base `0x1c2bf1...8aca18`; base `0x1d0890...24edbf`; base `0x7d4a5f...c81074`; base `0x9d73c8...ae8d9b`; base `0xf5336c...60650e` | ⚠️ Unaudited |
| CLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | base | n/a | 7 deployments: base `0x17a368...365dcd`; base `0x861105...edf36e`; base `0x86b8e5...eddf4f`; base `0x8fff1a...9d3352`; base `0xab1281...eb6dfa`; base `0xcc00dd...521fc3`; base `0xec0c00...eb6a3c` | ⚠️ Unaudited |
| CLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 9 deployments: base `0x1e83d5...fddc37`; base `0x361d91...f64530`; base `0x3948bc...bb4b05`; base `0x48eae1...04100a`; base `0x5beaa9...ff6768`; base `0x76d7ae...eae753`; base `0x7be5b4...71b412`; base `0x80c908...7f2136`; base `0xd43389...0cfd78` | ⚠️ Unaudited |
| CLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x56fb81...fe2171`; base `0xb42c20...f2aa90` | ⚠️ Unaudited |
| CLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x8d3a43...1c93fc`; base `0xf1d563...0f48ec`; base `0xf83648...d3b94e` | ⚠️ Unaudited |
| CLWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x09cebe...1a4033`; base `0x0d1aca...f71ac9`; base `0x0d30fa...6b698a`; base `0x1d6fd9...9a5e8b`; base `0x2cbc31...651e24`; base `0x2e676d...578092`; base `0x358537...2e966a`; base `0x4177a5...086825`; base `0x645ae5...1c4006`; base `0x781ca2...ade650`; base `0x7a43d0...6e8448`; base `0x8cda67...b05469`; base `0x8d85fd...86c861`; base `0x986fd0...ad5bd0`; base `0xa2faa0...4cb95d`; base `0xe3dce2...738f80` | ⚠️ Unaudited |
| CockpitDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x124bc6...0e97dc`; ethereum `0x720e64...b144ee`; ethereum `0xacbb7e...cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ed13e...8bb5a7` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x354de7...6bdfc0` | ⚠️ Unaudited |
| ComplifiDerivStrategyMainnet_ETH5x | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4c9920...825064`; ethereum `0x9dbb8f...9dd819` | ⚠️ Unaudited |
| ComplifiStrategyClaimMainnet_COMFI_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a8365...9ab2c0`; ethereum `0x772484...33afe5` | ⚠️ Unaudited |
| ComplifiStrategyMainnet_COMFI_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69672c...4b60a6` | ⚠️ Unaudited |
| CompoundStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x37061f...fe3eb4` | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd58f0e...b33799`; base `0xe37d44...ab1cca` | ⚠️ Unaudited |
| ContextManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 46 deployments: ethereum `0x0f2e1c...9592b7`; ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f`; base `0x1ee02b...689a51`; base `0x23c2a2...b7b4b6`; base `0x265582...6d5e8f`; base `0x312388...0c201f`; base `0x34c7b3...f66b7f`; base `0x47da5b...3c2025`; base `0x4a84a8...4dae15`; base `0x6f4fcb...a5deb3`; base `0x722c6a...65cd58`; base `0x80c441...6cbf0d`; base `0x8f04cf...dca5cc`; base `0x9792ea...141ce9`; base `0xa74899...a0d8e9`; base `0xb56aea...055a48`; base `0xbf73aa...3a4206`; base `0xc0934d...e98de7`; base `0xccc731...435e41`; base `0xce0c20...d0f15f`; base `0xcf4267...c139b8`; base `0xd14a7d...33532c`; base `0xd5629b...6d083b`; base `0xdfe1af...b96a20`; base `0xfe9390...fbf16c` | ⚠️ Unaudited |
| ContextManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1a8404...2decc4`; ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815`; base `0x704515...2ce887`; base `0xaa7f40...fa2f6e`; base `0xb40095...3a2e32`; base `0xd2d3a0...a384bd` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x222412...953b1c`; ethereum `0x3cc478...7c55e3`; bsc `0x222412...953b1c`; base `0xf90ff0...efa745` | ⚠️ Unaudited |
| ConvexStrategy3CRVMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x025003...756029` | ⚠️ Unaudited |
| ConvexStrategy3CryptoV2Mainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8cff95...dc7c81` | ⚠️ Unaudited |
| ConvexStrategyBUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6a19ae...683cde` | ⚠️ Unaudited |
| ConvexStrategyEURSMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x59b556...e4c16b` | ⚠️ Unaudited |
| ConvexStrategyEURTMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x56cfc5...056bb6` | ⚠️ Unaudited |
| ConvexStrategyHBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xce9bc5...95e5aa` | ⚠️ Unaudited |
| ConvexStrategyHUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x000d02...857704` | ⚠️ Unaudited |
| ConvexStrategyIbEURMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x015795...fdfd63` | ⚠️ Unaudited |
| ConvexStrategyLinkMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x80a66d...fc0b75` | ⚠️ Unaudited |
| ConvexStrategyMIMMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x596355...76411c` | ⚠️ Unaudited |
| ConvexStrategyOBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1703fe...50d08d` | ⚠️ Unaudited |
| ConvexStrategyRenBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x90e938...95bdc5` | ⚠️ Unaudited |
| ConvexStrategystETHMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4503af...8af72e` | ⚠️ Unaudited |
| ConvexStrategyUSDNMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xff2adc...1e4a6c` | ⚠️ Unaudited |
| ConvexStrategyUSDPMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa788fe...288e1a` | ⚠️ Unaudited |
| ConvexStrategyUSTMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x89f6dd...65c475` | ⚠️ Unaudited |
| ConvexStrategyYCRVMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf8b2ef...ea72ec` | ⚠️ Unaudited |
| CRVStrategy3PoolMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0623cf...3f5c8c` | ⚠️ Unaudited |
| CRVStrategyBUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7caa...e64045` | ⚠️ Unaudited |
| CRVStrategyEURSMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d28d8...f52285` | ⚠️ Unaudited |
| CRVStrategyEURSV2Mainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7f31e0...456c19`; ethereum `0x807a63...c4a60a`; ethereum `0x829d3e...1da2ad` | ⚠️ Unaudited |
| CRVStrategyGUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa50591...853acf`; ethereum `0xa63852...37bdf7` | ⚠️ Unaudited |
| CRVStrategyHBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e10a2...d0151b` | ⚠️ Unaudited |
| CRVStrategyHUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x590556...b40000` | ⚠️ Unaudited |
| CRVStrategyLINKMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a0073...977d04` | ⚠️ Unaudited |
| CRVStrategyOBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e916c...ac6454` | ⚠️ Unaudited |
| CRVStrategyRENBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2eadfb...70f006`; ethereum `0x86de35...e838b3`; ethereum `0xd2429c...ac20b1` | ⚠️ Unaudited |
| CRVStrategyStableMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x03292b...d0966a`; ethereum `0x1c4734...faa81c`; ethereum `0x2ce34b...8efbff`; ethereum `0x394e65...8f053d`; ethereum `0x68e6aa...bea90b`; ethereum `0x76f9dd...80d58b`; ethereum `0x810b83...980938`; ethereum `0x9d356f...eec462`; ethereum `0xa2bd15...53897c`; ethereum `0xab4ae7...3e6d84`; ethereum `0xd55ada...d216cc`; ethereum `0xd75ffa...ce3f63`; ethereum `0xf32146...cd6e10` | ⚠️ Unaudited |
| CRVStrategySTETHMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d8f0...b91192` | ⚠️ Unaudited |
| CRVStrategySwerveDAIMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6ac757...e7e281`; ethereum `0xf60afe...8bded0` | ⚠️ Unaudited |
| CRVStrategySwerveUSDCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00f9d5...195bdf`; ethereum `0x18c432...8e9533`; ethereum `0x66b761...335c34` | ⚠️ Unaudited |
| CRVStrategySwerveUSDTMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x01fcb5...a4ce33`; ethereum `0x0477b3...58864e`; ethereum `0x892171...5f798c` | ⚠️ Unaudited |
| CRVStrategyTBTCMixedMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe26d94...b73ef9` | ⚠️ Unaudited |
| CRVStrategyUSDNMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f3cf...7888b7` | ⚠️ Unaudited |
| CRVStrategyUSDPMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x127bfd...7bca66`; ethereum `0xefca88...5a6600` | ⚠️ Unaudited |
| CRVStrategyUSTMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc55f8b...ed248a`; ethereum `0xe199d7...0edc64` | ⚠️ Unaudited |
| CRVStrategyWBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x164385...a76b48`; ethereum `0xe7048e...a6df19` | ⚠️ Unaudited |
| CRVStrategyWRenBTCMixMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x395255...c24e04`; ethereum `0xaf2d2e...eb308e` | ⚠️ Unaudited |
| CRVStrategyYCRVMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2427da...d67c92`; ethereum `0x6945f1...b2b73a`; ethereum `0xcf5f83...b2bbf5`; ethereum `0xd21c3b...50c977` | ⚠️ Unaudited |
| CurveStableswapNGSingleSideSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb0b6...18293a` | ⚠️ Unaudited |
| DegenPrimeStrategyMainnet_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x885a31...8d6077`; base `0xf01b38...f14bb1` | ⚠️ Unaudited |
| DegenPrimeStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0325a0...e2e3e8`; base `0x753045...460ac0` | ⚠️ Unaudited |
| DegenPrimeStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8f8c4b...e0fad6`; base `0x906943...d05303` | ⚠️ Unaudited |
| DEGOSimpleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8f2103...c6a1d5`; ethereum `0x9594ca...1659ba`; ethereum `0xa23c6f...ae281a` | ⚠️ Unaudited |
| DelayMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x284d72...64f61d` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ce90...fc0846` | ⚠️ Unaudited |
| Drip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x226f65...b31155`; base `0x2e6527...ad8009`; base `0x49e7af...411f34`; base `0xfda71a...daac2e` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78f46f...5a4357`; ethereum `0x8b94c1...d0b303` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x119cd4...3882eb`; base `0x63b939...f986dc` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82a57...6c67f9` | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30b07...7cc9e8` | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88ed7...b53451` | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a7f1...eefb33` | ⚠️ Unaudited |
| EbisuZapperCreateFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1aba47...37069e`; ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3babe...836102` | ⚠️ Unaudited |
| Ellipsis3PoolStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb1feb6...3a57ee`; bsc `0xb43aa2...12b6c2` | ⚠️ Unaudited |
| EllipsisBTCStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x11d4f0...81417f`; bsc `0x69019a...832c5d` | ⚠️ Unaudited |
| EllipsisFUSDTStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f749...03d9f2` | ⚠️ Unaudited |
| EllipsisLPStrategyMainnet_EPS_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5954f9...7f0178`; bsc `0xb19254...224bc6` | ⚠️ Unaudited |
| Erc4626BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 69 deployments: ethereum `0x10e2c2...cdb336`; ethereum `0x1469e4...512ee8`; ethereum `0x19e332...6e7906`; ethereum `0x2c10c3...c75d5e`; ethereum `0x2e3266...79e7dd`; ethereum `0x318dc5...0c2edf`; ethereum `0x32971e...ecf8e7`; ethereum `0x560c83...7772f0`; ethereum `0x5d4474...2b9a9a`; ethereum `0x806b55...23fb94`; ethereum `0x8c8f2a...ce78af`; ethereum `0x933bff...f8749b`; ethereum `0xa0777a...0e0cee`; ethereum `0xa72f83...ee92cf`; ethereum `0xcb6bb5...ba6566`; ethereum `0xe1fd88...a9a7f3`; ethereum `0xf3d20c...27bf11`; ethereum `0xf9a1f7...1308fe`; base `0x013df0...80d9c5`; base `0x021701...1f66f3`; base `0x03c245...302ed4`; base `0x153619...3a6fc8`; base `0x172213...5a5bfc`; base `0x19b3af...6ed80e`; base `0x1b9164...2bd74e`; base `0x1cb4ea...e30591`; base `0x22f3ff...e91d5e`; base `0x32b838...19fd74`; base `0x373a09...e22009`; base `0x399242...5100d8`; base `0x3dfe25...c3cf2f`; base `0x431e3b...f79ee4`; base `0x44b13c...000bf8`; base `0x4b0e15...19403b`; base `0x4b69ac...b0e972`; base `0x504f93...b4cc7a`; base `0x556a7b...02be0e`; base `0x59f6a2...9993dc`; base `0x5f565d...ca3c6c`; base `0x6343a8...27cf7f`; base `0x684b5c...108a67`; base `0x6d7a82...46d7f3`; base `0x72981b...c13023`; base `0x799b31...dd4deb`; base `0x7f4d9e...c96391`; base `0x8eef2c...7a7360`; base `0x903c1a...e56719`; base `0x9332da...72b8a6`; base `0x9d0376...788d24`; base `0xa515a9...7d0cbd`; base `0xaed326...c2a536`; base `0xb2713d...def021`; base `0xb2cde8...ec1030`; base `0xbd044a...3a94c4`; base `0xbd74ce...23d269`; base `0xc5d840...ed8fce`; base `0xc8c049...f6e6eb`; base `0xcbd6b2...1d1321`; base `0xd75982...299ca8`; base `0xe017c7...5af0fd`; base `0xe1725c...d35bdf`; base `0xe20c7e...bf42e6`; base `0xea166b...6d5f66`; base `0xf43b8f...fd461c`; base `0xf6006a...06f281`; base `0xf76038...0728d9`; base `0xfba70e...d8c087`; base `0xfc5de7...b165f5`; base `0xfee84b...16e19f` | ⚠️ Unaudited |
| ERC4626Dex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x918911...442f51` | ⚠️ Unaudited |
| ERC4626PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c3f08...922d93`; ethereum `0xdbffc3...7f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe08aff...d1aa61`; ethereum `0xf58fcc...0c0fdc` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x06d08a...914050`; base `0x77aa62...02193e` | ⚠️ Unaudited |
| Erc4626SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 67 deployments: ethereum `0x01d4fa...d45cdf`; ethereum `0x06b53a...a5d3b2`; ethereum `0x12fd0e...515870`; ethereum `0x361baf...1c9434`; ethereum `0x53ecc2...c81a6b`; ethereum `0x59e58d...d38f89`; ethereum `0x5e58d1...fa6a88`; ethereum `0x62679b...2649e8`; ethereum `0x6b9489...7bfb90`; ethereum `0x83be46...e4e754`; ethereum `0x87e3b7...cd590b`; ethereum `0x95acdf...35485d`; ethereum `0x970b4f...836dfd`; ethereum `0xbd8a19...47ca9f`; ethereum `0xd6fa88...43b783`; ethereum `0xe49207...80b4ae`; ethereum `0xf16119...73d8e3`; ethereum `0xf492e2...7bf5e7`; base `0x0d1cf4...7e7881`; base `0x101650...2576af`; base `0x1435f6...be32ce`; base `0x195f6d...03efff`; base `0x25c275...5d3202`; base `0x27c835...21f7f8`; base `0x32df46...061d68`; base `0x33ed64...4ae8c9`; base `0x3a42e9...db4aee`; base `0x3efe69...1ee6b0`; base `0x4092d7...f05cc0`; base `0x4abae7...791996`; base `0x55a3d0...76e15b`; base `0x5b36e9...463f48`; base `0x5cec9b...3b5170`; base `0x625e4f...00849f`; base `0x633d78...6a7045`; base `0x63f92c...8d32cc`; base `0x7a5869...b30199`; base `0x7f3783...f18e61`; base `0x82c57f...624f02`; base `0x859843...8b62b6`; base `0x8acf50...18005d`; base `0x928c21...2e1f43`; base `0x93f4c0...8cf5c9`; base `0xa1e142...54e5d1`; base `0xad5caf...408854`; base `0xb0767c...6bdea8`; base `0xb18705...425e77`; base `0xb355c8...48d256`; base `0xb995c4...a2293e`; base `0xbe8ab5...c231a8`; base `0xc3b44a...70c77a`; base `0xcf2fc5...6a78d4`; base `0xcf9bb5...a45b7d`; base `0xd61498...b42bc2`; base `0xd76b9c...7a8dbb`; base `0xda0711...ea80c1`; base `0xda101a...5cec0d`; base `0xdc1491...59271b`; base `0xddd2ea...3d1b73`; base `0xe0c439...24c2ee`; base `0xe1cce1...8f1ea2`; base `0xea1b36...79da0e`; base `0xed5ec5...1a9eac`; base `0xee01bb...1a2496`; base `0xf3ce83...cb277d`; base `0xf4fb53...93e2dc`; base `0xf5c604...eb1f6f` | ⚠️ Unaudited |
| ERC4626ZapIn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af838...76dac3` | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x677251...d89c00`; base `0xebcf47...fa67db` | ⚠️ Unaudited |
| EthPlusPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd529f4...580199` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_cbBTC_YO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fd18c...12e0fa` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_ETH_AS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bee43...e03c9d` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_ETH_EUL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x177c12...67fbc6` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_ETH_YO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe20468...7b85ce` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_EURC_EUL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fbc0c...b81257` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_AG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79d853...716dbc` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_AR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66d11d...024da3` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_EUL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c9bf9...14d4d8` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_YO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5afa8...b8edf3` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USR_AR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x14bbea...fe6ce7`; base `0xa92ff8...739e20` | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xa60785...eeacdc`; ethereum `0xae9a37...7baabd`; base `0xf8a6aa...66a5fa`; base `0xf8bb9a...ea6caf` | ⚠️ Unaudited |
| EulerV2BatchFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x45f3bf...7dda6f`; base `0x60ce35...38898f` | ⚠️ Unaudited |
| EulerV2BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x20c782...9e32c2`; ethereum `0x6b339a...f7f2f6`; base `0x906496...39b379`; base `0xfd5ba4...682b11` | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07d809...e36514`; ethereum `0xf58d96...672618`; base `0x12c479...d17a94`; base `0xf569a4...2f7a67` | ⚠️ Unaudited |
| EulerV2ControllerFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x4bfea0...ca9b55`; ethereum `0x4dca6f...ec6c25`; base `0x0f86a5...0094ed`; base `0x108c8c...cd2e64` | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x225d3e...7e7bf0`; ethereum `0x9425cc...57f217`; ethereum `0xdd33b4...6fd5b5`; base `0x598326...5306a4`; base `0x96901b...77d1ab`; base `0xfa0080...0ec0fa` | ⚠️ Unaudited |
| EulerV2SwapDeployFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0db8d3...89e670` | ⚠️ Unaudited |
| EulerV2SwapReconfigureFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11187b...fddbf1` | ⚠️ Unaudited |
| EulerV2SwapRegistryFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49b9a2...abf923` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xef23ea...706199`; base `0xa95945...ae75ee` | ⚠️ Unaudited |
| ExclusiveRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f5adc...99436c`; ethereum `0xf50be7...bf7ce4` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_AERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0d6fcb...1e4437`; base `0x6e1e4d...b5681e` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x689f98...c636d2` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_DOLA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x16aa01...cb2e7c`; base `0x4f6560...563eea` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_KLIMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xa8f0c0...0b4d25`; base `0xe9a795...f32eb7` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_OVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc8fda8...7923d1`; base `0xf6ba89...e98f2d` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x042973...0f3370`; base `0xbacff4...3bf944` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1349b5...e68125`; base `0xeb6541...a80623` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDC_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc7ddb...80da9a` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDplus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0bafaa...35ad38`; base `0x14a33f...7277e1`; base `0x530427...77893c` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x40a8a6...253d8f`; base `0x8fe406...0a427d` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_VIRTUAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d1349...c078de` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_WELL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcd045d...c98033`; base `0xce6568...d81682` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f28ef...804423` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_WETH_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eac0c...c36f85` | ⚠️ Unaudited |
| FarmOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6dbc3...f333d8` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2bb5ca...3a4391`; ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255`; base `0x2cac1f...409629`; base `0xa2600f...c3a4bc`; base `0xad7ac6...ca45b9` | ⚠️ Unaudited |
| FeeManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x061d41...c88985`; ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7`; base `0x801467...f60912`; base `0x8e95e5...3c783e`; base `0xa97dae...e809ba`; base `0xb6e7b5...e7e302`; base `0xf53951...b3616f` | ⚠️ Unaudited |
| FeeRewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x153c54...c86676`; ethereum `0x1fe9cf...704573`; ethereum `0x3d1352...962061`; ethereum `0x9397bd...270d94`; ethereum `0xdfc20a...1e43ae`; ethereum `0xef08a6...eb1153`; bsc `0xa0246c...19a14d`; bsc `0xef08a6...eb1153` | ⚠️ Unaudited |
| FeeRewardForwarderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2df3c2...085f94` | ⚠️ Unaudited |
| FixedAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a94e4...7c4539` | ⚠️ Unaudited |
| FloatStrategyMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5526f8...fcb165` | ⚠️ Unaudited |
| FloatStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910872...2ff4f1` | ⚠️ Unaudited |
| FloatStrategyMainnet_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93577c...e97537` | ⚠️ Unaudited |
| FloatStrategyMainnet_WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e3158...2161ad` | ⚠️ Unaudited |
| FlowsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd3486d...e665ac`; base `0xdb6b7c...909def` | ⚠️ Unaudited |
| FluidInstadappClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59da0c...788c25` | ⚠️ Unaudited |
| FluidInstadappStakingBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d0e2...a16aba` | ⚠️ Unaudited |
| FluidInstadappStakingSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61324...1d590f` | ⚠️ Unaudited |
| FluidLendStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0ef0e1...3c58e6`; base `0x67fb0d...444073` | ⚠️ Unaudited |
| FluidLendStrategyMainnet_EURC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0xa9c589...d3978a`; base `0xef5287...ee9458`; base `0xfc3af6...3b3464` | ⚠️ Unaudited |
| FluidLendStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2869a6...072842`; base `0x3539a1...5ec3c4`; base `0x9f5a4e...243d8b` | ⚠️ Unaudited |
| FluidProofClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x30ade0...558fe0`; base `0xb00233...952c6f` | ⚠️ Unaudited |
| FortyAcresLendStrategyMainnet_USDC | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1d5986...0f533c`; base `0xb7c0b2...4770f0` | ⚠️ Unaudited |
| FortyAcresLendStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd3563...789901` | ⚠️ Unaudited |
| FoxStrategyMainnet_FOX_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ab03...9ddf36` | ⚠️ Unaudited |
| FuseWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2d3c37...9092b1`; base `0xc84c52...2c2022`; base `0xfedbe0...c355f8` | ⚠️ Unaudited |
| FuseWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3dd245...75e3ba`; base `0xd34eea...0269cd` | ⚠️ Unaudited |
| FuseWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x762a4d...e04596`; base `0xcf38de...78e42c` | ⚠️ Unaudited |
| FusionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 16 deployments: ethereum `0x034947...cf88a8`; ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d`; base `0x294f7a...2827c7`; base `0x29ba38...5401cd`; base `0x29cfd7...cc6947`; base `0x328093...7a4f35`; base `0x42409d...2c7e2f`; base `0x45484a...6a2372`; base `0x51de88...c3b495`; base `0x5ff3d9...91a046`; base `0xafd4eb...b3d64b`; base `0xcb648a...bb58e1`; base `0xdcfc26...255cd3` | ⚠️ Unaudited |
| FusionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcd0590...d9b852` | ⚠️ Unaudited |
| FusionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x145571...07e922`; base `0x610152...8d33b7` | ⚠️ Unaudited |
| GamestopStrategyMainnet_DSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6bef...6f5464` | ⚠️ Unaudited |
| GamestopStrategyMainnet_ESD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b29fb...b6dc80` | ⚠️ Unaudited |
| GearboxV3FarmBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88982...0b45f2` | ⚠️ Unaudited |
| GearboxV3FarmDTokenClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf710b1...e67072` | ⚠️ Unaudited |
| GearboxV3FarmSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6016a...61c34e` | ⚠️ Unaudited |
| GlobalIncentivesExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0acbd1...6d6f7b`; base `0xc69171...ff476b` | ⚠️ Unaudited |
| GlobalIncentivesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x19b3ab...e8de15`; base `0x848910...3da093` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5cf7ce...0de679`; bsc `0xa166ea...b75dab`; bsc `0xcfe542...7e4d64` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x84619b...89efd5`; bsc `0xc11f5f...675a3e` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59a369...35f933` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb60e69...b7c7de`; bsc `0xc022b4...b791b2` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x444d8c...d4a67d` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb91f62...207938`; bsc `0xc547c5...d349a2` | ⚠️ Unaudited |
| Grain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6589fe...25e58e` | ⚠️ Unaudited |
| HardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33da6b...345a14` | ⚠️ Unaudited |
| HardWorkHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c748e...c17c19`; ethereum `0xa9acab...da7f96` | ⚠️ Unaudited |
| HarvestAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6628...4c5917` | ⚠️ Unaudited |
| HarvestDoHardWorkFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda45fe...b43e50` | ⚠️ Unaudited |
| IdleBorrowableStrategyUSDTMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f28f4...060e7c`; ethereum `0xbfa26f...f67dde` | ⚠️ Unaudited |
| IdleStrategyDAIMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x9a6de1...419774`; ethereum `0x9f3571...1c465c`; ethereum `0xfab83a...a0c008`; ethereum `0xfde5df...5e98d4` | ⚠️ Unaudited |
| IdleStrategyTUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a69f8...2e488c`; ethereum `0xc78589...504695` | ⚠️ Unaudited |
| IdleStrategyUSDCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6447ed...6a2d5e`; ethereum `0x93cee3...c79c3d`; ethereum `0xa5f125...5d0624`; ethereum `0xfcf1c4...11086e` | ⚠️ Unaudited |
| IdleStrategyUSDTMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x49938d...a08da6`; ethereum `0x5b96d6...366194`; ethereum `0xc7d9aa...e8fb1a`; ethereum `0xd52971...bd8a44` | ⚠️ Unaudited |
| IdleStrategyWBTCMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2f54ec...d651a3`; ethereum `0x3c3615...a3648a`; ethereum `0x6561e5...283e90`; ethereum `0xb8e9db...649c6e` | ⚠️ Unaudited |
| IdleStrategyWETHMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ffebb...25d3bf` | ⚠️ Unaudited |
| iFarmStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xdc1f8d...805f1f`; ethereum `0xf2004f...5b2bcc` | ⚠️ Unaudited |
| IncentivesGeneral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x040fa3...c9fda8` | ⚠️ Unaudited |
| IndexStrategyMainnet_MVI_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991c40...6e9522` | ⚠️ Unaudited |
| InvestmentVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x104cbe...7a0b87`; ethereum `0x1823bd...3680d4`; ethereum `0x189e6f...71d5f6`; ethereum `0x44173f...26cc7a`; ethereum `0x639422...379538`; ethereum `0x754b63...2cb257`; ethereum `0x9ba896...fcc3a5`; ethereum `0xa96865...03a6f8`; ethereum `0xbf31d6...a3b78b` | ⚠️ Unaudited |
| IporAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd75e2...719b2c` | ⚠️ Unaudited |
| IporFusionAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 57 deployments: ethereum `0x1dc356...79ae8a`; ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5`; base `0x051f90...508a81`; base `0x0de072...f69eb9`; base `0x0e7d80...cddf1f`; base `0x0feedb...1c7298`; base `0x12e9b1...f5f2f8`; base `0x17b4e0...53533d`; base `0x187937...ce0d1f`; base `0x1a5b59...65c30d`; base `0x210d79...650621`; base `0x29361d...2896e7`; base `0x3033c2...7c37ae`; base `0x392101...56a8db`; base `0x41cfe2...23eadc`; base `0x47acfd...742e26`; base `0x5ad7ab...3f8469`; base `0x75a5d4...f08044`; base `0x7ad800...3d7bad`; base `0x7c3a7f...ba08cb`; base `0x7ed269...547c6e`; base `0x82f3ed...c12fe6`; base `0xacddaf...d5957c`; base `0xb59e9c...dc4ad7`; base `0xbec0d6...8f7443`; base `0xcb8b68...f594e0`; base `0xe1abf1...81a9e4`; base `0xe5decd...e92e0e`; base `0xfbf235...2846bc` | ⚠️ Unaudited |
| IPORLendingStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1de82e...fd9c5c`; base `0xce5833...202704` | ⚠️ Unaudited |
| IPORLendingStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc43c21...3604e5`; base `0xd4ba64...063edf` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x20a5d2...b2cdd7`; ethereum `0x7ff633...b1091c`; ethereum `0x9c2a4e...51d64c`; ethereum `0xbed8a5...6d8562`; ethereum `0xcea315...c58f54`; ethereum `0xe76a43...069906` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x421c69...8a6876`; ethereum `0xcf7124...d71221` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6629db...0fd7f2`; base `0x85564f...936c0f` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x161c5f...c11df0`; ethereum `0x7ebc09...f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x114f33...130132`; ethereum `0x1c26ab...37a28d`; ethereum `0x38a409...daaee2`; ethereum `0x47f13d...4635d9`; ethereum `0x695264...7d214c`; ethereum `0xc17548...82b838`; ethereum `0xf4d002...1cffbd`; ethereum `0xf9f580...eec3de` | ⚠️ Unaudited |
| IporProtocolRouterBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x010962...fbdebb`; base `0xc2fead...00ba27` | ⚠️ Unaudited |
| IporProtocolRouterBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21d337...375918`; base `0x4edc69...1556fa` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16d104...3c26fd`; ethereum `0xcc735c...9461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa5f814...736af7`; ethereum `0xfb22c1...1d11b8` | ⚠️ Unaudited |
| IporToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e4746...289090` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x229253...518fbc`; ethereum `0x32d8d5...65ff49`; ethereum `0x53b4c5...b288d9`; ethereum `0xb00c99...9efe34`; ethereum `0xba610f...edcc7a`; ethereum `0xed21f0...44a81d` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8712a2...5669bb`; ethereum `0x9d4bd8...e85140` | ⚠️ Unaudited |
| IpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x9ac509...fda4cb`; ethereum `0xac5b04...166125`; ethereum `0xc40431...0c1f0c`; base `0x4aee70...97fb30`; base `0xff7907...af48af` | ⚠️ Unaudited |
| IpTokenDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8537b1...dadaf8` | ⚠️ Unaudited |
| IpTokenUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7c0e72...621a88`; ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| IvTokenDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93e0e...009b26` | ⚠️ Unaudited |
| IvTokenUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe176f8...52a95c`; ethereum `0xe966d1...e19048` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x086d4d...b65045`; ethereum `0x7cd10f...be5d04` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f18b9...00787d`; ethereum `0x9cb5e8...d3cfd8` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33c5a4...4324ac`; ethereum `0x8ae47c...1c319b` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x470c3a...baa37f`; ethereum `0xc52569...133277` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29f9b...9fc1b0` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_KXUSD_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c92c7...73b732`; ethereum `0xa03833...817e16` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5334cf...ba7861`; ethereum `0x95665e...2a6d32` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KBTCV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb5e2...85812f` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KLON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a0b8b...98f248`; ethereum `0xd7e7d5...927ab6` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KLONX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x170f77...45364f`; ethereum `0x5ea131...9a262e` | ⚠️ Unaudited |
| KlondikeStrategyMainnet_renBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323c72...eb3c09` | ⚠️ Unaudited |
| LiftStrategyMainnet_lfBTC_LIFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6091bb...26363f`; ethereum `0xa1ddb9...df1972` | ⚠️ Unaudited |
| LiftStrategyMainnet_wBTC_lfBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4157be...b8b274` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x22363b...b9466d`; ethereum `0x32ab94...abeae3`; ethereum `0x758e7d...621a7e`; ethereum `0xac0dcb...ab644e`; ethereum `0xe00834...0efc02`; ethereum `0xfa556d...f51b1c` | ⚠️ Unaudited |
| LiquidityMiningBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xe24b9b...d75761`; base `0xe93319...daf0f2` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a06ec...c45edc`; ethereum `0xcc3fc4...0ff366` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0984f...5ff846` | ⚠️ Unaudited |
| LiquidityMiningLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x769d54...b39e98`; base `0xf9f7ff...c013d4` | ⚠️ Unaudited |
| LiquidityRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4752db...882a96`; ethereum `0x7bf835...00f2b3` | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71339...9daa97` | ⚠️ Unaudited |
| LQTYStakingStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33a57d...6a1fe3`; ethereum `0xf13a45...95aef2` | ⚠️ Unaudited |
| MegaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xe1ec91...6d4f4d`; base `0x11cb7e...259cf3` | ⚠️ Unaudited |
| MerklClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x47aca4...b4bbcc`; base `0x310e61...cf907a` | ⚠️ Unaudited |
| MerklClaimWrapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb1c12a...b21a5b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8609fe...7ec16b`; ethereum `0xee24de...1958eb` | ⚠️ Unaudited |
| MerkleDistributorUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a7b56...37c498`; ethereum `0xba2651...580568` | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1bfb9e...22e050`; ethereum `0x8193ca...c96eb2`; base `0x62ec84...ef7ee4`; base `0xb1951f...529ec0` | ⚠️ Unaudited |
| MidasClaimFromExecutorFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefc571...6fa5d5` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1b66a7...209a3c`; ethereum `0x45209c...bdcab8`; base `0x5077b4...2f85b2`; base `0xe83697...d81a8e` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x99bc01...bec386`; ethereum `0x9aa21e...ba6db1`; base `0x1f941b...18af01`; base `0xa04176...93f9f1` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x85b23b...2cbe74`; ethereum `0xb56e99...253c2c` | ⚠️ Unaudited |
| MiltonDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x16d236...4dd42e`; ethereum `0x1fbd08...0ff864`; ethereum `0x22d87b...e9a4d6`; ethereum `0x7a9990...00073a`; ethereum `0x9def0a...1143c7`; ethereum `0xb1cee7...8fea67`; ethereum `0xb6a547...ac11f2`; ethereum `0xbf71dd...ce79d5`; ethereum `0xcd7e5e...bc03be`; ethereum `0xf5f62c...03b5ce` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7520c9...25015b`; ethereum `0xd5ef0d...5b236c` | ⚠️ Unaudited |
| MiltonSpreadModelDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9cf78e...68c5d9`; ethereum `0xfb2ee9...e95318` | ⚠️ Unaudited |
| MiltonSpreadModelUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a8998...5600ac`; ethereum `0x6bcb29...245467` | ⚠️ Unaudited |
| MiltonSpreadModelUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3eea8a...5eca9e`; ethereum `0x49f282...a3a8b0`; ethereum `0xd49b20...4efdc8`; ethereum `0xedaaf1...beac3d` | ⚠️ Unaudited |
| MiltonStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f4829...94c1d2`; ethereum `0x644149...831069` | ⚠️ Unaudited |
| MiltonUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x371f6e...159d29`; ethereum `0x6a259c...e7eb48`; ethereum `0xdb75be...974579` | ⚠️ Unaudited |
| MiltonUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0d5522...dc59b2`; ethereum `0x473285...a197b0`; ethereum `0x72f856...906283`; ethereum `0x80def4...4fa53e`; ethereum `0x8fcd17...ba8fcb`; ethereum `0xb92635...328b21`; ethereum `0xccadc4...a905e3`; ethereum `0xd15b8f...c53165`; ethereum `0xe37cfe...ef922b`; ethereum `0xe3c67a...099195`; ethereum `0xf739f3...f2c4db` | ⚠️ Unaudited |
| MiningCalculationAccountPowerUp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a293a...a28458`; ethereum `0xe8e51e...7ea585` | ⚠️ Unaudited |
| MinterExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8558d...e3b15e` | ⚠️ Unaudited |
| MinterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x973d04...182916`; ethereum `0xe5c6be...467fd4` | ⚠️ Unaudited |
| MirrorMainnet_mAAPL_UST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa5a091...0d9d46`; ethereum `0xd01488...01d1ad`; ethereum `0xfd645a...ea4206` | ⚠️ Unaudited |
| MirrorMainnet_mAMZN_UST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c3d0b...8c3d36`; ethereum `0x28a139...d90442` | ⚠️ Unaudited |
| MirrorMainnet_mGOOG_UST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0a6ade...c7747d`; ethereum `0xddfa4b...273cbf` | ⚠️ Unaudited |
| MirrorMainnet_mNFLX_UST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4a6a55...72c7c2`; ethereum `0x67d090...717c54`; ethereum `0x97487c...046567` | ⚠️ Unaudited |
| MirrorMainnet_mTSLA_UST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b2245...1b422f`; ethereum `0xb5480a...18a817` | ⚠️ Unaudited |
| MirrorMainnet_mTWTR_UST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x18fbe8...5ab9b3`; ethereum `0x3ad961...a2e5f4` | ⚠️ Unaudited |
| MithCash2FarmStrategyMainnet_MIC_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12c4b...bfae72` | ⚠️ Unaudited |
| MithCash2FarmStrategyMainnet_MIS_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636a37...d3e5a0` | ⚠️ Unaudited |
| Moonwell2AssetFoldStrategyMainnet_cbETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5a3f6c...fbe485`; base `0x9f02ac...24e5f4` | ⚠️ Unaudited |
| Moonwell2AssetFoldStrategyMainnet_wstETH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x381298...d530d6`; base `0xe30208...a0e2bc` | ⚠️ Unaudited |
| MoonwellBorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x377a5b...006353` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_CBETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xbf6600...3aa7ee`; base `0xd8a23d...495b92` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x75dd7c...b9fd38`; base `0xad5564...eda8ea` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x949a4a...192a51`; base `0xd163b5...b368b7`; base `0xfdca6d...c2c1d1` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc0a80d...0240cb`; base `0xc92115...3680f4` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2c8a3d...f40133`; base `0x6c9206...fe45f0`; base `0xc610d5...cd9fe4` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_CBETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0d1ab3...ffa76b`; base `0x43fe58...69496e` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_CBETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe03c1...0f6ccd` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_cbXRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddcf70...f6568b` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x298704...554332`; base `0x832382...ccbcb7` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3cfd1b...d840ab`; base `0x8d312f...17e389` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_EURC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10f63e...155931` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47226f...75c3f8` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_rETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1f8401...46d6d8`; base `0x23e702...e82b01`; base `0xe0e364...0b4530` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9365a8...786646` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x16880d...ad9cb8`; base `0x6498a1...8542bf`; base `0xcc7d3d...2cd26b` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4eb5f7...c68d02`; base `0xf853b4...f29652` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_USDS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xbcaa84...6a9d38`; base `0xd16e4b...88576b` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_VIRTUAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa565a0...937504` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_weETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1362a4...46488b`; base `0xff21fe...0692d6` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_WELL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x209204...bfdb00` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2696e8...007fdb`; base `0x2c0b82...ac2fa7` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2abd25...2b4001` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_wrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2257d1...599d4c` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_wstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x19d1ee...f7a169`; base `0xc36623...920d4f` | ⚠️ Unaudited |
| MoonwellSupplyStrategyMainnet_AERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4451e...53824e` | ⚠️ Unaudited |
| MoonwellSupplyStrategyMainnet_weETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23ddf3...016393` | ⚠️ Unaudited |
| MoonwellViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8cccd2...444389` | ⚠️ Unaudited |
| MorphoSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cb6...e6c8df` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_CR_ETH_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0dff24...3ad8b2` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x225368...51b6c7` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7f8414...ad1911` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_EURC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcc2f9b...ecbc7d` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xde335c...41c7c7` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GF_USDC_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd25186...f1c5bd` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GP_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x120ac2...96ac8b` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GP_USDC_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x342759...229738` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_ION_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf80023...fe7eb6` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_ION_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x05e75b...7df2d9` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2f402c...9dd474` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2e5e5a...0e5cb8` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_EURC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x3bde3a...7df816` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x250f79...10013e` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_RE7_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2e0734...ef6583` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_RE7_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9322c3...821af5` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SE_cbBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd058ce...184925` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SE_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc4198a...a02b77` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SE_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x894410...c0dfab` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SH_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x94fec0...2ba408` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SH_EURC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe38388...e972f6` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe8e14d...103240` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SHHY_USDC_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb3aa3d...cefc01` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SHP_USDC_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x78fffc...52bc4c` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SPK_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1e60ef...4fc4f4` | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_YOG_USDC_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbbb943...0c17fb` | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_BAC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x95fcbf...3141b3`; ethereum `0xcbe0b7...06985e` | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_DSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x27b7b7...4ce07f`; ethereum `0xdc558e...4d4361` | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_DSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb556...27d89c` | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_ESD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c09be...ef2e90`; ethereum `0x547401...2a8079` | ⚠️ Unaudited |
| NFT20Strategy_DUDES | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x32448d...a78658`; ethereum `0x80fa9f...b36b28` | ⚠️ Unaudited |
| NFT20Strategy_DUDES | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78eb4e...42c0cc`; ethereum `0xf7714d...ff3a4b` | ⚠️ Unaudited |
| NFT20Strategy_GPUNK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x610a02...6e1354`; ethereum `0x94c349...786bb4` | ⚠️ Unaudited |
| NFT20Strategy_GPUNK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e33ef...1f2649`; ethereum `0xca0a74...1de967` | ⚠️ Unaudited |
| NFT20Strategy_MASK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7497fd...235262`; ethereum `0xd68d8b...b2fad5` | ⚠️ Unaudited |
| NFT20Strategy_MASK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf270e3...fc0572`; ethereum `0xfdaf72...12f143` | ⚠️ Unaudited |
| NFT20Strategy_MCAT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x405fe1...957b1d`; ethereum `0xc6b1e8...ee1cb5` | ⚠️ Unaudited |
| NFT20Strategy_MCAT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x44fa58...26158b`; ethereum `0x6c0bc8...007e46` | ⚠️ Unaudited |
| NFT20Strategy_MEME | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x29a88c...b0ac61`; ethereum `0xe085c4...997918` | ⚠️ Unaudited |
| NFT20Strategy_MEME | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc830d1...693a48` | ⚠️ Unaudited |
| NFT20Strategy_MUSE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x215460...906f60`; ethereum `0x7fdc18...756a1b` | ⚠️ Unaudited |
| NFT20Strategy_MUSE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x99f315...6c3f7c`; ethereum `0xf47a48...98ee35` | ⚠️ Unaudited |
| NFT20Strategy_ROPE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4230ff...df31d7`; ethereum `0x9044d3...32c23a` | ⚠️ Unaudited |
| NFT20Strategy_ROPE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4de6cd...f31b86`; ethereum `0x7ce0c1...862395` | ⚠️ Unaudited |
| NoMintRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 116 deployments: ethereum `0x017ec1...62c57c`; ethereum `0x01f9ca...af7254`; ethereum `0x056e01...5b4924`; ethereum `0x08c795...909e5a`; ethereum `0x093c2a...2449ad`; ethereum `0x10f1fc...41f438`; ethereum `0x12e75b...b07f5a`; ethereum `0x156733...3764b5`; ethereum `0x158edb...42907c`; ethereum `0x15d3a6...5b5b4a`; ethereum `0x16fbb1...65bfa3`; ethereum `0x19f8ce...aa9919`; ethereum `0x26582b...8ab136`; ethereum `0x27f12d...8be7d9`; ethereum `0x298a92...54daa6`; ethereum `0x2a80e0...bd70bd`; ethereum `0x2e2580...cbffe6`; ethereum `0x2f97d9...f6f244`; ethereum `0x316de4...a41270`; ethereum `0x346523...840bd1`; ethereum `0x3483ad...538cba`; ethereum `0x3631a3...321918`; ethereum `0x3a0f8b...0f3793`; ethereum `0x3bdc3e...d1a105`; ethereum `0x3cdde3...a72280`; ethereum `0x3da9d9...cdff8e`; ethereum `0x40c34b...b46614`; ethereum `0x43286f...983e58`; ethereum `0x443563...27d690`; ethereum `0x45a760...82f393`; ethereum `0x489c78...d1d46e`; ethereum `0x493896...393b8f`; ethereum `0x4f7c28...c878bd`; ethereum `0x5365a2...7384fb`; ethereum `0x538613...ab0b68`; ethereum `0x59258f...8dbd4f`; ethereum `0x5bd997...19f58d`; ethereum `0x6291ec...b1d7cc`; ethereum `0x63e7d3...0b0e7a`; ethereum `0x6555c7...c11958`; ethereum `0x6ac4a7...4994a2`; ethereum `0x6b4e1e...0cf7a6`; ethereum `0x6d1b6e...d349a8`; ethereum `0x6f8a97...465517`; ethereum `0x72c50e...a0a3c1`; ethereum `0x747318...0448b4`; ethereum `0x74fad0...4da5e6`; ethereum `0x75071f...d1c960`; ethereum `0x76aef3...1ba1fa`; ethereum `0x77ee32...2f0676`; ethereum `0x78c3e5...36b089`; ethereum `0x797f11...9cce48`; ethereum `0x7aeb36...7b859c`; ethereum `0x7af445...4be9b8`; ethereum `0x7b8ff8...0cb4f6`; ethereum `0x7c4972...7a9b33`; ethereum `0x82bdac...64e04b`; ethereum `0x84646f...8328c7`; ethereum `0x876433...43a4c3`; ethereum `0x8bcbf1...5a3814`; ethereum `0x8dc427...f5c158`; ethereum `0x905cf5...2ec4f2`; ethereum `0x917d64...9ea77b`; ethereum `0x91b5cd...c182fc`; ethereum `0x9494a3...9608c4`; ethereum `0x9523fd...80ef34`; ethereum `0x98ba5e...4588c1`; ethereum `0x99b0d6...5cf9bf`; ethereum `0x9a63d2...f5f946`; ethereum `0x9a9a61...19fddf`; ethereum `0xa112c2...17a268`; ethereum `0xa3cf8d...3a3db5`; ethereum `0xa56522...bc64ef`; ethereum `0xad9169...f22abd`; ethereum `0xae024f...b0546d`; ethereum `0xae160a...0268c5`; ethereum `0xb036b5...a453e5`; ethereum `0xb0c22d...533800`; ethereum `0xb2b405...a95520`; ethereum `0xb3b56c...421f89`; ethereum `0xb492fa...7a11bc`; ethereum `0xb4d1d6...39ff95`; ethereum `0xbb846a...a3e2b0`; ethereum `0xbdbfa2...d3f054`; ethereum `0xc02d1d...4d1a57`; ethereum `0xc0f51a...697de1`; ethereum `0xc24da7...5a311e`; ethereum `0xc47ef3...d18721`; ethereum `0xc5ddd0...6a83ca`; ethereum `0xc6f39c...f87d95`; ethereum `0xc97dda...dd78f4`; ethereum `0xcdac55...64b894`; ethereum `0xcfe110...4bf9c5`; ethereum `0xd8f5a5...a7b6d8`; ethereum `0xda5e97...cdcfad`; ethereum `0xdb9c2e...b2137e`; ethereum `0xdc2724...40d07f`; ethereum `0xddb5d3...d3120e`; ethereum `0xe11c81...158a9d`; ethereum `0xe1f9a3...d44633`; ethereum `0xe2d9fa...917194`; ethereum `0xe58f0d...3a2b16`; ethereum `0xe604fd...0adbe1`; ethereum `0xe72d38...e99b6f`; ethereum `0xec56a2...a0ecda`; ethereum `0xef4da1...d47579`; ethereum `0xf1181a...36cb93`; ethereum `0xf33089...626020`; ethereum `0xf3b2b1...21f799`; ethereum `0xf46557...7e77df`; ethereum `0xf4784d...90725b`; ethereum `0xf4d50f...5cd940`; ethereum `0xf5b221...2bbbf8`; ethereum `0xf71042...2cc9f0`; ethereum `0xf9e5f9...c9484b`; ethereum `0xfe83a0...220d0d` | ⚠️ Unaudited |
| NoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b9a75...9ec1fd`; ethereum `0xedef95...bf0c0f` | ⚠️ Unaudited |
| NoopStrategyMainnet_FARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x709d39...860581` | ⚠️ Unaudited |
| NoopStrategyMainnet_iFARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc23f52...597901`; base `0xe2162c...255e35` | ⚠️ Unaudited |
| NoopStrategyMainnet_xBSX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74f112...60de39` | ⚠️ Unaudited |
| NoopStrategyStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x041fde...89a42e`; ethereum `0x099a92...c7b06a`; ethereum `0x0a1ad1...276e08`; ethereum `0x205971...131c82`; ethereum `0x421462...a0b91f`; ethereum `0x6b506e...85a502`; ethereum `0xabcea9...013ae6`; ethereum `0xc4c0d5...a8dd87`; ethereum `0xe5b583...7e6c16`; ethereum `0xe71545...4db436`; ethereum `0xe8ab8f...126377`; ethereum `0xedbdc6...b0425f`; ethereum `0xf066bf...d21967`; ethereum `0xf3b6ff...22824f` | ⚠️ Unaudited |
| NotifyHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe20c31...65053c`; ethereum `0xeeae0c...0716dd` | ⚠️ Unaudited |
| NotifyHelperAmpliFARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9b13b...f4c9dc` | ⚠️ Unaudited |
| NotifyHelperGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xf328f7...3b0674`; base `0xf69058...0ae746` | ⚠️ Unaudited |
| NotifyHelperIFARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8af7eb...aab64e` | ⚠️ Unaudited |
| NotifyHelperStateful | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x71316a...1dd40a`; ethereum `0xbf025c...37a14d`; bsc `0x9be089...a48995`; bsc `0xde7099...2eca1c`; bsc `0xf5eaa5...83371f`; base `0x43285e...7ac58d` | ⚠️ Unaudited |
| OdosSwapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xc13f3f...1cb691`; base `0xc08147...496e19` | ⚠️ Unaudited |
| OneInchDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa6031a...eae93a`; ethereum `0xc5ac3a...51afac` | ⚠️ Unaudited |
| OneInchStrategy_1INCH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d7da9...95d8d1`; ethereum `0xee8c92...af484f` | ⚠️ Unaudited |
| OneInchStrategy_1INCH_WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ecae4...31e800`; ethereum `0xb3ffe8...6825cc` | ⚠️ Unaudited |
| OneInchStrategy_ETH_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x39ad71...1c9da3`; ethereum `0xb97fdc...e666af` | ⚠️ Unaudited |
| OneInchStrategy_ETH_ONEINCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b8e2b...b2286d`; ethereum `0x45d17d...ffbbd5` | ⚠️ Unaudited |
| OneInchStrategy_ETH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ea2db...fa4d95`; ethereum `0xab9f3c...eca833` | ⚠️ Unaudited |
| OneInchStrategy_ETH_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x677296...33eb83`; ethereum `0x7fb83f...1a4b0d` | ⚠️ Unaudited |
| OneInchStrategy_ETH_WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15ada3...77d17d`; ethereum `0xce2fa2...745972` | ⚠️ Unaudited |
| OneInchStrategyMainnet_1INCH_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd7a4...db343b` | ⚠️ Unaudited |
| OneInchStrategyMainnet_1INCH_renBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4909bf...8d42ad` | ⚠️ Unaudited |
| OneValuePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xd7aa52...0e61cf`; base `0x72713c...4db8df` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-241748 | `0xd08a29...fb4034` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-241749 | `0xe7798f...5a77ea` | ⚠️ Unaudited |
| OraclePublisher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x254a66...b505ff`; ethereum `0xa735b8...7dd508` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x00b7ba...89a1f6`; bsc `0x336e07...7afa5f` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0a25f4...700ec4`; bsc `0x5ed588...1d9df2` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x23d5b0...480177`; bsc `0x59258f...8dbd4f` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4e48c5...a97161`; bsc `0x7384ea...91b41b` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2eadfb...70f006`; bsc `0x8c4ffa...976096`; bsc `0xd40c75...f2c10f`; bsc `0xf60afe...8bded0` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x465888...394f36`; bsc `0xd432f8...9d8c07` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a1ac3...fdb64b`; bsc `0x573cfe...777709` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x377203...5825b4`; bsc `0xd960ca...f65fc9`; bsc `0xe7666f...27c330` | ⚠️ Unaudited |
| PancakeStrategyMainnet_ETH_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4d82c4...fa96d2`; bsc `0x577b54...366760` | ⚠️ Unaudited |
| PancakeStrategyMainnet_ETH_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8c4ef5...fc9606`; bsc `0xa83292...59e0e7` | ⚠️ Unaudited |
| PancakeStrategyMainnet_ETH_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xed274d...7102c2`; bsc `0xfbc74e...6c2e58` | ⚠️ Unaudited |
| PancakeStrategyMainnet_USDT_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x05c31c...ea045d`; bsc `0x164385...a76b48`; bsc `0xe5464f...f461fa` | ⚠️ Unaudited |
| PancakeStrategyMainnet_USDT_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7a2af2...b5e1a0`; bsc `0x93da6a...b94c51` | ⚠️ Unaudited |
| PancakeStrategyMainnet_XVS_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2d9893...c37d8d`; bsc `0x3fd2d3...859b75`; bsc `0xa0e883...ef240d` | ⚠️ Unaudited |
| PancakeStrategyMainnet_XVS_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4d3ef7...25e2cf`; bsc `0xde1116...4a24a5` | ⚠️ Unaudited |
| PauseFunctionPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x7846be...984d59`; base `0x10e64e...31ce88` | ⚠️ Unaudited |
| PendleSwapPTFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea381...d49f95` | ⚠️ Unaudited |
| PickleStrategy3PoolMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x885d59...534463` | ⚠️ Unaudited |
| PickleStrategyDaiMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81daba...7dc7cd` | ⚠️ Unaudited |
| PlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x0552e2...bb6ca8`; ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472`; base `0x09f77a...0588ea`; base `0x0a4732...22b050`; base `0x168826...188346`; base `0x496e39...c3fecd`; base `0x55d8d6...908a77`; base `0x6539fd...6b8dd1`; base `0x71f856...b4a1cb`; base `0x792418...70530a`; base `0x94d2de...73e695`; base `0xa121d2...49dbe9`; base `0xc4ccef...50cd61`; base `0xdab319...44f368`; base `0xe2996f...29e5d0`; base `0xf590aa...d16ecb` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 11 deployments: ethereum `0x08dd57...e48ee8`; ethereum `0x29d322...8fafbb`; ethereum `0x3151ce...809d90`; ethereum `0x43a32d...4a1e68`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x978141...c7b37b`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2de732...0171ab`; ethereum `0x394356...49df44`; base `0x53defd...3ad5d4`; base `0x57866b...c97870`; base `0x5bd0b6...4a535c` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x43ee02...9c7ca2`; ethereum `0x7ef926...6964d2`; ethereum `0xabab98...c18e3e` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x842494...7d5062`; ethereum `0xe9385e...b4fb5f` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x0d877d...8359c4`; base `0x31a421...66db6b`; base `0x787289...12aa97`; base `0xed5d22...e8bde0` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x31a36d...6c421c`; base `0x370a3d...2de6d9`; base `0xaf46fc...2b3a3f`; base `0xd00e82...a5c562` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | base | n/a | 7 deployments: base `0x3ba902...b0e1eb`; base `0x60664e...53beed`; base `0xa51787...011937`; base `0xb02d87...4e8599`; base `0xc4c00d...9f68ec`; base `0xd7412a...059ad5`; base `0xfe8b23...072de6` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x45aa96...f58216` | ⚠️ Unaudited |
| PlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: ethereum `0x3bbe70...0da9a8`; ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5`; base `0x11b25b...1b59ac`; base `0x298351...da5151`; base `0x367878...11e401`; base `0x6fef68...c7ee4b`; base `0x71214d...973b3b`; base `0xac0ad2...960c90` | ⚠️ Unaudited |
| PlasmaVaultRedeemFromRequestFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x906af6...53af0d`; base `0x07c547...aa44df` | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x713038...e09542`; base `0xe14a69...9c616b`; base `0xef4014...743c09` | ⚠️ Unaudited |
| PlasmaVaultVotesPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x118a7d...0cb266` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa4e17a...7b4bc0`; bsc `0xd73381...48e835` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c2533...2bd0b8`; bsc `0xba314e...0aff31` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8c72e9...a029c3`; bsc `0xbcdf4e...a834ca` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE_BNBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2965b5...1f051f`; bsc `0x6c55c0...bd2374` | ⚠️ Unaudited |
| PotPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 117 deployments: ethereum `0x079158...9ddc69`; ethereum `0x08aa65...c749b2`; ethereum `0x0b4433...310a5c`; ethereum `0x0c67fb...15a7f5`; ethereum `0x11301b...2ab1d8`; ethereum `0x14ac1b...0845b9`; ethereum `0x15417a...45d9df`; ethereum `0x15aeb9...80f390`; ethereum `0x174678...7b980f`; ethereum `0x17ea33...948c47`; ethereum `0x1997e5...82501b`; ethereum `0x199eff...061004`; ethereum `0x1a0e12...db8e52`; ethereum `0x257968...d2aa11`; ethereum `0x269fa8...5b45af`; ethereum `0x277c21...34b2e4`; ethereum `0x2bd2ba...f83ec4`; ethereum `0x31a69b...93626b`; ethereum `0x34d358...25dc65`; ethereum `0x35de0d...7fbd8f`; ethereum `0x378c31...4fcb9d`; ethereum `0x3b808a...376842`; ethereum `0x47f4fc...3d21cc`; ethereum `0x516658...d4783d`; ethereum `0x54941a...4ba269`; ethereum `0x56db0f...a5433c`; ethereum `0x59a87a...9a79bb`; ethereum `0x59eeb3...e5fa8b`; ethereum `0x5aab6c...8c22b0`; ethereum `0x5ed17c...c7beca`; ethereum `0x6055d7...a4f507`; ethereum `0x611ac2...cb5bb2`; ethereum `0x677ad6...dd62be`; ethereum `0x694a3a...b7964b`; ethereum `0x6b6712...80f270`; ethereum `0x6ce6b6...843792`; ethereum `0x6dc8be...9f5a34`; ethereum `0x719d70...1b7417`; ethereum `0x743bd8...8383b1`; ethereum `0x7931d6...628e2d`; ethereum `0x85f11e...0b485f`; ethereum `0x8ab334...4d2ba4`; ethereum `0x8e54bb...377e32`; ethereum `0x937d4b...bf755a`; ethereum `0x95d2e1...381547`; ethereum `0x9b36b4...a804ee`; ethereum `0x9c6fbd...708dd1`; ethereum `0xa6f85b...0035ef`; ethereum `0xa73363...593cab`; ethereum `0xa9e60d...ad1a51`; ethereum `0xaa6f97...886e75`; ethereum `0xab2e51...2b23dc`; ethereum `0xae8d48...008606`; ethereum `0xb33a40...5858c3`; ethereum `0xb5f7fd...c310b7`; ethereum `0xba20df...224a76`; ethereum `0xc02f8f...a5d247`; ethereum `0xc5fc56...7cc2d1`; ethereum `0xd12747...0c1128`; ethereum `0xd18f25...1b2dbe`; ethereum `0xd2d194...cea17b`; ethereum `0xd8a3c7...f2f270`; ethereum `0xdc1873...b04d1f`; ethereum `0xdd496a...0941fe`; ethereum `0xddcaa7...593039`; ethereum `0xe7e1c3...980113`; ethereum `0xe9d557...5d6c85`; ethereum `0xea2ec0...ef3b10`; ethereum `0xefb78d...e4082d`; ethereum `0xf435e8...a8c5f1`; ethereum `0xf4ead5...ba1807`; ethereum `0xf55080...64a82e`; ethereum `0xf58337...22387d`; ethereum `0xf8cbfe...496102`; ethereum `0xf9bcab...61bee6`; ethereum `0xfbfbe3...e23b82`; ethereum `0xfd1121...c9f7ae`; bsc `0x03292b...d0966a`; bsc `0x03b58c...a1a2ba`; bsc `0x063eb3...318c52`; bsc `0x0694e3...05f745`; bsc `0x08b673...172066`; bsc `0x1bb6fd...2f299b`; bsc `0x221ed0...882cf3`; bsc `0x26a4fe...a7f84c`; bsc `0x2fee56...0a472c`; bsc `0x333103...bacc0f`; bsc `0x416588...e420fc`; bsc `0x57c305...8560a2`; bsc `0x5c6fe0...b2498f`; bsc `0x7002fc...0b9368`; bsc `0x76aadd...33abe7`; bsc `0x78963b...ea8ee9`; bsc `0x7caa01...da8792`; bsc `0x8709b4...c9510b`; bsc `0x884843...604449`; bsc `0x8e8ca3...3e7874`; bsc `0x9178f4...2d9998`; bsc `0x948125...e441cd`; bsc `0x9b36e1...88072c`; bsc `0xb3b56c...421f89`; bsc `0xc2a1fa...39e61c`; bsc `0xc6f39c...f87d95`; bsc `0xd16a73...03d76a`; bsc `0xd4bc60...f86ab0`; bsc `0xda88e3...22f6cd`; bsc `0xdeb314...5c1406`; bsc `0xe5f739...efccc1`; bsc `0xe637e7...e91c16`; bsc `0xe83f39...9f4f06`; bsc `0xe9e035...d7b871`; bsc `0xea2c3c...0ebe9e`; bsc `0xeab819...280310`; bsc `0xf1121f...f1c34e`; bsc `0xf53c67...5cb524`; bsc `0xfc8c1f...2a6277`; bsc `0xfe7f45...894b1a` | ⚠️ Unaudited |
| PotPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xb98862...fb71f0`; ethereum `0xbb7239...aca752`; base `0x68b2fc...e59d03`; base `0x8f0d40...e96c7d` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x586ac8...6d49eb`; ethereum `0xf4725f...7f3ab1` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78dbf1...84a0f7`; ethereum `0xd72915...95409f` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa6b2d8...eaa99e`; base `0xa8799d...26c0cc` | ⚠️ Unaudited |
| PowerTokenLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x5a4fc8...d21ec3`; base `0x4084e8...3caa33` | ⚠️ Unaudited |
| PreHooksInfoReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ecd96...e19821`; base `0x79d31b...57c89a` | ⚠️ Unaudited |
| PriceManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x0fc2d5...b07609`; ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82`; base `0x0a1d90...9e0086`; base `0x465e57...96dc9e`; base `0x56eb01...8d37fa`; base `0x5da219...936e5c` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09321c...024da2`; ethereum `0xb7018c...66f2f7` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf0ff...0385c9` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3710ff...0dfc43`; base `0x41883f...6a01fa` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x07fc09...062930`; ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362`; base `0x157ba7...655e27`; base `0x3ff6d9...67b32c`; base `0x4195da...ce824e`; base `0x69edba...b49ad0`; base `0x8ab30c...84a27e`; base `0xa5fffb...9d771b` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc9f32d...d664c6`; ethereum `0xeba87a...f9317c` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0b2eb3...85be09`; base `0x2bc5bc...6662d3` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xcf1e01...f6d878`; base `0xd9b73a...08bed0` | ⚠️ Unaudited |
| ProfitSharingReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd7197...676a2c` | ⚠️ Unaudited |
| PtPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1cb493...26007c`; ethereum `0xe2a264...52db9b` | ⚠️ Unaudited |
| PtPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x250576...b0120c`; base `0xac0655...8e4edc` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x1d5a37...9e1192`; bsc `0xf608fb...964791`; base `0x061886...6b12b3`; base `0x4c26b2...c0215d` | ⚠️ Unaudited |
| ReferralPlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x399502...063585`; base `0xecd2bf...5e34db` | ⚠️ Unaudited |
| RegularVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bb28f...e2bef8`; base `0x9c0f33...65a891` | ⚠️ Unaudited |
| RequestFeeRefundFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x00b6bd...0c831b`; base `0x87ebf5...d2e826`; base `0xa47ba8...af0468` | ⚠️ Unaudited |
| RewardDistributionSwitcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x92ddd3...f7618d`; ethereum `0xc27100...4c2923` | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xaa2442...d0866a`; base `0x2627a9...999540`; base `0xf61f50...680789` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1695a1...271718`; base `0x4c60e5...75d2d8`; base `0x52aef4...4846fb`; base `0x88937a...e8d329`; base `0x9d8265...463ea0` | ⚠️ Unaudited |
| RewardPrePayMorhpo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1e905e...daf62c`; base `0x85def1...968843` | ⚠️ Unaudited |
| RewardsClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 51 deployments: ethereum `0x11cbc3...10367f`; ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61`; base `0x05224f...c5e4b8`; base `0x0c0af1...116d2c`; base `0x0ca78d...5b4b06`; base `0x1b400d...4ec2bc`; base `0x269528...34e02f`; base `0x2e4aa9...8c1f13`; base `0x32e1cf...84be1b`; base `0x48fb38...dd871e`; base `0x58c245...cb2375`; base `0x59a7b9...1b746f`; base `0x659fd0...b364ee`; base `0x823ed7...907699`; base `0x88a104...fee7a5`; base `0x93644f...0134a2`; base `0x9688b3...876b5b`; base `0xbca7bd...c1ae24`; base `0xc0dddb...b0d5dc`; base `0xc6b0b9...7a81fa`; base `0xdd5368...ccab45`; base `0xe90ce6...53a136`; base `0xe912c7...86f42f`; base `0xec073a...c42f78`; base `0xef51c3...c3b3ea`; base `0xeffb20...e00a59`; base `0xf7d31f...fd91b9`; base `0xfb1f83...3b00ad` | ⚠️ Unaudited |
| RewardsManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x274567...c54028`; ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e`; base `0x06b64d...35a7ae`; base `0x4f40da...bf488c`; base `0xed6055...220495`; base `0xf79ada...5a212c` | ⚠️ Unaudited |
| RewardToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0246c...19a14d` | ⚠️ Unaudited |
| SDaiPriceFeedEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x974672...70805d` | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf94d8...b37399` | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x256cea...5cb7b4` | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecdae2...2edffd` | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x845cec...5cbd8b` | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58e274...7af949` | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6708f8...f71740` | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4795af...fd942b` | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38fae3...0ddda6` | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec9aa9...2f207c` | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7068...b4fd01` | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_wstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5dcccf...24fa4b` | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_cbETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9acd57...230726` | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cece1...7b47e1` | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc3fff...c86df9` | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_USDbC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a4184...e04b4c` | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8b2b0...bfe507` | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_wstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b8b72...3c2212` | ⚠️ Unaudited |
| ShibaswapDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94529e...460a53` | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086aca...17998f` | ⚠️ Unaudited |
| SiloV2BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d24b8...13005b` | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d5c1...038fb5` | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897d96...defa56` | ⚠️ Unaudited |
| SNXRewardUniLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0973ed...ad840c`; ethereum `0x0a7d74...774ac8`; ethereum `0x0fd7c7...0efc6e`; ethereum `0x13627b...6050c3`; ethereum `0x2cf4ce...34cbd4`; ethereum `0x2fee56...0a472c`; ethereum `0x46a361...03dc52`; ethereum `0x46ec90...bee00a`; ethereum `0x50f119...26c6fd`; ethereum `0x7f522f...ee544d`; ethereum `0x94e74a...40cdbb`; ethereum `0x987a16...79baac`; ethereum `0xa82660...4c212c`; ethereum `0xb40ec6...7b4c55`; ethereum `0xb43aa2...12b6c2`; ethereum `0xc6e973...aef5c0`; ethereum `0xcf6d6e...579309`; ethereum `0xd3927f...cf3c90` | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_BAC_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89cbb...184090` | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_DAI_BAS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ca70...2e4436` | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_MIC_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa81363...95e786` | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_MIS_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x940db2...2d8d7e` | ⚠️ Unaudited |
| SoapIndicatorRebalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x213534...4d7100`; ethereum `0x4c9a6f...64a2b0`; ethereum `0x9cae0d...c2ce95`; ethereum `0xb70a2e...8d99e6`; ethereum `0xb933b5...0cc060`; ethereum `0xea87d3...64e0a1` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc843bb...23d4af`; bsc `0xe8e106...adcc53` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffbf79...a8cc70` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x381b02...bcff9f`; bsc `0xf1ae8e...f11e90` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb9681...55294f` | ⚠️ Unaudited |
| Spread28Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d531...e8dad5` | ⚠️ Unaudited |
| Spread60Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36618c...9a81ab` | ⚠️ Unaudited |
| Spread90Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c1cf...7795d5` | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x768762...a358fb`; base `0x3d21ad...949924` | ⚠️ Unaudited |
| SpreadCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948548...5dcacd` | ⚠️ Unaudited |
| SpreadRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11cc7a...81ede2`; ethereum `0xac1c86...2338ed` | ⚠️ Unaudited |
| SpreadRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa14eb...0c90a8` | ⚠️ Unaudited |
| SpreadStorageLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50c61...6c12c6` | ⚠️ Unaudited |
| SpreadStorageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45336f...f1493e` | ⚠️ Unaudited |
| SpreadUsdcBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31d5bf...420ab8` | ⚠️ Unaudited |
| StableVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95a02...f3ebf9` | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c59d9...1c3816` | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec22c...77defc` | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be6e7...ce3c1e` | ⚠️ Unaudited |
| StakeService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x379038...36f6c7`; ethereum `0xf83027...deafea`; base `0x15aa5c...eff55b` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-241751 (2 proxies) | 2 deployments: arbitrum `0x8553d2...c83c70`; arbitrum `0x9dca58...8d46c1` | ⚠️ Unaudited |
| StanleyDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f0279...13a817`; ethereum `0xadeb2f...3c1872` | ⚠️ Unaudited |
| StanleyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe945ef...a339e4` | ⚠️ Unaudited |
| StanleyUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb512e3...14114b` | ⚠️ Unaudited |
| StanleyUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6923e...5903d6` | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x176f64...e69584`; ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x808540...ee3bcf`; ethereum `0x993368...203d62`; ethereum `0xc01fd7...77712e`; ethereum `0xc95cbe...d0d197`; ethereum `0xe04d1a...31598a`; bsc `0xc95cbe...d0d197`; base `0x8de4b3...50b792`; base `0x98e03c...6e13f9` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x526d00...f1f62f`; ethereum `0xfa0186...999f8c` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x58703d...c5127d` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77fcae...ba028f` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84317...a574c9` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87cef1...9fc774`; ethereum `0xcf7be4...bc7de0` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbb8383...a2a5da`; ethereum `0xe4cd9a...9ab5b1` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc301ec...83d7df`; ethereum `0xe5257c...82f526` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84450...03d751` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc26be5...97239c`; ethereum `0xd45763...44d6db` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceceb6...60ec2d` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d3921...5c6c0e`; ethereum `0xbc9854...576554` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 62 deployments: ethereum `0x14e7c3...932f2a`; ethereum `0x337b95...5c0062`; ethereum `0x5e1af8...4e0dac`; ethereum `0x6aeb7b...064b1a`; ethereum `0x77fcb2...82a8a9`; ethereum `0x8a0ee1...422c7c`; ethereum `0xbdc7d6...eee37d`; ethereum `0xdbedfb...e372be`; ethereum `0xfdb0cd...62747f`; bsc `0x0bcaac...2745dc`; bsc `0x0c4224...99d2f6`; bsc `0x117eac...4f9641`; bsc `0x25597b...564ee3`; bsc `0x28db27...617b02`; bsc `0x3243aa...8d003f`; bsc `0x35c95f...3d3eb3`; bsc `0x46c52b...3fdc54`; bsc `0x4a0b8d...110a54`; bsc `0x4f0273...f25111`; bsc `0x53df66...4b87e3`; bsc `0x5666b9...dc6b17`; bsc `0x58476e...28afd3`; bsc `0x66b761...335c34`; bsc `0x6b138b...8b0081`; bsc `0x6cec99...f7f74c`; bsc `0x6e5226...17cefb`; bsc `0x74d3df...8ba127`; bsc `0x78c3e5...36b089`; bsc `0x7a299a...f09370`; bsc `0x7fb685...aadfe1`; bsc `0x90d695...c12267`; bsc `0x927c07...136b19`; bsc `0x9404b2...721cbe`; bsc `0xa6fe29...f66021`; bsc `0xa75ac7...23c015`; bsc `0xae3a7a...b5df41`; bsc `0xb0f5ae...bcd9ff`; bsc `0xbf2eba...3b27a1`; bsc `0xc7cc4c...e6af8c`; bsc `0xc9d337...0d0dde`; bsc `0xced431...695628`; bsc `0xd77e6b...d2a989`; bsc `0xe24e96...2a01fc`; bsc `0xe7a699...e4db8c`; bsc `0xfe11d3...8fbe67`; base `0x0f9677...6dd924`; base `0x1573f3...4e4cfa`; base `0x23ed44...b5c33f`; base `0x3438ac...196f18`; base `0x39e8aa...d8a633`; base `0x492eaa...c0fc16`; base `0x4a8b95...477510`; base `0x5ac8c0...00e7cc`; base `0x626111...754a4c`; base `0x69e2a7...388205`; base `0x6af40c...e02221`; base `0x99b171...85d93f`; base `0x9d7cd2...1d8cec`; base `0xa4e7b6...9d1fe8`; base `0xb38145...33966d`; base `0xbd2dd5...c6d125`; base `0xec5b8b...1800e7` | ⚠️ Unaudited |
| StrategySwitchHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0b07...a998f6` | ⚠️ Unaudited |
| SushiBuybackStrategyMainnet_PERP_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x630d43...05e781` | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_DAI_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x923ca6...5dda65` | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_USDT_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x33fed4...1a3cd4` | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_WBTC_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4cad48...e9fab8` | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_WETH_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e8c91...6b4c43` | ⚠️ Unaudited |
| SushiMasterChefLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x180a71...e261b6`; ethereum `0x895cc1...225322`; ethereum `0xd5d2ad...c3cec0`; ethereum `0xdd1dfb...97f053` | ⚠️ Unaudited |
| SushiStrategyMainnet_SUSHI_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa44ffa...87ebee` | ⚠️ Unaudited |
| SushiStrategyMainnet_UST_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x18fe4b...6c7cd5` | ⚠️ Unaudited |
| SwapExecutorEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x5e3654...1bd1c4`; base `0x1ea20f...0adc5d`; base `0x954339...442310` | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a7034...5205e9`; ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SwirlLPStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4ee876...a4ced2`; bsc `0x9048a1...8363a6` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1a6b...41f537` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ccd7c...dcd791` | ⚠️ Unaudited |
| TradingCompetitionRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0aa4a0...05f824`; ethereum `0x3d1438...5623e6` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-241750 | `0xab0b2d...d7bbff` | ⚠️ Unaudited |
| UniStatusViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25c81e...e6555b`; ethereum `0xe96141...a25c50` | ⚠️ Unaudited |
| UniV3Dex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3c304e...bf3992`; base `0x867838...931138` | ⚠️ Unaudited |
| UniVaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 19 | ethereum | n/a | 19 deployments: ethereum `0x04edb1...ac116b`; ethereum `0x0a1ab9...ec0786`; ethereum `0x0b4c4e...49c7c6`; ethereum `0x1851a8...998efc`; ethereum `0x235768...0cd88c`; ethereum `0x3f16b0...d15595`; ethereum `0x45a78d...994a83`; ethereum `0x50dccf...34f6d1`; ethereum `0x5c49e0...c08b60`; ethereum `0x65383a...2c62ac`; ethereum `0x7095b0...437408`; ethereum `0x7fb7e4...4162cc`; ethereum `0x8e1de1...6a0b58`; ethereum `0x970cc1...bc9158`; ethereum `0xc1aa39...2932a1`; ethereum `0xc905cc...55d4bb`; ethereum `0xe29385...8a176a`; ethereum `0xec665d...3d1cfa`; ethereum `0xfb3871...5695bc` | ⚠️ Unaudited |
| UniversalLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x875680...54dba4`; base `0x589ff9...c557d5` | ⚠️ Unaudited |
| UniversalLiquidatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x788217...dbc480`; base `0x07d212...f07a4c` | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xa07780...1fdbe5`; ethereum `0xd932d4...f2dbf0`; ethereum `0xee9a18...218768`; base `0x1dc6ec...dbff72`; base `0x332aeb...c86eb8`; base `0xf026f9...3ae04b` | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuseNoSlippage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x264aa7...6fcdfe`; base `0xc41cee...cb7b8e` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x54c860...df5d50`; ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584`; base `0x2902fa...de1a43`; base `0x98f36e...7df5f8` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x4e0b22...da53e0`; base `0x38bd09...f72370`; base `0x4c3acd...b03710` | ⚠️ Unaudited |
| UniverseStrategyMainnet_SUSHI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5f5fb7...1003fc` | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0cf053...fc1a5c`; base `0x7f9179...530f0c` | ⚠️ Unaudited |
| UpdateWithdrawManagerMaintenanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74ca34...0bb0d0` | ⚠️ Unaudited |
| UpgradableStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x9cf5ab...6110b7`; base `0x583f12...7fce77` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 86 | ethereum | n/a | 87 deployments: ethereum `0x01112a...cc2073`; ethereum `0x01bd09...42b04a`; ethereum `0x02d77f...95356f`; ethereum `0x07dbe6...e1963a`; ethereum `0x0ca199...365a15`; ethereum `0x0fe428...9c38f3`; ethereum `0x11804d...63ab53`; ethereum `0x12db4a...06039f`; ethereum `0x13027a...9179f6`; ethereum `0x145f39...ab69c8`; ethereum `0x14e7a0...61d865`; ethereum `0x1e5f4e...ecebef`; ethereum `0x203e97...3f241e`; ethereum `0x227a46...0edbb3`; ethereum `0x230d3e...2d3e62`; ethereum `0x24c562...fd216e`; ethereum `0x261930...e01741`; ethereum `0x274aa8...375b48`; ethereum `0x29780c...0140f2`; ethereum `0x29ec64...6e0027`; ethereum `0x2a32dc...4dfe48`; ethereum `0x307e27...a9cdb7`; ethereum `0x371e78...50f86b`; ethereum `0x3860bd...59b3f5`; ethereum `0x3cf83c...f48574`; ethereum `0x4282b7...481191`; ethereum `0x45a9e0...303ec2`; ethereum `0x48473e...b4ffad`; ethereum `0x4b1cbd...bbb68a`; ethereum `0x4d4b6f...36ffc8`; ethereum `0x4d4d85...fee521`; ethereum `0x577426...bcb89a`; ethereum `0x5ade38...b5c78e`; ethereum `0x5c0a3f...f85524`; ethereum `0x5cd9db...5dcd4d`; ethereum `0x5ea74c...339613`; ethereum `0x604925...4dc583`; ethereum `0x633c48...fb75fd`; ethereum `0x639d4f...ba9e54`; ethereum `0x64035b...e60745`; ethereum `0x640704...18f1b5`; ethereum `0x683e68...cb8664`; ethereum `0x6bccd7...e4c43b`; ethereum `0x6eb941...1e2e5a`; ethereum `0x6f1416...8d157d`; ethereum `0x708b10...6ed47d`; ethereum `0x767462...54441b`; ethereum `0x7ddc3f...362cff`; ethereum `0x8255fe...9bc5ee`; ethereum `0x8334a6...1350b7`; ethereum `0x84a1df...3c0a02`; ethereum `0x8a0f6b...ea33e7`; ethereum `0x8aa055...18ff21`; ethereum `0x8bf3c1...b1abb1`; ethereum `0x8d2450...e1ab5b`; ethereum `0x966a70...246c72`; ethereum `0x998ceb...f00fad`; ethereum `0x99c256...f396ae`; ethereum `0x9aa8f4...6aedf8`; ethereum `0x9af516...fe7734`; ethereum `0x9b3be0...15588b`; ethereum `0xa10a74...567e34`; ethereum `0xa79a08...d6bb36`; ethereum `0xa85f81...c70ccf`; ethereum `0xa860a9...7f0bc7`; ethereum `0xaf255e...807a22`; ethereum `0xaf9486...3031b9`; ethereum `0xb37c79...6038b7`; ethereum `0xb59edc...4459db`; ethereum `0xb677bc...dd55b9`; ethereum `0xb8671e...4b009e`; ethereum `0xb89777...189263`; ethereum `0xc391d1...5633c4`; ethereum `0xc3ef8c...ba9d42`; ethereum `0xc45d47...cdbc04`; ethereum `0xc80098...7291bc`; ethereum `0xc8404f...1d6ed2`; ethereum `0xcc7759...2102e2`; ethereum `0xcf16b1...45f334`; ethereum `0xd91b06...032145`; ethereum `0xdb94c2...705dad`; ethereum `0xddb466...615f1b`; ethereum `0xe6e0b4...abf1b1`; ethereum `0xf174dd...3025b3`; ethereum `0xf2a671...8d1c29`; ethereum `0xf553e1...2fc7eb`; ethereum `0xfca949...f361ce` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x192e9d...6888f3`; ethereum `0x1a9f22...c32327`; ethereum `0x3761ef...f0f94b`; ethereum `0x636714...f16e3b`; ethereum `0x8e2987...3e7098`; ethereum `0xb19ebf...29d43c`; ethereum `0xb1feb6...3a57ee`; ethereum `0xc07eb9...b136b0`; ethereum `0xfbe122...81feec` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f8861...ce5ad7`; ethereum `0xe438c0...814c22` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 33 | bsc | n/a | 34 deployments: bsc `0x0392f3...9fa8af`; bsc `0x0a7d74...774ac8`; bsc `0x1274b7...6cbe48`; bsc `0x129cce...cbf89d`; bsc `0x14cb41...8160df`; bsc `0x1bfb4e...02bec1`; bsc `0x21fa8c...614c60`; bsc `0x2427da...d67c92`; bsc `0x299b00...072247`; bsc `0x2ce34b...8efbff`; bsc `0x33da6b...345a14`; bsc `0x374787...26096a`; bsc `0x394e65...8f053d`; bsc `0x3d5b0a...4b885a`; bsc `0x5089ea...ce63ca`; bsc `0x5da237...a7c8eb`; bsc `0x636714...f16e3b`; bsc `0x6a0d73...410853`; bsc `0x75071f...d1c960`; bsc `0x78cf4a...1c1425`; bsc `0x84646f...8328c7`; bsc `0x9090bc...e185ab`; bsc `0xbf2989...460a4f`; bsc `0xc3f7ff...e8326f`; bsc `0xc97dda...dd78f4`; bsc `0xcd8fb1...bf0df1`; bsc `0xcf5f83...b2bbf5`; bsc `0xd75ffa...ce3f63`; bsc `0xe3f309...2176aa`; bsc `0xe604fd...0adbe1`; bsc `0xe64bfe...c83bbf`; bsc `0xf553e1...2fc7eb`; bsc `0xf8ce90...fc0846`; bsc `0xfeb902...e3d072` | ⚠️ Unaudited |
| VaultDAI | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85c85...951dac` | ⚠️ Unaudited |
| VaultFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1571ed...19f651`; ethereum `0x9f45f1...468b27` | ⚠️ Unaudited |
| VaultFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa6f539...7f15f7`; ethereum `0xd111bd...b1f47c` | ⚠️ Unaudited |
| VaultMigratable_1INCH2SUSHI | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x4bf633...c5b99e`; ethereum `0x859222...d6874a`; ethereum `0x8e5303...86e32d`; ethereum `0xd16239...48d690` | ⚠️ Unaudited |
| VaultMigratable_DAIBASV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x193c55...02e2d1`; ethereum `0xf8b723...d17858` | ⚠️ Unaudited |
| VaultMigratable_KLONX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6dffd0...2e44bb`; ethereum `0xb4e3fc...64ba61` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BDO_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x12d83d...1109f0`; bsc `0x85e0d2...0ffc3b` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BELT_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15f62f...7e696b`; bsc `0xad941e...ea5288` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BUSD_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0c4c25...a289f0`; bsc `0x3de9c7...63476c` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BUSD_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6b95e2...e7a2dd`; bsc `0xf7a3a9...283d34` | ⚠️ Unaudited |
| VaultMigratable_Pancake_ETH_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x6895bd...b9f0c0`; bsc `0x8d005a...4c0796`; bsc `0x9e54db...c294d4`; bsc `0xdae22b...81cf03` | ⚠️ Unaudited |
| VaultMigratable_Pancake_ETH_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91d88f...640e8f`; bsc `0xe1f9a3...d44633` | ⚠️ Unaudited |
| VaultMigratable_Pancake_ICE_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1c4adf...6a583f`; bsc `0xcf4e33...ff40ff` | ⚠️ Unaudited |
| VaultMigratable_Pancake_XVS_BNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0bb940...c99425`; bsc `0x15dbf9...cb454c` | ⚠️ Unaudited |
| VaultMigratable_Tricrypto | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33ed34...a832ab`; ethereum `0x5c6cdf...f871da` | ⚠️ Unaudited |
| VaultMigratorStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0df24f...199d92`; ethereum `0x13ca81...330fd6`; ethereum `0x3b9849...5af0db`; ethereum `0x405047...0cf806`; ethereum `0x62f21e...1e7ead`; ethereum `0x6fc653...d85334`; ethereum `0x7db901...9d912d`; ethereum `0xcb8a90...141242`; ethereum `0xd5df7e...04671d`; ethereum `0xdbec47...5e7da1`; ethereum `0xe0dbb0...a0e62e` | ⚠️ Unaudited |
| VaultPausable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf85a6e...84222d` | ⚠️ Unaudited |
| VaultPausableTemp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd04d...7c493f` | ⚠️ Unaudited |
| VaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x21e223...8c6e13`; ethereum `0x380d18...e47085`; ethereum `0x43dd45...2d3a62`; ethereum `0x45809a...5ec2bc`; ethereum `0x5833e0...2a42e8`; ethereum `0x5c5f87...f0c7a5`; ethereum `0x7ac7cd...ece3f0`; ethereum `0x7e3c42...b8ef83`; ethereum `0x84bae3...bb06af`; ethereum `0xbaea43...8caa6e`; ethereum `0xd3093e...fe0eb1`; ethereum `0xe6bf65...368427`; bsc `0xb75f4c...f83bb8` | ⚠️ Unaudited |
| VaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6d3864...8a3121`; bsc `0xac89ef...9dcaf8` | ⚠️ Unaudited |
| VaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xeafcd0...1e1674`; bsc `0xffbd10...4d3e4f` | ⚠️ Unaudited |
| VaultUSDC | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f7ff...e8326f` | ⚠️ Unaudited |
| VaultUSDT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ee21...3d9f2f` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 8 deployments: ethereum `0x053c80...de7c9c`; ethereum `0x5d9d25...4d4ecb`; ethereum `0x71b9ec...a95fa5`; ethereum `0x81a276...c52b30`; ethereum `0xab7fa2...b1e04c`; ethereum `0xc27bfe...7460ba`; ethereum `0xf0358e...7bedbe`; ethereum `0xfe09e5...aa573e` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x0da39b...408381`; base `0x1d27d2...26b004`; base `0x866888...04ac7a`; base `0x9493f3...aa49ac` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0e95db...92db4a`; base `0x6aa5c1...7e17b4` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x90188f...703c5d`; base `0xc0ce53...d535dd`; base `0xd52962...ae5f88`; base `0xeefbde...986766` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | base | n/a | 5 deployments: base `0x91cffc...41ba00`; base `0xa0200e...9d5785`; base `0xa912d9...ef02ae`; base `0xc77703...62263e`; base `0xe5beac...f138e2` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xe727fe...2a2e30`; base `0xe78285...1f3cf9` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf54537...a717fb` | ⚠️ Unaudited |
| VaultYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2b223...d35f3a` | ⚠️ Unaudited |
| VeloraSwapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8771e2...15d48b`; base `0xc92925...56b588` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3f14c7...7d88d4`; bsc `0xf7d6c4...d88747` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6f8a97...465517`; bsc `0x99b0d6...5cf9bf` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9c90e9...6595a4`; bsc `0xb75062...4df8c2` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xaf2d2e...eb308e`; bsc `0xb83f69...6dfe4e` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1b7e12...ce9279`; bsc `0x5365a2...7384fb` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5c6bc2...a9230a`; bsc `0xb99c35...45887e` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8134bc...c691fe`; bsc `0x97a69d...ab4a76` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc5ddd0...6a83ca`; bsc `0xf0109e...65a0a4` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x321e94...983185`; bsc `0x6f3541...1558d1` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb858ec...ba2492` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x11b315...78f7c9`; bsc `0x46967d...feffe0` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f4197...55c521`; bsc `0x527351...75cb4b` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x158edb...42907c`; bsc `0x74f2f3...e3c2ed` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x58db12...cc1926`; bsc `0x598c48...1f63d9`; bsc `0x79cfeb...2b0a09`; bsc `0x7af445...4be9b8`; bsc `0xf1499a...8b53c2` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6aa85f...8468f4`; bsc `0xb5fd62...243313` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a7797...53002a` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x11babd...a54e56`; bsc `0xb1b0ca...af09c3` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4f850...1d0e90` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x01fcb5...a4ce33`; bsc `0x59565d...d87ad4` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18c432...8e9533` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x70aec9...16308e`; bsc `0xa8d087...87775c` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_XVS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f97d9...f6f244`; bsc `0x870495...bc097d` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_XVS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x71fb9b...eff86d`; bsc `0x826a37...ddb909` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_XVS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4d1d6...39ff95` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22a66...848e2f` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BTCB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0f1ed3...539a6e`; bsc `0x93e7f9...ad0dbe` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x883c0c...7861b2`; bsc `0x8e05ff...64ea39` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cef4a...278d26` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x803186...28f976` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0fa8b4...bb5770`; bsc `0xc9c1ac...574b40` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc24da7...5a311e`; bsc `0xdc2724...40d07f` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5a6700...879f49`; bsc `0x869c12...76d49e` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_XVS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x808bcd...9a4eaa`; bsc `0xa58c65...6dbb4e` | ⚠️ Unaudited |
| VenusVAIStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1050f1...a950ff`; bsc `0x611db2...e68caa` | ⚠️ Unaudited |
| VenusVAIStrategyMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x19f8ce...aa9919`; bsc `0xb492fa...7a11bc` | ⚠️ Unaudited |
| VestingAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87858b...3e20e0` | ⚠️ Unaudited |
| VestingMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x648c7b...ec7e1e`; ethereum `0x6cf5a8...02ff18`; ethereum `0xd6eec2...60aa87`; ethereum `0xdb43c0...4afbfb` | ⚠️ Unaudited |
| ViewerNotifyHelperStateful | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1d52be...9d0c7b`; bsc `0xf5a5f4...939084`; base `0x7ce0b2...4c6161` | ⚠️ Unaudited |
| WETHCreamNoFoldStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e015a...19ebcf`; ethereum `0xcf477f...463bf1` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30378c...125151`; ethereum `0xfa5f2e...a7d8db` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd643...b4374d` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x08d1ef...65af88`; base `0xd19e09...fc78eb` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 49 deployments: ethereum `0x0a78c1...336d2d`; ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101`; base `0x03bc96...012065`; base `0x123f08...7f9aa1`; base `0x1c18bc...8a8cbf`; base `0x1dfffd...8b8d62`; base `0x2f264a...bbdc06`; base `0x36eb9e...021032`; base `0x408034...561f63`; base `0x55efca...68c184`; base `0x56e008...f0da81`; base `0x59ab09...83fa52`; base `0x698cd9...d4e2eb`; base `0x75906e...953bce`; base `0x7fb24e...b7fb00`; base `0x82a246...1785e1`; base `0x861ae8...aaf1c4`; base `0x8a6d94...260f2a`; base `0x935ee2...0dac62`; base `0x9ef425...9a4f90`; base `0xb6ca12...c410e3`; base `0xd03011...e11d51`; base `0xdf6d4f...5ee3ba`; base `0xf33d16...9bf1a1`; base `0xfadf88...1adf9a` | ⚠️ Unaudited |
| WithdrawManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x00b0c4...6fe521`; ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587`; base `0x42c12f...7c6b3a`; base `0x47ad28...9f928e`; base `0x978337...37b605`; base `0xb88aa4...a63a49` | ⚠️ Unaudited |
| WrappedPlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x74714b...8b2c12`; ethereum `0x757e1b...fb7058`; base `0x5326e9...45f417`; base `0x8b1ed8...3def33` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f68a6...3311f5`; ethereum `0xb17a9d...f353c8` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x780ae3...ba8da7`; base `0xc2f8ed...c62ea6` | ⚠️ Unaudited |
| WstETHPriceFeedEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4329e2...c5d8b0` | ⚠️ Unaudited |
| XSushiStrategyUpgradeableMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40d94a...a58999` | ⚠️ Unaudited |
| YelHodlStrategyMainnet_YEL_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21396b...de0197`; ethereum `0xf42c6b...8f95d2` | ⚠️ Unaudited |
| YelStrategyMainnet_YEL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a50c4...626321` | ⚠️ Unaudited |
| YelStrategyMainnet_YEL_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5258a2...4ff5f8`; ethereum `0xba6b43...bc59cb` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: ethereum `0x3aae99...94ee51`; ethereum `0x48bd85...b1d1e6`; ethereum `0x759ddf...048e6e`; ethereum `0xb5c14b...0be9c9`; ethereum `0xbc2907...474efb`; base `0x0a48e9...c2ccd0`; base `0x341d24...0744fe`; base `0x758524...c137b6`; base `0xc8a552...c5b87f`; base `0xe4a973...7d9adf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (181)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008671...ee2236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011f04...e1e42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b349...02c667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0473a1...4411ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04fb94...8542e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055158...dab09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0580b7...8fd6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c547...df90fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a558a...9432e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b08de...30817a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0b3cfe...b085a6`; ethereum `0x0f4233...ec46ad`; ethereum `0xeb779f...cf92d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc415...14f0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1073ca...2abab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b508...ec0301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19762b...5fa57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b3ab...e8de15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aa0fb...950ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d35ba...c1d48a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e716d...6f9964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22372f...65a75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22f2a9...391adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24be1c...354455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252e7e...de653c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256420...ae9ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d3e0...ee4150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ab84b...d0fe54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecb86...5549a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x303c58...673a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x306705...7da7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32236d...d1358e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367da4...f81c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x381b02...bcff9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3833b6...9969d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384636...a903a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392a5c...dda6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39309a...8efb24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397ca3...c52f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a18aa...85268a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2ed6...86832d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c262b...359cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3df5...856172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e43ee...6f515d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f31ed...b97158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f546a...1c3c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x401b92...3cff56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x406370...4e7568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x472288...64a143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48162b...332a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d711...981c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a892b...4e535c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b39b0...c88cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5a8a...3b70aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7345...a0dd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503ea7...cc72b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dd79...8f38a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5736fd...849ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58144b...2a2654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b43a0...752cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eaab9...86038c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629943...8e91d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d97d...910767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6571b4...8de435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657f0a...e4dd0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66db50...6d46e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ba51...2f1102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695a1c...3f5a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69dafa...20509e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa2ae...64b2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b0858...6ca038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c91ce...cb2fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e87ab...0cd36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eafd4...f1fe5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x740518...6f5825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7630a6...b2bde3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d039...e51155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a26dc...56912c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a535f...00d628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d2574...057df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0b29...19a2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1857...c929b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f94c3...8ba2a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x806c53...dcb5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8080a9...2c2aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8111de...e25f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8137ac...0a16cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820562...0e226f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843002...2faa40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f803...4bcc7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8849...f2ea74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6171...a2711d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9099d8...70e883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9189b9...b31595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922147...7e4380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9330dc...a9a7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x938180...2159f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e730...65c15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b54e...a98695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b47d3...243df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b69df...e9e07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d5255...613ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa057df...c3ccbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1e2d7...c50154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b62a...e7da57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3347c...c95550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35e4b...96fba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5980...c58a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad8b64...e94e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb850...a2123c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade373...a96c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafb69b...93feb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd5b7...a27fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0cf6f...70c8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1eb7a...67f7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ff02...cf2976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4bd77...c84572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64b6f...82b652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb863cd...7d1ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3855...716efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb989b...adbde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1ca4...55de21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bd45...749808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34265...be1f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3583a...1c3397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc38835...3da504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc439e9...3d3290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc53dab...f8664f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74075...de8d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77147...cd019b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc790ad...7e239a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7a9cc...7fe0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85687...886eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc89844...926a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3815...057305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb9681...55294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08a29...fb4034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd32f13...d8a0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82964...13232e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd98a42...bc7101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbc32f...e29c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcaf7b...a5e18b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd40f8...235caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe41e27...c3c37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe74a81...f5484e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7798f...5a77ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8355f...70fb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea46cf...7eae1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeffc1f...26ed42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00dd2...bf5f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1499a...8b53c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf20a9d...f2c5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf301af...bdecde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf328f7...3b0674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6d794...380c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf78ca7...0be831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8b8a0...18f83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff3818...d41b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098927...1266e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f6cac...e6a1d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397ac8...798416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43b80a...8ec676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555fa1...61f1a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63a6d7...a9981a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a3106...a758ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b7c03...147552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b8ff8...0cb4f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a525d...fefeab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b872c...e14536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dabbf...700f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2bd15...53897c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf269c...995fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb036b5...a453e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb95a02...f3ebf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1d0c7...ec15cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf480c...788222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee2917...b03ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf00dd2...bf5f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf08688...ed0534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1163d...77158d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d7b01...6aa942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x713688...34c341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfebd97...73cad4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | LeastAuthority | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Haechi-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | Haechi | Audit | 2020-09 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 15 | high |
| [PeckShield-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 15 | high |
| [CertiK-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 55 | high |
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 57 | n/a |
| [LeastAuthority-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf) | Least Authority | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [www.harvest.finance/security](https://www.harvest.finance/security) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [immunefi.com/bug-bounty/harvest/information](https://immunefi.com/bug-bounty/harvest/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6932] LeastAuthority-Harvest.pdf — no match: No reason recorded
- [6933] Haechi-Harvest.pdf — matched: Contracts extracted from 'Contracts Subject to Audit' section and issues. Date from cover page.
- [6934] PeckShield-Harvest.pdf — matched: Extracted contract names from findings targets and scope description. Audit date from cover page and version history.
- [6935] CertiK-Harvest.pdf — matched: Extracted all contracts from the 'Files In Scope' table in the audit report. The audit date is from the cover page: 'November 15th, 2020'.
- [6940] Halborn-Harvest-2025.pdf — no match: No reason recorded
- [15666] LeastAuthority-Harvest.pdf — no match: No reason recorded
- [15668] www.harvest.finance/security — no match: The document is a summary page listing audit reports from various firms, but does not contain a detailed scope section with specific contract names or file paths. Only high-level references to 'core vault infrastructure' and 'CRVStrategyStable.depositArbCheck()' are mentioned, but no explicit contract names are provided.
- [15670] immunefi.com/bug-bounty/harvest/information — no match: The document is a bug bounty program description, not an audit report. It does not list specific contracts in scope, only mentions repositories and that only contracts in active use are in scope. No contract names or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LeastAuthority-Harvest.pdf | CompoundWETHFoldStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Controller | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | IdleFinanceStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | LiquidityRecipient | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | SushiMasterChefLPStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Vault | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultProxy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultStorage | unmatched — not counted | — | — | no |
| Haechi-Harvest.pdf | CRVStrategyStable | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | CRVStrategySwerve | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | CRVStrategyWRenBTC | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | CRVStrategyYCRV | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | DelayMinter | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | FeeRewardForwarder | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | HardRewards | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | NoMintRewardPool | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | NotifyHelper | own contract | NotifyHelper (selected) `0xf71042...2cc9f0` — deployed 2021-03-25 18:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Haechi-Harvest.pdf | RewardPool | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | RewardToken | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | SNXRewardStrategy | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Vault | unmatched — not counted | — | listed in scope and issues | no |
| PeckShield-Harvest.pdf | CRVStrategyStable | unmatched — not counted | — | Target in findings PVE-009, PVE-010, PVE-011, PVE-012, PVE-014, PVE-016 | no |
| PeckShield-Harvest.pdf | CRVStrategySwerve | unmatched — not counted | — | Mentioned in recommendation of PVE-011 | no |
| PeckShield-Harvest.pdf | CRVStrategyWRenBTC | unmatched — not counted | — | Mentioned in recommendation of PVE-011 | no |
| PeckShield-Harvest.pdf | CRVStrategyYCRV | unmatched — not counted | — | Target in findings PVE-010, PVE-011, PVE-015 | no |
| PeckShield-Harvest.pdf | Controller | unmatched — not counted | — | Target in findings PVE-004, PVE-017 | no |
| PeckShield-Harvest.pdf | DelayMinter | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Harvest.pdf | DepositHelper | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Harvest.pdf | FeeRewardForwarder | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Harvest.pdf | HardRewards | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Harvest.pdf | LPTokenWrapper | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Harvest.pdf | NotifyHelper | own contract | NotifyHelper (selected) `0xf71042...2cc9f0` — deployed 2021-03-25 18:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Harvest.pdf | RewardToken | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Harvest.pdf | SNXRewardStrategy | unmatched — not counted | — | Target in findings PVE-008, PVE-013 | no |
| PeckShield-Harvest.pdf | StakeLPToken | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield-Harvest.pdf | Vault | unmatched — not counted | — | Target in findings PVE-003, PVE-007, PVE-011 | no |
| PeckShield-Harvest.pdf | Vaults | unmatched — not counted | — | Target in finding PVE-002 | no |
| CertiK-Harvest.pdf | CRVStrategyRENBTCMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyStable | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyStableMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategySwerve | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategySwerveDAIMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategySwerveUSDCMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyWBTCMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyWRenBTC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyYCRV | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyYCRVMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CTokenInterfaces | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CompleteCToken | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CompoundInteractor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ComptrollerInterface | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Controllable | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | DelayMinter | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | DepositHelper | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | FeeRewardForwarder | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Gauge | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | HardRewards | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IController | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ICurveFi | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ICurveFiWbtc | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IPriceConvertor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IRewardPool | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ISwerveFi | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV1Exchange | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV1Factory | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Migrator | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IVault | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | InterestRateModel | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | NotifyHelper | own contract | NotifyHelper (selected) `0xf71042...2cc9f0` — deployed 2021-03-25 18:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK-Harvest.pdf | PriceConvertor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ProfitNotifier | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | RewardPool | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | RewardToken | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | RewardTokenProfitNotifier | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | SNXRewardInterface | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | SNXRewardStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | SNXRewardUniLPStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultDAI | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultUSDC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultUSDT | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultYCRV | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | WETH9 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | WETHCreamNoFoldStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | yVault | unmatched — not counted | — | listed in scope table | no |
| Halborn-Harvest-2025.pdf | AerodromeStableStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | AerodromeStableStrategyMainnet_jEUR_EURC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | AerodromeVolatileStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | AerodromeVolatileStrategyMainnet_AERO_USDC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | BaseUpgradeableStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | BaseUpgradeableStrategyStorage | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | CompoundStrategyMainnet_USDbC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ComptrollerInterface | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Controllable | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ControllableInit | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Controller | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | DataTypes | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | EIP20NonStandardInterface | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ErrorReporter | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ExtraFiLendStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ExtraFiLendStrategyMainnet_AERO | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | FluidLendStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | FluidLendStrategyMainnet_USDC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Governable | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | GovernableInit | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IBVault | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IComet | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ICometRewards | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IController | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IDex | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IGauge | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ILendingPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IPotPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IProfitSharingReceiver | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IRewardForwarder | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IRouter | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUniversalLiquidator | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUniversalLiquidatorRegistry | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUpgradableStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUpgradeSource | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IVault | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IWETH | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | InterestRateModel | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MTokenInterfaces | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MoonwellFoldStrategyV2 | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MoonwellFoldStrategyV2Mainnet_USDC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MoonwellFoldStrategyV2Mainnet_WETH | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | PotPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ReentrancyGuardUpgradeable | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | RewardForwarder | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Storage | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | StrategyProxy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultProxy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultStorage | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultV1 | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultV2 | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | CompoundWETHFoldStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Controller | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | IdleFinanceStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | LiquidityRecipient | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | SushiMasterChefLPStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Vault | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultProxy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultStorage | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xd08a29...fb4034` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe7798f...5a77ea` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8553d2...c83c70` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xab0b2d...d7bbff` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 751 |
| upstream | 74 |
| standard_library | 0 |
| needs_review | 182 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 158 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=6

Zero-match audit list:

- [6932] LeastAuthority-Harvest.pdf
- [6940] Halborn-Harvest-2025.pdf
- [15666] LeastAuthority-Harvest.pdf
- [15668] www.harvest.finance/security

Fork inheritance lineage and inherited audits are included when available.
