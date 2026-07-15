# Agentic Audit Brief: Arcadia Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 11 audit(s)
- Eligible audit results: 13 (11 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Arcadia Finance (`arcadia-finance`)
- Website: [https://arcadia.finance](https://arcadia.finance)
- Lifecycle: active (Tier 0, 73.6% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, optimism, unichain
- Contract surface: 391 unique implementations (478 raw deployments)
- Coverage basis: 13/134 confirmed own live verified implementations (9.7%); conservative 9.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,811,821.00
- On-chain TVL (included contracts): $5,742,847.42
- TVL by chain: Base $5,495,700.92 | Optimism $247,146.49

## Project Description

This brief describes the observed EVM deployment and audit surface for Arcadia Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 136 contract row(s) across base, optimism, unichain. Structural roles: 92 supporting, 42 core, 2 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 136
- Structural roles: supporting (92), core (42), unclassified (2)
- Contract kinds: contract (136)
- Detected standards: erc165 (30), erc721 (30), erc20permit (24), multicall (10), erc20 (4), erc1967proxy (3), eip1271 (1)
- Frameworks: solmate (115), permit2 (45), openzeppelin (36), uniswap (3), uniswap-v3 (3), solady (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

4 of 138 contracts are derived from known codebases. 134 contracts have no detected origin.

### Forked Contracts

**AccountV3** (`0x78db6a...16e8d6`, chain 10)
Origin: hourglass (`0x78db6a...16e8d6`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPool** (`0x3ec4a2...141df1`, chain 10)
Origin: hourglass (`0x803ea6...6b98e2`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PositionManager** (`0x4529a0...2617bf`, chain 130)
Origin: aegis-markets (`0x4529a0...2617bf`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WrappedAerodromeAM** (`0x17b582...409270`, chain 10)
Origin: hourglass (`0x17b582...409270`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x078d78...f57ad6`, chain 130)
- UnnamedContract (`0x7f9adf...a28a81`, chain 130)
- UnnamedContract (`0x991d55...b24702`, chain 130)
- UnnamedContract (`0x20f790...8cfed4`, chain 8453)
- UnnamedContract (`0x21bd52...1667dc`, chain 8453)
- UnnamedContract (`0x79dd8b...2ae416`, chain 8453)
- UnnamedContract (`0x8b0fd5...ef5d3c`, chain 8453)
- UnnamedContract (`0xae909e...7f9eea`, chain 8453)
- UnnamedContract (`0xb80897...f80465`, chain 8453)
- AAAStaker (`0xdea153...f223f3`, chain 8453)
- AccountPlaceholder (`0xbea2b6...19cae1`, chain 10)
- AccountPlaceholder (`0xd8af1f...fbef28`, chain 10)
- AccountPlaceholder (`0xbea2b6...19cae1`, chain 130)
- AccountPlaceholder (`0xd8af1f...fbef28`, chain 130)
- AccountV3 (`0x78db6a...16e8d6`, chain 130)
- AccountV3 (`0x78db6a...16e8d6`, chain 8453)
- AccountV4 (`0xe976bf...63d442`, chain 10)
- AccountV4 (`0xe976bf...63d442`, chain 130)
- AccountV4 (`0xe976bf...63d442`, chain 8453)
- Aero (`0x940181...d98631`, chain 8453)
- AerodromePoolAM (`0xfe0fa1...6091a5`, chain 10)
- AerodromePoolAM (`0xfe0fa1...6091a5`, chain 130)
- Arcadia (`0xaaa843...402aaa`, chain 8453)
- CompounderSlipstream (`0x467837...3cfcf7`, chain 10)
- CompounderSlipstream (`0x467837...3cfcf7`, chain 130)
- CompounderSlipstream (`0x35e594...b4f61f`, chain 8453)
- CompounderSlipstream (`0x467837...3cfcf7`, chain 8453)
- CompounderSlipstream (`0xd42a3a...8ddcd9`, chain 8453)
- CompounderUniswapV3 (`0x02e1fa...8a2dc3`, chain 10)
- CompounderUniswapV3 (`0x02e1fa...8a2dc3`, chain 130)
- CompounderUniswapV3 (`0x02e1fa...8a2dc3`, chain 8453)
- CompounderUniswapV4 (`0xaa95c9...66b189`, chain 10)
- CompounderUniswapV4 (`0xaa95c9...66b189`, chain 130)
- CompounderUniswapV4 (`0xaa95c9...66b189`, chain 8453)
- CowSwapper (`0xc92801...811854`, chain 8453)
- DefaultUniswapV4AM (`0xb80897...f80465`, chain 10)
- DefaultUniswapV4AM (`0xb80897...f80465`, chain 130)
- ERC20PrimaryAM (`0xfbecea...60eed7`, chain 10)
- ERC20PrimaryAM (`0xfbecea...60eed7`, chain 130)
- Factory (`0xda14fd...768e59`, chain 10)
- Factory (`0xda14fd...768e59`, chain 130)
- Factory (`0xda14fd...768e59`, chain 8453)
- FiatTokenProxy (`0x0b2c63...97ff85`, chain 10)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0...ed33bf`, chain 8453)
- LendingPool (`0x803ea6...6b98e2`, chain 10)
- LendingPool (`0x3ec4a2...141df1`, chain 130)
- LendingPool (`0x803ea6...6b98e2`, chain 130)
- LendingPool (`0x3ec4a2...141df1`, chain 8453)
- LendingPool (`0x803ea6...6b98e2`, chain 8453)
- LendingPool (`0xa37e9b...645e3b`, chain 8453)
- Liquidator (`0xa4b0b9...e1a7af`, chain 8453)
- LiquidatorL1 (`0xa4b0b9...e1a7af`, chain 130)
- LiquidatorL2 (`0xa4b0b9...e1a7af`, chain 10)
- MerklOperator (`0x969f02...8b42c6`, chain 10)
- MerklOperator (`0x969f02...8b42c6`, chain 130)
- MerklOperator (`0x969f02...8b42c6`, chain 8453)
- NonfungiblePositionManager (`0x416b43...dc6f29`, chain 10)
- NonfungiblePositionManager (`0xc36442...11fe88`, chain 10)
- NonfungiblePositionManager (`0x943e6e...3c46e9`, chain 130)
- NonfungiblePositionManager (`0x03a520...ed34f1`, chain 8453)
- NonfungiblePositionManager (`0x827922...485b72`, chain 8453)
- NonfungiblePositionManager (`0xa990c6...b9d55f`, chain 8453)
- NonfungiblePositionManager (`0xe1f8cd...d68b53`, chain 8453)
- PositionManager (`0x3c3ea4...9a1017`, chain 10)
- PositionManager (`0x7c5f5a...429bdc`, chain 8453)
- RebalancerSlipstream (`0x580245...e2b79f`, chain 10)
- RebalancerSlipstream (`0x580245...e2b79f`, chain 130)
- RebalancerSlipstream (`0x37c625...50d557`, chain 8453)
- RebalancerSlipstream (`0x580245...e2b79f`, chain 8453)
- RebalancerSlipstream (`0x953ff3...38d9ea`, chain 8453)
- RebalancerUniswapV3 (`0xba1d0c...d993bd`, chain 10)
- RebalancerUniswapV3 (`0xba1d0c...d993bd`, chain 130)
- RebalancerUniswapV3 (`0xba1d0c...d993bd`, chain 8453)
- RebalancerUniswapV4 (`0x01edaf...6a5ac0`, chain 10)
- RebalancerUniswapV4 (`0x01edaf...6a5ac0`, chain 130)
- RebalancerUniswapV4 (`0x01edaf...6a5ac0`, chain 8453)
- RegistryL1 (`0xd06905...300d5f`, chain 130)
- RegistryL2 (`0xd06905...300d5f`, chain 10)
- SlipstreamAM (`0xd3a705...633f44`, chain 10)
- SlipstreamAM (`0xd3a705...633f44`, chain 130)
- SlipstreamAM (`0x3ade1f...1eb73b`, chain 8453)
- SlipstreamAM (`0xcaf416...527189`, chain 8453)
- SlipstreamAM (`0xd3a705...633f44`, chain 8453)
- StakedAerodromeAM (`0x9f4236...d44c27`, chain 10)
- StakedAerodromeAM (`0x9f4236...d44c27`, chain 130)
- StakedAerodromeAM (`0x9f4236...d44c27`, chain 8453)
- StakedSlipstreamAM (`0x1dc7a0...d67bf1`, chain 10)
- StakedSlipstreamAM (`0x1dc7a0...d67bf1`, chain 130)
- StakedSlipstreamAM (`0x1dc7a0...d67bf1`, chain 8453)
- StakedSlipstreamAM (`0xbed6c3...0fdd4c`, chain 8453)
- StakedSlipstreamAM (`0xe0f20b...d8ca7b`, chain 8453)
- StakedStargateAM (`0xae909e...7f9eea`, chain 10)
- StargateAM (`0x20f790...8cfed4`, chain 10)
- Tranche (`0x393893...2b1382`, chain 10)
- Tranche (`0xefe328...218dad`, chain 10)
- Tranche (`0x393893...2b1382`, chain 130)
- Tranche (`0xefe328...218dad`, chain 130)
- Tranche (`0x393893...2b1382`, chain 8453)
- Tranche (`0x9c63a4...5eec92`, chain 8453)
- Tranche (`0xefe328...218dad`, chain 8453)
- TrancheWrapper (`0xbc1071...2ff398`, chain 10)
- TrancheWrapper (`0xd82bfa...7a8c60`, chain 10)
- TrancheWrapper (`0xbc1071...2ff398`, chain 130)
- TrancheWrapper (`0xd82bfa...7a8c60`, chain 130)
- TrancheWrapper (`0x7cc801...34ba3a`, chain 8453)
- TrancheWrapper (`0xbc1071...2ff398`, chain 8453)
- TrancheWrapper (`0xd82bfa...7a8c60`, chain 8453)
- UniswapV3AM (`0x21bd52...1667dc`, chain 10)
- UniswapV3AM (`0x21bd52...1667dc`, chain 130)
- UniswapV4HooksRegistry (`0x8b0fd5...ef5d3c`, chain 10)
- UniswapV4HooksRegistry (`0x8b0fd5...ef5d3c`, chain 130)
- Velo (`0x9560e8...1088db`, chain 10)
- WETH (`0x420000...000006`, chain 130)
- WETH9 (`0x420000...000006`, chain 10)
- WETH9 (`0x420000...000006`, chain 8453)
- WrappedAerodromeAM (`0x17b582...409270`, chain 130)
- WrappedAerodromeAM (`0x17b582...409270`, chain 8453)
- WrappedStakedSlipstream (`0xd74339...c98272`, chain 10)
- WrappedStakedSlipstream (`0xd74339...c98272`, chain 130)
- WrappedStakedSlipstream (`0x147a2c...4b25a4`, chain 8453)
- WrappedStakedSlipstream (`0x9189bc...477d53`, chain 8453)
- WrappedStakedSlipstream (`0xd74339...c98272`, chain 8453)
- YieldClaimerSlipstream (`0x5a8278...4f18ba`, chain 10)
- YieldClaimerSlipstream (`0x5a8278...4f18ba`, chain 130)
- YieldClaimerSlipstream (`0x5a8278...4f18ba`, chain 8453)
- YieldClaimerSlipstream (`0x8c1fbf...291980`, chain 8453)
- YieldClaimerSlipstream (`0xc8bf4b...22871c`, chain 8453)
- YieldClaimerUniswapV3 (`0x75ed28...afaa16`, chain 10)
- YieldClaimerUniswapV3 (`0x75ed28...afaa16`, chain 130)
- YieldClaimerUniswapV3 (`0x75ed28...afaa16`, chain 8453)
- YieldClaimerUniswapV4 (`0xd8aa21...d5d8d4`, chain 10)
- YieldClaimerUniswapV4 (`0xd8aa21...d5d8d4`, chain 130)
- YieldClaimerUniswapV4 (`0xd8aa21...d5d8d4`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 136; live-surface rows included: 136 (134 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 143/146 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/134 (9.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 143 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 245 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 143 of 391 unique; 248 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 13/204
- Verified + Unaudited implementations: 191
- Verified by bytecode match: 0
- Unverified implementations: 187
- Unique implementations: 391
- Raw deployments: 478
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): $3,865,608.15
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 8.2% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 11 | 5.4% | 2026-01 |
| Pashov Audit Group | Tier 2 | 3 | 1.5% | 2024-10 |
| Renascense | Tier 2 | 3 | 1.5% | 2025-01 |
| Trust Security | Tier 2 | 2 | 1.0% | 2023-12 |
| SourceHat | Tier 2 | 1 | 0.5% | 2022-06 |
| unknown | Tier 2 | 1 | 0.5% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAAStaker | core_logic | project_anchor | own_supporting | 0 | base | unit-379690 | `0xdea153...f223f3` | ✅ Audited |
| AccountSpot | core_logic | project_anchor | own_supporting | 0 | base | unit-379688 | `0xd8af1f...fbef28` | ✅ Audited |
| AccountV1 | core_logic | project_anchor | own_supporting | 0 | base | unit-379677 | `0xbea2b6...19cae1` | ✅ Audited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | base | unit-379657 | `0x78db6a...16e8d6` | ✅ Audited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | base | unit-379693 | `0xe976bf...63d442` | ✅ Audited |
| CowSwapper | adapter | project_anchor | own_supporting | 0 | base | unit-379680 | `0xc92801...811854` | ✅ Audited |
| Factory | registry | project_anchor | own_supporting | 0 | base | unit-379689 | `0xda14fd...768e59` | ✅ Audited |
| Liquidator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379670 | `0xa4b0b9...e1a7af` | ✅ Audited |
| LiquidatorL1 | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379622 | `0xa4b0b9...e1a7af` | ✅ Audited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379666 | `0x969f02...8b42c6` | ✅ Audited |
| RegistryL1 | registry | project_anchor | own_supporting | 0 | unichain | unit-379628 | `0xd06905...300d5f` | ✅ Audited |
| StakedStargateAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379585 | `0xae909e...7f9eea` | ✅ Audited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | base | unit-379642 | `0x17b582...409270` | ✅ Audited |

### ⚠️ Verified + Unaudited (191)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlienBaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dd2d6...0050c4` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-379694 | `0xefe328...218dad` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-379650 | `0x3ec4a2...141df1` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | base | unit-379676 | `0xbc1071...2ff398` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-379667 | `0x9c63a4...5eec92` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-379648 | `0x393893...2b1382` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-379660 | `0x803ea6...6b98e2` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379568 | `0x393893...2b1382` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379578 | `0x803ea6...6b98e2` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379598 | `0xefe328...218dad` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379570 | `0x3ec4a2...141df1` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-379669 | `0xa37e9b...645e3b` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | base | unit-379686 | `0xd82bfa...7a8c60` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | base | unit-379659 | `0x7cc801...34ba3a` | ⚠️ Unaudited |
| PaymasterVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x347bf2...14a6ed`; optimism `0x479bec...22242b`; optimism `0x916e0a...2030c5`; optimism `0xb9d32b...09c8d2` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379589 | `0xbea2b6...19cae1` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379595 | `0xd8af1f...fbef28` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379627 | `0xbea2b6...19cae1` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379633 | `0xd8af1f...fbef28` | ⚠️ Unaudited |
| AccountsGuard | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x2529ae...d6240b`; unichain `0x2529ae...d6240b`; base `0x2529ae...d6240b` | ⚠️ Unaudited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379577 | `0x78db6a...16e8d6` | ⚠️ Unaudited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379615 | `0x78db6a...16e8d6` | ⚠️ Unaudited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379597 | `0xe976bf...63d442` | ⚠️ Unaudited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379635 | `0xe976bf...63d442` | ⚠️ Unaudited |
| ActionMultiCall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05b9ab...bfa5a3` | ⚠️ Unaudited |
| Aero | token | project_anchor | own_supporting | 0 | base | unit-379664 | `0x940181...d98631` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379600 | `0xfe0fa1...6091a5` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379638 | `0xfe0fa1...6091a5` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | base | unit-379696 | `0xfe0fa1...6091a5` | ⚠️ Unaudited |
| Arcadia | unknown | project_anchor | own_supporting | 0 | base | unit-379672 | `0xaaa843...402aaa` | ⚠️ Unaudited |
| ArcadiaTiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x436325...fa80b5`; base `0x7895fd...5cfc98` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52eaec...d86590` | ⚠️ Unaudited |
| BunniHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc5348...ccac6f` | ⚠️ Unaudited |
| BunniHubA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1fac4...e92bb9` | ⚠️ Unaudited |
| BunniHubController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bcc58...fa0f38` | ⚠️ Unaudited |
| BunniLensV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3ceb26...bec9dc`; base `0xf71e5e...05b621` | ⚠️ Unaudited |
| BunniZap | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6947da...16d75d` | ⚠️ Unaudited |
| BunniZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c18d...0ab7f0` | ⚠️ Unaudited |
| ChainlinkOM | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-379575 | `0x6a5485...2eeb31` | ⚠️ Unaudited |
| ChainlinkOM | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | unichain | unit-379613 | `0x6a5485...2eeb31` | ⚠️ Unaudited |
| CLFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: optimism `0xcc0bdd...1cd12f`; optimism `0xe13dd1...60c879`; base `0x342576...38a617`; base `0x5e7bb1...06809a`; base `0xade65c...89716a`; base `0xc6403d...1cd165`; base `0xec2ffc...9cd4d1`; base `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0xb5f7bd...fc4b26`; base `0x11909e...7daf22`; base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x7dccb0...204b3e`; base `0xc0d208...cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x9b2395...17dc99`; base `0x385293...f56abb`; base `0x3be76d...998529`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x11b234...496b4c`; base `0x88e336...a0471f`; base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xec8e53...315831` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x052916...d19d10`; base `0xb32951...23c74f` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379572 | `0x467837...3cfcf7` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379610 | `0x467837...3cfcf7` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379646 | `0x35e594...b4f61f` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379652 | `0x467837...3cfcf7` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379684 | `0xd42a3a...8ddcd9` | ⚠️ Unaudited |
| CompounderUniswapV3 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379563 | `0x02e1fa...8a2dc3` | ⚠️ Unaudited |
| CompounderUniswapV3 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379602 | `0x02e1fa...8a2dc3` | ⚠️ Unaudited |
| CompounderUniswapV3 | adapter | project_anchor | own_supporting | 0 | base | unit-379640 | `0x02e1fa...8a2dc3` | ⚠️ Unaudited |
| CompounderUniswapV4 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379584 | `0xaa95c9...66b189` | ⚠️ Unaudited |
| CompounderUniswapV4 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379623 | `0xaa95c9...66b189` | ⚠️ Unaudited |
| CompounderUniswapV4 | adapter | project_anchor | own_supporting | 0 | base | unit-379671 | `0xaa95c9...66b189` | ⚠️ Unaudited |
| CowSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb988a3...da1f23`; base `0xffc742...da2bb6` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5264ee...2a2223`; base `0xe945ab...2a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: optimism `0x2b2a62...7a7f16`; base `0x0ad083...38ee68`; base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35` | ⚠️ Unaudited |
| DefaultOrderHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0f56a2...c1f681`; base `0x5f7dfa...20cea6`; base `0xf510ba...09e5bb` | ⚠️ Unaudited |
| DefaultUniswapV4AM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379586 | `0xb80897...f80465` | ⚠️ Unaudited |
| DefaultUniswapV4AM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379624 | `0xb80897...f80465` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xbf571c...943f1c`; base `0x87d8f9...38e8cb` | ⚠️ Unaudited |
| EmergencyCouncil | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7a15f...defeda` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379599 | `0xfbecea...60eed7` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379637 | `0xfbecea...60eed7` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | base | unit-379695 | `0xfbecea...60eed7` | ⚠️ Unaudited |
| EsComplexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x392382...5c43a6`; base `0x3aa57f...30b211`; base `0x3f42d7...252811`; base `0xbbd0cb...11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3968a...61ec88` | ⚠️ Unaudited |
| EsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x365c6d...a54113`; base `0x3d3a5a...6d8ea0`; base `0x4a023e...a36978` | ⚠️ Unaudited |
| EsTokenController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x154d41...a1ea99`; base `0x2de715...7f60dc`; base `0xf6c0db...ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3cfcb...df2e7b` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | optimism | unit-379596 | `0xda14fd...768e59` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | unichain | unit-379634 | `0xda14fd...768e59` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-379704 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | optimism | unit-379699 | `0x0b2c63...97ff85` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-379703 | `0x833589...a02913` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35c...5bbcb5` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379608 | `0x3ec4a2...141df1` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379617 | `0x803ea6...6b98e2` | ⚠️ Unaudited |
| LiquidatorL2 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379583 | `0xa4b0b9...e1a7af` | ⚠️ Unaudited |
| LpMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee03e0...153590` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x70429f...6c325b`; base `0x223039...ed52e1` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379581 | `0x969f02...8b42c6` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379619 | `0x969f02...8b42c6` | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4aa34f...575d5f` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x6dc9e1...d10982`; base `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x21fcc0...413b92`; optimism `0xff79ec...b44722`; base `0x0a5aa5...07d5c6`; base `0x393550...5d81ad`; base `0x9574e3...3ada30`; base `0x9951ff...1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0xe5db7c...36329c`; base `0x495406...5b4f4f`; base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xaf6ebd...bcc32e`; base `0xcd2a7d...65b555` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | optimism | unit-379697 | `0x416b43...dc6f29` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xbb5dfe...56adf4` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | optimism | unit-379698 | `0xc36442...11fe88` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | unichain | unit-379701 | `0x943e6e...3c46e9` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379702 | `0x03a520...ed34f1` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0xf7f8cc...808399`; base `0x0c3141...5bbde3`; base `0x7dd33b...6238d8`; base `0xe702fc...928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379706 | `0x827922...485b72` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379707 | `0xa990c6...b9d55f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb7996d...4534e5` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc741be...6a1178` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | base | unit-379692 | `0xe1f8cd...d68b53` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0xe5e47a...e80f9f`; base `0x11b5f9...953814`; base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-379569 | `0x3c3ea4...9a1017` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 1 | unichain | unit-379700 | `0x4529a0...2617bf` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379705 | `0x7c5f5a...429bdc` | ⚠️ Unaudited |
| PredictionETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbe87e...2863e8` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0x89d821...621466`; optimism `0xad432b...2f5deb`; base `0x254cf9...ae15b0`; base `0x3d4c22...271c6c`; base `0x3d4e44...35b76a`; base `0x514c8b...089259`; base `0x919e53...4601fc` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379573 | `0x580245...e2b79f` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379611 | `0x580245...e2b79f` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379647 | `0x37c625...50d557` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379653 | `0x580245...e2b79f` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379665 | `0x953ff3...38d9ea` | ⚠️ Unaudited |
| RebalancerUniswapV3 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379587 | `0xba1d0c...d993bd` | ⚠️ Unaudited |
| RebalancerUniswapV3 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379625 | `0xba1d0c...d993bd` | ⚠️ Unaudited |
| RebalancerUniswapV3 | adapter | project_anchor | own_supporting | 0 | base | unit-379675 | `0xba1d0c...d993bd` | ⚠️ Unaudited |
| RebalancerUniswapV4 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379562 | `0x01edaf...6a5ac0` | ⚠️ Unaudited |
| RebalancerUniswapV4 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379601 | `0x01edaf...6a5ac0` | ⚠️ Unaudited |
| RebalancerUniswapV4 | adapter | project_anchor | own_supporting | 0 | base | unit-379639 | `0x01edaf...6a5ac0` | ⚠️ Unaudited |
| RecoveryController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x388925...78176a` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x812785...250773` | ⚠️ Unaudited |
| Redistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x9e494d...c87329`; base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | base | unit-379682 | `0xd06905...300d5f` | ⚠️ Unaudited |
| RegistryL2 | registry | project_anchor | own_supporting | 0 | optimism | unit-379590 | `0xd06905...300d5f` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x9d4736...1ea99b`; base `0x227f65...964c7d` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xa062ae...8b2858`; base `0xcf77a3...874e43` | ⚠️ Unaudited |
| RouterTrampoline | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x354dbb...590667`; unichain `0x354dbb...590667`; base `0x354dbb...590667` | ⚠️ Unaudited |
| SinkManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aee5f...abcdae` | ⚠️ Unaudited |
| SlipstreamAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5bd6b...4627d7` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379591 | `0xd3a705...633f44` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379629 | `0xd3a705...633f44` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379649 | `0x3ade1f...1eb73b` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379681 | `0xcaf416...527189` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379683 | `0xd3a705...633f44` | ⚠️ Unaudited |
| SmartRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb20c41...ea9411` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379582 | `0x9f4236...d44c27` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379621 | `0x9f4236...d44c27` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | base | unit-379668 | `0x9f4236...d44c27` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379565 | `0x1dc7a0...d67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6a87d...f78ecd` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379605 | `0x1dc7a0...d67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379643 | `0x1dc7a0...d67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379678 | `0xbed6c3...0fdd4c` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379691 | `0xe0f20b...d8ca7b` | ⚠️ Unaudited |
| StargateAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379566 | `0x20f790...8cfed4` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91616a...bcb916` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x0792a6...cc9676`; optimism `0xba3aee...5041ca`; base `0x698cb2...63a92f`; base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbe6d8f...6d18a5` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x262666...41e481` | ⚠️ Unaudited |
| TokenGenerator | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbce754...2ad08d` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379607 | `0x393893...2b1382` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379636 | `0xefe328...218dad` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379588 | `0xbc1071...2ff398` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379593 | `0xd82bfa...7a8c60` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379626 | `0xbc1071...2ff398` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379631 | `0xd82bfa...7a8c60` | ⚠️ Unaudited |
| UniswapV3AM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379567 | `0x21bd52...1667dc` | ⚠️ Unaudited |
| UniswapV3AM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379606 | `0x21bd52...1667dc` | ⚠️ Unaudited |
| UniswapV4HooksRegistry | registry | project_anchor | own_supporting | 0 | optimism | unit-379579 | `0x8b0fd5...ef5d3c` | ⚠️ Unaudited |
| UniswapV4HooksRegistry | registry | project_anchor | own_supporting | 0 | unichain | unit-379618 | `0x8b0fd5...ef5d3c` | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62d58b...c8fba9` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x4bf3e3...1142fc`; optimism `0xf132bd...3eb817`; base `0x6cb442...00be3e` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23cf10...acd2d7` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe99924...54643e` | ⚠️ Unaudited |
| Velo | token | project_anchor | own_supporting | 0 | optimism | unit-379580 | `0x9560e8...1088db` | ⚠️ Unaudited |
| VestingFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x77ec03...faed84`; base `0xf61cc1...c9453d` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x41c914...5abf3c`; base `0x166135...c480a5` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xfaf8fd...06787d`; base `0xebf418...67e6b4` | ⚠️ Unaudited |
| WETH | token | project_anchor | own_supporting | 0 | unichain | unit-379609 | `0x420000...000006` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | optimism | unit-379571 | `0x420000...000006` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-379651 | `0x420000...000006` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379564 | `0x17b582...409270` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379604 | `0x17b582...409270` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4d3d8...252749` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379592 | `0xd74339...c98272` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379630 | `0xd74339...c98272` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379641 | `0x147a2c...4b25a4` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379663 | `0x9189bc...477d53` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379685 | `0xd74339...c98272` | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1e9b2...d551fc` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379574 | `0x5a8278...4f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379612 | `0x5a8278...4f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x3630bd...814f42`; base `0x1f75ab...d59105`; base `0x2a07d9...93d09f` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379654 | `0x5a8278...4f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379662 | `0x8c1fbf...291980` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379679 | `0xc8bf4b...22871c` | ⚠️ Unaudited |
| YieldClaimerUniswapV3 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379576 | `0x75ed28...afaa16` | ⚠️ Unaudited |
| YieldClaimerUniswapV3 | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379614 | `0x75ed28...afaa16` | ⚠️ Unaudited |
| YieldClaimerUniswapV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379656 | `0x75ed28...afaa16` | ⚠️ Unaudited |
| YieldClaimerUniswapV4 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379594 | `0xd8aa21...d5d8d4` | ⚠️ Unaudited |
| YieldClaimerUniswapV4 | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379632 | `0xd8aa21...d5d8d4` | ⚠️ Unaudited |
| YieldClaimerUniswapV4 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379687 | `0xd8aa21...d5d8d4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (187)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06b573...af330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x434781...fa747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a0213...87e351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd17de...0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379603 | `0x078d78...f57ad6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379616 | `0x7f9adf...a28a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379620 | `0x991d55...b24702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xbe959c...6f0f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd000df...bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd25491...ec3527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x016874...108e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x060f57...dfc696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0616ce...b3baca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x072e64...00b48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x082663...d00b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bc1a7...2a1a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c0d0a...e5c8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdee0...c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d6e29...b215d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x124258...af6fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x125829...f3e2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13de15...e96373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16f1f8...23e4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1733c3...339c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19f3d2...9ea64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a18d2...3c5af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1aa817...7fb754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ad1a3...afc526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b2468...ddb484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7e42...c81e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20640b...fd921d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x209e79...bc2a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379644 | `0x20f790...8cfed4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379645 | `0x21bd52...1667dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25225c...b8d9d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25f36f...57948d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27223e...bd1ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28317b...0ab828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28c44e...8bfcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x293be4...1b5220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29e15f...22f566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b1918...ddb3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c629a...1f6766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2df383...9b210b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f3b0d...a72dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f82e1...e5dbd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2feb44...b06cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x313d17...4dd724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31fafd...7d72a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x329efd...bf8b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3334d8...621fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x353b1b...93b23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x354859...f95ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b0145...10d176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3be8e8...43d0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4444...987919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db0bc...c28d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f8d11...2dddc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41ad2d...2b35aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4384dc...5248ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44c2c3...e5e26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4615c3...121463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x476e39...667c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a3cf8...15a703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c0b9f...444cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c326e...b5b3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eb157...a97024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f2259...401009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x519989...6a3014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x584862...9de197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x588651...06b427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c9054...8c5e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63a08d...550bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63aed6...52cec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x649502...c3a80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x652f7c...a8b7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x666f48...83db77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68e143...e1c68c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379655 | `0x6a5485...2eeb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a9668...cc8369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ac994...fb26a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b7950...9441d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c57e5...b95811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7101ca...e325be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7110d6...2de6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d509...8a08d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73c299...6fc756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77682a...ab3568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x783898...3843ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78cc18...73a4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920fb...fea013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379658 | `0x79dd8b...2ae416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82d237...c17bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x837724...ce534c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x847aa2...f653d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x872521...9aaf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89c84f...307180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379661 | `0x8b0fd5...ef5d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ca63e...6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d27bd...ca8cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8de25c...b439ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e038b...417e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ebf49...d42891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ee945...7fa7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f08fb...0ac114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fae47...76efe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fc786...62d1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fcd06...5031c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9192ff...7730a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x927860...bfbb27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x931d84...bb7059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9379c3...b2cb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93d590...8f529b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x953303...79d1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95ff65...2d2819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x970079...70be51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x976cc4...cfad1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bbb7...bdedbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e1c24...5b846a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e27f3...82ac6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f3643...922c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa21b24...0e257f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa27203...13c413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa47559...946149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa54844...c4fde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa720c1...395117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7b7e2...19c1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa5263...7c2c24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379673 | `0xae909e...7f9eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafe430...689bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb28b0a...b19080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb65cbb...138688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb71cc2...77b60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb772cb...8386a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb775af...4a9ee6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379674 | `0xb80897...f80465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb93189...2884f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd97c8...b84ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdd085...4d5ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe56b9...bd4a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe9e35...bc1577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0bf69...be382a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca0c63...d1fee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbac77...068436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccb488...c0a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf1355...c2633a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0b4cd...565253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd135c5...d39da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd16eba...583621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2a928...7fc186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd46949...8dff6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd54a92...aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd67fed...d4ae2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6aa72...63f07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda243c...a69edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf65d...652637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc1da4...8bb0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc9a2c...b02ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcd995...3b7f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd4c39...a6723b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0808b...811054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe12951...b03a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1afc6...2a4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2204e...213ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe23f65...4528c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe27159...fb910c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe37638...97716e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3b6a5...5fbd8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe49273...e704b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe76641...818ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8b5b2...4d7e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8dba7...bfd62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb91c9...35385f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec5c5c...b5a561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedea12...a24958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4eb75...da644a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5327d...766526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5a7a6...692c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5cfce...2a4fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5e42e...f64c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6d652...937db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ac4...c20ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d107...577d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9e1a0...e78ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb7022...d8dfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe9a0d...532915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfea31d...de63d9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/ArcadiaFinance](https://sourcehat.com/audits/ArcadiaFinance) | SourceHat | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [NM0072-FINAL_ARCADIA.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0072-FINAL_ARCADIA.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 35 | high |
| [drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview](https://drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-12 Trust Security.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2023-12%20Trust%20Security.pdf) | Trust Security | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 21 | high |
| [2024-01 Pashov Group.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-01%20Pashov%20Group.pdf) | Pashov Audit Group | Audit | 2024-01 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 19 | high |
| [2024-01 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-01%20Renascense.pdf) | Renascense | Audit | 2024-01 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 9 | high |
| [2024-02 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-02%20Sherlock.pdf) | Sherlock | Contest | 2024-02 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 4 | high |
| [2024-04 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-04%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | medium |
| [2024-06 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-06%20Renascense.pdf) | Renascense | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [2024-10 Pashov Group.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-10%20Pashov%20Group.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [2025-01 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2025-01%20Renascense.pdf) | Renascense | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [2025-09 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2025-09%20Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | matched | 6 | 0 | 0 | 9 | high |
| [2026-01 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2026-01%20Sherlock.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 34 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2185] sourcehat.com/audits/ArcadiaFinance — matched: Contracts are listed in the 'Contracts Overview' section and in the 'Contract Source Summary' table. The audit date is explicitly stated as 'Date: June 9th, 2022'.
- [2186] NM0072-FINAL_ARCADIA.pdf — matched: Extracted all contracts from the 'Audited Files' section (Vaults and Lending tables) and the audit date from the 'Summary of the Audit' box (Final Report Mar. 2, 2023).
- [2197] drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview — no match: The provided text is not an audit report; it appears to be brand guidelines for ARCADIA. No contracts or audit information found.
- [15562] 2023-12 Trust Security.pdf — matched: Extracted 23 contract names from the scope section of the audit report. The audit date is from the document versioning table (25/12/2023).
- [15563] 2024-01 Pashov Group.pdf — matched: Extracted contract names from the scope section listing files for lending-v2 and accounts-v2 repositories.
- [15564] 2024-01 Renascense.pdf — matched: Extracted contract names from findings context and file paths. Audit date from cover page: January 12, 2024.
- [15565] 2024-02 Sherlock.pdf — matched: Extracted contract names from findings and scope description. Audit date from cover page: 'Prepared on: March 13, 2024'.
- [15566] 2024-04 Sherlock.pdf — matched: The report does not have a dedicated scope section; only WrappedAerodromeAM.sol is explicitly referenced as part of the audit. The audit dates are April 22-25, 2024, so the end date is used.
- [15567] 2024-06 Renascense.pdf — no match: No explicit scope section; contracts extracted from findings context. Audit date from cover page.
- [15568] 2024-10 Pashov Group.pdf — matched: Scope section lists 13 contracts. Audit date is the end date of the engagement period (October 24th - November 1st).
- [15569] 2025-01 Renascense.pdf — matched: No reason recorded
- [15570] 2025-09 Sherlock.pdf — matched: Extracted 15 contract names from the scope section of the audit report. Date found in header: 'Date Audited: September 26-September 29, 2025' -> end date 2025-09-29.
- [15571] 2026-01 Sherlock.pdf — matched: Extracted all contract names from the scope section listing files in two repositories. Audit date is the end date of the audit period: January 5 - January 19, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/ArcadiaFinance | StandardERC20SubRegistry | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | FloorERC721SubRegistry | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | FloorERC1155SubRegistry | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | MainRegistry | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | OracleHub | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | Factory | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| sourcehat.com/audits/ArcadiaFinance | Vault | unmatched — not counted | — | listed in Contracts Overview and Finding #2 | no |
| sourcehat.com/audits/ArcadiaFinance | InterestRateModule | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | Liquidator | own contract | Liquidator (selected) `0xa4b0b9...e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/ArcadiaFinance | Proxy | unmatched — not counted | — | listed in Contract Source Summary | no |
| NM0072-FINAL_ARCADIA.pdf | MainRegistry | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0072-FINAL_ARCADIA.pdf | OracleHub | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9...e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM0072-FINAL_ARCADIA.pdf | RiskModule | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Proxy | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | MultiCall | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | ActionBase | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | ActionData | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | StandardERC20PricingModule | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | AbstractPricingModule | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IStandardERC20PricingModule | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IOraclesHub | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IMainRegistry | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IERC721 | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | ITrustedCreditor | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IPricingModule | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IVault | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IActionBase | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | ILendingPool | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IChainLinkData | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IERC1155 | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | IERC4626 | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | MainRegistryGuardian | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | BaseGuardian | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | FactoryGuardian | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | InterestRateModule | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | TrustedCreditor | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe328...218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4...5eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0072-FINAL_ARCADIA.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b...645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0072-FINAL_ARCADIA.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Guardian | unmatched — not counted | — | listed in scope table | no |
| 2023-12 Trust Security.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6...19cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-12 Trust Security.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd06905...300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd06905...300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd06905...300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | AbstractDerivedAssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | UniswapV3AssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | AbstractPrimaryAssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | AbstractAssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | ChainlinkOracleModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | BitPackingLib | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | StandardERC20AssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | AssetValuationLib | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | RegistryGuardian | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | Creditor | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | BaseGuardian | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | FactoryGuardian | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | AccountStorageV1 | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | AbstractOracleModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b...645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9...e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-12 Trust Security.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe328...218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4...5eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | LendingPoolGuardian | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9...e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Pashov Group.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b...645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe328...218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4...5eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | LendingPoolGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | FactoryGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | BaseGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | RegistryGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | Creditor | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd06905...300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd06905...300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd06905...300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6...19cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Pashov Group.pdf | AccountStorageV1 | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | ChainlinkOracleModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractOracleModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractAssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | UniswapV3AssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractDerivedAssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractPrimaryAssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | StandardERC20AssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Renascense.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd06905...300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd06905...300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd06905...300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6...19cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Renascense.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b...645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9...e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Renascense.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe328...218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4...5eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | DebtToken | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | UniswapV3AssetModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | AbstractDerivedAssetModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | AbstractPrimaryAssetModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | Events | unmatched — not counted | — | mentioned in findings context | no |
| 2024-02 Sherlock.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6...19cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b...645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02 Sherlock.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9...e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | Factory | own contract | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (selected) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-03-19 was 6d from audit; next candidate 625d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd06905...300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd06905...300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd06905...300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02 Sherlock.pdf | UniswapV3AM | ambiguous — not counted | UniswapV3AM (alternative) `0x21bd52...1667dc` — deployed 2026-02-26 13:11:35+03 — liveness: live (current_address_book_code)<br>UniswapV3AM (alternative) `0x21bd52...1667dc` — deployed 2025-11-28 16:27:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02 Sherlock.pdf | StakedStargateAM | own contract | StakedStargateAM (selected) `0xae909e...7f9eea` — deployed 2026-02-26 13:11:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe328...218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4...5eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe328...218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893...2b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-04 Sherlock.pdf | WrappedAerodromeAM | own contract | WrappedAerodromeAM (alternative) `0x17b582...409270` — deployed 2026-02-26 13:32:11+03 — liveness: live (current_address_book_code)<br>WrappedAerodromeAM (alternative) `0x17b582...409270` — deployed 2025-11-28 16:31:03+03 — liveness: live (current_address_book_code)<br>WrappedAerodromeAM (selected) `0x17b582...409270` — deployed 2024-05-21 16:29:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-21 was 26d from audit; next candidate 582d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06 Renascense.pdf | UniswapV3Compounder | unmatched — not counted | — | mentioned in L-1 context | no |
| 2024-06 Renascense.pdf | StakedSlipstream | unmatched — not counted | — | mentioned in L-2 context | no |
| 2024-06 Renascense.pdf | CLGauge | unmatched — not counted | — | mentioned in L-2 context | no |
| 2024-06 Renascense.pdf | CLPool | unmatched — not counted | — | mentioned in L-2 context | no |
| 2024-06 Renascense.pdf | TrancheWrapper | ambiguous — not counted | TrancheWrapper (alternative) `0xd82bfa...7a8c60` — deployed 2026-02-26 13:34:07+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xd82bfa...7a8c60` — deployed 2025-11-28 16:32:43+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xd82bfa...7a8c60` — deployed 2024-06-27 17:42:15+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xbc1071...2ff398` — deployed 2025-11-28 16:32:41+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xbc1071...2ff398` — deployed 2024-06-27 17:36:01+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xbc1071...2ff398` — deployed 2026-02-26 13:34:05+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0x7cc801...34ba3a` — deployed 2024-09-17 13:54:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10 Pashov Group.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | StakedSlipstreamLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | RebalanceLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | UniswapV3Logic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | SwapLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | FeeLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | BurnLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | SlipstreamLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | MintLogic | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | RebalanceOptimizationMath | unmatched — not counted | — | listed in scope | no |
| 2024-10 Pashov Group.pdf | AccountSpot | own contract | AccountSpot (selected) `0xd8af1f...fbef28` — deployed 2025-01-09 12:30:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10 Pashov Group.pdf | DefaultUniswapV4AM | ambiguous — not counted | DefaultUniswapV4AM (alternative) `0xb80897...f80465` — deployed 2026-02-26 13:36:25+03 — liveness: live (code_present_context)<br>DefaultUniswapV4AM (alternative) `0xb80897...f80465` — deployed 2025-11-28 16:34:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10 Pashov Group.pdf | UniswapV4HooksRegistry | ambiguous — not counted | UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5...ef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-01 Renascense.pdf | AAAStaker | own contract | AAAStaker (selected) `0xdea153...f223f3` — deployed 2025-04-01 14:15:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01 Renascense.pdf | AbstractStaker | unmatched — not counted | — | — | no |
| 2025-09 Sherlock.pdf | AccountV3 | own contract | AccountV3 (selected) `0x78db6a...16e8d6` — deployed 2025-10-06 15:23:27+03 — liveness: live (current_address_book_code)<br>AccountV3 (alternative) `0x78db6a...16e8d6` — deployed 2025-11-28 16:36:04+03 — liveness: live (current_address_book_code)<br>AccountV3 (alternative) `0x78db6a...16e8d6` — deployed 2026-02-26 13:37:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-06 was 7d from audit; next candidate 60d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | AccountV4 | own contract | AccountV4 (alternative) `0xe976bf...63d442` — deployed 2025-11-28 16:36:06+03 — liveness: live (current_address_book_code)<br>AccountV4 (alternative) `0xe976bf...63d442` — deployed 2026-02-26 13:38:01+03 — liveness: live (current_address_book_code)<br>AccountV4 (selected) `0xe976bf...63d442` — deployed 2025-10-06 15:23:31+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-06 was 7d from audit; next candidate 60d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | AccountsGuard | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | StakedAerodromeAM | ambiguous — not counted | StakedAerodromeAM (alternative) `0x9f4236...d44c27` — deployed 2026-02-26 13:32:09+03 — liveness: live (current_address_book_code)<br>StakedAerodromeAM (alternative) `0x9f4236...d44c27` — deployed 2025-11-28 16:31:01+03 — liveness: live (current_address_book_code)<br>StakedAerodromeAM (alternative) `0x9f4236...d44c27` — deployed 2024-05-21 16:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | StakedSlipstreamAM | ambiguous — not counted | StakedSlipstreamAM (alternative) `0x1dc7a0...d67bf1` — deployed 2026-02-26 13:33:43+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0x1dc7a0...d67bf1` — deployed 2025-11-28 16:32:21+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0xe0f20b...d8ca7b` — deployed 2026-04-16 17:17:23+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0x1dc7a0...d67bf1` — deployed 2024-06-27 16:36:41+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0xbed6c3...0fdd4c` — deployed 2025-11-11 12:38:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | StakedStargateAM | own contract | StakedStargateAM (selected) `0xae909e...7f9eea` — deployed 2026-02-26 13:11:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fd...768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fd...768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | CreateProxyLib | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | RegistryL1 | own contract | RegistryL1 (selected) `0xd06905...300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | Compounder | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | YieldClaimer | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | MerklOperator | own contract | MerklOperator (selected) `0x969f02...8b42c6` — deployed 2025-10-15 11:28:27+03 — liveness: live (current_address_book_code)<br>MerklOperator (alternative) `0x969f02...8b42c6` — deployed 2025-11-28 16:36:26+03 — liveness: live (current_address_book_code)<br>MerklOperator (alternative) `0x969f02...8b42c6` — deployed 2026-02-26 13:38:21+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-15 was 16d from audit; next candidate 60d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea6...6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a2...141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b...645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | LiquidatorL1 | own contract | LiquidatorL1 (selected) `0xa4b0b9...e1a7af` — deployed 2025-11-28 16:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01 Sherlock.pdf | AbstractAM | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | AbstractPrimaryAM | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | NativeTokenAM | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | AbstractOM | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | ChainlinkOM | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RedStonePushOM | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | AbstractBase | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | Slipstream | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | UniswapV3 | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | UniswapV4 | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | CompounderSlipstream | ambiguous — not counted | CompounderSlipstream (alternative) `0x467837...3cfcf7` — deployed 2025-10-15 11:27:57+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0xd42a3a...8ddcd9` — deployed 2026-04-16 17:17:25+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0x467837...3cfcf7` — deployed 2025-11-28 16:36:08+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0x467837...3cfcf7` — deployed 2026-02-26 13:38:03+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0x35e594...b4f61f` — deployed 2025-11-11 12:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | Compounder | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | CompounderUniswapV3 | ambiguous — not counted | CompounderUniswapV3 (alternative) `0x02e1fa...8a2dc3` — deployed 2025-11-28 16:36:09+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV3 (alternative) `0x02e1fa...8a2dc3` — deployed 2025-10-15 11:28:01+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV3 (alternative) `0x02e1fa...8a2dc3` — deployed 2026-02-26 13:38:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | CompounderUniswapV4 | ambiguous — not counted | CompounderUniswapV4 (alternative) `0xaa95c9...66b189` — deployed 2026-02-26 13:38:07+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV4 (alternative) `0xaa95c9...66b189` — deployed 2025-10-15 11:28:03+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV4 (alternative) `0xaa95c9...66b189` — deployed 2025-11-28 16:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | ICLPositionManager | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | IPositionManagerV3 | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | ArcadiaLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | CLMath | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalanceLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalanceOptimizationMath | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | SlipstreamLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalancerSlipstream | ambiguous — not counted | RebalancerSlipstream (alternative) `0x580245...e2b79f` — deployed 2025-12-12 18:23:05+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x37c625...50d557` — deployed 2026-04-16 17:17:29+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x953ff3...38d9ea` — deployed 2025-12-12 18:23:09+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x580245...e2b79f` — deployed 2025-12-12 18:23:29+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x580245...e2b79f` — deployed 2026-02-26 13:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalancerUniswapV3 | ambiguous — not counted | RebalancerUniswapV3 (alternative) `0xba1d0c...d993bd` — deployed 2025-12-12 18:23:13+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV3 (alternative) `0xba1d0c...d993bd` — deployed 2025-12-12 18:23:33+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV3 (alternative) `0xba1d0c...d993bd` — deployed 2026-02-26 13:38:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | RebalancerUniswapV4 | ambiguous — not counted | RebalancerUniswapV4 (alternative) `0x01edaf...6a5ac0` — deployed 2025-12-12 18:23:35+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV4 (alternative) `0x01edaf...6a5ac0` — deployed 2026-02-26 13:38:41+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV4 (alternative) `0x01edaf...6a5ac0` — deployed 2025-12-12 18:23:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | PositionState | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | YieldClaimerSlipstream | ambiguous — not counted | YieldClaimerSlipstream (alternative) `0xc8bf4b...22871c` — deployed 2025-11-11 12:38:39+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x5a8278...4f18ba` — deployed 2026-02-26 13:38:15+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x8c1fbf...291980` — deployed 2026-04-16 17:17:31+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x5a8278...4f18ba` — deployed 2025-10-15 11:28:19+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x5a8278...4f18ba` — deployed 2025-11-28 16:36:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | YieldClaimer | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | YieldClaimerUniswapV3 | ambiguous — not counted | YieldClaimerUniswapV3 (alternative) `0x75ed28...afaa16` — deployed 2026-02-26 13:38:17+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV3 (alternative) `0x75ed28...afaa16` — deployed 2025-10-15 11:28:23+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV3 (alternative) `0x75ed28...afaa16` — deployed 2025-11-28 16:36:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | YieldClaimerUniswapV4 | ambiguous — not counted | YieldClaimerUniswapV4 (alternative) `0xd8aa21...d5d8d4` — deployed 2025-10-15 11:28:25+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV4 (alternative) `0xd8aa21...d5d8d4` — deployed 2025-11-28 16:36:24+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV4 (alternative) `0xd8aa21...d5d8d4` — deployed 2026-02-26 13:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | CowSwapper | own contract | CowSwapper (selected) `0xc92801...811854` — deployed 2026-02-12 19:49:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01 Sherlock.pdf | DefaultOrderHook | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | OrderHook | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | Guardian | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xefe328...218dad` | Tranche | core_logic | $1,637,723.67 | Verified native implementation with $1,637,723.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ec4a2...141df1` | LendingPool | core_logic | $1,059,574.62 | Verified native implementation with $1,059,574.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbc1071...2ff398` | TrancheWrapper | core_logic | $333,602.79 | Verified native implementation with $333,602.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9c63a4...5eec92` | Tranche | core_logic | $276,368.08 | Verified native implementation with $276,368.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x393893...2b1382` | Tranche | core_logic | $195,292.69 | Verified native implementation with $195,292.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x803ea6...6b98e2` | LendingPool | core_logic | $85,513.63 | Verified native implementation with $85,513.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x393893...2b1382` | Tranche | core_logic | $82,430.41 | Verified native implementation with $82,430.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x803ea6...6b98e2` | LendingPool | core_logic | $69,631.13 | Verified native implementation with $69,631.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xefe328...218dad` | Tranche | core_logic | $49,613.26 | Verified native implementation with $49,613.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3ec4a2...141df1` | LendingPool | core_logic | $45,193.56 | Verified native implementation with $45,193.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa37e9b...645e3b` | LendingPool | core_logic | $19,751.34 | Verified native implementation with $19,751.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd82bfa...7a8c60` | TrancheWrapper | core_logic | $5,585.80 | Verified native implementation with $5,585.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7cc801...34ba3a` | TrancheWrapper | core_logic | $5,327.17 | Verified native implementation with $5,327.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbea2b6...19cae1` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd8af1f...fbef28` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xbea2b6...19cae1` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd8af1f...fbef28` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x78db6a...16e8d6` | AccountV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x78db6a...16e8d6` | AccountV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe976bf...63d442` | AccountV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe976bf...63d442` | AccountV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfe0fa1...6091a5` | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xfe0fa1...6091a5` | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfe0fa1...6091a5` | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaaa843...402aaa` | Arcadia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb80897...f80465` | DefaultUniswapV4AM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xb80897...f80465` | DefaultUniswapV4AM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfbecea...60eed7` | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xfbecea...60eed7` | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfbecea...60eed7` | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xda14fd...768e59` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xda14fd...768e59` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x3ec4a2...141df1` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x803ea6...6b98e2` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa4b0b9...e1a7af` | LiquidatorL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x416b43...dc6f29` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x943e6e...3c46e9` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3c3ea4...9a1017` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x4529a0...2617bf` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7c5f5a...429bdc` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x580245...e2b79f` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x580245...e2b79f` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x37c625...50d557` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x580245...e2b79f` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x953ff3...38d9ea` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xba1d0c...d993bd` | RebalancerUniswapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xba1d0c...d993bd` | RebalancerUniswapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xba1d0c...d993bd` | RebalancerUniswapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x01edaf...6a5ac0` | RebalancerUniswapV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x01edaf...6a5ac0` | RebalancerUniswapV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x01edaf...6a5ac0` | RebalancerUniswapV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd06905...300d5f` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd06905...300d5f` | RegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd3a705...633f44` | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ade1f...1eb73b` | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcaf416...527189` | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9f4236...d44c27` | StakedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1dc7a0...d67bf1` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x1dc7a0...d67bf1` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1dc7a0...d67bf1` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbed6c3...0fdd4c` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x393893...2b1382` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xefe328...218dad` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbc1071...2ff398` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd82bfa...7a8c60` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xbc1071...2ff398` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd82bfa...7a8c60` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x17b582...409270` | WrappedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x17b582...409270` | WrappedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd74339...c98272` | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x147a2c...4b25a4` | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9189bc...477d53` | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5a8278...4f18ba` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x5a8278...4f18ba` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5a8278...4f18ba` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8c1fbf...291980` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc8bf4b...22871c` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x75ed28...afaa16` | YieldClaimerUniswapV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x75ed28...afaa16` | YieldClaimerUniswapV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x75ed28...afaa16` | YieldClaimerUniswapV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd8aa21...d5d8d4` | YieldClaimerUniswapV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd8aa21...d5d8d4` | YieldClaimerUniswapV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd8aa21...d5d8d4` | YieldClaimerUniswapV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 127 |
| upstream | 53 |
| standard_library | 1 |
| needs_review | 210 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 36 ambiguous, 122 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=1, medium=2
- Match method counts: temporal_name=5, unique_name=17

Zero-match audit list:

- [2197] drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview
- [15567] 2024-06 Renascense.pdf

Fork inheritance lineage and inherited audits are included when available.
