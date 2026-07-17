# Agentic Audit Brief: Arcadia Finance

## Project Overview

- Project: Arcadia Finance (`arcadia-finance`)
- Website: [https://arcadia.finance](https://arcadia.finance)
- Lifecycle: active (Tier 0, 73.6% below peak)
- Generated: 2026-07-04T14:53:04.111Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base, optimism, unichain
- Contract surface: 293 unique implementations (449 raw deployments)
- DeFi Llama TVL: $5,811,821.00
- On-chain TVL (included contracts): $5,742,569.28
- TVL by chain: Base $5,495,700.92 | Optimism $246,868.35

## Project Description

Leveraged Farming. Structurally: 205 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens, 31 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on solmate.

### Architecture

The protocol comprises 9 functional families. Its contracts share 51 common project-authored base contract(s) (rebalancer, abstractbase, guardian). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 471; live-surface contracts included: 449 (269 live, 180 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/80 (31.3%)
- Deployed-live implementations: 113 of 293 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/113
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 180
- Unique implementations: 293
- Raw deployments: 449
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): $1,874,224.00
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 31 match-unverified
- Tier 1 coverage: 27.5% (Sherlock)

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
| Tranche | core_logic | optimism | n/a | 7 deployments: optimism [`0x393893caeb06b5c16728bb1e354b6c36942b1382`](./contracts/optimism-10/0x393893caeb06b5c16728bb1e354b6c36942b1382/); optimism `0xefe32813dba3a783059d50e5358b9e3661218dad`; unichain [`0x393893caeb06b5c16728bb1e354b6c36942b1382`](./contracts/unichain-130/0x393893caeb06b5c16728bb1e354b6c36942b1382/); unichain `0xefe32813dba3a783059d50e5358b9e3661218dad`; base [`0x393893caeb06b5c16728bb1e354b6c36942b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/); base `0x9c63a4c499b323a25d389da759c2ac1e385eec92`; base `0xefe32813dba3a783059d50e5358b9e3661218dad` | ✅ Audited |
| LendingPool | core_logic | optimism | n/a | 7 deployments: optimism [`0x3ec4a293fb906dd2cd440c20decb250def141df1`](./contracts/optimism-10/0x3ec4a293fb906dd2cd440c20decb250def141df1/); optimism `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`; unichain [`0x3ec4a293fb906dd2cd440c20decb250def141df1`](./contracts/unichain-130/0x3ec4a293fb906dd2cd440c20decb250def141df1/); unichain `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`; base [`0x3ec4a293fb906dd2cd440c20decb250def141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/); base `0x803ea69c7e87d1d6c86adeb40cb636cc0e6b98e2`; base `0xa37e9b4369dc20940009030bfbc2088f09645e3b` | ✅ Audited |
| TrancheWrapper | core_logic | base | n/a | 7 deployments: optimism `0xbc10718571fcb3c3f67800e7c0887e450d2ff398`; optimism `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60`; unichain `0xbc10718571fcb3c3f67800e7c0887e450d2ff398`; unichain `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60`; base [`0x7cc8013e784418dc9771403dd057f55ceb34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/); base `0xbc10718571fcb3c3f67800e7c0887e450d2ff398`; base `0xd82bfa27d49e5a394ba371b293dae65e9b7a8c60` | ✅ Audited |
| AAAStaker | core_logic | base | n/a | [`0xdea1531d8a1505785eb517c7a28526443df223f3`](./contracts/base-8453/0xdea1531d8a1505785eb517c7a28526443df223f3/) | ✅ Audited |
| AccountsGuard | governance | optimism | n/a | 3 deployments: optimism [`0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b`](./contracts/optimism-10/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/); unichain [`0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b`](./contracts/unichain-130/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/); base [`0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | ✅ Audited |
| AccountV3 | core_logic | optimism | n/a | 3 deployments: optimism [`0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6`](./contracts/optimism-10/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/); unichain [`0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6`](./contracts/unichain-130/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/); base [`0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | ✅ Audited |
| AccountV4 | core_logic | optimism | n/a | 3 deployments: optimism [`0xe976bfb44f9322164ca6fda6c5b84fbb6163d442`](./contracts/optimism-10/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/); unichain [`0xe976bfb44f9322164ca6fda6c5b84fbb6163d442`](./contracts/unichain-130/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/); base [`0xe976bfb44f9322164ca6fda6c5b84fbb6163d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | ✅ Audited |
| ChainlinkOM | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31`](./contracts/optimism-10/0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31/); unichain [`0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31`](./contracts/unichain-130/0x6a5485e3ce6913890ae5e8bdc08a868d432eeb31/) | ✅ Audited |
| CompounderSlipstream | adapter | base | n/a | 5 deployments: optimism `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7`; unichain `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7`; base [`0x35e59448c7145482e56212510cc689612ab4f61f`](./contracts/base-8453/0x35e59448c7145482e56212510cc689612ab4f61f/); base `0x467837f44a71e3eab90aecfc995c84dc6b3cfcf7`; base `0xd42a3ac56456bd5422835b36c35cacb6448ddcd9` | ✅ Audited |
| CompounderUniswapV3 | adapter | optimism | n/a | 3 deployments: optimism [`0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3`](./contracts/optimism-10/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/); unichain [`0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3`](./contracts/unichain-130/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/); base [`0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3`](./contracts/base-8453/0x02e1fa043214e51edf1f0478c6d0d3d5658a2dc3/) | ✅ Audited |
| CompounderUniswapV4 | adapter | optimism | n/a | 3 deployments: optimism [`0xaa95c9c402b195d8690ecaea2341a76e3266b189`](./contracts/optimism-10/0xaa95c9c402b195d8690ecaea2341a76e3266b189/); unichain [`0xaa95c9c402b195d8690ecaea2341a76e3266b189`](./contracts/unichain-130/0xaa95c9c402b195d8690ecaea2341a76e3266b189/); base [`0xaa95c9c402b195d8690ecaea2341a76e3266b189`](./contracts/base-8453/0xaa95c9c402b195d8690ecaea2341a76e3266b189/) | ✅ Audited |
| CowSwapper | adapter | base | n/a | 3 deployments: base [`0xb988a32def54821dde0d7382e8a74f1be4da1f23`](./contracts/base-8453/0xb988a32def54821dde0d7382e8a74f1be4da1f23/); base `0xc928013a219ec9f18de7b2dee6a50ba626811854`; base `0xffc742e68d41389be9ef1afd518f036064da2bb6` | ✅ Audited |
| DefaultOrderHook | unknown | base | n/a | 3 deployments: base [`0x0f56a2d3ad80817de76d0498c98dd1223bc1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/); base `0x5f7dfa6695293d4e6dffd1306959232b6120cea6`; base `0xf510bad90a6bfaf26abfc7e14a72b9b05509e5bb` | ✅ Audited |
| DefaultUniswapV4AM | adapter | optimism | n/a | 2 deployments: optimism [`0xb808971ea73341b0d7286b3d67f08de321f80465`](./contracts/optimism-10/0xb808971ea73341b0d7286b3d67f08de321f80465/); unichain [`0xb808971ea73341b0d7286b3d67f08de321f80465`](./contracts/unichain-130/0xb808971ea73341b0d7286b3d67f08de321f80465/) | ✅ Audited |
| Factory | registry | optimism | n/a | 3 deployments: optimism [`0xda14fdd72345c4d2511357214c5b89a919768e59`](./contracts/optimism-10/0xda14fdd72345c4d2511357214c5b89a919768e59/); unichain [`0xda14fdd72345c4d2511357214c5b89a919768e59`](./contracts/unichain-130/0xda14fdd72345c4d2511357214c5b89a919768e59/); base [`0xda14fdd72345c4d2511357214c5b89a919768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | ✅ Audited |
| Liquidator | operational_periphery | base | n/a | [`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ✅ Audited |
| LiquidatorL1 | operational_periphery | unichain | n/a | [`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`](./contracts/unichain-130/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ✅ Audited |
| MerklOperator | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x969f0251360b9cf11c68f6ce9587924c1b8b42c6`](./contracts/optimism-10/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/); unichain [`0x969f0251360b9cf11c68f6ce9587924c1b8b42c6`](./contracts/unichain-130/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/); base [`0x969f0251360b9cf11c68f6ce9587924c1b8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | ✅ Audited |
| RebalancerSlipstream | adapter | base | n/a | 5 deployments: optimism `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f`; unichain `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f`; base [`0x37c6258aee125d520b6f03fc2cb490955050d557`](./contracts/base-8453/0x37c6258aee125d520b6f03fc2cb490955050d557/); base `0x5802454749cc0c4a6f28d5001b4cd84432e2b79f`; base `0x953ff365d0b562cec658dc46b394e9282338d9ea` | ✅ Audited |
| RebalancerUniswapV3 | adapter | optimism | n/a | 3 deployments: optimism [`0xba1d0c99c261f94b9c8b52465890cca27dd993bd`](./contracts/optimism-10/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/); unichain [`0xba1d0c99c261f94b9c8b52465890cca27dd993bd`](./contracts/unichain-130/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/); base [`0xba1d0c99c261f94b9c8b52465890cca27dd993bd`](./contracts/base-8453/0xba1d0c99c261f94b9c8b52465890cca27dd993bd/) | ✅ Audited |
| RebalancerUniswapV4 | adapter | optimism | n/a | 3 deployments: optimism [`0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0`](./contracts/optimism-10/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/); unichain [`0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0`](./contracts/unichain-130/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/); base [`0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0`](./contracts/base-8453/0x01edaf0067a10d18c88d2876c0a85ee0096a5ac0/) | ✅ Audited |
| RegistryL1 | registry | unichain | n/a | [`0xd0690557600eb8be8391d1d97346e2aab5300d5f`](./contracts/unichain-130/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | ✅ Audited |
| StakedAerodromeAM | adapter | optimism | n/a | 3 deployments: optimism [`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27`](./contracts/optimism-10/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/); unichain [`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27`](./contracts/unichain-130/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/); base [`0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27`](./contracts/base-8453/0x9f42361b7602df1a8ae28bf63e6cb1883cd44c27/) | ✅ Audited |
| StakedSlipstreamAM | adapter | optimism | n/a | 6 deployments: optimism [`0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`](./contracts/optimism-10/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); optimism `0xf6a87d944204bb5fdb9cf5534c03c46895f78ecd`; unichain [`0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`](./contracts/unichain-130/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base [`0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base `0xbed6c3e35b9b1e044b3bc71465769edfdc0fdd4c`; base `0xe0f20be5886f11cbcd2cb5ba9987bcbbf1d8ca7b` | ✅ Audited |
| StakedStargateAM | adapter | optimism | n/a | [`0xae909e19fd13c01c28d5ee439d403920cf7f9eea`](./contracts/optimism-10/0xae909e19fd13c01c28d5ee439d403920cf7f9eea/) | ✅ Audited |
| UniswapV3AM | adapter | optimism | n/a | 2 deployments: optimism [`0x21bd524cc54ca78a7c48254d4676184f781667dc`](./contracts/optimism-10/0x21bd524cc54ca78a7c48254d4676184f781667dc/); unichain [`0x21bd524cc54ca78a7c48254d4676184f781667dc`](./contracts/unichain-130/0x21bd524cc54ca78a7c48254d4676184f781667dc/) | ✅ Audited |
| UniswapV4HooksRegistry | registry | optimism | n/a | 2 deployments: optimism [`0x8b0fd5352cae4e7c86632ca791229d132fef5d3c`](./contracts/optimism-10/0x8b0fd5352cae4e7c86632ca791229d132fef5d3c/); unichain [`0x8b0fd5352cae4e7c86632ca791229d132fef5d3c`](./contracts/unichain-130/0x8b0fd5352cae4e7c86632ca791229d132fef5d3c/) | ✅ Audited |
| WrappedAerodromeAM | adapter | optimism | n/a | 3 deployments: optimism [`0x17b5826382e3a5257b829cf0546a08bd77409270`](./contracts/optimism-10/0x17b5826382e3a5257b829cf0546a08bd77409270/); unichain [`0x17b5826382e3a5257b829cf0546a08bd77409270`](./contracts/unichain-130/0x17b5826382e3a5257b829cf0546a08bd77409270/); base [`0x17b5826382e3a5257b829cf0546a08bd77409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | ✅ Audited |
| YieldClaimerSlipstream | operational_periphery | base | n/a | 8 deployments: optimism `0x3630bdb1ac7cf8a435411391db75450350814f42`; optimism `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`; unichain `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`; base [`0x1f75abf8a24782053b351d9b4ea6d1236ed59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/); base `0x2a07d99ec1140e25db07283930160d4bde93d09f`; base `0x5a8278d37b7a787574b6aa7e18d8c02d994f18ba`; base `0x8c1fbf38118fd5a704b6e7babcb7af1a9a291980`; base `0xc8bf4b2c740ff665864e9494832520f18822871c` | ✅ Audited |
| YieldClaimerUniswapV3 | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16`](./contracts/optimism-10/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/); unichain [`0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16`](./contracts/unichain-130/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/); base [`0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16`](./contracts/base-8453/0x75ed28ea8601ce9f5fbcab1c2428f04a57afaa16/) | ✅ Audited |
| YieldClaimerUniswapV4 | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4`](./contracts/optimism-10/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/); unichain [`0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4`](./contracts/unichain-130/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/); base [`0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4`](./contracts/base-8453/0xd8aa21ab7f9b8601cb7d7a776d3afa1602d5d8d4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlienBaseToken | token | base | n/a | [`0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4`](./contracts/base-8453/0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4/) | ⚠️ Unaudited |
| AccountPlaceholder | core_logic | optimism | n/a | 4 deployments: optimism [`0xbea2b6d45acaf62385877d835970a0788719cae1`](./contracts/optimism-10/0xbea2b6d45acaf62385877d835970a0788719cae1/); optimism `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28`; unichain [`0xbea2b6d45acaf62385877d835970a0788719cae1`](./contracts/unichain-130/0xbea2b6d45acaf62385877d835970a0788719cae1/); unichain `0xd8af1f1dee6ea38f9c08b5cfa31e01ad2bfbef28` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181a94a35a4569e4529a3cdfb74e38fd98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AerodromePoolAM | adapter | optimism | n/a | 2 deployments: optimism [`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5`](./contracts/optimism-10/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/); unichain [`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5`](./contracts/unichain-130/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/) | ⚠️ Unaudited |
| Arcadia | unknown | base | n/a | [`0xaaa843fb2916c0b57454270418e121c626402aaa`](./contracts/base-8453/0xaaa843fb2916c0b57454270418e121c626402aaa/) | ⚠️ Unaudited |
| ArcadiaTiers | unknown | base | n/a | 2 deployments: base [`0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5`](./contracts/base-8453/0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5/); base `0x7895fdde9bed4a3864c75186ebe4377a435cfc98` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | base | n/a | [`0x52eaecac2402633d98b95213d0b473e069d86590`](./contracts/base-8453/0x52eaecac2402633d98b95213d0b473e069d86590/) | ⚠️ Unaudited |
| BunniHub | unknown | base | n/a | [`0xdc53487e2a6ef468260bc938f645f84caaccac6f`](./contracts/base-8453/0xdc53487e2a6ef468260bc938f645f84caaccac6f/) | ⚠️ Unaudited |
| BunniHubA | unknown | base | n/a | [`0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9`](./contracts/base-8453/0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9/) | ⚠️ Unaudited |
| BunniHubController | governance | base | n/a | [`0x4bcc584979817219585b6a62a5bb6c15c1fa0f38`](./contracts/base-8453/0x4bcc584979817219585b6a62a5bb6c15c1fa0f38/) | ⚠️ Unaudited |
| BunniLensV2 | periphery | base | n/a | 2 deployments: base [`0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc`](./contracts/base-8453/0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc/); base `0xf71e5e59f762b1d13e3797d24bf0c8986a05b621` | ⚠️ Unaudited |
| BunniZap | adapter | base | n/a | [`0x6947da282e447a2e9d65ff00aaf80efb5116d75d`](./contracts/base-8453/0x6947da282e447a2e9d65ff00aaf80efb5116d75d/) | ⚠️ Unaudited |
| BunniZap | adapter | base | n/a | [`0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0`](./contracts/base-8453/0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0/) | ⚠️ Unaudited |
| CLFactory | registry | base | n/a | 8 deployments: optimism `0xcc0bddb707055e04e497ab22a59c2af4391cd12f`; optimism `0xe13dd1fba721aa81a1826d9523ac9bc7d260c879`; base [`0x342576bb62afe26c547bfcbd9e94e76d1538a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/); base `0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a`; base `0xade65c38cd4849adba595a4323a8c7ddfe89716a`; base `0xc6403d7e22ab48bdd43d2473aac9574e881cd165`; base `0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1`; base `0xf8f2eb4940cfe7d13603dddd87f123820fc061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | 6 deployments: optimism `0xb5f7bd1c65437f789b62cbe98ef16cd9f1fc4b26`; base [`0x11909efd754f01da354f8219391b40b2df7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/); base `0x1296a1b532e33f01091cf728706a94268c6025b5`; base `0x434bccab043311a20b16021c137ea81702790f7b`; base `0x7dccb042fac367809f773c3f62e5434d58204b3e`; base `0xc0d2086b6f70c0c40423626167096c6196cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | n/a | 6 deployments: optimism `0x9b23957290d8e4709fb1e1512edc29e17c17dc99`; base [`0x385293cae378c813f16f0c1334d774adddf56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/); base `0x3be76d34317f6dba48ddbb2326cf16daf9998529`; base `0xb630227a79707d517320b6c0f885806389dfcbb3`; base `0xd63e8525e3f21bcea2a136f95e99263ba4948adc`; base `0xff8f90bb55292947f84b1386c10f0773258898c2` | ⚠️ Unaudited |
| CLPool | core_logic | optimism | n/a | 7 deployments: optimism [`0x11b234946f28a3905710922138c65fbbe7496b4c`](./contracts/optimism-10/0x11b234946f28a3905710922138c65fbbe7496b4c/); base `0x88e336956de7b74627fdfd548656b55501a0471f`; base `0x941b5f2e00c02bb04d0c97ad59d1c7ca0d514306`; base `0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16`; base `0xad95bd62878f12bd74bb1528ad18420999894b48`; base `0xc770898522d2a9c8da7a10d63989b6b58305b665`; base `0xec8e5342b19977b4ef8892e02d8daecfa1315831` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | base | n/a | 2 deployments: base [`0x052916740d97a2e9d5668bbee813317dbcd19d10`](./contracts/base-8453/0x052916740d97a2e9d5668bbee813317dbcd19d10/); base `0xb329511948b8f7ae590242de0790050d1423c74f` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | 2 deployments: base [`0x5264eeeab16037a7a7af15ff69a470af6e2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/); base `0xe945ab812a22c02025dfc31d9523158b242a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 4 deployments: base [`0x0ad08370c76ff426f534bb2affd9b5555338ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x57bffd8deafa66437b8c6e8a49b24bf36db1b058`; base `0xc2cc3256434afbc36bb5e815e1bb2151310a1a0b`; base `0xccc21f4750e8b3e9c095bcb5d2ff59247a2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | base | n/a | [`0x87d8f999bba9343e8099552426775b51c338e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | ⚠️ Unaudited |
| ERC20PrimaryAM | adapter | optimism | n/a | 2 deployments: optimism [`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7`](./contracts/optimism-10/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/); unichain [`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7`](./contracts/unichain-130/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/) | ⚠️ Unaudited |
| EsComplexRewarder | unknown | base | n/a | 4 deployments: base [`0x3923820118a3b654644d31653bcc650f655c43a6`](./contracts/base-8453/0x3923820118a3b654644d31653bcc650f655c43a6/); base `0x3aa57f8a8fac29ce6897212ba950ea433b30b211`; base `0x3f42d7254ed785951885a30e3e86ac1c32252811`; base `0xbbd0cb9d847a087e778901cc25cd601e6f11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | base | n/a | [`0xd3968a4a07d64c6e16982d45191b9a09a261ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | ⚠️ Unaudited |
| EsToken | token | base | n/a | 3 deployments: base [`0x365c6d588e8611125de3bea5b9280c304fa54113`](./contracts/base-8453/0x365c6d588e8611125de3bea5b9280c304fa54113/); base `0x3d3a5ad6d7beab234d7f0338a01e62b1d36d8ea0`; base `0x4a023efe4b5cd304e800f29074186164fda36978` | ⚠️ Unaudited |
| EsTokenController | governance | base | n/a | 3 deployments: base [`0x154d41a96ad37570a2ad6849063d0b480da1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/); base `0x2de715d04579535b2005a2057455b3cfcb7f60dc`; base `0xf6c0db9e2f0a137c9c4cba82090dd25c86ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | base | n/a | [`0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b`](./contracts/base-8453/0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | optimism | n/a | [`0x0b2c639c533813f4aa9d7837caf62653d097ff85`](./contracts/optimism-10/0x0b2c639c533813f4aa9d7837caf62653d097ff85/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35ca5b132cadf2916bab57639128eac5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| LiquidatorL2 | operational_periphery | optimism | n/a | [`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`](./contracts/optimism-10/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: optimism `0x70429f78c2d7d1de6f89be421bce64ba876c325b`; base [`0x2230393edad0299b7e7b59f20aa856cd1bed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | base | n/a | [`0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f`](./contracts/base-8453/0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f/) | ⚠️ Unaudited |
| Minter | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x6dc9e1c04ee59ed3531d73a72256c0da46d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/); base `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 5 deployments: optimism `0xff79ec912ba114fd7989b9a2b90c65f0c1b44722`; base [`0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x393550950616b6931f9fa5f85f1ce695e25d81ad`; base `0x9574e3331964c8b4db516d639eb807709c3ada30`; base `0x9951ff0b830e46ef0e7ce34d9117e3214b1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | base | n/a | 2 deployments: base [`0x49540630a4d2ce67d54450d007d634f4c45b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/); base `0xb4a9e5fc0727bef09d819fcfc5ece8ca9bcf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | base | n/a | [`0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555`](./contracts/base-8453/0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0x416b433906b1b72fa758e166e239c43d68dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xbb5dfe1380333cee4c2eebd7202c80de2256adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xc36442b4a4522e871399cd717abdd847ab11fe88`](./contracts/optimism-10/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | unichain | n/a | [`0x943e6e07a7e8e791dafc44083e54041d743c46e9`](./contracts/unichain-130/0x943e6e07a7e8e791dafc44083e54041d743c46e9/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x03a520b32c04bf3beef7beb72e919cf822ed34f1`](./contracts/base-8453/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 5 deployments: optimism `0xf7f8ccce99ca2896ec75d3a399d152db96808399`; base [`0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/); base `0x7dd33b26bd68e3cb0a749f0cb5e1716a746238d8`; base `0xe1f8cd9ac4e4a65f54f38a5cdafca44f6dd68b53`; base `0xe702fca0218bfe426b722a5789713e4390928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x827922686190790b37229fd06084350e74485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xa990c6a764b73bf43cee5bb40339c3322fb9d55f`](./contracts/base-8453/0xa990c6a764b73bf43cee5bb40339c3322fb9d55f/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5`](./contracts/base-8453/0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xc741beb2156827704a1466575cca1cbf726a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | n/a | 5 deployments: base [`0x11b5f9dff0fb1141715b2d549231ce8e07953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/); base `0x3b1ebc29667b5ac08714ac722d51a71e4da579f8`; base `0x48fa0226fce30a5ef1772d3d7cc8adfda5642f34`; base `0xc85c126442bb5b654792a70135805a9778c8e3fe`; base `0xf632031b94d72dee0d99def846c9b6211041337f` | ⚠️ Unaudited |
| PositionManager | governance | optimism | n/a | [`0x3c3ea4b57a46241e54610e5f022e5c45859a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | ⚠️ Unaudited |
| PositionManager | governance | unichain | n/a | [`0x4529a01c7a0410167c5740c487a8de60232617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | ⚠️ Unaudited |
| PositionManager | governance | base | n/a | [`0x7c5f5a4bbd8fd63184577525326123b519429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ⚠️ Unaudited |
| PredictionETH | unknown | base | n/a | [`0xfbe87ee1ee62244a2df80a8093eab829c52863e8`](./contracts/base-8453/0xfbe87ee1ee62244a2df80a8093eab829c52863e8/) | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 6 deployments: optimism `0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466`; base [`0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/); base `0x3d4c22254f86f64b7ec90ab8f7aec1fbfd271c6c`; base `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a`; base `0x514c8b5f54112481e28028f1166bd78501089259`; base `0x919e53b78c36d442bd23094737def5fa064601fc` | ⚠️ Unaudited |
| RecoveryController | governance | base | n/a | [`0x3889255c5a9a55137dfdf870a0c30a285978176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | ⚠️ Unaudited |
| Redeemer | unknown | base | n/a | [`0x812785c39a794a9518ee72dd0ce0bdd3f6250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | ⚠️ Unaudited |
| Redistributor | operational_periphery | base | n/a | 3 deployments: base [`0x9e494d8b172531a2e2aba90d5b66addee3c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/); base `0xd6136862f535275518e6c48ff4de1c4b649a9e80`; base `0xee5b3c7b333e2870b746b3b2b168ef0958e55e15` | ⚠️ Unaudited |
| RegistryL2 | registry | optimism | n/a | [`0xd0690557600eb8be8391d1d97346e2aab5300d5f`](./contracts/optimism-10/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | 2 deployments: optimism `0x9d4736ec60715e71afe72973f7885dcbc21ea99b`; base [`0x227f65131a261548b057215bb1d5ab2997964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| Router | adapter | optimism | n/a | 2 deployments: optimism [`0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858`](./contracts/optimism-10/0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858/); base `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ⚠️ Unaudited |
| RouterTrampoline | adapter | optimism | n/a | 3 deployments: optimism [`0x354dbba1348985cc952c467b8ddaf5dd07590667`](./contracts/optimism-10/0x354dbba1348985cc952c467b8ddaf5dd07590667/); unichain [`0x354dbba1348985cc952c467b8ddaf5dd07590667`](./contracts/unichain-130/0x354dbba1348985cc952c467b8ddaf5dd07590667/); base [`0x354dbba1348985cc952c467b8ddaf5dd07590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | ⚠️ Unaudited |
| SinkManager | governance | optimism | n/a | [`0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ⚠️ Unaudited |
| SlipstreamAM | adapter | base | n/a | 4 deployments: optimism `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44`; unichain `0xd3a7055bbcda4f8f49e5c5de7e83b09a33633f44`; base [`0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/); base `0xcaf4167de878cfb23d9912b1ff5869f2b3527189` | ⚠️ Unaudited |
| SmartRouter | adapter | base | n/a | [`0xb20c411fc84fbb27e78608c24d0056d974ea9411`](./contracts/base-8453/0xb20c411fc84fbb27e78608c24d0056d974ea9411/) | ⚠️ Unaudited |
| StargateAM | adapter | optimism | n/a | [`0x20f7903290bf98716b62dc1c9da634291b8cfed4`](./contracts/optimism-10/0x20f7903290bf98716b62dc1c9da634291b8cfed4/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x91616a7b9cf6d23f8c17845581051ebdc4bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | ⚠️ Unaudited |
| SwapRouter | adapter | optimism | n/a | 3 deployments: optimism [`0x0792a633f0c19c351081cf4b211f68f79bcc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/); base `0x698cb2b6dd822994581fea6ea4fc755d1363a92f`; base `0xcbbb8035cac7d4b3ca7abb74cf7bdf900215ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | [`0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x2626664c2603336e57b271c5c0b26f421741e481`](./contracts/base-8453/0x2626664c2603336e57b271c5c0b26f421741e481/) | ⚠️ Unaudited |
| TokenGenerator | token | base | n/a | [`0xbce75497d72b25c3509b62ae1a47ccfb502ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | base | n/a | [`0x62d58b4cdd96b590ff4174e272b5f41693c8fba9`](./contracts/base-8453/0x62d58b4cdd96b590ff4174e272b5f41693c8fba9/) | ⚠️ Unaudited |
| UniversalRouter | adapter | optimism | n/a | 3 deployments: optimism [`0x4bf3e32de155359d1d75e8b474b66848221142fc`](./contracts/optimism-10/0x4bf3e32de155359d1d75e8b474b66848221142fc/); optimism `0xf132bdb9573867cd72f2585c338b923f973eb817`; base `0x6cb442acf35158d5eda88fe602221b67b400be3e` | ⚠️ Unaudited |
| V3Migrator | periphery | base | n/a | [`0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7`](./contracts/base-8453/0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe9992487b2ee03b7a91241695a58e0ef3654643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | [`0x9560e827af36c94d2ac33a39bce1fe78631088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ⚠️ Unaudited |
| VestingFactory | operational_periphery | base | n/a | 2 deployments: base [`0x77ec0394e4edea1997bdb1919bb354d880faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/); base `0xf61cc1aedd072784d8f133ba9409c538cfc9453d` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 2 deployments: optimism `0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c`; base [`0x16613524e02ad97edfef371bc883f2f5d6c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | 2 deployments: optimism `0xfaf8fd17d9840595845582fcb047df13f006787d`; base [`0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| WETH | token | unichain | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/unichain-130/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: optimism [`0x4200000000000000000000000000000000000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/); base [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WrappedStakedSlipstream | adapter | base | n/a | 6 deployments: optimism `0xc4d3d804ed64c1f78097799208d46b1db4252749`; optimism `0xd74339e0f10fce96894916b93e5cc7de89c98272`; unichain `0xd74339e0f10fce96894916b93e5cc7de89c98272`; base [`0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4`](./contracts/base-8453/0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4/); base `0x9189bc25f8fac157b4d87b0b3c14f56ba1477d53`; base `0xd74339e0f10fce96894916b93e5cc7de89c98272` | ⚠️ Unaudited |
| YieldClaimer | operational_periphery | base | n/a | [`0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (180)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x06b573c2bcd4dbd0c692727910f10d3912af330c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x434781e7102b76d98c63793a705da4988bfa747c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a0213f00be2134901ba644b2286e4b80387e351` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x078d782b760474a361dda0af3839290b0ef57ad6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x991d5546c4b442b4c5fdc4c8b8b8d131deb24702` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd000dfe68362b9a9395af0df9788b1de05bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd254915fc567865730f0516f8933bc0b96ec3527` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x016874be39f6780d72599fc9b07873e47d108e26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x060f571be934c70a16a61ba595f817f609dfc696` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0616ce8591cd1383259311e99b7c404784b3baca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x072e64ff9f2173f0d7f97981ee2fe1982800b48b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08266321a2fd7ff2577f45b7f1fd6f8076d00b2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c0d0a13abf795ced4968069b28b38402de5c8a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d6e297a73016b437caae65bfe32c59803b215d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x124258feb10b2a4e6b4c489a02be3ae376af6fc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x125829a5e354ec4bd17203170f1801644df3e2e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16f1f80654f2fea97293321675907cfa2e23e4fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1733c3043e4964736aafe8660ecc481edf339c44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19f3d2185fafb68b3a992fca4e8d05508e9ea64e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a18d238b0f43edaa68640f3f537d229e23c5af2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1aa817e96d91cebf4d465e16b2fbb95c707fb754` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ad1a39b23795a79d035a7ed21127eda11afc526` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b2468af57518dbfaffa94c54619090b7eddb484` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c7e4284423c1a2362c49b1ea223b73e38c81e21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20640b89a607ed9c9098eed77852eb7753fd921d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x209e79c10bd1caa11d92900613a645e808bc2a77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25f36f8a22683a93ed68e27afb8a3e784557948d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28317b3b98410d9cd2bae7356549fae0bc0ab828` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28c44eb06b37475f32cd08d18ab1720cc68bfcb3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x293be4ee731ce9ccfa007aad4c0e4da8aa1b5220` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29e15fd8a2c00719e68fbc7ba7a85c219622f566` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b19186617cf537f3dff192ad18e7274acddb3c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c629a508845d4ee23ed29ccb50e4aea691f6766` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2df38301384400dbc9691aa5afc854597d9b210b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f3b0d35830b921fe7fcd08401c6cbbe29a72dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f82e1f7811f0121184a2f6a6711fa4959e5dbd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2feb44c740eb4e64ade33e0d44ef30049fb06cc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x313d1708368bf8a4b23dac76301f9c93344dd724` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x329efd924d39d7916023517b2b3c928dddbf8b0c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x353b1bea22dd3b41c0fc529cf72d829f9493b23a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x354859f1bfc9a7c10f99d5d8b76b944de4f95ec4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b01457255bd6ec460d9ab8f31cfabd8a710d176` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3be8e872282c4d36a2386993635f09e41343d0ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d4444e684e65e1aed9715979fb207bcf0987919` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3db0bc1987427a3ac34518c8968efdd4f9c28d29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f8d116e99bce42b38989a62394fa9bb532dddc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41ad2dd0bd3bf54f4acbf97013ad40b6b32b35aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44c2c3d495495f713d29866e56d38b9c49e5e26f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x476e393c39be976f8a0bf8f7d4538c9929667c39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a3cf8ec44b51ad22783ba3ed7f6a0f7b215a703` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c0b9fc00c4852b0b6070b00af03843ec9444cd2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c326ea180f9daa27b540af92ababd73d5b5b3e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4eb1574cf739d3524e55274f8ebf0530b4a97024` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f225937edc33efd6109c4cef7b560b2d6401009` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x519989b846d81b1ee793637b85cfa8a7906a3014` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58486279f6dc6445ff3c752667fba4316f9de197` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x588651d64820544f1067929bc261a4b46006b427` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c9054a94eeeb147f5bc4550e2d918eac68c5e66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63a08df576e967b3a22eba7c79c21bee19550bb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63aed6536fecebc1cb354706e247f5bbfe52cec8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x649502d5ae52065c8f1253c05373ad6b77c3a80f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x652f7cf5e867660ad83eb53b9d85c24966a8b7da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x666f4830d8e835f04276fc4337ff76592583db77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68e143d9754a244f5dce5a66e86492ea98e1c68c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a9668c2c6e1fb107021375bacd9d92e79cc8369` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ac994618e65a5b0cc1b062f500a882b6cfb26a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b7950fd5c17a9957cd1bc898221e39e599441d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c57e5d1e386370134b84ae06613b136fdb95811` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7101ca664e77fb3cf5543968dff7aa9187e325be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7110d609d4743a65e8f26dbf815f3556ed2de6e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d5090092d7cb6ea30496561193c762fd8a08d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73c29984d9d9813f3342eff42a8815cb4e6fc756` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77682a6642fb134559592d2a1cf9a306a3ab3568` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x783898572ef4970d445ad9af95d5dfdb633843ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78cc18f78efedebdd1dbf4c4aa8620b09e73a4cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7920fbf3b05d49edf62c03e43e2982bef2fea013` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82d2377db84a378071f50b078449364fc2c17bb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8377244a3521ff658e008df0dd40b50ca3ce534c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x847aa2b5f7eb313f676c2ead3ff196204bf653d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x872521b46095139e70a38ae3e8d95611649aaf51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89c84f33e9dae1839048e15c216ea5eac3307180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ca63e82b203011a7149f78f5480609fce6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d27bdf28b333b7b3e89f88d951ca2831bca8cda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8de25c797ddcbedf1db5b3f31bce1f7112b439ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e038b8d372c3575ae9010c6ced1a6492c417e62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ebf497f4c7b1628904abac4ab49b49352d42891` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ee9459729deda55ec29f23404290b87ca7fa7c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f08fb85827c497e267a784e4db79c986a0ac114` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fae47263ce64faad5239021c25e244e1276efe8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fcd066d9507c02512972673d805a15aa55031c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9192ffbc2f48223cf61d909f24fd2a1ec87730a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x927860797d07b1c46fbbe7f6f73d45c7e1bfbb27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x931d84457caaaf9470b006bb2c8e1e75bbbb7059` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9379c3f01abd981edb2110702d46b19922b2cb85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93d590335c2cb13bb0581b771770b1982a8f529b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9533035ad565426fd106c9c925d2393dad79d1df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95ff6591b17befd31d4b899dbe3177d05c2d2819` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x970079ab37b5837b4096b43a146e96ff0070be51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x976cc498406c5298dc8b9f6a2c11548985cfad1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98bbb71f059f228e7f643ad041b333006bbdedbd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e1c243eaf95943c9c2152d4ae02d5e2e55b846a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e27f316f7d6587be00a3105b26621bfee82ac6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f36431ff85072168e0e5e9980e5297f8e922c9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa21b24dafacf940a58144200536b8f3bb50e257f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2720397544243f919f252cbf0867bea2513c413` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa47559e016ab7f6be584087b872fc66d6e946149` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa54844d419d18c4a1d399ad04282415cf2c4fde6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa720c17b2e5e5a03dcd98c4bf904135256395117` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7b7e239a124e68dc913b3feab514dd35619c1a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa52632a038bdb4d943a61709981cc41767c2c24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafe430951aac33e225ec898ecf7071cd72689bce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb28b0a7b01f170bd1617a4277222741919b19080` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb65cbb1b84a9f5f9026f3b0a56112fa249138688` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71cc2eee5b23dbe4934ba7277570aa06177b60e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb772cb2d5bdb65140d3aea3e4ed5bd1afb8386a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb775af4b4cd4493ee9c008cde1275478f24a9ee6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb931894cae0055cab7ebc077ffeb71051c2884f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd97c8f2a950d3a77a8f776cc9abf932adb84ce2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdd085f6bd74b1b5c911d6f11df44744214d5ef1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe56b963fb8255be4d91e37f82955f57d3bd4a75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe9e352d555a4f13fc0206c72673e18292bc1577` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0bf69c8f9307b0959804849ea07a1f90fbe382a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca0c63d9f0559ae0da2e58fa9fa9c4df95d1fee0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbac7772bdb35ab605a030612849aedba2068436` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccb48874fdb042497520f982e581994034c0a124` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf13556f6181971a23395ec21dce2543bdc2633a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0b4cdbd70f70eff686f948009de99d412565253` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd135c5c27a58ed2199dc2e3b66e4abdd87d39da4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd16eba3a92c34f832945454433f62bb3cb583621` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2a928e243e720759090388778ea5331927fc186` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd46949221703e0d7073b5e592eecc7a8d18dff6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd54a92d5612daa6d70c0f46fa7a374b483aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd67fedadd486e46b1662b9383f8ce2b040d4ae2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6aa7216dadd79120460adc1c46959592063f07a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xda243c4ac65fbcc81d58f4663161d36b0aa69edd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf65df36e2fb762e5c299d68b9f8d8cd8652637` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc1da443efff1e7d26142e14847653842b8bb0ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc9a2c6e370b755b112325a3a1a29cfcaab02ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcd995f7d0e96aa80db9788c7dd109bd383b7f0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd4c399dd642dd611d655e139d0aaafa7ea6723b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0808b8e2bdd70d70e540f977cf40e26e5811054` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe12951e0597133991aa60258ae1352f88cb03a22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1afc637f41e05efe08d55296a2ccff0072a4587` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2204e0f54c0834ead587bbd3aa2095f37213ac8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe23f656562d56fed9a2650a3e51a2b60124528c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe271590b7360db5e66181f804023d76e6afb910c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3763886bf91d5466b416b37fdf2b6337897716e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3b6a547495c84a039d70a81178496220b5fbd8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe49273edd71f3bb7b45df8166fbc955c1ae704b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7664186daadafbbf39b915a6a6a27f96d818ffe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8b5b213d2d3bacbe94a10655adb46af354d7e87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8dba7823f6f31930fb9c052169e9cad28bfd62f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb91c95b3851a6b3689c12a1e487d5bb9635385f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec5c5c0c88fd517d1d2585ba2c49b10881b5a561` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xedea12764d443eb11dfad1fcb439df3293a24958` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4eb75f940e8d0e6dbee094a7dd9768d25da644a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5327de15b04af1a242892def26e93a762766526` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5cfcebf8dcb5349a0f7bd8d595f0c3d252a4fdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5e42e54d67ac16d965ca64651ca1bbffcf64c0c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6d652dd2567656cf087c7e7199efe4e3f937db5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf78ac4a524205603b4ef9135942219400cc20ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9e1a0d13da84ffba769555bd5259eb619e78ba5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb702210a0b59aa00097a2e9fd431aa585d8dfa8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe9a0de13d927cba480bf8b64577832bfe532915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfea31de4ba3e90855aa88a8f19a1234e8cde63d9` | ❓ Unverified |

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
| optimism | [`0xbea2b6d45acaf62385877d835970a0788719cae1`](./contracts/optimism-10/0xbea2b6d45acaf62385877d835970a0788719cae1/) | AccountPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5`](./contracts/optimism-10/0xfe0fa1fd8f8e889062f03e2f126fc7b9de6091a5/) | AerodromePoolAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaaa843fb2916c0b57454270418e121c626402aaa`](./contracts/base-8453/0xaaa843fb2916c0b57454270418e121c626402aaa/) | Arcadia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5`](./contracts/base-8453/0x436325b40fa6c3aa7fad7c320cc7f40fc6fa80b5/) | ArcadiaTiers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x11b234946f28a3905710922138c65fbbe7496b4c`](./contracts/optimism-10/0x11b234946f28a3905710922138c65fbbe7496b4c/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87d8f999bba9343e8099552426775b51c338e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | DynamicSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7`](./contracts/optimism-10/0xfbeceafc96ed6fc800753d3ee6782b6f9a60eed7/) | ERC20PrimaryAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3968a4a07d64c6e16982d45191b9a09a261ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x365c6d588e8611125de3bea5b9280c304fa54113`](./contracts/base-8453/0x365c6d588e8611125de3bea5b9280c304fa54113/) | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154d41a96ad37570a2ad6849063d0b480da1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/) | EsTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b`](./contracts/base-8453/0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b/) | EsVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af`](./contracts/optimism-10/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | LiquidatorL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6dc9e1c04ee59ed3531d73a72256c0da46d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x416b433906b1b72fa758e166e239c43d68dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x943e6e07a7e8e791dafc44083e54041d743c46e9`](./contracts/unichain-130/0x943e6e07a7e8e791dafc44083e54041d743c46e9/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c3ea4b57a46241e54610e5f022e5c45859a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4529a01c7a0410167c5740c487a8de60232617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c5f5a4bbd8fd63184577525326123b519429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3889255c5a9a55137dfdf870a0c30a285978176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | RecoveryController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x812785c39a794a9518ee72dd0ce0bdd3f6250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e494d8b172531a2e2aba90d5b66addee3c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/) | Redistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd0690557600eb8be8391d1d97346e2aab5300d5f`](./contracts/optimism-10/0xd0690557600eb8be8391d1d97346e2aab5300d5f/) | RegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65131a261548b057215bb1d5ab2997964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858`](./contracts/optimism-10/0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x354dbba1348985cc952c467b8ddaf5dd07590667`](./contracts/optimism-10/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | RouterTrampoline | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | SinkManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/) | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91616a7b9cf6d23f8c17845581051ebdc4bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0792a633f0c19c351081cf4b211f68f79bcc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbce75497d72b25c3509b62ae1a47ccfb502ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | TokenGenerator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe9992487b2ee03b7a91241695a58e0ef3654643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77ec0394e4edea1997bdb1919bb354d880faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/) | VestingFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4`](./contracts/base-8453/0x147a2ccbaf4521ad209a2875ae0b3c496f4b25a4/) | WrappedStakedSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | YieldClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 40 |
| standard_library | 0 |
| needs_review | 195 |

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
