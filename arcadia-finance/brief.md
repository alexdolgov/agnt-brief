# Agentic Audit Brief: Arcadia Finance

## Project Overview

- Project: Arcadia Finance (`arcadia-finance`)
- Website: [https://arcadia.finance](https://arcadia.finance)
- Lifecycle: active (Tier 0, 67.1% below peak)
- Generated: 2026-06-17T07:00:36.390Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, optimism, unichain
- Contract surface: 61 unique implementations (135 raw deployments)
- DeFi Llama TVL: $6,210,434.00
- On-chain TVL (included contracts): $6,173,125.56
- TVL by chain: Base $6,106,009.25 | Optimism $67,116.31

## Project Description

Arcadia Finance is a DeFi protocol for non-custodial cross-margin accounts, lending pools, and automated liquidity management. It enables users to manage composable account positions, borrow against supported collateral, and deploy or optimize DEX liquidity strategies across supported chains, with leveraged yield farming treated as a legacy or secondary use case rather than the protocol's primary current identity.

### Architecture

The Factory deploys Account contracts that interact with Lending Pools to borrow funds, while Position Managers, Pricing Modules, Compounders, Rebalancers, and Yield Claimers work together as adapters to manage and optimize liquidity positions. The Registry maintains a list of approved modules, and the Liquidator ensures system solvency by closing unhealthy accounts.

## Contract Surface Quality

- Indexed contracts: 151; live-surface contracts included: 135 (133 live, 2 unknown).
- Excluded by liveness: 15 inactive, 1 singleton, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 8/63.

## Audit Coverage Summary

- Verified implementations audited: 30/58 (51.7%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 61
- Raw deployments: 135
- Audits discovered: 13
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 2 fresh, 2 aging, 8 stale, 1 unknown
- Tier 1 coverage: 44.8% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 26 | 44.8% | 2026-01 |
| Renascense | Tier 2 | 6 | 10.3% | 2025-01 |
| Pashov Audit Group | Tier 2 | 5 | 8.6% | 2024-10 |
| Trust Security | Tier 2 | 4 | 6.9% | 2023-12 |
| unknown | Tier 2 | 4 | 6.9% | 2023-03 |
| SourceHat | Tier 2 | 2 | 3.4% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Tranche | core_logic | optimism | n/a | 7 deployments: optimism [`0x393893...2b1382`](./contracts/optimism-10/0x393893caeb06b5c16728bb1e354b6c36942b1382/); optimism `0xefe328...218dad`; unichain [`0x393893...2b1382`](./contracts/unichain-130/0x393893caeb06b5c16728bb1e354b6c36942b1382/); unichain `0xefe328...218dad`; base [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/); base `0x9c63a4...5eec92`; base `0xefe328...218dad` | ✅ Audited |
| LendingPool | core_logic | optimism | n/a | 7 deployments: optimism [`0x3ec4a2...141df1`](./contracts/optimism-10/0x3ec4a293fb906dd2cd440c20decb250def141df1/); optimism `0x803ea6...6b98e2`; unichain [`0x3ec4a2...141df1`](./contracts/unichain-130/0x3ec4a293fb906dd2cd440c20decb250def141df1/); unichain `0x803ea6...6b98e2`; base [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/); base `0x803ea6...6b98e2`; base `0xa37e9b...645e3b` | ✅ Audited |
| TrancheWrapper | core_logic | base | n/a | 7 deployments: optimism `0xbc1071...2ff398`; optimism `0xd82bfa...7a8c60`; unichain `0xbc1071...2ff398`; unichain `0xd82bfa...7a8c60`; base [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/); base `0xbc1071...2ff398`; base `0xd82bfa...7a8c60` | ✅ Audited |
| AAAStaker | core_logic | base | n/a | [`0xdea153...f223f3`](./contracts/base-8453/0xdea1531d8a1505785eb517c7a28526443df223f3/) | ✅ Audited |
| AccountsGuard | governance | unichain | n/a | [`0x2529ae...d6240b`](./contracts/unichain-130/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | ✅ Audited |
| AccountV3 | core_logic | optimism | n/a | 3 deployments: optimism [`0x78db6a...16e8d6`](./contracts/optimism-10/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/); unichain [`0x78db6a...16e8d6`](./contracts/unichain-130/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/); base [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | ✅ Audited |
| AccountV4 | core_logic | optimism | n/a | 3 deployments: optimism [`0xe976bf...63d442`](./contracts/optimism-10/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/); unichain [`0xe976bf...63d442`](./contracts/unichain-130/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/); base [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | ✅ Audited |
| ChainlinkOM | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x6a5485...2eeb31`](./contracts/optimism-10/0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31/); unichain [`0x6a5485...2eeb31`](./contracts/unichain-130/0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31/) | ✅ Audited |
| CompounderSlipstream | adapter | base | n/a | 5 deployments: optimism `0x467837...3cfcf7`; unichain `0x467837...3cfcf7`; base [`0x35e594...b4f61f`](./contracts/base-8453/0x35e59448c7145482e56212510cc689612ab4f61f/); base `0x467837...3cfcf7`; base `0xd42a3a...8ddcd9` | ✅ Audited |
| CompounderUniswapV3 | adapter | optimism | n/a | 3 deployments: optimism [`0x02e1fa...8a2dc3`](./contracts/optimism-10/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/); unichain [`0x02e1fa...8a2dc3`](./contracts/unichain-130/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/); base [`0x02e1fa...8a2dc3`](./contracts/base-8453/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/) | ✅ Audited |
| CompounderUniswapV4 | adapter | optimism | n/a | 3 deployments: optimism [`0xaa95c9...66b189`](./contracts/optimism-10/0xaa95c9c402b195d8690ecaea2341a76e3266b189/); unichain [`0xaa95c9...66b189`](./contracts/unichain-130/0xaa95c9c402b195d8690ecaea2341a76e3266b189/); base [`0xaa95c9...66b189`](./contracts/base-8453/0xaa95c9c402b195d8690ecaea2341a76e3266b189/) | ✅ Audited |
| CowSwapper | adapter | base | n/a | [`0xc92801...811854`](./contracts/base-8453/0xc928013a219ec9f18de7b2dee6a50ba626811854/) | ✅ Audited |
| DefaultUniswapV4AM | adapter | optimism | n/a | 2 deployments: optimism [`0xb80897...f80465`](./contracts/optimism-10/0xb808971ea73341b0d7286b3d67f08de321f80465/); unichain [`0xb80897...f80465`](./contracts/unichain-130/0xb808971ea73341b0d7286b3d67f08de321f80465/) | ✅ Audited |
| Factory | registry | optimism | n/a | 3 deployments: optimism [`0xda14fd...768e59`](./contracts/optimism-10/0xda14fdd72345c4d2511357214c5b89a919768e59/); unichain [`0xda14fd...768e59`](./contracts/unichain-130/0xda14fdd72345c4d2511357214c5b89a919768e59/); base [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | ✅ Audited |
| Liquidator | operational_periphery | base | n/a | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ✅ Audited |
| LiquidatorL1 | operational_periphery | unichain | n/a | [`0xa4b0b9...e1a7af`](./contracts/unichain-130/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ✅ Audited |
| MerklOperator | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x969f02...8b42c6`](./contracts/optimism-10/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/); unichain [`0x969f02...8b42c6`](./contracts/unichain-130/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/); base [`0x969f02...8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | ✅ Audited |
| RebalancerSlipstream | adapter | base | n/a | 5 deployments: optimism `0x580245...e2b79f`; unichain `0x580245...e2b79f`; base [`0x37c625...50d557`](./contracts/base-8453/0x37c6258aee125d520b6f03fc2cb490955050d557/); base `0x580245...e2b79f`; base `0x953ff3...38d9ea` | ✅ Audited |
| RebalancerUniswapV3 | adapter | optimism | n/a | 3 deployments: optimism [`0xba1d0c...d993bd`](./contracts/optimism-10/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/); unichain [`0xba1d0c...d993bd`](./contracts/unichain-130/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/); base [`0xba1d0c...d993bd`](./contracts/base-8453/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/) | ✅ Audited |
| RebalancerUniswapV4 | adapter | optimism | n/a | 3 deployments: optimism [`0x01edaf...6a5ac0`](./contracts/optimism-10/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/); unichain [`0x01edaf...6a5ac0`](./contracts/unichain-130/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/); base [`0x01edaf...6a5ac0`](./contracts/base-8453/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/) | ✅ Audited |
| RegistryL1 | registry | unichain | n/a | [`0xd06905...300d5f`](./contracts/unichain-130/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | ✅ Audited |
| StakedAerodromeAM | adapter | optimism | n/a | 2 deployments: optimism [`0x9f4236...d44c27`](./contracts/optimism-10/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/); unichain [`0x9f4236...d44c27`](./contracts/unichain-130/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/) | ✅ Audited |
| StakedSlipstreamAM | adapter | optimism | n/a | 5 deployments: optimism [`0x1dc7a0...d67bf1`](./contracts/optimism-10/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); unichain [`0x1dc7a0...d67bf1`](./contracts/unichain-130/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base [`0x1dc7a0...d67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base `0xbed6c3...0fdd4c`; base `0xe0f20b...d8ca7b` | ✅ Audited |
| StakedStargateAM | adapter | optimism | n/a | [`0xae909e...7f9eea`](./contracts/optimism-10/0xae909e19fd13c01c28d5ee439d403920cf7f9eea/) | ✅ Audited |
| UniswapV3AM | adapter | optimism | n/a | 2 deployments: optimism [`0x21bd52...1667dc`](./contracts/optimism-10/0x21bd524cc54ca78a7c48254d4676184f781667dc/); unichain [`0x21bd52...1667dc`](./contracts/unichain-130/0x21bd524cc54ca78a7c48254d4676184f781667dc/) | ✅ Audited |
| UniswapV4HooksRegistry | registry | optimism | n/a | 2 deployments: optimism [`0x8b0fd5...ef5d3c`](./contracts/optimism-10/0x8b0fd5352cae4e7c86632ca791229d132fef5d3c/); unichain [`0x8b0fd5...ef5d3c`](./contracts/unichain-130/0x8b0fd5352cae4e7c86632ca791229d132fef5d3c/) | ✅ Audited |
| WrappedAerodromeAM | adapter | optimism | n/a | 3 deployments: optimism [`0x17b582...409270`](./contracts/optimism-10/0x17b5826382e3a5257b829cf0546a08bd77409270/); unichain [`0x17b582...409270`](./contracts/unichain-130/0x17b5826382e3a5257b829cf0546a08bd77409270/); base [`0x17b582...409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | ✅ Audited |
| YieldClaimerSlipstream | operational_periphery | optimism | n/a | 5 deployments: optimism [`0x5a8278...4f18ba`](./contracts/optimism-10/0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba/); unichain [`0x5a8278...4f18ba`](./contracts/unichain-130/0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba/); base [`0x5a8278...4f18ba`](./contracts/base-8453/0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba/); base `0x8c1fbf...291980`; base `0xc8bf4b...22871c` | ✅ Audited |
| YieldClaimerUniswapV3 | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x75ed28...afaa16`](./contracts/optimism-10/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/); unichain [`0x75ed28...afaa16`](./contracts/unichain-130/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/); base [`0x75ed28...afaa16`](./contracts/base-8453/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/) | ✅ Audited |
| YieldClaimerUniswapV4 | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xd8aa21...d5d8d4`](./contracts/optimism-10/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/); unichain [`0xd8aa21...d5d8d4`](./contracts/unichain-130/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/); base [`0xd8aa21...d5d8d4`](./contracts/base-8453/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountPlaceholder | core_logic | optimism | n/a | 4 deployments: optimism [`0xbea2b6...19cae1`](./contracts/optimism-10/0xbea2b6d45acaf62385877d835970a0788719cae1/); optimism `0xd8af1f...fbef28`; unichain [`0xbea2b6...19cae1`](./contracts/unichain-130/0xbea2b6d45acaf62385877d835970a0788719cae1/); unichain `0xd8af1f...fbef28` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AerodromePoolAM | adapter | optimism | n/a | 2 deployments: optimism [`0xfe0fa1...6091a5`](./contracts/optimism-10/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/); unichain [`0xfe0fa1...6091a5`](./contracts/unichain-130/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/) | ⚠️ Unaudited |
| Arcadia | unknown | base | n/a | [`0xaaa843...402aaa`](./contracts/base-8453/0xaaa843fb2916c0b57454270418e121c626402aaa/) | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | optimism | n/a | 2 deployments: optimism [`0xfbecea...60eed7`](./contracts/optimism-10/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/); unichain [`0xfbecea...60eed7`](./contracts/unichain-130/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-18912 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | optimism | unit-18900 | [`0x0b2c63...97ff85`](./contracts/optimism-10/0x0b2c639c533813f4aa9d7837caf62653d097ff85/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-18909 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| LiquidatorL2 | operational_periphery | optimism | n/a | [`0xa4b0b9...e1a7af`](./contracts/optimism-10/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | unit-18901 | [`0x416b43...dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | unit-18902 | [`0xc36442...11fe88`](./contracts/optimism-10/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | unichain | unit-18905 | [`0x943e6e...3c46e9`](./contracts/unichain-130/0x943e6e07a7e8e791dafc44083e54041d743c46e9/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18906 | [`0x03a520...ed34f1`](./contracts/base-8453/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18908 | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18910 | [`0xa990c6...b9d55f`](./contracts/base-8453/0xa990c6a764b73bf43cee5bb40339c3322fb9d55f/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18911 | [`0xb7996d...4534e5`](./contracts/base-8453/0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xe1f8cd...d68b53`](./contracts/base-8453/0xe1f8cd9ac4e4a65f54f38a5cdafca44f6dd68b53/) | ⚠️ Unaudited |
| PositionManager | governance | optimism | n/a | [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | ⚠️ Unaudited |
| PositionManager | governance | unichain | unit-18904 | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | ⚠️ Unaudited |
| PositionManager | governance | base | unit-18907 | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ⚠️ Unaudited |
| RegistryL2 | registry | optimism | n/a | [`0xd06905...300d5f`](./contracts/optimism-10/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | ⚠️ Unaudited |
| RouterTrampoline | adapter | unichain | n/a | [`0x354dbb...590667`](./contracts/unichain-130/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | ⚠️ Unaudited |
| SlipstreamAM | adapter | base | n/a | 4 deployments: optimism `0xd3a705...633f44`; unichain `0xd3a705...633f44`; base [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/); base `0xcaf416...527189` | ⚠️ Unaudited |
| StargateAM | adapter | optimism | n/a | [`0x20f790...8cfed4`](./contracts/optimism-10/0x20f7903290bf98716b62dc1c9da634291b8cfed4/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | [`0x9560e8...1088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ⚠️ Unaudited |
| WETH | token | unichain | n/a | [`0x420000...000006`](./contracts/unichain-130/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/); base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | base | n/a | 5 deployments: optimism `0xd74339...c98272`; unichain `0xd74339...c98272`; base [`0x147a2c...4b25a4`](./contracts/base-8453/0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4/); base `0x9189bc...477d53`; base `0xd74339...c98272` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | unichain | n/a | `0x7f9adf...a28a81` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x991d55...b24702` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd000df...bb25d0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/ArcadiaFinance) | SourceHat | Audit | 2022-06 | stale | Direct | contract_name | 4 | high |
| [NM0072-FINAL_ARCADIA.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0072-FINAL_ARCADIA.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 18 | high |
| [2023-12 Trust Security.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2023-12%20Trust%20Security.pdf) | Trust Security | Audit | 2023-12 | stale | Direct | contract_name | 18 | high |
| [2024-01 Pashov Group.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-01%20Pashov%20Group.pdf) | Pashov Audit Group | Audit | 2024-01 | stale | Direct | contract_name | 15 | high |
| [2024-01 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-01%20Renascense.pdf) | Renascense | Audit | 2024-01 | stale | Direct | contract_name | 18 | high |
| [2024-02 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-02%20Sherlock.pdf) | Sherlock | Contest | 2024-02 | stale | Direct | contract_name | 21 | high |
| [2024-04 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-04%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 3 | high |
| [2024-06 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-06%20Renascense.pdf) | Renascense | Audit | 2024-06 | stale | Direct | contract_name | 7 | medium |
| [2024-10 Pashov Group.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-10%20Pashov%20Group.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 4 | high |
| [2025-01 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2025-01%20Renascense.pdf) | Renascense | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [2025-09 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2025-09%20Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | 30 | high |
| [2026-01 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2026-01%20Sherlock.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 36 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xbea2b6...19cae1`](./contracts/optimism-10/0xbea2b6d45acaf62385877d835970a0788719cae1/) | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaaa843...402aaa`](./contracts/base-8453/0xaaa843fb2916c0b57454270418e121c626402aaa/) | Arcadia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfbecea...60eed7`](./contracts/optimism-10/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/) | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa4b0b9...e1a7af`](./contracts/optimism-10/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | LiquidatorL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd06905...300d5f`](./contracts/optimism-10/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | RegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x354dbb...590667`](./contracts/unichain-130/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | RouterTrampoline | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x147a2c...4b25a4`](./contracts/base-8453/0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4/) | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 29 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=11, medium=1
- Match method counts: extraction_exact=192

Zero-match audit list:

- [2197] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
