# Agentic Audit Brief: Maia DAO Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Maia DAO Ecosystem (`maia-dao-ecosystem`)
- Website: [https://maiadao.io](https://maiadao.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fraxtal, metis, optimism, polygon, sonic, swellchain
- Contract surface: 285 unique implementations (408 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $391,825.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Maia DAO Ecosystem in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 285 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 224
- Unique implementations: 285
- Raw deployments: 408
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumBaseBranchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x213128...7d2869`; arbitrum `0x7add6e...363cf1`; arbitrum `0x880cc0...740783`; arbitrum `0xe16776...bdbda0` | ⚠️ Unaudited |
| ArbitrumBranchBridgeAgentFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d1b70...84def7` | ⚠️ Unaudited |
| ArbitrumBranchPort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0c453e...42e1f7`; arbitrum `0x79f4b0...7f0192` | ⚠️ Unaudited |
| ArbitrumCoreBranchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x38defd...1d9e7e`; arbitrum `0xaaa6c9...0943fd` | ⚠️ Unaudited |
| BaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x0ac047...85fffb`; metis `0x5873ad...d55eb4`; metis `0x94fab9...8c0d8b`; metis `0xb27bbe...5161c8` | ⚠️ Unaudited |
| BaseV1BribeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x27f7bd...731a7e`; metis `0x2b723e...572be1`; metis `0x2f2ab7...e87f26`; metis `0x4a3e7f...f7e253`; metis `0x5722bb...a61c69`; metis `0x78c703...212021`; metis `0x89b590...f34652`; metis `0x970c69...87f906`; metis `0xf9fd76...a327ee` | ⚠️ Unaudited |
| BaseV1Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: metis `0x068233...46509f`; metis `0x449315...4b5a8f`; metis `0x546c81...e6c9f1`; metis `0x633a09...f6668f`; metis `0x87eeb7...161deb`; metis `0xf5c4de...003a0e` | ⚠️ Unaudited |
| BaseV1GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x3c5436...f9bd3f`; metis `0x5e209c...d550da`; metis `0x7cb109...865004`; metis `0x81497c...a018f6`; metis `0x844bf3...9a0aa6`; metis `0x9c27e8...b68778`; metis `0xdcf743...52f956`; metis `0xf648f8...8de8b0`; metis `0xf70289...bd92df` | ⚠️ Unaudited |
| BaseV1Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0xe6868a...0005da`; metis `0xeb4562...ef5cd1`; metis `0xf031bc...cc4730` | ⚠️ Unaudited |
| BaseV1Router01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: metis `0x10afc1...8d7e3c`; metis `0x2d4f78...da8441`; metis `0x50f077...7beb4b`; metis `0x6bc899...bd91fb`; metis `0xbf9d63...022c36`; metis `0xccbf83...50191d`; metis `0xdfb3d4...1c75a4` | ⚠️ Unaudited |
| BaseV1Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x45ee37...151b0c`; metis `0x695fa6...3cd85e`; metis `0x879828...31137f` | ⚠️ Unaudited |
| BaseV2GaugeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6560a4...c74612` | ⚠️ Unaudited |
| BaseV2Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49283a...4d411e` | ⚠️ Unaudited |
| BoostAggregatorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x223f38...94fbd4` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x455d5f...f85265`; sonic `0x4d85ba...a932ba` | ⚠️ Unaudited |
| Brush | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe51ee9...1bfe44` | ⚠️ Unaudited |
| BurntHermes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a0000...cd937c` | ⚠️ Unaudited |
| ClaimHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: metis `0x14c51b...b1e3c6`; metis `0x29c685...ea9017`; metis `0x3aa56d...d2cc55`; metis `0x7ce2d5...845a2a`; metis `0x801844...6fd344`; metis `0x943aa3...6f2955`; metis `0xeb6392...cd7e66` | ⚠️ Unaudited |
| CoreRootRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x31e2a6...c3e8fe`; arbitrum `0xcd2fdc...a00eb3` | ⚠️ Unaudited |
| DeployArbitrumBranchBridgeAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89b63a...53bf16` | ⚠️ Unaudited |
| DeployBranchBridgeAgentExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x356d64...1f0e3b` | ⚠️ Unaudited |
| DeployRootBridgeAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9a3381...d1098b`; arbitrum `0x9f6c24...9079b6` | ⚠️ Unaudited |
| DeployRootBridgeAgentExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa6f7df...8e6f6b`; arbitrum `0xecf464...77cf1d` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x252f78...5a5120`; metis `0xd1cf3a...bb3048` | ⚠️ Unaudited |
| ERC20hTokenRootFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb9833d...eb55c7`; arbitrum `0xe6ac78...23bded` | ⚠️ Unaudited |
| ERC20sMAIA | token | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd7a586...536e6a` | ⚠️ Unaudited |
| FlywheelCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 18 deployments: metis `0x02707d...7a7c1a`; metis `0x34a3eb...0c62dd`; metis `0x3e68b8...d388ce`; metis `0x471cae...aad52d`; metis `0x50477f...59d3a3`; metis `0x607a8a...9d131b`; metis `0x6ac56a...7df638`; metis `0x79fa3a...7383e4`; metis `0x7ab001...c4efd8`; metis `0x81685e...9586aa`; metis `0x91bc08...6fe837`; metis `0xa69557...eb0b43`; metis `0xb8cfd3...ff3e88`; metis `0xbc1907...0c097b`; metis `0xc136b6...ac6762`; metis `0xc3a3c3...16dd10`; metis `0xe55574...d282b4`; metis `0xebb556...e4b8db` | ⚠️ Unaudited |
| FlywheelGaugeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5174fa...9afabb` | ⚠️ Unaudited |
| GOGGLES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9fdbc3...0c4564` | ⚠️ Unaudited |
| HERMES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x459400...fa00ab` | ⚠️ Unaudited |
| Hermes250 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x44f9f2...6d3f15`; metis `0xcbcc9a...d4b4c2` | ⚠️ Unaudited |
| HeyAnon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79bbf4...b0e07c` | ⚠️ Unaudited |
| LycheeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc8e1b...69982e` | ⚠️ Unaudited |
| Maia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x000000...f1009b` | ⚠️ Unaudited |
| MaiaBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 14 deployments: metis `0x3212c7...f072ac`; metis `0x3245f4...4dae69`; metis `0x5c89dc...24c2b6`; metis `0x803760...c7f30a`; metis `0x83de93...0e501a`; metis `0x89fef0...8777c9`; metis `0xa67af8...2b853c`; metis `0xb9791d...9ee28f`; metis `0xd1395b...778183`; metis `0xd211a3...9353f1`; metis `0xddc272...aa5297`; metis `0xec69ec...cdc963`; metis `0xee67fe...6cf980`; metis `0xf4d84c...c41a76` | ⚠️ Unaudited |
| MaiaDynamicRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 5 deployments: metis `0x010284...6b4453`; metis `0x2851a6...4ac04d`; metis `0x3ef1b8...5f55b5`; metis `0x77fa1e...c01d89`; metis `0x8e4813...3543cc` | ⚠️ Unaudited |
| MaiaERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x31ba70...9da00b`; metis `0x72c232...758bcd` | ⚠️ Unaudited |
| MarathonLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6efda2...a0243e` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x0a8890...ae5956`; metis `0x4dba32...159afe`; metis `0xf14c98...bb85e6` | ⚠️ Unaudited |
| MulticallRootRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8f9b85...440a7d`; arbitrum `0xebdcaa...d878dd` | ⚠️ Unaudited |
| MulticallRootRouterLibZip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3ad10d...834333`; arbitrum `0xcb3b7b...c33d25` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9e339e...f916dc` | ⚠️ Unaudited |
| PoolTickBitmap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3048a5...eee3b4` | ⚠️ Unaudited |
| RewardsDepot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x1e5a3d...bed31c`; metis `0x431216...b1117e`; metis `0x5ab5e7...a24761`; metis `0xf2a8d9...0c1015` | ⚠️ Unaudited |
| RootBridgeAgentFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x627dcc...67d466`; arbitrum `0xe0ff9a...f9539e` | ⚠️ Unaudited |
| RootPort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5399ee...e26cbb`; arbitrum `0xd3e359...c03c56` | ⚠️ Unaudited |
| sDOG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50bc6e...fa18b6` | ⚠️ Unaudited |
| sMaia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x54ccc7...e1ea1c`; metis `0x559119...d5ab84` | ⚠️ Unaudited |
| StakingHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x1c86af...d47802`; metis `0xcee8b8...291533` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x94af21...035cea` | ⚠️ Unaudited |
| TimeBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x15ac59...e3fe70`; metis `0x4c1bbb...acd315`; metis `0x5c6b07...dbbf75`; metis `0x62c90f...3078c5`; metis `0x63e132...6c4afc`; metis `0x6e23a7...c1f578`; metis `0xcebd1c...28ac74`; metis `0xd39f30...bce5ca`; metis `0xea0415...c74a1d` | ⚠️ Unaudited |
| TimeBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0xd23d70...46a0be`; metis `0xf1c8d7...505031`; metis `0xfcc66d...7c0fa1` | ⚠️ Unaudited |
| TimeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0xd1d003...9b2b81`; metis `0xe2546b...3c9be1` | ⚠️ Unaudited |
| TimeTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x3d183e...520fa9`; metis `0x9d99ad...894285` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5c532...f444b5` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xccf19f...4b2a1e` | ⚠️ Unaudited |
| ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x7d9767...c3ab3f`; metis `0xa4c546...15b65b`; metis `0xdff003...34808f` | ⚠️ Unaudited |
| ve_dist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x04f783...b27f67`; metis `0x305ba5...cae851`; metis `0x5dbda7...fa14c5`; metis `0xbf779d...27c982`; metis `0xc6fed9...eeec6d`; metis `0xccb2f4...276cf9`; metis `0xe9da18...b18cd5`; metis `0xeb23b0...5cab03`; metis `0xf271ee...7ff3e8` | ⚠️ Unaudited |
| VoteMaia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x000000...b4d080` | ⚠️ Unaudited |
| xAnonStakingNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x780ae2...330a5e` | ⚠️ Unaudited |
| ZeusToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x89dedf...4e8b28`; metis `0xaf0358...710d13`; metis `0xb29adb...5db458`; metis `0xe43375...fc4cfe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (224)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x54de3b7b5d1993db4b2a93c897b5272fbd60e99e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x54de3b...60e99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00fdfe...a3de0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x07fa01...4c6652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09e1df...b6b1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ce4b9...14dba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f63c5...622224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0fb765...a25ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11fce6...81f6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x138982...8c6ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15c286...2e1727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17d464...558ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x195b95...197f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c2efb...d21958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c5650...9ecd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1cd66a...811043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22b457...e45c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x25356d...ec9950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2759e7...4469ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x291342...7d3e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a4f01...1f988d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fa2c5...4353ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3159e0...a40038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x329fe9...fa0743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38fbd8...6483cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x40b4dd...705655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x461c09...5a5011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fa852...bfde33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fae94...92d8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x51d05d...145106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54f25d...0bf847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56c8e7...826a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5bc377...f24166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5e000b...df2c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64bd97...1ec814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66ca52...6963a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x692ee3...9dc6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x698304...e44972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a5607...48e191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6aea33...af4867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b1a32...a1294d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b8509...1ef457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ddd6d...03ebb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x749da4...ca5cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x763f5c...65e845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x76991a...841ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7705d3...790544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x77c341...e86a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a11c3...aa657c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7e24d0...970123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f61a7...a096fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x832e8c...15bb9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x839620...508940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84ca55...cd3f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85169b...ecd92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bd881...b5f5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8ca294...5fe354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d765a...f438d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e2ba6...d57ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x98dbc0...96875f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2c367...1cc127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8262a...b2dbdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa151a...0edd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa557c...d5081e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xac25dc...000909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xacce59...d2fa2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadeace...e25db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf4fc2...5a7778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0970f...03d536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1f9d7...df7726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb313e6...1e86fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb5feb8...90c12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb62c9d...5a21a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb94754...f5cb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb96010...a38dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbcc071...4b2e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe31bb...7ccd23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe7551...6717cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbf2aca...8647ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc31409...1636d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3a9c3...cd00df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc66a15...a82ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc7c5f0...60689e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd643b7...2e0c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd9e379...f5d323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdfd105...6e34d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe19260...5de72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe1c434...cdf217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6f020...77a137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7ca2a...9f41a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe854fb...b89a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8a092...7489e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeafc2b...436b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf67cf8...a573fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf7af13...872b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x03574b...ab173f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0395a1...ac7625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x03e12a...3fe775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b0a0a...c916f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b8fd1...bb08e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0f7528...64cabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1082fc...f58143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1091fc...d39959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x170193...028381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x184732...4cafda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1963ba...91e6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1db38a...be787c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1fa408...50f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x223534...62660b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x264cd3...3ada4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2bf4a7...1ec933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35d212...ef69b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x371bd1...c5eafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x395163...61a58c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3a773e...6dc22c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3ad1e1...f59db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3d6c69...1a9de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3ff382...3b77ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4433be...6f73a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4547cd...501e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x46650d...1d289e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x48c394...00462e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4a0a47...2aac78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4eb03e...db3f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4f52dc...510a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x525b02...b7eb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x538407...5d53ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x55df51...0aee14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x59a1c8...069795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5abf65...5b9b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5b8564...e6668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5c6e25...fa6be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5dccc5...071369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f1961...455767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f2b4c...7618a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f9c4c...42f145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x604e89...804cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x615a8b...8fc79b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x673ec4...99ac7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x689853...a1ef5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6e11b1...d62276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6f94d3...bf9613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x703d71...35095d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7186c7...e74f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x749e46...228235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x74e26f...98c852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x76eae1...e1c378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79d65a...fc2ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79d80c...4d2a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7b9a40...aa1f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7c1a60...548661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7d41fc...7354ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x819946...6bcd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x82f1d2...27eafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x82f93c...e986c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x839836...c46fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8560bc...f64c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8623af...70e884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x883bf9...bf72da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x897e8c...37fb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a44e1...462c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8c0da0...41418e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8c15c6...da7c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8e1f22...38e871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8e6fef...0052ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8fcafd...95440b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x90b02a...2f49f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x92315a...1f14d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x948fbe...d21342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x978dd6...dc9881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x996542...879b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x99e884...901cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9b8162...5ed56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9bc7ab...882b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9d2dbe...87dcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa2bb18...6c1e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa3c90e...6d10ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa43f8a...8a4d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa70352...36f1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa90c54...e1bfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xab65c5...69ad4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xabed04...091e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xae642a...d82292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaee878...27e8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb01df7...76ce22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb0b2a8...1317e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb8f281...277b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbbdc4d...384cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbc739c...b050c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbd45b5...31b5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbe6618...96422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf27d3...512df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc1ef68...2f025f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc2c338...78c851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc6a465...42f8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc82f82...1a57ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc9631f...112a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xca8365...82707b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcd0bd1...b7329a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce93f0...ee6ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcf5fb6...851742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd0b30a...44a46c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd20a0d...9d6f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd3e0e2...da65a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5a11c...c9905a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5bb73...f2b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd87beb...0c2f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd983e5...92ec76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd104c...4d0c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe3ff2d...7eab9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe55ae7...4708a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe5bf71...67b56c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe95d8f...a022a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xecfbef...0a4df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf01957...2a2baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf063ee...499d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf10abb...804b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf235c6...7926bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf3628b...ec724a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf55544...1a66f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf78af9...729369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf7b5e9...b905ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a516e...f644d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x854711...c5ea73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc57f0d...19427a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Maia DAO February 2023 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20February%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 57 | n/a |
| [code4rena.com/audits/2023-05-maia-dao-ecosystem](https://code4rena.com/audits/2023-05-maia-dao-ecosystem) | Code4rena | Contest | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/reports/2023-05-maia](https://code4rena.com/reports/2023-05-maia) | Code4rena | Contest | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 56 | n/a |
| [Ulysses Protocol May 2023 - Zellic Audit Report.pdf](https://github.com/code-423n4/2023-05-maia/blob/main/audits/Ulysses%20Protocol%20May%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 74 | n/a |
| [Maia DAO V2 Ecosystem - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20V2%20Ecosystem%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20Ulysses%20Protocol%20May%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 74 | n/a |
| [code4rena.com/audits/2023-09-maia-dao-ulysses](https://code4rena.com/audits/2023-09-maia-dao-ulysses) | Code4rena | Contest | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Maia DAO Ulysses Protocol - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20Ulysses%20Protocol%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13449] Maia DAO February 2023 - Zellic Audit Report.pdf — no match: No reason recorded
- [13450] code4rena.com/audits/2023-05-maia-dao-ecosystem — no match: The provided text is a leaderboard/competition results page for a Code4rena audit contest, not the actual audit report. It contains no contract names, file paths, or scope sections. The end date '5 Jul 2023' is used as the audit date.
- [13451] code4rena.com/reports/2023-05-maia — no match: No reason recorded
- [13453] Ulysses Protocol May 2023 - Zellic Audit Report.pdf — no match: No reason recorded
- [13454] Maia DAO V2 Ecosystem - Zellic Audit Report.pdf — no match: Scope section lists programs: ComposableStablePoolWrapper, VaultReentrancyLib, ERC4626, FlywheelBoosterGaugeWeight. Audit date from cover page.
- [13455] Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf — no match: No reason recorded
- [13456] code4rena.com/audits/2023-09-maia-dao-ulysses — no match: The provided text is a leaderboard for a Code4rena audit contest, not the audit report itself. No contracts in scope or audit date are identifiable from this text.
- [13457] Maia DAO Ulysses Protocol - Zellic Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseFlywheelRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2Gauge | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2GaugeFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2GaugeManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2Minter | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BoostAggregator | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BoostAggregatorFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BribesFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | DateTimeLib | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC20Boost | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC20Gauges | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC20MultiVotes | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC4626PartnerManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelAcummulatedRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelBoosterGaugeWeight | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelBribeRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelCore | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelCoreInstant | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelCoreStrategy | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelGaugeRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelInstantRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | HERMES | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | IncentiveId | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | IncentiveTime | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | Maia | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | MultiRewardsDepot | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | NFTPositionInfo | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | OptimizerFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PartnerManagerFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PartnerUtilityManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PoolActions | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PoolVariables | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPDecoder | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPEncoder | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPReader | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPWriter | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RewardMath | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RewardsDepot | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | SingleRewardsDepot | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosBaseStrategy | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosBaseStrategyFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosOptimizer | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategySimpleRebalance | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyStaked | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyStakedFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyVanilla | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyVanillaFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UniswapV3Gauge | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UniswapV3GaugeFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UniswapV3Staker | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UtilityManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermes | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermesBoost | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermesGauges | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermesVotes | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | vMaia | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallExecutor | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallFlags | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallProxy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallV7Config | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallV7Upgradeable | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ArbitrumBranchBridgeAgent | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ArbitrumBranchPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BandwidthState | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BaseV2Minter | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BoostAggregator | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BranchBridgeAgent | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BranchPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BribeFlywheel | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | CheckParamsLib | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | Context | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | Deposit | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | DepositInput | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | DepositParams | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ERC20Boost | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ERC20Gauges | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ERC4626PartnerManager | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | Gauges | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IAnycallConfig | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IAnycallExecutor | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IAnycallProxy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IApp | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IRootPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ITalosOptimizer | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ITalosStrategyStaked | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IUniswapV3Pool | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | MulticallRootRouter | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | PartnerManagerFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RequestContext | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RootBridgeAgent | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RootBridgeAgentFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RootPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | SafeCastLib | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | SafeTransferLib | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | SwapCallbackData | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosBaseStrategy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosOptimizer | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosStrategySimple | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosStrategyStaked | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UlyssesPool | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UlyssesRouter | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UlyssesToken | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UniswapV3Gauge | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UniswapV3GaugeFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UniswapV3Staker | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | VirtualAccount | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | WETH9 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | bHermes | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | vMaia | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | AnycallFlags | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumCoreBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BaseBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BasePortGauge | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BytesLib | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRootRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRouterLib | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranch | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRoot | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626DepositOnly | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626MultiToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallConfig | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallExecutor | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallProxy | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IApp | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IArbBranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreRootBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranch | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRoot | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626DepositOnly | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626MultiToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC721Permit | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IMulticall2 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryImmutableState | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryPayments | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPoolInitializer | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPortStrategy | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ISwapRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesPool | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IVirtualAccount | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IWETH9 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Multicall2 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | MulticallRootRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Path | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | PoolAddress | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesPool | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | VirtualAccount | unmatched — not counted | — | — | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | ComposableStablePoolWrapper | unmatched — not counted | — | Listed in scope section as a program | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | VaultReentrancyLib | unmatched — not counted | — | Listed in scope section as a program | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | ERC4626 | unmatched — not counted | — | Listed in scope section as a program | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | FlywheelBoosterGaugeWeight | unmatched — not counted | — | Listed in scope section as a program and referenced in findings | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | AnycallFlags | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumCoreBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BaseBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BasePortGauge | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BytesLib | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRootRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRouterLib | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranch | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRoot | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626DepositOnly | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626MultiToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallConfig | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallExecutor | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallProxy | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IApp | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IArbBranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreRootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranch | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRoot | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626DepositOnly | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626MultiToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC721Permit | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IMulticall2 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryImmutableState | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryPayments | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPoolInitializer | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPortStrategy | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ISwapRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesPool | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IVirtualAccount | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IWETH9 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Multicall2 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | MulticallRootRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Path | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | PoolAddress | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesPool | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | VirtualAccount | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | AddressCodeSize | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | BranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | BranchBridgeAgentExecutor | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | BranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | DecodeBridgeInMultipleParams | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | RootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | RootBridgeAgentExecutor | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | RootPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | VirtualAccount | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 224 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 274 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [13449] Maia DAO February 2023 - Zellic Audit Report.pdf
- [13450] code4rena.com/audits/2023-05-maia-dao-ecosystem
- [13451] code4rena.com/reports/2023-05-maia
- [13453] Ulysses Protocol May 2023 - Zellic Audit Report.pdf
- [13454] Maia DAO V2 Ecosystem - Zellic Audit Report.pdf
- [13455] Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf
- [13456] code4rena.com/audits/2023-09-maia-dao-ulysses
- [13457] Maia DAO Ulysses Protocol - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
