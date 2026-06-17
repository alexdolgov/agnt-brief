# Agentic Audit Brief: SingularV

⚠️ Lifecycle status: DECLINING - TVL dropped 37.3% over 90 days

## Project Overview

- Project: SingularV (`singularv`)
- Website: [https://app.morpho.org/ethereum/curator/singularv](https://app.morpho.org/ethereum/curator/singularv)
- Lifecycle: declining (Tier 0, 92.8% below peak)
- Generated: 2026-06-17T22:51:19.122Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: ethereum
- Contract surface: 49 unique implementations (121 raw deployments)
- DeFi Llama TVL: $1,489,797.97
- On-chain TVL (included contracts): $1,083,752,316.28
- TVL by chain: Ethereum $1,083,752,316.28

## Project Description

SingularV is a Morpho risk curator and onchain market-making firm focused on optimization and risk management for Morpho-curated vaults and markets. Morpho core contracts, Morpho periphery, Chainlink oracles, standard tokens, and migration tooling should be treated as upstream or third-party dependencies unless direct SingularV ownership is evidenced.

### Architecture

The Tokenized Supply Vaults and Vaults families represent the core user-facing products, while the Ethereum family provides the necessary infrastructure (adapters, factories, bundlers) to interact with external protocols like Aave and Compound. The Oracles family supplies critical price data to these vaults and migration tools, and the legacy Morpho V0 contracts serve as the foundational lending layer that some components may still rely on.

## Contract Surface Quality

- Indexed contracts: 781; live-surface contracts included: 121 (108 live, 13 unknown).
- Excluded by liveness: 658 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 8/13 live.
- Detected codebases: aave-v2
- Unverified dependencies: 3/44.

## Audit Coverage Summary

- Verified implementations audited: 20/49 (40.8%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 49
- Raw deployments: 121
- Audits discovered: 30
- Scoreable audits (matched contracts): 21
- ASD (verified + unaudited TVL): $23,919.49
- Latest audit: 2025-12 (fresh)
- Staleness: 11 fresh, 6 aging, 11 stale, 2 unknown
- Tier 1 coverage: 40.8% (Certora, ChainSecurity, OpenZeppelin, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $23,919.49 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 11 | 22.4% | 2025-01 |
| Spearbit | Tier 1 | 11 | 22.4% | 2025-12 |
| ChainSecurity | Tier 1 | 8 | 16.3% | 2025-09 |
| Blackthorn | Tier 2 | 4 | 8.2% | 2025-12 |
| Zellic | Tier 2 | 3 | 6.1% | 2025-07 |
| Certora | Tier 1 | 2 | 4.1% | 2025-12 |
| Competition | Tier 2 | 2 | 4.1% | 2025-07 |
| ABDK | Tier 2 | 1 | 2.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x0bf016...eaa334`](./contracts/ethereum-1/0x0bf0164d17469241b6e086da4016dcc54feaa334/); ethereum `0x23f5e9...8e1e11`; ethereum `0x6dc58a...80e6bf`; ethereum `0x8c106e...afa3d0`; ethereum `0x91600e...1be7d8`; ethereum `0xa2eaad...7d68cd`; ethereum `0xb57676...559fb2`; ethereum `0xbeef08...ef0f51`; ethereum `0xbeeff0...b96210`; ethereum `0xbeeff0...4aa98a`; ethereum `0xbeeff2...fca757`; ethereum `0xc21b08...b38bbd`; ethereum `0xe15fcc...4e11e0`; ethereum `0xf39ac0...56256b`; ethereum `0xf7c83e...441de6` | ✅ Audited |
| VaultV2 | core_logic | ethereum | unit-33472 | [`0xbeef0c...5ddb2f`](./contracts/ethereum-1/0xbeef0c075da5d01112ae5cf34d257074fb5ddb2f/) | ✅ Audited |
| AaveV2MigrationBundler | operational_periphery | ethereum | n/a | [`0xb3dcc7...aa8e76`](./contracts/ethereum-1/0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76/) | ✅ Audited |
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | ✅ Audited |
| EthereumBundler | unknown | ethereum | n/a | [`0xa7995f...f55107`](./contracts/ethereum-1/0xa7995f71aa11525db02fc2473c37dee5dbf55107/) | ✅ Audited |
| MetaMorphoFactory | registry | ethereum | n/a | [`0xa9c3d3...c41101`](./contracts/ethereum-1/0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101/) | ✅ Audited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x739d8a...092237`](./contracts/ethereum-1/0x739d8a60ed4b14e4cb6dcaeaf79d2ec0ca092237/); ethereum `0xbdd485...8a1372`; ethereum `0xd34687...bddf43` | ✅ Audited |
| MetaMorphoV1_1Factory | registry | ethereum | n/a | [`0x1897a8...535c24`](./contracts/ethereum-1/0x1897a8997241c1cd4bd0698647e4eb7213535c24/) | ✅ Audited |
| Morpho | unknown | ethereum | unit-33460 | [`0x33333a...b33333`](./contracts/ethereum-1/0x33333aea097c193e66081e930c33020272b33333/) | ✅ Audited |
| Morpho | unknown | ethereum | unit-33468 | [`0x777777...f5f3e0`](./contracts/ethereum-1/0x777777c9898d384f785ee44acfe945efdff5f3e0/) | ✅ Audited |
| Morpho | unknown | ethereum | unit-33469 | [`0x888888...b58888`](./contracts/ethereum-1/0x8888882f8f843896699869179fb6e4f7e3b58888/) | ✅ Audited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ✅ Audited |
| MorphoMarketV1AdapterV2Factory | adapter | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ✅ Audited |
| MorphoVaultV1AdapterFactory | adapter | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ✅ Audited |
| PreLiquidationFactory | registry | ethereum | n/a | [`0x6ff336...f83476`](./contracts/ethereum-1/0x6ff33615e792e35ed1026ea7caccf42d9bf83476/) | ✅ Audited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0xfd32fa...91c75d`](./contracts/ethereum-1/0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d/) | ✅ Audited |
| RegistryList | registry | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ✅ Audited |
| UniversalRewardsDistributor | operational_periphery | ethereum | n/a | [`0x330eef...e61ddb`](./contracts/ethereum-1/0x330eefa8a787552dc5cad3c3ca644844b1e61ddb/) | ✅ Audited |
| UrdFactory | registry | ethereum | n/a | [`0x9baa51...ee7c8d`](./contracts/ethereum-1/0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d/) | ✅ Audited |
| VaultV2Factory | registry | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SupplyVault | core_logic | ethereum | unit-33461 (6 proxies) | 6 deployments: ethereum [`0x36f8d0...44cab6`](./contracts/ethereum-1/0x36f8d0d0573ae92326827c4a82fe4ce4c244cab6/); ethereum `0x490bbb...26aba4`; ethereum `0x9dc709...8a190c`; ethereum `0xa5269a...db0529`; ethereum `0xafe713...4aac2f`; ethereum `0xd508f8...188dc7` | ⚠️ Unaudited |
| AaveV2MigrationAdapter | operational_periphery | ethereum | n/a | [`0x402888...87961b`](./contracts/ethereum-1/0x40288815c399709dfc0875a384b637ffe387961b/) | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x2cc8d5...bdb806`](./contracts/ethereum-1/0x2cc8d502a65824b4cf9a58db03490ba024bdb806/); ethereum `0x4011dc...a59ca3`; ethereum `0xb09e40...07d475` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | operational_periphery | ethereum | n/a | [`0x9e2ea2...5ad972`](./contracts/ethereum-1/0x9e2ea2d5785598a163d569d795f286f5c55ad972/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | ethereum | n/a | 49 deployments: ethereum [`0x015ed4...86a93f`](./contracts/ethereum-1/0x015ed43189744c314eda90162d8a2f310186a93f/); ethereum `0x065968...e5a119`; ethereum `0x126fc6...9ad2dd`; ethereum `0x179e97...bd616e`; ethereum `0x1a6e19...210025`; ethereum `0x2878f0...ecb957`; ethereum `0x31a53a...09189e`; ethereum `0x366082...9e405c`; ethereum `0x37bbd8...fe0eb4`; ethereum `0x3a79e9...86f148`; ethereum `0x3d9b67...d13145`; ethereum `0x3dba84...9f0973`; ethereum `0x46dad8...2d9eac`; ethereum `0x484c56...76e3a0`; ethereum `0x587bb3...10e299`; ethereum `0x64d0d7...b95adc`; ethereum `0x6a2525...e0e553`; ethereum `0x6c383b...f45baa`; ethereum `0x6eedbc...27d72e`; ethereum `0x76ef59...de7b60`; ethereum `0x76f130...24dc63`; ethereum `0x838a42...2f73d4`; ethereum `0x861920...7cfd47`; ethereum `0x89b26d...85688c`; ethereum `0x8a9925...565edb`; ethereum `0x8ba1dd...6ab7cb`; ethereum `0x8d8677...58a7ee`; ethereum `0x98ef9b...93d505`; ethereum `0x9efa37...fe50ff`; ethereum `0xa616f4...d31fb5`; ethereum `0xaa7593...0c6a2c`; ethereum `0xad5097...e1ab58`; ethereum `0xb33706...0e8e91`; ethereum `0xbba888...513766`; ethereum `0xbbf68c...ea13fb`; ethereum `0xc134b0...97bcab`; ethereum `0xc4b772...5ef67f`; ethereum `0xc53bc4...3c587c`; ethereum `0xc53cc2...ffc415`; ethereum `0xcaa453...4ffa20`; ethereum `0xcbba3f...e9b683`; ethereum `0xd5b220...0143fa`; ethereum `0xdc6311...7692ae`; ethereum `0xe00cac...3571a4`; ethereum `0xefd14b...cd4a58`; ethereum `0xf650f2...1f77f8`; ethereum `0xfceeea...a0cf05`; ethereum `0xfe24ad...d6498d`; ethereum `0xfec831...1af7d3` | ⚠️ Unaudited |
| Bundler3 | unknown | ethereum | n/a | [`0x656619...c90245`](./contracts/ethereum-1/0x6566194141eefa99af43bb5aa71460ca2dc90245/) | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | operational_periphery | ethereum | n/a | [`0x9b89c0...8f1101`](./contracts/ethereum-1/0x9b89c07f480df1945279031b5fc6ff241b8f1101/) | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | operational_periphery | ethereum | n/a | [`0xdba5bd...b26773`](./contracts/ethereum-1/0xdba5bde29ea030bfa6a608592dfca1d02cb26773/) | ⚠️ Unaudited |
| DelayedERC4626Oracle | operational_periphery | ethereum | n/a | [`0x363fff...c52321`](./contracts/ethereum-1/0x363fffe9e293df351fec24bde69954c472c52321/) | ⚠️ Unaudited |
| DummyFeed | unknown | ethereum | n/a | [`0xc3866d...88973d`](./contracts/ethereum-1/0xc3866d726c204c0836e0677a31973c649888973d/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x8fffff...6818f6`](./contracts/ethereum-1/0x8fffffd4afb6115b954bd326cbe7b4ba576818f6/) | ⚠️ Unaudited |
| ERC20WrapperAdapter | adapter | ethereum | n/a | [`0xf83d17...87f962`](./contracts/ethereum-1/0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962/) | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | ethereum | unit-33463 | [`0x4095f0...e30077`](./contracts/ethereum-1/0x4095f064b8d3c3548a3bebfd0bbfd04750e30077/) | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | adapter | ethereum | n/a | [`0x4a6c31...be0ae0`](./contracts/ethereum-1/0x4a6c312ec70e8747a587ee860a0353cd42be0ae0/) | ⚠️ Unaudited |
| Lens | periphery | ethereum | unit-33465 | [`0x507fa3...a91ff4`](./contracts/ethereum-1/0x507fa343d0a90786d86c7cd885f5c49263a91ff4/) | ⚠️ Unaudited |
| Lens | periphery | ethereum | unit-33470 | [`0x930f1b...51ef67`](./contracts/ethereum-1/0x930f1b46e1d081ec1524efd95752be3ece51ef67/) | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | operational_periphery | ethereum | n/a | [`0x44d049...17a9f4`](./contracts/ethereum-1/0x44d049eed4ad33807859c45bbd3a8eb47917a9f4/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | ethereum | n/a | [`0x95e85f...24bd87`](./contracts/ethereum-1/0x95e85fef34b79f0030f41fb619733bf7e024bd87/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | ethereum | n/a | [`0x3a7bb3...3ad766`](./contracts/ethereum-1/0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766/) | ⚠️ Unaudited |
| MorphoOFTAdapter | adapter | ethereum | n/a | [`0x50d3d6...5649d9`](./contracts/ethereum-1/0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9/) | ⚠️ Unaudited |
| MorphoToken | token | ethereum | n/a | [`0x9994e3...330999`](./contracts/ethereum-1/0x9994e35db50125e0df82e4c2dde62496ce330999/) | ⚠️ Unaudited |
| MorphoTokenEthereum | token | ethereum | unit-33466 | [`0x58d97b...69c2b2`](./contracts/ethereum-1/0x58d97b57bb95320f9a05dc918aef65434969c2b2/) | ⚠️ Unaudited |
| ParaswapAdapter | adapter | ethereum | n/a | [`0x03b525...c6c38f`](./contracts/ethereum-1/0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f/) | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | n/a | [`0xcd0066...48ab77`](./contracts/ethereum-1/0xcd0066ec3f96afe3f6015539d16def2ce648ab77/) | ⚠️ Unaudited |
| SwapperERC4626 | adapter | ethereum | n/a | [`0x8458ea...31c9bf`](./contracts/ethereum-1/0x8458ea952f406bf49d90447c664615a30f31c9bf/) | ⚠️ Unaudited |
| SwapperSimpleUniV3 | adapter | ethereum | n/a | [`0x45241b...33d54a`](./contracts/ethereum-1/0x45241b97afbe5b9883b8439615d9f7e28033d54a/) | ⚠️ Unaudited |
| Vester | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x21aef9...a16e60`](./contracts/ethereum-1/0x21aef9afc97301c9db61e45179dff1115ca16e60/); ethereum `0x229ad3...770bfc` | ⚠️ Unaudited |
| Wrapper | unknown | ethereum | n/a | [`0x9d03bb...0e5123`](./contracts/ethereum-1/0x9d03bb2092270648d7480049d0e58d2fcf0e5123/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-11-13-morpho-blue-cantina-managed-review.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-11-13-morpho-blue-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [2024-01-05-morpho-blue-cantina-competition.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2024-01-05-morpho-blue-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 5 | medium |
| [2023-11-14-metamorpho-cantina-managed-review.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho/blob/main/audits/2023-11-14-metamorpho-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [2024-01-05-periphery-cantina-competition.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho/blob/main/audits/2024-01-05-periphery-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 4 | high |
| [Spearbit_MorphoV1.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/Spearbit_MorphoV1.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | contract_name | 4 | medium |
| [TrailOfBits_Morpho_Compound.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/TrailOfBits_Morpho_Compound.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [omniscia-report](https://omniscia.io/reports/morpho-specialized-token) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lexfo_250523.pdf](https://cdn.morpho.org/documents/Lexfo_250523.pdf) | Lexfo | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [MorphoDAO_Frontend_04042022.pdf](https://cdn.morpho.org/documents/MorphoDAO_Frontend_04042022.pdf) | Securing | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2025-05-19-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 16 | high |
| [2025-07-15-competition.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-competition.pdf) | Competition | Audit | 2025-07 | fresh | Direct | contract_name | 16 | medium |
| [2025-07-15-zellic.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | fresh | Direct | contract_name | 17 | high |
| [2025-08-11-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 16 | high |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Direct | contract_name | 18 | high |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 18 | high |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 16 | high |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [2024-10-29-pre-liquidation-spearbit.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-10-29-pre-liquidation-spearbit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [2024-11-01-pre-liquidation-ABDK-consulting.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-11-01-pre-liquidation-ABDK-consulting.pdf) | ABDK | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [2023-11-16-morpho-blue-periphery-open-zeppelin.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-16-morpho-blue-periphery-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 5 | high |
| [2024-09-23-metamorpho-diff-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-09-23-metamorpho-diff-cantina-managed-review.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2025-01-10-metamorpho-v1.1-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-01-10-metamorpho-v1.1-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | 4 | high |
| [2025-02-20-metamorpho-v1.1-cantina-managed.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-02-20-metamorpho-v1.1-cantina-managed.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-03-11-morpho-public-allocator-cantina-managed.pdf](https://github.com/morpho-org/public-allocator/blob/main/audits/2024-03-11-morpho-public-allocator-cantina-managed.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x656619...c90245`](./contracts/ethereum-1/0x6566194141eefa99af43bb5aa71460ca2dc90245/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x363fff...c52321`](./contracts/ethereum-1/0x363fffe9e293df351fec24bde69954c472c52321/) | DelayedERC4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf83d17...87f962`](./contracts/ethereum-1/0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962/) | ERC20WrapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4095f0...e30077`](./contracts/ethereum-1/0x4095f064b8d3c3548a3bebfd0bbfd04750e30077/) | EthereumBundlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a6c31...be0ae0`](./contracts/ethereum-1/0x4a6c312ec70e8747a587ee860a0353cd42be0ae0/) | EthereumGeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507fa3...a91ff4`](./contracts/ethereum-1/0x507fa343d0a90786d86c7cd885f5c49263a91ff4/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8458ea...31c9bf`](./contracts/ethereum-1/0x8458ea952f406bf49d90447c664615a30f31c9bf/) | SwapperERC4626 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45241b...33d54a`](./contracts/ethereum-1/0x45241b97afbe5b9883b8439615d9f7e28033d54a/) | SwapperSimpleUniV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21aef9...a16e60`](./contracts/ethereum-1/0x21aef9afc97301c9db61e45179dff1115ca16e60/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d03bb...0e5123`](./contracts/ethereum-1/0x9d03bb2092270648d7480049d0e58d2fcf0e5123/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 21 |
| standard_library | 6 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=18, medium=3
- Match method counts: extraction_exact=181

Zero-match audit list:

- [8734] 2023-11-14-metamorpho-cantina-managed-review.pdf
- [8741] TrailOfBits_Morpho_Compound.pdf
- [14672] omniscia-report
- [14673] Lexfo_250523.pdf
- [14674] MorphoDAO_Frontend_04042022.pdf
- [14682] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf
- [14683] 2025-12-04-market-v1-adapter-v2-spearbit.pdf
- [14692] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf
- [14694] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf

Fork inheritance lineage and inherited audits are included when available.
