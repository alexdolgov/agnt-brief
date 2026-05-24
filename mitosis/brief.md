# Agentic Audit Brief: Mitosis

⚠️ Lifecycle status: DEAD - TVL dropped 38.1% over 90 days

## Project Overview

- Project: Mitosis (`mitosis`)
- Website: [https://mitosis.org](https://mitosis.org)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T21:56:54.675Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta, mantle, mode, optimism, scroll
- Contract surface: 96 unique implementations (268 raw deployments)
- DeFi Llama TVL: $1,475,153.90
- On-chain TVL (included contracts): $329,139,226.08
- TVL by chain: Ethereum $179,360,091.56 | Arbitrum $139,149,782.44 | Bsc $10,557,657.18 | Linea $71,694.91

## Project Description

Mitosis is an onchain capital allocator that aggregates multiple liquid staking and restaking tokens (e.g., uniETH, uniBTC, eETH, ezETH) into unified vault products. It enables cross-chain yield strategies and liquidity management through a system of vaults, tokens, and migration contracts.

### Architecture

All product families rely on the Mitosis Core Infrastructure for vault creation, cap management, and cross-chain migrations. The BasicVaultMigration contracts serve as the primary mechanism for upgrading user positions from external tokens to Mitosis-wrapped versions, while the Cap contracts enforce supply limits across the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 2/68 (2.9%)
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 96
- Raw deployments: 268
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $329,139,226.08
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: 2.9% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of $329,139,226.08 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 2.9% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Cap | unknown | blast | 11 deployments: ethereum `0x451d79...2b16f9`; optimism `0xb883ee...92b1d2`; arbitrum `0x1d28de...c57c56`; arbitrum `0xb883ee...92b1d2`; arbitrum `0xbc986f...b158b2`; arbitrum `0xdd8bea...00d9aa`; linea `0x2bfbb9...f567d4`; linea `0x3cda62...fc0f1f`; linea `0x8f34cf...3ebb4c`; linea `0xcd3287...f33a91`; blast [`0x096430...4169de`](./contracts/blast-81457/0x096430ef0a653c067df32e93ff77090e084169de/) | ✅ Audited |
| CCDMHost | unknown | linea | 2 deployments: arbitrum `0x7671f4...4e0c41`; linea [`0x5bd649...a4b5e2`](./contracts/linea-59144/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EzEthToken | token | ethereum | [`0xbf5495...8d2110`](./contracts/ethereum-1/0xbf5495efe5db9ce00f80364c8b423567e58d2110/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x357510...cf4dbe`](./contracts/arbitrum-42161/0x35751007a407ca6feffe80b3cb397736d2cf4dbe/) | ⚠️ Unaudited |
| RockXETH | token | ethereum | 6 deployments: ethereum [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); ethereum `0x58cb26...9d187d`; ethereum `0x79f2c3...449597`; ethereum `0x8a9486...98e590`; ethereum `0xd48d3e...905e11`; ethereum `0xf1376b...df51f4` | ⚠️ Unaudited |
| HypERC20 | token | bsc | [`0x8e1e6b...16caef`](./contracts/bsc-56/0x8e1e6bf7e13c400269987b65ab2b5724b016caef/) | ⚠️ Unaudited |
| XERC20 | token | arbitrum | [`0x241609...cceea5`](./contracts/arbitrum-42161/0x2416092f143378750bb29b79ed961ab195cceea5/) | ⚠️ Unaudited |
| ExtensibleVaultWithExtraData | core_logic | bsc | 3 deployments: ethereum `0xdfb48a...c1042d`; bsc [`0x6d1703...1a5943`](./contracts/bsc-56/0x6d1703d913c74afaedd4b78deee7f32aa91a5943/); bsc `0xa5deb1...8df42d` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| EtherfiL2LineaSyncPoolETH | core_logic | linea | [`0x823106...6d9cca`](./contracts/linea-59144/0x823106e745a62d0c2fc4d27644c62ade946d9cca/) | ⚠️ Unaudited |
| brVault | core_logic | ethereum | 2 deployments: ethereum [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/); ethereum `0xc7d81a...8334c7` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | ethereum | 3 deployments: ethereum [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/); ethereum `0xcb674f...36ba8c`; arbitrum `0x84e5c8...c26800` | ⚠️ Unaudited |
| TheoDepositVault | core_logic | arbitrum | 8 deployments: ethereum `0x0b75e1...eaa2fa`; arbitrum [`0x01f90a...43381d`](./contracts/arbitrum-42161/0x01f90a7b1c749f4a0b7d115120deda0e2343381d/); arbitrum `0x263b7b...55da11`; arbitrum `0x3ca8f1...319009`; arbitrum `0x54602e...2cee34`; linea `0x3ca8f1...319009`; linea `0xca538a...27630f`; linea `0xcf101e...95b28c` | ⚠️ Unaudited |
| RewardPool | core_logic | ethereum | 3 deployments: ethereum [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/); ethereum `0xb7019c...732064`; ethereum `0xfc9268...9d4c36` | ⚠️ Unaudited |
| ATM | unknown | arbitrum | 4 deployments: arbitrum [`0x13cad3...56aab4`](./contracts/arbitrum-42161/0x13cad3aa86df1233dc9930a8f88f43237056aab4/); arbitrum `0xbc33eb...a1b46c`; linea `0x86c4dc...5f6e99`; linea `0xf57104...3ad1b3` | ⚠️ Unaudited |
| BasicVault | core_logic | arbitrum | 3 deployments: arbitrum [`0x472edc...86e584`](./contracts/arbitrum-42161/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/); arbitrum `0xf57104...3ad1b3`; linea `0x877b9e...0a6031` | ⚠️ Unaudited |
| BasicVaultFactory | registry | linea | 4 deployments: arbitrum `0x3067f3...db328f`; arbitrum `0x3cda62...fc0f1f`; linea [`0x1b3588...8a5f12`](./contracts/linea-59144/0x1b358850978e018be1073e3d40cf55a12b8a5f12/); linea `0xd1945a...780be2` | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | ethereum | 22 deployments: ethereum [`0x0109e9...fa5358`](./contracts/ethereum-1/0x0109e9f292516dab3e15efc61811c5e5a7fa5358/); ethereum `0x02ff1f...b94cf3`; ethereum `0x14c5a9...d8cdbf`; ethereum `0xa1ebd2...629182`; ethereum `0xe4cf2d...59a3ec`; optimism `0x5616fe...6821be`; optimism `0xea8edd...da0dd7`; bsc `0xadd585...1abfc2`; mantle `0x6ff000...dbce55`; arbitrum `0x3c09fb...beb0df`; arbitrum `0x73981b...f2a007`; arbitrum `0x7e8cff...53e8ba`; arbitrum `0x96d98f...087b23`; arbitrum `0xbed575...749471`; arbitrum `0xddded3...df94d8`; linea `0x3478de...b5eaa5`; linea `0x56ced4...b08768`; linea `0x6000ed...487e9b`; linea `0x96d6ce...d9ec2d`; blast `0x0817b8...ae31ef`; blast `0x8506fd...3f60a0`; scroll `0xa0eeb4...28bd28` | ⚠️ Unaudited |
| BeaconProxy | registry | manta | 4 deployments: manta [`0x8735c8...61981e`](./contracts/manta-169/0x8735c80fb5aeff60d35c9d6e663758af7861981e/); mode `0xa30c15...dfa442`; mode `0xbed575...749471`; scroll `0xb9ca61...4308d6` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| brBTC | unknown | ethereum | 2 deployments: ethereum [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/); ethereum `0xac6f8c...e9f7f0` | ⚠️ Unaudited |
| BucketRateLimiter | unknown | linea | 3 deployments: linea [`0x3a1986...5a3975`](./contracts/linea-59144/0x3a19866d5e0fae0ce19adda617f9d2b9fd5a3975/); linea `0x6d2cf7...e7e7af`; linea `0x95f113...c76781` | ⚠️ Unaudited |
| CCDMClient | unknown | arbitrum | 3 deployments: arbitrum [`0x877b9e...0a6031`](./contracts/arbitrum-42161/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/); arbitrum `0x8c3bb8...ff522d`; linea `0xbc33eb...a1b46c` | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | 2 deployments: ethereum [`0x17ea3d...908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/); ethereum `0x55a67c...b60edc` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | ethereum | [`0x7c3f1f...465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | ⚠️ Unaudited |
| DelayRedeemRouter | adapter | ethereum | 2 deployments: ethereum [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/); ethereum `0xaa732c...f89246` | ⚠️ Unaudited |
| directBTC | unknown | ethereum | 2 deployments: ethereum [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/); ethereum `0xa70099...c0b090` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | 2 deployments: ethereum [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/); ethereum `0x91fd8c...d64500` | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | 8 deployments: ethereum [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/); ethereum `0x204d10...08d17d`; ethereum `0x285418...363446`; ethereum `0x47b091...cc9ebb`; ethereum `0x655bc4...63d5ae`; ethereum `0x8ee512...6779ca`; ethereum `0xbed9c1...7e8259`; ethereum `0xe8239b...5c4572` | ⚠️ Unaudited |
| EETH | unknown | ethereum | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | ⚠️ Unaudited |
| EtherfiL2ExchangeRateProvider | unknown | linea | 2 deployments: linea [`0x22c498...30f5dc`](./contracts/linea-59144/0x22c498b5c42c787c790f8f1fcef50b33a830f5dc/); linea `0x241a91...518344` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | linea | [`0x1bf74c...0b8aa6`](./contracts/linea-59144/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6/) | ⚠️ Unaudited |
| FBTCProxy | unknown | ethereum | [`0xa3a30f...85b1ae`](./contracts/ethereum-1/0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x818116...d4cf3c`](./contracts/ethereum-1/0x8181164cb98cab2f6a52283da6f149cdf2d4cf3c/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | mode | 3 deployments: optimism `0xce0d51...2e7fa6`; mode [`0x978fc4...032701`](./contracts/mode-34443/0x978fc40b817fc9613c0e73db2114e29a2d032701/); arbitrum [`0x978fc4...032701`](./contracts/arbitrum-42161/0x978fc40b817fc9613c0e73db2114e29a2d032701/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | [`0x213e5f...aa3bdb`](./contracts/mantle-5000/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| LiFiMigrationHelper | operational_periphery | linea | 16 deployments: arbitrum `0x373c48...d4ec6d`; arbitrum `0x72fb06...be74f2`; arbitrum `0x8c6653...bb00cb`; arbitrum `0x91c1f4...e81a67`; arbitrum `0xbb4b50...8fc38b`; arbitrum `0xedaaf2...bc320a`; arbitrum `0xf95d42...b98f2f`; arbitrum `0xfe5c7e...519f99`; linea [`0x03d020...d2c275`](./contracts/linea-59144/0x03d020ebf629e771542bd6e02543514deed2c275/); linea `0x34a40e...5f5923`; linea `0x4e2293...1690ea`; linea `0x632829...cbdb0a`; linea `0x666402...d83b73`; linea `0x6e4b3f...13f425`; linea `0xb73676...0eb065`; linea `0xbb4b50...8fc38b` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | [`0x77b6f9...1c2300`](./contracts/manta-169/0x77b6f99970f488cfa8bd41892900b6ce881c2300/) | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | linea | [`0x04c059...6c150a`](./contracts/linea-59144/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/) | ⚠️ Unaudited |
| MitosisHypERC20 | token | base | 2 deployments: base [`0x747a3d...809c55`](./contracts/base-8453/0x747a3d7a65bd105e058f6ceca1af5a530b809c55/); base `0x8a7f54...97a98b` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | scroll | 2 deployments: arbitrum `0x3d15fd...e2c3a0`; scroll [`0x15eefe...ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | optimism | [`0x346e03...0e08f0`](./contracts/optimism-10/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0/) | ⚠️ Unaudited |
| Payment | unknown | ethereum | 2 deployments: ethereum [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); ethereum `0x9203ce...718031` | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | 2 deployments: ethereum [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/); ethereum `0x7e8e03...288f20` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 3 deployments: ethereum `0x9f6326...e7f002`; arbitrum [`0x5bd649...a4b5e2`](./contracts/arbitrum-42161/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/); linea `0xb883ee...92b1d2` | ⚠️ Unaudited |
| Redeem | unknown | ethereum | 3 deployments: ethereum [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/); ethereum `0x981692...1d3b8d`; ethereum `0x9ca778...3c5f8c` | ⚠️ Unaudited |
| RefundUSDC | unknown | arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | ⚠️ Unaudited |
| Restaking | unknown | ethereum | 8 deployments: ethereum [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/); ethereum `0x1e4d0a...c4e518`; ethereum `0x3f4eac...6e9850`; ethereum `0x4d6c23...7a9f04`; ethereum `0x595994...a0fa96`; ethereum `0x9c8725...a5f412`; ethereum `0x9cfbf2...d665d6`; ethereum `0xad8bd6...62b96a` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | 6 deployments: ethereum [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/); ethereum `0x5e3787...58d2f9`; ethereum `0x876868...7de595`; ethereum `0x89b2c7...740aeb`; ethereum `0xbc48e8...33d03d`; ethereum `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| RockXRestaking | unknown | ethereum | 2 deployments: ethereum [`0x351eea...69a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/); ethereum `0xbb879a...241ab5` | ⚠️ Unaudited |
| RockXStaking | unknown | ethereum | 22 deployments: ethereum [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/); ethereum `0x0bd74c...2d97bd`; ethereum `0x10f91a...7723dc`; ethereum `0x11b380...66be7b`; ethereum `0x1df46e...90ad93`; ethereum `0x3e904a...33eab5`; ethereum `0x3f924b...e5791b`; ethereum `0x413c36...4d1247`; ethereum `0x56adf8...c334db`; ethereum `0x5c9b33...02cfd7`; ethereum `0x5e8fd0...618ae0`; ethereum `0x62cea4...f1ca61`; ethereum `0x680d9f...40f565`; ethereum `0x774c97...f2070d`; ethereum `0x90687a...2fc487`; ethereum `0x9a74f7...630560`; ethereum `0x9ba573...f7c757`; ethereum `0x9c3749...88d6b2`; ethereum `0xc2cba4...221923`; ethereum `0xc92a22...cd0bde`; ethereum `0xd4408c...c779e8`; ethereum `0xf35df2...28a09d` | ⚠️ Unaudited |
| SafeL2 | unknown | scroll | [`0x213e5f...aa3bdb`](./contracts/scroll-534352/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | 3 deployments: bsc [`0x213e5f...aa3bdb`](./contracts/bsc-56/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); linea [`0x213e5f...aa3bdb`](./contracts/linea-59144/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); blast [`0x213e5f...aa3bdb`](./contracts/blast-81457/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| Sigma | unknown | ethereum | 3 deployments: ethereum [`0x18d0d9...d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/); arbitrum `0x1f6c2e...257b5a`; arbitrum `0x8cc6d6...853915` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 3 deployments: ethereum [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/); ethereum `0xa20caf...d9a8de`; ethereum `0xd96849...ff31b1` | ⚠️ Unaudited |
| TheoVaultRoundsTracker | core_logic | arbitrum | 4 deployments: arbitrum [`0x4d11a4...9e87ce`](./contracts/arbitrum-42161/0x4d11a4ba2ded004c3fe5560a029050326d9e87ce/); arbitrum `0x7ca71e...4e8225`; arbitrum `0xa3819f...4bd9c3`; arbitrum `0xcf101e...95b28c` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0xf4954a...755024`](./contracts/ethereum-1/0xf4954ae0f18b236b643a4bf126e743f23f755024/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | 5 deployments: manta `0xb883ee...92b1d2`; mode `0x04c059...6c150a`; mode `0xb883ee...92b1d2`; scroll [`0x01f0a3...a1c506`](./contracts/scroll-534352/0x01f0a31698c4d065659b9bdc21b3610292a1c506/); scroll `0xcd3287...f33a91` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | 8 deployments: ethereum [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/); ethereum `0x38a3e2...6234e7`; ethereum `0x3f310c...44c5bd`; ethereum `0x51a7f8...db6c5e`; ethereum `0x780a69...f375c5`; optimism `0x939197...2b593e`; arbitrum `0x6b2a01...bd726a`; arbitrum `0x94c7f8...cce2b3` | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | 2 deployments: ethereum [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/); ethereum `0xf50dba...bcdae9` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 5 deployments: ethereum [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/); ethereum `0x317b8e...876ef6`; ethereum `0x472372...108e45`; arbitrum `0x08cb45...46775d`; arbitrum `0xfa8c3e...f41e5f` | ⚠️ Unaudited |
| VaultHub | core_logic | arbitrum | 4 deployments: arbitrum [`0x4a6219...5ea382`](./contracts/arbitrum-42161/0x4a6219e25a41fd4165fbd158d89723a7175ea382/); arbitrum `0xcd3287...f33a91`; linea `0x7671f4...4e0c41`; linea `0x8c3bb8...ff522d` | ⚠️ Unaudited |
| VaultKeeper | operational_periphery | arbitrum | 7 deployments: arbitrum [`0x7401ac...8356e1`](./contracts/arbitrum-42161/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/); arbitrum `0x83c6ac...ec19b4`; arbitrum `0xbb691e...9018fb`; arbitrum `0xd2b24b...7516d3`; linea [`0x7401ac...8356e1`](./contracts/linea-59144/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/); linea `0xab3151...2a1d85`; linea `0xda7371...ff362f` | ⚠️ Unaudited |
| WeETH | unknown | ethereum | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| WETH9 | token | base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0fe418...dc12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69fd3e...21bbdb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x04af63...e58638` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f99b9...9a55e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x361a4d...404968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6712a3...1c9924` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67c90f...4dd83a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77ef79...252eb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a6abd...170ac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9002d8...c606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1958f...4538f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa79f1f...ff136b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1945a...780be2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeaf024...9501d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee518a...d418a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf781ac...c3cca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf91d94...f1c2d2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x13cad3...56aab4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1d28de...c57c56` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x20ee00...e38cc7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4a6219...5ea382` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x60be06...238755` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9b6544...cf42e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfd503f...04402c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x0b75e1...eaa2fa` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x54602e...2cee34` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xb9e834...b86690` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xcf101e...95b28c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Introduction](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8) | Code4rena | Contest | 2024-04 | stale | Direct | contract_name | 13 | low |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/mitosis-org/chain/203384fc62b6203525f486c5130fd484344c2668/audits/2025-05-22_Zellic_Mainnet.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-09-21_Zenith_Protocol.pdf](https://github.com/mitosis-org/protocol/blob/main/audits/2025-09-21_Zenith_Protocol.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | BoringVault | core_logic | $334,211.65 | Verified native implementation with $334,211.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01f90a...43381d`](./contracts/arbitrum-42161/0x01f90a7b1c749f4a0b7d115120deda0e2343381d/) | TheoDepositVault | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | RewardPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13cad3...56aab4`](./contracts/arbitrum-42161/0x13cad3aa86df1233dc9930a8f88f43237056aab4/) | ATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x472edc...86e584`](./contracts/arbitrum-42161/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/) | BasicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x877b9e...0a6031`](./contracts/arbitrum-42161/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/) | CCDMClient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | DelayRedeemRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | DirectBTCMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | DirectStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x03d020...d2c275`](./contracts/linea-59144/0x03d020ebf629e771542bd6e02543514deed2c275/) | LiFiMigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x346e03...0e08f0`](./contracts/optimism-10/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | PodOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | RefundUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4d11a4...9e87ce`](./contracts/arbitrum-42161/0x4d11a4ba2ded004c3fe5560a029050326d9e87ce/) | TheoVaultRoundsTracker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a6219...5ea382`](./contracts/arbitrum-42161/0x4a6219e25a41fd4165fbd158d89723a7175ea382/) | VaultHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7401ac...8356e1`](./contracts/arbitrum-42161/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/) | VaultKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 8 |
| standard_library | 32 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=13

Zero-match audit list:

- [3056] Rendered PDF capture
- [3059] 2025-09-21_Zenith_Protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
