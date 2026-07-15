# Agentic Audit Brief: Symbiosis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 7 audit(s)
- Eligible audit results: 15 (7 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-nova, aurora, avalanche, base, berachain, blast, boba, bsc, cronos, ethereum, fraxtal, gnosis, kava, linea, manta-pacific, mantle, merlin, metis, mode, opbnb, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sepolia, sonic, unichain, zksync-era
- Contract surface: 138 unique implementations (292 raw deployments)
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

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BranchedUnlocker (`0x22278f...5fd9a1`, chain 1)
- BtcRefundUnlocker (`0x9a99eb...10c9f0`, chain 1)
- Depository (`0x84deb7...f941a8`, chain 1)
- ERC1967Proxy (`0xd9a442...306a72`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- GravityTokenG (`0x9c7beb...260649`, chain 1)
- MetaRouter (`0xf621fb...66ff7f`, chain 1)
- MetaRouterGateway (`0xfcef2f...512bcd`, chain 1)
- SimpleToken (`0x4d2244...594381`, chain 1)
- Symbiosis (`0xd38bb4...c76dd9`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- TimedUnlocker (`0xec148f...ed8a3b`, chain 1)
- TransparentUpgradeableProxy (`0x552398...d7227e`, chain 1)
- TransparentUpgradeableProxy (`0xb8f275...9e81a8`, chain 1)
- TransparentUpgradeableProxy (`0xd7c3df...dd38b3`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- WithdrawUnlocker (`0xcd1080...34341e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (18 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/18 (38.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 18 of 138 unique; 120 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/78
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 138
- Raw deployments: 292
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
| BridgeV2 | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-257757 | `0x552398...d7227e` | ✅ Audited |
| Depository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257734 | `0x84deb7...f941a8` | ✅ Audited |
| MetaRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257742 | `0xf621fb...66ff7f` | ✅ Audited |
| MetaRouterGateway | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257743 | `0xfcef2f...512bcd` | ✅ Audited |
| Portal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257760 | `0xb8f275...9e81a8` | ✅ Audited |
| Symbiosis | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257739 | `0xd38bb4...c76dd9` | ✅ Audited |
| Synthesis | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257756 | `0xd7c3df...dd38b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgglayerGER | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x580bda...ce3cfb` | ⚠️ Unaudited |
| AgglayerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5132a1...1b7ab2` | ⚠️ Unaudited |
| BranchedUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257730 | `0x22278f...5fd9a1` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x85700e...56263f` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x552398...d7227e`; optimism `0x7057ab...59e365` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x552398...d7227e`; polygon `0x7057ab...59e365` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5be6e6...51a774`; arbitrum `0x7057ab...59e365` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8dc315...33f027`; polygon `0xfec09b...c631c6` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x0f9105...68f5d2`; base `0x8097f0...bb222f`; base `0x88139a...ef9d89` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1da522...2caa75`; base `0xda8057...81bfeb` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x552398...d7227e`; arbitrum `0xff9b21...48b0f6` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x5be6e6...51a774`; arbitrum `0x844e4a...34df30`; arbitrum `0xb657f8...59ec61` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0x292fc5...824d62`; avalanche `0x552398...d7227e`; avalanche `0x7057ab...59e365` | ⚠️ Unaudited |
| BtcRefundUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257735 | `0x9a99eb...10c9f0` | ⚠️ Unaudited |
| Depository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x84b104...108a73`; avalanche `0xe7eb02...3f5c4e` | ⚠️ Unaudited |
| DepositoryDst | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4ac560...3be547` | ⚠️ Unaudited |
| DepositorySrc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x695eea...02e840` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1815b...045d14` | ⚠️ Unaudited |
| FflonkVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f65d...b5a3d6` | ⚠️ Unaudited |
| FflonkVerifier | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-257733 | `0x4f9a0e...38e6e9` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-257759 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| GravityTokenG | token | project_anchor | own_supporting | 0 | ethereum | unit-257736 | `0x9c7beb...260649` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05de6...cc6df2` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x394187...36cbb1`; polygon `0x62f54e...975d8b` | ⚠️ Unaudited |
| MetaRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 22 deployments: optimism `0x0f9105...68f5d2`; optimism `0x1a039c...d59ec8`; optimism `0xce8f24...a0eb4c`; polygon `0x9a31ba...4393dd`; polygon `0xa260e3...077978`; polygon `0xb657f8...59ec61`; polygon `0xe75c7e...ba9877`; polygon `0xf95178...9d88c0`; base `0x1ceaed...544840`; base `0x691df9...82b946`; base `0x6f0f63...a139cf`; base `0x81ab74...72ec39`; base `0xc17d76...06d077`; base `0xda1c70...f880d8`; arbitrum `0x4f82ca...edd5e3`; arbitrum `0x57c361...0e238b`; arbitrum `0xca5067...2c84c2`; arbitrum `0xce8f24...a0eb4c`; arbitrum `0xf5b086...1d1e08`; arbitrum `0xf7e962...f45dde`; avalanche `0xa738e8...4304de`; avalanche `0xf1c374...c0a83b` | ⚠️ Unaudited |
| MetaRouterGateway | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x200a0f...fd12b5`; optimism `0xa9a96e...5ec75b`; polygon `0x2ee955...ce7da0`; polygon `0xab8365...b0f30c`; base `0xa18348...2c8a9d`; arbitrum `0x3743c7...46dcbe`; arbitrum `0x80dddd...fedaf9`; avalanche `0x4cfa66...c64e4a`; avalanche `0xfec09b...c631c6` | ⚠️ Unaudited |
| MulticallRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0xb8f275...9e81a8`; base `0x01a3c8...9c24d9`; base `0x1dcfbc...438adc`; base `0xb79a4f...aa84e0`; arbitrum `0x0f28f4...31aec8`; arbitrum `0xda8057...81bfeb`; arbitrum `0xf95178...9d88c0` | ⚠️ Unaudited |
| MulticallRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: arbitrum `0x5ad095...83b651`; avalanche `0x0f28f4...31aec8` | ⚠️ Unaudited |
| MultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee981b...4161f8` | ⚠️ Unaudited |
| OFTMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7f24...c14b84` | ⚠️ Unaudited |
| OnchainSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 39 deployments: optimism `0x2b7aa8...6495e2`; optimism `0x45cfd6...45e5bf`; optimism `0x7775b2...927ab8`; optimism `0xa257f3...9eb932`; optimism `0xbbad2f...ffdd2c`; optimism `0xf8504d...adada0`; optimism `0xf85fc8...4e1ea4`; polygon `0x4fda05...c04d82`; polygon `0x624ffe...1e1d9c`; polygon `0x8e1d36...6d195d`; polygon `0x9d7480...437b4f`; polygon `0xa18348...2c8a9d`; polygon `0xb91d30...2a1dcf`; polygon `0xe24c54...3d820f`; polygon `0xf5b086...1d1e08`; base `0x0f28f4...31aec8`; base `0x3338be...a7dd7e`; base `0x5b1bab...b28b62`; base `0x844e4a...34df30`; base `0x8dc315...33f027`; base `0x97cbe9...1c2aad`; base `0xf1c374...c0a83b`; base `0xf3040d...e27238`; base `0xf85fc8...4e1ea4`; base `0xf95178...9d88c0`; arbitrum `0x230cbb...1d0c68`; arbitrum `0x4fda05...c04d82`; arbitrum `0x6f0f63...a139cf`; arbitrum `0x77ed28...afb39a`; arbitrum `0x7f6fb9...32d421`; arbitrum `0xa257f3...9eb932`; arbitrum `0xbba322...538bb7`; avalanche `0x1ac4c5...bc0ea2`; avalanche `0x3e6a3e...391778`; avalanche `0x7775b2...927ab8`; avalanche `0x97cbe9...1c2aad`; avalanche `0xa257f3...9eb932`; avalanche `0xc17d76...06d077`; avalanche `0xf85fc8...4e1ea4` | ⚠️ Unaudited |
| PolygonZkEVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe262ea...03efef` | ⚠️ Unaudited |
| PolygonZkEVMGlobalExitRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1ea5...9b6bc3` | ⚠️ Unaudited |
| PolygonZkEVMTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1462...7ca4ef` | ⚠️ Unaudited |
| PolygonZkEVMUpgraded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x301442...d9ef7f` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 20 deployments: optimism `0x01a3c8...9c24d9`; optimism `0x1ac4c5...bc0ea2`; optimism `0x81ab74...72ec39`; optimism `0xb79a4f...aa84e0`; polygon `0x1ceaed...544840`; polygon `0x2a82ef...d1bfad`; polygon `0x5ad095...83b651`; polygon `0xebd15f...322f67`; base `0x1a039c...d59ec8`; base `0x5eb4ed...b15da6`; base `0x7f6fb9...32d421`; base `0x9a31ba...4393dd`; base `0xa385b1...cadcc6`; arbitrum `0x318c2b...30135a`; arbitrum `0xaf4570...475e1a`; arbitrum `0xb8f275...9e81a8`; arbitrum `0xeb2786...ed8c1a`; arbitrum `0xec54cb...dcc6ff`; avalanche `0x5b1bab...b28b62`; avalanche `0x5be6e6...51a774` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x292fc5...824d62`; optimism `0x7b4e28...f409f9` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3338be...a7dd7e`; polygon `0x97cbe9...1c2aad` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x35d39b...b1f990`; polygon `0xb8f275...9e81a8` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x253ddb...ff79d7`; base `0xee981b...4161f8` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x01a3c8...9c24d9`; arbitrum `0x2e0440...9d27c1` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x042584...c2e09a`; arbitrum `0xbd37c8...706437` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x97cbe9...1c2aad`; arbitrum `0xfec09b...c631c6` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8dc315...33f027`; avalanche `0xe75c7e...ba9877` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: ethereum `0x8ad82b...0778d4`; ethereum `0x943ed4...1ca66e`; optimism `0x1da522...2caa75`; polygon `0x0f28f4...31aec8`; polygon `0x1da522...2caa75`; polygon `0xda1c70...f880d8`; base `0x1ac4c5...bc0ea2`; base `0x552398...d7227e`; arbitrum `0x1da522...2caa75`; arbitrum `0x9a31ba...4393dd`; avalanche `0x1da522...2caa75` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-257758 | `0xd9a442...306a72` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf911f2...22bbc3` | ⚠️ Unaudited |
| SimpleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257732 | `0x4d2244...594381` | ⚠️ Unaudited |
| SymbiosisTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6ef7dd...7231bf`; ethereum `0x931c67...9f48f6`; ethereum `0xc5ebd4...0a848d`; ethereum `0xe99a09...8c1fcb` | ⚠️ Unaudited |
| SymBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3ef3f0...a4763e`; arbitrum `0xf3040d...e27238` | ⚠️ Unaudited |
| SyntERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b7f7...a0cda1` | ⚠️ Unaudited |
| SyntFabric | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-257761 | `0xbbfb7c...769428` | ⚠️ Unaudited |
| SyntFabric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x44487a...e325d5`; base `0x464c30...203027` | ⚠️ Unaudited |
| SyntFabric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2ee955...ce7da0`; arbitrum `0xf621fb...66ff7f` | ⚠️ Unaudited |
| Synthesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9d7480...437b4f`; base `0x9f6424...8e7a6e` | ⚠️ Unaudited |
| Synthesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x326adb...da6d16`; arbitrum `0x394187...36cbb1` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257740 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TimedUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257741 | `0xec148f...ed8a3b` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3086ac...c76827` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x1ac4c5...bc0ea2`; polygon `0x7b4e28...f409f9`; polygon `0x88139a...ef9d89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x6b1bbd...71bfaa`; polygon `0xb79a4f...aa84e0`; polygon `0xc17d76...06d077` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x17efc1...e3dcbd`; base `0x7b4e28...f409f9`; base `0xa9a96e...5ec75b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x292fc5...824d62`; base `0x5aa5f7...352fd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x318c2b...30135a`; base `0xbba322...538bb7`; base `0xf02bbc...9e5e0c` | ⚠️ Unaudited |
| Unwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: optimism `0x88139a...ef9d89`; base `0x8e1d36...6d195d`; arbitrum `0x5eb4ed...b15da6` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67480c...df647f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0f9105...68f5d2`; arbitrum `0x1ac4c5...bc0ea2`; arbitrum `0x2b7aa8...6495e2`; arbitrum `0x3e6a3e...391778`; arbitrum `0x6aeb9b...c10fab`; arbitrum `0xb79a4f...aa84e0` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-257731 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-257737 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WithdrawUnlocker | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257738 | `0xcd1080...34341e` | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bfc7...a74d9f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee741...fc7bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e6a3e...391778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1c374...c0a83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 6 deployments: cronos `0x292fc5...824d62`; cronos `0x2e818e...c5d3d7`; cronos `0x50c42d...f2634b`; cronos `0xaa5b84...64076c`; cronos `0xbc1000...000000`; cronos `0xe34c91...48b693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a039c...d59ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45cfd6...45e5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b1bab...b28b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eb4ed...b15da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6df77a...1c3fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f0f63...a139cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7775b2...927ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77ed28...afb39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81ab74...72ec39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x844e4a...34df30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a7f93...e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbad2f...ffdd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca5067...2c84c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce8f24...a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda8057...81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf02bbc...9e5e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7e962...f45dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5be6e6...51a774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7057ab...59e365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a7f93...e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb657f8...59ec61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb91d30...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8db4f...404160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x086488...ca7934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x464c30...203027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02bbc...9e5e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01a3c8...9c24d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45cfd6...45e5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fda05...c04d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5aa5f7...352fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x624ffe...1e1d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f0f63...a139cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b4e28...f409f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8097f0...bb222f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a7f93...e3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a31ba...4393dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8f275...9e81a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca5067...2c84c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce8f24...a0eb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda8057...81bfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8504d...adada0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257744 | `0x04cd23...899dfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257745 | `0x331f40...26a6f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257746 | `0x3e6235...5d4192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257747 | `0x7dc13b...41b4e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257748 | `0x8b03ad...7c0029` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257749 | `0xb4ade3...ec49ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257750 | `0xbc4454...ca1e38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257751 | `0xc3b59b...84f53d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257752 | `0xc532a7...694008` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257753 | `0xea3f68...7f24d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257754 | `0xed8691...ae23ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257755 | `0xf3cfa3...7e1210` | ❓ Unverified |

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
| Symbiosis Relayers Network 2024 - Decurity.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - HashCloak.pdf | metarouter | own contract | MetaRouter (selected) `0xf621fb...66ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | metarouter_gateway | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - HashCloak.pdf | portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | symbiosis | own contract | Symbiosis (selected) `0xd38bb4...c76dd9` — deployed 2021-11-18 22:54:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | BridgeV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | MetaRouterV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntFabricSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | SynthesisSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouterGateway | own contract | MetaRouterGateway (selected) `0xfcef2f...512bcd` — deployed 2023-12-19 10:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | ft | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | metarouter | own contract | MetaRouter (selected) `0xf621fb...66ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Depository Audit - Decurity.pdf | DepositUnlockers | unmatched — not counted | — | — | no |
| Symbiosis Depository Audit - Decurity.pdf | Depository | own contract | Depository (selected) `0x84deb7...f941a8` — deployed 2026-03-16 22:02:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Depository Audit - Decurity.pdf | Router | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | BridgeV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouteStructsSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouter | own contract | MetaRouter (selected) `0xf621fb...66ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterGateway | own contract | MetaRouterGateway (selected) `0xfcef2f...512bcd` — deployed 2023-12-19 10:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MulticallRouter | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntFabricSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ethereum | `0x22278f...5fd9a1` | BranchedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a99eb...10c9f0` | BtcRefundUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b869...06eb48` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c7beb...260649` | GravityTokenG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d2244...594381` | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec148f...ed8a3b` | TimedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd1080...34341e` | WithdrawUnlocker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 62 |

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
