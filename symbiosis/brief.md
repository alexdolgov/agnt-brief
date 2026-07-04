# Agentic Audit Brief: Symbiosis

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.254Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, base, cronos, ethereum, optimism, polygon
- Contract surface: 109 unique implementations (230 raw deployments)
- DeFi Llama TVL: $8,730,964.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 138 project-authored contract(s) across 6 chain(s); 19 ERC20 tokens, 3 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 32 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 276; live-surface contracts included: 222 (161 live, 61 unknown).
- Excluded by liveness: 54 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/58 (37.9%)
- Deployed-live implementations: 60 of 109 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/61
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 109
- Raw deployments: 230
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 18 match-unverified
- Tier 1 coverage: 22.4% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 19 | 31.1% | 2024-10 |
| Omniscia | Tier 2 | 13 | 21.3% | 2022-03 |
| SlowMist | Tier 1 | 13 | 21.3% | 2022-02 |
| Decurity | Tier 2 | 3 | 4.9% | 2025-07 |
| HashCloak | Tier 2 | 2 | 3.3% | 2022-04 |
| yAudit | Tier 2 | 1 | 1.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BranchedUnlocker | unknown | ethereum | n/a | [`0x22278f...5fd9a1`](./contracts/ethereum-1/0x22278fe9a52a8ccb3a914f3f61bb6c70fe5fd9a1/) | ✅ Audited |
| Bridge | operational_periphery | arbitrum | n/a | [`0x85700e...56263f`](./contracts/arbitrum-42161/0x85700ed7c30625ed28613d75e85c58ef0056263f/) | ✅ Audited |
| BridgeV2 | operational_periphery | ethereum | n/a | [`0x552398...d7227e`](./contracts/ethereum-1/0x5523985926aa12ba58dc5ad00ddca99678d7227e/) | ✅ Audited |
| BridgeV2 | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x552398...d7227e`](./contracts/polygon-137/0x5523985926aa12ba58dc5ad00ddca99678d7227e/); polygon `0x7057ab...59e365` | ✅ Audited |
| BridgeV2 | unknown | base | n/a | 3 deployments: base [`0x0f9105...68f5d2`](./contracts/base-8453/0x0f91052dc5b4bae53d0fea5dae561a117268f5d2/); base `0x8097f0...bb222f`; base `0x88139a...ef9d89` | ✅ Audited |
| BridgeV2 | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x552398...d7227e`](./contracts/arbitrum-42161/0x5523985926aa12ba58dc5ad00ddca99678d7227e/); arbitrum `0xff9b21...48b0f6` | ✅ Audited |
| BridgeV2 | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x292fc5...824d62`](./contracts/avalanche-43114/0x292fc50e4eb66c3f6514b9e402dbc25961824d62/); avalanche `0x552398...d7227e`; avalanche `0x7057ab...59e365` | ✅ Audited |
| Depository | unknown | arbitrum | n/a | 3 deployments: ethereum `0x84deb7...f941a8`; arbitrum [`0x84b104...108a73`](./contracts/arbitrum-42161/0x84b10469db07446d5fc7156aefdd6b7117108a73/); avalanche `0xe7eb02...3f5c4e` | ✅ Audited |
| MetaRouter | adapter | optimism | n/a | 23 deployments: ethereum `0xf621fb...66ff7f`; optimism [`0x0f9105...68f5d2`](./contracts/optimism-10/0x0f91052dc5b4bae53d0fea5dae561a117268f5d2/); optimism `0x1a039c...d59ec8`; optimism `0xce8f24...a0eb4c`; polygon `0x9a31ba...4393dd`; polygon `0xa260e3...077978`; polygon `0xb657f8...59ec61`; polygon `0xe75c7e...ba9877`; polygon `0xf95178...9d88c0`; base `0x1ceaed...544840`; base `0x691df9...82b946`; base `0x6f0f63...a139cf`; base `0x81ab74...72ec39`; base `0xc17d76...06d077`; base `0xda1c70...f880d8`; arbitrum `0x4f82ca...edd5e3`; arbitrum `0x57c361...0e238b`; arbitrum `0xca5067...2c84c2`; arbitrum `0xce8f24...a0eb4c`; arbitrum `0xf5b086...1d1e08`; arbitrum `0xf7e962...f45dde`; avalanche `0xa738e8...4304de`; avalanche `0xf1c374...c0a83b` | ✅ Audited |
| MetaRouterGateway | adapter | optimism | n/a | 10 deployments: ethereum `0xfcef2f...512bcd`; optimism [`0x200a0f...fd12b5`](./contracts/optimism-10/0x200a0fe876421dc49a26508e3efd0a1008fd12b5/); optimism `0xa9a96e...5ec75b`; polygon `0x2ee955...ce7da0`; polygon `0xab8365...b0f30c`; base `0xa18348...2c8a9d`; arbitrum `0x3743c7...46dcbe`; arbitrum `0x80dddd...fedaf9`; avalanche `0x4cfa66...c64e4a`; avalanche `0xfec09b...c631c6` | ✅ Audited |
| OnchainSwapV3 | unknown | base | n/a | 39 deployments: optimism `0x2b7aa8...6495e2`; optimism `0x45cfd6...45e5bf`; optimism `0x7775b2...927ab8`; optimism `0xa257f3...9eb932`; optimism `0xbbad2f...ffdd2c`; optimism `0xf8504d...adada0`; optimism `0xf85fc8...4e1ea4`; polygon `0x4fda05...c04d82`; polygon `0x624ffe...1e1d9c`; polygon `0x8e1d36...6d195d`; polygon `0x9d7480...437b4f`; polygon `0xa18348...2c8a9d`; polygon `0xb91d30...2a1dcf`; polygon `0xe24c54...3d820f`; polygon `0xf5b086...1d1e08`; base [`0x0f28f4...31aec8`](./contracts/base-8453/0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8/); base `0x3338be...a7dd7e`; base `0x5b1bab...b28b62`; base `0x844e4a...34df30`; base `0x8dc315...33f027`; base `0x97cbe9...1c2aad`; base `0xf1c374...c0a83b`; base `0xf3040d...e27238`; base `0xf85fc8...4e1ea4`; base `0xf95178...9d88c0`; arbitrum `0x230cbb...1d0c68`; arbitrum `0x4fda05...c04d82`; arbitrum `0x6f0f63...a139cf`; arbitrum `0x77ed28...afb39a`; arbitrum `0x7f6fb9...32d421`; arbitrum `0xa257f3...9eb932`; arbitrum `0xbba322...538bb7`; avalanche `0x1ac4c5...bc0ea2`; avalanche `0x3e6a3e...391778`; avalanche `0x7775b2...927ab8`; avalanche `0x97cbe9...1c2aad`; avalanche `0xa257f3...9eb932`; avalanche `0xc17d76...06d077`; avalanche `0xf85fc8...4e1ea4` | ✅ Audited |
| Portal | unknown | ethereum | n/a | [`0xb8f275...9e81a8`](./contracts/ethereum-1/0xb8f275fbf7a959f4bce59999a2ef122a099e81a8/) | ✅ Audited |
| Portal | unknown | optimism | n/a | 2 deployments: optimism [`0x292fc5...824d62`](./contracts/optimism-10/0x292fc50e4eb66c3f6514b9e402dbc25961824d62/); optimism `0x7b4e28...f409f9` | ✅ Audited |
| Portal | unknown | polygon | n/a | 2 deployments: polygon [`0x35d39b...b1f990`](./contracts/polygon-137/0x35d39bb2cbc51ce6c03f0306d0d8d56948b1f990/); polygon `0xb8f275...9e81a8` | ✅ Audited |
| Portal | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x01a3c8...9c24d9`](./contracts/arbitrum-42161/0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9/); arbitrum `0x2e0440...9d27c1` | ✅ Audited |
| Portal | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8dc315...33f027`](./contracts/avalanche-43114/0x8dc3151dccd58fcb6a0bec0df20c06fba133f027/); avalanche `0xe75c7e...ba9877` | ✅ Audited |
| Symbiosis | unknown | ethereum | n/a | [`0xd38bb4...c76dd9`](./contracts/ethereum-1/0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9/) | ✅ Audited |
| SyntERC20 | token | ethereum | n/a | [`0x70b7f7...a0cda1`](./contracts/ethereum-1/0x70b7f7044d2ca8e2f1e999b90ef16d7cb7a0cda1/) | ✅ Audited |
| SyntFabric | unknown | ethereum | n/a | [`0xbbfb7c...769428`](./contracts/ethereum-1/0xbbfb7cb70f84fb6fe1cb13e42a0b71efde769428/) | ✅ Audited |
| Synthesis | unknown | ethereum | n/a | [`0xd7c3df...dd38b3`](./contracts/ethereum-1/0xd7c3df25683871d18bc838e4f619126442dd38b3/) | ✅ Audited |
| TimedUnlocker | unknown | ethereum | n/a | [`0xec148f...ed8a3b`](./contracts/ethereum-1/0xec148f80d699b0eaf65dd5438cde4b380ded8a3b/) | ✅ Audited |
| WithdrawUnlocker | operational_periphery | ethereum | n/a | [`0xcd1080...34341e`](./contracts/ethereum-1/0xcd108089057dd0e9f841eb9e00fcf5105534341e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgglayerGER | unknown | ethereum | n/a | [`0x580bda...ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | ⚠️ Unaudited |
| AgglayerManager | unknown | ethereum | n/a | [`0x5132a1...1b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | ⚠️ Unaudited |
| BridgeV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x552398...d7227e`](./contracts/optimism-10/0x5523985926aa12ba58dc5ad00ddca99678d7227e/); optimism `0x7057ab...59e365` | ⚠️ Unaudited |
| BridgeV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x5be6e6...51a774`](./contracts/polygon-137/0x5be6e69ec8a59b1ed8201b184adb0774d551a774/); arbitrum `0x7057ab...59e365` | ⚠️ Unaudited |
| BridgeV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x8dc315...33f027`](./contracts/polygon-137/0x8dc3151dccd58fcb6a0bec0df20c06fba133f027/); polygon `0xfec09b...c631c6` | ⚠️ Unaudited |
| BridgeV2 | unknown | base | n/a | 2 deployments: base [`0x1da522...2caa75`](./contracts/base-8453/0x1da522b35363c1eda4833bc121c8f3c67b2caa75/); base `0xda8057...81bfeb` | ⚠️ Unaudited |
| BridgeV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x5be6e6...51a774`](./contracts/arbitrum-42161/0x5be6e69ec8a59b1ed8201b184adb0774d551a774/); arbitrum `0x844e4a...34df30`; arbitrum `0xb657f8...59ec61` | ⚠️ Unaudited |
| BtcRefundUnlocker | unknown | ethereum | n/a | [`0x9a99eb...10c9f0`](./contracts/ethereum-1/0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0/) | ⚠️ Unaudited |
| DepositoryDst | unknown | arbitrum | n/a | [`0x4ac560...3be547`](./contracts/arbitrum-42161/0x4ac560a3a8fadd1662cf9439bb1114abaa3be547/) | ⚠️ Unaudited |
| DepositorySrc | unknown | arbitrum | n/a | [`0x695eea...02e840`](./contracts/arbitrum-42161/0x695eeaece7ce4502850b1f6b4f14b97dba02e840/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | n/a | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GravityTokenG | token | ethereum | n/a | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| OFTMock | unknown | ethereum | n/a | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ⚠️ Unaudited |
| Portal | unknown | polygon | n/a | 2 deployments: polygon [`0x3338be...a7dd7e`](./contracts/polygon-137/0x3338be49a5f60e2593337919f9ad7098e9a7dd7e/); polygon `0x97cbe9...1c2aad` | ⚠️ Unaudited |
| Portal | unknown | base | n/a | 2 deployments: base [`0x253ddb...ff79d7`](./contracts/base-8453/0x253ddb32f0f45ffbc0ebcdfc5edd47857aff79d7/); base `0xee981b...4161f8` | ⚠️ Unaudited |
| Portal | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x042584...c2e09a`](./contracts/arbitrum-42161/0x0425841529882628880fbd228ac90606e0c2e09a/); arbitrum `0xbd37c8...706437` | ⚠️ Unaudited |
| Portal | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x97cbe9...1c2aad`](./contracts/arbitrum-42161/0x97cbe92630ec56a7f484d28bbbced857121c2aad/); arbitrum `0xfec09b...c631c6` | ⚠️ Unaudited |
| Portal | unknown | avalanche | n/a | 2 deployments: arbitrum `0xaf4570...475e1a`; avalanche [`0x5be6e6...51a774`](./contracts/avalanche-43114/0x5be6e69ec8a59b1ed8201b184adb0774d551a774/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 11 deployments: ethereum `0x8ad82b...0778d4`; ethereum `0x943ed4...1ca66e`; optimism `0x1da522...2caa75`; polygon [`0x0f28f4...31aec8`](./contracts/polygon-137/0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8/); polygon `0x1da522...2caa75`; polygon `0xda1c70...f880d8`; base `0x1ac4c5...bc0ea2`; base `0x552398...d7227e`; arbitrum `0x1da522...2caa75`; arbitrum `0x9a31ba...4393dd`; avalanche `0x1da522...2caa75` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | n/a | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| SymbiosisTokenVesting | operational_periphery | ethereum | n/a | [`0x931c67...9f48f6`](./contracts/ethereum-1/0x931c6728470394507049f5642bab16da029f48f6/) | ⚠️ Unaudited |
| SymBtc | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3ef3f0...a4763e`](./contracts/arbitrum-42161/0x3ef3f0e0f2e9e0b59efeb74f8c03538190a4763e/); arbitrum `0xf3040d...e27238` | ⚠️ Unaudited |
| SyntFabric | unknown | base | n/a | 2 deployments: base [`0x44487a...e325d5`](./contracts/base-8453/0x44487a445a7595446309464a82244b4bd4e325d5/); base `0x464c30...203027` | ⚠️ Unaudited |
| SyntFabric | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2ee955...ce7da0`](./contracts/arbitrum-42161/0x2ee9559387b806e88fd46b9da160d64a29ce7da0/); arbitrum `0xf621fb...66ff7f` | ⚠️ Unaudited |
| Synthesis | unknown | base | n/a | 2 deployments: base [`0x9d7480...437b4f`](./contracts/base-8453/0x9d74807b8fa79d49bb95cf988af3c25fb1437b4f/); base `0x9f6424...8e7a6e` | ⚠️ Unaudited |
| Synthesis | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x326adb...da6d16`](./contracts/arbitrum-42161/0x326adbe46d7e6c1b3927e9309b96df478bda6d16/); arbitrum `0x394187...36cbb1` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 3 deployments: polygon [`0x1ac4c5...bc0ea2`](./contracts/polygon-137/0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2/); polygon `0x7b4e28...f409f9`; polygon `0x88139a...ef9d89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 3 deployments: polygon [`0x6b1bbd...71bfaa`](./contracts/polygon-137/0x6b1bbd301782ff636601fc594cd7bfe74871bfaa/); polygon `0xb79a4f...aa84e0`; polygon `0xc17d76...06d077` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 3 deployments: base [`0x17efc1...e3dcbd`](./contracts/base-8453/0x17efc1d70ea32eb04c6979c6500d12eee9e3dcbd/); base `0x7b4e28...f409f9`; base `0xa9a96e...5ec75b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x292fc5...824d62`](./contracts/base-8453/0x292fc50e4eb66c3f6514b9e402dbc25961824d62/); base `0x5aa5f7...352fd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 3 deployments: base [`0x318c2b...30135a`](./contracts/base-8453/0x318c2b9a03c37702742c3d40c72e4056e430135a/); base `0xbba322...538bb7`; base `0xf02bbc...9e5e0c` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1ee741...fc7bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3e6a3e...391778` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf1c374...c0a83b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 6 deployments: cronos `0x292fc5...824d62`; cronos `0x2e818e...c5d3d7`; cronos `0x50c42d...f2634b`; cronos `0xaa5b84...64076c`; cronos `0xbc1000...000000`; cronos `0xe34c91...48b693` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a039c...d59ec8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45cfd6...45e5bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b1bab...b28b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb4ed...b15da6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6df77a...1c3fd9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f0f63...a139cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7775b2...927ab8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77ed28...afb39a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81ab74...72ec39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x844e4a...34df30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a7f93...e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbbad2f...ffdd2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca5067...2c84c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce8f24...a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda8057...81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf02bbc...9e5e0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf7e962...f45dde` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5be6e6...51a774` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7057ab...59e365` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a7f93...e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb657f8...59ec61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb91d30...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8db4f...404160` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x086488...ca7934` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x464c30...203027` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf02bbc...9e5e0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x01a3c8...9c24d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45cfd6...45e5bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4fda05...c04d82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5aa5f7...352fd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x624ffe...1e1d9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f0f63...a139cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b4e28...f409f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8097f0...bb222f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a7f93...e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a31ba...4393dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8f275...9e81a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca5067...2c84c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce8f24...a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda8057...81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf8504d...adada0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [immunefi.com/bug-bounty/symbiosis/information](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | contract_name | 2 | n/a |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | contract_name | 13 | n/a |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | 13 | n/a |
| [Symbiosis Protocol Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-02 | stale | Direct | contract_name | 14 | n/a |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | contract_name | 15 | n/a |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | contract_name | 39 | high |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | contract_name | 3 | high |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x580bda...ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | AgglayerGER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5132a1...1b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | AgglayerManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x552398...d7227e`](./contracts/optimism-10/0x5523985926aa12ba58dc5ad00ddca99678d7227e/) | BridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5be6e6...51a774`](./contracts/polygon-137/0x5be6e69ec8a59b1ed8201b184adb0774d551a774/) | BridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8dc315...33f027`](./contracts/polygon-137/0x8dc3151dccd58fcb6a0bec0df20c06fba133f027/) | BridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1da522...2caa75`](./contracts/base-8453/0x1da522b35363c1eda4833bc121c8f3c67b2caa75/) | BridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5be6e6...51a774`](./contracts/arbitrum-42161/0x5be6e69ec8a59b1ed8201b184adb0774d551a774/) | BridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a99eb...10c9f0`](./contracts/ethereum-1/0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0/) | BtcRefundUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ac560...3be547`](./contracts/arbitrum-42161/0x4ac560a3a8fadd1662cf9439bb1114abaa3be547/) | DepositoryDst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x695eea...02e840`](./contracts/arbitrum-42161/0x695eeaece7ce4502850b1f6b4f14b97dba02e840/) | DepositorySrc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | FflonkVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | GravityTokenG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | OFTMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3338be...a7dd7e`](./contracts/polygon-137/0x3338be49a5f60e2593337919f9ad7098e9a7dd7e/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x253ddb...ff79d7`](./contracts/base-8453/0x253ddb32f0f45ffbc0ebcdfc5edd47857aff79d7/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x042584...c2e09a`](./contracts/arbitrum-42161/0x0425841529882628880fbd228ac90606e0c2e09a/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97cbe9...1c2aad`](./contracts/arbitrum-42161/0x97cbe92630ec56a7f484d28bbbced857121c2aad/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5be6e6...51a774`](./contracts/avalanche-43114/0x5be6e69ec8a59b1ed8201b184adb0774d551a774/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931c67...9f48f6`](./contracts/ethereum-1/0x931c6728470394507049f5642bab16da029f48f6/) | SymbiosisTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3ef3f0...a4763e`](./contracts/arbitrum-42161/0x3ef3f0e0f2e9e0b59efeb74f8c03538190a4763e/) | SymBtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44487a...e325d5`](./contracts/base-8453/0x44487a445a7595446309464a82244b4bd4e325d5/) | SyntFabric | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ee955...ce7da0`](./contracts/arbitrum-42161/0x2ee9559387b806e88fd46b9da160d64a29ce7da0/) | SyntFabric | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9d7480...437b4f`](./contracts/base-8453/0x9d74807b8fa79d49bb95cf988af3c25fb1437b4f/) | Synthesis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x326adb...da6d16`](./contracts/arbitrum-42161/0x326adbe46d7e6c1b3927e9309b96df478bda6d16/) | Synthesis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=61, extraction_exact=43

Zero-match audit list:

- [2094] Symbiosis Staking - Decurity.pdf
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf
- [2097] Symbiosis Frontend App - Decurity.pdf
- [14789] Symbiosis TON Bridge - Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
