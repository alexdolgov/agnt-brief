# Agentic Audit Brief: Arcadia Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 11 audit(s)
- Eligible audit results: 13 (11 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Arcadia Finance (`arcadia-finance`)
- Website: [https://arcadia.finance](https://arcadia.finance)
- Lifecycle: active (Tier 0, 73.6% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, optimism, unichain
- Contract surface: 146 unique implementations (146 raw deployments)
- Coverage basis: 13/134 confirmed own live verified implementations (9.7%); conservative 9.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,811,821.00
- On-chain TVL (included contracts): $3,868,345.28
- TVL by chain: Base $3,621,476.93 | Optimism $246,868.35

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

- Indexed contracts: 136; live-surface contracts included: 136 (134 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 143/146 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/134 (9.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 143 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 143 of 146 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 13/134
- Verified + Unaudited implementations: 121
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 146
- Raw deployments: 146
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
| Sherlock | Tier 1 | 11 | 8.2% | 2026-01 |
| Pashov Audit Group | Tier 2 | 3 | 2.2% | 2024-10 |
| Renascense | Tier 2 | 3 | 2.2% | 2025-01 |
| Trust Security | Tier 2 | 2 | 1.5% | 2023-12 |
| SourceHat | Tier 2 | 1 | 0.7% | 2022-06 |
| unknown | Tier 2 | 1 | 0.7% | 2023-03 |

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

### ⚠️ Verified + Unaudited (123)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
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
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379589 | `0xbea2b6...19cae1` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379595 | `0xd8af1f...fbef28` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379627 | `0xbea2b6...19cae1` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379633 | `0xd8af1f...fbef28` | ⚠️ Unaudited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379577 | `0x78db6a...16e8d6` | ⚠️ Unaudited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379615 | `0x78db6a...16e8d6` | ⚠️ Unaudited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379597 | `0xe976bf...63d442` | ⚠️ Unaudited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379635 | `0xe976bf...63d442` | ⚠️ Unaudited |
| Aero | token | project_anchor | own_supporting | 0 | base | unit-379664 | `0x940181...d98631` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379600 | `0xfe0fa1...6091a5` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379638 | `0xfe0fa1...6091a5` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | base | unit-379696 | `0xfe0fa1...6091a5` | ⚠️ Unaudited |
| Arcadia | unknown | project_anchor | own_supporting | 0 | base | unit-379672 | `0xaaa843...402aaa` | ⚠️ Unaudited |
| ChainlinkOM | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-379575 | `0x6a5485...2eeb31` | ⚠️ Unaudited |
| ChainlinkOM | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | unichain | unit-379613 | `0x6a5485...2eeb31` | ⚠️ Unaudited |
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
| DefaultUniswapV4AM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379586 | `0xb80897...f80465` | ⚠️ Unaudited |
| DefaultUniswapV4AM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379624 | `0xb80897...f80465` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379599 | `0xfbecea...60eed7` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379637 | `0xfbecea...60eed7` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | base | unit-379695 | `0xfbecea...60eed7` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | optimism | unit-379596 | `0xda14fd...768e59` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | unichain | unit-379634 | `0xda14fd...768e59` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-379704 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | optimism | unit-379699 | `0x0b2c63...97ff85` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-379703 | `0x833589...a02913` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379608 | `0x3ec4a2...141df1` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379617 | `0x803ea6...6b98e2` | ⚠️ Unaudited |
| LiquidatorL2 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379583 | `0xa4b0b9...e1a7af` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379581 | `0x969f02...8b42c6` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379619 | `0x969f02...8b42c6` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | optimism | unit-379697 | `0x416b43...dc6f29` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | optimism | unit-379698 | `0xc36442...11fe88` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | unichain | unit-379701 | `0x943e6e...3c46e9` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379702 | `0x03a520...ed34f1` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379706 | `0x827922...485b72` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379707 | `0xa990c6...b9d55f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | base | unit-379692 | `0xe1f8cd...d68b53` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-379569 | `0x3c3ea4...9a1017` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 1 | unichain | unit-379700 | `0x4529a0...2617bf` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379705 | `0x7c5f5a...429bdc` | ⚠️ Unaudited |
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
| Registry | registry | project_anchor | own_supporting | 0 | base | unit-379682 | `0xd06905...300d5f` | ⚠️ Unaudited |
| RegistryL2 | registry | project_anchor | own_supporting | 0 | optimism | unit-379590 | `0xd06905...300d5f` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379591 | `0xd3a705...633f44` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379629 | `0xd3a705...633f44` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379649 | `0x3ade1f...1eb73b` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379681 | `0xcaf416...527189` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379683 | `0xd3a705...633f44` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379582 | `0x9f4236...d44c27` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379621 | `0x9f4236...d44c27` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | base | unit-379668 | `0x9f4236...d44c27` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379565 | `0x1dc7a0...d67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379605 | `0x1dc7a0...d67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379643 | `0x1dc7a0...d67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379678 | `0xbed6c3...0fdd4c` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379691 | `0xe0f20b...d8ca7b` | ⚠️ Unaudited |
| StargateAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379566 | `0x20f790...8cfed4` | ⚠️ Unaudited |
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
| Velo | token | project_anchor | own_supporting | 0 | optimism | unit-379580 | `0x9560e8...1088db` | ⚠️ Unaudited |
| WETH | token | project_anchor | own_supporting | 0 | unichain | unit-379609 | `0x420000...000006` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | optimism | unit-379571 | `0x420000...000006` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-379651 | `0x420000...000006` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379564 | `0x17b582...409270` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379604 | `0x17b582...409270` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379592 | `0xd74339...c98272` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379630 | `0xd74339...c98272` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379641 | `0x147a2c...4b25a4` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379663 | `0x9189bc...477d53` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379685 | `0xd74339...c98272` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379574 | `0x5a8278...4f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379612 | `0x5a8278...4f18ba` | ⚠️ Unaudited |
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

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379603 | `0x078d78...f57ad6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379616 | `0x7f9adf...a28a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379620 | `0x991d55...b24702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379644 | `0x20f790...8cfed4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379645 | `0x21bd52...1667dc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379655 | `0x6a5485...2eeb31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379658 | `0x79dd8b...2ae416` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379661 | `0x8b0fd5...ef5d3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379673 | `0xae909e...7f9eea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379674 | `0xb80897...f80465` | ❓ Unverified |

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
| native | 94 |
| upstream | 31 |
| standard_library | 1 |
| needs_review | 20 |

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
