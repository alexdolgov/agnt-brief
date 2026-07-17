# Agentic Audit Brief: Ring Protocol

## Project Overview

- Project: Ring Protocol (`ring-protocol`)
- Website: [https://ring.exchange/](https://ring.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:47.054Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, ink, optimism, polygon, unichain, zora
- Contract surface: 84 unique implementations (168 raw deployments)
- DeFi Llama TVL: $23,217,131.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 83 project-authored contract(s) across 8 chain(s); 7 ERC20 tokens, 8 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 39 common project-authored base contract(s) (immutablestate, dsmath, dsauth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 233; live-surface contracts included: 168 (113 live, 55 unknown).
- Excluded by liveness: 65 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/45 (35.6%)
- Deployed-live implementations: 49 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/49
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 84
- Raw deployments: 168
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 33.3% (OpenZeppelin, SlowMist, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 11 | 22.4% | 2025-11 |
| OpenZeppelin | Tier 1 | 11 | 22.4% | 2024-09 |
| Spearbit | Tier 1 | 8 | 16.3% | 2024-09 |
| SlowMist | Tier 1 | 4 | 8.2% | 2024-01 |
| BlockSec | Tier 2 | 2 | 4.1% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Core | unknown | ethereum | n/a | [`0xb2799ed78490ea642d2ecb23cb2ce9b8acc087d4`](./contracts/ethereum-1/0xb2799ed78490ea642d2ecb23cb2ce9b8acc087d4/) | ✅ Audited |
| FewETHHook | token | ethereum | n/a | [`0x044301939deb7ca53c4733dd4d9b3bc5ea0c6888`](./contracts/ethereum-1/0x044301939deb7ca53c4733dd4d9b3bc5ea0c6888/) | ✅ Audited |
| FewFactory | unknown | blast | n/a | 7 deployments: ethereum `0x7d86394139bf1122e82fdf45bb4e3b038a4464dd`; ethereum `0xb13a844c498a67ad614c08823428aa6e998fd2ad`; bsc `0xeee400eabfba8f60f4e6b351d8577394beb972cd`; unichain `0x974cc3f3468cd9c12731108148c4dabfb5ee556f`; base `0xb3ad7754f363af676dc1c5be40423fe538a47920`; arbitrum `0x974cc3f3468cd9c12731108148c4dabfb5ee556f`; blast [`0x455b20131d59f01d082df1225154fda813e8cee9`](./contracts/blast-81457/0x455b20131d59f01d082df1225154fda813e8cee9/) | ✅ Audited |
| FewTokenHook | token | ethereum | n/a | 3 deployments: ethereum [`0x4b2eb653d13e6c9ac5a0a01fde22f2c8d6592888`](./contracts/ethereum-1/0x4b2eb653d13e6c9ac5a0a01fde22f2c8d6592888/); ethereum `0x4b3e2a8cf36c7eb0fba2a5b39b20c896c6f22888`; ethereum `0x85b648a64aed6307d5d5ce26e6ae086c17bde888` | ✅ Audited |
| FewUSDTHook | token | ethereum | n/a | [`0xbadf77d50478b4432ef1f243b9c0bc7869486888`](./contracts/ethereum-1/0xbadf77d50478b4432ef1f243b9c0bc7869486888/) | ✅ Audited |
| FewWrappedToken | token | blast | n/a | 2 deployments: blast [`0x66714db8f3397c767d0a602458b5b4e3c0fe7dd1`](./contracts/blast-81457/0x66714db8f3397c767d0a602458b5b4e3c0fe7dd1/); blast `0x866f2c06b83df2ed7ca9c2d044940e7cd55a06d6` | ✅ Audited |
| FixedStakingRewards | unknown | blast | n/a | [`0xeff87a51f5abd015f1afcd5737bbab450ea15a24`](./contracts/blast-81457/0xeff87a51f5abd015f1afcd5737bbab450ea15a24/) | ✅ Audited |
| PositionManager | governance | ethereum | n/a | [`0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e`](./contracts/ethereum-1/0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e/) | ✅ Audited |
| PositionManager | governance | optimism | n/a | 5 deployments: optimism [`0x3c3ea4b57a46241e54610e5f022e5c45859a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/); bsc `0x7a4a5c919ae2541aed11041a1aeee68f1287f95b`; celo `0xf7965f3981e4d5bc383bfbcb61501763e9068ca9`; avalanche `0xb74b1f14d2754acfcbbe1a221023a5cf50ab8acd`; blast `0x4ad2f4cca2682cbb5b950d660dd458a1d3f1baad` | ✅ Audited |
| PositionManager | governance | unichain | n/a | [`0x4529a01c7a0410167c5740c487a8de60232617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | ✅ Audited |
| PositionManager | governance | polygon | n/a | [`0x1ec2ebf4f37e7363fdfe3551602425af0b3ceef9`](./contracts/polygon-137/0x1ec2ebf4f37e7363fdfe3551602425af0b3ceef9/) | ✅ Audited |
| PositionManager | governance | base | n/a | [`0x7c5f5a4bbd8fd63184577525326123b519429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ✅ Audited |
| PositionManager | governance | arbitrum | n/a | [`0xd88f38f930b7952f2db2432cb002e7abbf3dd869`](./contracts/arbitrum-42161/0xd88f38f930b7952f2db2432cb002e7abbf3dd869/) | ✅ Audited |
| Quoter | periphery | ethereum | n/a | [`0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6`](./contracts/ethereum-1/0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6/) | ✅ Audited |
| StateView | unknown | blast | n/a | 10 deployments: ethereum `0x7ffe42c4a5deea5b0fec41c94c136cf115597227`; optimism `0xc18a3169788f4f75a170290584eca6395c75ecdb`; bsc `0xd13dd3d6e93f276fafc9db9e6bb47c1180aee0c4`; unichain `0x86e8631a016f9068c3f085faf484ee3f5fdee8f2`; polygon `0x5ea1bd7974c8a611cbab0bdcafcb1d9cc9b3ba5a`; base `0xa3c0c9b65bad0b08107aa264b0f3db444b867a71`; arbitrum `0x76fd297e2d437cd7f76d50f01afe6160f86e9990`; celo `0xbc21f8720babf4b20d195ee5c6e99c52b76f2bfb`; avalanche `0xc3c9e198c735a4b97e3e683f391ccbdd60b69286`; blast [`0x12a88ae16f46dce4e8b15368008ab3380885df30`](./contracts/blast-81457/0x12a88ae16f46dce4e8b15368008ab3380885df30/) | ✅ Audited |
| UniversalRouter | adapter | polygon | n/a | 22 deployments: ethereum `0x5597acf300faa23e6185b6604360391b044c81c2`; ethereum `0x66a9893cc07d91d95644aedd05d03f95e1dba8af`; ethereum `0x7d80c9422bcb6809ded28acd9916d647cafd484f`; ethereum `0xeff87a51f5abd015f1afcd5737bbab450ea15a24`; optimism `0x851116d9223fabed8e56c0e6b8ad0c31d98b3507`; bsc `0x1906c1d672b88cd1b9ac7593301ca990f94eae07`; bsc `0x1fb6ef969d925f0b81245ce28f2cad95b638cfcc`; unichain `0xef740bf23acae26f6492b10de645d6b98dc8eaf3`; polygon [`0x1095692a6237d83c6a72f3f5efedb9a670c49223`](./contracts/polygon-137/0x1095692a6237d83c6a72f3f5efedb9a670c49223/); base `0x1fb6ef969d925f0b81245ce28f2cad95b638cfcc`; base `0x6ff5693b99212da76ad316178a184ab56d299b43`; base `0x9a8c67c02250ec50f16b6143d139cbdb131f1e07`; base `0xe6d348fe17c9e4176821754d96124de5d8953a60`; arbitrum `0xa51afafe0263b40edaef0df8781ea9aa03e381a3`; arbitrum `0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5`; arbitrum `0xf293096d3c33610461a7bd101d201683111749b8`; celo `0xcb695bc5d3aa22cad1e6df07801b061a05a0233a`; avalanche `0x94b75331ae8d42c1b61065089b7d48fe14aa73b7`; blast `0x6a7c92bddb8d695cfdff5d47487a456cc46e0ee5`; blast `0xc9dd682a06dbf10d91e2adbdac70f3adb8a3f201`; blast `0xce69eca56e1ace442ebd591918223acfed60a940`; blast `0xeabbcb3e8e415306207ef514f660a3f820025be3` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dai | unknown | ethereum | n/a | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| FewETHWrapper | token | base | n/a | 4 deployments: ethereum `0xada6059b4f6244acd8934095ed0162c5df6b5ebb`; bsc `0xf9d7ff2f6a0c3631a807199276a493af8097916f`; base [`0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7`](./contracts/base-8453/0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7/); blast `0xf272a4b0d949011f9347134088126277abeb065f` | ⚠️ Unaudited |
| FewNonfungiblePositionManager | governance | blast | n/a | 5 deployments: blast [`0x44d8a7885c48c20861b49cd238e612056223d995`](./contracts/blast-81457/0x44d8a7885c48c20861b49cd238e612056223d995/); blast `0x8970507172fd1bf7ac4ccce2a9d310ad3d2c536a`; blast `0x89cc755b2e84390e90349ccef665671792177b90`; blast `0xaccba426e72e14bfdadbf7ce752f92cc05ab4949`; blast `0xb1486e0a2159fcb465c5378ed981a0657bea8f3b` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x090d4613473dee047c3f2706764f49e0821d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| Multicall | unknown | unichain | n/a | [`0xb630bbef1b6a9ca0c31699060321918a729da400`](./contracts/unichain-130/0xb630bbef1b6a9ca0c31699060321918a729da400/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | blast | n/a | 2 deployments: base `0xf9d7ff2f6a0c3631a807199276a493af8097916f`; blast [`0xebec263be79a02131258a1033d8490b11a5300fa`](./contracts/blast-81457/0xebec263be79a02131258a1033d8490b11a5300fa/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | ethereum | n/a | [`0xd1428ba554f4c8450b763a0b2040a4935c63f06c`](./contracts/ethereum-1/0xd1428ba554f4c8450b763a0b2040a4935c63f06c/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | optimism | n/a | [`0xedd81496169c46df161b8513a52ffecaaaa66743`](./contracts/optimism-10/0xedd81496169c46df161b8513a52ffecaaaa66743/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | bsc | n/a | [`0xf0432f360703ec3d33931a8356a75a77d8d380e1`](./contracts/bsc-56/0xf0432f360703ec3d33931a8356a75a77d8d380e1/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | unichain | n/a | [`0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722`](./contracts/unichain-130/0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | polygon | n/a | [`0x0892771f0c1b78ad6013d6e5536007e1c16e6794`](./contracts/polygon-137/0x0892771f0c1b78ad6013d6e5536007e1c16e6794/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | base | n/a | [`0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5`](./contracts/base-8453/0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | celo | n/a | [`0x5727e22b25feee05e8dfa83c752b86f19d102d8a`](./contracts/celo-42220/0x5727e22b25feee05e8dfa83c752b86f19d102d8a/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | avalanche | n/a | [`0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9`](./contracts/avalanche-43114/0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | blast | n/a | [`0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97`](./contracts/blast-81457/0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | n/a | [`0x61ffe014ba17989e743c5f6cb21bf9697530b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | ⚠️ Unaudited |
| RingLaunchpad | unknown | base | n/a | [`0x833d4795fab8f030c790c8286f15553437c0da30`](./contracts/base-8453/0x833d4795fab8f030c790c8286f15553437c0da30/) | ⚠️ Unaudited |
| RingPoint | unknown | blast | n/a | [`0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94`](./contracts/blast-81457/0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94/) | ⚠️ Unaudited |
| RingToken | token | blast | n/a | [`0x25f233c3e3676f9e900a89644a3fe5404d643c84`](./contracts/blast-81457/0x25f233c3e3676f9e900a89644a3fe5404d643c84/) | ⚠️ Unaudited |
| SwapIncentive | unknown | blast | n/a | 2 deployments: blast [`0x4610a79b9d0d075d7d63d112018a49059529c503`](./contracts/blast-81457/0x4610a79b9d0d075d7d63d112018a49059529c503/); blast `0xfe8d01cb8aef10e277fd1db040b5bc2da036e112` | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | [`0xe592427a0aece92de3edee1f18e0157c05861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | ethereum | n/a | [`0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45`](./contracts/ethereum-1/0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | blast | n/a | [`0xa94f22c57322d8b3ad86520774a75944596ae522`](./contracts/blast-81457/0xa94f22c57322d8b3ad86520774a75944596ae522/) | ⚠️ Unaudited |
| SwapV2Router | adapter | bsc | n/a | 5 deployments: ethereum `0x39d1d8fcc5e6eeaf567bce4e29b94fec956d3519`; bsc [`0x20504f37a95ef80e3fc7476c4801fb39aae6bad0`](./contracts/bsc-56/0x20504f37a95ef80e3fc7476c4801fb39aae6bad0/); base `0x224749cdd5791480ecebe452e5ffaefef94cd254`; arbitrum `0xd69ed581480239357515e200560353af1bbaa46a`; blast `0x7001f706acb6440d17cbfad63fa50a22d51696ff` | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0x1a9c8182c09f50c8318d769245bea52c32be35bc`](./contracts/ethereum-1/0x1a9c8182c09f50c8318d769245bea52c32be35bc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442`](./contracts/base-8453/0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442/) | ⚠️ Unaudited |
| Uni | unknown | ethereum | n/a | [`0x1f9840a85d5af5bf1d1762f925bdaddc4201f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | n/a | [`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f`](./contracts/ethereum-1/0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f98431c8ad98523631ae4a59f267346ea31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |
| V3Migrator | periphery | ethereum | n/a | [`0xa5644e29708357803b5a882d272c41cc0df92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | ⚠️ Unaudited |
| V3Migrator | unknown | blast | n/a | [`0x3a02ecb17f26b1ab294396d4750a740d774dd245`](./contracts/blast-81457/0x3a02ecb17f26b1ab294396d4750a740d774dd245/) | ⚠️ Unaudited |
| V4Quoter | periphery | base | n/a | 9 deployments: ethereum `0x52f0e24d1c21c8a0cb1e5a5dd6198556bd9e1203`; optimism `0x1f3131a13296fb91c90870043742c3cdbff1a8d7`; bsc `0x9f75dd27d6664c475b90e105573e550ff69437b0`; unichain `0x333e3c607b141b18ff6de9f258db6e77fe7491e0`; polygon `0xb3d5c3dfc3a7aebff71895a7191796bffc2c81b9`; base [`0x0d5e0f971ed27fbff6c2837bf31316121532048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/); celo `0x28566da1093609182dff2cb2a91cfd72e61d66cd`; avalanche `0xbe40675bb704506a3c2ccfb762dcfd1e979845c2`; blast `0x6f71cdcb0d119ff72c6eb501abceb576fbf62bcf` | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1eebdd76eee008bae5730271ea3b88487c409b6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x224749cdd5791480ecebe452e5ffaefef94cd254` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ea40dcee961675683e0a2e1721bd49cb9bca913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93bdca2775189d7728b1e836a1593ffe9bb36bdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1eebdd76eee008bae5730271ea3b88487c409b6c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3374bea3c2a347231f93fc366346ad6e56c7af49` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3e245057d67ddbd760f9c8fdcd0afc6413b8aa32` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x41957b9f109ec7357b358402dc10e7184f7caa08` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5aa37f6530f5e8323db814fe2fc4c22a0c3c55ed` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x76c8dd66b4107aebca412d0575208c58df3d1d4e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x833d4795fab8f030c790c8286f15553437c0da30` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9bffc3b30d6659e3d84754cc38865b3d60b4980e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb981b930c6b78c4dfde258ed2a9119ed69fb2faf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc76e664b5ad8a15e717828153b36b27f5e46cfbd` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdb671f7a2a5dd3ea1a98ac585e5f7834a16db8e5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdddd32dd6db92963bcc7fb943c240ce919d5af0a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe17e4e8a43c1a0a1844bde72aca86be3b81b28af` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe945d6ff6caa019f87a6012053a5ce7edca8486e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf293096d3c33610461a7bd101d201683111749b8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf9cfaa38ca767a32a8447b0f3a7c4f43451635eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x974cc3f3468cd9c12731108148c4dabfb5ee556f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc43a3dd1b16168e00297315d679840e30a89df42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8bd96b71fb2e54823e8c5c89392e2f4ef9dfe1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeee400eabfba8f60f4e6b351d8577394beb972cd` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 21 deployments: ink `0x000000000022d473030f116ddee9f6b43ac78ba3`; ink `0x112908dac86e20e7241b0927479ea3bf935d1fa0`; ink `0x1b35d13a2e2528f192637f14b05f0dc0e7deb566`; ink `0x360e68faccca8ca495c1b759fd9eee466db9fb32`; ink `0x3972c00f7ed4885e145823eb7c655375d275a1c5`; ink `0x42e3ccd9b7f67b5b2ee0c12074b84ccf2a8e7f36`; ink `0x4cded7edf52c8aa5259a54ec6a3ce7c6d2a455df`; ink `0x76fd297e2d437cd7f76d50f01afe6160f86e9990`; zora `0x000000000022d473030f116ddee9f6b43ac78ba3`; zora `0x0575338e4c17006ae181b47900a84404247ca30f`; zora `0x3315ef7ca28db74abadc6c44570efdf06b04b020`; zora `0x385785af07d63b50d0a0ea57c4ff89d06adf7328`; zora `0x51d394718bc09297262e368c1a481217fdeb71eb`; zora `0x55d235b3ff2daf7c3ede0defc9521f1d6fe6c5c0`; zora `0x5edaccc0660e0a2c44b06e07ce8b915e625dc2c6`; zora `0x7d64630bbb4993b5578dbd65e400961c9e68d55a`; zora `0x7da419153bd420b689f312363756d76836aeace4`; zora `0x8ac7bee993bb44dab564ea4bc9ea67bf9eb5e743`; zora `0xb1860d529182ac3bc1f51fa2abd56662b7d13f33`; zora `0xc585e0f504613b5fbf874f21af14c65260fb41fa`; zora `0xf66c7b99e2040f0d9b326b3b7c152e9663543d63` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x25df149cd012ec11a3bffd93e196a01805353866` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x30308554fd2115f406b13a1123f9c93fdf700bb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x35a337695e46b1a3443af7adcbadd338d3a8c265` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x36a1a616ed16bf724cadff124cc880a69adb4a1e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3af30cd87525cf73587e5218e3d9dd3a1357dcaa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x52cb39bb6b32d20f660f389b1e5eb4d3b250c91d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8b34f931069645043b24efc20aebc5e3e00cf256` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8c6a8142ce8881b706187da842b55ce441681573` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa61111012025e4aee9fe11ac0d95c6649955ff51` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DRAFT_Certora_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [TrailOfBits_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 45 | high |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 8 | n/a |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | 8 | n/a |
| [ABDK_RingProtocol_Hook_v_1_0.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/ABDK_RingProtocol_Hook_v_1_0.pdf) | ABDK | Audit | 2025-11 | fresh | Direct | contract_name | 3 | n/a |
| [SlowMist Audit Report - Ring Protocol_en-us.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol_en-us.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |
| [blocksec_ringcore_v1.0-signed.pdf](https://github.com/RingProtocol/audits/blob/main/blocksec_ringcore_v1.0-signed.pdf) | BlockSec | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7`](./contracts/base-8453/0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7/) | FewETHWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x44d8a7885c48c20861b49cd238e612056223d995`](./contracts/blast-81457/0x44d8a7885c48c20861b49cd238e612056223d995/) | FewNonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090d4613473dee047c3f2706764f49e0821d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xebec263be79a02131258a1033d8490b11a5300fa`](./contracts/blast-81457/0xebec263be79a02131258a1033d8490b11a5300fa/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1428ba554f4c8450b763a0b2040a4935c63f06c`](./contracts/ethereum-1/0xd1428ba554f4c8450b763a0b2040a4935c63f06c/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xedd81496169c46df161b8513a52ffecaaaa66743`](./contracts/optimism-10/0xedd81496169c46df161b8513a52ffecaaaa66743/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0432f360703ec3d33931a8356a75a77d8d380e1`](./contracts/bsc-56/0xf0432f360703ec3d33931a8356a75a77d8d380e1/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722`](./contracts/unichain-130/0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0892771f0c1b78ad6013d6e5536007e1c16e6794`](./contracts/polygon-137/0x0892771f0c1b78ad6013d6e5536007e1c16e6794/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5`](./contracts/base-8453/0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5727e22b25feee05e8dfa83c752b86f19d102d8a`](./contracts/celo-42220/0x5727e22b25feee05e8dfa83c752b86f19d102d8a/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9`](./contracts/avalanche-43114/0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97`](./contracts/blast-81457/0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61ffe014ba17989e743c5f6cb21bf9697530b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833d4795fab8f030c790c8286f15553437c0da30`](./contracts/base-8453/0x833d4795fab8f030c790c8286f15553437c0da30/) | RingLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94`](./contracts/blast-81457/0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94/) | RingPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x25f233c3e3676f9e900a89644a3fe5404d643c84`](./contracts/blast-81457/0x25f233c3e3676f9e900a89644a3fe5404d643c84/) | RingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4610a79b9d0d075d7d63d112018a49059529c503`](./contracts/blast-81457/0x4610a79b9d0d075d7d63d112018a49059529c503/) | SwapIncentive | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe592427a0aece92de3edee1f18e0157c05861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45`](./contracts/ethereum-1/0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa94f22c57322d8b3ad86520774a75944596ae522`](./contracts/blast-81457/0xa94f22c57322d8b3ad86520774a75944596ae522/) | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20504f37a95ef80e3fc7476c4801fb39aae6bad0`](./contracts/bsc-56/0x20504f37a95ef80e3fc7476c4801fb39aae6bad0/) | SwapV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9c8182c09f50c8318d769245bea52c32be35bc`](./contracts/ethereum-1/0x1a9c8182c09f50c8318d769245bea52c32be35bc/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f9840a85d5af5bf1d1762f925bdaddc4201f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5644e29708357803b5a882d272c41cc0df92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3a02ecb17f26b1ab294396d4750a740d774dd245`](./contracts/blast-81457/0x3a02ecb17f26b1ab294396d4750a740d774dd245/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d5e0f971ed27fbff6c2837bf31316121532048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/) | V4Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=25, extraction_exact=45

Zero-match audit list:

- [3965] DRAFT_Certora_audit_core.pdf
- [3966] TrailOfBits_audit_core.pdf
- [3967] DRAFT_Spearbit_audit_core.pdf
- [3968] DRAFT_ABDK_audit_core.pdf

Fork inheritance lineage and inherited audits are included when available.
