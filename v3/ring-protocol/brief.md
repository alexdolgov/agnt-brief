# Agentic Audit Brief: Ring Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ring Protocol (`ring-protocol`)
- Website: [https://ring.exchange/](https://ring.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, hyperliquid, ink, megaeth, optimism, polygon, unichain, zora
- Contract surface: 129 unique implementations (269 raw deployments)
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

The pinned logic-topography run contains 22 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, hyperliquid, ink, megaeth, optimism, polygon, unichain, zora. Structural roles: 9 core, 7 supporting, 6 unclassified. No upgradeable pattern was identified in these rows.

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
- Address-book implementation classification: 0 own, 28 exact-address-book context/dependencies excluded, 5 exact-address-book entries needing review
- Outside the address book: 96 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 62
- Unique implementations: 129
- Raw deployments: 269
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
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0xb2799ed78490ea642d2ecb23cb2ce9b8acc087d4`; bsc `0x4fe312cd4fe3b6f060902d9f742b9b7dfbe2aa50`; bsc `0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb`; unichain `0x8814a2aa2384d65672c7dc0650454e56f62fba8b`; base `0x0e442504ce6a378492c461c44adbce787903706e`; arbitrum `0x8814a2aa2384d65672c7dc0650454e56f62fba8b`; blast `0xc7475929fd7c2d4bde7de5f9db863ea62101321c` | ⚠️ Unaudited |
| DackieInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8cab8ede6e48c947049b3cc6ccc3d5a0faea6296` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| FeeTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | ⚠️ Unaudited |
| FeeToSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | ⚠️ Unaudited |
| FewETHHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x044301939deb7ca53c4733dd4d9b3bc5ea0c6888` | ⚠️ Unaudited |
| FewETHWrapper | token | unclassified_address_book | needs_review (excluded) | 0 | base | n/a | 8 deployments: ethereum `0xada6059b4f6244acd8934095ed0162c5df6b5ebb`; bsc `0xf9d7ff2f6a0c3631a807199276a493af8097916f`; unichain `0xc43a3dd1b16168e00297315d679840e30a89df42`; base `0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7`; base `0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5`; arbitrum `0xeee400eabfba8f60f4e6b351d8577394beb972cd`; blast `0x46b0403e2330ff1b2cdcd7c91dd0494cc1d0e024`; blast `0xf272a4b0d949011f9347134088126277abeb065f` | ⚠️ Unaudited |
| FewFactory | unknown | unclassified_address_book | needs_review (excluded) | 0 | blast | n/a | 7 deployments: ethereum `0x7d86394139bf1122e82fdf45bb4e3b038a4464dd`; ethereum `0xb13a844c498a67ad614c08823428aa6e998fd2ad`; bsc `0xeee400eabfba8f60f4e6b351d8577394beb972cd`; unichain `0x974cc3f3468cd9c12731108148c4dabfb5ee556f`; base `0xb3ad7754f363af676dc1c5be40423fe538a47920`; arbitrum `0x974cc3f3468cd9c12731108148c4dabfb5ee556f`; blast `0x455b20131d59f01d082df1225154fda813e8cee9` | ⚠️ Unaudited |
| FewNonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: blast `0x44d8a7885c48c20861b49cd238e612056223d995`; blast `0x8970507172fd1bf7ac4ccce2a9d310ad3d2c536a`; blast `0x89cc755b2e84390e90349ccef665671792177b90`; blast `0xaccba426e72e14bfdadbf7ce752f92cc05ab4949`; blast `0xb1486e0a2159fcb465c5378ed981a0657bea8f3b` | ⚠️ Unaudited |
| FewTokenHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b2eb653d13e6c9ac5a0a01fde22f2c8d6592888`; ethereum `0x4b3e2a8cf36c7eb0fba2a5b39b20c896c6f22888`; ethereum `0x85b648a64aed6307d5d5ce26e6ae086c17bde888` | ⚠️ Unaudited |
| FewUSDTHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbadf77d50478b4432ef1f243b9c0bc7869486888` | ⚠️ Unaudited |
| FewWrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x66714db8f3397c767d0a602458b5b4e3c0fe7dd1`; blast `0x866f2c06b83df2ed7ca9c2d044940e7cd55a06d6` | ⚠️ Unaudited |
| FixedStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xeff87a51f5abd015f1afcd5737bbab450ea15a24` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc76e664b5ad8a15e717828153b36b27f5e46cfbd`; base `0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | blast | n/a | 3 deployments: blast `0x0649cee63277de954acf4d50223d1f4965d278db`; blast `0x1f4f928dff072081e0455704a372737b3e25a70a`; blast `0x5a2cd58f8f49297293add810b9c608d1dd9d46b6` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xd2f37ff7ecfaceb4de1a2bacb8d9c539a4d6a943`; blast `0xfa04c9d7f4e989e442f1bb3d14ac2f05b8bf4140` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d4613473dee047c3f2706764f49e0821d256e` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: ethereum `0xf09f1899074b5659148c615dd30c29060f264894`; base `0x3e245057d67ddbd760f9c8fdcd0afc6413b8aa32`; blast `0x290ef7a04b07fc5b150b83320d9e7ec098615c2e`; blast `0xb27f82ef49674b40640e98ad5964ec401dbc0371` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb630bbef1b6a9ca0c31699060321918a729da400` | ⚠️ Unaudited |
| MultipleModesDuoExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x63d8423977624ead67af0ff33c2d1adc62c0819e` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x0d5ecc10610f23e1e9c8e03f0cc6a5f052a662c2`; blast `0x29a4e1645cd0efbf79383ae054092fc4dfed8778` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0xf9d7ff2f6a0c3631a807199276a493af8097916f`; blast `0xebec263be79a02131258a1033d8490b11a5300fa` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x22cde1e8f2dc2dc14576219b9201e16bcdf5f39a`; blast `0x73adfd4e4062ff6ed452f4e4316f83a95c255907` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd1428ba554f4c8450b763a0b2040a4935c63f06c` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xedd81496169c46df161b8513a52ffecaaaa66743` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf0432f360703ec3d33931a8356a75a77d8d380e1` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0892771f0c1b78ad6013d6e5536007e1c16e6794` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5727e22b25feee05e8dfa83c752b86f19d102d8a` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9` | ⚠️ Unaudited |
| PositionDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x3c3ea4b57a46241e54610e5f022e5c45859a1017`; bsc `0x7a4a5c919ae2541aed11041a1aeee68f1287f95b`; celo `0xf7965f3981e4d5bc383bfbcb61501763e9068ca9`; avalanche `0xb74b1f14d2754acfcbbe1a221023a5cf50ab8acd`; blast `0x4ad2f4cca2682cbb5b950d660dd458a1d3f1baad` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4529a01c7a0410167c5740c487a8de60232617bf` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1ec2ebf4f37e7363fdfe3551602425af0b3ceef9` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd88f38f930b7952f2db2432cb002e7abbf3dd869` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x61ffe014ba17989e743c5f6cb21bf9697530b21e`; base `0xd69ed581480239357515e200560353af1bbaa46a`; blast `0x766f7efa3f858994b6b5183c9f9fddee48e21ae1` | ⚠️ Unaudited |
| RingLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: bsc `0x55f12a58a0a71fcd0aab0a305e0832f212b8ec4c`; bsc `0x87e6729013755fe6c46390ac51f8836e2057c08a`; bsc `0xaf3277fe89fbb38375d76541d4a66b70408164f2`; bsc `0xb3ad7754f363af676dc1c5be40423fe538a47920`; unichain `0xd69ed581480239357515e200560353af1bbaa46a`; base `0x4ea40dcee961675683e0a2e1721bd49cb9bca913`; base `0x76c8dd66b4107aebca412d0575208c58df3d1d4e`; base `0x833d4795fab8f030c790c8286f15553437c0da30`; arbitrum `0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b` | ⚠️ Unaudited |
| RingLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0x70469ada6724a6188f8c01c4769bff8229b4136e`; blast `0x5597acf300faa23e6185b6604360391b044c81c2` | ⚠️ Unaudited |
| RingPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94` | ⚠️ Unaudited |
| RingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0xe945d6ff6caa019f87a6012053a5ce7edca8486e`; blast `0x25f233c3e3676f9e900a89644a3fe5404d643c84` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032ab3fa8c01d786d29dade018d7f2017918e12` | ⚠️ Unaudited |
| StateView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 10 deployments: ethereum `0x7ffe42c4a5deea5b0fec41c94c136cf115597227`; optimism `0xc18a3169788f4f75a170290584eca6395c75ecdb`; bsc `0xd13dd3d6e93f276fafc9db9e6bb47c1180aee0c4`; unichain `0x86e8631a016f9068c3f085faf484ee3f5fdee8f2`; polygon `0x5ea1bd7974c8a611cbab0bdcafcb1d9cc9b3ba5a`; base `0xa3c0c9b65bad0b08107aa264b0f3db444b867a71`; arbitrum `0x76fd297e2d437cd7f76d50f01afe6160f86e9990`; celo `0xbc21f8720babf4b20d195ee5c6e99c52b76f2bfb`; avalanche `0xc3c9e198c735a4b97e3e683f391ccbdd60b69286`; blast `0x12a88ae16f46dce4e8b15368008ab3380885df30` | ⚠️ Unaudited |
| SwapIncentive | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x4610a79b9d0d075d7d63d112018a49059529c503`; blast `0xfe8d01cb8aef10e277fd1db040b5bc2da036e112` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe592427a0aece92de3edee1f18e0157c05861564` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa94f22c57322d8b3ad86520774a75944596ae522` | ⚠️ Unaudited |
| SwapV2Factory | unknown | unclassified_address_book | needs_review (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xeb2a625b704d73e82946d8d026e1f588eed06416`; bsc `0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b`; unichain `0xeee400eabfba8f60f4e6b351d8577394beb972cd`; base `0x9bffc3b30d6659e3d84754cc38865b3d60b4980e`; arbitrum `0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442`; blast `0x24f5ac9a706de0cf795a8193f6ab3966b14ecfe6`; blast `0xeb2a625b704d73e82946d8d026e1f588eed06416` | ⚠️ Unaudited |
| SwapV2Router | adapter | unclassified_address_book | needs_review (excluded) | 0 | bsc | n/a | 10 deployments: ethereum `0x290ef7a04b07fc5b150b83320d9e7ec098615c2e`; ethereum `0x39d1d8fcc5e6eeaf567bce4e29b94fec956d3519`; bsc `0x20504f37a95ef80e3fc7476c4801fb39aae6bad0`; unichain `0xf9d7ff2f6a0c3631a807199276a493af8097916f`; base `0x224749cdd5791480ecebe452e5ffaefef94cd254`; base `0x30b799b3cfbd41c2950839df7a376123b63c323e`; base `0x41957b9f109ec7357b358402dc10e7184f7caa08`; arbitrum `0xd69ed581480239357515e200560353af1bbaa46a`; blast `0x7001f706acb6440d17cbfad63fa50a22d51696ff`; blast `0xada6059b4f6244acd8934095ed0162c5df6b5ebb` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0x4fe312cd4fe3b6f060902d9f742b9b7dfbe2aa50`; blast `0x160958266ea8fe90d3be91474baf633eebad17a0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x1a9c8182c09f50c8318d769245bea52c32be35bc`; bsc `0x70469ada6724a6188f8c01c4769bff8229b4136e`; unichain `0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b`; base `0xdddd32dd6db92963bcc7fb943c240ce919d5af0a`; arbitrum `0x0e442504ce6a378492c461c44adbce787903706e`; blast `0x337c4f3054f091d0e2239ce09c0b112d874debf7`; blast `0x39d1d8fcc5e6eeaf567bce4e29b94fec956d3519`; blast `0x3dbf36bd3de1edaaea30da4d84790e6d0142db35`; blast `0x7d80c9422bcb6809ded28acd9916d647cafd484f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3d30b1ab88d487b0f3061f40de76845bec3f1e94`; ethereum `0x4750c43867ef5f89869132eccf19b9b6c4286e1a`; ethereum `0x4b4e140d1f131fdad6fb59c13af796fd194e4135`; ethereum `0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | ⚠️ Unaudited |
| Uni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | ⚠️ Unaudited |
| UniswapV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ⚠️ Unaudited |
| UniversalRouter | adapter | unclassified_address_book | needs_review (excluded) | 0 | polygon | n/a | 22 deployments: ethereum `0x5597acf300faa23e6185b6604360391b044c81c2`; ethereum `0x66a9893cc07d91d95644aedd05d03f95e1dba8af`; ethereum `0x7d80c9422bcb6809ded28acd9916d647cafd484f`; ethereum `0xeff87a51f5abd015f1afcd5737bbab450ea15a24`; optimism `0x851116d9223fabed8e56c0e6b8ad0c31d98b3507`; bsc `0x1906c1d672b88cd1b9ac7593301ca990f94eae07`; bsc `0x1fb6ef969d925f0b81245ce28f2cad95b638cfcc`; unichain `0xef740bf23acae26f6492b10de645d6b98dc8eaf3`; polygon `0x1095692a6237d83c6a72f3f5efedb9a670c49223`; base `0x1fb6ef969d925f0b81245ce28f2cad95b638cfcc`; base `0x6ff5693b99212da76ad316178a184ab56d299b43`; base `0x9a8c67c02250ec50f16b6143d139cbdb131f1e07`; base `0xe6d348fe17c9e4176821754d96124de5d8953a60`; arbitrum `0xa51afafe0263b40edaef0df8781ea9aa03e381a3`; arbitrum `0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5`; arbitrum `0xf293096d3c33610461a7bd101d201683111749b8`; celo `0xcb695bc5d3aa22cad1e6df07801b061a05a0233a`; avalanche `0x94b75331ae8d42c1b61065089b7d48fe14aa73b7`; blast `0x6a7c92bddb8d695cfdff5d47487a456cc46e0ee5`; blast `0xc9dd682a06dbf10d91e2adbdac70f3adb8a3f201`; blast `0xce69eca56e1ace442ebd591918223acfed60a940`; blast `0xeabbcb3e8e415306207ef514f660a3f820025be3` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1c1709b5655b0a769b816210e99be5e7e4c4d7cf`; arbitrum `0x3374bea3c2a347231f93fc366346ad6e56c7af49`; arbitrum `0x9bffc3b30d6659e3d84754cc38865b3d60b4980e` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa5644e29708357803b5a882d272c41cc0df92b34` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3a02ecb17f26b1ab294396d4750a740d774dd245` | ⚠️ Unaudited |
| V4Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: ethereum `0x52f0e24d1c21c8a0cb1e5a5dd6198556bd9e1203`; optimism `0x1f3131a13296fb91c90870043742c3cdbff1a8d7`; bsc `0x9f75dd27d6664c475b90e105573e550ff69437b0`; unichain `0x333e3c607b141b18ff6de9f258db6e77fe7491e0`; polygon `0xb3d5c3dfc3a7aebff71895a7191796bffc2c81b9`; base `0x0d5e0f971ed27fbff6c2837bf31316121532048d`; celo `0x28566da1093609182dff2cb2a91cfd72e61d66cd`; avalanche `0xbe40675bb704506a3c2ccfb762dcfd1e979845c2`; blast `0x6f71cdcb0d119ff72c6eb501abceb576fbf62bcf` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0fe942afdb2f51e25cbf892aad175c6a574f2888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x24e743cce93235641f2be8ce7ffc6330903ab96f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x75ae0292e8ad3ab60b9a1a7b3046d3f4abdfa888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8347b7a3807c681513d2b51b8223e59aa16a2888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x877323adbf747f85eb8d182d42f01f34a5492888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-162693 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eebdd76eee008bae5730271ea3b88487c409b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x224749cdd5791480ecebe452e5ffaefef94cd254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ea40dcee961675683e0a2e1721bd49cb9bca913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93bdca2775189d7728b1e836a1593ffe9bb36bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1eebdd76eee008bae5730271ea3b88487c409b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3374bea3c2a347231f93fc366346ad6e56c7af49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3e245057d67ddbd760f9c8fdcd0afc6413b8aa32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x41957b9f109ec7357b358402dc10e7184f7caa08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5aa37f6530f5e8323db814fe2fc4c22a0c3c55ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x76c8dd66b4107aebca412d0575208c58df3d1d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x833d4795fab8f030c790c8286f15553437c0da30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9bffc3b30d6659e3d84754cc38865b3d60b4980e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | n/a | `0xa7f0381288753e01171752483413e53f8d7faf4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb981b930c6b78c4dfde258ed2a9119ed69fb2faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc76e664b5ad8a15e717828153b36b27f5e46cfbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdddd32dd6db92963bcc7fb943c240ce919d5af0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe17e4e8a43c1a0a1844bde72aca86be3b81b28af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe945d6ff6caa019f87a6012053a5ce7edca8486e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf293096d3c33610461a7bd101d201683111749b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | n/a | `0x068b60ecbc934b0a0dde20fdff0de925b97b971f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | n/a | `0x4afc2e4ca0844ad153b090dc32e207c1dd74a8e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | n/a | `0x6b65ed7315274eb9ef06a48132eb04d808700b86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | n/a | `0x701d1d675415efa2d2429fb122ccc6dd4fcca959` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | n/a | `0xe65081efa5ad4a196b1df768716c337e6ab140e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x47c436602d2598d0ef4b50888f29a528b6bccc95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x65c46c31e340d6c546309733cf50ef4d150094c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x6ae74ec9d067c734060fc5edb66fc6d48682970e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x732819c68c72d09465b8fadf8156a79d21e87dca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x88a9a29fa981721c04fdc367ab7e3c83a4c65db9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x9256667638ed96ba4ecb30bd23efd2a182e1bc98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xb0bd0cd58551b71079f36b198276832242d02c0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xb0bea0daa0e57c43d92711f9df2d0d54cebeea72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xe73442c4b87283d75768f3668b411fc2348b429b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc43a3dd1b16168e00297315d679840e30a89df42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xcc1d0c42cc672fcb610db8934635acd0f605fd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd8bd96b71fb2e54823e8c5c89392e2f4ef9dfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeee400eabfba8f60f4e6b351d8577394beb972cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-162692 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4e30e64faef7c9aee835904a48dc27eda40e2ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ink | n/a | 21 deployments: ink `0x000000000022d473030f116ddee9f6b43ac78ba3`; ink `0x112908dac86e20e7241b0927479ea3bf935d1fa0`; ink `0x1b35d13a2e2528f192637f14b05f0dc0e7deb566`; ink `0x360e68faccca8ca495c1b759fd9eee466db9fb32`; ink `0x3972c00f7ed4885e145823eb7c655375d275a1c5`; ink `0x42e3ccd9b7f67b5b2ee0c12074b84ccf2a8e7f36`; ink `0x4cded7edf52c8aa5259a54ec6a3ce7c6d2a455df`; ink `0x76fd297e2d437cd7f76d50f01afe6160f86e9990`; zora `0x000000000022d473030f116ddee9f6b43ac78ba3`; zora `0x0575338e4c17006ae181b47900a84404247ca30f`; zora `0x3315ef7ca28db74abadc6c44570efdf06b04b020`; zora `0x385785af07d63b50d0a0ea57c4ff89d06adf7328`; zora `0x51d394718bc09297262e368c1a481217fdeb71eb`; zora `0x55d235b3ff2daf7c3ede0defc9521f1d6fe6c5c0`; zora `0x5edaccc0660e0a2c44b06e07ce8b915e625dc2c6`; zora `0x7d64630bbb4993b5578dbd65e400961c9e68d55a`; zora `0x7da419153bd420b689f312363756d76836aeace4`; zora `0x8ac7bee993bb44dab564ea4bc9ea67bf9eb5e743`; zora `0xb1860d529182ac3bc1f51fa2abd56662b7d13f33`; zora `0xc585e0f504613b5fbf874f21af14c65260fb41fa`; zora `0xf66c7b99e2040f0d9b326b3b7c152e9663543d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x25df149cd012ec11a3bffd93e196a01805353866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x30308554fd2115f406b13a1123f9c93fdf700bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x35a337695e46b1a3443af7adcbadd338d3a8c265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x36a1a616ed16bf724cadff124cc880a69adb4a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3af30cd87525cf73587e5218e3d9dd3a1357dcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x52cb39bb6b32d20f660f389b1e5eb4d3b250c91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8b34f931069645043b24efc20aebc5e3e00cf256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8c6a8142ce8881b706187da842b55ce441681573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa61111012025e4aee9fe11ac0d95c6649955ff51` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 131
- Live contracts: 0
- Unknown liveness contracts: 131
- Source-verified contracts: 98
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=24, contamination review=10, exact address book overlap=5, source verified unclassified=59, unverified unclassified=33

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | FewFactory<br>`0xb13a844c498a67ad614c08823428aa6e998fd2ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | UniversalRouter<br>`0x5597acf300faa23e6185b6604360391b044c81c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | UniversalRouter<br>`0x7d80c9422bcb6809ded28acd9916d647cafd484f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | FewFactory<br>`0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | Multicall<br>`0xb630bbef1b6a9ca0c31699060321918a729da400` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | FewFactory<br>`0xb3ad7754f363af676dc1c5be40423fe538a47920` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | NonfungiblePositionManager<br>`0xf9d7ff2f6a0c3631a807199276a493af8097916f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | TransparentUpgradeableProxy<br>`0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | UniversalRouter<br>`0x1fb6ef969d925f0b81245ce28f2cad95b638cfcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | UniversalRouter<br>`0xe6d348fe17c9e4176821754d96124de5d8953a60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | FewFactory<br>`0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | UniversalRouter<br>`0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| candidate review | FewFactory<br>`0x455b20131d59f01d082df1225154fda813e8cee9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | FewNonfungiblePositionManager<br>`0x8970507172fd1bf7ac4ccce2a9d310ad3d2c536a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | FewNonfungiblePositionManager<br>`0x89cc755b2e84390e90349ccef665671792177b90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | FewNonfungiblePositionManager<br>`0xaccba426e72e14bfdadbf7ce752f92cc05ab4949` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | FewNonfungiblePositionManager<br>`0xb1486e0a2159fcb465c5378ed981a0657bea8f3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | NonfungiblePositionManager<br>`0xebec263be79a02131258a1033d8490b11a5300fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | SwapIncentive<br>`0x4610a79b9d0d075d7d63d112018a49059529c503` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | SwapIncentive<br>`0xfe8d01cb8aef10e277fd1db040b5bc2da036e112` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | SwapRouter02<br>`0xa94f22c57322d8b3ad86520774a75944596ae522` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | UniversalRouter<br>`0x6a7c92bddb8d695cfdff5d47487a456cc46e0ee5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | UniversalRouter<br>`0xce69eca56e1ace442ebd591918223acfed60a940` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| candidate review | V3Migrator<br>`0x3a02ecb17f26b1ab294396d4750a740d774dd245` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| contamination review | FeeTo<br>`0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| contamination review | FeeToSetter<br>`0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| contamination review | TreasuryVester<br>`0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| contamination review | Permit2<br>`0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| contamination review | DackieInterfaceMulticall<br>`0x8cab8ede6e48c947049b3cc6ccc3d5a0faea6296` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| contamination review | GovernorBravoDelegate<br>`0x0649cee63277de954acf4d50223d1f4965d278db` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| contamination review | MixedRouteQuoterV1<br>`0x290ef7a04b07fc5b150b83320d9e7ec098615c2e` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| contamination review | MultipleModesDuoExchange<br>`0x63d8423977624ead67af0ff33c2d1adc62c0819e` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| contamination review | NonfungibleTokenPositionDescriptor<br>`0x22cde1e8f2dc2dc14576219b9201e16bcdf5f39a` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| contamination review | TickLens<br>`0x160958266ea8fe90d3be91474baf633eebad17a0` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| exact address book overlap | SwapV2Factory<br>`0xeb2a625b704d73e82946d8d026e1f588eed06416` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| exact address book overlap | SwapV2Factory<br>`0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| exact address book overlap | FewETHWrapper<br>`0xc43a3dd1b16168e00297315d679840e30a89df42` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| exact address book overlap | SwapV2Factory<br>`0x9bffc3b30d6659e3d84754cc38865b3d60b4980e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| exact address book overlap | SwapV2Factory<br>`0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | GovernorAlpha<br>`0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| source verified unclassified | MixedRouteQuoterV1<br>`0xf09f1899074b5659148c615dd30c29060f264894` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | StakingRewardsFactory<br>`0x3032ab3fa8c01d786d29dade018d7f2017918e12` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| source verified unclassified | SwapV2Router<br>`0x290ef7a04b07fc5b150b83320d9e7ec098615c2e` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | TreasuryVester<br>`0x4750c43867ef5f89869132eccf19b9b6c4286e1a` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| source verified unclassified | TreasuryVester<br>`0x4b4e140d1f131fdad6fb59c13af796fd194e4135` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| source verified unclassified | TreasuryVester<br>`0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | non_address_book | unknown | unknown | verified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| source verified unclassified | Core<br>`0x4fe312cd4fe3b6f060902d9f742b9b7dfbe2aa50` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Core<br>`0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0x55f12a58a0a71fcd0aab0a305e0832f212b8ec4c` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0x87e6729013755fe6c46390ac51f8836e2057c08a` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0xaf3277fe89fbb38375d76541d4a66b70408164f2` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0xb3ad7754f363af676dc1c5be40423fe538a47920` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Timelock<br>`0x70469ada6724a6188f8c01c4769bff8229b4136e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Core<br>`0x8814a2aa2384d65672c7dc0650454e56f62fba8b` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0xd69ed581480239357515e200560353af1bbaa46a` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | SwapV2Factory<br>`0xeee400eabfba8f60f4e6b351d8577394beb972cd` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | SwapV2Router<br>`0xf9d7ff2f6a0c3631a807199276a493af8097916f` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Timelock<br>`0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Core<br>`0x0e442504ce6a378492c461c44adbce787903706e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | FewETHWrapper<br>`0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | GovernorBravoDelegate<br>`0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | GovernorBravoDelegator<br>`0xc76e664b5ad8a15e717828153b36b27f5e46cfbd` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | MixedRouteQuoterV1<br>`0x3e245057d67ddbd760f9c8fdcd0afc6413b8aa32` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | QuoterV2<br>`0xd69ed581480239357515e200560353af1bbaa46a` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0x4ea40dcee961675683e0a2e1721bd49cb9bca913` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0x76c8dd66b4107aebca412d0575208c58df3d1d4e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLiquidityToken<br>`0x70469ada6724a6188f8c01c4769bff8229b4136e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingToken<br>`0xe945d6ff6caa019f87a6012053a5ce7edca8486e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | SwapV2Router<br>`0x30b799b3cfbd41c2950839df7a376123b63c323e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | SwapV2Router<br>`0x41957b9f109ec7357b358402dc10e7184f7caa08` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | TickLens<br>`0x4fe312cd4fe3b6f060902d9f742b9b7dfbe2aa50` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Timelock<br>`0xdddd32dd6db92963bcc7fb943c240ce919d5af0a` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | UnsupportedProtocol<br>`0x1c1709b5655b0a769b816210e99be5e7e4c4d7cf` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Core<br>`0x8814a2aa2384d65672c7dc0650454e56f62fba8b` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | FewETHWrapper<br>`0xeee400eabfba8f60f4e6b351d8577394beb972cd` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | RingLaunchpad<br>`0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Timelock<br>`0x0e442504ce6a378492c461c44adbce787903706e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | UnsupportedProtocol<br>`0x3374bea3c2a347231f93fc366346ad6e56c7af49` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | UnsupportedProtocol<br>`0x9bffc3b30d6659e3d84754cc38865b3d60b4980e` | non_address_book | unknown | unknown | verified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| source verified unclassified | Core<br>`0xc7475929fd7c2d4bde7de5f9db863ea62101321c` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | FewETHWrapper<br>`0x46b0403e2330ff1b2cdcd7c91dd0494cc1d0e024` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | GovernorBravoDelegate<br>`0xfa04c9d7f4e989e442f1bb3d14ac2f05b8bf4140` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | GovernorBravoDelegator<br>`0x1f4f928dff072081e0455704a372737b3e25a70a` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | GovernorBravoDelegator<br>`0x5a2cd58f8f49297293add810b9c608d1dd9d46b6` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | GovernorBravoDelegator<br>`0xd2f37ff7ecfaceb4de1a2bacb8d9c539a4d6a943` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | MixedRouteQuoterV1<br>`0xb27f82ef49674b40640e98ad5964ec401dbc0371` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | NFTDescriptor<br>`0x0d5ecc10610f23e1e9c8e03f0cc6a5f052a662c2` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | NFTDescriptor<br>`0x29a4e1645cd0efbf79383ae054092fc4dfed8778` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x73adfd4e4062ff6ed452f4e4316f83a95c255907` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | QuoterV2<br>`0x766f7efa3f858994b6b5183c9f9fddee48e21ae1` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | RingLiquidityToken<br>`0x5597acf300faa23e6185b6604360391b044c81c2` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | SwapV2Factory<br>`0x24f5ac9a706de0cf795a8193f6ab3966b14ecfe6` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | SwapV2Factory<br>`0xeb2a625b704d73e82946d8d026e1f588eed06416` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | SwapV2Router<br>`0xada6059b4f6244acd8934095ed0162c5df6b5ebb` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | Timelock<br>`0x337c4f3054f091d0e2239ce09c0b112d874debf7` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | Timelock<br>`0x39d1d8fcc5e6eeaf567bce4e29b94fec956d3519` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | Timelock<br>`0x3dbf36bd3de1edaaea30da4d84790e6d0142db35` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| source verified unclassified | Timelock<br>`0x7d80c9422bcb6809ded28acd9916d647cafd484f` | non_address_book | unknown | unknown | verified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x1eebdd76eee008bae5730271ea3b88487c409b6c` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x224749cdd5791480ecebe452e5ffaefef94cd254` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x4ea40dcee961675683e0a2e1721bd49cb9bca913` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x93bdca2775189d7728b1e836a1593ffe9bb36bdc` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x1eebdd76eee008bae5730271ea3b88487c409b6c` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x3374bea3c2a347231f93fc366346ad6e56c7af49` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x3e245057d67ddbd760f9c8fdcd0afc6413b8aa32` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x41957b9f109ec7357b358402dc10e7184f7caa08` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x5aa37f6530f5e8323db814fe2fc4c22a0c3c55ed` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x76c8dd66b4107aebca412d0575208c58df3d1d4e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x833d4795fab8f030c790c8286f15553437c0da30` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x9bffc3b30d6659e3d84754cc38865b3d60b4980e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xb981b930c6b78c4dfde258ed2a9119ed69fb2faf` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xc76e664b5ad8a15e717828153b36b27f5e46cfbd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xdddd32dd6db92963bcc7fb943c240ce919d5af0a` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xe945d6ff6caa019f87a6012053a5ce7edca8486e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xf293096d3c33610461a7bd101d201683111749b8` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xc43a3dd1b16168e00297315d679840e30a89df42` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xdd8bd96b71fb2e54823e8c5c89392e2f4ef9dfe1` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0xeee400eabfba8f60f4e6b351d8577394beb972cd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4ab88ce7527bdb34065bc2fb181e5db7c72c429` |
| unverified unclassified | UnnamedContract<br>`0x25df149cd012ec11a3bffd93e196a01805353866` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x30308554fd2115f406b13a1123f9c93fdf700bb4` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x35a337695e46b1a3443af7adcbadd338d3a8c265` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x36a1a616ed16bf724cadff124cc880a69adb4a1e` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x3af30cd87525cf73587e5218e3d9dd3a1357dcaa` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x52cb39bb6b32d20f660f389b1e5eb4d3b250c91d` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x8b34f931069645043b24efc20aebc5e3e00cf256` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0x8c6a8142ce8881b706187da842b55ce441681573` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |
| unverified unclassified | UnnamedContract<br>`0xa61111012025e4aee9fe11ac0d95c6649955ff51` | non_address_book | unknown | unknown | unverified | n/a | `0xff790875de1f44d4ddc1f905a2b9cf0c11116859` |

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
| needs_review | 62 |

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
