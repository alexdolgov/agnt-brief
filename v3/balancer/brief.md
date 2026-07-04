# Agentic Audit Brief: Balancer

## Project Overview

- Project: Balancer (`balancer`)
- Website: [https://balancer.fi](https://balancer.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:32.650Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 151 unique implementations (151 raw deployments)
- DeFi Llama TVL: $176,902,882.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 145 project-authored contract(s) across 4 chain(s); 21 ERC20 tokens, 4 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 41 common project-authored base contract(s) (balancerpooltoken, vaultguard, poolinfo). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 151; live-surface contracts included: 151 (151 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 35/151 (23.2%)
- Deployed-live implementations: 151 of 151 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 35/151
- Verified + Unaudited implementations: 116
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 151
- Raw deployments: 151
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 25
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/balancer/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 4 fresh, 9 aging, 13 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 35 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 22.5% (Certora, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 27 | 17.9% | 2026-01 |
| Trail of Bits | Tier 1 | 17 | 11.3% | 2024-12 |
| OpenZeppelin | Tier 1 | 10 | 6.6% | 2021-10 |
| Spearbit | Tier 1 | 10 | 6.6% | 2024-12 |
| ABDK | Tier 2 | 3 | 2.0% | 2022-05 |
| unknown | Tier 2 | 2 | 1.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Authorizer | unknown | ethereum | n/a | [`0x9da189...7e017c`](./contracts/ethereum-1/0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c/) | ✅ Audited |
| BalancerHelpers | unknown | ethereum | n/a | [`0x5addcc...87864e`](./contracts/ethereum-1/0x5addcca35b7a0d07c74063c48700c8590e87864e/) | ✅ Audited |
| BatchRouter | unknown | ethereum | n/a | [`0x136f1e...1778d1`](./contracts/ethereum-1/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/) | ✅ Audited |
| CircuitBreakerLib | unknown | ethereum | n/a | [`0x4967b3...b50527`](./contracts/ethereum-1/0x4967b3353cdf9e5c67421a3890d35f2f3bb50527/) | ✅ Audited |
| ComposableStablePoolFactory | unknown | arbitrum | n/a | [`0x1c9932...5e50e7`](./contracts/arbitrum-42161/0x1c99324edc771c82a0dccb780cc7dda0045e50e7/) | ✅ Audited |
| CompositeLiquidityRouter | unknown | avalanche | n/a | [`0x0c8f71...5dbb98`](./contracts/avalanche-43114/0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98/) | ✅ Audited |
| EclpLPOracle | unknown | ethereum | n/a | [`0xed9031...9928a2`](./contracts/ethereum-1/0xed9031a1300d721cf859ee2ba1f0fb33dc9928a2/) | ✅ Audited |
| FixedPriceLBPool | unknown | ethereum | n/a | [`0x179c68...cec5d3`](./contracts/ethereum-1/0x179c68302a24e4e59667b3df7fb70c1c5dcec5d3/) | ✅ Audited |
| Gyro2CLPPool | unknown | ethereum | n/a | [`0x4ffecd...f5fa80`](./contracts/ethereum-1/0x4ffecd2dab8703a74bd13ba10bce3419b9f5fa80/) | ✅ Audited |
| Gyro2CLPPoolFactory | unknown | avalanche | n/a | [`0x312600...70d431`](./contracts/avalanche-43114/0x312600bc7645e47a4926dc658827398af070d431/) | ✅ Audited |
| GyroECLPPool | unknown | ethereum | n/a | [`0xc27d49...03cc4c`](./contracts/ethereum-1/0xc27d496a903c4328456f8a2de7457dcf4803cc4c/) | ✅ Audited |
| GyroECLPPoolFactory | unknown | ethereum | n/a | [`0x04d584...6b69d1`](./contracts/ethereum-1/0x04d584195a96dffc7f8b695aa3c9d3c1606b69d1/) | ✅ Audited |
| LBPool | unknown | ethereum | n/a | [`0x095460...121b8c`](./contracts/ethereum-1/0x0954601f4b1ffece41a411a66f4546620f121b8c/) | ✅ Audited |
| LBPoolFactory | unknown | ethereum | n/a | [`0x02916d...bddcaf`](./contracts/ethereum-1/0x02916d8f0891309806fcb347bf4191692cbddcaf/) | ✅ Audited |
| ManagedPoolAmmLib | unknown | arbitrum | n/a | [`0x3061b0...e4d4c1`](./contracts/arbitrum-42161/0x3061b0b03af3b965e398d2e9021be12ffae4d4c1/) | ✅ Audited |
| ManagedPoolFactory | unknown | arbitrum | n/a | [`0x7e06f5...eb91f6`](./contracts/arbitrum-42161/0x7e06f594b79727da8f52c0f0430092cf3aeb91f6/) | ✅ Audited |
| MerkleOrchard | unknown | arbitrum | n/a | [`0x751a0b...1c87de`](./contracts/arbitrum-42161/0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de/) | ✅ Audited |
| ProtocolFeeController | unknown | ethereum | n/a | [`0x212f88...7c2879`](./contracts/ethereum-1/0x212f884252792ebaaa811fb0678444b21c7c2879/) | ✅ Audited |
| Router | unknown | avalanche | n/a | [`0x4bdcc2...0eada7`](./contracts/avalanche-43114/0x4bdcc2fb18aeb9e2d281b0278d946445070eada7/) | ✅ Audited |
| StableLPOracle | unknown | ethereum | n/a | [`0x4dcc26...0aa8dc`](./contracts/ethereum-1/0x4dcc26930a571d7a3f2f8e5e221f5f00810aa8dc/) | ✅ Audited |
| StableLPOracleFactory | unknown | avalanche | n/a | [`0x254f3a...5f83b0`](./contracts/avalanche-43114/0x254f3a2974b97dc2e675f6115c845567c55f83b0/) | ✅ Audited |
| StablePool | unknown | ethereum | n/a | [`0x0a8afe...85dd5d`](./contracts/ethereum-1/0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d/) | ✅ Audited |
| StableSurgeHook | unknown | avalanche | n/a | [`0x86705e...83d122`](./contracts/avalanche-43114/0x86705ee19c0509ff68f1118c55ee2ebde383d122/) | ✅ Audited |
| StableSurgePoolFactory | unknown | ethereum | n/a | [`0x187a05...baa6ac`](./contracts/ethereum-1/0x187a05fb9e4234dd310ae74215743560d1baa6ac/) | ✅ Audited |
| TimelockAuthorizer | unknown | ethereum | n/a | [`0x9e3cd0...12ae05`](./contracts/ethereum-1/0x9e3cd0606db55ac68845bb60121847823712ae05/) | ✅ Audited |
| TimelockAuthorizerMigrator | unknown | ethereum | n/a | [`0x657dee...f05e8d`](./contracts/ethereum-1/0x657dee983987e1a79a996d972fe68411aef05e8d/) | ✅ Audited |
| TimelockAuthorizerTransitionMigrator | unknown | ethereum | n/a | [`0x76578e...cda3a6`](./contracts/ethereum-1/0x76578ecf9a141296ec657847fb45b0585bcda3a6/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0xba1222...6bf2c8`](./contracts/ethereum-1/0xba12222222228d8ba445958a75a0704d566bf2c8/) | ✅ Audited |
| VaultAdmin | unknown | ethereum | n/a | [`0x0e8b07...28c9a9`](./contracts/ethereum-1/0x0e8b07657d719b86e06bf0806d6729e3d528c9a9/) | ✅ Audited |
| VaultExplorer | unknown | avalanche | n/a | [`0x0f08ee...347b7c`](./contracts/avalanche-43114/0x0f08eef2c785aa5e7539684af04755dec1347b7c/) | ✅ Audited |
| VaultExtension | unknown | ethereum | n/a | [`0xba1333...319ba9`](./contracts/ethereum-1/0xba1333333333a1ba1108e8412f11850a5c319ba9/) | ✅ Audited |
| WeightedLPOracle | unknown | ethereum | n/a | [`0x099179...e7e8ec`](./contracts/ethereum-1/0x09917922379404a25aba9183bcae7bab72e7e8ec/) | ✅ Audited |
| WeightedLPOracleFactory | unknown | ethereum | n/a | [`0x05503b...982d2b`](./contracts/ethereum-1/0x05503b3ade04aca81c8d6f88ecb73ba156982d2b/) | ✅ Audited |
| WeightedPool | unknown | ethereum | n/a | [`0x527d0e...fb3568`](./contracts/ethereum-1/0x527d0e14acc53fb040debeae1cab973d23fb3568/) | ✅ Audited |
| WeightedPoolFactory | unknown | ethereum | n/a | [`0x201efd...2a86cc`](./contracts/ethereum-1/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (116)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorBatchRouter | unknown | avalanche | n/a | [`0x136f1e...1778d1`](./contracts/avalanche-43114/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/) | ⚠️ Unaudited |
| AggregatorRouter | unknown | ethereum | n/a | [`0x309abc...138657`](./contracts/ethereum-1/0x309abcaefa19ca6d34f0d8ff4a4103317c138657/) | ⚠️ Unaudited |
| ArbitrumRootGauge | unknown | ethereum | n/a | [`0x633794...ee9ffc`](./contracts/ethereum-1/0x6337949cbc4825bbd09242c811770f6f6fee9ffc/) | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | unknown | ethereum | n/a | [`0x1c9932...5e50e7`](./contracts/ethereum-1/0x1c99324edc771c82a0dccb780cc7dda0045e50e7/) | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | arbitrum | n/a | [`0x0f3e0c...57c54e`](./contracts/arbitrum-42161/0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e/) | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | ethereum | n/a | [`0x36cac2...b5a17c`](./contracts/ethereum-1/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/) | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | ethereum | n/a | [`0x6048a8...2391e7`](./contracts/ethereum-1/0x6048a8c631fb7e77eca533cf9c29784e482391e7/) | ⚠️ Unaudited |
| AvalancheRootGauge | unknown | ethereum | n/a | [`0x3eae4a...a72a13`](./contracts/ethereum-1/0x3eae4a1c2e36870a006e816930d9f55df0a72a13/) | ⚠️ Unaudited |
| AvalancheRootGaugeFactory | unknown | ethereum | n/a | [`0x10f3e7...eab5ac`](./contracts/ethereum-1/0x10f3e79911a490aa5b5d5cda6f111029c4eab5ac/) | ⚠️ Unaudited |
| BalancerContractRegistry | unknown | avalanche | n/a | [`0x86e67e...e7bc2b`](./contracts/avalanche-43114/0x86e67e115f96df37239e0479441303de0de7bc2b/) | ⚠️ Unaudited |
| BalancerContractRegistryInitializer | unknown | ethereum | n/a | [`0x91f178...3192c7`](./contracts/ethereum-1/0x91f17800ca7dd29f2124d9d9ea8d4794693192c7/) | ⚠️ Unaudited |
| BalancerFeeBurner | unknown | ethereum | n/a | [`0x1780e8...d943ab`](./contracts/ethereum-1/0x1780e8185199dac45284039bb3e3b64060d943ab/) | ⚠️ Unaudited |
| BalancerGaugeRewards | unknown | ethereum | n/a | [`0x6a1d08...45586a`](./contracts/ethereum-1/0x6a1d08b715a79bbb0a2d2e1927e96c18a345586a/) | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| BalancerMinter | unknown | ethereum | n/a | [`0x239e55...638a2b`](./contracts/ethereum-1/0x239e55f427d44c3cc793f49bfb507ebe76638a2b/) | ⚠️ Unaudited |
| BalancerPoolDataQueries | unknown | avalanche | n/a | [`0xf24917...b9fd39`](./contracts/avalanche-43114/0xf24917fb88261a37cc57f686ebc831a5c0b9fd39/) | ⚠️ Unaudited |
| BalancerQueries | unknown | ethereum | n/a | [`0xe39b5e...f549d5`](./contracts/ethereum-1/0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5/) | ⚠️ Unaudited |
| BalancerTokenAdmin | unknown | ethereum | n/a | [`0xf302f9...77414f`](./contracts/ethereum-1/0xf302f9f50958c5593770fdf4d4812309ff77414f/) | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | ethereum | n/a | [`0xb848f5...4f2158`](./contracts/ethereum-1/0xb848f50141f3d4255b37ac288c25c109104f2158/) | ⚠️ Unaudited |
| BaseRootGauge | unknown | ethereum | n/a | [`0x9a4d64...bfe6cb`](./contracts/ethereum-1/0x9a4d642b9876231bb9062559521a48097abfe6cb/) | ⚠️ Unaudited |
| BaseRootGaugeFactory | unknown | ethereum | n/a | [`0x8e3b64...f31e4d`](./contracts/ethereum-1/0x8e3b64b3737097f283e965869e3503aa20f31e4d/) | ⚠️ Unaudited |
| BatchCheckpointer | unknown | ethereum | n/a | [`0xf24917...b9fd39`](./contracts/ethereum-1/0xf24917fb88261a37cc57f686ebc831a5c0b9fd39/) | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | arbitrum | n/a | [`0x1554ee...21aaf2`](./contracts/arbitrum-42161/0x1554ee754707d5c93b7934af404747aba521aaf2/) | ⚠️ Unaudited |
| BCoWFactory | unknown | base | n/a | [`0x03362f...e4588e`](./contracts/base-8453/0x03362f847b4fabc12e1ce98b6b59f94401e4588e/) | ⚠️ Unaudited |
| BCoWHelper | unknown | arbitrum | n/a | [`0x05545c...0d120b`](./contracts/arbitrum-42161/0x05545c04141abda02507eaf6bd47fe15690d120b/) | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0xad0447...59b667`](./contracts/ethereum-1/0xad0447be7bdc80cf2e6da20b13599e5dc859b667/) | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | avalanche | n/a | [`0xe39b5e...f549d5`](./contracts/avalanche-43114/0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5/) | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | ethereum | n/a | [`0x2cf8e1...736c59`](./contracts/ethereum-1/0x2cf8e145bdfe7c52b49ad9bb3c294a31b2736c59/) | ⚠️ Unaudited |
| BridgeHelper | unknown | ethereum | n/a | [`0x50c2fe...14d0d4`](./contracts/ethereum-1/0x50c2fe8177a05d01ccde47e1c5637b1ab914d0d4/) | ⚠️ Unaudited |
| BufferRouter | unknown | avalanche | n/a | [`0x22625e...86b017`](./contracts/avalanche-43114/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | avalanche | n/a | [`0x4132f7...e6e6c8`](./contracts/avalanche-43114/0x4132f7acc9db7a6cf7be2dd3a9dc8b30c7e6e6c8/) | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | avalanche | n/a | [`0xf23b4d...264843`](./contracts/avalanche-43114/0xf23b4db826dba14c0e857029dff076b1c0264843/) | ⚠️ Unaudited |
| ChildChainGaugeRewardHelper | unknown | arbitrum | n/a | [`0xa0dabe...9eb66f`](./contracts/arbitrum-42161/0xa0dabebaad1b243bbb243f933013d560819eb66f/) | ⚠️ Unaudited |
| ChildChainGaugeTokenAdder | unknown | arbitrum | n/a | [`0xbfd976...d66e3c`](./contracts/arbitrum-42161/0xbfd9769b061e57e478690299011a028194d66e3c/) | ⚠️ Unaudited |
| ChildChainLiquidityGaugeFactory | unknown | arbitrum | n/a | [`0xb08e16...6cbfd2`](./contracts/arbitrum-42161/0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2/) | ⚠️ Unaudited |
| ClaimSignatureRegistry | unknown | ethereum | n/a | [`0x07b1a0...babc55`](./contracts/ethereum-1/0x07b1a0bab2bab6fd4dee2ddcc512b2725ababc55/) | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | ethereum | n/a | [`0x99364f...c52c58`](./contracts/ethereum-1/0x99364f84d1c68d87aead0ce92eb47409a0c52c58/) | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | ethereum | n/a | [`0x0e800d...92b106`](./contracts/ethereum-1/0x0e800d8d2e8b4694610aedc385aa6d763492b106/) | ⚠️ Unaudited |
| DirectRateProvider | unknown | base | n/a | [`0x00abf7...25db37`](./contracts/base-8453/0x00abf7f2a89ab6a7659ed511f3c39a560f25db37/) | ⚠️ Unaudited |
| DistributionScheduler | unknown | ethereum | n/a | [`0x42b676...5ae066`](./contracts/ethereum-1/0x42b67611b208e2e9b4cc975f6d74c87b865ae066/) | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | arbitrum | n/a | [`0x8e5698...9db97c`](./contracts/arbitrum-42161/0x8e5698dc4897dc12243c8642e77b4f21349db97c/) | ⚠️ Unaudited |
| EclpLPOracleFactory | unknown | avalanche | n/a | [`0x1780e8...d943ab`](./contracts/avalanche-43114/0x1780e8185199dac45284039bb3e3b64060d943ab/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0xe99516...cb8dbb`](./contracts/base-8453/0xe995168d9924d72a4fe45af18edc06b498cb8dbb/) | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | avalanche | n/a | [`0x0b1120...e63911`](./contracts/avalanche-43114/0x0b11209b8c5e821b18ded147583b8978c3e63911/) | ⚠️ Unaudited |
| ERC4626RateProviderFactory | unknown | base | n/a | [`0x138d9e...dd9850`](./contracts/base-8453/0x138d9e0d0cc4906c4cd865b38c9340a5cedd9850/) | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | ethereum | n/a | [`0x3db89f...59cf75`](./contracts/ethereum-1/0x3db89f0ca3b388f2bcdbccd2ff8e13c22459cf75/) | ⚠️ Unaudited |
| FeeDistributor | unknown | ethereum | n/a | [`0x267439...5a61c9`](./contracts/ethereum-1/0x26743984e3357efc59f2fd6c1afdc310335a61c9/) | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | unknown | ethereum | n/a | [`0xeb1aa9...be8758`](./contracts/ethereum-1/0xeb1aa94421aecfb1dc17ddb1068e4609c4be8758/) | ⚠️ Unaudited |
| GaugeAdder | unknown | ethereum | n/a | [`0x2ffb7b...98f26a`](./contracts/ethereum-1/0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a/) | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | ethereum | n/a | [`0x1b57f6...2daea7`](./contracts/ethereum-1/0x1b57f637ce3408f1f834b0b70f9a595b062daea7/) | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | ethereum | n/a | [`0x8e5698...9db97c`](./contracts/ethereum-1/0x8e5698dc4897dc12243c8642e77b4f21349db97c/) | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | ethereum | n/a | [`0xdab258...6ba57c`](./contracts/ethereum-1/0xdab2583911e872a00a851fb80dcc78a4b46ba57c/) | ⚠️ Unaudited |
| GnosisRootGauge | unknown | ethereum | n/a | [`0x05277c...fd4518`](./contracts/ethereum-1/0x05277ce7d1e365d660624612d8b8b9b55bfd4518/) | ⚠️ Unaudited |
| GnosisRootGaugeFactory | unknown | ethereum | n/a | [`0x1de9d6...a11452`](./contracts/ethereum-1/0x1de9d6995c40caaaeda02af45f47713b33a11452/) | ⚠️ Unaudited |
| L2BalancerPseudoMinter | unknown | avalanche | n/a | [`0x85a80a...853062`](./contracts/avalanche-43114/0x85a80afee867adf27b50bdb7b76da70f1e853062/) | ⚠️ Unaudited |
| L2GaugeCheckpointer | unknown | ethereum | n/a | [`0x343688...2e9ccc`](./contracts/ethereum-1/0x343688c5cb92115a52ca485af7f62b4b7a2e9ccc/) | ⚠️ Unaudited |
| LBPMigrationRouter | unknown | ethereum | n/a | [`0x9b8168...dd2ab0`](./contracts/ethereum-1/0x9b8168e330776fee6f857914faca5fb831dd2ab0/) | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | ethereum | n/a | [`0x751a0b...1c87de`](./contracts/ethereum-1/0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de/) | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | ethereum | n/a | [`0x4e7bbd...5412ec`](./contracts/ethereum-1/0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec/) | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | arbitrum | n/a | [`0x3be0e5...a194f2`](./contracts/arbitrum-42161/0x3be0e57b3a7469f158348ce5003725feaaa194f2/) | ⚠️ Unaudited |
| ManualRateProvider | unknown | base | n/a | [`0x470c90...893d77`](./contracts/base-8453/0x470c9034f50afe6633f7e84a80b9961baa893d77/) | ⚠️ Unaudited |
| MevCaptureHook | unknown | ethereum | n/a | [`0x1bca39...716b1c`](./contracts/ethereum-1/0x1bca39b01f451b0a05d7030e6e6981a73b716b1c/) | ⚠️ Unaudited |
| MockStaticAToken | unknown | arbitrum | n/a | [`0x16ba92...35c1dc`](./contracts/arbitrum-42161/0x16ba924752ef283c7946db8a122a6742aa35c1dc/) | ⚠️ Unaudited |
| MockVault | unknown | ethereum | n/a | [`0x81cfae...eeb310`](./contracts/ethereum-1/0x81cfae226343b24ba12ec6521db2c79e7aeeb310/) | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | ethereum | n/a | [`0x0f3e0c...57c54e`](./contracts/ethereum-1/0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e/) | ⚠️ Unaudited |
| OmniVotingEscrow | unknown | ethereum | n/a | [`0xe241c6...ea05ad`](./contracts/ethereum-1/0xe241c6e48ca045c7f631600a0f1403b2bfea05ad/) | ⚠️ Unaudited |
| OmniVotingEscrowAdaptor | unknown | ethereum | n/a | [`0x681714...ff4bc0`](./contracts/ethereum-1/0x6817149cb753bf529565b4d023d7507ed2ff4bc0/) | ⚠️ Unaudited |
| OptimismRootGauge | unknown | ethereum | n/a | [`0xbc230b...dfadde`](./contracts/ethereum-1/0xbc230b1a66a138cd9cfc7b352390025978dfadde/) | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | ethereum | n/a | [`0x3083a1...73c5c8`](./contracts/ethereum-1/0x3083a1c455ff38d39e58dbac5040f465cf73c5c8/) | ⚠️ Unaudited |
| OptimisticRootGauge | unknown | ethereum | n/a | [`0x37302b...cc6498`](./contracts/ethereum-1/0x37302b98918382c43a176e5f3bc7b11448cc6498/) | ⚠️ Unaudited |
| OptimisticRootGaugeFactory | unknown | ethereum | n/a | [`0x18cc3c...94f71b`](./contracts/ethereum-1/0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b/) | ⚠️ Unaudited |
| PolygonRootGauge | unknown | ethereum | n/a | [`0xe53d8f...44495e`](./contracts/ethereum-1/0xe53d8f8aaafd95fcc7196e393ec5a907df44495e/) | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | ethereum | n/a | [`0x4c4287...b64e34`](./contracts/ethereum-1/0x4c4287b07d293e361281bceee8715c8cdeb64e34/) | ⚠️ Unaudited |
| PolygonZkEVMRootGauge | unknown | ethereum | n/a | [`0x45bf48...088602`](./contracts/ethereum-1/0x45bf48d996d22afc9bc150df7fb4d13a49088602/) | ⚠️ Unaudited |
| PolygonZkEVMRootGaugeFactory | unknown | ethereum | n/a | [`0x9bf951...3447de`](./contracts/ethereum-1/0x9bf951848288ccd87d06fac426150262cd3447de/) | ⚠️ Unaudited |
| PoolPauseHelper | unknown | avalanche | n/a | [`0x30ff09...308d7e`](./contracts/avalanche-43114/0x30ff095e22dda9751b5e1a67928611dcb6308d7e/) | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | ethereum | n/a | [`0x1b300c...c133db`](./contracts/ethereum-1/0x1b300c86980a5195bcf49bd419a068d98dc133db/) | ⚠️ Unaudited |
| PoolSwapFeeHelper | unknown | ethereum | n/a | [`0x254f3a...5f83b0`](./contracts/ethereum-1/0x254f3a2974b97dc2e675f6115c845567c55f83b0/) | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | ethereum | n/a | [`0x75635f...d2888d`](./contracts/ethereum-1/0x75635f85600fc357906417f6b78aaf8755d2888d/) | ⚠️ Unaudited |
| ProtocolFeeHelper | unknown | ethereum | n/a | [`0x5a962c...711a74`](./contracts/ethereum-1/0x5a962cdc2786875ca5c40adc09d874e4d6711a74/) | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | arbitrum | n/a | [`0x5ef4c5...bd23c5`](./contracts/arbitrum-42161/0x5ef4c5352882b10893b70dbcaa0c000965bd23c5/) | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | avalanche | n/a | [`0x5b42ec...81c1e9`](./contracts/avalanche-43114/0x5b42ec6d40f7b7965be5308c70e2603c0281c1e9/) | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | ethereum | n/a | [`0x5ef4c5...bd23c5`](./contracts/ethereum-1/0x5ef4c5352882b10893b70dbcaa0c000965bd23c5/) | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | ethereum | n/a | [`0xc3ccac...a1bb68`](./contracts/ethereum-1/0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68/) | ⚠️ Unaudited |
| PullTokenWrapperAllow | unknown | base | n/a | [`0x16814b...fd5620`](./contracts/base-8453/0x16814b50a7962592b8fc4080cdaf0008a8fd5620/) | ⚠️ Unaudited |
| RateProviderCaller | unknown | base | n/a | [`0x216039...de2727`](./contracts/base-8453/0x216039c669da730e80732ab61db417b233de2727/) | ⚠️ Unaudited |
| ReClammPool | unknown | ethereum | n/a | [`0x000ab3...fe62a6`](./contracts/ethereum-1/0x000ab3853737842bed7dabe3540e3e5336fe62a6/) | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | avalanche | n/a | [`0x1cd776...b1d608`](./contracts/avalanche-43114/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/) | ⚠️ Unaudited |
| ReClammPoolHelper | unknown | ethereum | n/a | [`0x04e66e...24f2b6`](./contracts/ethereum-1/0x04e66e492cc14947138608811eeed0b17224f2b6/) | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | ethereum | n/a | [`0x782710...a7d809`](./contracts/ethereum-1/0x7827108af2fd9910ea7cf361d9b827941fa7d809/) | ⚠️ Unaudited |
| RefundLogic | unknown | ethereum | n/a | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | ⚠️ Unaudited |
| SavingsUSDSRateProvider | unknown | base | n/a | [`0x84394f...690267`](./contracts/base-8453/0x84394fa6a39bdff63b255622da362b113c690267/) | ⚠️ Unaudited |
| SingleRecipientGauge | unknown | ethereum | n/a | [`0x5d3d2d...8c4480`](./contracts/ethereum-1/0x5d3d2d18148baace45d09254513bcf2c548c4480/) | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | ethereum | n/a | [`0x4fb471...66c968`](./contracts/ethereum-1/0x4fb47126fa83a8734991e41b942ac29a3266c968/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x786929...1c826c`](./contracts/ethereum-1/0x7869296efd0a76872fee62a058c8fbca5c1c826c/) | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | ethereum | n/a | [`0x26575a...5624ea`](./contracts/ethereum-1/0x26575a44755e0aaa969fdda1e4291df22c5624ea/) | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | ethereum | n/a | [`0x56a1ba...d0cb31`](./contracts/ethereum-1/0x56a1baf2f7a163ce66067f0062da60930dd0cb31/) | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | ethereum | n/a | [`0xb08e16...6cbfd2`](./contracts/ethereum-1/0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2/) | ⚠️ Unaudited |
| StablePoolFactory | unknown | avalanche | n/a | [`0x16b50f...7ae5db`](./contracts/avalanche-43114/0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db/) | ⚠️ Unaudited |
| StakelessGaugeCheckpointer | unknown | ethereum | n/a | [`0x0c8f71...5dbb98`](./contracts/ethereum-1/0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98/) | ⚠️ Unaudited |
| TestBalancerToken | unknown | ethereum | n/a | [`0x397bc4...69a1c7`](./contracts/ethereum-1/0x397bc40ba584e651f4f5cf4ae089f0130569a1c7/) | ⚠️ Unaudited |
| TkMrsR | unknown | ethereum | n/a | [`0xcf0a32...382018`](./contracts/ethereum-1/0xcf0a32bbef8f064969f21f7e02328fb577382018/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x71e9fc...95e3b9`](./contracts/base-8453/0x71e9fc5d2238b28442e3d394bc4961167695e3b9/) | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | ethereum | n/a | [`0x34ac9f...0cc69b`](./contracts/ethereum-1/0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b/) | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | unknown | avalanche | n/a | [`0x6623d1...6b6981`](./contracts/avalanche-43114/0x6623d1ceeab236ae93acafb285ddfb77336b6981/) | ⚠️ Unaudited |
| VaultFactory | unknown | avalanche | n/a | [`0x9805dc...764102`](./contracts/avalanche-43114/0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102/) | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | ethereum | n/a | [`0xeb1516...7076c3`](./contracts/ethereum-1/0xeb151668006cd04dadd098afd0a82e78f77076c3/) | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | ethereum | n/a | [`0xee47ef...26ddf3`](./contracts/ethereum-1/0xee47ef369cda5a65639d7794b70a4d247826ddf3/) | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | ethereum | n/a | [`0xd13afc...ef37ca`](./contracts/ethereum-1/0xd13afc362f619b840c8f4aac1d957ce219ef37ca/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | ethereum | n/a | [`0x6f5a2e...1eb8a0`](./contracts/ethereum-1/0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0/) | ⚠️ Unaudited |
| VotingEscrowRemapper | unknown | ethereum | n/a | [`0x6b5da7...399e2e`](./contracts/ethereum-1/0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x2e9606...8a2647`](./contracts/ethereum-1/0x2e96068b3d5b5bae3d7515da4a1d2e52d08a2647/) | ⚠️ Unaudited |
| WeightedPool2TokensFactory | unknown | ethereum | n/a | [`0xa5bf2d...c74ee0`](./contracts/ethereum-1/0xa5bf2ddf098bb0ef6d120c98217dd6b141c74ee0/) | ⚠️ Unaudited |
| WrappedBalancerPoolToken | unknown | ethereum | n/a | [`0x27ad56...c3121c`](./contracts/ethereum-1/0x27ad56b2bfcb923091d80ca2d657aeba5ac3121c/) | ⚠️ Unaudited |
| WrappedBalancerPoolTokenFactory | unknown | avalanche | n/a | [`0x201efd...2a86cc`](./contracts/avalanche-43114/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/) | ⚠️ Unaudited |
| WstETHRateProvider | unknown | ethereum | n/a | [`0x72d07d...fee768`](./contracts/ethereum-1/0x72d07d7dca67b8a406ad1ec34ce969c90bfee768/) | ⚠️ Unaudited |

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
| [test-report.md (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/test-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/abdk/2022-05-27.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [2021-04-22.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2021-04-22.pdf) | Certora | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |
| [2022-09-23.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2022-09-23.pdf) | Certora | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |
| [2023-05-08.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2023-05-08.pdf) | Certora | Audit | 2023-05 | stale | Direct | contract_name | 2 | high |
| [2021-03-15.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-03-15.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | contract_name | 10 | high |
| [2021-10-09.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-10-09.pdf) | OpenZeppelin | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-05-27.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022-09-02.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-09-02.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | 3 | high |
| [2022-10-25.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-10-25.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |
| [WONTFIX.md](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-12-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-17.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 7 | medium |
| [2024-12-31.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-31.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 3 | medium |
| [2024-09-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-09-04.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | 10 | high |
| [2024-12-24.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-12-24.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [2025-01-30.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-01-30.pdf) | Certora | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [2025-02-07.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-07.pdf) | Certora | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-02-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-17.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [2025-08-19.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-08-19.pdf) | Certora | Audit | 2025-08 | fresh | Direct | contract_name | 5 | high |
| [2025-09-08.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-08.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [2025-09-10.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-10.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [2026-01-26.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2026-01-26.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | 8 | high |
| [2024-10-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/spearbit/2024-10-04.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | 6 | high |
| [2024-12-11.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/trail-of-bits/2024-12-11.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | contract_name | 10 | high |
| [2022-05-27.pdf](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/abdk/2022-05-27.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [2021-04-02.pdf (also discovered via alternate URL)](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2021-04-02.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | 11 | high |
| [2021-10-08.pdf (also discovered via alternate URL)](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2021-10-08.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | 4 | high |
| [2022-05-27.pdf](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2022-05-27.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/balancer/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Security](https://docs-v2.balancer.fi/reference/contracts/security.html) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 2 | high |
| [README.md](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | high |
| [Risks](https://docs-v2.balancer.fi/reference/vote-escrow-launchpad/8_Risks.html) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 151 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=23, medium=2
- Match method counts: extraction_exact=139

Zero-match audit list:

- [16793] test-report.md
- [16802] 2022-05-27.pdf
- [16805] WONTFIX.md
- [16812] 2025-02-07.pdf
- [16829] 2022-05-27.pdf
- [16835] Risks

Fork inheritance lineage and inherited audits are included when available.
