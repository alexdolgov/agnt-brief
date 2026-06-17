# Agentic Audit Brief: Mitosis

## Project Overview

- Project: Mitosis (`mitosis`)
- Website: [https://mitosis.org](https://mitosis.org)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-17T07:00:37.642Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta, mantle, mode, optimism, scroll
- Contract surface: 115 unique implementations (197 raw deployments)
- DeFi Llama TVL: $1,282,108.56
- On-chain TVL (included contracts): $170,690,113.10
- TVL by chain: Arbitrum $139,149,782.44 | Ethereum $22,201,036.80 | Bsc $9,339,293.87

## Project Description

Mitosis is currently positioned as a Layer 1 / global execution layer for programmable liquidity, enabling liquidity to be deployed and coordinated across chains and applications. Historical vault, wrapper, token, and migration contracts related to LST/LRT or restaking aggregation should be treated as legacy or supporting components rather than the sole description of the current project.

### Architecture

All product families rely on the Mitosis Core Infrastructure for vault creation, cap management, and cross-chain migrations. The BasicVaultMigration contracts serve as the primary mechanism for upgrading user positions from external tokens to Mitosis-wrapped versions, while the Cap contracts enforce supply limits across the ecosystem.

## Contract Surface Quality

- Indexed contracts: 1081; live-surface contracts included: 197 (168 live, 29 unknown).
- Excluded by liveness: 671 inactive, 213 singleton, 0 uninitialized.
- Deployment units: 24/125 live.
- Detected codebases: aave-v2
- Unverified dependencies: 11/89.

## Audit Coverage Summary

- Verified implementations audited: 2/77 (2.6%)
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 115
- Raw deployments: 197
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $170,690,113.10
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: 2.6% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 2.6% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Cap | unknown | manta | n/a | [`0x1d28de...c57c56`](./contracts/manta-169/0x1d28ded4ff512c0e80af2b459d86a9169cc57c56/) | ✅ Audited |
| CCDMHost | unknown | manta | n/a | [`0x7671f4...4e0c41`](./contracts/manta-169/0x7671f415c76baa3ed21beb8e16a9c971934e0c41/) | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-23919 | [`0x357510...cf4dbe`](./contracts/arbitrum-42161/0x35751007a407ca6feffe80b3cb397736d2cf4dbe/) | ⚠️ Unaudited |
| RockXETH | token | ethereum | unit-23860 | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ⚠️ Unaudited |
| HypERC20 | token | bsc | unit-23887 | [`0x8e1e6b...16caef`](./contracts/bsc-56/0x8e1e6bf7e13c400269987b65ab2b5724b016caef/) | ⚠️ Unaudited |
| XERC20 | token | arbitrum | unit-23917 | [`0x241609...cceea5`](./contracts/arbitrum-42161/0x2416092f143378750bb29b79ed961ab195cceea5/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| TheoDepositVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x0b75e1...eaa2fa`](./contracts/ethereum-1/0x0b75e167f8a37179b7044414ee43e94cabeaa2fa/); arbitrum `0x3ca8f1...319009`; arbitrum `0x54602e...2cee34`; linea `0xcf101e...95b28c` | ⚠️ Unaudited |
| ATM | unknown | manta | n/a | [`0x13cad3...56aab4`](./contracts/manta-169/0x13cad3aa86df1233dc9930a8f88f43237056aab4/) | ⚠️ Unaudited |
| BasicVault | core_logic | manta | n/a | 2 deployments: manta [`0x472edc...86e584`](./contracts/manta-169/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/); manta `0xf57104...3ad1b3` | ⚠️ Unaudited |
| BasicVaultFactory | registry | manta | n/a | [`0x3cda62...fc0f1f`](./contracts/manta-169/0x3cda62917dae24d153c102b3db9bb5c058fc0f1f/) | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | ethereum | unit-23819 (5 proxies) | 5 deployments: ethereum [`0x0109e9...fa5358`](./contracts/ethereum-1/0x0109e9f292516dab3e15efc61811c5e5a7fa5358/); ethereum `0x02ff1f...b94cf3`; ethereum `0x14c5a9...d8cdbf`; ethereum `0xa1ebd2...629182`; ethereum `0xe4cf2d...59a3ec` | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | bsc | unit-23895 | [`0xadd585...1abfc2`](./contracts/bsc-56/0xadd58517c5d45c8ed361986f193785f8ed1abfc2/) | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | mode | n/a | 3 deployments: mode [`0x843fa3...0cfc10`](./contracts/mode-34443/0x843fa321fdf9fafd134fed5fb1d35e17290cfc10/); arbitrum `0xddded3...df94d8`; scroll `0xa0eeb4...28bd28` | ⚠️ Unaudited |
| BeaconProxy | registry | manta | n/a | 4 deployments: manta [`0x8735c8...61981e`](./contracts/manta-169/0x8735c80fb5aeff60d35c9d6e663758af7861981e/); mode `0xa30c15...dfa442`; mode `0xbed575...749471`; scroll `0xb9ca61...4308d6` | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| CachedRateProvider | unknown | ethereum | n/a | [`0x4709ab...404fc7`](./contracts/ethereum-1/0x4709ab91123f7dbb4b6c4a02c94e855678404fc7/) | ⚠️ Unaudited |
| CCDMClient | unknown | manta | n/a | [`0x877b9e...0a6031`](./contracts/manta-169/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/) | ⚠️ Unaudited |
| EETH | unknown | ethereum | unit-23832 | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | n/a | [`0x035da3...300f2d`](./contracts/mode-34443/0x035da376bdf8f24d215cc797a4555de407300f2d/) | ⚠️ Unaudited |
| ERC4626NativeDepositProxy | unknown | bsc | n/a | [`0xdab6eb...873bd8`](./contracts/bsc-56/0xdab6eb82b38dc83168f9d01fb1f8804aea873bd8/) | ⚠️ Unaudited |
| EthDepositor | unknown | ethereum | n/a | [`0x45fed8...19cccd`](./contracts/ethereum-1/0x45fed80345757ce3b530effa4b8022df3419cccd/) | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | linea | unit-23931 | [`0x1bf74c...0b8aa6`](./contracts/linea-59144/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6/) | ⚠️ Unaudited |
| EulerEzEthLoopStrategy | core_logic | ethereum | n/a | [`0xbe97c9...9b5fe6`](./contracts/ethereum-1/0xbe97c9410ac4cf12966c31e70d748b5c889b5fe6/) | ⚠️ Unaudited |
| EulerSwapEzEthDelegateStrategy | core_logic | ethereum | n/a | [`0x0d0226...23dd89`](./contracts/ethereum-1/0x0d02267b9529ba1ee284e73e107feaf91e23dd89/) | ⚠️ Unaudited |
| ExtensibleVaultTemp | core_logic | bsc | n/a | 2 deployments: bsc [`0x8bbf7c...3b176d`](./contracts/bsc-56/0x8bbf7c542e433bfa6eb25da9e077c2c5873b176d/); bsc `0xa70860...e9509c` | ⚠️ Unaudited |
| ExtensibleVaultWithExtraData | core_logic | base | n/a | 3 deployments: bsc `0xd60540...c53652`; base [`0x2ae4be...3d31af`](./contracts/base-8453/0x2ae4be809273bae142c938ae1ff6a3f6853d31af/); base `0x5c8407...30648d` | ⚠️ Unaudited |
| EzAdminL1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x938f1b...4660ce`](./contracts/ethereum-1/0x938f1b481c8b34435d5177ba077981edb44660ce/); ethereum `0xd0cd11...f2bbf1` | ⚠️ Unaudited |
| ezETHConversionStrategy | core_logic | ethereum | n/a | [`0xebb77a...bbd86a`](./contracts/ethereum-1/0xebb77a6a553646f81eaf57429c8fc004f9bbd86a/) | ⚠️ Unaudited |
| ezETHValueStrategy | core_logic | ethereum | n/a | [`0x35b5eb...b0bd9e`](./contracts/ethereum-1/0x35b5ebe66dd7ef372f5c36b25a297863e1b0bd9e/) | ⚠️ Unaudited |
| EzRVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x77b61e...44dd3b`](./contracts/ethereum-1/0x77b61eaf914fcffd731c55bd4888b2a9a244dd3b/); ethereum `0x95306a...6dc24c`; ethereum `0xedbc96...3b7cad` | ⚠️ Unaudited |
| EzRVaultLib | core_logic | ethereum | n/a | [`0x47fbab...5158e2`](./contracts/ethereum-1/0x47fbab3dbaebfcf6173b9637bb020c0ca05158e2/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-23914 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FlashAuctionBuyer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x52e1fc...abd2bc`](./contracts/ethereum-1/0x52e1fc9056f5fad07f4f6a0ce36fd7d3c6abd2bc/); ethereum `0x993a52...e2d755` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-23847 | [`0x818116...d4cf3c`](./contracts/ethereum-1/0x8181164cb98cab2f6a52283da6f149cdf2d4cf3c/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | unit-23871 | [`0xce0d51...2e7fa6`](./contracts/optimism-10/0xce0d519a9ba80bffa7a8f1a48024f9a7f92e7fa6/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | mode | n/a | [`0x978fc4...032701`](./contracts/mode-34443/0x978fc40b817fc9613c0e73db2114e29a2d032701/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-23926 | [`0x978fc4...032701`](./contracts/arbitrum-42161/0x978fc40b817fc9613c0e73db2114e29a2d032701/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | [`0x213e5f...aa3bdb`](./contracts/mantle-5000/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | unit-23910 | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| LEZyVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x00aa80...0496ac`](./contracts/ethereum-1/0x00aa8017206206dd43a2dd3679e890f9b50496ac/); ethereum `0x298fa9...61cda2`; ethereum `0x5afaca...c1dbae`; ethereum `0x834fd7...95545a`; ethereum `0xbeb5e6...082f4e`; ethereum `0xfbc3da...6266d7` | ⚠️ Unaudited |
| LiFiMigrationHelper | operational_periphery | linea | n/a | 28 deployments: optimism `0x9357a0...15ce42`; optimism `0x9451e3...7807ff`; optimism `0xbb4b50...8fc38b`; mode `0x373c48...d4ec6d`; mode `0x5b42ec...c8c492`; mode `0x632829...cbdb0a`; mode `0x68fc16...e18a36`; mode `0x6d71bd...8c4d5a`; mode `0x9451e3...7807ff`; mode `0xe6820d...c65640`; arbitrum `0x72fb06...be74f2`; arbitrum `0x8c6653...bb00cb`; arbitrum `0x91c1f4...e81a67`; arbitrum `0xbb4b50...8fc38b`; arbitrum `0xedaaf2...bc320a`; arbitrum `0xf95d42...b98f2f`; linea [`0x03d020...d2c275`](./contracts/linea-59144/0x03d020ebf629e771542bd6e02543514deed2c275/); linea `0x34a40e...5f5923`; linea `0x4e2293...1690ea`; linea `0x632829...cbdb0a`; linea `0x6e4b3f...13f425`; linea `0xb73676...0eb065`; blast `0x4ce6f7...761987`; blast `0x6d71bd...8c4d5a`; blast `0xad62f4...a22ea9`; blast `0xbb4b50...8fc38b`; blast `0xedaaf2...bc320a`; blast `0xf7c7b6...596fc0` | ⚠️ Unaudited |
| ListaCDPStrategyManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x03f19f...d434be`](./contracts/bsc-56/0x03f19ffc3266242df99b0f17ba6a365c17d434be/); bsc `0x6f3ece...d5a1bd` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | n/a | 5 deployments: manta [`0x34c7ad...201ce0`](./contracts/manta-169/0x34c7ad65e4163306f8745996688b476914201ce0/); manta `0x77b6f9...1c2300`; manta `0x9bf486...7a2c6c`; manta `0xa53e00...b6527e`; manta `0xc8d4bc...45b986` | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MerklClaimerStrategy | operational_periphery | ethereum | n/a | [`0xbca648...4957db`](./contracts/ethereum-1/0xbca64801a6639ebda2c28cc0bdddf804424957db/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | bsc | unit-23872 | [`0x070bd7...e3105f`](./contracts/bsc-56/0x070bd77a19384d995e7b06bad986d4e260e3105f/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | bsc | n/a | [`0x8deb2a...3c9533`](./contracts/bsc-56/0x8deb2a40646908a67962973e40e0286d483c9533/) | ⚠️ Unaudited |
| MitosisHypERC20 | token | base | unit-23913 | [`0x747a3d...809c55`](./contracts/base-8453/0x747a3d7a65bd105e058f6ceca1af5a530b809c55/) | ⚠️ Unaudited |
| MitosisHypERC20 | token | base | unit-23916 | [`0x8a7f54...97a98b`](./contracts/base-8453/0x8a7f5457eb8dab4d48abb6bd2bdf9ebebe97a98b/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | scroll | n/a | 2 deployments: arbitrum `0x3d15fd...e2c3a0`; scroll [`0x15eefe...ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| NonUnderlyingTokenTransferStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8bddb5...67f4f8`](./contracts/ethereum-1/0x8bddb5e42b419d949bcaba2a1538c9c37867f4f8/); ethereum `0xd398b0...445833` | ⚠️ Unaudited |
| OperatorDelegator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07b86a...4a6eb5`](./contracts/ethereum-1/0x07b86abfeabc0631ce3946d8f917ba0c794a6eb5/); ethereum `0x3d4863...707b61` | ⚠️ Unaudited |
| OperatorDelegatorLib | unknown | ethereum | n/a | 3 deployments: ethereum [`0x768ba6...892f1b`](./contracts/ethereum-1/0x768ba6aab8b0531f66b517b988fe6aafc9892f1b/); ethereum `0xc1d304...0c6ae6`; ethereum `0xce4882...93e607` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | optimism | n/a | [`0x346e03...0e08f0`](./contracts/optimism-10/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0/) | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | 10 deployments: ethereum `0x671ea0...444b49`; ethereum `0x7311a9...089837`; ethereum `0x7f38db...38bcf3`; ethereum `0x80ae30...31f26a`; bsc [`0x54bb5b...6e7767`](./contracts/bsc-56/0x54bb5b12c67095eb3dabcd11fa74aacfe46e7767/); bsc `0xf099d2...d19825`; manta `0x5bd649...a4b5e2`; manta `0xd1945a...780be2`; linea `0xb883ee...92b1d2`; blast `0xcd3287...f33a91` | ⚠️ Unaudited |
| ReclaimQueueWithExtraData | unknown | bsc | n/a | 2 deployments: bsc [`0x3f74dd...f6407d`](./contracts/bsc-56/0x3f74ddb979f508a43a92eb0cc2bc3dc4aaf6407d/); base `0x56cdd5...0d6b3f` | ⚠️ Unaudited |
| RefundUSDC | unknown | arbitrum | n/a | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | ⚠️ Unaudited |
| ResolverRouter | adapter | bsc | n/a | [`0xeda662...3d6918`](./contracts/bsc-56/0xeda662f087563ea5df86bfaf9d8943deae3d6918/) | ⚠️ Unaudited |
| RoleManager | governance | ethereum | n/a | [`0x4656b1...5a4198`](./contracts/ethereum-1/0x4656b1c9055f21baf2f5f3e743f43649d95a4198/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x213e5f...aa3bdb`](./contracts/bsc-56/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); linea [`0x213e5f...aa3bdb`](./contracts/linea-59144/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); blast [`0x213e5f...aa3bdb`](./contracts/blast-81457/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| Sigma | unknown | arbitrum | unit-23925 | [`0x8cc6d6...853915`](./contracts/arbitrum-42161/0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915/) | ⚠️ Unaudited |
| StorageGasOracle | operational_periphery | bsc | n/a | [`0x91d23d...3b7940`](./contracts/bsc-56/0x91d23d603d60445411c06e6443d81395593b7940/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | n/a | 7 deployments: manta `0x3067f3...db328f`; manta `0x8c3bb8...ff522d`; manta `0xb883ee...92b1d2`; manta `0xbc33eb...a1b46c`; manta `0xcd3287...f33a91`; mode `0x04c059...6c150a`; scroll [`0x01f0a3...a1c506`](./contracts/scroll-534352/0x01f0a31698c4d065659b9bdc21b3610292a1c506/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | unit-23818 | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTC | unknown | optimism | unit-23866 | [`0x939197...2b593e`](./contracts/optimism-10/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ⚠️ Unaudited |
| uniBTC | unknown | arbitrum | unit-23922 | [`0x6b2a01...bd726a`](./contracts/arbitrum-42161/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | adapter | ethereum | n/a | [`0x09af9b...1700fb`](./contracts/ethereum-1/0x09af9b2261463c38115acd6d345da345851700fb/) | ⚠️ Unaudited |
| UsccDepositStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7c4564...760395`](./contracts/ethereum-1/0x7c4564bd54da474314f715b19d7d8c7671760395/); ethereum `0xfaea8e...d9ab40` | ⚠️ Unaudited |
| VaultHub | core_logic | manta | n/a | [`0x4a6219...5ea382`](./contracts/manta-169/0x4a6219e25a41fd4165fbd158d89723a7175ea382/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | arbitrum | unit-23923 | [`0x84e5c8...c26800`](./contracts/arbitrum-42161/0x84e5c854a7ff9f49c888d69deca578d406c26800/) | ⚠️ Unaudited |
| WeETH | unknown | ethereum | unit-23855 | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHPaymentReceiverEzETH | token | ethereum | unit-23830 | [`0x2b5b36...c3fd01`](./contracts/ethereum-1/0x2b5b36597be376221a098361ceedaaf426c3fd01/) | ⚠️ Unaudited |
| WithdrawalBuffer | operational_periphery | ethereum | n/a | [`0xed8a67...2efaf4`](./contracts/ethereum-1/0xed8a6789624eec00f93fd371cf611515bd2efaf4/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa17424...420033`](./contracts/ethereum-1/0xa17424a0d9fab54b5cc04de1ed5c8d944a420033/); ethereum `0xf821a5...e98003` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasicVaultMigration | operational_periphery | mantle | unit-23909 | `0x6ff000...dbce55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x409681...cb1b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61375b...bfa263` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d7e55...2ff7b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9106e9...d44cfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92d8b1...d3bab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa70f9e...8c9246` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd02cef...fe3d86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3c618...e11800` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4a762...9e3699` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9fb95...eddc0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9e12d...218806` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d2d6a...aaa28f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b6f7b...f7cc9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22fd11...b2dabb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x237e81...a852e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38b387...28c065` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b1d83...4a96b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ff70f...2ae313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f72bf...578fc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x702407...03accd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77391a...3f4d96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c20e8...e7045a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e1486...b16683` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb67865...3b0adf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc7ea3...bcfe08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc392e2...d718af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6af57...f72f75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe70e86...6a3db6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe890a5...9e1d46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeede4f...839d0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf65958...6fb424` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfadbc8...e042b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb972f...d11bf4` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x0b75e1...eaa2fa` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x54602e...2cee34` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xb9e834...b86690` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xcf101e...95b28c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/mitosis-org/chain/203384fc62b6203525f486c5130fd484344c2668/audits/2025-05-22_Zellic_Mainnet.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-09-21_Zenith_Protocol.pdf](https://github.com/mitosis-org/protocol/blob/main/audits/2025-09-21_Zenith_Protocol.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Introduction](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8) | Code4rena | Contest | 2024-04 | stale | Direct | contract_name | 2 | low |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x241609...cceea5`](./contracts/arbitrum-42161/0x2416092f143378750bb29b79ed961ab195cceea5/) | XERC20 | token | $5,285,740.23 | Verified native implementation with $5,285,740.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | BoringVault | core_logic | $334,211.65 | Verified native implementation with $334,211.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b75e1...eaa2fa`](./contracts/ethereum-1/0x0b75e167f8a37179b7044414ee43e94cabeaa2fa/) | TheoDepositVault | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x13cad3...56aab4`](./contracts/manta-169/0x13cad3aa86df1233dc9930a8f88f43237056aab4/) | ATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x472edc...86e584`](./contracts/manta-169/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/) | BasicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x3cda62...fc0f1f`](./contracts/manta-169/0x3cda62917dae24d153c102b3db9bb5c058fc0f1f/) | BasicVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xadd585...1abfc2`](./contracts/bsc-56/0xadd58517c5d45c8ed361986f193785f8ed1abfc2/) | BasicVaultMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x843fa3...0cfc10`](./contracts/mode-34443/0x843fa321fdf9fafd134fed5fb1d35e17290cfc10/) | BasicVaultMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4709ab...404fc7`](./contracts/ethereum-1/0x4709ab91123f7dbb4b6c4a02c94e855678404fc7/) | CachedRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x877b9e...0a6031`](./contracts/manta-169/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/) | CCDMClient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdab6eb...873bd8`](./contracts/bsc-56/0xdab6eb82b38dc83168f9d01fb1f8804aea873bd8/) | ERC4626NativeDepositProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45fed8...19cccd`](./contracts/ethereum-1/0x45fed80345757ce3b530effa4b8022df3419cccd/) | EthDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe97c9...9b5fe6`](./contracts/ethereum-1/0xbe97c9410ac4cf12966c31e70d748b5c889b5fe6/) | EulerEzEthLoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8bbf7c...3b176d`](./contracts/bsc-56/0x8bbf7c542e433bfa6eb25da9e077c2c5873b176d/) | ExtensibleVaultTemp | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ae4be...3d31af`](./contracts/base-8453/0x2ae4be809273bae142c938ae1ff6a3f6853d31af/) | ExtensibleVaultWithExtraData | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x938f1b...4660ce`](./contracts/ethereum-1/0x938f1b481c8b34435d5177ba077981edb44660ce/) | EzAdminL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebb77a...bbd86a`](./contracts/ethereum-1/0xebb77a6a553646f81eaf57429c8fc004f9bbd86a/) | ezETHConversionStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35b5eb...b0bd9e`](./contracts/ethereum-1/0x35b5ebe66dd7ef372f5c36b25a297863e1b0bd9e/) | ezETHValueStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77b61e...44dd3b`](./contracts/ethereum-1/0x77b61eaf914fcffd731c55bd4888b2a9a244dd3b/) | EzRVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47fbab...5158e2`](./contracts/ethereum-1/0x47fbab3dbaebfcf6173b9637bb020c0ca05158e2/) | EzRVaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52e1fc...abd2bc`](./contracts/ethereum-1/0x52e1fc9056f5fad07f4f6a0ce36fd7d3c6abd2bc/) | FlashAuctionBuyer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00aa80...0496ac`](./contracts/ethereum-1/0x00aa8017206206dd43a2dd3679e890f9b50496ac/) | LEZyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03f19f...d434be`](./contracts/bsc-56/0x03f19ffc3266242df99b0f17ba6a365c17d434be/) | ListaCDPStrategyManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x34c7ad...201ce0`](./contracts/manta-169/0x34c7ad65e4163306f8745996688b476914201ce0/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbca648...4957db`](./contracts/ethereum-1/0xbca64801a6639ebda2c28cc0bdddf804424957db/) | MerklClaimerStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8deb2a...3c9533`](./contracts/bsc-56/0x8deb2a40646908a67962973e40e0286d483c9533/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x15eefe...ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bddb5...67f4f8`](./contracts/ethereum-1/0x8bddb5e42b419d949bcaba2a1538c9c37867f4f8/) | NonUnderlyingTokenTransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07b86a...4a6eb5`](./contracts/ethereum-1/0x07b86abfeabc0631ce3946d8f917ba0c794a6eb5/) | OperatorDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x768ba6...892f1b`](./contracts/ethereum-1/0x768ba6aab8b0531f66b517b988fe6aafc9892f1b/) | OperatorDelegatorLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f74dd...f6407d`](./contracts/bsc-56/0x3f74ddb979f508a43a92eb0cc2bc3dc4aaf6407d/) | ReclaimQueueWithExtraData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | RefundUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xeda662...3d6918`](./contracts/bsc-56/0xeda662f087563ea5df86bfaf9d8943deae3d6918/) | ResolverRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4656b1...5a4198`](./contracts/ethereum-1/0x4656b1c9055f21baf2f5f3e743f43649d95a4198/) | RoleManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x91d23d...3b7940`](./contracts/bsc-56/0x91d23d603d60445411c06e6443d81395593b7940/) | StorageGasOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x939197...2b593e`](./contracts/optimism-10/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c4564...760395`](./contracts/ethereum-1/0x7c4564bd54da474314f715b19d7d8c7671760395/) | UsccDepositStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4a6219...5ea382`](./contracts/manta-169/0x4a6219e25a41fd4165fbd158d89723a7175ea382/) | VaultHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed8a67...2efaf4`](./contracts/ethereum-1/0xed8a6789624eec00f93fd371cf611515bd2efaf4/) | WithdrawalBuffer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa17424...420033`](./contracts/ethereum-1/0xa17424a0d9fab54b5cc04de1ed5c8d944a420033/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 4 |
| standard_library | 24 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=23

Zero-match audit list:

- [3056] Rendered PDF capture
- [3059] 2025-09-21_Zenith_Protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
