# Agentic Audit Brief: SingularV

## Project Overview

- Project: SingularV (`singularv`)
- Website: [https://app.morpho.org/ethereum/curator/singularv](https://app.morpho.org/ethereum/curator/singularv)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.334Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: ethereum
- Contract surface: 722 unique implementations (794 raw deployments)
- DeFi Llama TVL: $698,977.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 44 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 3 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 17 common project-authored base contract(s) (owned, coreadapter, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 794; live-surface contracts included: 794 (121 live, 673 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 20/49 (40.8%)
- Deployed-live implementations: 49 of 722 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 20/49
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 673
- Unique implementations: 722
- Raw deployments: 794
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 22
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 9 fresh, 8 aging, 12 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 40.8% (Certora, ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 11 | 22.4% | 2025-01 |
| Spearbit | Tier 1 | 11 | 22.4% | 2025-12 |
| ChainSecurity | Tier 1 | 8 | 16.3% | 2025-09 |
| Blackthorn | Tier 2 | 4 | 8.2% | 2025-12 |
| Trail of Bits | Tier 1 | 4 | 8.2% | 2022-07 |
| Zellic | Tier 2 | 3 | 6.1% | 2025-07 |
| Certora | Tier 1 | 2 | 4.1% | 2025-12 |
| Competition | Tier 2 | 2 | 4.1% | 2025-07 |
| ABDK | Tier 2 | 1 | 2.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2MigrationBundler | operational_periphery | ethereum | n/a | [`0xb3dcc7...aa8e76`](./contracts/ethereum-1/0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76/) | ✅ Audited |
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | ✅ Audited |
| EthereumBundler | unknown | ethereum | n/a | [`0xa7995f...f55107`](./contracts/ethereum-1/0xa7995f71aa11525db02fc2473c37dee5dbf55107/) | ✅ Audited |
| MetaMorphoFactory | registry | ethereum | n/a | [`0xa9c3d3...c41101`](./contracts/ethereum-1/0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101/) | ✅ Audited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x739d8a...092237`](./contracts/ethereum-1/0x739d8a60ed4b14e4cb6dcaeaf79d2ec0ca092237/); ethereum `0xbdd485...8a1372`; ethereum `0xd34687...bddf43` | ✅ Audited |
| MetaMorphoV1_1Factory | registry | ethereum | n/a | [`0x1897a8...535c24`](./contracts/ethereum-1/0x1897a8997241c1cd4bd0698647e4eb7213535c24/) | ✅ Audited |
| Morpho | unknown | ethereum | n/a | [`0x33333a...b33333`](./contracts/ethereum-1/0x33333aea097c193e66081e930c33020272b33333/) | ✅ Audited |
| Morpho | unknown | ethereum | n/a | [`0x777777...f5f3e0`](./contracts/ethereum-1/0x777777c9898d384f785ee44acfe945efdff5f3e0/) | ✅ Audited |
| Morpho | unknown | ethereum | n/a | [`0x888888...b58888`](./contracts/ethereum-1/0x8888882f8f843896699869179fb6e4f7e3b58888/) | ✅ Audited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ✅ Audited |
| MorphoMarketV1AdapterV2Factory | adapter | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ✅ Audited |
| MorphoVaultV1AdapterFactory | adapter | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ✅ Audited |
| PreLiquidationFactory | registry | ethereum | n/a | [`0x6ff336...f83476`](./contracts/ethereum-1/0x6ff33615e792e35ed1026ea7caccf42d9bf83476/) | ✅ Audited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0xfd32fa...91c75d`](./contracts/ethereum-1/0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d/) | ✅ Audited |
| RegistryList | registry | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ✅ Audited |
| UniversalRewardsDistributor | operational_periphery | ethereum | n/a | [`0x330eef...e61ddb`](./contracts/ethereum-1/0x330eefa8a787552dc5cad3c3ca644844b1e61ddb/) | ✅ Audited |
| UrdFactory | registry | ethereum | n/a | [`0x9baa51...ee7c8d`](./contracts/ethereum-1/0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d/) | ✅ Audited |
| VaultV2 | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x0bf016...eaa334`](./contracts/ethereum-1/0x0bf0164d17469241b6e086da4016dcc54feaa334/); ethereum `0x23f5e9...8e1e11`; ethereum `0x6dc58a...80e6bf`; ethereum `0x8c106e...afa3d0`; ethereum `0x91600e...1be7d8`; ethereum `0xa2eaad...7d68cd`; ethereum `0xb57676...559fb2`; ethereum `0xbeef08...ef0f51`; ethereum `0xbeeff0...b96210`; ethereum `0xbeeff0...4aa98a`; ethereum `0xbeeff2...fca757`; ethereum `0xc21b08...b38bbd`; ethereum `0xe15fcc...4e11e0`; ethereum `0xf39ac0...56256b`; ethereum `0xf7c83e...441de6` | ✅ Audited |
| VaultV2 | core_logic | ethereum | n/a | [`0xbeef0c...5ddb2f`](./contracts/ethereum-1/0xbeef0c075da5d01112ae5cf34d257074fb5ddb2f/) | ✅ Audited |
| VaultV2Factory | registry | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
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
| EthereumBundlerV2 | unknown | ethereum | n/a | [`0x4095f0...e30077`](./contracts/ethereum-1/0x4095f064b8d3c3548a3bebfd0bbfd04750e30077/) | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | adapter | ethereum | n/a | [`0x4a6c31...be0ae0`](./contracts/ethereum-1/0x4a6c312ec70e8747a587ee860a0353cd42be0ae0/) | ⚠️ Unaudited |
| Lens | periphery | ethereum | n/a | [`0x507fa3...a91ff4`](./contracts/ethereum-1/0x507fa343d0a90786d86c7cd885f5c49263a91ff4/) | ⚠️ Unaudited |
| Lens | periphery | ethereum | n/a | [`0x930f1b...51ef67`](./contracts/ethereum-1/0x930f1b46e1d081ec1524efd95752be3ece51ef67/) | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | operational_periphery | ethereum | n/a | [`0x44d049...17a9f4`](./contracts/ethereum-1/0x44d049eed4ad33807859c45bbd3a8eb47917a9f4/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | ethereum | n/a | [`0x95e85f...24bd87`](./contracts/ethereum-1/0x95e85fef34b79f0030f41fb619733bf7e024bd87/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | ethereum | n/a | [`0x3a7bb3...3ad766`](./contracts/ethereum-1/0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766/) | ⚠️ Unaudited |
| MorphoOFTAdapter | adapter | ethereum | n/a | [`0x50d3d6...5649d9`](./contracts/ethereum-1/0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9/) | ⚠️ Unaudited |
| MorphoToken | token | ethereum | n/a | [`0x9994e3...330999`](./contracts/ethereum-1/0x9994e35db50125e0df82e4c2dde62496ce330999/) | ⚠️ Unaudited |
| MorphoTokenEthereum | token | ethereum | n/a | [`0x58d97b...69c2b2`](./contracts/ethereum-1/0x58d97b57bb95320f9a05dc918aef65434969c2b2/) | ⚠️ Unaudited |
| ParaswapAdapter | adapter | ethereum | n/a | [`0x03b525...c6c38f`](./contracts/ethereum-1/0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f/) | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| SupplyVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x36f8d0...44cab6`](./contracts/ethereum-1/0x36f8d0d0573ae92326827c4a82fe4ce4c244cab6/); ethereum `0x490bbb...26aba4`; ethereum `0x9dc709...8a190c`; ethereum `0xa5269a...db0529`; ethereum `0xafe713...4aac2f`; ethereum `0xd508f8...188dc7` | ⚠️ Unaudited |
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

### ❓ Unverified (673)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00260d...a6cd78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0076af...a41254` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00a773...9d7c29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00cb80...eae050` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x010b33...6c0a67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x014356...c1d0f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01b87e...9e3bea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01ce12...d7e26c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x022790...2b8e86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x022ea9...77709e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x029849...5760e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02d4eb...f254a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x045b19...d1b285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x047eb4...02fe13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x050c04...cec58f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x056f86...50815c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05b83a...b1dd27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05d0b8...93727d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06812a...22cee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06e416...a62eb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x080874...f9f3a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0816bf...8a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0959da...060721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09619d...2bd644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0981af...5aca99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x099c95...0c46a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a4759...5fb065` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a8baf...72ca01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b0935...b28255` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b8b84...eeae4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bc779...f0c64f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bdb05...958274` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c4f3a...4036d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ca05b...0fe235` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cf321...e74539` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d60a2...04189e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e57bb...4d85be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ebdc6...adb475` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f2cea...2880f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f3d55...3d883c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f486f...8a50f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f6b59...c87df4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102fe4...225ae9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x104cd0...f104d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10e791...9b9be8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10ec2c...6c69ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x116657...c6a8e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11786f...371c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11832c...03a956` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x118727...ecc593` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x119388...080e26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x134fe0...b4fb82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x139c85...d43587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13b357...e9f455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x150da4...dfeb02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x152e19...8aa197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15c8ea...144352` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x162aa5...0a58db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x163099...7f89c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1692c6...fb64d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16a73e...40a867` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x178f92...33f007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17d054...09f1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x184168...4e5990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18ef1e...45c25e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1964b1...847816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19be85...8770a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19c22c...c1c506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19dfc7...e5bcc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a2418...2df601` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a4620...7c9c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a4b59...112b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ac49d...0884fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b0f8c...9a6159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b58b6...a36ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b61ba...70bb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b988a...c21b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c0a06...6c037e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c6e43...bf5791` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cedaa...576a4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2446...0d0dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d3afb...cdb4ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d9bfd...c309fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da561...a97c16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dec99...ca7a10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ec437...448eb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ecf81...8063cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f2461...c244a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f9eb0...39334a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fae3f...b7c6fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2006d5...8cfa49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20134c...1e96ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20df77...9198e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x213f30...9ffb23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21cbd7...a1e072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x232c59...db2b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x241c59...2e55f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2425fb...4e89c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x242db4...9dacee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24340e...dc56dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2465ce...e2a028` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24bf21...ab5770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x253974...f2a70f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2540ff...e73b3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x256b6e...5eb765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2659db...fc9789` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2662e5...c52989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26929b...a10fb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26b40e...004fc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2715d1...4456ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2729f4...b4bb05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x278833...80e143` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27aeef...de7a4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27b97a...aad056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2885d1...6c6023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28cc70...e832f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x299e74...59034b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29a5cb...c54af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d9ce...098ac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a29ec...07c63d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2abfc5...614df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b448f...b4ed77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c9a8c...f601c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ca42d...5b1275` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d5057...29ffd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e3bc7...16fd00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e4a8a...3719d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ecaf2...0cbb59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f2bc5...8217c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f2ea2...b32d63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x302ce0...e6cbce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3089db...f970cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x308b6e...4f77ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30ece5...a721c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x310ceb...4d4819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x313bb1...3a6f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31afd6...5ddfdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31c1ed...44d176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31daca...75a1bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31e0a8...296ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32a54c...7eb9da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33cca8...46352d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x341d3b...18dce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x341e42...565f4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x343fe9...3776de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3497a3...60f4b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35e3f7...36ec56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35f08e...457484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363eed...66a6e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365796...6b22a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36d399...070219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36fdcd...e4dba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x373bee...67d573` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3771be...38caaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3783ff...843061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37bc74...f6a9e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37d0ab...11bdfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x383090...e502d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x385826...4728ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x389316...bbd767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38c5ae...b4699b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38f709...1382c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3907ed...b3892a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39422f...98b50f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39a389...91631f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a4bde...83207f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a9ef5...b21ad6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ae20f...5b324d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3affc4...6dc74a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b15a9...45217d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b41d5...f02dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b9cf7...951eb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc60e...67661c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c5291...aa2c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d1fdf...77fb3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d47ef...453766` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7ae7...aba3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7fd1...71a639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9032...be7edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d970a...6b3474` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd66d...0d1183` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3df418...ca05c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e33c1...900c03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e59bc...2b6914` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7d1e...64e32d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e9a41...9e7f14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ee9e5...98fe16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404be4...b32055` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40b91a...bf3646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40b960...3ec1c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41358f...5cd7c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x418a6c...8b1685` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42a3b0...2b8dda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x439ea8...e8fc89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43cbd8...0c5075` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43cc04...5680e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x440c81...c64d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x445139...d50140` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x447454...290f1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44b1f8...25ef94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x458483...f0a2df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4592e4...dac6de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46848f...da944f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x470aa5...4a6724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x477716...8acf59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x478909...4ade0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483d36...a69fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x495d2f...6740e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x497bac...cf784c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49f3c5...b80527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a31bd...0d5ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b5fab...b7e00b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d2574...b10eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d76ae...abb33e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e58ab...785848` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e8644...0d592e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e8eab...f600ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ea6ec...618c0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f4f85...b7cb39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f7595...dd08c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ffa9a...6d27eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ffc43...f01507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50b723...46e8b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x510ba5...4c6310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5200f8...a02857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5276c2...96a629` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5299aa...812936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5343d1...e279ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536218...54c2d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x543624...034206` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5443bf...d86c22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545f61...de8eb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5586bf...80189c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561206...591555` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57560e...b57d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57c9ab...ba06a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57d4fb...a5e590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x586524...4a636b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x587738...fd2a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58921a...4a2379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c4b0...9f1773` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5957c8...90f9bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59ccf6...6c59d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59f24f...2de8ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a4081...f9e00d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ae8f5...77463f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c3d13...b39d22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d7d68...c7bc89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3d02...4ce346` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f683b...ba04ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fb391...5a5745` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x605d5c...9bc360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x608d47...f85b00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60cbe8...11fea1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60eefe...b8873d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x611465...977850` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x611850...828b85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x611e0d...015921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b579...f67e1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61d614...81a5db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x625cd5...23a5f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x630163...9c5cb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6369fd...a1b2a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63bba8...a477d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64d1bb...dee98d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64db7b...a515ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64ff36...a8d0d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x650a61...1dc49c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x653870...0c34f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657fe4...8ce6ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65a773...dbc232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x663040...3e093b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x674ecf...75944a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67ab75...5b2046` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67c2e6...605dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x681c0b...192cce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68577f...84fd38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68aa37...c1593f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68cb58...385afa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ff67...d8c4ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6907f9...2dc06d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6940ef...ebf0de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x698e02...1a434a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69b42d...2fa868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b54e8...2167b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bd37c...1f2849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c8e01...35e6c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cea38...1bc0c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cec54...f71e36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3273...89891f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e4508...99a852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6eac85...69e6d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ebc52...c2233f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ec687...5a7385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f941e...e99b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f9d4d...e79aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fca29...d3b61c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x715614...ab863e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x716bb7...0e1573` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x717a27...521d7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71aafd...b078c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71c8d4...53bf44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x721aae...78423b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x724d08...0f3a05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72d227...5e6938` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72da6d...45a27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fc55...547e2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7327f3...fdd082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x736e09...c4d5d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x737795...33f4fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73a11e...09fb75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73dc1b...e6af07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73f4b4...ca0f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73fcce...49fbda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74e1fb...ad5bd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x755748...93e78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x759639...b81e00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x759bbc...976d02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75d22b...7204d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75d9e4...d87581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75db8b...fa1ff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75e7c3...814de8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x763625...9a250a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x764fb9...cc5c52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7694fa...a69200` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76e5c2...733e6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772d25...8028d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x785433...4530d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7866a5...edeed6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x789190...42a26c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b507f...1d1e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b5a9c...74e8de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b9276...2b9a42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf3ad...1c548b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d096e...a3a1c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d77fd...c55fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8bd7...876bc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ece4e...726797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eed37...cc21ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f3022...bda9a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80b4ca...b6c52d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x812436...626674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82597c...759607` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82cf29...3e0672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82e723...c3a864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x833d8e...60965a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83441c...7e6fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83ee2e...a945d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84e51a...5efcb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x851ec5...b0fe02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x855407...8a2281` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x857ff8...67acc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x861dcd...9837f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x862d7e...d04549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86392d...c52812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86979c...616f4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86cf33...65a5d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86e345...7da6ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x875d60...91b97e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8797ab...35e3d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8814ef...be8e17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x883ba6...540201` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x891780...050622` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x899411...57d9fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89c792...b578f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f520...d845eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a25a7...3168c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a4320...ca323a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a5f90...f2bddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b1139...cef3b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b11ce...b6e206` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b86cd...63c87e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c318f...060d5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cf88b...ebf537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d213c...a043d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd1cd...a97c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8df9de...9b43d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e0ae6...fd333e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e7ae4...f67b4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8eaf61...d8a132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f226f...8ddcaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fa444...9dc868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fd7b5...59e47e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fe5f6...10c4b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8feccb...4b1342` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9056d4...4696d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x908edc...7d83ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90f6f7...834ce5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x910bd3...ee1321` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91401c...33e998` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x919c77...2dd19f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x926a93...313363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x927f78...5e9b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92877b...855236` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9288c1...b29254` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x935939...b30d3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9364a7...16abd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x939624...2da064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x939f37...469588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x953da5...310f6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95cdcf...9434b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x960cf9...ccf602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9613a5...448739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x963fe1...baccde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96450a...c47d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x966a8c...2bec6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96c455...10f4e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x971e8f...5eee0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97bb0e...b2e21e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e4f2...f944e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98334b...d69c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989b83...400ad7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98da11...226d4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99c111...4ee6ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99ce8d...29c873` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9adf01...481ae5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ae961...9e543e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b41ad...f25bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bb96b...b1571c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bbcd5...5abfb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c34f0...72bb3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c3cf5...e9da9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ca359...8ababf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb248...a71fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d7809...652559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dcbea...fae0bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9de3b3...176a0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ed0d1...bce383` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f0052...9c6718` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f075e...1121ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f3aec...e3c9dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fccf4...4b5751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fe84f...d1f38c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa05dbc...f69a2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1b2e8...d5754b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa20623...a5a03a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa27cfd...07cdd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2960b...fbf172` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa34317...981c8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3603c...270985` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa39b67...0d0f69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3a4c4...667884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa51b67...e0a793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa549bc...6839b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5814c...fd6394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5f1a4...f459d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa60227...358db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa61495...ea4727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6bcac...d989ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d9d3...524310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6fa15...7187b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa767f7...985627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7becd...c81698` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7cc7f...f43e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7f36c...8ec75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8156e...44184a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa86ae3...6c77fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa89369...8bfe41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8f16c...71df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8f4e5...29964e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9069b...146034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96427...6e8f93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9b7bb...e6aacc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9ca15...e39cfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9cdfd...813852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9f3fc...3ac92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5aa8...203f70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa69d9...74db6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaab2f6...557756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab137e...16f893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab8046...46c71a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba1ea...3b70e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac099d...f030b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac6f42...ae8ba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaca3f1...75f560` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacd301...0a929f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacd365...b9d441` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad35bd...f9ad94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad940e...f11b9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcd1b...7c13ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae13f0...9bbf05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae2ebe...cd816e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae60ec...d384e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae74fa...a34da7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf5e8d...1588a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb06115...b45bb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb09fc5...f477b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1362f...d5cba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1959a...5b15bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2556f...697de7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb27102...b77e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb28b46...90d1c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ab82...803670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ad16...935865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2dde9...16874e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ed43...16d57a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2f68c...63411e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3a074...256c51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3a474...9fb959` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4bfba...271a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6b26e...ed21a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f944...475c63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8169f...b036a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb83aac...405e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb864d9...d0d1fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb89519...4c783e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8cc37...38b50c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9583c...b92216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba0b7f...46c3c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbc9ab...879633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcf115...564e85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcf579...902539` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe456f...cb75d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf1296...25dbfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf86e7...566b06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfa807...70b441` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc189...b75534` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc04126...960fa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc043cf...b8c1b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc111d8...622bba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1d1d0...13a1f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1da2e...914029` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2d777...3efe00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2e47b...92df9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc330d2...fdcc73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3c547...c83ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3dc04...672bc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc40ec8...a37ff2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc44b2b...72ba2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc47bca...c37205` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4aa0d...524489` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5c8c9...c6f603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc68fc1...ff5585` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc697fc...1a17d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc73a74...7ebf97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc741f6...935e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7bb32...ca2dfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8002b...1bbc22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8679d...1abaf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc86834...a4add7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc88058...79dd4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8dcca...feba96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94608...17aff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc96129...60305b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb3b43...90a83e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbe555...083e2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc20c0...e4785a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc2c81...8e0959` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc3387...f6ee5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc5786...686e67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd0770...53b29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce1051...657a7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcecc75...93f869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcef0cc...3298c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfc5de...bd285d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe54b...cab4a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd009e5...cb5dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0ac37...607c66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0b34c...527f36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd208ba...4d010c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3cdf3...d152dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3a8...0c138c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd41390...ce75ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd423c9...a4f329` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd48b96...bc6e3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd54b03...848501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59199...a92a13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5df4f...48dad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd663f0...a4c635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6a3a9...3af3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6cc08...91c7a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7e517...52a8a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88b87...ae7c06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd90ca9...7a47e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda31bc...7ba196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaeb40...c7f009` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb299d...f92f5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0a51...78d75a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc270a...e43316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc4bdb...2edc75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd722a...648d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf5e7...018e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddff74...456243` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeaa42...20fc36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdebc51...92009a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdec0a1...f90b82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdee402...e450ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf14ce...3208f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf3024...7fbd23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf627a...3b10ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9a9d...3f9eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9f75...0f7606` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfd03b...42d0fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfd652...e931c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe04b9c...7518ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe04cdc...0a405b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1bcc8...3e2c2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe20ca8...f57706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe25177...12c0fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe25277...1f3e13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe28371...8e5629` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2d6d8...389017` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2f408...9e5b85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe384f1...411a72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe44175...4f15f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe48498...87fec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe49ca2...6503bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6a7b5...50a01c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6a899...f5a39a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6dcf0...b8ea48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7015c...ac3741` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7abf9...0e577b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7b01f...29de33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe87f1a...44a862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93dae...7c5922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9f18f...4601e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea286b...890596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaf04b...9e747d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeafd23...d5882a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8c63...84281b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb988b...2d3cab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebbb2b...0e0e55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebc5cc...fbd250` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec0bc4...665024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec180e...6ec4c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec1b14...e8db9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec1d1b...9484aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedd4dc...966efc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee636e...39d40d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeef344...2b39fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0a74...c52336` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8a4a...a7759a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef9fd1...9f62a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb6af...663cd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefcbea...a70fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf05d9b...a13deb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0985f...382efe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14278...1c1890` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14dc5...ebd16b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2329d...9afb02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c80a...ea6045` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf322fb...68c49f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf36b87...73d441` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3bc73...20e845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ccb2...255b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf493f4...c200f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4a57f...f43115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf52b4f...8e7479` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5ed5a...c2386b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5ef31...7b98eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf62356...47505c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7660f...44d860` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86878...933eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8d0ea...1b097f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf91321...36e814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9fcc6...6eee67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaaa74...2e6ad6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb1a28...b4a8e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb2646...7dda2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb576b...ee973c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc2307...81f4ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc42d1...426aa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcf181...246385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd73ab...04a6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdfa69...c02237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe549d...8a2e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe6720...e958df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8367...a40d5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe9fae...8d8d3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff330e...0a8ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff5e54...baa57c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffdb50...a100ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffe4b3...3c08fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-11-13-morpho-blue-cantina-managed-review.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-11-13-morpho-blue-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 4 | n/a |
| [2024-01-05-morpho-blue-cantina-competition.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2024-01-05-morpho-blue-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 5 | n/a |
| [2023-11-14-metamorpho-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho/blob/main/audits/2023-11-14-metamorpho-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [2024-01-05-periphery-cantina-competition.pdf](https://github.com/morpho-org/metamorpho/blob/main/audits/2024-01-05-periphery-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |
| [ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 4 | n/a |
| [Spearbit_MorphoV1.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/Spearbit_MorphoV1.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | contract_name | 4 | n/a |
| [TrailOfBits_Morpho_Compound.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/TrailOfBits_Morpho_Compound.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | contract_name | 4 | high |
| [omniscia.io/reports/morpho-specialized-token](https://omniscia.io/reports/morpho-specialized-token) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lexfo_250523.pdf](https://cdn.morpho.org/documents/Lexfo_250523.pdf) | Lexfo | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [MorphoDAO_Frontend_04042022.pdf](https://cdn.morpho.org/documents/MorphoDAO_Frontend_04042022.pdf) | Securing | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2025-05-19-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [2025-07-15-competition.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-competition.pdf) | Competition | Audit | 2025-07 | aging | Direct | contract_name | 2 | n/a |
| [2025-07-15-zellic.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | 3 | n/a |
| [2025-08-11-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 2 | n/a |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Direct | contract_name | 4 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 4 | n/a |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 2 | n/a |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 2 | n/a |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | n/a |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 2 | n/a |
| [2024-10-29-pre-liquidation-spearbit.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-10-29-pre-liquidation-spearbit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [2024-11-01-pre-liquidation-ABDK-consulting.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-11-01-pre-liquidation-ABDK-consulting.pdf) | ABDK | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [2023-11-16-morpho-blue-periphery-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-16-morpho-blue-periphery-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 5 | n/a |
| [2024-09-23-metamorpho-diff-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-09-23-metamorpho-diff-cantina-managed-review.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2025-01-10-metamorpho-v1.1-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-01-10-metamorpho-v1.1-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | 2 | n/a |
| [2025-02-20-metamorpho-v1.1-cantina-managed.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-02-20-metamorpho-v1.1-cantina-managed.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-03-11-morpho-public-allocator-cantina-managed.pdf](https://github.com/morpho-org/public-allocator/blob/main/audits/2024-03-11-morpho-public-allocator-cantina-managed.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 722 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=56, extraction_exact=4

Zero-match audit list:

- [8734] 2023-11-14-metamorpho-cantina-managed-review.pdf
- [14672] omniscia.io/reports/morpho-specialized-token
- [14673] Lexfo_250523.pdf
- [14674] MorphoDAO_Frontend_04042022.pdf
- [14682] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf
- [14683] 2025-12-04-market-v1-adapter-v2-spearbit.pdf
- [14692] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf
- [14694] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf

Fork inheritance lineage and inherited audits are included when available.
