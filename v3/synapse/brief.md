# Agentic Audit Brief: Synapse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Synapse (`synapse`)
- Website: [https://synapseprotocol.com](https://synapseprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, blast, boba, bsc, canto, cronos, ethereum, fantom, harmony, kaia, linea, metis, moonbeam, moonriver, optimism, polygon, scroll
- Contract surface: 119 unique implementations (119 raw deployments)
- Coverage basis: 0/70 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,317,360.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Synapse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 70 contract row(s) across arbitrum, aurora, avalanche, base, blast, boba, bsc, canto, cronos, ethereum, fantom, harmony, kaia, linea, metis, moonbeam, moonriver, optimism, polygon, scroll. Structural roles: 44 core, 21 supporting, 5 infra. 46 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 70
- Structural roles: core (44), supporting (21), infra (5)
- Contract kinds: contract (65), abstract (5)
- Detected standards: accesscontrol (26), erc20 (20), erc20permit (19), erc1967proxy (14), ownable (14), pausable (12), erc165 (7)
- Frameworks: openzeppelin-upgradeable (41), openzeppelin (39), boringcrypto (9)
- Upgradeable-pattern rows: 46

## Fork Analysis

0 of 119 contracts are derived from known codebases. 119 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6571d6...29d85f`, chain 1)
- UnnamedContract (`0x809dc5...771036`, chain 1)
- UnnamedContract (`0xaed5b2...28ddfe`, chain 1)
- UnnamedContract (`0x470f95...e3b4a7`, chain 10)
- UnnamedContract (`0x5523d3...0fb59e`, chain 56)
- UnnamedContract (`0x749f37...a23697`, chain 56)
- UnnamedContract (`0x09fec3...e2e240`, chain 1088)
- UnnamedContract (`0x555982...15f78e`, chain 1088)
- UnnamedContract (`0x73783f...dec5e9`, chain 1284)
- UnnamedContract (`0x84a420...67d32f`, chain 1284)
- UnnamedContract (`0xf44938...f22004`, chain 1284)
- UnnamedContract (`0x06fea8...f42a5c`, chain 1285)
- UnnamedContract (`0x432036...d69540`, chain 1285)
- UnnamedContract (`0xaed5b2...28ddfe`, chain 1285)
- UnnamedContract (`0x12715a...4bd35e`, chain 43114)
- UnnamedContract (`0x073795...f2a21c`, chain 1313161554)
- UnnamedContract (`0x2d8ee8...2596ed`, chain 1313161554)
- UnnamedContract (`0x3ce7aa...38b7ec`, chain 1313161554)
- UnnamedContract (`0x809dc5...771036`, chain 1313161554)
- UnnamedContract (`0xaed5b2...28ddfe`, chain 1313161554)
- UnnamedContract (`0xd80d86...ad0445`, chain 1313161554)
- AaveSwap (`0x77a7e6...212d44`, chain 43114)
- FastBridge (`0x5523d3...0fb59e`, chain 1)
- FastBridge (`0x5523d3...0fb59e`, chain 10)
- FastBridge (`0x5523d3...0fb59e`, chain 8453)
- FastBridge (`0x5523d3...0fb59e`, chain 42161)
- FastBridge (`0x34f527...9f24dd`, chain 59144)
- FastBridge (`0x34f527...9f24dd`, chain 81457)
- FastBridge (`0x5523d3...0fb59e`, chain 534352)
- L2BridgeZap (`0x1c6ae1...af9cc8`, chain 137)
- L2BridgeZap (`0x37f9ae...b3862b`, chain 42161)
- L2BridgeZap (`0x0ef812...9c2f3a`, chain 43114)
- LPToken (`0x1b8476...3dde4f`, chain 1)
- MiniChefV2 (`0xd10ef2...0b62cf`, chain 1)
- MiniChefV2 (`0xe8c610...12aaa0`, chain 10)
- MiniChefV2 (`0x8f5bbb...9c1280`, chain 56)
- MiniChefV2 (`0x7875af...418be5`, chain 137)
- MiniChefV2 (`0xab0d8f...34ebf5`, chain 1088)
- MiniChefV2 (`0xffc2d6...8c36e9`, chain 8453)
- MiniChefV2 (`0x73186f...34e207`, chain 42161)
- MiniChefV2 (`0x3a0152...e18249`, chain 43114)
- MiniChefV2 (`0x3100dc...d6e590`, chain 81457)
- SwapFlashLoan (`0x111689...8af2d8`, chain 1)
- SwapFlashLoan (`0xe27bff...8f5ee9`, chain 10)
- SwapFlashLoan (`0xf44938...f22004`, chain 10)
- SwapFlashLoan (`0x28ec0b...ca4d13`, chain 56)
- SwapFlashLoan (`0x85fcd7...1c3ee5`, chain 137)
- SwapFlashLoan (`0x6223bd...4c225f`, chain 8453)
- SwapFlashLoan (`0x9dd329...f0cb40`, chain 42161)
- SwapFlashLoan (`0xa06766...c34352`, chain 42161)
- SwapFlashLoan (`0xed2a7e...abab66`, chain 43114)
- SwapFlashLoan (`0x999fcd...4641c0`, chain 81457)
- SwapFlashLoan (`0xa4bd1a...32ac9c`, chain 81457)
- SynapseCCTPRouter (`0xd5a597...902f48`, chain 1)
- SynapseERC20 (`0x0f2d71...fd9f29`, chain 1)
- SynapseERC20 (`0x5a5fff...431655`, chain 10)
- SynapseERC20 (`0x67c10c...a7cd00`, chain 10)
- SynapseERC20 (`0x809dc5...771036`, chain 10)
- SynapseERC20 (`0x23b891...b817b3`, chain 56)
- SynapseERC20 (`0xa4080f...9e9484`, chain 56)
- SynapseERC20 (`0xb6c473...9b02af`, chain 137)
- SynapseERC20 (`0xf8f9ef...70e695`, chain 137)
- SynapseERC20 (`0x67c10c...a7cd00`, chain 1088)
- SynapseERC20 (`0x931b8f...211231`, chain 1088)
- SynapseERC20 (`0x961318...5200ab`, chain 1088)
- SynapseERC20 (`0xd80d86...ad0445`, chain 1285)
- SynapseERC20 (`0x432036...d69540`, chain 8453)
- SynapseERC20 (`0xb554a5...06be8c`, chain 8453)
- SynapseERC20 (`0x080f6a...8f46eb`, chain 42161)
- SynapseERC20 (`0x2913e8...497688`, chain 42161)
- SynapseERC20 (`0x3ea9b0...cf908e`, chain 42161)
- SynapseERC20 (`0x1f1e7c...9ca251`, chain 43114)
- SynapseERC20 (`0xcfc37a...1bdf46`, chain 43114)
- SynapseERC20 (`0x3194b0...f6c6e0`, chain 81457)
- SynapseERC20 (`0x9592f0...5ede0e`, chain 81457)
- SynapseERC20 (`0xce9712...ccc855`, chain 81457)
- SynapseRouter (`0x7e7a0e...18c96a`, chain 1)
- TransparentUpgradeableProxy (`0x12715a...4bd35e`, chain 1)
- TransparentUpgradeableProxy (`0x279631...b8ceb6`, chain 1)
- TransparentUpgradeableProxy (`0x12715a...4bd35e`, chain 10)
- TransparentUpgradeableProxy (`0xaf41a6...f2dc6b`, chain 10)
- TransparentUpgradeableProxy (`0xd123f7...a8749f`, chain 56)
- TransparentUpgradeableProxy (`0x12715a...4bd35e`, chain 137)
- TransparentUpgradeableProxy (`0x8f5bbb...9c1280`, chain 137)
- TransparentUpgradeableProxy (`0x06fea8...f42a5c`, chain 1088)
- TransparentUpgradeableProxy (`0x12715a...4bd35e`, chain 8453)
- TransparentUpgradeableProxy (`0xf07d1c...867089`, chain 8453)
- TransparentUpgradeableProxy (`0x12715a...4bd35e`, chain 42161)
- TransparentUpgradeableProxy (`0x6f4e8e...dc19c9`, chain 42161)
- TransparentUpgradeableProxy (`0xc05e61...91aace`, chain 43114)
- TransparentUpgradeableProxy (`0x55769b...07ef3c`, chain 81457)
- UnnamedContract (`0x396c9c...ac623b`, chain 25)
- UnnamedContract (`0x991adb...9377c2`, chain 25)
- UnnamedContract (`0xe27bff...8f5ee9`, chain 25)
- UnnamedContract (`0xfd0f80...a31616`, chain 25)
- UnnamedContract (`0x85662f...8dc3b4`, chain 250)
- UnnamedContract (`0xaed5b2...28ddfe`, chain 250)
- UnnamedContract (`0xaf41a6...f2dc6b`, chain 250)
- UnnamedContract (`0xb003e7...8c0ded`, chain 250)
- UnnamedContract (`0xe55e19...1e25b2`, chain 250)
- UnnamedContract (`0xed2a7e...abab66`, chain 250)
- UnnamedContract (`0x432036...d69540`, chain 288)
- UnnamedContract (`0x64b409...427a2d`, chain 288)
- UnnamedContract (`0x6b4712...28a1cf`, chain 288)
- UnnamedContract (`0x75ff03...72fead`, chain 288)
- UnnamedContract (`0x964199...a40431`, chain 288)
- UnnamedContract (`0xb554a5...06be8c`, chain 288)
- UnnamedContract (`0xd5609c...aab17c`, chain 288)
- UnnamedContract (`0x073795...f2a21c`, chain 7700)
- UnnamedContract (`0x555982...15f78e`, chain 7700)
- UnnamedContract (`0x8671a0...c655b7`, chain 7700)
- UnnamedContract (`0x93124c...a67ed6`, chain 7700)
- UnnamedContract (`0xdde5be...3606e0`, chain 7700)
- UnnamedContract (`0xaf41a6...f2dc6b`, chain 8217)
- UnnamedContract (`0xaed5b2...28ddfe`, chain 1666600000)
- UnnamedContract (`0xaf41a6...f2dc6b`, chain 1666600000)
- UnnamedContract (`0xb003e7...8c0ded`, chain 1666600000)
- UnnamedContract (`0xe55e19...1e25b2`, chain 1666600000)
- UnnamedContract (`0xed2a7e...abab66`, chain 1666600000)

## Contract Surface Quality

- Indexed contracts: 70; live-surface contracts included: 70 (70 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 119/121 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/70 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 119 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Deployed-live implementations: 119 of 119 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/70
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 119
- Raw deployments: 119
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveSwap | unknown | project_anchor | own_supporting | 0 | avalanche | unit-258338 | `0x77a7e6...212d44` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-258258 | `0x5523d3...0fb59e` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-258267 | `0x5523d3...0fb59e` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | base | unit-258363 | `0x5523d3...0fb59e` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-258331 | `0x5523d3...0fb59e` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-258348 | `0x34f527...9f24dd` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | blast | unit-258356 | `0x34f527...9f24dd` | ⚠️ Unaudited |
| FastBridge | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-258341 | `0x5523d3...0fb59e` | ⚠️ Unaudited |
| L2BridgeZap | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-258300 | `0x1c6ae1...af9cc8` | ⚠️ Unaudited |
| L2BridgeZap | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-258329 | `0x37f9ae...b3862b` | ⚠️ Unaudited |
| L2BridgeZap | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-258335 | `0x0ef812...9c2f3a` | ⚠️ Unaudited |
| LPToken | token | project_anchor | own_supporting | 0 | ethereum | unit-258257 | `0x1b8476...3dde4f` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258263 | `0xd10ef2...0b62cf` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258273 | `0xe8c610...12aaa0` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-258346 | `0x8f5bbb...9c1280` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-258301 | `0x7875af...418be5` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | metis | unit-258286 | `0xab0d8f...34ebf5` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | base | unit-258366 | `0xffc2d6...8c36e9` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258332 | `0x73186f...34e207` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-258337 | `0x3a0152...e18249` | ⚠️ Unaudited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-258354 | `0x3100dc...d6e590` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258256 | `0x111689...8af2d8` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | optimism | unit-258271 | `0xe27bff...8f5ee9` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | optimism | unit-258275 | `0xf44938...f22004` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | bsc | unit-258343 | `0x28ec0b...ca4d13` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | polygon | unit-258302 | `0x85fcd7...1c3ee5` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | base | unit-258364 | `0x6223bd...4c225f` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258333 | `0x9dd329...f0cb40` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258334 | `0xa06766...c34352` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | avalanche | unit-258340 | `0xed2a7e...abab66` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | blast | unit-258358 | `0x999fcd...4641c0` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | project_anchor | own_supporting | 0 | blast | unit-258359 | `0xa4bd1a...32ac9c` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-258367 | `0x279631...b8ceb6` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-258370 | `0xaf41a6...f2dc6b` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-258377 | `0xd123f7...a8749f` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | polygon | unit-258371 | `0x8f5bbb...9c1280` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | base | unit-258380 | `0xf07d1c...867089` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-258373 | `0x6f4e8e...dc19c9` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | avalanche | unit-258375 | `0xc05e61...91aace` | ⚠️ Unaudited |
| SynapseBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-258378 | `0x55769b...07ef3c` | ⚠️ Unaudited |
| SynapseCCTP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258368 | `0x12715a...4bd35e` | ⚠️ Unaudited |
| SynapseCCTP | unknown | project_anchor | own_supporting | 1 | optimism | unit-258369 | `0x12715a...4bd35e` | ⚠️ Unaudited |
| SynapseCCTP | unknown | project_anchor | own_supporting | 1 | polygon | unit-258372 | `0x12715a...4bd35e` | ⚠️ Unaudited |
| SynapseCCTP | unknown | project_anchor | own_supporting | 1 | base | unit-258379 | `0x12715a...4bd35e` | ⚠️ Unaudited |
| SynapseCCTP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258374 | `0x12715a...4bd35e` | ⚠️ Unaudited |
| SynapseCCTPRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258264 | `0xd5a597...902f48` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-258255 | `0x0f2d71...fd9f29` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-258268 | `0x5a5fff...431655` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-258269 | `0x67c10c...a7cd00` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-258270 | `0x809dc5...771036` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-258342 | `0x23b891...b817b3` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-258347 | `0xa4080f...9e9484` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-258303 | `0xb6c473...9b02af` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-258304 | `0xf8f9ef...70e695` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | metis | unit-258283 | `0x67c10c...a7cd00` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | metis | unit-258284 | `0x931b8f...211231` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | metis | unit-258285 | `0x961318...5200ab` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | moonriver | unit-258293 | `0xd80d86...ad0445` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | base | unit-258362 | `0x432036...d69540` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | base | unit-258365 | `0xb554a5...06be8c` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-258327 | `0x080f6a...8f46eb` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-258328 | `0x2913e8...497688` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-258330 | `0x3ea9b0...cf908e` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-258336 | `0x1f1e7c...9ca251` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-258339 | `0xcfc37a...1bdf46` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | blast | unit-258355 | `0x3194b0...f6c6e0` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | blast | unit-258357 | `0x9592f0...5ede0e` | ⚠️ Unaudited |
| SynapseERC20 | token | project_anchor | own_supporting | 0 | blast | unit-258360 | `0xce9712...ccc855` | ⚠️ Unaudited |
| SynapseRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258260 | `0x7e7a0e...18c96a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-258277 | `0x06fea8...f42a5c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xe7794fefeec6408b695376c46a53e6621f99ccdc) | proxy | project_anchor | own_supporting | 1 | avalanche | unit-258376 | `0x12715a...4bd35e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258259 | `0x6571d6...29d85f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258261 | `0x809dc5...771036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258262 | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258266 | `0x470f95...e3b4a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-258310 | `0x396c9c...ac623b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-258311 | `0x991adb...9377c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-258312 | `0xe27bff...8f5ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-258313 | `0xfd0f80...a31616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-258344 | `0x5523d3...0fb59e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-258345 | `0x749f37...a23697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-258314 | `0x85662f...8dc3b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-258315 | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-258316 | `0xaf41a6...f2dc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-258317 | `0xb003e7...8c0ded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-258318 | `0xe55e19...1e25b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-258319 | `0xed2a7e...abab66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258320 | `0x432036...d69540` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258321 | `0x64b409...427a2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258322 | `0x6b4712...28a1cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258323 | `0x75ff03...72fead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258324 | `0x964199...a40431` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258325 | `0xb554a5...06be8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-258326 | `0xd5609c...aab17c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-258279 | `0x09fec3...e2e240` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-258281 | `0x555982...15f78e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-258287 | `0x73783f...dec5e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-258288 | `0x84a420...67d32f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-258289 | `0xf44938...f22004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-258290 | `0x06fea8...f42a5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-258291 | `0x432036...d69540` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-258292 | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-258349 | `0x073795...f2a21c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-258350 | `0x555982...15f78e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-258351 | `0x8671a0...c655b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-258352 | `0x93124c...a67ed6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-258353 | `0xdde5be...3606e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-258361 | `0xaf41a6...f2dc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-258294 | `0x073795...f2a21c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-258295 | `0x2d8ee8...2596ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-258296 | `0x3ce7aa...38b7ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-258297 | `0x809dc5...771036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-258298 | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-258299 | `0xd80d86...ad0445` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-258305 | `0xaed5b2...28ddfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-258306 | `0xaf41a6...f2dc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-258307 | `0xb003e7...8c0ded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-258308 | `0xe55e19...1e25b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-258309 | `0xed2a7e...abab66` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sanguine - Zellic Audit Report (1).pdf](https://github.com/synapsecns/sanguine/blob/master/assets/sanguine-audits/Sanguine%20-%20Zellic%20Audit%20Report%20(1).pdf) | Zellic | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |
| [Synapse Fast Bridge Review - Aleph_v.md](https://github.com/synapsecns/sanguine/blob/master/assets/sanguine-audits/Synapse%20Fast%20Bridge%20Review%20-%20Aleph_v.md) | Aleph_v | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf](https://github.com/synapsecns/sanguine/blob/master/assets/sanguine-audits/Trail%20of%20Bits%20-%20Synapse%20Protocol%20Comprehensive%20Report%20(2).pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Zellic Security Assessment Report.pdf](https://github.com/synapsecns/sanguine/blob/master/assets/sanguine-audits/Zellic%20Security%20Assessment%20Report.pdf) | Zellic | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [chainlight.md](https://github.com/synapsecns/sanguine/blob/master/assets/sanguine-audits/chainlight.md) | ChainLight | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21021] Sanguine - Zellic Audit Report (1).pdf — no match: Extracted 36 contract names from the scope listing and additional modules from threat model sections. No audit date found in the report.
- [21022] Synapse Fast Bridge Review - Aleph_v.md — no match: The provided text is a URL to a HackMD document, not the actual audit report content. No contract names or audit date could be extracted.
- [21023] Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf — no match: Extracted contract names from Project Targets and Detailed Findings sections. Audit date inferred from copyright year 2023 and report context; exact date not found, so used end of year.
- [21024] Zellic Security Assessment Report.pdf — no match: Scope table lists 6 contracts: TokenZapV1, FastBridgeV2, AdminV2, MulticallTarget, BridgeTransactionV2, ZapDataV1. Audit date from cover page: February 11, 2025.
- [21025] chainlight.md — no match: No explicit scope section; contracts inferred from finding headers and file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sanguine - Zellic Audit Report (1).pdf | Destination | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | BondingManager | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | AgentManager | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | LightManager | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Number | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Tips | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | GasData | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Header | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Request | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | TypeCasts | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | MerkleMath | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | MerkleTree | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Structures | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Message | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Attestation | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Receipt | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | ByteString | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | MemView | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | State | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | BaseMessage | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | MultiCallable | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Version | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | AgentSecured | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | MessagingBase | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | LightInbox | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Inbox | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | StatementInbox | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Summit | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | TestClient | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | MessageRecipient | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | PingPongClient | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | BaseClient | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | Origin | unmatched — not counted | — | listed in scope | no |
| Sanguine - Zellic Audit Report (1).pdf | GasOracle | unmatched — not counted | — | mentioned in findings and threat model | no |
| Sanguine - Zellic Audit Report (1).pdf | ExecutionHub | unmatched — not counted | — | mentioned in threat model | no |
| Sanguine - Zellic Audit Report (1).pdf | SnapshotHub | unmatched — not counted | — | mentioned in threat model | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | SnapshotHub | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | Inbox | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | Summit | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | Destination | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | Origin | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | GasOracle | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | BondingManager | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | LightManager | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | LightInbox | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | ExecutionHub | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | Tips | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | AgentManager | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | MessagingBase | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | StatementInbox | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | PingPongClient | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf | MessageRecipient | unmatched — not counted | — | listed in scope | no |
| Zellic Security Assessment Report.pdf | TokenZapV1 | unmatched — not counted | — | listed in scope table | no |
| Zellic Security Assessment Report.pdf | FastBridgeV2 | unmatched — not counted | — | listed in scope table | no |
| Zellic Security Assessment Report.pdf | AdminV2 | unmatched — not counted | — | listed in scope table | no |
| Zellic Security Assessment Report.pdf | MulticallTarget | unmatched — not counted | — | listed in scope table | no |
| Zellic Security Assessment Report.pdf | BridgeTransactionV2 | unmatched — not counted | — | listed in scope table | no |
| Zellic Security Assessment Report.pdf | ZapDataV1 | unmatched — not counted | — | listed in scope table | no |
| chainlight.md | ThresholdECDSA | unmatched — not counted | — | mentioned in SYNAPSE-001 | no |
| chainlight.md | InterchainClientV1 | unmatched — not counted | — | mentioned in SYNAPSE-004, SYNAPSE-010, SYNAPSE-013 | no |
| chainlight.md | SynapseModule | unmatched — not counted | — | mentioned in SYNAPSE-011, SYNAPSE-013 | no |
| chainlight.md | SynapseGasOracleV1 | unmatched — not counted | — | mentioned in SYNAPSE-013 | no |
| chainlight.md | TokenController | unmatched — not counted | — | mentioned in TOKENCONTROLLER-001, TOKENCONTROLLER-002 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5523d3...0fb59e` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5523d3...0fb59e` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5523d3...0fb59e` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5523d3...0fb59e` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x34f527...9f24dd` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x34f527...9f24dd` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x5523d3...0fb59e` | FastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1c6ae1...af9cc8` | L2BridgeZap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x37f9ae...b3862b` | L2BridgeZap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0ef812...9c2f3a` | L2BridgeZap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b8476...3dde4f` | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd10ef2...0b62cf` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe8c610...12aaa0` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8f5bbb...9c1280` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7875af...418be5` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xab0d8f...34ebf5` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xffc2d6...8c36e9` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x73186f...34e207` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3a0152...e18249` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x3100dc...d6e590` | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x111689...8af2d8` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe27bff...8f5ee9` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf44938...f22004` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x28ec0b...ca4d13` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x85fcd7...1c3ee5` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6223bd...4c225f` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9dd329...f0cb40` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa06766...c34352` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xed2a7e...abab66` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x999fcd...4641c0` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa4bd1a...32ac9c` | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x279631...b8ceb6` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf41a6...f2dc6b` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd123f7...a8749f` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8f5bbb...9c1280` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf07d1c...867089` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6f4e8e...dc19c9` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc05e61...91aace` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x55769b...07ef3c` | SynapseBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12715a...4bd35e` | SynapseCCTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x12715a...4bd35e` | SynapseCCTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x12715a...4bd35e` | SynapseCCTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x12715a...4bd35e` | SynapseCCTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x12715a...4bd35e` | SynapseCCTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5a597...902f48` | SynapseCCTPRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f2d71...fd9f29` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5a5fff...431655` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x67c10c...a7cd00` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x809dc5...771036` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x23b891...b817b3` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa4080f...9e9484` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb6c473...9b02af` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf8f9ef...70e695` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x67c10c...a7cd00` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x931b8f...211231` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x961318...5200ab` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd80d86...ad0445` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x432036...d69540` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb554a5...06be8c` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x080f6a...8f46eb` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2913e8...497688` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3ea9b0...cf908e` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1f1e7c...9ca251` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcfc37a...1bdf46` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x3194b0...f6c6e0` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x9592f0...5ede0e` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xce9712...ccc855` | SynapseERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e7a0e...18c96a` | SynapseRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 66 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21021] Sanguine - Zellic Audit Report (1).pdf
- [21022] Synapse Fast Bridge Review - Aleph_v.md
- [21023] Trail of Bits - Synapse Protocol Comprehensive Report (2).pdf
- [21024] Zellic Security Assessment Report.pdf
- [21025] chainlight.md

Fork inheritance lineage and inherited audits are included when available.
