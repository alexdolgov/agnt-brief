# Agentic Audit Brief: Avantgarde

## Project Overview

- Project: Avantgarde (`avantgarde`)
- Website: [https://app.morpho.org/ethereum/curator/avantgarde](https://app.morpho.org/ethereum/curator/avantgarde)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.013Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 78 unique implementations (78 raw deployments)
- DeFi Llama TVL: $399,864.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 75 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token, 8 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 23 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Morpho** (`morpho`) in the AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, CompoundV2MigrationBundler, CompoundV3MigrationBundler, … subsystem.
8 audits inherited from `morpho`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 78 (78 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/66 (21.2%)
- Deployed-live implementations: 78 of 78 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/78
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 78
- Audits discovered: 13 (5 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 21.2% (Certora, ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 15 | 19.2% | 2025-12 |
| Blackthorn | Tier 2 | 12 | 15.4% | 2025-12 |
| Certora | Tier 1 | 12 | 15.4% | 2025-12 |
| ChainSecurity | Tier 1 | 12 | 15.4% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2MigrationBundler | unknown | ethereum | n/a | [`0xb3dcc7...aa8e76`](./contracts/ethereum-1/0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76/) | ✅ Audited |
| AaveV3MigrationBundler | unknown | ethereum | n/a | [`0x98ccb1...2f9bdc`](./contracts/ethereum-1/0x98ccb155e86bb478d514a827d16f58c6912f9bdc/) | ✅ Audited |
| AaveV3OptimizerMigrationBundler | unknown | ethereum | n/a | [`0x16f38d...6d2f9c`](./contracts/ethereum-1/0x16f38d2e764e7bebf625a8e995b34968226d2f9c/) | ✅ Audited |
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x00c7a3...275446`](./contracts/ethereum-1/0x00c7a37b03690fb9f41b5c5af8131735c7275446/) | ✅ Audited |
| CompoundV2MigrationBundler | unknown | ethereum | n/a | [`0x26bf52...8c8647`](./contracts/ethereum-1/0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647/) | ✅ Audited |
| CompoundV3MigrationBundler | unknown | ethereum | n/a | [`0x3a0e2e...479558`](./contracts/ethereum-1/0x3a0e2e9fb9c95fbc843daf166276c90b6c479558/) | ✅ Audited |
| EthereumBundler | unknown | ethereum | n/a | [`0xa7995f...f55107`](./contracts/ethereum-1/0xa7995f71aa11525db02fc2473c37dee5dbf55107/) | ✅ Audited |
| EthereumBundlerV2 | unknown | ethereum | n/a | [`0x4095f0...e30077`](./contracts/ethereum-1/0x4095f064b8d3c3548a3bebfd0bbfd04750e30077/) | ✅ Audited |
| EthereumGeneralAdapter1 | unknown | ethereum | n/a | [`0x4a6c31...be0ae0`](./contracts/ethereum-1/0x4a6c312ec70e8747a587ee860a0353cd42be0ae0/) | ✅ Audited |
| FeedRegistry | unknown | ethereum | n/a | [`0x47fb25...ceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | ✅ Audited |
| KeeperRegistry | unknown | ethereum | n/a | [`0x4f7595...dd08c7`](./contracts/ethereum-1/0x4f75953c2661d3a0138fcd80551ea10b80dd08c7/) | ✅ Audited |
| MetaMorphoFactory | unknown | ethereum | n/a | [`0xa9c3d3...c41101`](./contracts/ethereum-1/0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101/) | ✅ Audited |
| UniversalRewardsDistributor | unknown | ethereum | n/a | [`0x330eef...e61ddb`](./contracts/ethereum-1/0x330eefa8a787552dc5cad3c3ca644844b1e61ddb/) | ✅ Audited |
| UrdFactory | unknown | ethereum | n/a | [`0x9baa51...ee7c8d`](./contracts/ethereum-1/0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d/) | ✅ Audited |
| Vester | unknown | ethereum | n/a | [`0x21aef9...a16e60`](./contracts/ethereum-1/0x21aef9afc97301c9db61e45179dff1115ca16e60/) | ✅ Audited |

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2MigrationAdapter | unknown | ethereum | n/a | [`0x402888...87961b`](./contracts/ethereum-1/0x40288815c399709dfc0875a384b637ffe387961b/) | ⚠️ Unaudited |
| AaveV3MigrationAdapter | unknown | ethereum | n/a | [`0x2cc8d5...bdb806`](./contracts/ethereum-1/0x2cc8d502a65824b4cf9a58db03490ba024bdb806/) | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | unknown | ethereum | n/a | [`0x9e2ea2...5ad972`](./contracts/ethereum-1/0x9e2ea2d5785598a163d569d795f286f5c55ad972/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x00260d...a6cd78`](./contracts/ethereum-1/0x00260db07a22a6a5182213d8de1aba0705a6cd78/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | ⚠️ Unaudited |
| Aggregator | unknown | ethereum | n/a | [`0x0b8b84...eeae4d`](./contracts/ethereum-1/0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d/) | ⚠️ Unaudited |
| AggregatorFacade | unknown | ethereum | n/a | [`0x010b33...6c0a67`](./contracts/ethereum-1/0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67/) | ⚠️ Unaudited |
| ArbitrumValidator | unknown | ethereum | n/a | [`0x31982c...c38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ⚠️ Unaudited |
| BulkerGateway | unknown | ethereum | n/a | [`0xf99e37...82c168`](./contracts/ethereum-1/0xf99e3796f94000462f736925cf32162fea82c168/) | ⚠️ Unaudited |
| Bundler3 | unknown | ethereum | n/a | [`0x656619...c90245`](./contracts/ethereum-1/0x6566194141eefa99af43bb5aa71460ca2dc90245/) | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | unknown | ethereum | n/a | [`0x9b89c0...8f1101`](./contracts/ethereum-1/0x9b89c07f480df1945279031b5fc6ff241b8f1101/) | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | unknown | ethereum | n/a | [`0xdba5bd...b26773`](./contracts/ethereum-1/0xdba5bde29ea030bfa6a608592dfca1d02cb26773/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x2e1b5a...d67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ⚠️ Unaudited |
| CPoR | unknown | ethereum | n/a | [`0x575a16...f28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | ⚠️ Unaudited |
| DelayedERC4626Oracle | unknown | ethereum | n/a | [`0x363fff...c52321`](./contracts/ethereum-1/0x363fffe9e293df351fec24bde69954c472c52321/) | ⚠️ Unaudited |
| DualBot | unknown | ethereum | n/a | [`0x0f2cea...2880f4`](./contracts/ethereum-1/0x0f2ceadda587491dd513a82cd0fecb896e2880f4/) | ⚠️ Unaudited |
| DummyFeed | unknown | ethereum | n/a | [`0xc3866d...88973d`](./contracts/ethereum-1/0xc3866d726c204c0836e0677a31973c649888973d/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x00a773...9d7c29`](./contracts/ethereum-1/0x00a773bd2ce922f866bb43ab876009fb959d7c29/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x58d97b...69c2b2`](./contracts/ethereum-1/0x58d97b57bb95320f9a05dc918aef65434969c2b2/) | ⚠️ Unaudited |
| ERC20WrapperAdapter | unknown | ethereum | n/a | [`0xf83d17...87f962`](./contracts/ethereum-1/0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962/) | ⚠️ Unaudited |
| ERC4626Feed | unknown | ethereum | n/a | [`0x6d3273...89891f`](./contracts/ethereum-1/0x6d32736220291d20e927b891aba976c6fc89891f/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | [`0x72d227...5e6938`](./contracts/ethereum-1/0x72d2277c7242a4464d9b277cf682e350205e6938/) | ⚠️ Unaudited |
| Firefighter | unknown | ethereum | n/a | [`0x213f30...9ffb23`](./contracts/ethereum-1/0x213f30e50892dc90d8893618c656316b769ffb23/) | ⚠️ Unaudited |
| Flags | unknown | ethereum | n/a | [`0x24ec84...3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xc88058...79dd4d`](./contracts/ethereum-1/0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d/) | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | unknown | ethereum | n/a | [`0x1897a8...535c24`](./contracts/ethereum-1/0x1897a8997241c1cd4bd0698647e4eb7213535c24/) | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | unknown | ethereum | n/a | [`0x44d049...17a9f4`](./contracts/ethereum-1/0x44d049eed4ad33807859c45bbd3a8eb47917a9f4/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | ethereum | n/a | [`0x95e85f...24bd87`](./contracts/ethereum-1/0x95e85fef34b79f0030f41fb619733bf7e024bd87/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | ethereum | n/a | [`0x3a7bb3...3ad766`](./contracts/ethereum-1/0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766/) | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | unknown | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ⚠️ Unaudited |
| MorphoOFTAdapter | unknown | ethereum | n/a | [`0x50d3d6...5649d9`](./contracts/ethereum-1/0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9/) | ⚠️ Unaudited |
| MorphoToken | unknown | ethereum | n/a | [`0x9994e3...330999`](./contracts/ethereum-1/0x9994e35db50125e0df82e4c2dde62496ce330999/) | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | unknown | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0fc84a...546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | ⚠️ Unaudited |
| ParaswapAdapter | unknown | ethereum | n/a | [`0x03b525...c6c38f`](./contracts/ethereum-1/0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f/) | ⚠️ Unaudited |
| PositionsManager | unknown | ethereum | n/a | [`0x4592e4...dac6de`](./contracts/ethereum-1/0x4592e45e0c5dbee94a135720ccff2e4353dac6de/) | ⚠️ Unaudited |
| PriceConsumer | unknown | ethereum | n/a | [`0x7f7d99...22f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x857ff8...67acc0`](./contracts/ethereum-1/0x857ff845f9b11c19553b1d090b41c2255c67acc0/) | ⚠️ Unaudited |
| PublicAllocator | unknown | ethereum | n/a | [`0x3df418...ca05c4`](./contracts/ethereum-1/0x3df41890b6f4b723d9bb85f81d42990e0fca05c4/) | ⚠️ Unaudited |
| RegistryList | unknown | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ⚠️ Unaudited |
| ReservoirLooper | unknown | ethereum | n/a | [`0x0f6b59...c87df4`](./contracts/ethereum-1/0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4/) | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x4a9d21...82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0x641b69...89dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | ⚠️ Unaudited |
| Swapper | unknown | ethereum | n/a | [`0x2540ff...e73b3e`](./contracts/ethereum-1/0x2540ff76ebd375691528665634fb15b118e73b3e/) | ⚠️ Unaudited |
| SwapperAngle | unknown | ethereum | n/a | [`0x4e8644...0d592e`](./contracts/ethereum-1/0x4e8644d7e0c185f07ab33535ca73a8d3880d592e/) | ⚠️ Unaudited |
| SwapperDaiUsds | unknown | ethereum | n/a | [`0x99ce8d...29c873`](./contracts/ethereum-1/0x99ce8de8737a1b05affd9539750c23255e29c873/) | ⚠️ Unaudited |
| SwapperERC4626 | unknown | ethereum | n/a | [`0x119388...080e26`](./contracts/ethereum-1/0x1193888325a82ff22603bd316ed7b5398c080e26/) | ⚠️ Unaudited |
| SwapperMakerPSM | unknown | ethereum | n/a | [`0x0076af...a41254`](./contracts/ethereum-1/0x0076af860630ea0337d4c932b986d68f32a41254/) | ⚠️ Unaudited |
| SwapperRusd | unknown | ethereum | n/a | [`0x242db4...9dacee`](./contracts/ethereum-1/0x242db4438ba1686050d679680478da876a9dacee/) | ⚠️ Unaudited |
| SwapperSimpleUniV3 | unknown | ethereum | n/a | [`0x45241b...33d54a`](./contracts/ethereum-1/0x45241b97afbe5b9883b8439615d9f7e28033d54a/) | ⚠️ Unaudited |
| SwapperWsteth | unknown | ethereum | n/a | [`0x8fa444...9dc868`](./contracts/ethereum-1/0x8fa4443df3989ed5c51a4e6f436f1f51129dc868/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x33333a...b33333`](./contracts/ethereum-1/0x33333aea097c193e66081e930c33020272b33333/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x36f8d0...44cab6`](./contracts/ethereum-1/0x36f8d0d0573ae92326827c4a82fe4ce4c244cab6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x507fa3...a91ff4`](./contracts/ethereum-1/0x507fa343d0a90786d86c7cd885f5c49263a91ff4/) | ⚠️ Unaudited |
| UsycBot | unknown | ethereum | n/a | [`0x3e33c1...900c03`](./contracts/ethereum-1/0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03/) | ⚠️ Unaudited |
| UsycLiquidator | unknown | ethereum | n/a | [`0x385826...4728ce`](./contracts/ethereum-1/0x3858266579f2913cbba5eaa6381cddfc684728ce/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x264bdd...d50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ⚠️ Unaudited |
| VaultV2Factory | unknown | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xe384f1...411a72`](./contracts/ethereum-1/0xe384f1db840ddfac78ddd25e5fdb89a9a2411a72/) | ⚠️ Unaudited |
| Wrapper | unknown | ethereum | n/a | [`0x9d03bb...0e5123`](./contracts/ethereum-1/0x9d03bb2092270648d7480049d0e58d2fcf0e5123/) | ⚠️ Unaudited |
| WstethBot | unknown | ethereum | n/a | [`0xf14dc5...ebd16b`](./contracts/ethereum-1/0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b/) | ⚠️ Unaudited |
| WstEthStEthExchangeRateChainlinkAdapter | unknown | ethereum | n/a | [`0x905b7d...db1421`](./contracts/ethereum-1/0x905b7dabcd3ce6b792d874e303d336424cdb1421/) | ⚠️ Unaudited |

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
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AaveV2MigrationBundler, AaveV3MigrationBundler, AaveV3OptimizerMigrationBundler, AccessControlledAggregator, +8 more | inherited | 12 | n/a |
| [Cantina Contest](https://cantina.xyz/competitions/d86b7f95-e574-4092-8ea2-78dcac2f54f1) | Spearbit | Contest | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Cantina Contest](https://cantina.xyz/competitions/8409a0ce-6c21-4cc9-8ef2-bd77ce7425af) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | 9 | high |
| [omniscia-report](https://omniscia.io/reports/morpho-specialized-token) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lexfo_250523.pdf](https://cdn.morpho.org/documents/Lexfo_250523.pdf) | Lexfo | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [MorphoDAO_Frontend_04042022.pdf](https://cdn.morpho.org/documents/MorphoDAO_Frontend_04042022.pdf) | Securing | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x402888...87961b`](./contracts/ethereum-1/0x40288815c399709dfc0875a384b637ffe387961b/) | AaveV2MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cc8d5...bdb806`](./contracts/ethereum-1/0x2cc8d502a65824b4cf9a58db03490ba024bdb806/) | AaveV3MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e2ea2...5ad972`](./contracts/ethereum-1/0x9e2ea2d5785598a163d569d795f286f5c55ad972/) | AaveV3OptimizerMigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00260d...a6cd78`](./contracts/ethereum-1/0x00260db07a22a6a5182213d8de1aba0705a6cd78/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8b84...eeae4d`](./contracts/ethereum-1/0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010b33...6c0a67`](./contracts/ethereum-1/0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67/) | AggregatorFacade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31982c...c38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ArbitrumValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf99e37...82c168`](./contracts/ethereum-1/0xf99e3796f94000462f736925cf32162fea82c168/) | BulkerGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x656619...c90245`](./contracts/ethereum-1/0x6566194141eefa99af43bb5aa71460ca2dc90245/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b89c0...8f1101`](./contracts/ethereum-1/0x9b89c07f480df1945279031b5fc6ff241b8f1101/) | CompoundV2MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdba5bd...b26773`](./contracts/ethereum-1/0xdba5bde29ea030bfa6a608592dfca1d02cb26773/) | CompoundV3MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e1b5a...d67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a16...f28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | CPoR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x363fff...c52321`](./contracts/ethereum-1/0x363fffe9e293df351fec24bde69954c472c52321/) | DelayedERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2cea...2880f4`](./contracts/ethereum-1/0x0f2ceadda587491dd513a82cd0fecb896e2880f4/) | DualBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3866d...88973d`](./contracts/ethereum-1/0xc3866d726c204c0836e0677a31973c649888973d/) | DummyFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a773...9d7c29`](./contracts/ethereum-1/0x00a773bd2ce922f866bb43ab876009fb959d7c29/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf83d17...87f962`](./contracts/ethereum-1/0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962/) | ERC20WrapperAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d3273...89891f`](./contracts/ethereum-1/0x6d32736220291d20e927b891aba976c6fc89891f/) | ERC4626Feed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72d227...5e6938`](./contracts/ethereum-1/0x72d2277c7242a4464d9b277cf682e350205e6938/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213f30...9ffb23`](./contracts/ethereum-1/0x213f30e50892dc90d8893618c656316b769ffb23/) | Firefighter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ec84...3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | Flags | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc88058...79dd4d`](./contracts/ethereum-1/0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44d049...17a9f4`](./contracts/ethereum-1/0x44d049eed4ad33807859c45bbd3a8eb47917a9f4/) | MetaOracleDeviationTimelockFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50d3d6...5649d9`](./contracts/ethereum-1/0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9/) | MorphoOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc84a...546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03b525...c6c38f`](./contracts/ethereum-1/0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f/) | ParaswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4592e4...dac6de`](./contracts/ethereum-1/0x4592e45e0c5dbee94a135720ccff2e4353dac6de/) | PositionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f7d99...22f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | PriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3df418...ca05c4`](./contracts/ethereum-1/0x3df41890b6f4b723d9bb85f81d42990e0fca05c4/) | PublicAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | RegistryList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f6b59...c87df4`](./contracts/ethereum-1/0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4/) | ReservoirLooper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a9d21...82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | SimpleReadAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641b69...89dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2540ff...e73b3e`](./contracts/ethereum-1/0x2540ff76ebd375691528665634fb15b118e73b3e/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8644...0d592e`](./contracts/ethereum-1/0x4e8644d7e0c185f07ab33535ca73a8d3880d592e/) | SwapperAngle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99ce8d...29c873`](./contracts/ethereum-1/0x99ce8de8737a1b05affd9539750c23255e29c873/) | SwapperDaiUsds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x119388...080e26`](./contracts/ethereum-1/0x1193888325a82ff22603bd316ed7b5398c080e26/) | SwapperERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0076af...a41254`](./contracts/ethereum-1/0x0076af860630ea0337d4c932b986d68f32a41254/) | SwapperMakerPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x242db4...9dacee`](./contracts/ethereum-1/0x242db4438ba1686050d679680478da876a9dacee/) | SwapperRusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45241b...33d54a`](./contracts/ethereum-1/0x45241b97afbe5b9883b8439615d9f7e28033d54a/) | SwapperSimpleUniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fa444...9dc868`](./contracts/ethereum-1/0x8fa4443df3989ed5c51a4e6f436f1f51129dc868/) | SwapperWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e33c1...900c03`](./contracts/ethereum-1/0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03/) | UsycBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x385826...4728ce`](./contracts/ethereum-1/0x3858266579f2913cbba5eaa6381cddfc684728ce/) | UsycLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x264bdd...d50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ValidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | VaultV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe384f1...411a72`](./contracts/ethereum-1/0xe384f1db840ddfac78ddd25e5fdb89a9a2411a72/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d03bb...0e5123`](./contracts/ethereum-1/0x9d03bb2092270648d7480049d0e58d2fcf0e5123/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf14dc5...ebd16b`](./contracts/ethereum-1/0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b/) | WstethBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x905b7d...db1421`](./contracts/ethereum-1/0x905b7dabcd3ce6b792d874e303d336424cdb1421/) | WstEthStEthExchangeRateChainlinkAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 7 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9, inherited_name_remap=96

Zero-match audit list:

- [19476] Cantina Contest
- [19478] omniscia-report
- [19479] Lexfo_250523.pdf
- [19480] MorphoDAO_Frontend_04042022.pdf

Fork inheritance lineage and inherited audits are included when available.
