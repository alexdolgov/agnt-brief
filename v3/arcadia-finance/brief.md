# Agentic Audit Brief: Arcadia Finance

## Project Overview

- Project: Arcadia Finance (`arcadia-finance`)
- Website: [https://arcadia.finance](https://arcadia.finance)
- Lifecycle: active (Tier 0, 73.6% below peak)
- Generated: 2026-07-03T21:05:30.162Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base, optimism, unichain
- Contract surface: 463 unique implementations (619 raw deployments)
- DeFi Llama TVL: $5,811,821.00
- On-chain TVL (included contracts): $5,742,569.28
- TVL by chain: Base $5,495,700.92 | Optimism $246,868.35

## Project Description

Leveraged Farming. Structurally: 145 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens, 20 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on solmate.

### Architecture

The protocol comprises 9 functional families. Its contracts share 59 common project-authored base contract(s) (rebalancer, abstractbase, guardian). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 641; live-surface contracts included: 619 (269 live, 350 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 31/113 (27.4%)
- Deployed-live implementations: 113 of 463 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/113
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 350
- Unique implementations: 463
- Raw deployments: 619
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): $1,874,224.00
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 31 match-unverified
- Tier 1 coverage: 23.9% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 27 | 23.9% | 2026-01 |
| Pashov Audit Group | Tier 2 | 6 | 5.3% | 2024-10 |
| Renascense | Tier 2 | 6 | 5.3% | 2025-01 |
| Trust Security | Tier 2 | 4 | 3.5% | 2023-12 |
| unknown | Tier 2 | 4 | 3.5% | 2023-03 |
| SourceHat | Tier 2 | 2 | 1.8% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Tranche | core_logic | optimism | n/a | 7 deployments: optimism [`0x393893...2b1382`](./contracts/optimism-10/0x393893caeb06b5c16728bb1e354b6c36942b1382/); optimism `0xefe328...218dad`; unichain [`0x393893...2b1382`](./contracts/unichain-130/0x393893caeb06b5c16728bb1e354b6c36942b1382/); unichain `0xefe328...218dad`; base [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/); base `0x9c63a4...5eec92`; base `0xefe328...218dad` | ✅ Audited |
| LendingPool | core_logic | optimism | n/a | 7 deployments: optimism [`0x3ec4a2...141df1`](./contracts/optimism-10/0x3ec4a293fb906dd2cd440c20decb250def141df1/); optimism `0x803ea6...6b98e2`; unichain [`0x3ec4a2...141df1`](./contracts/unichain-130/0x3ec4a293fb906dd2cd440c20decb250def141df1/); unichain `0x803ea6...6b98e2`; base [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/); base `0x803ea6...6b98e2`; base `0xa37e9b...645e3b` | ✅ Audited |
| TrancheWrapper | core_logic | base | n/a | 7 deployments: optimism `0xbc1071...2ff398`; optimism `0xd82bfa...7a8c60`; unichain `0xbc1071...2ff398`; unichain `0xd82bfa...7a8c60`; base [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/); base `0xbc1071...2ff398`; base `0xd82bfa...7a8c60` | ✅ Audited |
| AAAStaker | core_logic | base | n/a | [`0xdea153...f223f3`](./contracts/base-8453/0xdea1531d8a1505785eb517c7a28526443df223f3/) | ✅ Audited |
| AccountsGuard | governance | optimism | n/a | 3 deployments: optimism [`0x2529ae...d6240b`](./contracts/optimism-10/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/); unichain [`0x2529ae...d6240b`](./contracts/unichain-130/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/); base [`0x2529ae...d6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | ✅ Audited |
| AccountV3 | core_logic | optimism | n/a | 3 deployments: optimism [`0x78db6a...16e8d6`](./contracts/optimism-10/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/); unichain [`0x78db6a...16e8d6`](./contracts/unichain-130/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/); base [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | ✅ Audited |
| AccountV4 | core_logic | optimism | n/a | 3 deployments: optimism [`0xe976bf...63d442`](./contracts/optimism-10/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/); unichain [`0xe976bf...63d442`](./contracts/unichain-130/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/); base [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | ✅ Audited |
| ChainlinkOM | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x6a5485...2eeb31`](./contracts/optimism-10/0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31/); unichain [`0x6a5485...2eeb31`](./contracts/unichain-130/0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31/) | ✅ Audited |
| CompounderSlipstream | adapter | base | n/a | 5 deployments: optimism `0x467837...3cfcf7`; unichain `0x467837...3cfcf7`; base [`0x35e594...b4f61f`](./contracts/base-8453/0x35e59448c7145482e56212510cc689612ab4f61f/); base `0x467837...3cfcf7`; base `0xd42a3a...8ddcd9` | ✅ Audited |
| CompounderUniswapV3 | adapter | optimism | n/a | 3 deployments: optimism [`0x02e1fa...8a2dc3`](./contracts/optimism-10/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/); unichain [`0x02e1fa...8a2dc3`](./contracts/unichain-130/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/); base [`0x02e1fa...8a2dc3`](./contracts/base-8453/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/) | ✅ Audited |
| CompounderUniswapV4 | adapter | optimism | n/a | 3 deployments: optimism [`0xaa95c9...66b189`](./contracts/optimism-10/0xaa95c9c402b195d8690ecaea2341a76e3266b189/); unichain [`0xaa95c9...66b189`](./contracts/unichain-130/0xaa95c9c402b195d8690ecaea2341a76e3266b189/); base [`0xaa95c9...66b189`](./contracts/base-8453/0xaa95c9c402b195d8690ecaea2341a76e3266b189/) | ✅ Audited |
| CowSwapper | adapter | base | n/a | 3 deployments: base [`0xb988a3...da1f23`](./contracts/base-8453/0xb988a32def54821dde0d7382e8a74f1be4da1f23/); base `0xc92801...811854`; base `0xffc742...da2bb6` | ✅ Audited |
| DefaultOrderHook | unknown | base | n/a | 3 deployments: base [`0x0f56a2...c1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/); base `0x5f7dfa...20cea6`; base `0xf510ba...09e5bb` | ✅ Audited |
| DefaultUniswapV4AM | adapter | optimism | n/a | 2 deployments: optimism [`0xb80897...f80465`](./contracts/optimism-10/0xb808971ea73341b0d7286b3d67f08de321f80465/); unichain [`0xb80897...f80465`](./contracts/unichain-130/0xb808971ea73341b0d7286b3d67f08de321f80465/) | ✅ Audited |
| Factory | registry | optimism | n/a | 3 deployments: optimism [`0xda14fd...768e59`](./contracts/optimism-10/0xda14fdd72345c4d2511357214c5b89a919768e59/); unichain [`0xda14fd...768e59`](./contracts/unichain-130/0xda14fdd72345c4d2511357214c5b89a919768e59/); base [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | ✅ Audited |
| Liquidator | operational_periphery | base | n/a | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ✅ Audited |
| LiquidatorL1 | operational_periphery | unichain | n/a | [`0xa4b0b9...e1a7af`](./contracts/unichain-130/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ✅ Audited |
| MerklOperator | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x969f02...8b42c6`](./contracts/optimism-10/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/); unichain [`0x969f02...8b42c6`](./contracts/unichain-130/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/); base [`0x969f02...8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | ✅ Audited |
| RebalancerSlipstream | adapter | base | n/a | 5 deployments: optimism `0x580245...e2b79f`; unichain `0x580245...e2b79f`; base [`0x37c625...50d557`](./contracts/base-8453/0x37c6258aee125d520b6f03fc2cb490955050d557/); base `0x580245...e2b79f`; base `0x953ff3...38d9ea` | ✅ Audited |
| RebalancerUniswapV3 | adapter | optimism | n/a | 3 deployments: optimism [`0xba1d0c...d993bd`](./contracts/optimism-10/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/); unichain [`0xba1d0c...d993bd`](./contracts/unichain-130/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/); base [`0xba1d0c...d993bd`](./contracts/base-8453/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/) | ✅ Audited |
| RebalancerUniswapV4 | adapter | optimism | n/a | 3 deployments: optimism [`0x01edaf...6a5ac0`](./contracts/optimism-10/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/); unichain [`0x01edaf...6a5ac0`](./contracts/unichain-130/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/); base [`0x01edaf...6a5ac0`](./contracts/base-8453/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/) | ✅ Audited |
| RegistryL1 | registry | unichain | n/a | [`0xd06905...300d5f`](./contracts/unichain-130/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | ✅ Audited |
| StakedAerodromeAM | adapter | optimism | n/a | 3 deployments: optimism [`0x9f4236...d44c27`](./contracts/optimism-10/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/); unichain [`0x9f4236...d44c27`](./contracts/unichain-130/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/); base [`0x9f4236...d44c27`](./contracts/base-8453/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/) | ✅ Audited |
| StakedSlipstreamAM | adapter | optimism | n/a | 6 deployments: optimism [`0x1dc7a0...d67bf1`](./contracts/optimism-10/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); optimism `0xf6a87d...f78ecd`; unichain [`0x1dc7a0...d67bf1`](./contracts/unichain-130/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base [`0x1dc7a0...d67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base `0xbed6c3...0fdd4c`; base `0xe0f20b...d8ca7b` | ✅ Audited |
| StakedStargateAM | adapter | optimism | n/a | [`0xae909e...7f9eea`](./contracts/optimism-10/0xae909e19fd13c01c28d5ee439d403920cf7f9eea/) | ✅ Audited |
| UniswapV3AM | adapter | optimism | n/a | 2 deployments: optimism [`0x21bd52...1667dc`](./contracts/optimism-10/0x21bd524cc54ca78a7c48254d4676184f781667dc/); unichain [`0x21bd52...1667dc`](./contracts/unichain-130/0x21bd524cc54ca78a7c48254d4676184f781667dc/) | ✅ Audited |
| UniswapV4HooksRegistry | registry | optimism | n/a | 2 deployments: optimism [`0x8b0fd5...ef5d3c`](./contracts/optimism-10/0x8b0fd5352cae4e7c86632ca791229d132fef5d3c/); unichain [`0x8b0fd5...ef5d3c`](./contracts/unichain-130/0x8b0fd5352cae4e7c86632ca791229d132fef5d3c/) | ✅ Audited |
| WrappedAerodromeAM | adapter | optimism | n/a | 3 deployments: optimism [`0x17b582...409270`](./contracts/optimism-10/0x17b5826382e3a5257b829cf0546a08bd77409270/); unichain [`0x17b582...409270`](./contracts/unichain-130/0x17b5826382e3a5257b829cf0546a08bd77409270/); base [`0x17b582...409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | ✅ Audited |
| YieldClaimerSlipstream | operational_periphery | base | n/a | 8 deployments: optimism `0x3630bd...814f42`; optimism `0x5a8278...4f18ba`; unichain `0x5a8278...4f18ba`; base [`0x1f75ab...d59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/); base `0x2a07d9...93d09f`; base `0x5a8278...4f18ba`; base `0x8c1fbf...291980`; base `0xc8bf4b...22871c` | ✅ Audited |
| YieldClaimerUniswapV3 | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x75ed28...afaa16`](./contracts/optimism-10/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/); unichain [`0x75ed28...afaa16`](./contracts/unichain-130/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/); base [`0x75ed28...afaa16`](./contracts/base-8453/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/) | ✅ Audited |
| YieldClaimerUniswapV4 | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xd8aa21...d5d8d4`](./contracts/optimism-10/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/); unichain [`0xd8aa21...d5d8d4`](./contracts/unichain-130/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/); base [`0xd8aa21...d5d8d4`](./contracts/base-8453/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlienBaseToken | token | base | n/a | [`0x1dd2d6...0050c4`](./contracts/base-8453/0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4/) | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | optimism | n/a | 4 deployments: optimism [`0xbea2b6...19cae1`](./contracts/optimism-10/0xbea2b6d45acaf62385877d835970a0788719cae1/); optimism `0xd8af1f...fbef28`; unichain [`0xbea2b6...19cae1`](./contracts/unichain-130/0xbea2b6d45acaf62385877d835970a0788719cae1/); unichain `0xd8af1f...fbef28` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AerodromePoolAM | adapter | optimism | n/a | 2 deployments: optimism [`0xfe0fa1...6091a5`](./contracts/optimism-10/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/); unichain [`0xfe0fa1...6091a5`](./contracts/unichain-130/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/) | ⚠️ Unaudited |
| Arcadia | unknown | base | n/a | [`0xaaa843...402aaa`](./contracts/base-8453/0xaaa843fb2916c0b57454270418e121c626402aaa/) | ⚠️ Unaudited |
| ArcadiaTiers | unknown | base | n/a | 2 deployments: base [`0x436325...fa80b5`](./contracts/base-8453/0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5/); base `0x7895fd...5cfc98` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | base | n/a | [`0x52eaec...d86590`](./contracts/base-8453/0x52eaecac2402633d98b95213d0b473e069d86590/) | ⚠️ Unaudited |
| BunniHub | unknown | base | n/a | [`0xdc5348...ccac6f`](./contracts/base-8453/0xdc53487e2a6ef468260bc938f645f84caaccac6f/) | ⚠️ Unaudited |
| BunniHubA | unknown | base | n/a | [`0xd1fac4...e92bb9`](./contracts/base-8453/0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9/) | ⚠️ Unaudited |
| BunniHubController | governance | base | n/a | [`0x4bcc58...fa0f38`](./contracts/base-8453/0x4bcc584979817219585b6a62a5bb6c15c1fa0f38/) | ⚠️ Unaudited |
| BunniLensV2 | periphery | base | n/a | 2 deployments: base [`0x3ceb26...bec9dc`](./contracts/base-8453/0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc/); base `0xf71e5e...05b621` | ⚠️ Unaudited |
| BunniZap | adapter | base | n/a | [`0x6947da...16d75d`](./contracts/base-8453/0x6947da282e447a2e9d65ff00aaf80efb5116d75d/) | ⚠️ Unaudited |
| BunniZap | adapter | base | n/a | [`0x77c18d...0ab7f0`](./contracts/base-8453/0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0/) | ⚠️ Unaudited |
| CLFactory | registry | base | n/a | 8 deployments: optimism `0xcc0bdd...1cd12f`; optimism `0xe13dd1...60c879`; base [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/); base `0x5e7bb1...06809a`; base `0xade65c...89716a`; base `0xc6403d...1cd165`; base `0xec2ffc...9cd4d1`; base `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | 6 deployments: optimism `0xb5f7bd...fc4b26`; base [`0x11909e...7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/); base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x7dccb0...204b3e`; base `0xc0d208...cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | n/a | 6 deployments: optimism `0x9b2395...17dc99`; base [`0x385293...f56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/); base `0x3be76d...998529`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | optimism | n/a | 7 deployments: optimism [`0x11b234...496b4c`](./contracts/optimism-10/0x11b234946f28a3905710922138c65fbbe7496b4c/); base `0x88e336...a0471f`; base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xec8e53...315831` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | base | n/a | 2 deployments: base [`0x052916...d19d10`](./contracts/base-8453/0x052916740d97a2e9d5668bbee813317dbcd19d10/); base `0xb32951...23c74f` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | 2 deployments: base [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/); base `0xe945ab...2a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 4 deployments: base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | base | n/a | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | optimism | n/a | 2 deployments: optimism [`0xfbecea...60eed7`](./contracts/optimism-10/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/); unichain [`0xfbecea...60eed7`](./contracts/unichain-130/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/) | ⚠️ Unaudited |
| EsComplexRewarder | unknown | base | n/a | 4 deployments: base [`0x392382...5c43a6`](./contracts/base-8453/0x3923820118a3b654644d31653bcc650f655c43a6/); base `0x3aa57f...30b211`; base `0x3f42d7...252811`; base `0xbbd0cb...11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | base | n/a | [`0xd3968a...61ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | ⚠️ Unaudited |
| EsToken | token | base | n/a | 3 deployments: base [`0x365c6d...a54113`](./contracts/base-8453/0x365c6d588e8611125de3bea5b9280c304fa54113/); base `0x3d3a5a...6d8ea0`; base `0x4a023e...a36978` | ⚠️ Unaudited |
| EsTokenController | governance | base | n/a | 3 deployments: base [`0x154d41...a1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/); base `0x2de715...7f60dc`; base `0xf6c0db...ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | base | n/a | [`0xd3cfcb...df2e7b`](./contracts/base-8453/0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | optimism | n/a | [`0x0b2c63...97ff85`](./contracts/optimism-10/0x0b2c639c533813f4aa9d7837caf62653d097ff85/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| LiquidatorL2 | operational_periphery | optimism | n/a | [`0xa4b0b9...e1a7af`](./contracts/optimism-10/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: optimism `0x70429f...6c325b`; base [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | base | n/a | [`0x4aa34f...575d5f`](./contracts/base-8453/0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f/) | ⚠️ Unaudited |
| Minter | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x6dc9e1...d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/); base `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 5 deployments: optimism `0xff79ec...b44722`; base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x393550...5d81ad`; base `0x9574e3...3ada30`; base `0x9951ff...1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | base | n/a | 2 deployments: base [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/); base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | base | n/a | [`0xcd2a7d...65b555`](./contracts/base-8453/0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0x416b43...dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xbb5dfe...56adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xc36442...11fe88`](./contracts/optimism-10/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | unichain | n/a | [`0x943e6e...3c46e9`](./contracts/unichain-130/0x943e6e07a7e8e791dafc44083e54041d743c46e9/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x03a520...ed34f1`](./contracts/base-8453/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 5 deployments: optimism `0xf7f8cc...808399`; base [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/); base `0x7dd33b...6238d8`; base `0xe1f8cd...d68b53`; base `0xe702fc...928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xa990c6...b9d55f`](./contracts/base-8453/0xa990c6a764b73bf43cee5bb40339c3322fb9d55f/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xb7996d...4534e5`](./contracts/base-8453/0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | n/a | 5 deployments: base [`0x11b5f9...953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/); base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PositionManager | governance | optimism | n/a | [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | ⚠️ Unaudited |
| PositionManager | governance | unichain | n/a | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | ⚠️ Unaudited |
| PositionManager | governance | base | n/a | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ⚠️ Unaudited |
| PredictionETH | unknown | base | n/a | [`0xfbe87e...2863e8`](./contracts/base-8453/0xfbe87ee1ee62244a2df80a8093eab829c52863e8/) | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 6 deployments: optimism `0x89d821...621466`; base [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/); base `0x3d4c22...271c6c`; base `0x3d4e44...35b76a`; base `0x514c8b...089259`; base `0x919e53...4601fc` | ⚠️ Unaudited |
| RecoveryController | governance | base | n/a | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | ⚠️ Unaudited |
| Redeemer | unknown | base | n/a | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | ⚠️ Unaudited |
| Redistributor | operational_periphery | base | n/a | 3 deployments: base [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/); base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| RegistryL2 | registry | optimism | n/a | [`0xd06905...300d5f`](./contracts/optimism-10/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | 2 deployments: optimism `0x9d4736...1ea99b`; base [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| Router | adapter | optimism | n/a | 2 deployments: optimism [`0xa062ae...8b2858`](./contracts/optimism-10/0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858/); base `0xcf77a3...874e43` | ⚠️ Unaudited |
| RouterTrampoline | adapter | optimism | n/a | 3 deployments: optimism [`0x354dbb...590667`](./contracts/optimism-10/0x354dbba1348985cc952c467b8ddaf5dd07590667/); unichain [`0x354dbb...590667`](./contracts/unichain-130/0x354dbba1348985cc952c467b8ddaf5dd07590667/); base [`0x354dbb...590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | ⚠️ Unaudited |
| SinkManager | governance | optimism | n/a | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ⚠️ Unaudited |
| SlipstreamAM | adapter | base | n/a | 4 deployments: optimism `0xd3a705...633f44`; unichain `0xd3a705...633f44`; base [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/); base `0xcaf416...527189` | ⚠️ Unaudited |
| SmartRouter | adapter | base | n/a | [`0xb20c41...ea9411`](./contracts/base-8453/0xb20c411fc84fbb27e78608c24d0056d974ea9411/) | ⚠️ Unaudited |
| StargateAM | adapter | optimism | n/a | [`0x20f790...8cfed4`](./contracts/optimism-10/0x20f7903290bf98716b62dc1c9da634291b8cfed4/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | ⚠️ Unaudited |
| SwapRouter | adapter | optimism | n/a | 3 deployments: optimism [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/); base `0x698cb2...63a92f`; base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x262666...41e481`](./contracts/base-8453/0x2626664c2603336e57b271c5c0b26f421741e481/) | ⚠️ Unaudited |
| TokenGenerator | token | base | n/a | [`0xbce754...2ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | base | n/a | [`0x62d58b...c8fba9`](./contracts/base-8453/0x62d58b4cdd96b590ff4174e272b5f41693c8fba9/) | ⚠️ Unaudited |
| UniversalRouter | adapter | optimism | n/a | 3 deployments: optimism [`0x4bf3e3...1142fc`](./contracts/optimism-10/0x4bf3e32de155359d1d75e8b474b66848221142fc/); optimism `0xf132bd...3eb817`; base `0x6cb442...00be3e` | ⚠️ Unaudited |
| V3Migrator | periphery | base | n/a | [`0x23cf10...acd2d7`](./contracts/base-8453/0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | [`0x9560e8...1088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ⚠️ Unaudited |
| VestingFactory | operational_periphery | base | n/a | 2 deployments: base [`0x77ec03...faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/); base `0xf61cc1...c9453d` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 2 deployments: optimism `0x41c914...5abf3c`; base [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | 2 deployments: optimism `0xfaf8fd...06787d`; base [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| WETH | token | unichain | n/a | [`0x420000...000006`](./contracts/unichain-130/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/); base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | base | n/a | 6 deployments: optimism `0xc4d3d8...252749`; optimism `0xd74339...c98272`; unichain `0xd74339...c98272`; base [`0x147a2c...4b25a4`](./contracts/base-8453/0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4/); base `0x9189bc...477d53`; base `0xd74339...c98272` | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | base | n/a | [`0xc1e9b2...d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (350)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x005c6a...f9fa16` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0452df...02e3c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x06824d...29ab74` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x06b573...af330c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x07f544...36f5ce` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x08947e...3f75d4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a16cb...41d305` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b3ba5...3f12d1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b98e0...8a7356` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x133606...f6f78a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1486aa...11465f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1d5951...9df276` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f3f75...e5078f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f82e1...cbe989` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x209ce0...98e3f5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x20ffdb...3655ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x282ac0...f1592a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2c9988...834ff8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x301e46...943a1b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x327147...7ad985` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x380f23...12b4c2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x388c59...832f15` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3bf15b...1e9f88` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3f468e...142e9c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3fc8e6...38e2eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3fdb48...534e71` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x434781...fa747c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x45ff00...ce78a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x495193...447a69` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x49f248...30d3a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4a9ea0...1782dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4bc0e3...bf1c8f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4d5787...74dc40` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x53ca9c...2611e3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x548118...8ac758` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x585af0...34f18d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x58f62e...cbfca2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a0213...87e351` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a41a5...c289de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a6f7f...26678a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a9932...9345d0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d467a...3f5900` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x61f42c...f1cdde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x628ee3...9a678f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x629157...d45478` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x629e12...7cd905` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6315dc...3056a3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6666b2...39ec4c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6d600c...332bad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7155b8...a962bb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x71c05b...3b660a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7361e9...049d5f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x737464...aefd30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x756e7c...ada8ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x77c839...0f4b51` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x785de6...350521` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x79bca9...1f8dce` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7e4b99...aa7406` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ef270...dc1d9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x81944c...4c5e85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x829f78...61bea9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8391fe...835071` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x848cfd...7ca13c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8526d8...dcac42` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x87222d...2668a0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x88d3cd...b82690` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8e5433...5e6700` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8f8fef...ffc08d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90a1de...5b0e96` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x95885a...64e531` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9630dd...82d1e3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98f3df...2c8279` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa22d25...1b5e14` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa2decf...63ce45` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa4ac92...76df62` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa5c362...6dfee2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8854e...aa5fc3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa90991...3aea73` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa9c319...69e9c1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb18cb9...9497de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb81774...632777` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xba81ec...283896` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbd17de...0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbdd6f9...5170ef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc28ad2...a3bcbb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc38c3c...7d71e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc3f14f...e67783` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc565f7...6c59d9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc9b828...af648e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xccdf41...dea165` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcdd958...05cff0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xda03dc...3b17ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdce58b...146ec0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdf49ff...013e25` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdf9db1...560653` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe07eaa...eced54` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe0a596...a05d37` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe92752...074eba` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe9321c...bc6f50` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf10460...e5ff5a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf3488a...211b1a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf41f45...d32e04` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf4c67c...aa1d7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf74741...318cb8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfaa0a0...4301f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb9155...1ff8a5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x078d78...f57ad6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7f9adf...a28a81` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x991d55...b24702` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbe959c...6f0f6e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd000df...bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd25491...ec3527` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x016874...108e26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x01b0ca...d53c55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x060f57...dfc696` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0616ce...b3baca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0681d1...4ec818` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x072e64...00b48b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x082663...d00b2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b3a74...d9990e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bc1a7...2a1a16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c0d0a...e5c8a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cdee0...c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d6e29...b215d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x124258...af6fc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x125829...f3e2e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13de15...e96373` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15e627...a05dcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16f1f8...23e4fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1733c3...339c44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19f3d2...9ea64e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a18d2...3c5af2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1aa817...7fb754` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ad1a3...afc526` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b2468...ddb484` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c7e42...c81e21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d75c4...1a216f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20640b...fd921d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x209e79...bc2a77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x212665...f4dc52` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25225c...b8d9d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25f36f...57948d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27223e...bd1ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28317b...0ab828` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28c44e...8bfcb3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x293be4...1b5220` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29e15f...22f566` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b1918...ddb3c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c629a...1f6766` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2dd416...1ca9d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2df383...9b210b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f3b0d...a72dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f82e1...e5dbd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2feb44...b06cc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x313d17...4dd724` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31fafd...7d72a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x329efd...bf8b0c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3334d8...621fa9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x353b1b...93b23a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x354859...f95ec4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a0a75...88862c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ab1a1...1be23d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b0145...10d176` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3be8e8...43d0ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d4444...987919` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3db0bc...c28d29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e703f...9b6fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f8d11...2dddc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41ad2d...2b35aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x420dd3...ce40da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x430d45...d75fb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4384dc...5248ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44c2c3...e5e26f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45ca74...52b504` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4615c3...121463` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x476e39...667c39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49631c...365707` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a3cf8...15a703` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c0b9f...444cd2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c326e...b5b3e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4eb157...a97024` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ebe40...db4114` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f2259...401009` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x519989...6a3014` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536d46...aca7f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x538a3f...2607f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x584862...9de197` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x588651...06b427` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c3f18...9e37c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c9054...8c5e66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f4ef7...e4987a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62d499...4f1d8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63a08d...550bb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63aed6...52cec8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x649502...c3a80f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x652f7c...a8b7da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x666f48...83db77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68e143...e1c68c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68ec55...234755` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a9668...cc8369` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ac994...fb26a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b7950...9441d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c57e5...b95811` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d0c9a...c8d0c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d2d73...32f8e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7101ca...e325be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7110d6...2de6e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d509...8a08d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72d22d...e454f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73c299...6fc756` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775a59...a9ae0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77682a...ab3568` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x783898...3843ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78cc18...73a4cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7920fb...fea013` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x795ebb...51a01e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81ce73...8e7246` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82d237...c17bb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x837724...ce534c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x847aa2...f653d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x872521...9aaf51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89c84f...307180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ca63e...6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d27bd...ca8cda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8de25c...b439ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e038b...417e62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e6341...53b648` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ebf49...d42891` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ee945...7fa7c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f08fb...0ac114` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fae47...76efe8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fc786...62d1af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fcd06...5031c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9192ff...7730a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x920308...6ed6bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x927860...bfbb27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x931d84...bb7059` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9379c3...b2cb85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93d590...8f529b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93f3fd...49e0c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94c012...33f410` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x953303...79d1df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x955320...e1b5d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9592cd...a6d51b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95ff65...2d2819` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x970079...70be51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x976cc4...cfad1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98bbb7...bdedbd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98fec6...8c5eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b8731...dca185` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cdab0...3368a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e1c24...5b846a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e27f3...82ac6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f3643...922c9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa21b24...0e257f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa27203...13c413` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa47559...946149` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4e46b...3cd6d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa54844...c4fde6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa555e5...7cb275` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa70db2...0ac08d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa720c1...395117` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa76e09...090b24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7b7e2...19c1a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa5263...7c2c24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafe430...689bce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb28b0a...b19080` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2c653...317005` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4318c...136f48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb65cbb...138688` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71cc2...77b60e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb772cb...8386a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb775af...4a9ee6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb93189...2884f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb6ad0...c9fa84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbcb131...7ca71e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd97c8...b84ce2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdd085...4d5ef1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe0ec7...9762d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe56b9...bd4a75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe9e35...bc1577` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0bf69...be382a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca0c63...d1fee0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb4d5d...c535ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbac77...068436` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccb488...c0a124` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf1355...c2633a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0b4cd...565253` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd135c5...d39da4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd16eba...583621` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd262af...f00392` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2a928...7fc186` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd30677...05fb08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd46949...8dff6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd51500...bac106` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd54a92...aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5ed46...c3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd67fed...d4ae2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6aa72...63f07a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6e6d5...31d59f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xda243c...a69edd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf65d...652637` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc1da4...8bb0ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc9a2c...b02ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcd995...3b7f0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd4c39...a6723b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0808b...811054` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe09669...ecb24c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe12951...b03a22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1afc6...2a4587` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1c8e0...f92c04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2204e...213ac8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe23f65...4528c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe27159...fb910c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2af5f...b406e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe37638...97716e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe39ef5...cc74ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3b6a5...5fbd8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3cb2e...657939` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4324a...826be7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe49273...e704b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4c69a...bc382f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe76641...818ffe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8b5b2...4d7e87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8dba7...bfd62f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb91c9...35385f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec5c5c...b5a561` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xedea12...a24958` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef0efe...17e363` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf07835...a4da2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1503a...a040ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4171b...69af00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4eb75...da644a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5327d...766526` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5601f...442d2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5a7a6...692c79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5cfce...2a4fdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5e42e...f64c0c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf67016...77c45a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6d652...937db5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf78ac4...c20ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf926b5...f5da8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9d107...577d9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9e1a0...e78ba5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb7022...d8dfa8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfda1fb...d2bdc3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfddfa1...c5af6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe9a0d...532915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfea31d...de63d9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/ArcadiaFinance](https://sourcehat.com/audits/ArcadiaFinance) | SourceHat | Audit | 2022-06 | stale | Direct | contract_name | 2 | n/a |
| [NM0072-FINAL_ARCADIA.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0072-FINAL_ARCADIA.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 4 | n/a |
| [drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview](https://drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-12 Trust Security.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2023-12%20Trust%20Security.pdf) | Trust Security | Audit | 2023-12 | stale | Direct | contract_name | 4 | n/a |
| [2024-01 Pashov Group.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-01%20Pashov%20Group.pdf) | Pashov Audit Group | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |
| [2024-01 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-01%20Renascense.pdf) | Renascense | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |
| [2024-02 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-02%20Sherlock.pdf) | Sherlock | Contest | 2024-02 | stale | Direct | contract_name | 6 | n/a |
| [2024-04 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-04%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [2024-06 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-06%20Renascense.pdf) | Renascense | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [2024-10 Pashov Group.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2024-10%20Pashov%20Group.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 2 | n/a |
| [2025-01 Renascense.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2025-01%20Renascense.pdf) | Renascense | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [2025-09 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2025-09%20Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | 11 | n/a |
| [2026-01 Sherlock.pdf](https://github.com/arcadia-finance/arcadia-finance-audits/blob/main/audits-v2/2026-01%20Sherlock.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 12 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xbea2b6...19cae1`](./contracts/optimism-10/0xbea2b6d45acaf62385877d835970a0788719cae1/) | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfe0fa1...6091a5`](./contracts/optimism-10/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/) | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaaa843...402aaa`](./contracts/base-8453/0xaaa843fb2916c0b57454270418e121c626402aaa/) | Arcadia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x436325...fa80b5`](./contracts/base-8453/0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5/) | ArcadiaTiers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | DynamicSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfbecea...60eed7`](./contracts/optimism-10/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/) | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3968a...61ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x365c6d...a54113`](./contracts/base-8453/0x365c6d588e8611125de3bea5b9280c304fa54113/) | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154d41...a1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/) | EsTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3cfcb...df2e7b`](./contracts/base-8453/0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b/) | EsVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa4b0b9...e1a7af`](./contracts/optimism-10/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | LiquidatorL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6dc9e1...d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x416b43...dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x943e6e...3c46e9`](./contracts/unichain-130/0x943e6e07a7e8e791dafc44083e54041d743c46e9/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | RecoveryController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/) | Redistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd06905...300d5f`](./contracts/optimism-10/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | RegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa062ae...8b2858`](./contracts/optimism-10/0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x354dbb...590667`](./contracts/optimism-10/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | RouterTrampoline | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | SinkManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/) | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbce754...2ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | TokenGenerator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77ec03...faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/) | VestingFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x147a2c...4b25a4`](./contracts/base-8453/0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4/) | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc1e9b2...d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | YieldClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 40 |
| standard_library | 0 |
| needs_review | 366 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=52

Zero-match audit list:

- [2197] drive.google.com/file/d/1iBcaE9Qp22pVymmiDckFtfBQ4OLmCLFK/preview

Fork inheritance lineage and inherited audits are included when available.
