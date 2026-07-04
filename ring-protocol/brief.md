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
| Core | unknown | ethereum | n/a | [`0xb2799e...c087d4`](./contracts/ethereum-1/0xb2799ed78490ea642d2ecb23cb2ce9b8acc087d4/) | ✅ Audited |
| FewETHHook | token | ethereum | n/a | [`0x044301...0c6888`](./contracts/ethereum-1/0x044301939deb7ca53c4733dd4d9b3bc5ea0c6888/) | ✅ Audited |
| FewFactory | unknown | blast | n/a | 7 deployments: ethereum `0x7d8639...4464dd`; ethereum `0xb13a84...8fd2ad`; bsc `0xeee400...b972cd`; unichain `0x974cc3...ee556f`; base `0xb3ad77...a47920`; arbitrum `0x974cc3...ee556f`; blast [`0x455b20...e8cee9`](./contracts/blast-81457/0x455b20131d59f01d082df1225154fda813e8cee9/) | ✅ Audited |
| FewTokenHook | token | ethereum | n/a | 3 deployments: ethereum [`0x4b2eb6...592888`](./contracts/ethereum-1/0x4b2eb653d13e6c9ac5a0a01fde22f2c8d6592888/); ethereum `0x4b3e2a...f22888`; ethereum `0x85b648...bde888` | ✅ Audited |
| FewUSDTHook | token | ethereum | n/a | [`0xbadf77...486888`](./contracts/ethereum-1/0xbadf77d50478b4432ef1f243b9c0bc7869486888/) | ✅ Audited |
| FewWrappedToken | token | blast | n/a | 2 deployments: blast [`0x66714d...fe7dd1`](./contracts/blast-81457/0x66714db8f3397c767d0a602458b5b4e3c0fe7dd1/); blast `0x866f2c...5a06d6` | ✅ Audited |
| FixedStakingRewards | unknown | blast | n/a | [`0xeff87a...a15a24`](./contracts/blast-81457/0xeff87a51f5abd015f1afcd5737bbab450ea15a24/) | ✅ Audited |
| PositionManager | governance | ethereum | n/a | [`0xbd2165...64ee9e`](./contracts/ethereum-1/0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e/) | ✅ Audited |
| PositionManager | governance | optimism | n/a | 5 deployments: optimism [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/); bsc `0x7a4a5c...87f95b`; celo `0xf7965f...068ca9`; avalanche `0xb74b1f...ab8acd`; blast `0x4ad2f4...f1baad` | ✅ Audited |
| PositionManager | governance | unichain | n/a | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | ✅ Audited |
| PositionManager | governance | polygon | n/a | [`0x1ec2eb...3ceef9`](./contracts/polygon-137/0x1ec2ebf4f37e7363fdfe3551602425af0b3ceef9/) | ✅ Audited |
| PositionManager | governance | base | n/a | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ✅ Audited |
| PositionManager | governance | arbitrum | n/a | [`0xd88f38...3dd869`](./contracts/arbitrum-42161/0xd88f38f930b7952f2db2432cb002e7abbf3dd869/) | ✅ Audited |
| Quoter | periphery | ethereum | n/a | [`0xb27308...ce5ab6`](./contracts/ethereum-1/0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6/) | ✅ Audited |
| StateView | unknown | blast | n/a | 10 deployments: ethereum `0x7ffe42...597227`; optimism `0xc18a31...75ecdb`; bsc `0xd13dd3...aee0c4`; unichain `0x86e863...dee8f2`; polygon `0x5ea1bd...b3ba5a`; base `0xa3c0c9...867a71`; arbitrum `0x76fd29...6e9990`; celo `0xbc21f8...6f2bfb`; avalanche `0xc3c9e1...b69286`; blast [`0x12a88a...85df30`](./contracts/blast-81457/0x12a88ae16f46dce4e8b15368008ab3380885df30/) | ✅ Audited |
| UniversalRouter | adapter | polygon | n/a | 22 deployments: ethereum `0x5597ac...4c81c2`; ethereum `0x66a989...dba8af`; ethereum `0x7d80c9...fd484f`; ethereum `0xeff87a...a15a24`; optimism `0x851116...8b3507`; bsc `0x1906c1...4eae07`; bsc `0x1fb6ef...38cfcc`; unichain `0xef740b...c8eaf3`; polygon [`0x109569...c49223`](./contracts/polygon-137/0x1095692a6237d83c6a72f3f5efedb9a670c49223/); base `0x1fb6ef...38cfcc`; base `0x6ff569...299b43`; base `0x9a8c67...1f1e07`; base `0xe6d348...953a60`; arbitrum `0xa51afa...e381a3`; arbitrum `0xdb671f...6db8e5`; arbitrum `0xf29309...1749b8`; celo `0xcb695b...a0233a`; avalanche `0x94b753...aa73b7`; blast `0x6a7c92...6e0ee5`; blast `0xc9dd68...a3f201`; blast `0xce69ec...60a940`; blast `0xeabbcb...025be3` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| FewETHWrapper | token | base | n/a | 4 deployments: ethereum `0xada605...6b5ebb`; bsc `0xf9d7ff...97916f`; base [`0x20e6b1...9c4fe7`](./contracts/base-8453/0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7/); blast `0xf272a4...eb065f` | ⚠️ Unaudited |
| FewNonfungiblePositionManager | governance | blast | n/a | 5 deployments: blast [`0x44d8a7...23d995`](./contracts/blast-81457/0x44d8a7885c48c20861b49cd238e612056223d995/); blast `0x897050...2c536a`; blast `0x89cc75...177b90`; blast `0xaccba4...ab4949`; blast `0xb1486e...ea8f3b` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| Multicall | unknown | unichain | n/a | [`0xb630bb...9da400`](./contracts/unichain-130/0xb630bbef1b6a9ca0c31699060321918a729da400/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | blast | n/a | 2 deployments: base `0xf9d7ff...97916f`; blast [`0xebec26...5300fa`](./contracts/blast-81457/0xebec263be79a02131258a1033d8490b11a5300fa/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | ethereum | n/a | [`0xd1428b...63f06c`](./contracts/ethereum-1/0xd1428ba554f4c8450b763a0b2040a4935c63f06c/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | optimism | n/a | [`0xedd814...a66743`](./contracts/optimism-10/0xedd81496169c46df161b8513a52ffecaaaa66743/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | bsc | n/a | [`0xf0432f...d380e1`](./contracts/bsc-56/0xf0432f360703ec3d33931a8356a75a77d8d380e1/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | unichain | n/a | [`0x9fb284...f7f722`](./contracts/unichain-130/0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | polygon | n/a | [`0x089277...6e6794`](./contracts/polygon-137/0x0892771f0c1b78ad6013d6e5536007e1c16e6794/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | base | n/a | [`0x25d093...f3e7d5`](./contracts/base-8453/0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | celo | n/a | [`0x5727e2...102d8a`](./contracts/celo-42220/0x5727e22b25feee05e8dfa83c752b86f19d102d8a/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | avalanche | n/a | [`0x2b1aed...51f0a9`](./contracts/avalanche-43114/0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | blast | n/a | [`0x0747ad...676f97`](./contracts/blast-81457/0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | n/a | [`0x61ffe0...30b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | ⚠️ Unaudited |
| RingLaunchpad | unknown | base | n/a | [`0x833d47...c0da30`](./contracts/base-8453/0x833d4795fab8f030c790c8286f15553437c0da30/) | ⚠️ Unaudited |
| RingPoint | unknown | blast | n/a | [`0x8bd2cd...fd7e94`](./contracts/blast-81457/0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94/) | ⚠️ Unaudited |
| RingToken | token | blast | n/a | [`0x25f233...643c84`](./contracts/blast-81457/0x25f233c3e3676f9e900a89644a3fe5404d643c84/) | ⚠️ Unaudited |
| SwapIncentive | unknown | blast | n/a | 2 deployments: blast [`0x4610a7...29c503`](./contracts/blast-81457/0x4610a79b9d0d075d7d63d112018a49059529c503/); blast `0xfe8d01...36e112` | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | ethereum | n/a | [`0x68b346...65fc45`](./contracts/ethereum-1/0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | blast | n/a | [`0xa94f22...6ae522`](./contracts/blast-81457/0xa94f22c57322d8b3ad86520774a75944596ae522/) | ⚠️ Unaudited |
| SwapV2Router | adapter | bsc | n/a | 5 deployments: ethereum `0x39d1d8...6d3519`; bsc [`0x20504f...e6bad0`](./contracts/bsc-56/0x20504f37a95ef80e3fc7476c4801fb39aae6bad0/); base `0x224749...4cd254`; arbitrum `0xd69ed5...baa46a`; blast `0x7001f7...1696ff` | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0x1a9c81...be35bc`](./contracts/ethereum-1/0x1a9c8182c09f50c8318d769245bea52c32be35bc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x1246fa...609442`](./contracts/base-8453/0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442/) | ⚠️ Unaudited |
| Uni | unknown | ethereum | n/a | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | n/a | [`0x5c69be...c5aa6f`](./contracts/ethereum-1/0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |
| V3Migrator | periphery | ethereum | n/a | [`0xa5644e...f92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | ⚠️ Unaudited |
| V3Migrator | unknown | blast | n/a | [`0x3a02ec...4dd245`](./contracts/blast-81457/0x3a02ecb17f26b1ab294396d4750a740d774dd245/) | ⚠️ Unaudited |
| V4Quoter | periphery | base | n/a | 9 deployments: ethereum `0x52f0e2...9e1203`; optimism `0x1f3131...f1a8d7`; bsc `0x9f75dd...9437b0`; unichain `0x333e3c...7491e0`; polygon `0xb3d5c3...2c81b9`; base [`0x0d5e0f...32048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/); celo `0x28566d...1d66cd`; avalanche `0xbe4067...9845c2`; blast `0x6f71cd...f62bcf` | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x1eebdd...409b6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x224749...4cd254` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ea40d...bca913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93bdca...b36bdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x974cc3...ee556f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1eebdd...409b6c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3374be...c7af49` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3e2450...b8aa32` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x41957b...7caa08` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5aa37f...3c55ed` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x76c8dd...3d1d4e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x833d47...c0da30` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9bffc3...b4980e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb981b9...fb2faf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc76e66...46cfbd` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdb671f...6db8e5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdddd32...d5af0a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe17e4e...1b28af` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe945d6...a8486e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf29309...1749b8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf9cfaa...1635eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x974cc3...ee556f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc43a3d...89df42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8bd9...f9dfe1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeee400...b972cd` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 21 deployments: ink `0x000000...c78ba3`; ink `0x112908...5d1fa0`; ink `0x1b35d1...deb566`; ink `0x360e68...b9fb32`; ink `0x3972c0...75a1c5`; ink `0x42e3cc...8e7f36`; ink `0x4cded7...a455df`; ink `0x76fd29...6e9990`; zora `0x000000...c78ba3`; zora `0x057533...7ca30f`; zora `0x3315ef...04b020`; zora `0x385785...df7328`; zora `0x51d394...eb71eb`; zora `0x55d235...e6c5c0`; zora `0x5edacc...5dc2c6`; zora `0x7d6463...68d55a`; zora `0x7da419...aeace4`; zora `0x8ac7be...b5e743`; zora `0xb1860d...d13f33`; zora `0xc585e0...fb41fa`; zora `0xf66c7b...543d63` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x25df14...353866` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x303085...700bb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x35a337...a8c265` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x36a1a6...db4a1e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3af30c...57dcaa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x52cb39...50c91d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8b34f9...0cf256` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8c6a81...681573` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa61111...55ff51` | ❓ Unverified |

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
| ethereum | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20e6b1...9c4fe7`](./contracts/base-8453/0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7/) | FewETHWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x44d8a7...23d995`](./contracts/blast-81457/0x44d8a7885c48c20861b49cd238e612056223d995/) | FewNonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xebec26...5300fa`](./contracts/blast-81457/0xebec263be79a02131258a1033d8490b11a5300fa/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1428b...63f06c`](./contracts/ethereum-1/0xd1428ba554f4c8450b763a0b2040a4935c63f06c/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xedd814...a66743`](./contracts/optimism-10/0xedd81496169c46df161b8513a52ffecaaaa66743/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0432f...d380e1`](./contracts/bsc-56/0xf0432f360703ec3d33931a8356a75a77d8d380e1/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x9fb284...f7f722`](./contracts/unichain-130/0x9fb28449a191cd8c03a1b7abfb0f5996ecf7f722/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x089277...6e6794`](./contracts/polygon-137/0x0892771f0c1b78ad6013d6e5536007e1c16e6794/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25d093...f3e7d5`](./contracts/base-8453/0x25d093633990dc94bedeed76c8f3cdaa75f3e7d5/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5727e2...102d8a`](./contracts/celo-42220/0x5727e22b25feee05e8dfa83c752b86f19d102d8a/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2b1aed...51f0a9`](./contracts/avalanche-43114/0x2b1aed9445b05ac1a3b203eccc1e25dd9351f0a9/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0747ad...676f97`](./contracts/blast-81457/0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97/) | PositionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61ffe0...30b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833d47...c0da30`](./contracts/base-8453/0x833d4795fab8f030c790c8286f15553437c0da30/) | RingLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8bd2cd...fd7e94`](./contracts/blast-81457/0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94/) | RingPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x25f233...643c84`](./contracts/blast-81457/0x25f233c3e3676f9e900a89644a3fe5404d643c84/) | RingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4610a7...29c503`](./contracts/blast-81457/0x4610a79b9d0d075d7d63d112018a49059529c503/) | SwapIncentive | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68b346...65fc45`](./contracts/ethereum-1/0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa94f22...6ae522`](./contracts/blast-81457/0xa94f22c57322d8b3ad86520774a75944596ae522/) | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20504f...e6bad0`](./contracts/bsc-56/0x20504f37a95ef80e3fc7476c4801fb39aae6bad0/) | SwapV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9c81...be35bc`](./contracts/ethereum-1/0x1a9c8182c09f50c8318d769245bea52c32be35bc/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5644e...f92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3a02ec...4dd245`](./contracts/blast-81457/0x3a02ecb17f26b1ab294396d4750a740d774dd245/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d5e0f...32048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/) | V4Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
