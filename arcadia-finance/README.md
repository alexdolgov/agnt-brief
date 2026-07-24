# Agentic Audit Brief: Arcadia Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 11 audit(s)
- Eligible audit results: 13 (11 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Arcadia Finance (`arcadia-finance`)
- Website: [https://arcadia.finance](https://arcadia.finance)
- Lifecycle: active (Tier 0, 73.6% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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

**AccountV3** (`0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6`, chain 10)
Origin: hourglass (`0x78db6a...16e8d6`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPool** (`0x3ec4a293fb906dd2cd440c20decb250def141df1`, chain 10)
Origin: hourglass (`0x803ea6...6b98e2`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PositionManager** (`0x4529a01c7a0410167c5740c487a8de60232617bf`, chain 130)
Origin: aegis-markets (`0x4529a0...2617bf`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WrappedAerodromeAM** (`0x17b5826382e3a5257b829cf0546a08bd77409270`, chain 10)
Origin: hourglass (`0x17b582...409270`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x078d782b760474a361dda0af3839290b0ef57ad6`, chain 130)
- UnnamedContract (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 130)
- UnnamedContract (`0x991d5546c4b442b4c5fdc4c8b8b8d131deb24702`, chain 130)
- UnnamedContract (`0x20f7903290bf98716b62dc1c9da634291b8cfed4`, chain 8453)
- UnnamedContract (`0x21bd524cc54ca78a7c48254d4676184f781667dc`, chain 8453)
- UnnamedContract (`0x79dd8b8d4abb5deea986db1bf0a02e4ca42ae416`, chain 8453)
- UnnamedContract (`0x8b0fd5352cae4e7c86632ca791229d132fef5d3c`, chain 8453)
- UnnamedContract (`0xae909e19fd13c01c28d5ee439d403920cf7f9eea`, chain 8453)
- UnnamedContract (`0xb808971ea73341b0d7286b3d67f08de321f80465`, chain 8453)
- AAAStaker (`0xdea1531d8a1505785eb517c7a28526443df223f3`, chain 8453)
- AccountPlaceholder (`0xbea2b6d45acaf62385877d835970a0788719cae1`, chain 10)
- AccountPlaceholder (`0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28`, chain 10)
- AccountPlaceholder (`0xbea2b6d45acaf62385877d835970a0788719cae1`, chain 130)
- AccountPlaceholder (`0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28`, chain 130)
- AccountV3 (`0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6`, chain 130)
- AccountV3 (`0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6`, chain 8453)
- AccountV4 (`0xe976bfb44f9322164ca6fda6c5b84fbb6163d442`, chain 10)
- AccountV4 (`0xe976bfb44f9322164ca6fda6c5b84fbb6163d442`, chain 130)
- AccountV4 (`0xe976bfb44f9322164ca6fda6c5b84fbb6163d442`, chain 8453)
- Aero (`0x940181a94a35a4569e4529a3cdfb74e38fd98631`, chain 8453)
- AerodromePoolAM (`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5`, chain 10)
- AerodromePoolAM (`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5`, chain 130)
- Arcadia (`0xaaa843fb2916c0b57454270418e121c626402aaa`, chain 8453)
- CompounderSlipstream (`0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7`, chain 10)
- CompounderSlipstream (`0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7`, chain 130)
- CompounderSlipstream (`0x35e59448c7145482e56212510cc689612ab4f61f`, chain 8453)
- CompounderSlipstream (`0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7`, chain 8453)
- CompounderSlipstream (`0xd42a3ac56456bd5422835b36c35cacb6448ddcd9`, chain 8453)
- CompounderUniswapV3 (`0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3`, chain 10)
- CompounderUniswapV3 (`0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3`, chain 130)
- CompounderUniswapV3 (`0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3`, chain 8453)
- CompounderUniswapV4 (`0xaa95c9c402b195d8690ecaea2341a76e3266b189`, chain 10)
- CompounderUniswapV4 (`0xaa95c9c402b195d8690ecaea2341a76e3266b189`, chain 130)
- CompounderUniswapV4 (`0xaa95c9c402b195d8690ecaea2341a76e3266b189`, chain 8453)
- CowSwapper (`0xc928013a219ec9f18de7b2dee6a50ba626811854`, chain 8453)
- DefaultUniswapV4AM (`0xb808971ea73341b0d7286b3d67f08de321f80465`, chain 10)
- DefaultUniswapV4AM (`0xb808971ea73341b0d7286b3d67f08de321f80465`, chain 130)
- ERC20PrimaryAM (`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7`, chain 10)
- ERC20PrimaryAM (`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7`, chain 130)
- Factory (`0xda14fdd72345c4d2511357214c5b89a919768e59`, chain 10)
- Factory (`0xda14fdd72345c4d2511357214c5b89a919768e59`, chain 130)
- Factory (`0xda14fdd72345c4d2511357214c5b89a919768e59`, chain 8453)
- FiatTokenProxy (`0x0b2c639c533813f4aa9d7837caf62653d097ff85`, chain 10)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- LendingPool (`0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`, chain 10)
- LendingPool (`0x3ec4a293fb906dd2cd440c20decb250def141df1`, chain 130)
- LendingPool (`0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`, chain 130)
- LendingPool (`0x3ec4a293fb906dd2cd440c20decb250def141df1`, chain 8453)
- LendingPool (`0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`, chain 8453)
- LendingPool (`0xa37e9b4369dc20940009030bfbc2088f09645e3b`, chain 8453)
- Liquidator (`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`, chain 8453)
- LiquidatorL1 (`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`, chain 130)
- LiquidatorL2 (`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`, chain 10)
- MerklOperator (`0x969f0251360b9cf11c68f6ce9587924c1b8b42c6`, chain 10)
- MerklOperator (`0x969f0251360b9cf11c68f6ce9587924c1b8b42c6`, chain 130)
- MerklOperator (`0x969f0251360b9cf11c68f6ce9587924c1b8b42c6`, chain 8453)
- NonfungiblePositionManager (`0x416b433906b1b72fa758e166e239c43d68dc6f29`, chain 10)
- NonfungiblePositionManager (`0xc36442b4a4522e871399cd717abdd847ab11fe88`, chain 10)
- NonfungiblePositionManager (`0x943e6e07a7e8e791dafc44083e54041d743c46e9`, chain 130)
- NonfungiblePositionManager (`0x03a520b32c04bf3beef7beb72e919cf822ed34f1`, chain 8453)
- NonfungiblePositionManager (`0x827922686190790b37229fd06084350e74485b72`, chain 8453)
- NonfungiblePositionManager (`0xa990c6a764b73bf43cee5bb40339c3322fb9d55f`, chain 8453)
- NonfungiblePositionManager (`0xe1f8cd9ac4e4a65f54f38a5cdafca44f6dd68b53`, chain 8453)
- PositionManager (`0x3c3ea4b57a46241e54610e5f022e5c45859a1017`, chain 10)
- PositionManager (`0x7c5f5a4bbd8fd63184577525326123b519429bdc`, chain 8453)
- RebalancerSlipstream (`0x5802454749cc0c4a6f28d5001b4cd84432e2b79f`, chain 10)
- RebalancerSlipstream (`0x5802454749cc0c4a6f28d5001b4cd84432e2b79f`, chain 130)
- RebalancerSlipstream (`0x37c6258aee125d520b6f03fc2cb490955050d557`, chain 8453)
- RebalancerSlipstream (`0x5802454749cc0c4a6f28d5001b4cd84432e2b79f`, chain 8453)
- RebalancerSlipstream (`0x953ff365d0b562cec658dc46b394e9282338d9ea`, chain 8453)
- RebalancerUniswapV3 (`0xba1d0c99c261f94b9c8b52465890cca27dd993bd`, chain 10)
- RebalancerUniswapV3 (`0xba1d0c99c261f94b9c8b52465890cca27dd993bd`, chain 130)
- RebalancerUniswapV3 (`0xba1d0c99c261f94b9c8b52465890cca27dd993bd`, chain 8453)
- RebalancerUniswapV4 (`0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0`, chain 10)
- RebalancerUniswapV4 (`0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0`, chain 130)
- RebalancerUniswapV4 (`0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0`, chain 8453)
- RegistryL1 (`0xd0690557600eb8be8391d1d97346e2aab5300d5f`, chain 130)
- RegistryL2 (`0xd0690557600eb8be8391d1d97346e2aab5300d5f`, chain 10)
- SlipstreamAM (`0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44`, chain 10)
- SlipstreamAM (`0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44`, chain 130)
- SlipstreamAM (`0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b`, chain 8453)
- SlipstreamAM (`0xcaf4167de878cfb23d9912b1ff5869f2b3527189`, chain 8453)
- SlipstreamAM (`0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44`, chain 8453)
- StakedAerodromeAM (`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27`, chain 10)
- StakedAerodromeAM (`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27`, chain 130)
- StakedAerodromeAM (`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27`, chain 8453)
- StakedSlipstreamAM (`0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`, chain 10)
- StakedSlipstreamAM (`0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`, chain 130)
- StakedSlipstreamAM (`0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`, chain 8453)
- StakedSlipstreamAM (`0xbed6c3e35b9b1e044b3bc71465769edfdc0fdd4c`, chain 8453)
- StakedSlipstreamAM (`0xe0f20be5886f11cbcd2cb5ba9987bcbbf1d8ca7b`, chain 8453)
- StakedStargateAM (`0xae909e19fd13c01c28d5ee439d403920cf7f9eea`, chain 10)
- StargateAM (`0x20f7903290bf98716b62dc1c9da634291b8cfed4`, chain 10)
- Tranche (`0x393893caeb06b5c16728bb1e354b6c36942b1382`, chain 10)
- Tranche (`0xefe32813dba3a783059d50e5358b9e3661218dad`, chain 10)
- Tranche (`0x393893caeb06b5c16728bb1e354b6c36942b1382`, chain 130)
- Tranche (`0xefe32813dba3a783059d50e5358b9e3661218dad`, chain 130)
- Tranche (`0x393893caeb06b5c16728bb1e354b6c36942b1382`, chain 8453)
- Tranche (`0x9c63a4c499b323a25d389da759c2ac1e385eec92`, chain 8453)
- Tranche (`0xefe32813dba3a783059d50e5358b9e3661218dad`, chain 8453)
- TrancheWrapper (`0xbc10718571fcb3c3f67800e7c0887e450d2ff398`, chain 10)
- TrancheWrapper (`0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60`, chain 10)
- TrancheWrapper (`0xbc10718571fcb3c3f67800e7c0887e450d2ff398`, chain 130)
- TrancheWrapper (`0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60`, chain 130)
- TrancheWrapper (`0x7cc8013e784418dc9771403dd057f55ceb34ba3a`, chain 8453)
- TrancheWrapper (`0xbc10718571fcb3c3f67800e7c0887e450d2ff398`, chain 8453)
- TrancheWrapper (`0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60`, chain 8453)
- UniswapV3AM (`0x21bd524cc54ca78a7c48254d4676184f781667dc`, chain 10)
- UniswapV3AM (`0x21bd524cc54ca78a7c48254d4676184f781667dc`, chain 130)
- UniswapV4HooksRegistry (`0x8b0fd5352cae4e7c86632ca791229d132fef5d3c`, chain 10)
- UniswapV4HooksRegistry (`0x8b0fd5352cae4e7c86632ca791229d132fef5d3c`, chain 130)
- Velo (`0x9560e827af36c94d2ac33a39bce1fe78631088db`, chain 10)
- WETH (`0x4200000000000000000000000000000000000006`, chain 130)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 10)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 8453)
- WrappedAerodromeAM (`0x17b5826382e3a5257b829cf0546a08bd77409270`, chain 130)
- WrappedAerodromeAM (`0x17b5826382e3a5257b829cf0546a08bd77409270`, chain 8453)
- WrappedStakedSlipstream (`0xd74339e0f10fce96894916b93e5cc7de89c98272`, chain 10)
- WrappedStakedSlipstream (`0xd74339e0f10fce96894916b93e5cc7de89c98272`, chain 130)
- WrappedStakedSlipstream (`0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4`, chain 8453)
- WrappedStakedSlipstream (`0x9189bc25f8fac157b4d87b0b3c14f56ba1477d53`, chain 8453)
- WrappedStakedSlipstream (`0xd74339e0f10fce96894916b93e5cc7de89c98272`, chain 8453)
- YieldClaimerSlipstream (`0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`, chain 10)
- YieldClaimerSlipstream (`0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`, chain 130)
- YieldClaimerSlipstream (`0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`, chain 8453)
- YieldClaimerSlipstream (`0x8c1fbf38118fd5a704b6e7babcb7af1a9a291980`, chain 8453)
- YieldClaimerSlipstream (`0xc8bf4b2c740ff665864e9494832520f18822871c`, chain 8453)
- YieldClaimerUniswapV3 (`0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16`, chain 10)
- YieldClaimerUniswapV3 (`0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16`, chain 130)
- YieldClaimerUniswapV3 (`0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16`, chain 8453)
- YieldClaimerUniswapV4 (`0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4`, chain 10)
- YieldClaimerUniswapV4 (`0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4`, chain 130)
- YieldClaimerUniswapV4 (`0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4`, chain 8453)

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
| AAAStaker | core_logic | project_anchor | own_supporting | 0 | base | unit-379690 | `0xdea1531d8a1505785eb517c7a28526443df223f3` | ✅ Audited |
| AccountSpot | core_logic | project_anchor | own_supporting | 0 | base | unit-379688 | `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | ✅ Audited |
| AccountV1 | core_logic | project_anchor | own_supporting | 0 | base | unit-379677 | `0xbea2b6d45acaf62385877d835970a0788719cae1` | ✅ Audited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | base | unit-379657 | `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` | ✅ Audited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | base | unit-379693 | `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` | ✅ Audited |
| CowSwapper | adapter | project_anchor | own_supporting | 0 | base | unit-379680 | `0xc928013a219ec9f18de7b2dee6a50ba626811854` | ✅ Audited |
| Factory | registry | project_anchor | own_supporting | 0 | base | unit-379689 | `0xda14fdd72345c4d2511357214c5b89a919768e59` | ✅ Audited |
| Liquidator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379670 | `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` | ✅ Audited |
| LiquidatorL1 | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379622 | `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` | ✅ Audited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379666 | `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` | ✅ Audited |
| RegistryL1 | registry | project_anchor | own_supporting | 0 | unichain | unit-379628 | `0xd0690557600eb8be8391d1d97346e2aab5300d5f` | ✅ Audited |
| StakedStargateAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379585 | `0xae909e19fd13c01c28d5ee439d403920cf7f9eea` | ✅ Audited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | base | unit-379642 | `0x17b5826382e3a5257b829cf0546a08bd77409270` | ✅ Audited |

### ⚠️ Verified + Unaudited (191)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlienBaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-379694 | `0xefe32813dba3a783059d50e5358b9e3661218dad` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-379650 | `0x3ec4a293fb906dd2cd440c20decb250def141df1` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | base | unit-379676 | `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-379667 | `0x9c63a4c499b323a25d389da759c2ac1e385eec92` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | base | unit-379648 | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-379660 | `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379568 | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379578 | `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379598 | `0xefe32813dba3a783059d50e5358b9e3661218dad` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379570 | `0x3ec4a293fb906dd2cd440c20decb250def141df1` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-379669 | `0xa37e9b4369dc20940009030bfbc2088f09645e3b` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | base | unit-379686 | `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | base | unit-379659 | `0x7cc8013e784418dc9771403dd057f55ceb34ba3a` | ⚠️ Unaudited |
| PaymasterVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x347bf214f89f49f1a45af442a802bca4fd14a6ed`; optimism `0x479bec910d4025b4ac440ec27acf28eac522242b`; optimism `0x916e0ad2d7e3f446a26b0333ca37a9e8972030c5`; optimism `0xb9d32bf44a71bc0a383bd2061584e98a1e09c8d2` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379589 | `0xbea2b6d45acaf62385877d835970a0788719cae1` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379595 | `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379627 | `0xbea2b6d45acaf62385877d835970a0788719cae1` | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379633 | `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | ⚠️ Unaudited |
| AccountsGuard | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b`; unichain `0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b`; base `0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b` | ⚠️ Unaudited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379577 | `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` | ⚠️ Unaudited |
| AccountV3 | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379615 | `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` | ⚠️ Unaudited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379597 | `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` | ⚠️ Unaudited |
| AccountV4 | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379635 | `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` | ⚠️ Unaudited |
| ActionMultiCall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05b9ab82e34688ecc87408e0821d9779c3bfa5a3` | ⚠️ Unaudited |
| Aero | token | project_anchor | own_supporting | 0 | base | unit-379664 | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379600 | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379638 | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | ⚠️ Unaudited |
| AerodromePoolAM | adapter | project_anchor | own_supporting | 0 | base | unit-379696 | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | ⚠️ Unaudited |
| Arcadia | unknown | project_anchor | own_supporting | 0 | base | unit-379672 | `0xaaa843fb2916c0b57454270418e121c626402aaa` | ⚠️ Unaudited |
| ArcadiaTiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5`; base `0x7895fdde9bed4a3864c75186ebe4377a435cfc98` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52eaecac2402633d98b95213d0b473e069d86590` | ⚠️ Unaudited |
| BunniHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc53487e2a6ef468260bc938f645f84caaccac6f` | ⚠️ Unaudited |
| BunniHubA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9` | ⚠️ Unaudited |
| BunniHubController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bcc584979817219585b6a62a5bb6c15c1fa0f38` | ⚠️ Unaudited |
| BunniLensV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc`; base `0xf71e5e59f762b1d13e3797d24bf0c8986a05b621` | ⚠️ Unaudited |
| BunniZap | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6947da282e447a2e9d65ff00aaf80efb5116d75d` | ⚠️ Unaudited |
| BunniZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0` | ⚠️ Unaudited |
| ChainlinkOM | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-379575 | `0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31` | ⚠️ Unaudited |
| ChainlinkOM | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | unichain | unit-379613 | `0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31` | ⚠️ Unaudited |
| CLFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: optimism `0xcc0bddb707055e04e497ab22a59c2af4391cd12f`; optimism `0xe13dd1fba721aa81a1826d9523ac9bc7d260c879`; base `0x342576bb62afe26c547bfcbd9e94e76d1538a617`; base `0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a`; base `0xade65c38cd4849adba595a4323a8c7ddfe89716a`; base `0xc6403d7e22ab48bdd43d2473aac9574e881cd165`; base `0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1`; base `0xf8f2eb4940cfe7d13603dddd87f123820fc061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0xb5f7bd1c65437f789b62cbe98ef16cd9f1fc4b26`; base `0x11909efd754f01da354f8219391b40b2df7daf22`; base `0x1296a1b532e33f01091cf728706a94268c6025b5`; base `0x434bccab043311a20b16021c137ea81702790f7b`; base `0x7dccb042fac367809f773c3f62e5434d58204b3e`; base `0xc0d2086b6f70c0c40423626167096c6196cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x9b23957290d8e4709fb1e1512edc29e17c17dc99`; base `0x385293cae378c813f16f0c1334d774adddf56abb`; base `0x3be76d34317f6dba48ddbb2326cf16daf9998529`; base `0xb630227a79707d517320b6c0f885806389dfcbb3`; base `0xd63e8525e3f21bcea2a136f95e99263ba4948adc`; base `0xff8f90bb55292947f84b1386c10f0773258898c2` | ⚠️ Unaudited |
| CLPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x11b234946f28a3905710922138c65fbbe7496b4c`; base `0x88e336956de7b74627fdfd548656b55501a0471f`; base `0x941b5f2e00c02bb04d0c97ad59d1c7ca0d514306`; base `0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16`; base `0xad95bd62878f12bd74bb1528ad18420999894b48`; base `0xc770898522d2a9c8da7a10d63989b6b58305b665`; base `0xec8e5342b19977b4ef8892e02d8daecfa1315831` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x052916740d97a2e9d5668bbee813317dbcd19d10`; base `0xb329511948b8f7ae590242de0790050d1423c74f` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379572 | `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379610 | `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379646 | `0x35e59448c7145482e56212510cc689612ab4f61f` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379652 | `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7` | ⚠️ Unaudited |
| CompounderSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379684 | `0xd42a3ac56456bd5422835b36c35cacb6448ddcd9` | ⚠️ Unaudited |
| CompounderUniswapV3 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379563 | `0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3` | ⚠️ Unaudited |
| CompounderUniswapV3 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379602 | `0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3` | ⚠️ Unaudited |
| CompounderUniswapV3 | adapter | project_anchor | own_supporting | 0 | base | unit-379640 | `0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3` | ⚠️ Unaudited |
| CompounderUniswapV4 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379584 | `0xaa95c9c402b195d8690ecaea2341a76e3266b189` | ⚠️ Unaudited |
| CompounderUniswapV4 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379623 | `0xaa95c9c402b195d8690ecaea2341a76e3266b189` | ⚠️ Unaudited |
| CompounderUniswapV4 | adapter | project_anchor | own_supporting | 0 | base | unit-379671 | `0xaa95c9c402b195d8690ecaea2341a76e3266b189` | ⚠️ Unaudited |
| CowSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb988a32def54821dde0d7382e8a74f1be4da1f23`; base `0xffc742e68d41389be9ef1afd518f036064da2bb6` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5264eeeab16037a7a7af15ff69a470af6e2a2223`; base `0xe945ab812a22c02025dfc31d9523158b242a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: optimism `0x2b2a6209f813b360e0d8a006c73477d56e7a7f16`; base `0x0ad08370c76ff426f534bb2affd9b5555338ee68`; base `0x57bffd8deafa66437b8c6e8a49b24bf36db1b058`; base `0xc2cc3256434afbc36bb5e815e1bb2151310a1a0b`; base `0xccc21f4750e8b3e9c095bcb5d2ff59247a2ccd35` | ⚠️ Unaudited |
| DefaultOrderHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0f56a2d3ad80817de76d0498c98dd1223bc1f681`; base `0x5f7dfa6695293d4e6dffd1306959232b6120cea6`; base `0xf510bad90a6bfaf26abfc7e14a72b9b05509e5bb` | ⚠️ Unaudited |
| DefaultUniswapV4AM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379586 | `0xb808971ea73341b0d7286b3d67f08de321f80465` | ⚠️ Unaudited |
| DefaultUniswapV4AM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379624 | `0xb808971ea73341b0d7286b3d67f08de321f80465` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xbf571c205f45d29a99a9b5f0485e131d7e943f1c`; base `0x87d8f999bba9343e8099552426775b51c338e8cb` | ⚠️ Unaudited |
| EmergencyCouncil | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7a15f27533c2db26341220c1e0b939b56defeda` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379599 | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379637 | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | project_anchor | own_supporting | 0 | base | unit-379695 | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ⚠️ Unaudited |
| EsComplexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x3923820118a3b654644d31653bcc650f655c43a6`; base `0x3aa57f8a8fac29ce6897212ba950ea433b30b211`; base `0x3f42d7254ed785951885a30e3e86ac1c32252811`; base `0xbbd0cb9d847a087e778901cc25cd601e6f11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3968a4a07d64c6e16982d45191b9a09a261ec88` | ⚠️ Unaudited |
| EsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x365c6d588e8611125de3bea5b9280c304fa54113`; base `0x3d3a5ad6d7beab234d7f0338a01e62b1d36d8ea0`; base `0x4a023efe4b5cd304e800f29074186164fda36978` | ⚠️ Unaudited |
| EsTokenController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x154d41a96ad37570a2ad6849063d0b480da1ea99`; base `0x2de715d04579535b2005a2057455b3cfcb7f60dc`; base `0xf6c0db9e2f0a137c9c4cba82090dd25c86ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | optimism | unit-379596 | `0xda14fdd72345c4d2511357214c5b89a919768e59` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | unichain | unit-379634 | `0xda14fdd72345c4d2511357214c5b89a919768e59` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-379704 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | optimism | unit-379699 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-379703 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379608 | `0x3ec4a293fb906dd2cd440c20decb250def141df1` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379617 | `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` | ⚠️ Unaudited |
| LiquidatorL2 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379583 | `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` | ⚠️ Unaudited |
| LpMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee03e08107755bc34412e78377b971ecc7153590` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x70429f78c2d7d1de6f89be421bce64ba876c325b`; base `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379581 | `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379619 | `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x6dc9e1c04ee59ed3531d73a72256c0da46d10982`; base `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x21fcc0c421ae0a5f6919535ecf000688a0413b92`; optimism `0xff79ec912ba114fd7989b9a2b90c65f0c1b44722`; base `0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6`; base `0x393550950616b6931f9fa5f85f1ce695e25d81ad`; base `0x9574e3331964c8b4db516d639eb807709c3ada30`; base `0x9951ff0b830e46ef0e7ce34d9117e3214b1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0xe5db7c27a2c3dacc1678a080aa3b4cc75f36329c`; base `0x49540630a4d2ce67d54450d007d634f4c45b4f4f`; base `0xb4a9e5fc0727bef09d819fcfc5ece8ca9bcf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xaf6ebdf4c70061c5961994ae9c9956fbc2bcc32e`; base `0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | optimism | unit-379697 | `0x416b433906b1b72fa758e166e239c43d68dc6f29` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xbb5dfe1380333cee4c2eebd7202c80de2256adf4` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | optimism | unit-379698 | `0xc36442b4a4522e871399cd717abdd847ab11fe88` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | unichain | unit-379701 | `0x943e6e07a7e8e791dafc44083e54041d743c46e9` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379702 | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0xf7f8ccce99ca2896ec75d3a399d152db96808399`; base `0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3`; base `0x7dd33b26bd68e3cb0a749f0cb5e1716a746238d8`; base `0xe702fca0218bfe426b722a5789713e4390928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379706 | `0x827922686190790b37229fd06084350e74485b72` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379707 | `0xa990c6a764b73bf43cee5bb40339c3322fb9d55f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc741beb2156827704a1466575cca1cbf726a1178` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | base | unit-379692 | `0xe1f8cd9ac4e4a65f54f38a5cdafca44f6dd68b53` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0xe5e47ac4b5389cf4a2df66315d57f4f62ae80f9f`; base `0x11b5f9dff0fb1141715b2d549231ce8e07953814`; base `0x3b1ebc29667b5ac08714ac722d51a71e4da579f8`; base `0x48fa0226fce30a5ef1772d3d7cc8adfda5642f34`; base `0xc85c126442bb5b654792a70135805a9778c8e3fe`; base `0xf632031b94d72dee0d99def846c9b6211041337f` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-379569 | `0x3c3ea4b57a46241e54610e5f022e5c45859a1017` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 1 | unichain | unit-379700 | `0x4529a01c7a0410167c5740c487a8de60232617bf` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 1 | base | unit-379705 | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | ⚠️ Unaudited |
| PredictionETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbe87ee1ee62244a2df80a8093eab829c52863e8` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466`; optimism `0xad432b2ca49965266133f2bd4c17dc1ec12f5deb`; base `0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0`; base `0x3d4c22254f86f64b7ec90ab8f7aec1fbfd271c6c`; base `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a`; base `0x514c8b5f54112481e28028f1166bd78501089259`; base `0x919e53b78c36d442bd23094737def5fa064601fc` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379573 | `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379611 | `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379647 | `0x37c6258aee125d520b6f03fc2cb490955050d557` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379653 | `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` | ⚠️ Unaudited |
| RebalancerSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379665 | `0x953ff365d0b562cec658dc46b394e9282338d9ea` | ⚠️ Unaudited |
| RebalancerUniswapV3 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379587 | `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` | ⚠️ Unaudited |
| RebalancerUniswapV3 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379625 | `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` | ⚠️ Unaudited |
| RebalancerUniswapV3 | adapter | project_anchor | own_supporting | 0 | base | unit-379675 | `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` | ⚠️ Unaudited |
| RebalancerUniswapV4 | adapter | project_anchor | own_supporting | 0 | optimism | unit-379562 | `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` | ⚠️ Unaudited |
| RebalancerUniswapV4 | adapter | project_anchor | own_supporting | 0 | unichain | unit-379601 | `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` | ⚠️ Unaudited |
| RebalancerUniswapV4 | adapter | project_anchor | own_supporting | 0 | base | unit-379639 | `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` | ⚠️ Unaudited |
| RecoveryController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3889255c5a9a55137dfdf870a0c30a285978176a` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x812785c39a794a9518ee72dd0ce0bdd3f6250773` | ⚠️ Unaudited |
| Redistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x9e494d8b172531a2e2aba90d5b66addee3c87329`; base `0xd6136862f535275518e6c48ff4de1c4b649a9e80`; base `0xee5b3c7b333e2870b746b3b2b168ef0958e55e15` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | base | unit-379682 | `0xd0690557600eb8be8391d1d97346e2aab5300d5f` | ⚠️ Unaudited |
| RegistryL2 | registry | project_anchor | own_supporting | 0 | optimism | unit-379590 | `0xd0690557600eb8be8391d1d97346e2aab5300d5f` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x9d4736ec60715e71afe72973f7885dcbc21ea99b`; base `0x227f65131a261548b057215bb1d5ab2997964c7d` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858`; base `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ⚠️ Unaudited |
| RouterTrampoline | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x354dbba1348985cc952c467b8ddaf5dd07590667`; unichain `0x354dbba1348985cc952c467b8ddaf5dd07590667`; base `0x354dbba1348985cc952c467b8ddaf5dd07590667` | ⚠️ Unaudited |
| SinkManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae` | ⚠️ Unaudited |
| SlipstreamAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5bd6b1f9282328b4f21337fd3befe49964627d7` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379591 | `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379629 | `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379649 | `0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379681 | `0xcaf4167de878cfb23d9912b1ff5869f2b3527189` | ⚠️ Unaudited |
| SlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379683 | `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | ⚠️ Unaudited |
| SmartRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb20c411fc84fbb27e78608c24d0056d974ea9411` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379582 | `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379621 | `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` | ⚠️ Unaudited |
| StakedAerodromeAM | adapter | project_anchor | own_supporting | 0 | base | unit-379668 | `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379565 | `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6a87d944204bb5fdb9cf5534c03c46895f78ecd` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379605 | `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379643 | `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379678 | `0xbed6c3e35b9b1e044b3bc71465769edfdc0fdd4c` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | project_anchor | own_supporting | 0 | base | unit-379691 | `0xe0f20be5886f11cbcd2cb5ba9987bcbbf1d8ca7b` | ⚠️ Unaudited |
| StargateAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379566 | `0x20f7903290bf98716b62dc1c9da634291b8cfed4` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91616a7b9cf6d23f8c17845581051ebdc4bcb916` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x0792a633f0c19c351081cf4b211f68f79bcc9676`; optimism `0xba3aee516399388c779463183d00bb579f5041ca`; base `0x698cb2b6dd822994581fea6ea4fc755d1363a92f`; base `0xcbbb8035cac7d4b3ca7abb74cf7bdf900215ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2626664c2603336e57b271c5c0b26f421741e481` | ⚠️ Unaudited |
| TokenGenerator | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbce75497d72b25c3509b62ae1a47ccfb502ad08d` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379607 | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | ⚠️ Unaudited |
| Tranche | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379636 | `0xefe32813dba3a783059d50e5358b9e3661218dad` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379588 | `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | optimism | unit-379593 | `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379626 | `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | project_anchor | own_supporting | 0 | unichain | unit-379631 | `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | ⚠️ Unaudited |
| UniswapV3AM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379567 | `0x21bd524cc54ca78a7c48254d4676184f781667dc` | ⚠️ Unaudited |
| UniswapV3AM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379606 | `0x21bd524cc54ca78a7c48254d4676184f781667dc` | ⚠️ Unaudited |
| UniswapV4HooksRegistry | registry | project_anchor | own_supporting | 0 | optimism | unit-379579 | `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` | ⚠️ Unaudited |
| UniswapV4HooksRegistry | registry | project_anchor | own_supporting | 0 | unichain | unit-379618 | `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62d58b4cdd96b590ff4174e272b5f41693c8fba9` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x4bf3e32de155359d1d75e8b474b66848221142fc`; optimism `0xf132bdb9573867cd72f2585c338b923f973eb817`; base `0x6cb442acf35158d5eda88fe602221b67b400be3e` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| Velo | token | project_anchor | own_supporting | 0 | optimism | unit-379580 | `0x9560e827af36c94d2ac33a39bce1fe78631088db` | ⚠️ Unaudited |
| VestingFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x77ec0394e4edea1997bdb1919bb354d880faed84`; base `0xf61cc1aedd072784d8f133ba9409c538cfc9453d` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c`; base `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xfaf8fd17d9840595845582fcb047df13f006787d`; base `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | ⚠️ Unaudited |
| WETH | token | project_anchor | own_supporting | 0 | unichain | unit-379609 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | optimism | unit-379571 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-379651 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | optimism | unit-379564 | `0x17b5826382e3a5257b829cf0546a08bd77409270` | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | project_anchor | own_supporting | 0 | unichain | unit-379604 | `0x17b5826382e3a5257b829cf0546a08bd77409270` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4d3d804ed64c1f78097799208d46b1db4252749` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | optimism | unit-379592 | `0xd74339e0f10fce96894916b93e5cc7de89c98272` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | unichain | unit-379630 | `0xd74339e0f10fce96894916b93e5cc7de89c98272` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379641 | `0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379663 | `0x9189bc25f8fac157b4d87b0b3c14f56ba1477d53` | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | project_anchor | own_supporting | 0 | base | unit-379685 | `0xd74339e0f10fce96894916b93e5cc7de89c98272` | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379574 | `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379612 | `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x3630bdb1ac7cf8a435411391db75450350814f42`; base `0x1f75abf8a24782053b351d9b4ea6d1236ed59105`; base `0x2a07d99ec1140e25db07283930160d4bde93d09f` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379654 | `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379662 | `0x8c1fbf38118fd5a704b6e7babcb7af1a9a291980` | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379679 | `0xc8bf4b2c740ff665864e9494832520f18822871c` | ⚠️ Unaudited |
| YieldClaimerUniswapV3 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379576 | `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` | ⚠️ Unaudited |
| YieldClaimerUniswapV3 | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379614 | `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` | ⚠️ Unaudited |
| YieldClaimerUniswapV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379656 | `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` | ⚠️ Unaudited |
| YieldClaimerUniswapV4 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-379594 | `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` | ⚠️ Unaudited |
| YieldClaimerUniswapV4 | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-379632 | `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` | ⚠️ Unaudited |
| YieldClaimerUniswapV4 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-379687 | `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06b573c2bcd4dbd0c692727910f10d3912af330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x434781e7102b76d98c63793a705da4988bfa747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a0213f00be2134901ba644b2286e4b80387e351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379603 | `0x078d782b760474a361dda0af3839290b0ef57ad6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379616 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379620 | `0x991d5546c4b442b4c5fdc4c8b8b8d131deb24702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd000dfe68362b9a9395af0df9788b1de05bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd254915fc567865730f0516f8933bc0b96ec3527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x016874be39f6780d72599fc9b07873e47d108e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x060f571be934c70a16a61ba595f817f609dfc696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0616ce8591cd1383259311e99b7c404784b3baca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x072e64ff9f2173f0d7f97981ee2fe1982800b48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08266321a2fd7ff2577f45b7f1fd6f8076d00b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c0d0a13abf795ced4968069b28b38402de5c8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d6e297a73016b437caae65bfe32c59803b215d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x124258feb10b2a4e6b4c489a02be3ae376af6fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x125829a5e354ec4bd17203170f1801644df3e2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16f1f80654f2fea97293321675907cfa2e23e4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1733c3043e4964736aafe8660ecc481edf339c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19f3d2185fafb68b3a992fca4e8d05508e9ea64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a18d238b0f43edaa68640f3f537d229e23c5af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1aa817e96d91cebf4d465e16b2fbb95c707fb754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ad1a39b23795a79d035a7ed21127eda11afc526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b2468af57518dbfaffa94c54619090b7eddb484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7e4284423c1a2362c49b1ea223b73e38c81e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20640b89a607ed9c9098eed77852eb7753fd921d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x209e79c10bd1caa11d92900613a645e808bc2a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379644 | `0x20f7903290bf98716b62dc1c9da634291b8cfed4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379645 | `0x21bd524cc54ca78a7c48254d4676184f781667dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25f36f8a22683a93ed68e27afb8a3e784557948d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28317b3b98410d9cd2bae7356549fae0bc0ab828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28c44eb06b37475f32cd08d18ab1720cc68bfcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x293be4ee731ce9ccfa007aad4c0e4da8aa1b5220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29e15fd8a2c00719e68fbc7ba7a85c219622f566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b19186617cf537f3dff192ad18e7274acddb3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c629a508845d4ee23ed29ccb50e4aea691f6766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2df38301384400dbc9691aa5afc854597d9b210b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f3b0d35830b921fe7fcd08401c6cbbe29a72dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f82e1f7811f0121184a2f6a6711fa4959e5dbd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2feb44c740eb4e64ade33e0d44ef30049fb06cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x313d1708368bf8a4b23dac76301f9c93344dd724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x329efd924d39d7916023517b2b3c928dddbf8b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x353b1bea22dd3b41c0fc529cf72d829f9493b23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x354859f1bfc9a7c10f99d5d8b76b944de4f95ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b01457255bd6ec460d9ab8f31cfabd8a710d176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3be8e872282c4d36a2386993635f09e41343d0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4444e684e65e1aed9715979fb207bcf0987919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db0bc1987427a3ac34518c8968efdd4f9c28d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f8d116e99bce42b38989a62394fa9bb532dddc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41ad2dd0bd3bf54f4acbf97013ad40b6b32b35aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44c2c3d495495f713d29866e56d38b9c49e5e26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x476e393c39be976f8a0bf8f7d4538c9929667c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a3cf8ec44b51ad22783ba3ed7f6a0f7b215a703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c0b9fc00c4852b0b6070b00af03843ec9444cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c326ea180f9daa27b540af92ababd73d5b5b3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eb1574cf739d3524e55274f8ebf0530b4a97024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f225937edc33efd6109c4cef7b560b2d6401009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x519989b846d81b1ee793637b85cfa8a7906a3014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58486279f6dc6445ff3c752667fba4316f9de197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x588651d64820544f1067929bc261a4b46006b427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c9054a94eeeb147f5bc4550e2d918eac68c5e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63a08df576e967b3a22eba7c79c21bee19550bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63aed6536fecebc1cb354706e247f5bbfe52cec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x649502d5ae52065c8f1253c05373ad6b77c3a80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x652f7cf5e867660ad83eb53b9d85c24966a8b7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x666f4830d8e835f04276fc4337ff76592583db77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68e143d9754a244f5dce5a66e86492ea98e1c68c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379655 | `0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a9668c2c6e1fb107021375bacd9d92e79cc8369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ac994618e65a5b0cc1b062f500a882b6cfb26a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b7950fd5c17a9957cd1bc898221e39e599441d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c57e5d1e386370134b84ae06613b136fdb95811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7101ca664e77fb3cf5543968dff7aa9187e325be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7110d609d4743a65e8f26dbf815f3556ed2de6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d5090092d7cb6ea30496561193c762fd8a08d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73c29984d9d9813f3342eff42a8815cb4e6fc756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77682a6642fb134559592d2a1cf9a306a3ab3568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x783898572ef4970d445ad9af95d5dfdb633843ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78cc18f78efedebdd1dbf4c4aa8620b09e73a4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920fbf3b05d49edf62c03e43e2982bef2fea013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379658 | `0x79dd8b8d4abb5deea986db1bf0a02e4ca42ae416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82d2377db84a378071f50b078449364fc2c17bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8377244a3521ff658e008df0dd40b50ca3ce534c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x847aa2b5f7eb313f676c2ead3ff196204bf653d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x872521b46095139e70a38ae3e8d95611649aaf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89c84f33e9dae1839048e15c216ea5eac3307180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379661 | `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ca63e82b203011a7149f78f5480609fce6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d27bdf28b333b7b3e89f88d951ca2831bca8cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8de25c797ddcbedf1db5b3f31bce1f7112b439ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e038b8d372c3575ae9010c6ced1a6492c417e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ebf497f4c7b1628904abac4ab49b49352d42891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ee9459729deda55ec29f23404290b87ca7fa7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f08fb85827c497e267a784e4db79c986a0ac114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fae47263ce64faad5239021c25e244e1276efe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fcd066d9507c02512972673d805a15aa55031c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9192ffbc2f48223cf61d909f24fd2a1ec87730a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x927860797d07b1c46fbbe7f6f73d45c7e1bfbb27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x931d84457caaaf9470b006bb2c8e1e75bbbb7059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9379c3f01abd981edb2110702d46b19922b2cb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93d590335c2cb13bb0581b771770b1982a8f529b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9533035ad565426fd106c9c925d2393dad79d1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95ff6591b17befd31d4b899dbe3177d05c2d2819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x970079ab37b5837b4096b43a146e96ff0070be51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x976cc498406c5298dc8b9f6a2c11548985cfad1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bbb71f059f228e7f643ad041b333006bbdedbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e1c243eaf95943c9c2152d4ae02d5e2e55b846a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e27f316f7d6587be00a3105b26621bfee82ac6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f36431ff85072168e0e5e9980e5297f8e922c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa21b24dafacf940a58144200536b8f3bb50e257f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2720397544243f919f252cbf0867bea2513c413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa47559e016ab7f6be584087b872fc66d6e946149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa54844d419d18c4a1d399ad04282415cf2c4fde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa720c17b2e5e5a03dcd98c4bf904135256395117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7b7e239a124e68dc913b3feab514dd35619c1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa52632a038bdb4d943a61709981cc41767c2c24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379673 | `0xae909e19fd13c01c28d5ee439d403920cf7f9eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafe430951aac33e225ec898ecf7071cd72689bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb28b0a7b01f170bd1617a4277222741919b19080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb65cbb1b84a9f5f9026f3b0a56112fa249138688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb71cc2eee5b23dbe4934ba7277570aa06177b60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb772cb2d5bdb65140d3aea3e4ed5bd1afb8386a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb775af4b4cd4493ee9c008cde1275478f24a9ee6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379674 | `0xb808971ea73341b0d7286b3d67f08de321f80465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb931894cae0055cab7ebc077ffeb71051c2884f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd97c8f2a950d3a77a8f776cc9abf932adb84ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdd085f6bd74b1b5c911d6f11df44744214d5ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe56b963fb8255be4d91e37f82955f57d3bd4a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe9e352d555a4f13fc0206c72673e18292bc1577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0bf69c8f9307b0959804849ea07a1f90fbe382a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca0c63d9f0559ae0da2e58fa9fa9c4df95d1fee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbac7772bdb35ab605a030612849aedba2068436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccb48874fdb042497520f982e581994034c0a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf13556f6181971a23395ec21dce2543bdc2633a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0b4cdbd70f70eff686f948009de99d412565253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd135c5c27a58ed2199dc2e3b66e4abdd87d39da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd16eba3a92c34f832945454433f62bb3cb583621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2a928e243e720759090388778ea5331927fc186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd46949221703e0d7073b5e592eecc7a8d18dff6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd54a92d5612daa6d70c0f46fa7a374b483aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd67fedadd486e46b1662b9383f8ce2b040d4ae2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6aa7216dadd79120460adc1c46959592063f07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda243c4ac65fbcc81d58f4663161d36b0aa69edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf65df36e2fb762e5c299d68b9f8d8cd8652637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc1da443efff1e7d26142e14847653842b8bb0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc9a2c6e370b755b112325a3a1a29cfcaab02ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcd995f7d0e96aa80db9788c7dd109bd383b7f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd4c399dd642dd611d655e139d0aaafa7ea6723b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0808b8e2bdd70d70e540f977cf40e26e5811054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe12951e0597133991aa60258ae1352f88cb03a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1afc637f41e05efe08d55296a2ccff0072a4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2204e0f54c0834ead587bbd3aa2095f37213ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe23f656562d56fed9a2650a3e51a2b60124528c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe271590b7360db5e66181f804023d76e6afb910c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3763886bf91d5466b416b37fdf2b6337897716e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3b6a547495c84a039d70a81178496220b5fbd8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe49273edd71f3bb7b45df8166fbc955c1ae704b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7664186daadafbbf39b915a6a6a27f96d818ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8b5b213d2d3bacbe94a10655adb46af354d7e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8dba7823f6f31930fb9c052169e9cad28bfd62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb91c95b3851a6b3689c12a1e487d5bb9635385f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec5c5c0c88fd517d1d2585ba2c49b10881b5a561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedea12764d443eb11dfad1fcb439df3293a24958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4eb75f940e8d0e6dbee094a7dd9768d25da644a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5327de15b04af1a242892def26e93a762766526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5cfcebf8dcb5349a0f7bd8d595f0c3d252a4fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5e42e54d67ac16d965ca64651ca1bbffcf64c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6d652dd2567656cf087c7e7199efe4e3f937db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ac4a524205603b4ef9135942219400cc20ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9e1a0d13da84ffba769555bd5259eb619e78ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb702210a0b59aa00097a2e9fd431aa585d8dfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe9a0de13d927cba480bf8b64577832bfe532915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfea31de4ba3e90855aa88a8f19a1234e8cde63d9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 166
- Live contracts: 7
- Unknown liveness contracts: 159
- Source-verified contracts: 28
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=2, candidate hard block=4, contamination review=5, exact address book overlap=2, source verified unclassified=14, unverified unclassified=137

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x20640b89a607ed9c9098eed77852eb7753fd921d` | non_address_book | unknown | unknown | unverified | n/a | `0x07d5d2f9da871d8b7abdb36f1e37c05d67d1f338` |
| base | unverified unclassified | UnnamedContract<br>`0xdd4c399dd642dd611d655e139d0aaafa7ea6723b` | non_address_book | unknown | unknown | unverified | n/a | `0x07d5d2f9da871d8b7abdb36f1e37c05d67d1f338` |
| base | unverified unclassified | UnnamedContract<br>`0xf5cfcebf8dcb5349a0f7bd8d595f0c3d252a4fdd` | non_address_book | unknown | unknown | unverified | n/a | `0x07d5d2f9da871d8b7abdb36f1e37c05d67d1f338` |
| base | unverified unclassified | UnnamedContract<br>`0xf5e42e54d67ac16d965ca64651ca1bbffcf64c0c` | non_address_book | unknown | unknown | unverified | n/a | `0x07d5d2f9da871d8b7abdb36f1e37c05d67d1f338` |
| base | currently scope matched | AccountSpot<br>`0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | project_anchor | core_logic | live | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | currently scope matched | AccountV1<br>`0xbea2b6d45acaf62385877d835970a0788719cae1` | project_anchor | core_logic | live | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | candidate review | YieldClaimer<br>`0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | contamination review | ActionMultiCall<br>`0x05b9ab82e34688ecc87408e0821d9779c3bfa5a3` | non_address_book | periphery | unknown | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | contamination review | AerodromePoolAM<br>`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | project_anchor | adapter | live | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | contamination review | ERC20PrimaryAM<br>`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | project_anchor | adapter | live | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | contamination review | Registry<br>`0xd0690557600eb8be8391d1d97346e2aab5300d5f` | project_anchor | registry | live | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | exact address book overlap | SlipstreamAM<br>`0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | project_anchor | adapter | live | verified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | unverified unclassified | UnnamedContract<br>`0x7110d609d4743a65e8f26dbf815f3556ed2de6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0f518becfc14125f23b8422849f6393d59627ddb` |
| base | unverified unclassified | UnnamedContract<br>`0x9192ffbc2f48223cf61d909f24fd2a1ec87730a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1537655cc69326479b717bd26f2790878f407e0d` |
| base | unverified unclassified | UnnamedContract<br>`0x08266321a2fd7ff2577f45b7f1fd6f8076d00b2c` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x124258feb10b2a4e6b4c489a02be3ae376af6fc1` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x1ad1a39b23795a79d035a7ed21127eda11afc526` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x25f36f8a22683a93ed68e27afb8a3e784557948d` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x28317b3b98410d9cd2bae7356549fae0bc0ab828` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x2b19186617cf537f3dff192ad18e7274acddb3c3` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x2f82e1f7811f0121184a2f6a6711fa4959e5dbd8` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x2feb44c740eb4e64ade33e0d44ef30049fb06cc5` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x313d1708368bf8a4b23dac76301f9c93344dd724` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x354859f1bfc9a7c10f99d5d8b76b944de4f95ec4` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x476e393c39be976f8a0bf8f7d4538c9929667c39` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x4a3cf8ec44b51ad22783ba3ed7f6a0f7b215a703` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x4c326ea180f9daa27b540af92ababd73d5b5b3e1` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x58486279f6dc6445ff3c752667fba4316f9de197` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x588651d64820544f1067929bc261a4b46006b427` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x652f7cf5e867660ad83eb53b9d85c24966a8b7da` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x6ac994618e65a5b0cc1b062f500a882b6cfb26a6` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x6b7950fd5c17a9957cd1bc898221e39e599441d1` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x71d5090092d7cb6ea30496561193c762fd8a08d5` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x77682a6642fb134559592d2a1cf9a306a3ab3568` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x82d2377db84a378071f50b078449364fc2c17bb7` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x847aa2b5f7eb313f676c2ead3ff196204bf653d6` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x8d27bdf28b333b7b3e89f88d951ca2831bca8cda` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x8de25c797ddcbedf1db5b3f31bce1f7112b439ee` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x8e038b8d372c3575ae9010c6ced1a6492c417e62` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x8f08fb85827c497e267a784e4db79c986a0ac114` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x9533035ad565426fd106c9c925d2393dad79d1df` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xa2720397544243f919f252cbf0867bea2513c413` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xa7b7e239a124e68dc913b3feab514dd35619c1a1` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xafe430951aac33e225ec898ecf7071cd72689bce` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xb65cbb1b84a9f5f9026f3b0a56112fa249138688` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xbe56b963fb8255be4d91e37f82955f57d3bd4a75` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xd0b4cdbd70f70eff686f948009de99d412565253` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xd135c5c27a58ed2199dc2e3b66e4abdd87d39da4` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xd6aa7216dadd79120460adc1c46959592063f07a` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xda243c4ac65fbcc81d58f4663161d36b0aa69edd` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xdaf65df36e2fb762e5c299d68b9f8d8cd8652637` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xdc1da443efff1e7d26142e14847653842b8bb0ad` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xdc9a2c6e370b755b112325a3a1a29cfcaab02ef6` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xe12951e0597133991aa60258ae1352f88cb03a22` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xe8dba7823f6f31930fb9c052169e9cad28bfd62f` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xf5327de15b04af1a242892def26e93a762766526` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xf6d652dd2567656cf087c7e7199efe4e3f937db5` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0xf9e1a0d13da84ffba769555bd5259eb619e78ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x29e923a6de8761fdbe2a57618a978f1c3cee6bdf` |
| base | unverified unclassified | UnnamedContract<br>`0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x4f225937edc33efd6109c4cef7b560b2d6401009` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x016874be39f6780d72599fc9b07873e47d108e26` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x0d6e297a73016b437caae65bfe32c59803b215d0` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x16f1f80654f2fea97293321675907cfa2e23e4fb` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x1733c3043e4964736aafe8660ecc481edf339c44` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x19f3d2185fafb68b3a992fca4e8d05508e9ea64e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x1a18d238b0f43edaa68640f3f537d229e23c5af2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x1b2468af57518dbfaffa94c54619090b7eddb484` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x1c7e4284423c1a2362c49b1ea223b73e38c81e21` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x293be4ee731ce9ccfa007aad4c0e4da8aa1b5220` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x2c629a508845d4ee23ed29ccb50e4aea691f6766` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x2f3b0d35830b921fe7fcd08401c6cbbe29a72dc9` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x329efd924d39d7916023517b2b3c928dddbf8b0c` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x353b1bea22dd3b41c0fc529cf72d829f9493b23a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x3b01457255bd6ec460d9ab8f31cfabd8a710d176` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x3d4444e684e65e1aed9715979fb207bcf0987919` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x3db0bc1987427a3ac34518c8968efdd4f9c28d29` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x3f8d116e99bce42b38989a62394fa9bb532dddc1` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x41ad2dd0bd3bf54f4acbf97013ad40b6b32b35aa` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x4c0b9fc00c4852b0b6070b00af03843ec9444cd2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x4eb1574cf739d3524e55274f8ebf0530b4a97024` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x519989b846d81b1ee793637b85cfa8a7906a3014` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x5c9054a94eeeb147f5bc4550e2d918eac68c5e66` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x68e143d9754a244f5dce5a66e86492ea98e1c68c` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x6a9668c2c6e1fb107021375bacd9d92e79cc8369` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x783898572ef4970d445ad9af95d5dfdb633843ee` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x7920fbf3b05d49edf62c03e43e2982bef2fea013` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x8377244a3521ff658e008df0dd40b50ca3ce534c` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x872521b46095139e70a38ae3e8d95611649aaf51` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x8ca63e82b203011a7149f78f5480609fce6dae7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x8fcd066d9507c02512972673d805a15aa55031c2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x927860797d07b1c46fbbe7f6f73d45c7e1bfbb27` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x93d590335c2cb13bb0581b771770b1982a8f529b` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x95ff6591b17befd31d4b899dbe3177d05c2d2819` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x970079ab37b5837b4096b43a146e96ff0070be51` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x98bbb71f059f228e7f643ad041b333006bbdedbd` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x9e1c243eaf95943c9c2152d4ae02d5e2e55b846a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x9e27f316f7d6587be00a3105b26621bfee82ac6e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0x9f36431ff85072168e0e5e9980e5297f8e922c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xa54844d419d18c4a1d399ad04282415cf2c4fde6` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xa720c17b2e5e5a03dcd98c4bf904135256395117` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xaa52632a038bdb4d943a61709981cc41767c2c24` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xb28b0a7b01f170bd1617a4277222741919b19080` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xb71cc2eee5b23dbe4934ba7277570aa06177b60e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xb772cb2d5bdb65140d3aea3e4ed5bd1afb8386a0` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xb931894cae0055cab7ebc077ffeb71051c2884f3` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xbd97c8f2a950d3a77a8f776cc9abf932adb84ce2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xbdd085f6bd74b1b5c911d6f11df44744214d5ef1` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xbe9e352d555a4f13fc0206c72673e18292bc1577` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xc0bf69c8f9307b0959804849ea07a1f90fbe382a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xcbac7772bdb35ab605a030612849aedba2068436` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xccb48874fdb042497520f982e581994034c0a124` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xcf13556f6181971a23395ec21dce2543bdc2633a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xd46949221703e0d7073b5e592eecc7a8d18dff6d` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xd54a92d5612daa6d70c0f46fa7a374b483aeb5bb` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe0808b8e2bdd70d70e540f977cf40e26e5811054` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe1afc637f41e05efe08d55296a2ccff0072a4587` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe2204e0f54c0834ead587bbd3aa2095f37213ac8` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe23f656562d56fed9a2650a3e51a2b60124528c1` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe271590b7360db5e66181f804023d76e6afb910c` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe3763886bf91d5466b416b37fdf2b6337897716e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe3b6a547495c84a039d70a81178496220b5fbd8e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe49273edd71f3bb7b45df8166fbc955c1ae704b4` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xe8b5b213d2d3bacbe94a10655adb46af354d7e87` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xec5c5c0c88fd517d1d2585ba2c49b10881b5a561` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xf4eb75f940e8d0e6dbee094a7dd9768d25da644a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xf78ac4a524205603b4ef9135942219400cc20ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xfb702210a0b59aa00097a2e9fd431aa585d8dfa8` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| base | unverified unclassified | UnnamedContract<br>`0xfea31de4ba3e90855aa88a8f19a1234e8cde63d9` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| optimism | candidate hard block | CLFactory<br>`0xe13dd1fba721aa81a1826d9523ac9bc7d260c879` | non_address_book | registry | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | candidate hard block | CLGauge<br>`0xb5f7bd1c65437f789b62cbe98ef16cd9f1fc4b26` | non_address_book | operational_periphery | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | candidate hard block | CLGaugeFactory<br>`0x9b23957290d8e4709fb1e1512edc29e17c17dc99` | non_address_book | operational_periphery | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | candidate hard block | CLPool<br>`0x11b234946f28a3905710922138c65fbbe7496b4c` | non_address_book | core_logic | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | contamination review | MixedRouteQuoterV3<br>`0xaf6ebdf4c70061c5961994ae9c9956fbc2bcc32e` | non_address_book | periphery | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | CustomUnstakedFeeModule<br>`0x2b2a6209f813b360e0d8a006c73477d56e7a7f16` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | DynamicSwapFeeModule<br>`0xbf571c205f45d29a99a9b5f0485e131d7e943f1c` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | EmergencyCouncil<br>`0xf7a15f27533c2db26341220c1e0b939b56defeda` | non_address_book | governance | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | LpMigrator<br>`0xee03e08107755bc34412e78377b971ecc7153590` | non_address_book | periphery | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | MixedRouteQuoterV1<br>`0x21fcc0c421ae0a5f6919535ecf000688a0413b92` | non_address_book | periphery | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | MixedRouteQuoterV2<br>`0xe5db7c27a2c3dacc1678a080aa3b4cc75f36329c` | non_address_book | periphery | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xe5e47ac4b5389cf4a2df66315d57f4f62ae80f9f` | non_address_book | token | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | PaymasterVault<br>`0x347bf214f89f49f1a45af442a802bca4fd14a6ed` | non_address_book | core_logic | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | PaymasterVault<br>`0x479bec910d4025b4ac440ec27acf28eac522242b` | non_address_book | core_logic | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | PaymasterVault<br>`0x916e0ad2d7e3f446a26b0333ca37a9e8972030c5` | non_address_book | core_logic | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | PaymasterVault<br>`0xb9d32bf44a71bc0a383bd2061584e98a1e09c8d2` | non_address_book | core_logic | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | QuoterV2<br>`0xad432b2ca49965266133f2bd4c17dc1ec12f5deb` | non_address_book | periphery | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | source verified unclassified | SwapRouter<br>`0xba3aee516399388c779463183d00bb579f5041ca` | non_address_book | adapter | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| optimism | unverified unclassified | UnnamedContract<br>`0x06b573c2bcd4dbd0c692727910f10d3912af330c` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| optimism | unverified unclassified | UnnamedContract<br>`0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| optimism | candidate review | YieldClaimerSlipstream<br>`0x3630bdb1ac7cf8a435411391db75450350814f42` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xd60a9ccdf59ea829d98ba9d5229cad2e96381158` |
| optimism | source verified unclassified | SlipstreamAM<br>`0xb5bd6b1f9282328b4f21337fd3befe49964627d7` | non_address_book | adapter | unknown | verified | n/a | `0xd60a9ccdf59ea829d98ba9d5229cad2e96381158` |
| optimism | unverified unclassified | UnnamedContract<br>`0x434781e7102b76d98c63793a705da4988bfa747c` | non_address_book | unknown | unknown | unverified | n/a | `0xd60a9ccdf59ea829d98ba9d5229cad2e96381158` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5a0213f00be2134901ba644b2286e4b80387e351` | non_address_book | unknown | unknown | unverified | n/a | `0xd60a9ccdf59ea829d98ba9d5229cad2e96381158` |
| unichain | exact address book overlap | UnnamedContract<br>`0x078d782b760474a361dda0af3839290b0ef57ad6` | project_anchor | unknown | live | unverified | n/a | `0xd1de07e817f22104339711056911502d444f8424` |
| unichain | unverified unclassified | UnnamedContract<br>`0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e` | non_address_book | unknown | unknown | unverified | n/a | `0xd1de07e817f22104339711056911502d444f8424` |
| unichain | unverified unclassified | UnnamedContract<br>`0xd254915fc567865730f0516f8933bc0b96ec3527` | non_address_book | unknown | unknown | unverified | n/a | `0xd1de07e817f22104339711056911502d444f8424` |

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
| sourcehat.com/audits/ArcadiaFinance | Factory | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| sourcehat.com/audits/ArcadiaFinance | Vault | unmatched — not counted | — | listed in Contracts Overview and Finding #2 | no |
| sourcehat.com/audits/ArcadiaFinance | InterestRateModule | unmatched — not counted | — | listed in Contracts Overview | no |
| sourcehat.com/audits/ArcadiaFinance | Liquidator | own contract | Liquidator (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/ArcadiaFinance | Proxy | unmatched — not counted | — | listed in Contract Source Summary | no |
| NM0072-FINAL_ARCADIA.pdf | MainRegistry | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0072-FINAL_ARCADIA.pdf | OracleHub | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| NM0072-FINAL_ARCADIA.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4c499b323a25d389da759c2ac1e385eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0072-FINAL_ARCADIA.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b4369dc20940009030bfbc2088f09645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| NM0072-FINAL_ARCADIA.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| NM0072-FINAL_ARCADIA.pdf | Guardian | unmatched — not counted | — | listed in scope table | no |
| 2023-12 Trust Security.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6d45acaf62385877d835970a0788719cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-12 Trust Security.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | AbstractDerivedAssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | UniswapV3AssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | AbstractPrimaryAssetModule | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| 2023-12 Trust Security.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b4369dc20940009030bfbc2088f09645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-12 Trust Security.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4c499b323a25d389da759c2ac1e385eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-12 Trust Security.pdf | LendingPoolGuardian | unmatched — not counted | — | listed in scope | no |
| 2023-12 Trust Security.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Pashov Group.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b4369dc20940009030bfbc2088f09645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4c499b323a25d389da759c2ac1e385eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | LendingPoolGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | FactoryGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | BaseGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | RegistryGuardian | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | Creditor | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Pashov Group.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6d45acaf62385877d835970a0788719cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Pashov Group.pdf | AccountStorageV1 | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | ChainlinkOracleModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractOracleModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractAssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | UniswapV3AssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractDerivedAssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | AbstractPrimaryAssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Pashov Group.pdf | StandardERC20AssetModule | unmatched — not counted | — | listed in scope | no |
| 2024-01 Renascense.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6d45acaf62385877d835970a0788719cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Renascense.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b4369dc20940009030bfbc2088f09645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01 Renascense.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4c499b323a25d389da759c2ac1e385eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-01 Renascense.pdf | DebtToken | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | UniswapV3AssetModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | AbstractDerivedAssetModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | AbstractPrimaryAssetModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024-01 Renascense.pdf | Events | unmatched — not counted | — | mentioned in findings context | no |
| 2024-02 Sherlock.pdf | AccountV1 | own contract | AccountV1 (selected) `0xbea2b6d45acaf62385877d835970a0788719cae1` — deployed 2024-03-19 15:31:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b4369dc20940009030bfbc2088f09645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02 Sherlock.pdf | Liquidator | own contract | Liquidator (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2024-03-19 15:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | Factory | own contract | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (selected) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-03-19 was 6d from audit; next candidate 625d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | Registry | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Registry (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2024-03-19 15:31:25+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code)<br>RegistryL2 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2026-02-26 13:10:47+03 — liveness: live (code_present_context)<br>RegistryL1 (alternative) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02 Sherlock.pdf | UniswapV3AM | ambiguous — not counted | UniswapV3AM (alternative) `0x21bd524cc54ca78a7c48254d4676184f781667dc` — deployed 2026-02-26 13:11:35+03 — liveness: live (current_address_book_code)<br>UniswapV3AM (alternative) `0x21bd524cc54ca78a7c48254d4676184f781667dc` — deployed 2025-11-28 16:27:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02 Sherlock.pdf | StakedStargateAM | own contract | StakedStargateAM (selected) `0xae909e19fd13c01c28d5ee439d403920cf7f9eea` — deployed 2026-02-26 13:11:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Sherlock.pdf | Tranche | ambiguous — not counted | Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2024-03-19 15:25:57+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2024-03-19 15:25:25+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2025-11-28 16:26:51+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x9c63a4c499b323a25d389da759c2ac1e385eec92` — deployed 2024-09-17 13:54:45+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2026-02-26 13:10:21+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0xefe32813dba3a783059d50e5358b9e3661218dad` — deployed 2026-02-26 13:10:31+03 — liveness: live (code_present_context)<br>Tranche (alternative) `0x393893caeb06b5c16728bb1e354b6c36942b1382` — deployed 2025-11-28 16:26:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-04 Sherlock.pdf | WrappedAerodromeAM | own contract | WrappedAerodromeAM (alternative) `0x17b5826382e3a5257b829cf0546a08bd77409270` — deployed 2026-02-26 13:32:11+03 — liveness: live (current_address_book_code)<br>WrappedAerodromeAM (alternative) `0x17b5826382e3a5257b829cf0546a08bd77409270` — deployed 2025-11-28 16:31:03+03 — liveness: live (current_address_book_code)<br>WrappedAerodromeAM (selected) `0x17b5826382e3a5257b829cf0546a08bd77409270` — deployed 2024-05-21 16:29:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-21 was 26d from audit; next candidate 582d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06 Renascense.pdf | UniswapV3Compounder | unmatched — not counted | — | mentioned in L-1 context | no |
| 2024-06 Renascense.pdf | StakedSlipstream | unmatched — not counted | — | mentioned in L-2 context | no |
| 2024-06 Renascense.pdf | CLGauge | unmatched — not counted | — | mentioned in L-2 context | no |
| 2024-06 Renascense.pdf | CLPool | unmatched — not counted | — | mentioned in L-2 context | no |
| 2024-06 Renascense.pdf | TrancheWrapper | ambiguous — not counted | TrancheWrapper (alternative) `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` — deployed 2026-02-26 13:34:07+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` — deployed 2025-11-28 16:32:43+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` — deployed 2024-06-27 17:42:15+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` — deployed 2025-11-28 16:32:41+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` — deployed 2024-06-27 17:36:01+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` — deployed 2026-02-26 13:34:05+03 — liveness: live (current_address_book_code)<br>TrancheWrapper (alternative) `0x7cc8013e784418dc9771403dd057f55ceb34ba3a` — deployed 2024-09-17 13:54:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| 2024-10 Pashov Group.pdf | AccountSpot | own contract | AccountSpot (selected) `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` — deployed 2025-01-09 12:30:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10 Pashov Group.pdf | DefaultUniswapV4AM | ambiguous — not counted | DefaultUniswapV4AM (alternative) `0xb808971ea73341b0d7286b3d67f08de321f80465` — deployed 2026-02-26 13:36:25+03 — liveness: live (code_present_context)<br>DefaultUniswapV4AM (alternative) `0xb808971ea73341b0d7286b3d67f08de321f80465` — deployed 2025-11-28 16:34:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10 Pashov Group.pdf | UniswapV4HooksRegistry | ambiguous — not counted | UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2025-11-28 16:34:45+03 — liveness: live (current_address_book_code)<br>UniswapV4HooksRegistry (alternative) `0x8b0fd5352cae4e7c86632ca791229d132fef5d3c` — deployed 2026-02-26 13:36:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-01 Renascense.pdf | AAAStaker | own contract | AAAStaker (selected) `0xdea1531d8a1505785eb517c7a28526443df223f3` — deployed 2025-04-01 14:15:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01 Renascense.pdf | AbstractStaker | unmatched — not counted | — | — | no |
| 2025-09 Sherlock.pdf | AccountV3 | own contract | AccountV3 (selected) `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` — deployed 2025-10-06 15:23:27+03 — liveness: live (current_address_book_code)<br>AccountV3 (alternative) `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` — deployed 2025-11-28 16:36:04+03 — liveness: live (current_address_book_code)<br>AccountV3 (alternative) `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` — deployed 2026-02-26 13:37:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-06 was 7d from audit; next candidate 60d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | AccountV4 | own contract | AccountV4 (alternative) `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` — deployed 2025-11-28 16:36:06+03 — liveness: live (current_address_book_code)<br>AccountV4 (alternative) `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` — deployed 2026-02-26 13:38:01+03 — liveness: live (current_address_book_code)<br>AccountV4 (selected) `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` — deployed 2025-10-06 15:23:31+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-06 was 7d from audit; next candidate 60d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | AccountsGuard | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | StakedAerodromeAM | ambiguous — not counted | StakedAerodromeAM (alternative) `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` — deployed 2026-02-26 13:32:09+03 — liveness: live (current_address_book_code)<br>StakedAerodromeAM (alternative) `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` — deployed 2025-11-28 16:31:01+03 — liveness: live (current_address_book_code)<br>StakedAerodromeAM (alternative) `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` — deployed 2024-05-21 16:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | StakedSlipstreamAM | ambiguous — not counted | StakedSlipstreamAM (alternative) `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` — deployed 2026-02-26 13:33:43+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` — deployed 2025-11-28 16:32:21+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0xe0f20be5886f11cbcd2cb5ba9987bcbbf1d8ca7b` — deployed 2026-04-16 17:17:23+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` — deployed 2024-06-27 16:36:41+03 — liveness: live (current_address_book_code)<br>StakedSlipstreamAM (alternative) `0xbed6c3e35b9b1e044b3bc71465769edfdc0fdd4c` — deployed 2025-11-11 12:38:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | StakedStargateAM | own contract | StakedStargateAM (selected) `0xae909e19fd13c01c28d5ee439d403920cf7f9eea` — deployed 2026-02-26 13:11:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2025-11-28 16:26:34+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2026-02-26 13:10:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xda14fdd72345c4d2511357214c5b89a919768e59` — deployed 2024-03-19 15:25:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | CreateProxyLib | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | RegistryL1 | own contract | RegistryL1 (selected) `0xd0690557600eb8be8391d1d97346e2aab5300d5f` — deployed 2025-11-28 16:27:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | Compounder | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | YieldClaimer | unmatched — not counted | — | listed in scope | no |
| 2025-09 Sherlock.pdf | MerklOperator | own contract | MerklOperator (selected) `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` — deployed 2025-10-15 11:28:27+03 — liveness: live (current_address_book_code)<br>MerklOperator (alternative) `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` — deployed 2025-11-28 16:36:26+03 — liveness: live (current_address_book_code)<br>MerklOperator (alternative) `0x969f0251360b9cf11c68f6ce9587924c1b8b42c6` — deployed 2026-02-26 13:38:21+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-15 was 16d from audit; next candidate 60d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09 Sherlock.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2024-03-19 15:25:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2025-11-28 16:26:39+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2024-03-19 15:25:49+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` — deployed 2026-02-26 13:10:19+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2025-11-28 16:26:50+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0x3ec4a293fb906dd2cd440c20decb250def141df1` — deployed 2026-02-26 13:10:29+03 — liveness: live (code_present_context)<br>LendingPool (alternative) `0xa37e9b4369dc20940009030bfbc2088f09645e3b` — deployed 2024-09-17 13:54:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-09 Sherlock.pdf | LiquidatorL1 | own contract | LiquidatorL1 (selected) `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` — deployed 2025-11-28 16:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2026-01 Sherlock.pdf | CompounderSlipstream | ambiguous — not counted | CompounderSlipstream (alternative) `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7` — deployed 2025-10-15 11:27:57+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0xd42a3ac56456bd5422835b36c35cacb6448ddcd9` — deployed 2026-04-16 17:17:25+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7` — deployed 2025-11-28 16:36:08+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7` — deployed 2026-02-26 13:38:03+03 — liveness: live (current_address_book_code)<br>CompounderSlipstream (alternative) `0x35e59448c7145482e56212510cc689612ab4f61f` — deployed 2025-11-11 12:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | Compounder | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | CompounderUniswapV3 | ambiguous — not counted | CompounderUniswapV3 (alternative) `0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3` — deployed 2025-11-28 16:36:09+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV3 (alternative) `0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3` — deployed 2025-10-15 11:28:01+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV3 (alternative) `0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3` — deployed 2026-02-26 13:38:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | CompounderUniswapV4 | ambiguous — not counted | CompounderUniswapV4 (alternative) `0xaa95c9c402b195d8690ecaea2341a76e3266b189` — deployed 2026-02-26 13:38:07+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV4 (alternative) `0xaa95c9c402b195d8690ecaea2341a76e3266b189` — deployed 2025-10-15 11:28:03+03 — liveness: live (current_address_book_code)<br>CompounderUniswapV4 (alternative) `0xaa95c9c402b195d8690ecaea2341a76e3266b189` — deployed 2025-11-28 16:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | ICLPositionManager | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | IPositionManagerV3 | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | ArcadiaLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | CLMath | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalanceLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalanceOptimizationMath | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | SlipstreamLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalancerSlipstream | ambiguous — not counted | RebalancerSlipstream (alternative) `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` — deployed 2025-12-12 18:23:05+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x37c6258aee125d520b6f03fc2cb490955050d557` — deployed 2026-04-16 17:17:29+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x953ff365d0b562cec658dc46b394e9282338d9ea` — deployed 2025-12-12 18:23:09+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` — deployed 2025-12-12 18:23:29+03 — liveness: live (current_address_book_code)<br>RebalancerSlipstream (alternative) `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` — deployed 2026-02-26 13:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | RebalancerUniswapV3 | ambiguous — not counted | RebalancerUniswapV3 (alternative) `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` — deployed 2025-12-12 18:23:13+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV3 (alternative) `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` — deployed 2025-12-12 18:23:33+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV3 (alternative) `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` — deployed 2026-02-26 13:38:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | RebalancerUniswapV4 | ambiguous — not counted | RebalancerUniswapV4 (alternative) `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` — deployed 2025-12-12 18:23:35+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV4 (alternative) `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` — deployed 2026-02-26 13:38:41+03 — liveness: live (current_address_book_code)<br>RebalancerUniswapV4 (alternative) `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` — deployed 2025-12-12 18:23:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | PositionState | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | YieldClaimerSlipstream | ambiguous — not counted | YieldClaimerSlipstream (alternative) `0xc8bf4b2c740ff665864e9494832520f18822871c` — deployed 2025-11-11 12:38:39+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` — deployed 2026-02-26 13:38:15+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x8c1fbf38118fd5a704b6e7babcb7af1a9a291980` — deployed 2026-04-16 17:17:31+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` — deployed 2025-10-15 11:28:19+03 — liveness: live (current_address_book_code)<br>YieldClaimerSlipstream (alternative) `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` — deployed 2025-11-28 16:36:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | YieldClaimer | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | YieldClaimerUniswapV3 | ambiguous — not counted | YieldClaimerUniswapV3 (alternative) `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` — deployed 2026-02-26 13:38:17+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV3 (alternative) `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` — deployed 2025-10-15 11:28:23+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV3 (alternative) `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` — deployed 2025-11-28 16:36:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | YieldClaimerUniswapV4 | ambiguous — not counted | YieldClaimerUniswapV4 (alternative) `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` — deployed 2025-10-15 11:28:25+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV4 (alternative) `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` — deployed 2025-11-28 16:36:24+03 — liveness: live (current_address_book_code)<br>YieldClaimerUniswapV4 (alternative) `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` — deployed 2026-02-26 13:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01 Sherlock.pdf | CowSwapper | own contract | CowSwapper (selected) `0xc928013a219ec9f18de7b2dee6a50ba626811854` — deployed 2026-02-12 19:49:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01 Sherlock.pdf | DefaultOrderHook | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | OrderHook | unmatched — not counted | — | listed in scope | no |
| 2026-01 Sherlock.pdf | Guardian | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xefe32813dba3a783059d50e5358b9e3661218dad` | Tranche | core_logic | $1,637,723.67 | Verified native implementation with $1,637,723.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ec4a293fb906dd2cd440c20decb250def141df1` | LendingPool | core_logic | $1,059,574.62 | Verified native implementation with $1,059,574.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` | TrancheWrapper | core_logic | $333,602.79 | Verified native implementation with $333,602.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9c63a4c499b323a25d389da759c2ac1e385eec92` | Tranche | core_logic | $276,368.08 | Verified native implementation with $276,368.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | Tranche | core_logic | $195,292.69 | Verified native implementation with $195,292.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` | LendingPool | core_logic | $85,513.63 | Verified native implementation with $85,513.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | Tranche | core_logic | $82,430.41 | Verified native implementation with $82,430.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` | LendingPool | core_logic | $69,631.13 | Verified native implementation with $69,631.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xefe32813dba3a783059d50e5358b9e3661218dad` | Tranche | core_logic | $49,613.26 | Verified native implementation with $49,613.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3ec4a293fb906dd2cd440c20decb250def141df1` | LendingPool | core_logic | $45,193.56 | Verified native implementation with $45,193.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa37e9b4369dc20940009030bfbc2088f09645e3b` | LendingPool | core_logic | $19,751.34 | Verified native implementation with $19,751.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | TrancheWrapper | core_logic | $5,585.80 | Verified native implementation with $5,585.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7cc8013e784418dc9771403dd057f55ceb34ba3a` | TrancheWrapper | core_logic | $5,327.17 | Verified native implementation with $5,327.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbea2b6d45acaf62385877d835970a0788719cae1` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xbea2b6d45acaf62385877d835970a0788719cae1` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` | AccountV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6` | AccountV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` | AccountV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe976bfb44f9322164ca6fda6c5b84fbb6163d442` | AccountV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5` | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaaa843fb2916c0b57454270418e121c626402aaa` | Arcadia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb808971ea73341b0d7286b3d67f08de321f80465` | DefaultUniswapV4AM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xb808971ea73341b0d7286b3d67f08de321f80465` | DefaultUniswapV4AM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7` | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xda14fdd72345c4d2511357214c5b89a919768e59` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xda14fdd72345c4d2511357214c5b89a919768e59` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x3ec4a293fb906dd2cd440c20decb250def141df1` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af` | LiquidatorL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x416b433906b1b72fa758e166e239c43d68dc6f29` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x943e6e07a7e8e791dafc44083e54041d743c46e9` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3c3ea4b57a46241e54610e5f022e5c45859a1017` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x4529a01c7a0410167c5740c487a8de60232617bf` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x37c6258aee125d520b6f03fc2cb490955050d557` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x953ff365d0b562cec658dc46b394e9282338d9ea` | RebalancerSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` | RebalancerUniswapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` | RebalancerUniswapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xba1d0c99c261f94b9c8b52465890cca27dd993bd` | RebalancerUniswapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` | RebalancerUniswapV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` | RebalancerUniswapV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0` | RebalancerUniswapV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd0690557600eb8be8391d1d97346e2aab5300d5f` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd0690557600eb8be8391d1d97346e2aab5300d5f` | RegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44` | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b` | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcaf4167de878cfb23d9912b1ff5869f2b3527189` | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27` | StakedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbed6c3e35b9b1e044b3bc71465769edfdc0fdd4c` | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x393893caeb06b5c16728bb1e354b6c36942b1382` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xefe32813dba3a783059d50e5358b9e3661218dad` | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xbc10718571fcb3c3f67800e7c0887e450d2ff398` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x17b5826382e3a5257b829cf0546a08bd77409270` | WrappedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x17b5826382e3a5257b829cf0546a08bd77409270` | WrappedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd74339e0f10fce96894916b93e5cc7de89c98272` | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4` | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9189bc25f8fac157b4d87b0b3c14f56ba1477d53` | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8c1fbf38118fd5a704b6e7babcb7af1a9a291980` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc8bf4b2c740ff665864e9494832520f18822871c` | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` | YieldClaimerUniswapV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` | YieldClaimerUniswapV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16` | YieldClaimerUniswapV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` | YieldClaimerUniswapV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` | YieldClaimerUniswapV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4` | YieldClaimerUniswapV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
