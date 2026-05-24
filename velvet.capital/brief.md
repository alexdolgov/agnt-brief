# Agentic Audit Brief: Velvet.Capital

⚠️ Lifecycle status: DECLINING - TVL dropped 83.6% over 90 days

## Project Overview

- Project: Velvet.Capital (`velvet.capital`)
- Website: [https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b](https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T23:13:59.933Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 420 unique implementations (624 raw deployments)
- DeFi Llama TVL: $1,435,978.00
- On-chain TVL (included contracts): $95,216,575.47
- TVL by chain: Bsc $95,216,569.37 | Base $6.10

## Project Description

Velvet.Capital is a DeFi protocol that enables users to create and manage tokenized portfolios (indexes) and yield-generating vaults. It provides infrastructure for automated portfolio rebalancing and yield optimization across multiple chains.

### Architecture

Both families share infrastructure such as ProtocolConfig and TokenRegistry contracts, and use ERC1967Proxy for upgradeability. VelvetToken from V2 may be used within V3 portfolios, linking the two versions.

## Audit Coverage Summary

- Verified implementations audited: 35/45 (77.8%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 1
- Unverified implementations: 375
- Unique implementations: 420
- Raw deployments: 624
- Audits discovered: 13
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $95,216,575.47
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 4 aging, 7 stale, 1 unknown
- Tier 1 coverage: 2.2% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of $95,216,575.47 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 33 | 73.3% | 2024-07 |
| PeckShield | Tier 2 | 7 | 15.6% | 2024-12 |
| Spearbit | Tier 1 | 1 | 2.2% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (34)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ApeSwapLPHandler | unknown | arbitrum | 3 deployments: arbitrum [`0x098f30...c84a5e`](./contracts/arbitrum-42161/0x098f30b250f37b7d0ebc7f2721fac586eec84a5e/); arbitrum `0x77ff38...2ce210`; arbitrum `0xfece41...04867d` | ✅ Audited |
| AssetManagementConfig | governance | base | 5 deployments: ethereum `0x27a2ee...6b8e35`; ethereum `0x9b51c5...9eaf0c`; base [`0x17e14a...02a09d`](./contracts/base-8453/0x17e14a8bc2380096f9e9eafea47fe1015502a09d/); base `0x9b6d2c...94d29d`; base `0xec7341...345c23` | ✅ Audited |
| AssetManagerConfig | governance | arbitrum | [`0xefadfc...cb1950`](./contracts/arbitrum-42161/0xefadfcc4a6bdc27730f53fa7a9c25c09d8cb1950/) | ✅ Audited |
| BebopHandler | unknown | arbitrum | 3 deployments: arbitrum [`0x511d05...f1dec5`](./contracts/arbitrum-42161/0x511d0595003137556bd5d7d7b2e002ab5bf1dec5/); arbitrum `0x99dd9a...b65406`; arbitrum `0xa67b78...984c35` | ✅ Audited |
| BeefyBridgeHandler | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x00ae5d...285024`](./contracts/arbitrum-42161/0x00ae5d239f19e523271cf4941101dfd6a7285024/); arbitrum `0x722e04...6d05f5`; arbitrum `0xcd855c...b8ae7e` | ✅ Audited |
| BeefyLPHandler | unknown | arbitrum | 3 deployments: arbitrum [`0x34da31...747a4f`](./contracts/arbitrum-42161/0x34da31dbdf8bb66fc5b056a0a58198a75f747a4f/); arbitrum `0x558e0c...769ba1`; arbitrum `0xb1cb5f...7690f0` | ✅ Audited |
| DepositBatch | periphery | ethereum | 9 deployments: ethereum [`0x0be44b...bb1c4c`](./contracts/ethereum-1/0x0be44bcb5f0001e3cb247c30a575e18509bb1c4c/); ethereum `0x32c249...78e3b6`; ethereum `0xe6afac...4b9694`; ethereum `0xea9fd1...3c6bf1`; ethereum `0xf674e7...c08f59`; base `0x6e3e0f...e63e05`; base `0xa166de...1aeeb1`; base `0xef521a...2b6e16`; base `0xfe0861...031fe6` | ✅ Audited |
| DepositManager | core_logic | ethereum | 14 deployments: ethereum [`0x1a7934...56a584`](./contracts/ethereum-1/0x1a79346c914b3164733599cbcfa0fadd5256a584/); ethereum `0x271caa...fe6f06`; ethereum `0x77814d...687653`; ethereum `0xbc1b87...865706`; ethereum `0xcdb6e3...6e6c7f`; ethereum `0xcffd5f...5dfc41`; ethereum `0xe12c59...7f71af`; ethereum `0xf908e0...c30094`; ethereum `0xff6221...e6ee7c`; base `0x61f18d...598448`; base `0x85d68c...d01ff1`; base `0xb2448b...6f0c4e`; base `0xe3f8d5...965739`; base `0xe4e231...f6e2ed` | ✅ Audited |
| EnsoHandler | unknown | ethereum | 7 deployments: ethereum [`0x18439b...53e617`](./contracts/ethereum-1/0x18439b037dcae4a1528ccc3871d695e61653e617/); ethereum `0x93601c...bc7dbf`; base `0x6ec2a3...3ab7f6`; base `0xa91029...1958f1`; base `0xb048e1...5d4890`; base `0xba13eb...fb1280`; base `0xc1d560...93e17c` | ✅ Audited |
| Exchange | unknown | arbitrum | [`0x8868b7...fc7033`](./contracts/arbitrum-42161/0x8868b7be6293e10b6fd078ef635faa486dfc7033/) | ✅ Audited |
| FeeLibrary | unknown | arbitrum | [`0x4943e3...5d8e4d`](./contracts/arbitrum-42161/0x4943e341381ce0adb393c5f572416606435d8e4d/) | ✅ Audited |
| FeeModule | unknown | base | 12 deployments: ethereum `0x9a090f...4e2994`; ethereum `0xa1718c...0f157f`; ethereum `0xfeb3eb...b7edc1`; base [`0x01ff7a...d65fdc`](./contracts/base-8453/0x01ff7a36f7cd0e63252e52678412978891d65fdc/); base `0x220d9a...44b288`; base `0x24492f...f2f410`; base `0x5ca995...cfdf93`; base `0x64238b...54f166`; base `0xc05d2e...062bd3`; base `0xc8b0d8...2d90e4`; arbitrum `0xa69a69...0de365`; arbitrum `0xdeec97...56199e` | ✅ Audited |
| HopHandler | unknown | arbitrum | 3 deployments: arbitrum [`0x4a08ca...4f34a5`](./contracts/arbitrum-42161/0x4a08caa639c4bbcb742aaebcb7133aacb54f34a5/); arbitrum `0xb6d78a...95da2b`; arbitrum `0xfa0e1b...725145` | ✅ Audited |
| IndexFactory | registry | arbitrum | 4 deployments: arbitrum [`0x64d6ad...58db48`](./contracts/arbitrum-42161/0x64d6ad2a58b67441e5a1f5afcfddc421fd58db48/); arbitrum `0x6a2aad...2e84c6`; arbitrum `0xc42091...414d97`; arbitrum `0xfd29ae...28ba32` | ✅ Audited |
| IndexSwap | unknown | arbitrum | [`0xcd2c78...ca656e`](./contracts/arbitrum-42161/0xcd2c7805255e5fc2a43ba934c86a52e8b1ca656e/) | ✅ Audited |
| IndexSwapLibrary | unknown | arbitrum | [`0xd41dde...c12b02`](./contracts/arbitrum-42161/0xd41ddebc57f20fe4bf771b663b48f6d60cc12b02/) | ✅ Audited |
| KyberSwapHandler | unknown | arbitrum | 5 deployments: arbitrum [`0x55944b...26b150`](./contracts/arbitrum-42161/0x55944bd5aa6982cba6cf030e15df90d6d626b150/); arbitrum `0x5c96f2...d45fb1`; arbitrum `0x87d9bc...a5fded`; arbitrum `0x94511c...bdf429`; arbitrum `0xc923a7...08fcc8` | ✅ Audited |
| OffChainIndexSwap | unknown | arbitrum | [`0x76b7ae...75bf89`](./contracts/arbitrum-42161/0x76b7aeb4b4a5299e31741ab7919c189b4475bf89/) | ✅ Audited |
| OneInchHandler | unknown | arbitrum | 3 deployments: arbitrum [`0x63c52c...34ba6f`](./contracts/arbitrum-42161/0x63c52cb3f5536fe0dcc51866cbaec4c77434ba6f/); arbitrum `0x6a6c42...9888da`; arbitrum `0xbb3ccb...f2cd47` | ✅ Audited |
| Portfolio | unknown | base | 12 deployments: ethereum `0x0a6c29...d321e3`; ethereum `0x6d07f7...08dd47`; base [`0x05a8a7...c5f0e2`](./contracts/base-8453/0x05a8a7e66897816b52ecd5c271db6c7988c5f0e2/); base `0x1387b9...1352c2`; base `0x3475dd...d2e784`; base `0x4ec6a9...17c412`; base `0x8452b1...932483`; base `0x885858...b13c26`; base `0xa2fd80...841ae3`; base `0xcbea61...2f0509`; base `0xceb021...0e25c8`; base `0xe22e87...724b75` | ✅ Audited |
| PortfolioCalculations | unknown | base | 5 deployments: ethereum `0x24f348...4fa6ee`; base [`0x18d039...2a1e07`](./contracts/base-8453/0x18d0392d39d807f37a07a8d5e9177c5aa12a1e07/); base `0x62b2e3...359adc`; base `0x67e91a...36ac03`; base `0xd236b6...cd9c36` | ✅ Audited |
| PortfolioFactory | registry | base | 12 deployments: ethereum `0x6d135e...235a86`; ethereum `0x7c530c...47738b`; ethereum `0xeadd9e...a081c2`; ethereum `0xee0420...a8faee`; base [`0x22d44e...101082`](./contracts/base-8453/0x22d44ec3f1f217c97ccf3ca1b500043a66101082/); base `0x5fef75...c1b16d`; base `0x850fff...1710ca`; base `0xa1b576...34039a`; base `0xadf04f...c8a0e5`; base `0xb79935...6de448`; base `0xdb4dfa...2ef951`; base `0xf93659...282a7f` | ✅ Audited |
| PriceOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x326a99...a969c1`](./contracts/ethereum-1/0x326a99f037c8d572a62e10363f7ad69942a969c1/); ethereum `0x6fe178...afc0c0` | ✅ Audited |
| PriceOracleL2 | operational_periphery | arbitrum | 4 deployments: base `0x608e93...cf967e`; base `0xea600d...8fd7b6`; arbitrum [`0x162386...a0c8bd`](./contracts/arbitrum-42161/0x1623865021c6260aa1fd53a04788e70c0aa0c8bd/); arbitrum `0x794319...fc333c` | ✅ Audited |
| ProtocolConfig | governance | base | 12 deployments: ethereum `0x44b8ce...f9792b`; ethereum `0x758005...f2996d`; ethereum `0x819c0d...45b021`; ethereum `0x85c326...d3265b`; base [`0x0490a4...63a5d2`](./contracts/base-8453/0x0490a477e4fc96392bdf1e2846e3230a1263a5d2/); base `0x6de977...33bf51`; base `0xa88583...463211`; base `0xde057a...504f99`; base `0xde3e99...a5782e`; base `0xe74d7f...1162d8`; base `0xefc7e2...55e118`; base `0xfc0c1e...61f3a6` | ✅ Audited |
| RebalanceLibrary | unknown | arbitrum | [`0x8a42c0...84edc8`](./contracts/arbitrum-42161/0x8a42c07cf759b988cf615910428ffa9fb784edc8/) | ✅ Audited |
| Rebalancing | unknown | base | 6 deployments: ethereum `0xbb44fe...7da239`; base [`0x0191bd...7761ed`](./contracts/base-8453/0x0191bd53527db568bbd87494794e9447e87761ed/); base `0x0827cf...6ccbe0`; base `0x77b4c4...497644`; base `0x8b33dc...b19365`; arbitrum `0x5545b9...1d9714` | ✅ Audited |
| TokenExclusionManager | governance | base | 6 deployments: ethereum `0xcf77a6...e5ab16`; ethereum `0xea6621...31e1fe`; base [`0x2069b3...5cba9b`](./contracts/base-8453/0x2069b31cfd7145224da7f6198c31d2a09e5cba9b/); base `0x4f6998...d12ca7`; base `0xaa4585...7e4747`; base `0xb9e424...4a4565` | ✅ Audited |
| TokenRegistry | registry | arbitrum | 4 deployments: arbitrum [`0x3b3d82...36a06b`](./contracts/arbitrum-42161/0x3b3d824d75b074930ae89c4cf298c22c0136a06b/); arbitrum `0x7fd017...73d6a2`; arbitrum `0x95a798...77dbfa`; arbitrum `0xe79219...e8fcdd` | ✅ Audited |
| VelvetSafeModule | unknown | arbitrum | [`0x4fce56...f16dd1`](./contracts/arbitrum-42161/0x4fce56162da3c30624eb6655e44f626238f16dd1/) | ✅ Audited |
| veVelvet | unknown | base | 2 deployments: base [`0x0e4a34...9bbc41`](./contracts/base-8453/0x0e4a34f4d9469ae13f176ca9003af2bd159bbc41/); base `0xf807db...480c64` | ✅ Audited |
| WithdrawBatch | operational_periphery | ethereum | 12 deployments: ethereum [`0x1fb1b6...382644`](./contracts/ethereum-1/0x1fb1b6485a2b1b3227d48ed62759771831382644/); ethereum `0xa45bb9...ab2fb9`; ethereum `0xce5838...1d92cb`; base `0x56e9f1...1b6f50`; base `0x61a3ad...8802ab`; base `0x64f6b8...85a507`; base `0x73ce0b...8bab5d`; base `0x7c0bf2...e1af58`; base `0xa4fb54...398d5a`; base `0xaead7d...cfe177`; base `0xb6bf44...d710cf`; base `0xe38d68...3ba86c` | ✅ Audited |
| WombatHandler | unknown | arbitrum | 3 deployments: arbitrum [`0xb97d9b...43d996`](./contracts/arbitrum-42161/0xb97d9b3c0fedfe6a66a9b5edb2de6ae2c243d996/); arbitrum `0xeba200...7a3c06`; arbitrum `0xfc9c17...80d96b` | ✅ Audited |
| ZeroExHandler | unknown | arbitrum | 3 deployments: arbitrum [`0x0ddfc4...122994`](./contracts/arbitrum-42161/0x0ddfc491eba9c845f968bbcab638cd6e93122994/); arbitrum `0x4800f2...a280fe`; arbitrum `0xaa7a86...fae50a` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VelvetToken | token | bsc | [`0x8b1943...8c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | ⚠️ Unaudited |
| VaultProxy | core_logic | base | [`0x4da07a...df2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | ⚠️ Unaudited |
| BaseHandler | unknown | arbitrum | 4 deployments: arbitrum [`0x1e1287...0ccd80`](./contracts/arbitrum-42161/0x1e1287ca35954860d3197bbf22856b27890ccd80/); arbitrum `0x97373c...8a5d31`; arbitrum `0xb6e3dc...a51028`; arbitrum `0xd19482...e17974` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | 60 deployments: ethereum `0xd5c3b4...5379b2`; base [`0x085606...8711b8`](./contracts/base-8453/0x085606d8ae07f1b457dc814bdda315078c8711b8/); base `0x09ce0a...9e5ae7`; base `0x0a6c29...d321e3`; base `0x0fe7c8...d13529`; base `0x19c6d3...80532c`; base `0x1b902c...44346a`; base `0x1d0f17...8cf0a1`; base `0x1fecf4...f7f142`; base `0x2f692e...9eb079`; base `0x303e89...bb9144`; base `0x321c15...c3ac14`; base `0x364a15...b8516d`; base `0x3dfb1d...aeff13`; base `0x440908...4b75fe`; base `0x4c5727...00ef82`; base `0x56b697...2f3ca8`; base `0x57de05...668c7b`; base `0x60939a...1b2389`; base `0x638463...746a51`; base `0x682200...cc5dab`; base `0x6952ad...762ae6`; base `0x6bec6a...07d131`; base `0x6decb1...5f7c8e`; base `0x6e9036...e1dae5`; base `0x6f7cdd...ca224d`; base `0x81d083...927d9d`; base `0x88b2bb...c98d86`; base `0x89c087...c6ce2e`; base `0x8b71ee...3a6c2b`; base `0x8d3f1b...c03463`; base `0x90dcd1...866f95`; base `0xa019e0...523b62`; base `0xa2cb7e...8ef5f4`; base `0xa68901...270207`; base `0xab1a20...bdbfc9`; base `0xadaf29...db7c6c`; base `0xb0c31b...e25854`; base `0xb9c922...da8999`; base `0xbd3e97...4c15c4`; base `0xc0a0f2...3854db`; base `0xc13246...5d95ed`; base `0xcf3be6...d7862d`; base `0xcfc13b...e42c0c`; base `0xd2a158...cfd8a3`; base `0xd48c15...2c4542`; base `0xd6ef57...333acd`; base `0xd7b766...6ed91d`; base `0xe3df7e...bd8d3c`; base `0xe45a01...af05d5`; base `0xe58545...4ca67d`; base `0xe6b12d...1a22db`; base `0xeecd5a...16c435`; base `0xf171ca...ac5962`; base `0xf1acb5...2bfadf`; base `0xf31b95...9faca3`; arbitrum `0x240222...458bc9`; arbitrum `0x2bc9b4...3877c1`; arbitrum `0x3a15a0...4f85e4`; arbitrum `0x6293a8...ffe402` | ⚠️ Unaudited |
| MetaAggregatorManager | governance | base | [`0x9070c2...860e9b`](./contracts/base-8453/0x9070c26eb90f9c54ee8d7953dbdcde01c9860e9b/) | ⚠️ Unaudited |
| MetaAggregatorSwapContract | unknown | base | [`0xa62128...5b5130`](./contracts/base-8453/0xa62128dbbb8add95f482a2c18ac42878e65b5130/) | ⚠️ Unaudited |
| OffChainRebalance | unknown | arbitrum | [`0x1141ca...1afe94`](./contracts/arbitrum-42161/0x1141ca2a3de147c658beb9a1ebc6beb6e71afe94/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | [`0x8367ca...d148fa`](./contracts/base-8453/0x8367ca4b7cfe34610ecfb112b2881b2084d148fa/) | ⚠️ Unaudited |
| RebalanceAggregator | unknown | arbitrum | [`0x8eeaee...9502e1`](./contracts/arbitrum-42161/0x8eeaee6e97ba2676d2ea14cb96dcde799e9502e1/) | ⚠️ Unaudited |
| RebalancingNew | unknown | base | [`0x49457b...e9e696`](./contracts/base-8453/0x49457bde21ec6f925ef62af80430adf3e3e9e696/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WithdrawManager | operational_periphery | base | 12 deployments: ethereum `0x0fe7c8...d13529`; ethereum `0x2fb0f1...3b2638`; ethereum `0xb0c31b...e25854`; base [`0x0ea4c2...03ba44`](./contracts/base-8453/0x0ea4c210e05457e84b9e95eb8dcbd3cd6f03ba44/); base `0x25abf6...a4cf0a`; base `0x2ebd37...bb7640`; base `0x4643c0...57eeff`; base `0x71e99c...b97639`; base `0x99e9c4...3aedab`; base `0xa9452e...611e59`; base `0xac64c5...3e47df`; base `0xe4057c...03d41a` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (375)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x345eb2...06c6ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51b761...7209ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67bfb9...b88e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d5916...f44715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x71c7d2...7edf56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x779f30...5299fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86912a...60b6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92a89b...c78a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa019e0...523b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb08c55...1c27dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb49892...d5378e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb63515...46b4c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddd401...b0da00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe362f0...07118c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea8799...62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1acb5...2bfadf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf31b95...9faca3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x009e59...d1eecb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x00d4c9...5776b7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x019c0a...0069db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02a2d2...69fadc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0658ed...b7184c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x073fb1...5ac2df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x07420a...c3bf34` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0860b1...301cf4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x08c716...d929e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x08c79e...75b77a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x09aa6b...9afe35` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0a1224...58c78e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0a678a...e2b63d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0aa8a6...d07c87` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b7e0e...2323c2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b9706...994feb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0bdbff...36f4d3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0be44b...bb1c4c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0d238f...f860d8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0d6f1c...d69cc4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0ea488...1b9206` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x104304...3a82de` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1099d9...301441` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x115110...c31b03` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x132aee...80ac60` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x13c4ca...068409` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x145efd...6d20ec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x179dc6...cbce0f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1a7934...56a584` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b0e95...379123` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b4198...1659c8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1c25ae...a903f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1de930...4909fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1ded33...97d89f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1fb1b6...382644` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x21c652...25bd9f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x229d97...22471d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x24721b...9c2e9f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x24874d...46fc0a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x27a2ee...6b8e35` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x27b591...b189d9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x280798...d9052e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x281809...c3620a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x285a96...5c580e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x29e824...ff4bf0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2a0ad6...035fa0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2e8d0b...82dabe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2f3edb...4c5fb8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2fb0f1...3b2638` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3016e5...23a5a2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x326a99...a969c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x32f8ad...d94a5c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x36568b...806355` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x378e88...21d7c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x37a9d1...e09ea4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x37cbb5...21f10d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x386736...f6d285` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x39f910...60cc7d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a62a7...1e82be` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3ad87f...15076e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3b5453...81d8ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3b5d96...52edf4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3bb407...4857a6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3bde64...df775f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3e2b2f...2b9087` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3fad68...18031a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x411740...2d465e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4160dc...f8590e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x43636f...bbb008` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x44b8ce...f9792b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x475d3e...4c8fd8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x49bbf8...57b96c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4c4d52...33595d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x505a11...9bd856` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x51afe0...1a5fda` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52795a...8253f7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52f0a3...8a55df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5346ae...dd528b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5364ab...44d371` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x545138...379108` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x567387...bc0268` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57cf10...3f8bcf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57d3c6...4c51f7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x58d4ef...a2b954` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x59036d...e13d32` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x597f87...2ee3f0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5abf9b...2c45d0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5cf627...842d81` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5e3d30...92c552` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x608ed5...5fb1b0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x60a933...93f0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x60d60e...684af3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x61f8a7...52a1db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x62677a...8d798a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x655a35...64d0ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x65844d...0697ba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x666ae3...9e7649` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x689c19...97a184` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x68febc...5a8efc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6b677b...2b9f61` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6bc745...445b53` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6bea9d...5076cf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6d135e...235a86` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6d2732...f30f01` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6fc164...56597e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6fe178...afc0c0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x70f6bb...3e770d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x71611c...a1772b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x71c7d2...7edf56` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x71e833...be1b3d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72cd09...7949fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72de32...3b1bc9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x731960...720e8a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7503dc...05277c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x754c21...5028e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x75d368...a4d883` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x76d37c...0937ec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x77184c...f428c0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7781e1...ea0896` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x78c2d2...8dbe69` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x79935d...67f705` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7bdb91...7bb515` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d82aa...38b571` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7fa126...937ab3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7fca43...b0fe51` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x801e34...02dd28` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8176a9...efe17f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x819c0d...45b021` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x82460e...6cf03a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x831c23...057c38` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x831deb...c55258` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x856cec...eed75a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x86023b...f390a3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x866f93...eeb63c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x86e3c1...a55ea1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87ea5f...5434d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x88e5cb...630f38` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8aafca...fe16b8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8bb7c1...60a8c9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8eca06...5dc807` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8fe805...3065ac` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x91b09b...30ace4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x91bdeb...c6074b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x926417...c2e495` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x933ef0...c3bd80` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9375ff...33dde7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x956065...999d4d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x96443e...7b0c5b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x971135...dc06d9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x972c16...a7aef4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x986158...e14537` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x99bed4...d0a77d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x99d571...17a877` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x99e5d0...31ecd1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x99e8be...d1e288` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9aa255...150a1c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9b51c5...9eaf0c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d99ce...a6634f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9f4665...44645e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9fbe69...0295f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa1718c...0f157f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa4d98e...65a82c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa55444...a8221c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa665d0...6b65ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa72edc...7612ca` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa952e2...ed1117` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac25ef...82f10d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac31b1...7852e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xadc361...442622` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xae920e...581302` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb00d1c...b7ef1e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb39762...78cde2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb48817...4f6141` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb7bfb6...4da770` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb812d8...b562f8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb81d58...08a5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb8d4a5...56679e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb8f645...fd8314` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbada99...97c04e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb11dc...ff82a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb3e62...5e9b33` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb44fe...7da239` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbc1b20...0c8683` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbca067...de708c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbdc5e6...611b43` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbddd03...074d43` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe0d46...428713` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe4dbb...a2a661` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc0f736...f8a810` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc114df...46fffa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc3c552...119053` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc5ef80...ed20b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc6e5a6...5bd43f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc806af...0b94e8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc820b9...bae5fd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc95092...7ba5f4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc9b901...34638f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xca2bde...1d9fad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xca2ee3...a8719c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xca4f15...17433f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xca77b5...10218a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcb22f1...a90f0b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcbfad1...0dd3ef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcc988c...6b0d26` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcd4530...f8dfde` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xce5738...c4d650` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xce5838...1d92cb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xce6fd3...4016e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf3b29...798527` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf734d...218b40` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf77a6...e5ab16` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcfd36b...9280ff` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd06b00...201ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd22dfc...11b106` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd402f4...012810` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd512ef...4cb555` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd5c3b4...5379b2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd782f8...929b39` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd7cc12...b8bccd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8c21e...569b96` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd99432...6eead5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd9a577...d59607` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdb81c9...a858a6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdc12c6...226e44` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdccca6...18b76f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdcf19c...24818f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdcfb46...f46d43` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd5aa7...d053b6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xddd401...b0da00` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xde5312...3998b5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe1dd2b...00d2c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe3547a...3731cc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe3727b...be3de2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe39fa9...8ab782` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe52a75...badd16` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe5fee9...1a23f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6afac...4b9694` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe7f5ef...c7ca5c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xea6621...31e1fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xea8799...62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xea9fd1...3c6bf1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeadd9e...a081c2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeea887...ff9ce6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf54e77...08e314` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf61c11...9152de` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf64585...288c86` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf68261...db3362` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf6bb94...ab214c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf81516...bb90e4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf908e0...c30094` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf97456...7205d3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf9a280...57e86e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfcbceb...c28f74` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfcc409...1e4b5f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfd5742...3c3c0e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff3d8e...e43736` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff6221...e6ee7c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xffa059...f7e5d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x00506c...78e6a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x02afc2...5bc232` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x048baf...9785a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e7f5d...07fdf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bc108...b8c443` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ec011...d05a4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x23f0ff...f17a40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x272188...780b79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x278bda...a7bc47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2cbdb4...2617a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2da5dc...4b06f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2dbbb0...1f1c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x355680...763b52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3597dd...8e1c4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x373b74...0ee331` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x37c193...f4c527` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x39b101...c292e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a36d1...51edbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a9acb...99415c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b7d74...5e70d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3e91dd...18acdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ec379...d2205a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x454b08...6191b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d127f...ff29fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4dde02...1ef2b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4df519...159f25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f8e08...62a9cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5021da...539e93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x502e05...76b5fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x507000...0e5775` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x52c66d...400def` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x540fc3...1d7e81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x54dbd1...f3611c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x56650a...feda8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5aaf20...3356f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d3382...10a961` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e1c3e...3b624f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x611dd5...f47828` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x629f4b...17194f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6433ac...205f76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x699238...a0b59f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ff07f...48c550` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7396fc...f4db44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x748b70...210b61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x798689...daa28d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7bd1e6...b27ffa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7e833a...32801a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7eeb9d...20239c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82351e...f3c2bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x85af83...daba13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x861285...118b25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x86d8e1...85c04e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x87064e...e49379` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8838d4...faf140` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a4eec...87fd23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x93b7d5...ef127b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x942f21...27b4af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x94bfdc...0715c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x972f66...c5f721` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x980d5c...bd1b05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e24ab...d31534` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1c8ba...6b20ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa34751...ffd0be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa3e678...9d17f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa90b3e...571543` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb1a8f4...50db2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb346e2...06e82c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb56644...6a5ead` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7094d...ddf739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7eb47...c8f584` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbcc9f2...24b667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbde0f5...348c42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbfd7ff...7cf0f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1d124...2b83d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5fb67...2e222f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd0943...5eaddb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcda68e...885f04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf5cc2...940fa4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd2f289...d725a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd34004...1a1a94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdabdbc...a25384` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdbc51d...9faff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd07c2...82843a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd3491...da29f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe45155...703695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe85b2e...64c153` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe90814...0e27f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9310f...92584e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed50b5...79edc3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee1f5a...e74eff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1484c...f4a126` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf50ac1...804830` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf5dac0...6085e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf91831...788787` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb1d4f...2a97be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfde578...a603f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfe0f15...bed625` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfe45c2...5bd046` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff97c7...a0ca2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xffda23...a74f99` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_VLVT-V3C_FINAL_20-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20-1.pdf) | unknown | Audit | 2024-06 | aging | Direct | contract_name | 33 | high |
| [Audit_Report_VLVT-V3C_FINAL_20.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20.pdf) | unknown | Audit | 2024-06 | aging | Direct | contract_name | 33 | high |
| [PeckShield-Audit-Report-Velvet-v1.0_final.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-Velvet-v1.0_final.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 17 | high |
| [PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 12 | high |
| [Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 130 | high |
| [Velvet_Capital - Final Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital%20-%20Final%20Report-1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 15 | high |
| [Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 29 | high |
| [Velvet_Capital_V2_Security_Audit_Report.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Security_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 33 | high |
| [report-cantinacode-velvet-0807-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807-1.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [report.md](https://github.com/Velvet-Capital/audits/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 52 | medium |
| [PeckShield-Audit-Report-Velvet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Velvet-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://shellboxes.com/audit/reports/Velvet_Capital_Security_Audit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8b1943...8c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | VelvetToken | token | $95,216,569.37 | Verified native implementation with $95,216,569.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4da07a...df2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | VaultProxy | core_logic | $6.10 | Verified native implementation with $6.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e1287...0ccd80`](./contracts/arbitrum-42161/0x1e1287ca35954860d3197bbf22856b27890ccd80/) | BaseHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9070c2...860e9b`](./contracts/base-8453/0x9070c26eb90f9c54ee8d7953dbdcde01c9860e9b/) | MetaAggregatorManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1141ca...1afe94`](./contracts/arbitrum-42161/0x1141ca2a3de147c658beb9a1ebc6beb6e71afe94/) | OffChainRebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8eeaee...9502e1`](./contracts/arbitrum-42161/0x8eeaee6e97ba2676d2ea14cb96dcde799e9502e1/) | RebalanceAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49457b...e9e696`](./contracts/base-8453/0x49457bde21ec6f925ef62af80430adf3e3e9e696/) | RebalancingNew | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 319 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: extraction_exact=375

Fork inheritance lineage and inherited audits are included when available.
