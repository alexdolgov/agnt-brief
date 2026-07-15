# Agentic Audit Brief: Ring Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ring Protocol (`ring-protocol`)
- Website: [https://ring.exchange/](https://ring.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, ink, optimism, polygon, unichain, zora
- Contract surface: 104 unique implementations (244 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $23,217,131.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ring Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, ink, optimism, polygon, unichain, zora. Structural roles: 9 core, 7 supporting, 6 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (9), supporting (7), unclassified (6)
- Contract kinds: contract (22)
- Detected standards: pausable (2)
- Frameworks: uniswap (9), openzeppelin (8), solmate (6), uniswap-v2 (5), permit2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 22; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 3 exact-address-book context/dependencies excluded, 5 exact-address-book entries needing review
- Outside the address book: 96 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 104
- Raw deployments: 244
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0xb2799e...c087d4`; bsc `0x4fe312...e2aa50`; bsc `0xf9cfaa...1635eb`; unichain `0x8814a2...2fba8b`; base `0x0e4425...03706e`; arbitrum `0x8814a2...2fba8b`; blast `0xc74759...01321c` | ⚠️ Unaudited |
| DackieInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8cab8e...ea6296` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b1754...271d0f` | ⚠️ Unaudited |
| FeeTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819...7f0970` | ⚠️ Unaudited |
| FeeToSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433...771360` | ⚠️ Unaudited |
| FewETHHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x044301...0c6888` | ⚠️ Unaudited |
| FewETHWrapper | token | unclassified_address_book | needs_review (excluded) | 0 | base | n/a | 8 deployments: ethereum `0xada605...6b5ebb`; bsc `0xf9d7ff...97916f`; unichain `0xc43a3d...89df42`; base `0x20e6b1...9c4fe7`; base `0xdb671f...6db8e5`; arbitrum `0xeee400...b972cd`; blast `0x46b040...d0e024`; blast `0xf272a4...eb065f` | ⚠️ Unaudited |
| FewFactory | unknown | unclassified_address_book | needs_review (excluded) | 0 | blast | n/a | 7 deployments: ethereum `0x7d8639...4464dd`; ethereum `0xb13a84...8fd2ad`; bsc `0xeee400...b972cd`; unichain `0x974cc3...ee556f`; base `0xb3ad77...a47920`; arbitrum `0x974cc3...ee556f`; blast `0x455b20...e8cee9` | ⚠️ Unaudited |
| FewNonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: blast `0x44d8a7...23d995`; blast `0x897050...2c536a`; blast `0x89cc75...177b90`; blast `0xaccba4...ab4949`; blast `0xb1486e...ea8f3b` | ⚠️ Unaudited |
| FewTokenHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b2eb6...592888`; ethereum `0x4b3e2a...f22888`; ethereum `0x85b648...bde888` | ⚠️ Unaudited |
| FewUSDTHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbadf77...486888` | ⚠️ Unaudited |
| FewWrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x66714d...fe7dd1`; blast `0x866f2c...5a06d6` | ⚠️ Unaudited |
| FixedStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xeff87a...a15a24` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8...81d58f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc76e66...46cfbd`; base `0xf9cfaa...1635eb` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | blast | n/a | 3 deployments: blast `0x0649ce...d278db`; blast `0x1f4f92...25a70a`; blast `0x5a2cd5...9d46b6` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xd2f37f...d6a943`; blast `0xfa04c9...bf4140` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d46...1d256e` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: ethereum `0xf09f18...264894`; base `0x3e2450...b8aa32`; blast `0x290ef7...615c2e`; blast `0xb27f82...bc0371` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb630bb...9da400` | ⚠️ Unaudited |
| MultipleModesDuoExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x63d842...c0819e` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x0d5ecc...a662c2`; blast `0x29a4e1...ed8778` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0xf9d7ff...97916f`; blast `0xebec26...5300fa` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x22cde1...f5f39a`; blast `0x73adfd...255907` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4de602...c4dd9b` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd1428b...63f06c` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xedd814...a66743` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf0432f...d380e1` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x9fb284...f7f722` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x089277...6e6794` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x25d093...f3e7d5` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5727e2...102d8a` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x2b1aed...51f0a9` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x0747ad...676f97` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbd2165...64ee9e` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x3c3ea4...9a1017`; bsc `0x7a4a5c...87f95b`; celo `0xf7965f...068ca9`; avalanche `0xb74b1f...ab8acd`; blast `0x4ad2f4...f1baad` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4529a0...2617bf` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1ec2eb...3ceef9` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7c5f5a...429bdc` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd88f38...3dd869` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27308...ce5ab6` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x61ffe0...30b21e`; base `0xd69ed5...baa46a`; blast `0x766f7e...e21ae1` | ⚠️ Unaudited |
| RingLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: bsc `0x55f12a...b8ec4c`; bsc `0x87e672...57c08a`; bsc `0xaf3277...8164f2`; bsc `0xb3ad77...a47920`; unichain `0xd69ed5...baa46a`; base `0x4ea40d...bca913`; base `0x76c8dd...3d1d4e`; base `0x833d47...c0da30`; arbitrum `0x4de602...c4dd9b` | ⚠️ Unaudited |
| RingLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0x70469a...b4136e`; blast `0x5597ac...4c81c2` | ⚠️ Unaudited |
| RingPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8bd2cd...fd7e94` | ⚠️ Unaudited |
| RingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0xe945d6...a8486e`; blast `0x25f233...643c84` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032ab...918e12` | ⚠️ Unaudited |
| StateView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 10 deployments: ethereum `0x7ffe42...597227`; optimism `0xc18a31...75ecdb`; bsc `0xd13dd3...aee0c4`; unichain `0x86e863...dee8f2`; polygon `0x5ea1bd...b3ba5a`; base `0xa3c0c9...867a71`; arbitrum `0x76fd29...6e9990`; celo `0xbc21f8...6f2bfb`; avalanche `0xc3c9e1...b69286`; blast `0x12a88a...85df30` | ⚠️ Unaudited |
| SwapIncentive | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x4610a7...29c503`; blast `0xfe8d01...36e112` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe59242...861564` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x68b346...65fc45` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa94f22...6ae522` | ⚠️ Unaudited |
| SwapV2Factory | unknown | unclassified_address_book | needs_review (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xeb2a62...d06416`; bsc `0x4de602...c4dd9b`; unichain `0xeee400...b972cd`; base `0x9bffc3...b4980e`; arbitrum `0x1246fa...609442`; blast `0x24f5ac...4ecfe6`; blast `0xeb2a62...d06416` | ⚠️ Unaudited |
| SwapV2Router | adapter | unclassified_address_book | needs_review (excluded) | 0 | bsc | n/a | 10 deployments: ethereum `0x290ef7...615c2e`; ethereum `0x39d1d8...6d3519`; bsc `0x20504f...e6bad0`; unichain `0xf9d7ff...97916f`; base `0x224749...4cd254`; base `0x30b799...3c323e`; base `0x41957b...7caa08`; arbitrum `0xd69ed5...baa46a`; blast `0x7001f7...1696ff`; blast `0xada605...6b5ebb` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0x4fe312...e2aa50`; blast `0x160958...ad17a0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x1a9c81...be35bc`; bsc `0x70469a...b4136e`; unichain `0x4de602...c4dd9b`; base `0xdddd32...d5af0a`; arbitrum `0x0e4425...03706e`; blast `0x337c4f...4debf7`; blast `0x39d1d8...6d3519`; blast `0x3dbf36...42db35`; blast `0x7d80c9...fd484f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1246fa...609442` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3d30b1...3f1e94`; ethereum `0x4750c4...286e1a`; ethereum `0x4b4e14...4e4135`; ethereum `0xe3953d...54075d` | ⚠️ Unaudited |
| Uni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9840...01f984` | ⚠️ Unaudited |
| UniswapV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c69be...c5aa6f` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9843...31f984` | ⚠️ Unaudited |
| UniversalRouter | adapter | unclassified_address_book | needs_review (excluded) | 0 | polygon | n/a | 22 deployments: ethereum `0x5597ac...4c81c2`; ethereum `0x66a989...dba8af`; ethereum `0x7d80c9...fd484f`; ethereum `0xeff87a...a15a24`; optimism `0x851116...8b3507`; bsc `0x1906c1...4eae07`; bsc `0x1fb6ef...38cfcc`; unichain `0xef740b...c8eaf3`; polygon `0x109569...c49223`; base `0x1fb6ef...38cfcc`; base `0x6ff569...299b43`; base `0x9a8c67...1f1e07`; base `0xe6d348...953a60`; arbitrum `0xa51afa...e381a3`; arbitrum `0xdb671f...6db8e5`; arbitrum `0xf29309...1749b8`; celo `0xcb695b...a0233a`; avalanche `0x94b753...aa73b7`; blast `0x6a7c92...6e0ee5`; blast `0xc9dd68...a3f201`; blast `0xce69ec...60a940`; blast `0xeabbcb...025be3` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1c1709...c4d7cf`; arbitrum `0x3374be...c7af49`; arbitrum `0x9bffc3...b4980e` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa5644e...f92b34` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3a02ec...4dd245` | ⚠️ Unaudited |
| V4Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: ethereum `0x52f0e2...9e1203`; optimism `0x1f3131...f1a8d7`; bsc `0x9f75dd...9437b0`; unichain `0x333e3c...7491e0`; polygon `0xb3d5c3...2c81b9`; base `0x0d5e0f...32048d`; celo `0x28566d...1d66cd`; avalanche `0xbe4067...9845c2`; blast `0x6f71cd...f62bcf` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-162693 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eebdd...409b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x224749...4cd254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ea40d...bca913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93bdca...b36bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x974cc3...ee556f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1eebdd...409b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3374be...c7af49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3e2450...b8aa32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x41957b...7caa08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5aa37f...3c55ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x76c8dd...3d1d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x833d47...c0da30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9bffc3...b4980e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb981b9...fb2faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc76e66...46cfbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdb671f...6db8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdddd32...d5af0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe17e4e...1b28af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe945d6...a8486e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf29309...1749b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf9cfaa...1635eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x974cc3...ee556f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc43a3d...89df42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd8bd9...f9dfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeee400...b972cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-162692 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ink | n/a | 21 deployments: ink `0x000000...c78ba3`; ink `0x112908...5d1fa0`; ink `0x1b35d1...deb566`; ink `0x360e68...b9fb32`; ink `0x3972c0...75a1c5`; ink `0x42e3cc...8e7f36`; ink `0x4cded7...a455df`; ink `0x76fd29...6e9990`; zora `0x000000...c78ba3`; zora `0x057533...7ca30f`; zora `0x3315ef...04b020`; zora `0x385785...df7328`; zora `0x51d394...eb71eb`; zora `0x55d235...e6c5c0`; zora `0x5edacc...5dc2c6`; zora `0x7d6463...68d55a`; zora `0x7da419...aeace4`; zora `0x8ac7be...b5e743`; zora `0xb1860d...d13f33`; zora `0xc585e0...fb41fa`; zora `0xf66c7b...543d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x25df14...353866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x303085...700bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x35a337...a8c265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x36a1a6...db4a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3af30c...57dcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x52cb39...50c91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8b34f9...0cf256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8c6a81...681573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa61111...55ff51` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 49 | n/a |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 41 | n/a |
| [ABDK_RingProtocol_Hook_v_1_0.pdf (also discovered via alternate URL)](https://github.com/RingProtocol/v4-periphery/blob/main/audits/ABDK_RingProtocol_Hook_v_1_0.pdf) | ABDK | Audit | 2025-11 | fresh | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 6 | high |
| [SlowMist Audit Report - Ring Protocol_en-us.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol_en-us.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [blocksec_ringcore_v1.0-signed.pdf](https://github.com/RingProtocol/audits/blob/main/blocksec_ringcore_v1.0-signed.pdf) | BlockSec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [RingLaunchpad - SlowMist Audit Report.pdf](https://github.com/RingProtocol/audits/blob/main/RingLaunchpad%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [SlowMist Audit Report - Ring Protocol Contracts.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol%20Contracts.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SlowMist Audit Report - Ring Protocol.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | address | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3969] OpenZeppelin_audit_periphery_universal_router.pdf — no match: Extracted all contracts and libraries from the scope section of the audit report. The audit date is from the report header: 'September 5, 2024'.
- [3970] DRAFT_Spearbit_audit_periphery.pdf — no match: No reason recorded
- [3971] DRAFT_ABDK_audit_periphery_universal_router.pdf — no match: No reason recorded
- [3972] ABDK_RingProtocol_Hook_v_1_0.pdf — no match: Extracted from scope section listing files: FewETHHook.sol, FewTokenHook.sol, FewUSDTHook.sol. Also included BaseHook, DeltaResolver, IFewWrappedToken as they are part of the audited codebase. Audit date from changelog: 24.11.25.
- [15030] SlowMist Audit Report - Ring Protocol_en-us.pdf — no match: No reason recorded
- [15031] blocksec_ringcore_v1.0-signed.pdf — no match: No reason recorded
- [27831] RingLaunchpad - SlowMist Audit Report.pdf — no match: The audit report focuses on the RingLaunchpad contract and its dependencies. The scope includes the RingLaunchpad contract itself, the Token contract created within it, and interfaces to external contracts (FewWrappedToken, FewFactory, UniswapV2Router02, IWETH, ERC20). The audit date is explicitly stated as 2024.11.27.
- [27833] SlowMist Audit Report - Ring Protocol Contracts.pdf — no match: Contracts extracted from visibility tables and code references in the audit report. Audit date is the end date of the audit period (2024.01.26 - 2024.01.30).
- [27834] SlowMist Audit Report - Ring Protocol.pdf — no match: Contracts in scope extracted from the 'Contracts Description' table and 'Visibility Description' section. The audit date is the end date of the audit period (2024.01.26 - 2024.01.30).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC20PermitAllowed | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Quoter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | StateView | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UniversalRouter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| DRAFT_Spearbit_audit_periphery.pdf | ActionConstants | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Actions | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BalanceDelta | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BalanceDeltaLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseActionsRouter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseHook | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BeforeSwapDelta | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BeforeSwapDeltaLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BipsLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | CalldataDecoder | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Currency | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | DeltaResolver | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | EIP712_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC1271 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721PermitHashLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Hooks | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC20PermitAllowed | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IHooks | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | INotifier | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IPoolManager | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IQuoter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IV4Router | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ImmutableState | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | MockERC20 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | MockHooks | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Multicall_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Notifier | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PathKey | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Pool | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolId | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolIdLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolInitializer | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolKey | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolManager | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolTicksCounter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfig | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfigLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionManager | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Quoter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | SafeCast | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | SignatureVerification | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | SlippageCheck | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | StateLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | StateView | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | TickBitmap | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | UnorderedNonce | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | V4Router | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Quoter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UniversalRouter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | — | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | BaseHook | unmatched — not counted | — | mentioned as core component | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | DeltaResolver | unmatched — not counted | — | mentioned as foundational module | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | FewETHHook | unmatched — not counted | — | listed in scope | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | FewTokenHook | unmatched — not counted | — | listed in scope | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | FewUSDTHook | unmatched — not counted | — | listed in scope | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | IFewWrappedToken | unmatched — not counted | — | mentioned as interface | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | BlastManager | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | BlastManagerFromFactory | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | Core | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | CoreRef | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | FewFactory | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | FewWrappedToken | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | FixedStakingRewards | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | Permissions | unmatched — not counted | — | — | no |
| blocksec_ringcore_v1.0-signed.pdf | FewWrappedToken | unmatched — not counted | — | — | no |
| blocksec_ringcore_v1.0-signed.pdf | FixedStakingRewards | unmatched — not counted | — | — | no |
| RingLaunchpad - SlowMist Audit Report.pdf | RingLaunchpad | unmatched — not counted | — | listed in scope and findings | no |
| RingLaunchpad - SlowMist Audit Report.pdf | Token | unmatched — not counted | — | mentioned in deploy function and findings | no |
| RingLaunchpad - SlowMist Audit Report.pdf | FewWrappedToken | unmatched — not counted | — | mentioned in deploy function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | FewFactory | unmatched — not counted | — | mentioned in deploy function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | UniswapV2Router02 | unmatched — not counted | — | mentioned in deploy function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | IWETH | unmatched — not counted | — | mentioned in deployETH function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | ERC20 | unmatched — not counted | — | mentioned in deployWETH function | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | FewFactory | unmatched — not counted | — | mentioned in visibility table and code overview | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | CoreRef | unmatched — not counted | — | mentioned in visibility table and finding N5 | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | FewWrappedToken | unmatched — not counted | — | mentioned in visibility table and findings | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | FixedStakingRewards | unmatched — not counted | — | mentioned in visibility table and findings | no |
| SlowMist Audit Report - Ring Protocol.pdf | FewFactory | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | FewWrappedToken | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | FixedStakingRewards | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | Core | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | Permissions | unmatched — not counted | — | mentioned in vulnerability N1 and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | CoreRef | unmatched — not counted | — | mentioned in vulnerability N5 and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | BlastManager | unmatched — not counted | — | listed in visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | BlastManagerFromFactory | unmatched — not counted | — | listed in visibility section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 169 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [3969] OpenZeppelin_audit_periphery_universal_router.pdf
- [3970] DRAFT_Spearbit_audit_periphery.pdf
- [3971] DRAFT_ABDK_audit_periphery_universal_router.pdf
- [3972] ABDK_RingProtocol_Hook_v_1_0.pdf
- [15030] SlowMist Audit Report - Ring Protocol_en-us.pdf
- [15031] blocksec_ringcore_v1.0-signed.pdf
- [27831] RingLaunchpad - SlowMist Audit Report.pdf
- [27833] SlowMist Audit Report - Ring Protocol Contracts.pdf
- [27834] SlowMist Audit Report - Ring Protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
