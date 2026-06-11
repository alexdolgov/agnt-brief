# Agentic Audit Brief: Mitosis

## Project Overview

- Project: Mitosis (`mitosis`)
- Website: [https://mitosis.org](https://mitosis.org)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-11T01:09:52.458Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta, mantle, mode, optimism, scroll
- Contract surface: 66 unique implementations (160 raw deployments)
- DeFi Llama TVL: $1,489,070.06
- On-chain TVL (included contracts): $329,004,729.11
- TVL by chain: Ethereum $179,297,289.49 | Arbitrum $139,149,782.44 | Bsc $10,557,657.18

## Project Description

Mitosis is currently positioned as a Layer 1 / global execution layer for programmable liquidity, enabling liquidity to be deployed and coordinated across chains and applications. Historical vault, wrapper, token, and migration contracts related to LST/LRT or restaking aggregation should be treated as legacy or supporting components rather than the sole description of the current project.

### Architecture

All product families rely on the Mitosis Core Infrastructure for vault creation, cap management, and cross-chain migrations. The BasicVaultMigration contracts serve as the primary mechanism for upgrading user positions from external tokens to Mitosis-wrapped versions, while the Cap contracts enforce supply limits across the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/43 (0.0%)
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 66
- Raw deployments: 160
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $329,004,729.11
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EzEthToken | token | ethereum | [`0xbf5495...8d2110`](./contracts/ethereum-1/0xbf5495efe5db9ce00f80364c8b423567e58d2110/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x357510...cf4dbe`](./contracts/arbitrum-42161/0x35751007a407ca6feffe80b3cb397736d2cf4dbe/) | ⚠️ Unaudited |
| RockXETH | token | ethereum | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ⚠️ Unaudited |
| HypERC20 | token | bsc | [`0x8e1e6b...16caef`](./contracts/bsc-56/0x8e1e6bf7e13c400269987b65ab2b5724b016caef/) | ⚠️ Unaudited |
| XERC20 | token | arbitrum | [`0x241609...cceea5`](./contracts/arbitrum-42161/0x2416092f143378750bb29b79ed961ab195cceea5/) | ⚠️ Unaudited |
| ExtensibleVaultWithExtraData | core_logic | bsc | 3 deployments: ethereum `0xdfb48a...c1042d`; bsc [`0x6d1703...1a5943`](./contracts/bsc-56/0x6d1703d913c74afaedd4b78deee7f32aa91a5943/); bsc `0xa5deb1...8df42d` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| TheoDepositVault | core_logic | arbitrum | 8 deployments: ethereum `0x0b75e1...eaa2fa`; arbitrum [`0x01f90a...43381d`](./contracts/arbitrum-42161/0x01f90a7b1c749f4a0b7d115120deda0e2343381d/); arbitrum `0x263b7b...55da11`; arbitrum `0x3ca8f1...319009`; arbitrum `0x54602e...2cee34`; linea `0x3ca8f1...319009`; linea `0xca538a...27630f`; linea `0xcf101e...95b28c` | ⚠️ Unaudited |
| ATM | unknown | arbitrum | 4 deployments: arbitrum [`0x13cad3...56aab4`](./contracts/arbitrum-42161/0x13cad3aa86df1233dc9930a8f88f43237056aab4/); arbitrum `0xbc33eb...a1b46c`; linea `0x86c4dc...5f6e99`; linea `0xf57104...3ad1b3` | ⚠️ Unaudited |
| BasicVault | core_logic | arbitrum | 3 deployments: arbitrum [`0x472edc...86e584`](./contracts/arbitrum-42161/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/); arbitrum `0xf57104...3ad1b3`; linea `0x877b9e...0a6031` | ⚠️ Unaudited |
| BasicVaultFactory | registry | linea | 4 deployments: arbitrum `0x3067f3...db328f`; arbitrum `0x3cda62...fc0f1f`; linea [`0x1b3588...8a5f12`](./contracts/linea-59144/0x1b358850978e018be1073e3d40cf55a12b8a5f12/); linea `0xd1945a...780be2` | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | ethereum | 22 deployments: ethereum [`0x0109e9...fa5358`](./contracts/ethereum-1/0x0109e9f292516dab3e15efc61811c5e5a7fa5358/); ethereum `0x02ff1f...b94cf3`; ethereum `0x14c5a9...d8cdbf`; ethereum `0xa1ebd2...629182`; ethereum `0xe4cf2d...59a3ec`; optimism `0x5616fe...6821be`; optimism `0xea8edd...da0dd7`; bsc `0xadd585...1abfc2`; mantle `0x6ff000...dbce55`; arbitrum `0x3c09fb...beb0df`; arbitrum `0x73981b...f2a007`; arbitrum `0x7e8cff...53e8ba`; arbitrum `0x96d98f...087b23`; arbitrum `0xbed575...749471`; arbitrum `0xddded3...df94d8`; linea `0x3478de...b5eaa5`; linea `0x56ced4...b08768`; linea `0x6000ed...487e9b`; linea `0x96d6ce...d9ec2d`; blast `0x0817b8...ae31ef`; blast `0x8506fd...3f60a0`; scroll `0xa0eeb4...28bd28` | ⚠️ Unaudited |
| BeaconProxy | registry | manta | 4 deployments: manta [`0x8735c8...61981e`](./contracts/manta-169/0x8735c80fb5aeff60d35c9d6e663758af7861981e/); mode `0xa30c15...dfa442`; mode `0xbed575...749471`; scroll `0xb9ca61...4308d6` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| Cap | unknown | blast | 11 deployments: ethereum `0x451d79...2b16f9`; optimism `0xb883ee...92b1d2`; arbitrum `0x1d28de...c57c56`; arbitrum `0xb883ee...92b1d2`; arbitrum `0xbc986f...b158b2`; arbitrum `0xdd8bea...00d9aa`; linea `0x2bfbb9...f567d4`; linea `0x3cda62...fc0f1f`; linea `0x8f34cf...3ebb4c`; linea `0xcd3287...f33a91`; blast [`0x096430...4169de`](./contracts/blast-81457/0x096430ef0a653c067df32e93ff77090e084169de/) | ⚠️ Unaudited |
| CCDMClient | unknown | arbitrum | 3 deployments: arbitrum [`0x877b9e...0a6031`](./contracts/arbitrum-42161/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/); arbitrum `0x8c3bb8...ff522d`; linea `0xbc33eb...a1b46c` | ⚠️ Unaudited |
| CCDMHost | unknown | linea | 2 deployments: arbitrum `0x7671f4...4e0c41`; linea [`0x5bd649...a4b5e2`](./contracts/linea-59144/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/) | ⚠️ Unaudited |
| EETH | unknown | ethereum | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | linea | [`0x1bf74c...0b8aa6`](./contracts/linea-59144/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6/) | ⚠️ Unaudited |
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
| ProxyAdmin | governance | arbitrum | 2 deployments: arbitrum [`0x5bd649...a4b5e2`](./contracts/arbitrum-42161/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/); linea `0xb883ee...92b1d2` | ⚠️ Unaudited |
| RefundUSDC | unknown | arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | ⚠️ Unaudited |
| SafeL2 | unknown | scroll | [`0x213e5f...aa3bdb`](./contracts/scroll-534352/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | 3 deployments: bsc [`0x213e5f...aa3bdb`](./contracts/bsc-56/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); linea [`0x213e5f...aa3bdb`](./contracts/linea-59144/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); blast [`0x213e5f...aa3bdb`](./contracts/blast-81457/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| Sigma | unknown | arbitrum | [`0x8cc6d6...853915`](./contracts/arbitrum-42161/0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915/) | ⚠️ Unaudited |
| TheoVaultRoundsTracker | core_logic | arbitrum | 4 deployments: arbitrum [`0x4d11a4...9e87ce`](./contracts/arbitrum-42161/0x4d11a4ba2ded004c3fe5560a029050326d9e87ce/); arbitrum `0x7ca71e...4e8225`; arbitrum `0xa3819f...4bd9c3`; arbitrum `0xcf101e...95b28c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | 5 deployments: manta `0xb883ee...92b1d2`; mode `0x04c059...6c150a`; mode `0xb883ee...92b1d2`; scroll [`0x01f0a3...a1c506`](./contracts/scroll-534352/0x01f0a31698c4d065659b9bdc21b3610292a1c506/); scroll `0xcd3287...f33a91` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | 3 deployments: ethereum [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/); optimism `0x939197...2b593e`; arbitrum `0x6b2a01...bd726a` | ⚠️ Unaudited |
| VaultHub | core_logic | arbitrum | 4 deployments: arbitrum [`0x4a6219...5ea382`](./contracts/arbitrum-42161/0x4a6219e25a41fd4165fbd158d89723a7175ea382/); arbitrum `0xcd3287...f33a91`; linea `0x7671f4...4e0c41`; linea `0x8c3bb8...ff522d` | ⚠️ Unaudited |
| VaultKeeper | operational_periphery | arbitrum | 7 deployments: arbitrum [`0x7401ac...8356e1`](./contracts/arbitrum-42161/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/); arbitrum `0x83c6ac...ec19b4`; arbitrum `0xbb691e...9018fb`; arbitrum `0xd2b24b...7516d3`; linea [`0x7401ac...8356e1`](./contracts/linea-59144/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/); linea `0xab3151...2a1d85`; linea `0xda7371...ff362f` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | arbitrum | [`0x84e5c8...c26800`](./contracts/arbitrum-42161/0x84e5c854a7ff9f49c888d69deca578d406c26800/) | ⚠️ Unaudited |
| WeETH | unknown | ethereum | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| WETH9 | token | base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
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
| UnnamedContract | unknown | linea | `0x4a6219...5ea382` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9b6544...cf42e0` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x0b75e1...eaa2fa` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x54602e...2cee34` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xb9e834...b86690` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xcf101e...95b28c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/mitosis-org/chain/203384fc62b6203525f486c5130fd484344c2668/audits/2025-05-22_Zellic_Mainnet.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-09-21_Zenith_Protocol.pdf](https://github.com/mitosis-org/protocol/blob/main/audits/2025-09-21_Zenith_Protocol.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | BoringVault | core_logic | $334,211.65 | Verified native implementation with $334,211.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01f90a...43381d`](./contracts/arbitrum-42161/0x01f90a7b1c749f4a0b7d115120deda0e2343381d/) | TheoDepositVault | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13cad3...56aab4`](./contracts/arbitrum-42161/0x13cad3aa86df1233dc9930a8f88f43237056aab4/) | ATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x472edc...86e584`](./contracts/arbitrum-42161/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/) | BasicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x877b9e...0a6031`](./contracts/arbitrum-42161/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/) | CCDMClient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5bd649...a4b5e2`](./contracts/linea-59144/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/) | CCDMHost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x346e03...0e08f0`](./contracts/optimism-10/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | RefundUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4d11a4...9e87ce`](./contracts/arbitrum-42161/0x4d11a4ba2ded004c3fe5560a029050326d9e87ce/) | TheoVaultRoundsTracker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a6219...5ea382`](./contracts/arbitrum-42161/0x4a6219e25a41fd4165fbd158d89723a7175ea382/) | VaultHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7401ac...8356e1`](./contracts/arbitrum-42161/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/) | VaultKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 7 |
| standard_library | 22 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3056] Rendered PDF capture
- [3059] 2025-09-21_Zenith_Protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
