# Agentic Audit Brief: Chainlink

## Project Overview

- Project: Chainlink (`chainlink`)
- Website: [https://chain.link](https://chain.link)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.220Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, gnosis, hyperliquid, mantle, moonbeam, optimism, plasma, polygon, sonic, unichain
- Contract surface: 72 unique implementations (72 raw deployments)
- DeFi Llama TVL: $1,973,496,824.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 72 project-authored contract(s) across 15 chain(s); 6 ERC20 tokens, 3 ERC721 NFTs, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 17 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Katana Pre-Launch** (`katana-pre-launch`) in the CommitStore, EVM2EVMOnRamp, RMN subsystem.
11 audits inherited from `katana-pre-launch`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 72 (72 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/70 (4.3%)
- Deployed-live implementations: 72 of 72 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/72
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 72
- Raw deployments: 72
- Audits discovered: 12 (1 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 11
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/chainlink/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 5 fresh, 6 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.3% (Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 4.2% | 2025-10 |
| Sigma Prime | Tier 2 | 3 | 4.2% | 2025-09 |
| Spearbit | Tier 1 | 3 | 4.2% | 2025-09 |
| Zellic | Tier 2 | 3 | 4.2% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommitStore | unknown | bsc | n/a | [`0x002b16...0edeea`](./contracts/bsc-56/0x002b164b1dcf4e92f352dc625a01be0e890edeea/) | ✅ Audited |
| EVM2EVMOnRamp | unknown | bsc | n/a | [`0x004405...03a390`](./contracts/bsc-56/0x004405d927cad243358a270c2dd3d51c8303a390/) | ✅ Audited |
| RMN | unknown | optimism | n/a | [`0x1c51b6...7a7e49`](./contracts/optimism-10/0x1c51b6d5bfcfb7ee82c80949dfd146db157a7e49/) | ✅ Audited |

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x0086e1...01b423`](./contracts/ethereum-1/0x0086e1e119ecc95be344c3efca7b39f15a01b423/) | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | ethereum | n/a | [`0x00f0ef...65c382`](./contracts/ethereum-1/0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x000bcf...d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/) | ⚠️ Unaudited |
| ARM | unknown | base | n/a | [`0x38660c...5cce5f`](./contracts/base-8453/0x38660c8cc222c0192b635c2ac09687b4f25cce5f/) | ⚠️ Unaudited |
| ARMProxy | unknown | sonic | n/a | [`0x14a7e6...b694a5`](./contracts/sonic-146/0x14a7e6a1b2564b10dbdcc9084c4fbc3e72b694a5/) | ⚠️ Unaudited |
| BlockhashStore | unknown | polygon | n/a | [`0x683be5...d71778`](./contracts/polygon-137/0x683be5e11c1cdce9e63522f45223f47250d71778/) | ⚠️ Unaudited |
| BridgeToken | unknown | avalanche | n/a | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | ⚠️ Unaudited |
| BurnFromMintTokenPool | unknown | berachain | n/a | [`0x03df92...a50280`](./contracts/berachain-80094/0x03df929510a52c97bb1b3e5f33ea5d9735a50280/) | ⚠️ Unaudited |
| BurnMintERC20 | unknown | plasma | n/a | [`0x04dad2...ef3bc7`](./contracts/plasma-9745/0x04dad2d628e9dc53f7a72c5a7836fd23a4ef3bc7/) | ⚠️ Unaudited |
| BurnMintERC20Transparent | unknown | plasma | n/a | [`0xb9af87...e3208f`](./contracts/plasma-9745/0xb9af873c7089cf3a0b6d67538065dd94b5e3208f/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | bsc | n/a | [`0x00ce37...1e4ce7`](./contracts/bsc-56/0x00ce37b1c949bf938de4281d8c4261ee421e4ce7/) | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | polygon | n/a | [`0x04505e...c79187`](./contracts/polygon-137/0x04505e4182a2ab7989b03eb2321e3141c1c79187/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | optimism | n/a | [`0x00c8af...025010`](./contracts/optimism-10/0x00c8af57a18eb97df446fa12e051c63274025010/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | ethereum | n/a | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | ⚠️ Unaudited |
| CallProxy | unknown | sonic | n/a | [`0x1bb0f5...7266b1`](./contracts/sonic-146/0x1bb0f55b00c2607d2561e6042faea4690d7266b1/) | ⚠️ Unaudited |
| CCTPMessageTransmitterProxy | unknown | unichain | n/a | [`0xe94e3b...18037a`](./contracts/unichain-130/0xe94e3b78be62e7fb7a388884c1f9000f6818037a/) | ⚠️ Unaudited |
| ChannelConfigStore | unknown | ethereum | n/a | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ⚠️ Unaudited |
| CommitteeVerifier | unknown | plasma | n/a | [`0x18bb4a...5de84f`](./contracts/plasma-9745/0x18bb4ad0f8cc5241334a85fb5d0d48c6a05de84f/) | ⚠️ Unaudited |
| Configurator | unknown | ethereum | n/a | [`0x6d05b6...2e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x04b221...8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ⚠️ Unaudited |
| DOODLEF | unknown | ethereum | n/a | [`0x9fbe92...285830`](./contracts/ethereum-1/0x9fbe92624b48ba00545c2573801c8e38e8285830/) | ⚠️ Unaudited |
| Doodles | unknown | ethereum | n/a | [`0x8a90ca...b8992e`](./contracts/ethereum-1/0x8a90cab2b38dba80c64b7734e58ee1db38b8992e/) | ⚠️ Unaudited |
| Dooplicator | unknown | ethereum | n/a | [`0x466cfc...9213ac`](./contracts/ethereum-1/0x466cfcd0525189b573e794f554b8a751279213ac/) | ⚠️ Unaudited |
| DualAggregator | unknown | ethereum | n/a | [`0x1eeb87...19a5df`](./contracts/ethereum-1/0x1eeb875dd64f6313ff315679791ae1a27c19a5df/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | moonbeam | n/a | [`0x0147f2...e8c32d`](./contracts/moonbeam-1284/0x0147f2ad7f1e2bc51f998cc128a8355d5ae8c32d/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | bsc | n/a | [`0x006fc7...8bbca7`](./contracts/bsc-56/0x006fc7533e472ee3ac7277bd600e086a0a8bbca7/) | ⚠️ Unaudited |
| Executor | unknown | plasma | n/a | [`0xe65870...809564`](./contracts/plasma-9745/0xe65870ed081025ed64fa4039d3363e73ff809564/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | unknown | mantle | n/a | [`0x0b1479...1cc85e`](./contracts/mantle-5000/0x0b147965f21e8c56ff6d41c530b4ad30791cc85e/) | ⚠️ Unaudited |
| FeeManager | unknown | ethereum | n/a | [`0x48a42f...dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | ⚠️ Unaudited |
| FeeQuoter | unknown | sonic | n/a | [`0x006bc1...ac1e83`](./contracts/sonic-146/0x006bc1f599a10b73c88cc3cd19a92829c4ac1e83/) | ⚠️ Unaudited |
| Flags | unknown | base | n/a | [`0x26e0e1...0bf332`](./contracts/base-8453/0x26e0e12b1682884a557e67743c6a575fd00bf332/) | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | ethereum | n/a | [`0x03b1b1...70d29f`](./contracts/ethereum-1/0x03b1b16e7c016f881783674aa6b24fc21d70d29f/) | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | ethereum | n/a | [`0x3503b2...579acf`](./contracts/ethereum-1/0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x4adfbf...9a993d`](./contracts/ethereum-1/0x4adfbf10e9833ee6dd57b3569c5755f8139a993d/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | hyperliquid | n/a | [`0x1fb8fa...71ebae`](./contracts/hyperliquid-999/0x1fb8fa5a86b3b91da07a973f9848ae9d1271ebae/) | ⚠️ Unaudited |
| HeartbeatRequester | unknown | ethereum | n/a | [`0x4822d7...f8c315`](./contracts/ethereum-1/0x4822d77a2d328115c4edebe1c82f313b28f8c315/) | ⚠️ Unaudited |
| LinkToken | unknown | moonbeam | n/a | [`0x012414...518ac3`](./contracts/moonbeam-1284/0x012414a392f9fa442a3109f1320c439c45518ac3/) | ⚠️ Unaudited |
| LinkTokenOptimism | unknown | optimism | n/a | [`0x350a79...ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | berachain | n/a | [`0x022d74...951892`](./contracts/berachain-80094/0x022d74c2d24e7625368720dcba5674bd8a951892/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | ethereum | n/a | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | berachain | n/a | [`0x057f63...dd9b74`](./contracts/berachain-80094/0x057f63e458a835e5c83d2194cab1c30a76dd9b74/) | ⚠️ Unaudited |
| MockReceiverV2 | unknown | plasma | n/a | [`0x9c117a...61c920`](./contracts/plasma-9745/0x9c117a3e7fcd4e91eea06c6d6f7f21a0da61c920/) | ⚠️ Unaudited |
| NonceManager | unknown | unichain | n/a | [`0x06fc83...6ae1c9`](./contracts/unichain-130/0x06fc836cf9839b1cd891c440a0a45242da6ae1c9/) | ⚠️ Unaudited |
| OffRamp | unknown | unichain | n/a | [`0x02a4d6...58894d`](./contracts/unichain-130/0x02a4d69cffec00fbf7f3b60c93e3529dfc58894d/) | ⚠️ Unaudited |
| OnRamp | unknown | unichain | n/a | [`0x1e11ba...0e6e7b`](./contracts/unichain-130/0x1e11bab3f07fa72312182ffdc460ae45400e6e7b/) | ⚠️ Unaudited |
| OperatorFactory | unknown | ethereum | n/a | [`0x3e64cd...11f48a`](./contracts/ethereum-1/0x3e64cd889482443324f91bfa9c84fe72a511f48a/) | ⚠️ Unaudited |
| PermittableToken | unknown | gnosis | n/a | [`0xe2e73a...ca09b2`](./contracts/gnosis-100/0xe2e73a1c69ecf83f464efce6a5be353a37ca09b2/) | ⚠️ Unaudited |
| PriceRegistry | unknown | ethereum | n/a | [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/) | ⚠️ Unaudited |
| RBACTimelock | unknown | berachain | n/a | [`0x13ac97...664beb`](./contracts/berachain-80094/0x13ac97663d19ff20fe467bfa580748505e664beb/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | plasma | n/a | [`0x010771...a0f8fa`](./contracts/plasma-9745/0x010771998a1f4736bd844939d0bf01ac5ca0f8fa/) | ⚠️ Unaudited |
| RewardManager | unknown | ethereum | n/a | [`0x1a2a2d...75e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | ⚠️ Unaudited |
| RMNProxy | unknown | plasma | n/a | [`0x652592...39b048`](./contracts/plasma-9745/0x6525923279256b8a86c1c01cf5955eb00c39b048/) | ⚠️ Unaudited |
| RMNRemote | unknown | unichain | n/a | [`0x1912c3...f237ca`](./contracts/unichain-130/0x1912c3cfafe8a76a32a92861d815ac2837f237ca/) | ⚠️ Unaudited |
| Router | unknown | optimism | n/a | [`0x0e6137...798d05`](./contracts/optimism-10/0x0e6137e72cc322b0f3b7ed172f7bd7b5ac798d05/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x70e7d9...a02ab9`](./contracts/ethereum-1/0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | moonbeam | n/a | [`0x0f4930...26f134`](./contracts/moonbeam-1284/0x0f4930c3c04c8cb57874907f38be77a6d526f134/) | ⚠️ Unaudited |
| SpaceDoodles | unknown | ethereum | n/a | [`0x5d663e...57b91c`](./contracts/ethereum-1/0x5d663edd9c884b2398634d68ec1cca083957b91c/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xf97f4d...539fb4`](./contracts/arbitrum-42161/0xf97f4df75117a78c1a5a0dbb814af92458539fb4/) | ⚠️ Unaudited |
| Storage | unknown | hyperliquid | n/a | [`0xb41828...f8e5e2`](./contracts/hyperliquid-999/0xb4182810ee17d6726439a4eb108abe29bdf8e5e2/) | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | polygon | n/a | [`0x00f027...4931d8`](./contracts/polygon-137/0x00f027ea6d0fb03256a15e9182b2b9227a4931d8/) | ⚠️ Unaudited |
| TokenPoolFactory | unknown | berachain | n/a | [`0x3d276e...5d3c01`](./contracts/berachain-80094/0x3d276e2c2debc581f194591750a4d04aa15d3c01/) | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | ethereum | n/a | [`0x046728...63a58d`](./contracts/ethereum-1/0x046728da7cb8272284238bd3e47909823d63a58d/) | ⚠️ Unaudited |
| USDCTokenPool | unknown | optimism | n/a | [`0x043366...1dfc5d`](./contracts/optimism-10/0x04336603557feb138b36075156e92f9e551dfc5d/) | ⚠️ Unaudited |
| USDCTokenPoolProxy | unknown | unichain | n/a | [`0x546673...07c045`](./contracts/unichain-130/0x5466730bba7ffedc695dd55939b36402e207c045/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x023824...ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0xa618f1...457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | ⚠️ Unaudited |
| VerifierProxy | unknown | ethereum | n/a | [`0xaae5ec...ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | ⚠️ Unaudited |
| VRFCoordinator | unknown | polygon | n/a | [`0x3d2341...177ae0`](./contracts/polygon-137/0x3d2341adb2d31f1c5530cdc622016af293177ae0/) | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | ethereum | n/a | [`0x02aae1...ad910c`](./contracts/ethereum-1/0x02aae1a04f9828517b3007f83f6181900cad910c/) | ⚠️ Unaudited |

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
| [Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-09 | fresh | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf) | Sigma Prime | Audit | 2025-07 | aging | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf) | Sigma Prime | Audit | 2025-07 | aging | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf) | Sigma Prime | Audit | 2025-07 | aging | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-07 | aging | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf) | Sigma Prime | Audit | 2025-04 | aging | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/chainlink/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [hypercube-zellic.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/hypercube-zellic.pdf) | Zellic | Audit | 2025-12 | fresh | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [code4rena.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/code4rena.pdf) | Code4rena | Contest | 2025-10 | fresh | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |
| [Spearbits-full-agglayer-v0.3.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Spearbits-full-agglayer-v0.3.0.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Katana Pre-Launch — forked code, scoped to CommitStore, EVM2EVMOnRamp, RMN | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0086e1...01b423`](./contracts/ethereum-1/0x0086e1e119ecc95be344c3efca7b39f15a01b423/) | AccessControlledAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00f0ef...65c382`](./contracts/ethereum-1/0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382/) | AccessControlledOCR2Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000bcf...d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x38660c...5cce5f`](./contracts/base-8453/0x38660c8cc222c0192b635c2ac09687b4f25cce5f/) | ARM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x14a7e6...b694a5`](./contracts/sonic-146/0x14a7e6a1b2564b10dbdcc9084c4fbc3e72b694a5/) | ARMProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x683be5...d71778`](./contracts/polygon-137/0x683be5e11c1cdce9e63522f45223f47250d71778/) | BlockhashStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x03df92...a50280`](./contracts/berachain-80094/0x03df929510a52c97bb1b3e5f33ea5d9735a50280/) | BurnFromMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x04dad2...ef3bc7`](./contracts/plasma-9745/0x04dad2d628e9dc53f7a72c5a7836fd23a4ef3bc7/) | BurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xb9af87...e3208f`](./contracts/plasma-9745/0xb9af873c7089cf3a0b6d67538065dd94b5e3208f/) | BurnMintERC20Transparent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00ce37...1e4ce7`](./contracts/bsc-56/0x00ce37b1c949bf938de4281d8c4261ee421e4ce7/) | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04505e...c79187`](./contracts/polygon-137/0x04505e4182a2ab7989b03eb2321e3141c1c79187/) | BurnMintTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00c8af...025010`](./contracts/optimism-10/0x00c8af57a18eb97df446fa12e051c63274025010/) | BurnWithFromMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | BurnWithFromMintTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1bb0f5...7266b1`](./contracts/sonic-146/0x1bb0f55b00c2607d2561e6042faea4690d7266b1/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xe94e3b...18037a`](./contracts/unichain-130/0xe94e3b78be62e7fb7a388884c1f9000f6818037a/) | CCTPMessageTransmitterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ChannelConfigStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x18bb4a...5de84f`](./contracts/plasma-9745/0x18bb4ad0f8cc5241334a85fb5d0d48c6a05de84f/) | CommitteeVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d05b6...2e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | Configurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b221...8748ba`](./contracts/ethereum-1/0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fbe92...285830`](./contracts/ethereum-1/0x9fbe92624b48ba00545c2573801c8e38e8285830/) | DOODLEF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a90ca...b8992e`](./contracts/ethereum-1/0x8a90cab2b38dba80c64b7734e58ee1db38b8992e/) | Doodles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x466cfc...9213ac`](./contracts/ethereum-1/0x466cfcd0525189b573e794f554b8a751279213ac/) | Dooplicator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1eeb87...19a5df`](./contracts/ethereum-1/0x1eeb875dd64f6313ff315679791ae1a27c19a5df/) | DualAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0147f2...e8c32d`](./contracts/moonbeam-1284/0x0147f2ad7f1e2bc51f998cc128a8355d5ae8c32d/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x006fc7...8bbca7`](./contracts/bsc-56/0x006fc7533e472ee3ac7277bd600e086a0a8bbca7/) | EVM2EVMOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xe65870...809564`](./contracts/plasma-9745/0xe65870ed081025ed64fa4039d3363e73ff809564/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0b1479...1cc85e`](./contracts/mantle-5000/0x0b147965f21e8c56ff6d41c530b4ad30791cc85e/) | FactoryBurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48a42f...dcf649`](./contracts/ethereum-1/0x48a42f6aed34fd936355b5358fee4de847dcf649/) | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x006bc1...ac1e83`](./contracts/sonic-146/0x006bc1f599a10b73c88cc3cd19a92829c4ac1e83/) | FeeQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26e0e1...0bf332`](./contracts/base-8453/0x26e0e12b1682884a557e67743c6a575fd00bf332/) | Flags | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03b1b1...70d29f`](./contracts/ethereum-1/0x03b1b16e7c016f881783674aa6b24fc21d70d29f/) | FunctionsClientUpgradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3503b2...579acf`](./contracts/ethereum-1/0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf/) | FunctionsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1fb8fa...71ebae`](./contracts/hyperliquid-999/0x1fb8fa5a86b3b91da07a973f9848ae9d1271ebae/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4822d7...f8c315`](./contracts/ethereum-1/0x4822d77a2d328115c4edebe1c82f313b28f8c315/) | HeartbeatRequester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x012414...518ac3`](./contracts/moonbeam-1284/0x012414a392f9fa442a3109f1320c439c45518ac3/) | LinkToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x350a79...ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | LinkTokenOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x022d74...951892`](./contracts/berachain-80094/0x022d74c2d24e7625368720dcba5674bd8a951892/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | LockReleaseTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x057f63...dd9b74`](./contracts/berachain-80094/0x057f63e458a835e5c83d2194cab1c30a76dd9b74/) | ManyChainMultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x9c117a...61c920`](./contracts/plasma-9745/0x9c117a3e7fcd4e91eea06c6d6f7f21a0da61c920/) | MockReceiverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x06fc83...6ae1c9`](./contracts/unichain-130/0x06fc836cf9839b1cd891c440a0a45242da6ae1c9/) | NonceManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x02a4d6...58894d`](./contracts/unichain-130/0x02a4d69cffec00fbf7f3b60c93e3529dfc58894d/) | OffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1e11ba...0e6e7b`](./contracts/unichain-130/0x1e11bab3f07fa72312182ffdc460ae45400e6e7b/) | OnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e64cd...11f48a`](./contracts/ethereum-1/0x3e64cd889482443324f91bfa9c84fe72a511f48a/) | OperatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xe2e73a...ca09b2`](./contracts/gnosis-100/0xe2e73a1c69ecf83f464efce6a5be353a37ca09b2/) | PermittableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/) | PriceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x13ac97...664beb`](./contracts/berachain-80094/0x13ac97663d19ff20fe467bfa580748505e664beb/) | RBACTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x010771...a0f8fa`](./contracts/plasma-9745/0x010771998a1f4736bd844939d0bf01ac5ca0f8fa/) | RegistryModuleOwnerCustom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a2a2d...75e7ec`](./contracts/ethereum-1/0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x652592...39b048`](./contracts/plasma-9745/0x6525923279256b8a86c1c01cf5955eb00c39b048/) | RMNProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1912c3...f237ca`](./contracts/unichain-130/0x1912c3cfafe8a76a32a92861d815ac2837f237ca/) | RMNRemote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0e6137...798d05`](./contracts/optimism-10/0x0e6137e72cc322b0f3b7ed172f7bd7b5ac798d05/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70e7d9...a02ab9`](./contracts/ethereum-1/0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9/) | SimpleReadAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0f4930...26f134`](./contracts/moonbeam-1284/0x0f4930c3c04c8cb57874907f38be77a6d526f134/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d663e...57b91c`](./contracts/ethereum-1/0x5d663edd9c884b2398634d68ec1cca083957b91c/) | SpaceDoodles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf97f4d...539fb4`](./contracts/arbitrum-42161/0xf97f4df75117a78c1a5a0dbb814af92458539fb4/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb41828...f8e5e2`](./contracts/hyperliquid-999/0xb4182810ee17d6726439a4eb108abe29bdf8e5e2/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00f027...4931d8`](./contracts/polygon-137/0x00f027ea6d0fb03256a15e9182b2b9227a4931d8/) | TokenAdminRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3d276e...5d3c01`](./contracts/berachain-80094/0x3d276e2c2debc581f194591750a4d04aa15d3c01/) | TokenPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x043366...1dfc5d`](./contracts/optimism-10/0x04336603557feb138b36075156e92f9e551dfc5d/) | USDCTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x546673...07c045`](./contracts/unichain-130/0x5466730bba7ffedc695dd55939b36402e207c045/) | USDCTokenPoolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023824...ee7c3c`](./contracts/ethereum-1/0x0238247e71ad0ab272203af13baea72e99ee7c3c/) | ValidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa618f1...457d05`](./contracts/ethereum-1/0xa618f119504455762c9bbbce4ac9ee7fde457d05/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaae5ec...ff6582`](./contracts/ethereum-1/0xaae5ec245bb779883786b44ab3aaad5313ff6582/) | VerifierProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d2341...177ae0`](./contracts/polygon-137/0x3d2341adb2d31f1c5530cdc622016af293177ae0/) | VRFCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02aae1...ad910c`](./contracts/ethereum-1/0x02aae1a04f9828517b3007f83f6181900cad910c/) | VRFV2PlusWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=33

Fork inheritance lineage and inherited audits are included when available.
