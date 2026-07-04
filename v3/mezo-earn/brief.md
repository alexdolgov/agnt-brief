# Agentic Audit Brief: Mezo Earn

## Project Overview

- Project: Mezo Earn (`mezo-earn`)
- Website: [https://mezo.org/earn/lock](https://mezo.org/earn/lock)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:27.478Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 82 unique implementations (113 raw deployments)
- DeFi Llama TVL: $57,038,797.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Governance Incentives. Structurally: 114 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 26 common project-authored base contract(s) (erc20withpermit, checkpoints, authorizations). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mellow Protocol** (`mellow-protocol`) in the AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, BondedECDSAKeepFactory, BridgeGovernance, … subsystem.
16 audits inherited from `mellow-protocol`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 268; live-surface contracts included: 104 (76 live, 28 unknown).
- Excluded by liveness: 164 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 36/54 (66.7%)
- Deployed-live implementations: 54 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 36/54
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 82
- Raw deployments: 113
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 1 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 27 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 66.7% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 36 | 66.7% | 2022 |
| ChainSecurity | Tier 1 | 36 | 66.7% | n/a |
| N/A | Tier 2 | 36 | 66.7% | 2025-11 |
| Nethermind | Tier 2 | 36 | 66.7% | 2026-03 |
| Pessimistic | Tier 2 | 36 | 66.7% | n/a |
| Sherlock | Tier 1 | 36 | 66.7% | n/a |
| StateMind | Tier 2 | 36 | 66.7% | n/a |
| yAudit | Tier 2 | 36 | 66.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/); ethereum `0x2ada2d...dfdbf2` | ✅ Audited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ✅ Audited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ✅ Audited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ✅ Audited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/); ethereum `0xa7d9e8...2e40bd` | ✅ Audited |
| BridgeGovernance | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/); ethereum `0xf286ea...230b45` | ✅ Audited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ✅ Audited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ✅ Audited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ✅ Audited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ✅ Audited |
| GrantStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/); ethereum `0x1293a5...a15458` | ✅ Audited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ✅ Audited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x292c9f...67ae28`](./contracts/ethereum-1/0x292c9fdf2e2475599cbe350cc473c221bd67ae28/) | ✅ Audited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x50510e...94aafd`](./contracts/ethereum-1/0x50510e691c90ea098e3fdd23c311731bf394aafd/) | ✅ Audited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ✅ Audited |
| MaintainerProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/); ethereum `0xcf29ff...a8df2b` | ✅ Audited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/); ethereum `0x529315...f4477e` | ✅ Audited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13916d...40686a`](./contracts/ethereum-1/0x13916d0dab357dcbaa1600b594d62c641840686a/); ethereum `0xce09df...85ce32` | ✅ Audited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2eea07...84623c`](./contracts/ethereum-1/0x2eea07a362baf48ac08d77e4ac4934f56584623c/); ethereum `0xdf7feb...b521cf` | ✅ Audited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30a0e1...feb40d`](./contracts/ethereum-1/0x30a0e1ef6b647cdd9693fd06cc23b7c2c8feb40d/); ethereum `0x6cf4b4...8d5fc4` | ✅ Audited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d8154...977a5f`](./contracts/ethereum-1/0x5d81545f6be014fae6a7084f7d977de910977a5f/); ethereum `0xf5a089...ad592b` | ✅ Audited |
| Portal | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/); ethereum `0x2dfdeb...88076b`; ethereum `0x3bba45...23548e`; ethereum `0xd7097a...46fe60`; ethereum `0xeaaf2b...502216` | ✅ Audited |
| Portal | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/); ethereum `0xb3696c...ab64d8` | ✅ Audited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ✅ Audited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ✅ Audited |
| RiskManagerV1 | unknown | ethereum | n/a | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ✅ Audited |
| SortitionPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/); ethereum `0xc2731f...5bb4dc` | ✅ Audited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ✅ Audited |
| TBTCVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/); ethereum `0x9c0700...4fe3cd` | ✅ Audited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ✅ Audited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ✅ Audited |
| WalletCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/); ethereum `0x64ea4b...420093` | ✅ Audited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x9eae6e...ad32ba`](./contracts/ethereum-1/0x9eae6e8e99d27d377f1ea0659b0cb16ce8ad32ba/) | ✅ Audited |
| WalletRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/); ethereum `0xfbae13...0398fb` | ✅ Audited |
| WalletRegistry | unknown | ethereum | n/a | [`0x46d52e...5204eb`](./contracts/ethereum-1/0x46d52e41c2f300bc82217ce22b920c34995204eb/) | ✅ Audited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreMultiAssetVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/); ethereum `0xb33d93...e2cb19` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10b4c3...6a5438`](./contracts/ethereum-1/0x10b4c343f0e992c1ff12f6ec874fadfee36a5438/); ethereum `0x2ba614...9313d1` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d50d7...889c24`](./contracts/ethereum-1/0x1d50d75933b7b7c8ad94dbfb748b5756e3889c24/); ethereum `0x98f3aa...82f7d7` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/); ethereum `0x7e184b...8fc756` | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x5e4861...0e8e7b`](./contracts/ethereum-1/0x5e4861a80b55f035d899f66772117f00fa0e8e7b/) | ⚠️ Unaudited |
| BridgeFeeManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/); ethereum `0x409968...c5a90b` | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/); ethereum `0xb90fda...e20122` | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/); ethereum `0x285a02...bcb589`; ethereum `0xea332f...d9d86c` | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e994d...6b6cd9`](./contracts/ethereum-1/0x7e994d7fc7a2c3cad2331dadb07902f3a46b6cd9/); ethereum `0xf6680e...e6908c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x16a76d...b5c706`](./contracts/ethereum-1/0x16a76d3cd3c1e3ce843c6680d6b37e9116b5c706/); ethereum `0x260ca2...681734`; ethereum `0x7affa0...92008e` | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/); ethereum `0xbfd04e...cf1daf` | ⚠️ Unaudited |
| stBTC | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x1ed725...fec1dd`](./contracts/ethereum-1/0x1ed72544a6a538f225335b9725b3d8ae2efec1dd/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x76ddb3...d18d3e`](./contracts/ethereum-1/0x76ddb3f1dde02391ef0a28664499b74c29d18d3e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x920871...9283b1`](./contracts/ethereum-1/0x920871af2d4106e76d204fea7122fa129c9283b1/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0xb7c552...2f7017`](./contracts/ethereum-1/0xb7c552be9d410ecc2c1aeda0e1c93a3d8d2f7017/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0xc3b5d8...5df77c`](./contracts/ethereum-1/0xc3b5d8371f341bc235d4e1e63ab06e42875df77c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x122a60...d280bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2663a2...c5d2b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305cab...45d240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32574c...6385b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x350df6...de47cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41d6f5...5d33a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55021f...899e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c2ae6...0a0f3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f49b3...a2369f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x744596...4c5340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x978e57...27bb88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97fb21...5a6b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b4e39...faa3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa10ad2...9bc747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ab95...d7d6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa981a3...8b5d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaac423...65b71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb08e45...04c637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0ee3a...ca4f61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc065e0...e785f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc08dcc...e5fda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e0b2...c09e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6f2c3...a92915` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf6542...41f4c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5408c...cd468e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeec3e1...63239b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf816cf...cff738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf94d0d...3ffc17` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022 | stale | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 55 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=880

Fork inheritance lineage and inherited audits are included when available.
