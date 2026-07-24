# Agentic Audit Brief: Symbiosis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 7 audit(s)
- Eligible audit results: 15 (7 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, arbitrum-nova, aurora, avalanche, base, berachain, blast, boba, bsc, cronos, ethereum, fraxtal, gnosis, kava, linea, manta-pacific, mantle, merlin, metis, mode, opbnb, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sepolia, sonic, unichain, zksync-era
- Contract surface: 373 unique implementations (527 raw deployments)
- Coverage basis: 7/18 confirmed own live verified implementations (38.9%); conservative 38.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,730,964.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Symbiosis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across arbitrum, avalanche, base, cronos, ethereum, optimism, polygon, sepolia. Structural roles: 11 core, 6 supporting, 3 infra. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (11), supporting (6), infra (3)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (7), erc20 (5), erc20permit (2), ownable (2), ownable2step (2), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (7), uniswap (6), foundry (5), solady (4)
- Upgradeable-pattern rows: 10

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x20c54cc697329333fe00ded49c7dca8c83dce65b`, chain 1)
- BranchedUnlocker (`0x22278fe9a52a8ccb3a914f3f61bb6c70fe5fd9a1`, chain 1)
- BtcRefundUnlocker (`0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0`, chain 1)
- Depository (`0x84deb7fc54a1f734aef6ddc0c0f74182bdf941a8`, chain 1)
- ERC1967Proxy (`0xd9a442856c234a39a81a089c06451ebaa4306a72`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- GravityTokenG (`0x9c7beba8f6ef6643abd725e45a4e8387ef260649`, chain 1)
- MetaRouter (`0xf621fb08bbe51af70e7e0f4ea63496894166ff7f`, chain 1)
- MetaRouterGateway (`0xfcef2fe72413b65d3f393d278a714cad87512bcd`, chain 1)
- SimpleToken (`0x4d224452801aced8b2f0aebe155379bb5d594381`, chain 1)
- Symbiosis (`0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9`, chain 1)
- TetherToken (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- TimedUnlocker (`0xec148f80d699b0eaf65dd5438cde4b380ded8a3b`, chain 1)
- TransparentUpgradeableProxy (`0x5523985926aa12ba58dc5ad00ddca99678d7227e`, chain 1)
- TransparentUpgradeableProxy (`0xb8f275fbf7a959f4bce59999a2ef122a099e81a8`, chain 1)
- TransparentUpgradeableProxy (`0xd7c3df25683871d18bc838e4f619126442dd38b3`, chain 1)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- WithdrawUnlocker (`0xcd108089057dd0e9f841eb9e00fcf5105534341e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (18 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/18 (38.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 51 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 304 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 19 of 373 unique; 354 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/78
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 295
- Unique implementations: 373
- Raw deployments: 527
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 16.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 5 | 6.4% | 2024-10 |
| HashCloak | Tier 2 | 3 | 3.8% | 2022-04 |
| Omniscia | Tier 2 | 3 | 3.8% | 2022-03 |
| SlowMist | Tier 1 | 3 | 3.8% | 2022-02 |
| Decurity | Tier 2 | 1 | 1.3% | 2025-07 |
| yAudit | Tier 2 | 1 | 1.3% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeV2 | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-257757 | `0x5523985926aa12ba58dc5ad00ddca99678d7227e` | ✅ Audited |
| Depository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257734 | `0x84deb7fc54a1f734aef6ddc0c0f74182bdf941a8` | ✅ Audited |
| MetaRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257742 | `0xf621fb08bbe51af70e7e0f4ea63496894166ff7f` | ✅ Audited |
| MetaRouterGateway | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257743 | `0xfcef2fe72413b65d3f393d278a714cad87512bcd` | ✅ Audited |
| Portal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257760 | `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` | ✅ Audited |
| Symbiosis | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257739 | `0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9` | ✅ Audited |
| Synthesis | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257756 | `0xd7c3df25683871d18bc838e4f619126442dd38b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgglayerGER | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb` | ⚠️ Unaudited |
| AgglayerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2` | ⚠️ Unaudited |
| BranchedUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257730 | `0x22278fe9a52a8ccb3a914f3f61bb6c70fe5fd9a1` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x85700ed7c30625ed28613d75e85c58ef0056263f` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x5523985926aa12ba58dc5ad00ddca99678d7227e`; optimism `0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5523985926aa12ba58dc5ad00ddca99678d7227e`; polygon `0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5be6e69ec8a59b1ed8201b184adb0774d551a774`; arbitrum `0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8dc3151dccd58fcb6a0bec0df20c06fba133f027`; polygon `0xfec09be39f82b13471d2e0e7d72e6ee589c631c6` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x0f91052dc5b4bae53d0fea5dae561a117268f5d2`; base `0x8097f0b9f06c27af9579f75762f971d745bb222f`; base `0x88139ad1199e8c78a0804d4bebf4fbad89ef9d89` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1da522b35363c1eda4833bc121c8f3c67b2caa75`; base `0xda8057acb94905eb6025120cb2c38415fd81bfeb` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5523985926aa12ba58dc5ad00ddca99678d7227e`; arbitrum `0xff9b21c3bfa4bce9b20b55fed56d102ced48b0f6` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x5be6e69ec8a59b1ed8201b184adb0774d551a774`; arbitrum `0x844e4a0ade23b1ba5642a8d0010e42ae4434df30`; arbitrum `0xb657f823fd8c4b94901e78b75481d5b39d59ec61` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0x292fc50e4eb66c3f6514b9e402dbc25961824d62`; avalanche `0x5523985926aa12ba58dc5ad00ddca99678d7227e`; avalanche `0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | ⚠️ Unaudited |
| BtcRefundUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257735 | `0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0` | ⚠️ Unaudited |
| Depository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x84b10469db07446d5fc7156aefdd6b7117108a73`; avalanche `0xe7eb022e21e85200e7b0daebf3757764e83f5c4e` | ⚠️ Unaudited |
| DepositoryDst | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4ac560a3a8fadd1662cf9439bb1114abaa3be547` | ⚠️ Unaudited |
| DepositorySrc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x695eeaece7ce4502850b1f6b4f14b97dba02e840` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| FflonkVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f65deadb3b85082ba99766f323bea90eb5a3d6` | ⚠️ Unaudited |
| FflonkVerifier | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-257733 | `0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-257759 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| GravityTokenG | token | project_anchor | own_supporting | 0 | ethereum | unit-257736 | `0x9c7beba8f6ef6643abd725e45a4e8387ef260649` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05de631122d95ef347f6fca85d1bb149fcc6df2` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x3941870e18ae68b0cf572b7a543c6647e836cbb1`; polygon `0x62f54e18992b07e0298d171cb23c0be56a975d8b` | ⚠️ Unaudited |
| MetaRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 22 deployments: optimism `0x0f91052dc5b4bae53d0fea5dae561a117268f5d2`; optimism `0x1a039ce63ae35a67bf0e9f6dbfae969639d59ec8`; optimism `0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c`; polygon `0x9a31bac4b3b958c835c243800b474818d04393dd`; polygon `0xa260e3732593e4ecf9ddc144fd6c4c5fe7077978`; polygon `0xb657f823fd8c4b94901e78b75481d5b39d59ec61`; polygon `0xe75c7e85fe6add07077467064ad15847e6ba9877`; polygon `0xf951789c6a356bfbc3033648aa10b5dd3e9d88c0`; base `0x1ceaeda3d17936916d0f3e866aa5ef861f544840`; base `0x691df9c4561d95a4a726313089c8536dd682b946`; base `0x6f0f6393e45fe0e7215906b6f9cfeff53ea139cf`; base `0x81ab74a9f9d7457ff47dfd102e78a340cf72ec39`; base `0xc17d768bf4fdc6f20a4a0d8be8767840d106d077`; base `0xda1c70c902746996a8c989bb07aa6c408ef880d8`; arbitrum `0x4f82caa8f34564ab22371f3c5d22868ab8edd5e3`; arbitrum `0x57c36199be0054a987daca83f2df6a8d450e238b`; arbitrum `0xca506793a420e901bbca8066be5661e3c52c84c2`; arbitrum `0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c`; arbitrum `0xf5b0861e787706195c98e2f0d2d6efbdac1d1e08`; arbitrum `0xf7e96217347667064dee8f20db747b1c7df45dde`; avalanche `0xa738e84fde890bc60b99af7cce43990e534304de`; avalanche `0xf1c374d065719ce1fdc63e2c5c13146813c0a83b` | ⚠️ Unaudited |
| MetaRouterGateway | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x200a0fe876421dc49a26508e3efd0a1008fd12b5`; optimism `0xa9a96ee51dd54b9f51d46b1fbd2a19c1295ec75b`; polygon `0x2ee9559387b806e88fd46b9da160d64a29ce7da0`; polygon `0xab83653fd41511d638b69229afbf998eb9b0f30c`; base `0xa18348e793e77239ec68caa51b74c5cdc82c8a9d`; arbitrum `0x3743c756b64ecd0770f1d4f47696a73d2a46dcbe`; arbitrum `0x80dddda846e779ccee463bdc0bcc2ae296fedaf9`; avalanche `0x4cfa66497fa84d739a0f785fbcee9196f1c64e4a`; avalanche `0xfec09be39f82b13471d2e0e7d72e6ee589c631c6` | ⚠️ Unaudited |
| MulticallRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8`; base `0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9`; base `0x1dcfbc3fa01b2a86bc3a3f43479cce9e8d438adc`; base `0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0`; arbitrum `0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8`; arbitrum `0xda8057acb94905eb6025120cb2c38415fd81bfeb`; arbitrum `0xf951789c6a356bfbc3033648aa10b5dd3e9d88c0` | ⚠️ Unaudited |
| MulticallRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: arbitrum `0x5ad095de83693ba063941f2f2c5a0df02383b651`; avalanche `0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8` | ⚠️ Unaudited |
| MultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee981b2459331ad268cc63ce6167b446af4161f8` | ⚠️ Unaudited |
| OFTMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84` | ⚠️ Unaudited |
| OnchainSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 39 deployments: optimism `0x2b7aa8bdc40b6d3d19d0de7480c4db8d5b6495e2`; optimism `0x45cfd6fb7999328f189aad2739fba4be6c45e5bf`; optimism `0x7775b274f0c3fa919b756b22a4d9674e55927ab8`; optimism `0xa257f3fe4e4032291516dc355edf90664e9eb932`; optimism `0xbbad2fe9558e55ebfa04b3b5bff0b6c4e2ffdd2c`; optimism `0xf8504d2ca2f0bbad9d36927e3d32e278abadada0`; optimism `0xf85fc807d05d3ab2309364226970aac57b4e1ea4`; polygon `0x4fda0599b78a49d289577a8df2046459abc04d82`; polygon `0x624ffe62eba13e6057878bca1d7a9e35651e1d9c`; polygon `0x8e1d36f9da8cfe842bcf8670a12acd51c26d195d`; polygon `0x9d74807b8fa79d49bb95cf988af3c25fb1437b4f`; polygon `0xa18348e793e77239ec68caa51b74c5cdc82c8a9d`; polygon `0xb91d3060c90aac7c4c706aef2b37997b3b2a1dcf`; polygon `0xe24c543a6e930c728e12648c42ea73bf953d820f`; polygon `0xf5b0861e787706195c98e2f0d2d6efbdac1d1e08`; base `0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8`; base `0x3338be49a5f60e2593337919f9ad7098e9a7dd7e`; base `0x5b1bab64961cf72822817ef32950ff7fcab28b62`; base `0x844e4a0ade23b1ba5642a8d0010e42ae4434df30`; base `0x8dc3151dccd58fcb6a0bec0df20c06fba133f027`; base `0x97cbe92630ec56a7f484d28bbbced857121c2aad`; base `0xf1c374d065719ce1fdc63e2c5c13146813c0a83b`; base `0xf3040d00dd4038b62da8b6dd53ec14fdace27238`; base `0xf85fc807d05d3ab2309364226970aac57b4e1ea4`; base `0xf951789c6a356bfbc3033648aa10b5dd3e9d88c0`; arbitrum `0x230cbb84ad080c07623fb0acb91d782b021d0c68`; arbitrum `0x4fda0599b78a49d289577a8df2046459abc04d82`; arbitrum `0x6f0f6393e45fe0e7215906b6f9cfeff53ea139cf`; arbitrum `0x77ed285ad9d1c8c0307ea23dce68b8a5a6afb39a`; arbitrum `0x7f6fb9f3ce785f3d85772c038fda58ec9432d421`; arbitrum `0xa257f3fe4e4032291516dc355edf90664e9eb932`; arbitrum `0xbba322c98601b707cffb98092010e0b95d538bb7`; avalanche `0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2`; avalanche `0x3e6a3ebbc9d88acc192221797ad90bf72d391778`; avalanche `0x7775b274f0c3fa919b756b22a4d9674e55927ab8`; avalanche `0x97cbe92630ec56a7f484d28bbbced857121c2aad`; avalanche `0xa257f3fe4e4032291516dc355edf90664e9eb932`; avalanche `0xc17d768bf4fdc6f20a4a0d8be8767840d106d077`; avalanche `0xf85fc807d05d3ab2309364226970aac57b4e1ea4` | ⚠️ Unaudited |
| PolygonZkEVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe262ea2782e2e8dbfe354048c3b5d6de9603efef` | ⚠️ Unaudited |
| PolygonZkEVMGlobalExitRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1ea504fc54d078514efcca1f6860b5219b6bc3` | ⚠️ Unaudited |
| PolygonZkEVMTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1462451c30ea7ad8555386226059fe837ca4ef` | ⚠️ Unaudited |
| PolygonZkEVMUpgraded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x301442aa888701c8b86727d42f3c55fb0dd9ef7f` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 20 deployments: optimism `0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9`; optimism `0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2`; optimism `0x81ab74a9f9d7457ff47dfd102e78a340cf72ec39`; optimism `0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0`; polygon `0x1ceaeda3d17936916d0f3e866aa5ef861f544840`; polygon `0x2a82ef729f6cd1bce5143666b3f32ae73dd1bfad`; polygon `0x5ad095de83693ba063941f2f2c5a0df02383b651`; polygon `0xebd15fca7ab58470c40653ecb60f10fa08322f67`; base `0x1a039ce63ae35a67bf0e9f6dbfae969639d59ec8`; base `0x5eb4ed9f745531221fae41906e11d37642b15da6`; base `0x7f6fb9f3ce785f3d85772c038fda58ec9432d421`; base `0x9a31bac4b3b958c835c243800b474818d04393dd`; base `0xa385b1436fd2a6a1c6865e22c522a1aa40cadcc6`; arbitrum `0x318c2b9a03c37702742c3d40c72e4056e430135a`; arbitrum `0xaf4570fadd2ab163c809e4ba483d032b31475e1a`; arbitrum `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8`; arbitrum `0xeb278638ffa33cc776230de4ff88ed5142ed8c1a`; arbitrum `0xec54cba614a9ba1fa51031ba4740e26a8cdcc6ff`; avalanche `0x5b1bab64961cf72822817ef32950ff7fcab28b62`; avalanche `0x5be6e69ec8a59b1ed8201b184adb0774d551a774` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x292fc50e4eb66c3f6514b9e402dbc25961824d62`; optimism `0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3338be49a5f60e2593337919f9ad7098e9a7dd7e`; polygon `0x97cbe92630ec56a7f484d28bbbced857121c2aad` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x35d39bb2cbc51ce6c03f0306d0d8d56948b1f990`; polygon `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x253ddb32f0f45ffbc0ebcdfc5edd47857aff79d7`; base `0xee981b2459331ad268cc63ce6167b446af4161f8` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9`; arbitrum `0x2e04409f950a236690be6e119f34f7fc209d27c1` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0425841529882628880fbd228ac90606e0c2e09a`; arbitrum `0xbd37c8233649f66eb431e550856d429445706437` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x97cbe92630ec56a7f484d28bbbced857121c2aad`; arbitrum `0xfec09be39f82b13471d2e0e7d72e6ee589c631c6` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8dc3151dccd58fcb6a0bec0df20c06fba133f027`; avalanche `0xe75c7e85fe6add07077467064ad15847e6ba9877` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: ethereum `0x8ad82b29261a9657a89a299dac3bfe01880778d4`; ethereum `0x943ed40709dfd0c30f25c458c54fcbb3b01ca66e`; optimism `0x1da522b35363c1eda4833bc121c8f3c67b2caa75`; polygon `0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8`; polygon `0x1da522b35363c1eda4833bc121c8f3c67b2caa75`; polygon `0xda1c70c902746996a8c989bb07aa6c408ef880d8`; base `0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2`; base `0x5523985926aa12ba58dc5ad00ddca99678d7227e`; arbitrum `0x1da522b35363c1eda4833bc121c8f3c67b2caa75`; arbitrum `0x9a31bac4b3b958c835c243800b474818d04393dd`; avalanche `0x1da522b35363c1eda4833bc121c8f3c67b2caa75` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-257758 | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3` | ⚠️ Unaudited |
| SimpleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257732 | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ⚠️ Unaudited |
| SymbiosisTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6ef7dd4d7782c27a4c509585db60695d8c7231bf`; ethereum `0x931c6728470394507049f5642bab16da029f48f6`; ethereum `0xc5ebd4bca64ff7ec0bb837cdbf4ea958270a848d`; ethereum `0xe99a090b75b0aa9355dd61c3b6e61abed18c1fcb` | ⚠️ Unaudited |
| SymBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3ef3f0e0f2e9e0b59efeb74f8c03538190a4763e`; arbitrum `0xf3040d00dd4038b62da8b6dd53ec14fdace27238` | ⚠️ Unaudited |
| SyntERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b7f7044d2ca8e2f1e999b90ef16d7cb7a0cda1` | ⚠️ Unaudited |
| SyntFabric | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-257761 | `0xbbfb7cb70f84fb6fe1cb13e42a0b71efde769428` | ⚠️ Unaudited |
| SyntFabric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x44487a445a7595446309464a82244b4bd4e325d5`; base `0x464c30aebacd4e8928167c567f8920d16f203027` | ⚠️ Unaudited |
| SyntFabric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2ee9559387b806e88fd46b9da160d64a29ce7da0`; arbitrum `0xf621fb08bbe51af70e7e0f4ea63496894166ff7f` | ⚠️ Unaudited |
| Synthesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9d74807b8fa79d49bb95cf988af3c25fb1437b4f`; base `0x9f6424fe88fbe7785fa34f0e369f192bf38e7a6e` | ⚠️ Unaudited |
| Synthesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x326adbe46d7e6c1b3927e9309b96df478bda6d16`; arbitrum `0x3941870e18ae68b0cf572b7a543c6647e836cbb1` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257740 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TimedUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257741 | `0xec148f80d699b0eaf65dd5438cde4b380ded8a3b` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3086ac03b0347bee2ce3fd9079452db13fc76827` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2`; polygon `0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9`; polygon `0x88139ad1199e8c78a0804d4bebf4fbad89ef9d89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x6b1bbd301782ff636601fc594cd7bfe74871bfaa`; polygon `0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0`; polygon `0xc17d768bf4fdc6f20a4a0d8be8767840d106d077` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x17efc1d70ea32eb04c6979c6500d12eee9e3dcbd`; base `0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9`; base `0xa9a96ee51dd54b9f51d46b1fbd2a19c1295ec75b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x292fc50e4eb66c3f6514b9e402dbc25961824d62`; base `0x5aa5f7f84ed0e5db0a4a85c3947ea16b53352fd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x318c2b9a03c37702742c3d40c72e4056e430135a`; base `0xbba322c98601b707cffb98092010e0b95d538bb7`; base `0xf02bbc9de6e443efdf3fc41851529c2c3b9e5e0c` | ⚠️ Unaudited |
| Unwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: optimism `0x88139ad1199e8c78a0804d4bebf4fbad89ef9d89`; base `0x8e1d36f9da8cfe842bcf8670a12acd51c26d195d`; arbitrum `0x5eb4ed9f745531221fae41906e11d37642b15da6` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67480c30ff8cc128cf0250e25616857302df647f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0f91052dc5b4bae53d0fea5dae561a117268f5d2`; arbitrum `0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2`; arbitrum `0x2b7aa8bdc40b6d3d19d0de7480c4db8d5b6495e2`; arbitrum `0x3e6a3ebbc9d88acc192221797ad90bf72d391778`; arbitrum `0x6aeb9b27590387b8fd0560c52f6b968c59c10fab`; arbitrum `0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-257731 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-257737 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WithdrawUnlocker | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257738 | `0xcd108089057dd0e9f841eb9e00fcf5105534341e` | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (295)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x01a8b61e7b03891a736b5df865e0ef9c511850ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0c4313a5dd4990f2fc15c6aa4d287d4602645a05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0f91052dc5b4bae53d0fea5dae561a117268f5d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1a039ce63ae35a67bf0e9f6dbfae969639d59ec8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1ceaeda3d17936916d0f3e866aa5ef861f544840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee74172e04b98d2821bcb76423dc4e83ffc7bef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x200a0fe876421dc49a26508e3efd0a1008fd12b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x20c54cc697329333fe00ded49c7dca8c83dce65b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x326adbe46d7e6c1b3927e9309b96df478bda6d16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3e6a3ebbc9d88acc192221797ad90bf72d391778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x44487a445a7595446309464a82244b4bd4e325d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x49d3fc00f3acf80fabcb42d7681667b20f60889a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4e70a309eb5c60528cc984f4d3eb508935889b7d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x542fda317318ebf1d3deaf76e0b632741a7e677d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x597282d7f75cf34450395d92a087c71f597024f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x61ab82b6cfe17e8b242e024de7fc936c10e35327` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x691df9c4561d95a4a726313089c8536dd682b946` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b6b4573dc625be635843ab8800becdec38d1987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x74c9f2b00581f1b11aa7ff05aa9f608b7389de67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x77ed285ad9d1c8c0307ea23dce68b8a5a6afb39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7916ac895d7180de50d1fca0eaeb6c7f6dfb8675` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x83f71aabddbb9f0e3b6462cc7635b6ffad0f2f2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9a31bac4b3b958c835c243800b474818d04393dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1438c6982849a2a30270ed32ee3779e3d05b024` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa257f3fe4e4032291516dc355edf90664e9eb932` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xadb2d3b711bb8d8ea92ff70292c466140432c278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb4291b5f2ed122d306afef72a2b0127613ab1eef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb73603c5d87fa094b7314c74ace2e64d165016fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbf084ee3e5c73129167167bd5db9fe8513d8f7e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1bc8b9001646ba0f87c1e493755972c625ace0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xca506793a420e901bbca8066be5661e3c52c84c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcb28fbe3e9c0fea62e0e63ff3f232cecfe555ad4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xda8057acb94905eb6025120cb2c38415fd81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe75c7e85fe6add07077467064ad15847e6ba9877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e6a3ebbc9d88acc192221797ad90bf72d391778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca506793a420e901bbca8066be5661e3c52c84c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1c374d065719ce1fdc63e2c5c13146813c0a83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 6 deployments: cronos `0x292fc50e4eb66c3f6514b9e402dbc25961824d62`; cronos `0x2e818e50b913457015e1277b43e469b63ac5d3d7`; cronos `0x50c42deacd8fc9773493ed674b675be577f2634b`; cronos `0xaa5b845f8c9c047779bedf64829601d8b264076c`; cronos `0xbc10000000000000000000000000000000000000`; cronos `0xe34c91815d7fc18a9e2148bcd4241d0a5848b693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a039ce63ae35a67bf0e9f6dbfae969639d59ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45cfd6fb7999328f189aad2739fba4be6c45e5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b1bab64961cf72822817ef32950ff7fcab28b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eb4ed9f745531221fae41906e11d37642b15da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6df77adedf71994a032c9599a6d20beb1d1c3fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f0f6393e45fe0e7215906b6f9cfeff53ea139cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7775b274f0c3fa919b756b22a4d9674e55927ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77ed285ad9d1c8c0307ea23dce68b8a5a6afb39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81ab74a9f9d7457ff47dfd102e78a340cf72ec39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x844e4a0ade23b1ba5642a8d0010e42ae4434df30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1262496e84a9663b7ab64ed96c152a23d0b7214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbad2fe9558e55ebfa04b3b5bff0b6c4e2ffdd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca506793a420e901bbca8066be5661e3c52c84c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda8057acb94905eb6025120cb2c38415fd81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf02bbc9de6e443efdf3fc41851529c2c3b9e5e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7e96217347667064dee8f20db747b1c7df45dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x291a42bdffe3754eb3c8b69b4d232fa1d4a46608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5be6e69ec8a59b1ed8201b184adb0774d551a774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb657f823fd8c4b94901e78b75481d5b39d59ec61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb91d3060c90aac7c4c706aef2b37997b3b2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8db4fb1fef63045a443202d506bcf30ef404160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x086488e659253ff26d0c743325c059fb57ca7934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x464c30aebacd4e8928167c567f8920d16f203027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda5b1347d43c5b8bf4e334c0bb6f01d1f1070994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02bbc9de6e443efdf3fc41851529c2c3b9e5e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45cfd6fb7999328f189aad2739fba4be6c45e5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fda0599b78a49d289577a8df2046459abc04d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5aa5f7f84ed0e5db0a4a85c3947ea16b53352fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x624ffe62eba13e6057878bca1d7a9e35651e1d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f0f6393e45fe0e7215906b6f9cfeff53ea139cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8097f0b9f06c27af9579f75762f971d745bb222f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x844e4a0ade23b1ba5642a8d0010e42ae4434df30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a31bac4b3b958c835c243800b474818d04393dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca506793a420e901bbca8066be5661e3c52c84c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda8057acb94905eb6025120cb2c38415fd81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8504d2ca2f0bbad9d36927e3d32e278abadada0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x042cf6a0690c9b8607c5b19cb18807f1d66c9339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04928b7bc6a946f998ad458016b8da7280506376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257744 | `0x04cd23122a21f6c5f912fc7b9abc508302899dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04d8f54766da7759348c71feaed58c1e58adc977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x066d47cbd03be3ba95fb5dd7ae850dff1f8ba346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07bb184ee688d0a3c604e7c202524bed1d583a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x088b8c14d27e6390343efaeb9389c29d62435a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a14eddcd38fb9be9ed2a1c71f17fce7391324e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d340626ee7ea7be28ce529c0552473c09ec0a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d938edc47b40815373549ececf0f7dfaa60b2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x116c9f97ac74e3c087d43515c951c1be8c72d411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x124551d2bd9439e8fcb64f61e1a291161968d350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12708f73252953a90840d76f064c7b9fcf2ee0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x137f27de6848e5cca7dbb2c430f3e8b4f089d091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14be03e34b05a87a028acff0292c1af135d26699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x153ba9139f40f19d7b0318e9eccc316afa711123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x177bbf7e9f8df1a3f054dcebc2d53113af95d7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1795ad2fe459920b4c619e4add29b5531506648a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ae6553cca94bb062ee6f49a48e3f869fdfd572b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b2f229a8638fabec482482968b81c42d2a0aac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ca0abf2023717829c5b219335b25fe6e7dae467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1e8b22f8d8d679abef7801f624c97d46140c09bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2135c0ab678f25e9cbb4bbbd55b68de1e36d1e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x219a0a8a0135c38c0a93536e0737172be0b2b3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21a03993657116c281aa92206f2c0e6760707a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23e866f4a785230dafb4fa73d8465fc38c4dea1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x240e9dff623f626fa4c067e917d37c2e9e55200d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24fea7e38535af8fe78e5d5edca3bd02b81e42a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25878a011f85d2025e8c95a87ace3fecdde2f642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2651853587fbc36c8e359dc7e70fd6f013f6c85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2884a578247b83676ad8026919ec507b4bba43cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x293aed43eb5fe3611854d53385f95c98e821e25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x29e84075243cc9aa1502dbc6136e792322e43931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ff5940024af75e15b810d64ae2c89f632e7f45f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257745 | `0x331f40cc27ac106e1d5242ce633dc6436626a6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3786b3bd223848b365f79f45befec3a0d38a6b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37fb40b9f99da2170b318b4bdd2ca44627917867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38a69a26950818e8cac338d175d3e9b7ae7ee660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a1e6da810637fb1c99fa0899b4f402a60e131d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b6c8c1d3ed766a573cf84618d3426665b7d4cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3bdccbab355829351fb23ac697c1c1a0e2249fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c051ce27b9f6239077765857ff0343c49d1a1f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257746 | `0x3e6235b91c6734821b4037e6459f861e465d4192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e682238c66761baa8ef8d6dcbebbf3415f717a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fa352a13fca37d9e4d501e4a085f07f7c68244e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41f80d544cc8a5a37ee6261167e2f8dd43f17cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4256cf7dc2c63fb0697cbec324fe33d118864b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44276279f9cba1d8342e7fcfa2e0f9ae6025fb15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x457f517784fe4063a01b91372b4d2625c1ec48d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4607c1b1b05dca5550163e2256f14231259128d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46557fa4678b334e03a2cff526d38afe9ba2e4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4838285c624fc699e9754ac573739d9dd615343b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48abdaf63678a1b96d6831096b745bfa3e593dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b19eb086c8362c23c30b752251534024681dbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bbc188951af51977bd39eb7a02583fb09dc5dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54fe900395b2ccd548c7d6d52dff2c8e578ce18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57f239e850d640abfa573cc5c75d9875e9dea408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x580de2e0c9e17d1bf8b41d2b3d28aa39fb7fc5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58c96809cce40c3849c7cc86fc79f81c9fca78b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59acf0dee2ecc7bb9857588020eb024cde58887d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59fd41951d2cecd3a871a6069a21f1a88a1f51a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a8ab4ebb905cb12eeb2f713f81340059dcf1b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b052d8fa5ce64e758c72474f1fcc2883096a7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c9519a597385e79ea16f8a304a3660b314874a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5cb41cd9d93e4b7752ec06de1bfb03828dd0eaa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e2f3b76cd5df52bbf4bcb9f50003bf769742dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e4f047eab666a510088e6140606394c6b94905a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61976d7161d50c45aa023f2ca2b996a03f1d9a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x619bc7f8acbc28ec26f2c6f56b3453bd4df2589a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61db14f44bd9c672cea5009117cec538d5ef210d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6209a53f4bf44a87486d55518c5bb2a6d1355d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62e8b209de8f83ca7400db68129e0b9b0fd68405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64b4480a561a0262a62b140ddadbc10be0d3f566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67123e5e61159f369bf557cd7034a87b8b3b99c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67e2696fb65641902aa26dc9babf76ce134ca377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x685140e078cf1c83667b33de4bd32500f5e11059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68d12dd9cd42bd62a6f707a96b3dc8d1a6a9f076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a6aa8144328e13a21325925f5b1589cc3feaf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6db1d2c691dcdf4da36d3497f68a63c7282a4a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fa0a77bb9fc5ac9e9d9c26c101067486291d2b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7024030c21aae0e8e9ce9d8c6f23ad024a7d1627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x709312336d00834d7d266f64f29d588f1c62ee3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x725c6517aa62c27d64dce80790aefbaac0a3925c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73fe2c8d12cb43548d25014c9c350bb91bb6985f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7591e9807f2557835ec1c0a4188800a4550d23cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x759df6265743ceabd44fc3081f91dfabcfca3074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78604361cbd091e13e7ff3a2b7b665314e04aab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7865fb363353877ef9c25f26e3d2648a03a8023e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78a211bead70100c88fbdae4ff8eb8b02505a657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7961a6c411a0f8bce8f5e9d0ab36e2345d5001de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b1a6533845b3957b7ece905b913a7af4e205c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7bae5aa0d07606dfd550c68f46161de4ccee6e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7cd337e485a0ed3e2f508bfcbe3484a746552529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d8b7b5f663e93d7f8970d0a61081af03c63bb86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257747 | `0x7dc13b605508f91fcd3bf7803c2b96b43941b4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x81d80becfd9a6a64bb0602d79e8bd45844083626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x822fb965452fbe8edc7c4ba6ae7a203ceffc9f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x840089efd8a201a47081514f8f9fbceafc26fb81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x862c6dd3b62fb2a4d9411a8f9395c6d80da1840e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8741c8a4f005cbccbfe463756b924caab3bc4c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87d5f21c2f0a0068a202316ca7b096ee5f288cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x881e6e8b362f8ef20488bf7bd87cb8459a2dbcdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a92b55c91804cd4325d9b7c4030a5c201be653b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257748 | `0x8b03ad402ab3f1477bdfa64647718e5c537c0029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8c9a50b2b06336d0e91e229efe8a955704cd5c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cc20d4ee54ae095082b57d9d223b63cadad1523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8ce7790f35ff8bc5ade0d4bf483f5d07b09287bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d4dee37f295d8f0b0dc6f3eceb3c4a53069d329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91c1cfaf63260fcd8295638d2b182d56c5689e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x950318538864910e008ac3f335e4c0cbe13acfda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95952f804a9f1c2758198f112d42053222abb5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95d08c81c170eda946322160da4a09d509ab83e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x963a1bc2b4b04a76546056305c0d486e0bd15ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97a5b271421b443b3f53f3df485b2716db85fa4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a68c51f3dcf798bb25193def2243d2996132230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a857d526a9e53697a9df5ffc40bccd70e7a0388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9cee5cfc48e7e4122262cc87aa6a318b23671542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d15297f42fef485f2d061a012cfe699cc49132b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9df66a7074c8b428e2643aff9e69eec54dea65a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa32a9ad8f284eca46632198ce1ecede76deb6c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa37081511c28648f8caab5dfc51c8c9ba3d18413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa39d9b267ec75124e2d04cd1c250065ebfe240a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa3d38246ac7d34d02bdecb4e9a4d0be5ee3b8de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa41a348dd01ba664f0e6f2d62ce67768af4efeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa4c654c91dc9b0466ec97d0620dc321d115e091f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa52b2ac60f6bec1eb66a082efed419fad20c9732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7aebfb4c7c37cf018f10a9ee12080179757d8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa986c10307e56b83e4ab30c0c2c8e5f565d9e6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab1576930bed695bf3f0637d71542279fe231db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab5694083ae2c94023fbcdbf00e6f6e9715cc2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac69a329042b976db05631c0c953acdd86d13001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xade1f33ff3f50c422546af0a23b25f4c35bfa938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xadfaceb5cc89cb787043de10a3ebb584432c8438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaec2fc7b7c8bab5b0739dbc36f14d69d12933903` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257749 | `0xb4ade33bba3512c8c0b489cbd03aad3557ec49ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb88748cf75dbe9d10d1bd64329e87b1071b518c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8dbd912654c8c41534a4c3a73d751936151d122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba05716098dfe9df3e75e9ff427f8bedc5e55a17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257750 | `0xbc4454ee01ec5b6517333bd716f5135042ca1e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd64372827619bf6581531f46f263894301a6973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd9de7bd9301b70dfe7bae597f958e42c9bc3189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbdd36e45e65486b813b66e8fd00132e16451aa2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe2645963573803ba69c719e12ae74e6ed46bbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc335acbba67f029b27d38f03e8a5e4d117750aba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257751 | `0xc3b59b4a7961ef8fd24c9838731d1f598884f53d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257752 | `0xc532a74256d3db42d0bf7a0400fefdbad7694008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc62f53e5c4bc33c3923e1c8fdae8b2a1bd8010f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc782a9a50662ad4befe026a56235f8740403ef4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7842f16f84b6a029e10c43f7c7a66ca0a005960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7b2009854c14ba528947eba5cbd7347bd2e17fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7f1a6768b16de4bb15c146fd5030cd9f50533ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc8573ec99605f2dcaec2a2593f0241f1fcac40b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9eefa5329405a46fb4066964175eb0591d078dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9fd2af244fefb31a62a5a33b9d6261cec2cb7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd0d0ff81ecfea9dfdc39b3d2f6ecb8ecb99e30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcec6dbc343d3e5f59ee4c9c7a7e9e03ea0d5715a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xced2776026d1180d9a586044bd34817b62380bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcfd7e3f1b2a6856f1421d5f092ae3df6b84ee402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd424b3bdaaf64da289d944a021a886786d8866bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5dba6d7bffc30b0c2ef0b70e1cb3339e741c853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd655c2c9d558bf8e3382f98edadb84e866665139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7de7e9927e8e894a1f41104f19bec4878fd6f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd80746cd16c161792b0f5e451071a9d3dc63dcbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd92c639bf284bc0a1e71293a0009ff42754875a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda58a74942a92855fae375d6eee6fb6f28731b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbfb647247e4e402437f717fb154a990a6f5372d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde886ff69fe234c8db2e2694788e73aa6be8d0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf34d237cb9302f912c8cd19f7c9fede4fca2582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf80bc741e050dfed30535f4bb257bf03fd3566f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfeded655d36a60de3eb3315337f88eac929dd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0184db52d2e51e1ce819bc59417207b0f26bef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0a0ceb6f3e740c4fc4a1eb38e4135440470175a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe12e22a42a9afd327294bed2b7dd009c5b007d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe19f85478ee6c4d67d14386f646dd1e9c4461a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe27663fe1e897e63f7708776f9cdbd3ca5020c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe43231f13ffa6f7c78abcc6a45dcfc3e687a403f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe560a2f9cfee243927a9549b065241dbbf0c2666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6d263010b14331d5fda5eadf930f12f619f4c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6ed84f1ef0a7c40f588ef5c1c9ade7893c5ba8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7c0f17555cfc962fe96fcd274b653a8bff708b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7e1ddd34e453e4312cfab78018f25387d6bdc04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257753 | `0xea3f6885ef517ecabb2888b0ef9c6873c97f24d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec0f631498f3ce9931a8dce556c227579b8fdfaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257754 | `0xed86914a9478a066d82b2be3e5b99a38baae23ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xedcaeb1d346396b3e4e861e4a6f0b72b9850fcc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee0f117db9ed4d1a4421cdca7d32a1f878ef4f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xefd50a95b7f0418b9bef7fc5600cd79191f96663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf08286b2b152374efd8b015a07bd3cce80e2acc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3ca70d36837b0ebb18ff9a9084a41191646cdb5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257755 | `0xf3cfa393be621097669bcd2bd4923cec347e1210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4a151877e8a3e9b494076de3ef82fcf661d40d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf594c90998e12d56244e3bc10b7814dd7ef326e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf654c8811e38c25544975224705ae32fef44815b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6ad5d766a5107599e0063a41be99bf6b99faa6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf82506d18b5effea51c379f6ad0f502ab1c45584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf88ba1e1e604df184e39c35d27ad792b36d7ced5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9bfbe673bf5d92f558f4fc9de4133678c6d7065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc95581f91d8cd5ef0cb9afaa73bbb511d13526e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfcef0c3b732a4b6cde37af0393f64ab5d8003cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe6abd7497a17c35eba64333ae9dfd9d32c9c85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff1db3ca9644cadccfe7c086828873dd50309e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff2b97e1fd8fbc22b6d676afe8a37a24ab9d29a4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 420
- Live contracts: 0
- Unknown liveness contracts: 420
- Source-verified contracts: 174
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=116, contamination review=4, source verified unclassified=54, unverified unclassified=246

Showing first 200 of 420 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | BridgeV2<br>`0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | BridgeV2<br>`0xb657f823fd8c4b94901e78b75481d5b39d59ec61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | BridgeV2<br>`0xff9b21c3bfa4bce9b20b55fed56d102ced48b0f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | MetaRouter<br>`0x4f82caa8f34564ab22371f3c5d22868ab8edd5e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | MetaRouter<br>`0x57c36199be0054a987daca83f2df6a8d450e238b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | MetaRouter<br>`0xca506793a420e901bbca8066be5661e3c52c84c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | MetaRouter<br>`0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | MetaRouter<br>`0xf5b0861e787706195c98e2f0d2d6efbdac1d1e08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | MetaRouterGateway<br>`0x3743c756b64ecd0770f1d4f47696a73d2a46dcbe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0x230cbb84ad080c07623fb0acb91d782b021d0c68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0x4fda0599b78a49d289577a8df2046459abc04d82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0x6f0f6393e45fe0e7215906b6f9cfeff53ea139cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0x77ed285ad9d1c8c0307ea23dce68b8a5a6afb39a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0x7f6fb9f3ce785f3d85772c038fda58ec9432d421` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0xa257f3fe4e4032291516dc355edf90664e9eb932` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | OnchainSwapV3<br>`0xbba322c98601b707cffb98092010e0b95d538bb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | Portal<br>`0xaf4570fadd2ab163c809e4ba483d032b31475e1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | ProxyAdmin<br>`0x1da522b35363c1eda4833bc121c8f3c67b2caa75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | ProxyAdmin<br>`0x9a31bac4b3b958c835c243800b474818d04393dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | SymBtc<br>`0xf3040d00dd4038b62da8b6dd53ec14fdace27238` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | SyntFabric<br>`0xf621fb08bbe51af70e7e0f4ea63496894166ff7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | Synthesis<br>`0x3941870e18ae68b0cf572b7a543c6647e836cbb1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x0425841529882628880fbd228ac90606e0c2e09a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x2ee9559387b806e88fd46b9da160d64a29ce7da0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x326adbe46d7e6c1b3927e9309b96df478bda6d16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x3ef3f0e0f2e9e0b59efeb74f8c03538190a4763e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x5be6e69ec8a59b1ed8201b184adb0774d551a774` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x844e4a0ade23b1ba5642a8d0010e42ae4434df30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x97cbe92630ec56a7f484d28bbbced857121c2aad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | MulticallRouter<br>`0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | MulticallRouter<br>`0xda8057acb94905eb6025120cb2c38415fd81bfeb` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | MulticallRouter<br>`0xf951789c6a356bfbc3033648aa10b5dd3e9d88c0` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | MulticallRouterV2<br>`0x5ad095de83693ba063941f2f2c5a0df02383b651` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0x2e04409f950a236690be6e119f34f7fc209d27c1` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0x318c2b9a03c37702742c3d40c72e4056e430135a` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0xbd37c8233649f66eb431e550856d429445706437` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0xeb278638ffa33cc776230de4ff88ed5142ed8c1a` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0xec54cba614a9ba1fa51031ba4740e26a8cdcc6ff` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Portal<br>`0xfec09be39f82b13471d2e0e7d72e6ee589c631c6` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Unwrapper<br>`0x5eb4ed9f745531221fae41906e11d37642b15da6` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Vyper_contract<br>`0x0f91052dc5b4bae53d0fea5dae561a117268f5d2` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Vyper_contract<br>`0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Vyper_contract<br>`0x2b7aa8bdc40b6d3d19d0de7480c4db8d5b6495e2` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Vyper_contract<br>`0x3e6a3ebbc9d88acc192221797ad90bf72d391778` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Vyper_contract<br>`0x6aeb9b27590387b8fd0560c52f6b968c59c10fab` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | source verified unclassified | Vyper_contract<br>`0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x086488e659253ff26d0c743325c059fb57ca7934` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x464c30aebacd4e8928167c567f8920d16f203027` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xda5b1347d43c5b8bf4e334c0bb6f01d1f1070994` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf02bbc9de6e443efdf3fc41851529c2c3b9e5e0c` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | BridgeV2<br>`0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | MetaRouter<br>`0xa738e84fde890bc60b99af7cce43990e534304de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | MetaRouter<br>`0xf1c374d065719ce1fdc63e2c5c13146813c0a83b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | MetaRouterGateway<br>`0xfec09be39f82b13471d2e0e7d72e6ee589c631c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0x3e6a3ebbc9d88acc192221797ad90bf72d391778` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0x7775b274f0c3fa919b756b22a4d9674e55927ab8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0x97cbe92630ec56a7f484d28bbbced857121c2aad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0xa257f3fe4e4032291516dc355edf90664e9eb932` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0xc17d768bf4fdc6f20a4a0d8be8767840d106d077` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | OnchainSwapV3<br>`0xf85fc807d05d3ab2309364226970aac57b4e1ea4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | Portal<br>`0x5be6e69ec8a59b1ed8201b184adb0774d551a774` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | ProxyAdmin<br>`0x1da522b35363c1eda4833bc121c8f3c67b2caa75` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x5523985926aa12ba58dc5ad00ddca99678d7227e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | contamination review | MulticallRouterV2<br>`0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | source verified unclassified | Portal<br>`0x5b1bab64961cf72822817ef32950ff7fcab28b62` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | source verified unclassified | Portal<br>`0x8dc3151dccd58fcb6a0bec0df20c06fba133f027` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45cfd6fb7999328f189aad2739fba4be6c45e5bf` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4fda0599b78a49d289577a8df2046459abc04d82` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5aa5f7f84ed0e5db0a4a85c3947ea16b53352fd4` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x624ffe62eba13e6057878bca1d7a9e35651e1d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8097f0b9f06c27af9579f75762f971d745bb222f` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x844e4a0ade23b1ba5642a8d0010e42ae4434df30` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a31bac4b3b958c835c243800b474818d04393dd` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xca506793a420e901bbca8066be5661e3c52c84c2` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xda8057acb94905eb6025120cb2c38415fd81bfeb` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf8504d2ca2f0bbad9d36927e3d32e278abadada0` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | BridgeV2<br>`0x1da522b35363c1eda4833bc121c8f3c67b2caa75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | BridgeV2<br>`0x88139ad1199e8c78a0804d4bebf4fbad89ef9d89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouter<br>`0x1ceaeda3d17936916d0f3e866aa5ef861f544840` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouter<br>`0x691df9c4561d95a4a726313089c8536dd682b946` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouter<br>`0x6f0f6393e45fe0e7215906b6f9cfeff53ea139cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouter<br>`0x81ab74a9f9d7457ff47dfd102e78a340cf72ec39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouter<br>`0xc17d768bf4fdc6f20a4a0d8be8767840d106d077` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouter<br>`0xda1c70c902746996a8c989bb07aa6c408ef880d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | MetaRouterGateway<br>`0xa18348e793e77239ec68caa51b74c5cdc82c8a9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0x3338be49a5f60e2593337919f9ad7098e9a7dd7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0x5b1bab64961cf72822817ef32950ff7fcab28b62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0x844e4a0ade23b1ba5642a8d0010e42ae4434df30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0x8dc3151dccd58fcb6a0bec0df20c06fba133f027` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0x97cbe92630ec56a7f484d28bbbced857121c2aad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0xf1c374d065719ce1fdc63e2c5c13146813c0a83b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0xf3040d00dd4038b62da8b6dd53ec14fdace27238` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0xf85fc807d05d3ab2309364226970aac57b4e1ea4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | OnchainSwapV3<br>`0xf951789c6a356bfbc3033648aa10b5dd3e9d88c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | ProxyAdmin<br>`0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | ProxyAdmin<br>`0x5523985926aa12ba58dc5ad00ddca99678d7227e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | SyntFabric<br>`0x464c30aebacd4e8928167c567f8920d16f203027` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | Synthesis<br>`0x9d74807b8fa79d49bb95cf988af3c25fb1437b4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x0f91052dc5b4bae53d0fea5dae561a117268f5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x17efc1d70ea32eb04c6979c6500d12eee9e3dcbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x318c2b9a03c37702742c3d40c72e4056e430135a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x44487a445a7595446309464a82244b4bd4e325d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x5aa5f7f84ed0e5db0a4a85c3947ea16b53352fd4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x9f6424fe88fbe7785fa34f0e369f192bf38e7a6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xa9a96ee51dd54b9f51d46b1fbd2a19c1295ec75b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xbba322c98601b707cffb98092010e0b95d538bb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xda8057acb94905eb6025120cb2c38415fd81bfeb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xee981b2459331ad268cc63ce6167b446af4161f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | contamination review | MulticallRouter<br>`0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | MulticallRouter<br>`0x1dcfbc3fa01b2a86bc3a3f43479cce9e8d438adc` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | MulticallRouter<br>`0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Portal<br>`0x1a039ce63ae35a67bf0e9f6dbfae969639d59ec8` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Portal<br>`0x253ddb32f0f45ffbc0ebcdfc5edd47857aff79d7` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Portal<br>`0x5eb4ed9f745531221fae41906e11d37642b15da6` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Portal<br>`0x7f6fb9f3ce785f3d85772c038fda58ec9432d421` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Portal<br>`0x9a31bac4b3b958c835c243800b474818d04393dd` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Portal<br>`0xa385b1436fd2a6a1c6865e22c522a1aa40cadcc6` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | source verified unclassified | Unwrapper<br>`0x8e1d36f9da8cfe842bcf8670a12acd51c26d195d` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0x291a42bdffe3754eb3c8b69b4d232fa1d4a46608` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0x292fc50e4eb66c3f6514b9e402dbc25961824d62` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0x5be6e69ec8a59b1ed8201b184adb0774d551a774` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0xb657f823fd8c4b94901e78b75481d5b39d59ec61` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0xb91d3060c90aac7c4c706aef2b37997b3b2a1dcf` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0xd8db4fb1fef63045a443202d506bcf30ef404160` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| base | unverified unclassified | UnnamedContract<br>`0xf02bbc9de6e443efdf3fc41851529c2c3b9e5e0c` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| ethereum | source verified unclassified | MasterChef<br>`0xe05de631122d95ef347f6fca85d1bb149fcc6df2` | non_address_book | unknown | unknown | verified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | source verified unclassified | Reservoir<br>`0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3` | non_address_book | unknown | unknown | verified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | source verified unclassified | SymbiosisTokenVesting<br>`0x6ef7dd4d7782c27a4c509585db60695d8c7231bf` | non_address_book | unknown | unknown | verified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | source verified unclassified | SymbiosisTokenVesting<br>`0xc5ebd4bca64ff7ec0bb837cdbf4ea958270a848d` | non_address_book | unknown | unknown | verified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | source verified unclassified | SymbiosisTokenVesting<br>`0xe99a090b75b0aa9355dd61c3b6e61abed18c1fcb` | non_address_book | unknown | unknown | verified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | source verified unclassified | TokenVesting<br>`0x3086ac03b0347bee2ce3fd9079452db13fc76827` | non_address_book | unknown | unknown | verified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ee74172e04b98d2821bcb76423dc4e83ffc7bef` | non_address_book | unknown | unknown | unverified | n/a | `0x23580ee21e7b438cc7995fdb0bde885e58c2b3e0` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | contamination review | FflonkVerifier<br>`0x21f65deadb3b85082ba99766f323bea90eb5a3d6` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | contamination review | PolygonZkEVMGlobalExitRoot<br>`0xbc1ea504fc54d078514efcca1f6860b5219b6bc3` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | source verified unclassified | PolygonZkEVM<br>`0xe262ea2782e2e8dbfe354048c3b5d6de9603efef` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | source verified unclassified | PolygonZkEVMTimelock<br>`0xef1462451c30ea7ad8555386226059fe837ca4ef` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | source verified unclassified | PolygonZkEVMUpgraded<br>`0x301442aa888701c8b86727d42f3c55fb0dd9ef7f` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| optimism | candidate review | BridgeV2<br>`0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | MetaRouter<br>`0x1a039ce63ae35a67bf0e9f6dbfae969639d59ec8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | MetaRouter<br>`0xce8f24a58d85ed5c5a6824f7be1f8d4711a0eb4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | MetaRouterGateway<br>`0xa9a96ee51dd54b9f51d46b1fbd2a19c1295ec75b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0x2b7aa8bdc40b6d3d19d0de7480c4db8d5b6495e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0x45cfd6fb7999328f189aad2739fba4be6c45e5bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0x7775b274f0c3fa919b756b22a4d9674e55927ab8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0xa257f3fe4e4032291516dc355edf90664e9eb932` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0xbbad2fe9558e55ebfa04b3b5bff0b6c4e2ffdd2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0xf8504d2ca2f0bbad9d36927e3d32e278abadada0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | OnchainSwapV3<br>`0xf85fc807d05d3ab2309364226970aac57b4e1ea4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | ProxyAdmin<br>`0x1da522b35363c1eda4833bc121c8f3c67b2caa75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | candidate review | TransparentUpgradeableProxy<br>`0x5523985926aa12ba58dc5ad00ddca99678d7227e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | MulticallRouter<br>`0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | Portal<br>`0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | Portal<br>`0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | Portal<br>`0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | Portal<br>`0x81ab74a9f9d7457ff47dfd102e78a340cf72ec39` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | Portal<br>`0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | source verified unclassified | Unwrapper<br>`0x88139ad1199e8c78a0804d4bebf4fbad89ef9d89` | non_address_book | unknown | unknown | verified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3e6a3ebbc9d88acc192221797ad90bf72d391778` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | unverified unclassified | UnnamedContract<br>`0xca506793a420e901bbca8066be5661e3c52c84c2` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf1c374d065719ce1fdc63e2c5c13146813c0a83b` | non_address_book | unknown | unknown | unverified | n/a | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | BridgeV2<br>`0x5be6e69ec8a59b1ed8201b184adb0774d551a774` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | BridgeV2<br>`0x7057ab3fb2bee9c18e0cde4240de4ff7f159e365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | BridgeV2<br>`0x8dc3151dccd58fcb6a0bec0df20c06fba133f027` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | MetaRouter<br>`0x9a31bac4b3b958c835c243800b474818d04393dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | MetaRouter<br>`0xb657f823fd8c4b94901e78b75481d5b39d59ec61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | MetaRouter<br>`0xe75c7e85fe6add07077467064ad15847e6ba9877` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | MetaRouter<br>`0xf951789c6a356bfbc3033648aa10b5dd3e9d88c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | MetaRouterGateway<br>`0x2ee9559387b806e88fd46b9da160d64a29ce7da0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0x4fda0599b78a49d289577a8df2046459abc04d82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0x624ffe62eba13e6057878bca1d7a9e35651e1d9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0x8e1d36f9da8cfe842bcf8670a12acd51c26d195d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0x9d74807b8fa79d49bb95cf988af3c25fb1437b4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0xa18348e793e77239ec68caa51b74c5cdc82c8a9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0xb91d3060c90aac7c4c706aef2b37997b3b2a1dcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0xe24c543a6e930c728e12648c42ea73bf953d820f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | OnchainSwapV3<br>`0xf5b0861e787706195c98e2f0d2d6efbdac1d1e08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | ProxyAdmin<br>`0x0f28f4a0250710adf2d95c7e7e297b2edd31aec8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | ProxyAdmin<br>`0x1da522b35363c1eda4833bc121c8f3c67b2caa75` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | ProxyAdmin<br>`0xda1c70c902746996a8c989bb07aa6c408ef880d8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x1ac4c50080871d7a24dd705de9efe5ff14bc0ea2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x3338be49a5f60e2593337919f9ad7098e9a7dd7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x7b4e28e7273aa8cb64c56ff191ebf43b64f409f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0xb79a4f5828eb55c10d7abf4bfe9a9f5d11aa84e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0xc17d768bf4fdc6f20a4a0d8be8767840d106d077` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6dcb5e43b05918505f65bf423088af172c32be33` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/symbiosis/information](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | n/a | matched | 3 | 1 | 0 | 2 | n/a |
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | n/a | matched | 3 | 3 | 0 | 7 | n/a |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | n/a | matched | 3 | 3 | 0 | 11 | n/a |
| [Symbiosis Protocol Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-02 | stale | Direct | n/a | matched | 6 | 4 | 0 | 10 | n/a |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | n/a | matched | 5 | 3 | 0 | 14 | n/a |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2093] immunefi.com/bug-bounty/symbiosis/information — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are listed; only a link to audit reports is provided.
- [2094] Symbiosis Staking - Decurity.pdf — no match: Scope section explicitly lists 6 contracts. Audit period ends 18/07/2025.
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf — no match: Extracted contracts from scope table and file paths. Audit date from summary table header.
- [2096] Symbiosis Relayers Network 2024 - Decurity.pdf — matched: No reason recorded
- [2097] Symbiosis Frontend App - Decurity.pdf — no match: The audit is a UI security assessment, not a smart contract audit. No smart contracts are in scope; only web app URLs and a repository are mentioned.
- [2099] Symbiosis Protocol Audit - HashCloak.pdf — matched: No reason recorded
- [14782] Symbiosis Protocol Audit - Omniscia.pdf — matched: No reason recorded
- [14783] Symbiosis Protocol Audit - SlowMist.pdf — matched: No reason recorded
- [14784] Symbiosis Protocol Audit - Zokyo.pdf — matched: No reason recorded
- [14785] Symbiosis Depository Audit - Decurity.pdf — matched: No reason recorded
- [14786] Symbiosis Protocol MRv3 Audit - Zokyo.pdf — matched: No reason recorded
- [14787] Symbiosis Onchain Swap Audit - Decurity.pdf — no match: Two contracts in scope: OnchainGateway.sol and OnchainSwapV3.sol. Audit period ended 18/09/2023.
- [14788] Symbiosis Pool Audit - Zokyo.pdf — no match: Scope explicitly lists 5 contracts: AggregateAccount.sol, DSMath.sol, SafeCast.sol, SignedSafeMath.sol, Pool.sol. Audit date from cover page: 'December 6th 2022'.
- [14789] Symbiosis TON Bridge - Zokyo.pdf — no match: Only one contract, TonBridge.sol, is explicitly listed in scope.
- [14790] Symbiosis TON Bridge v2 - Zokyo.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Symbiosis Staking - Decurity.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | StakingView | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | EventLogger | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | RewardCounter | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | SymbiToken | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | TxManager | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | EpochManager | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | Transaction | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2024 - Decurity.pdf | Bridge | unmatched — not counted | — | — | no |
| Symbiosis Relayers Network 2024 - Decurity.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df25683871d18bc838e4f619126442dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - HashCloak.pdf | metarouter | own contract | MetaRouter (selected) `0xf621fb08bbe51af70e7e0f4ea63496894166ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | metarouter_gateway | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - HashCloak.pdf | portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | symbiosis | own contract | Symbiosis (selected) `0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9` — deployed 2021-11-18 22:54:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5523985926aa12ba58dc5ad00ddca99678d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df25683871d18bc838e4f619126442dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5523985926aa12ba58dc5ad00ddca99678d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | BridgeV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | MetaRouterV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntFabricSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df25683871d18bc838e4f619126442dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | SynthesisSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5523985926aa12ba58dc5ad00ddca99678d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouterGateway | own contract | MetaRouterGateway (selected) `0xfcef2fe72413b65d3f393d278a714cad87512bcd` — deployed 2023-12-19 10:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df25683871d18bc838e4f619126442dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | ft | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | metarouter | own contract | MetaRouter (selected) `0xf621fb08bbe51af70e7e0f4ea63496894166ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Depository Audit - Decurity.pdf | DepositUnlockers | unmatched — not counted | — | — | no |
| Symbiosis Depository Audit - Decurity.pdf | Depository | own contract | Depository (selected) `0x84deb7fc54a1f734aef6ddc0c0f74182bdf941a8` — deployed 2026-03-16 22:02:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Depository Audit - Decurity.pdf | Router | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5523985926aa12ba58dc5ad00ddca99678d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | BridgeV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouteStructsSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouter | own contract | MetaRouter (selected) `0xf621fb08bbe51af70e7e0f4ea63496894166ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterGateway | own contract | MetaRouterGateway (selected) `0xfcef2fe72413b65d3f393d278a714cad87512bcd` — deployed 2023-12-19 10:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MulticallRouter | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275fbf7a959f4bce59999a2ef122a099e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntFabricSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df25683871d18bc838e4f619126442dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SynthesisSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Onchain Swap Audit - Decurity.pdf | OnchainGateway | unmatched — not counted | — | listed in scope section 2.2 | no |
| Symbiosis Onchain Swap Audit - Decurity.pdf | OnchainSwapV3 | unmatched — not counted | — | listed in scope section 2.2 and findings | no |
| Symbiosis Pool Audit - Zokyo.pdf | AggregateAccount | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | DSMath | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | SignedSafeMath | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| Symbiosis TON Bridge - Zokyo.pdf | TonBridge | unmatched — not counted | — | listed in scope as TonBridge.sol | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | external_id | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | jetton-minter | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | jetton-utils | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | jetton-wallet | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | op-codes | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | params | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | stdlib | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x22278fe9a52a8ccb3a914f3f61bb6c70fe5fd9a1` | BranchedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0` | BtcRefundUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c7beba8f6ef6643abd725e45a4e8387ef260649` | GravityTokenG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d224452801aced8b2f0aebe155379bb5d594381` | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f958d2ee523a2206206994597c13d831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec148f80d699b0eaf65dd5438cde4b380ded8a3b` | TimedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd108089057dd0e9f841eb9e00fcf5105534341e` | WithdrawUnlocker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 297 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (15 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 74 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: unique_name=21

Zero-match audit list:

- [2094] Symbiosis Staking - Decurity.pdf
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf
- [2097] Symbiosis Frontend App - Decurity.pdf
- [14787] Symbiosis Onchain Swap Audit - Decurity.pdf
- [14788] Symbiosis Pool Audit - Zokyo.pdf
- [14789] Symbiosis TON Bridge - Zokyo.pdf
- [14790] Symbiosis TON Bridge v2 - Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
