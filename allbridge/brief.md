# Agentic Audit Brief: Allbridge

⚠️ Lifecycle status: DECLINING - TVL dropped 5.5% over 90 days

## Project Overview

- Project: Allbridge (`allbridge`)
- Website: [https://app.allbridge.io](https://app.allbridge.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:47.735Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, celo, ethereum, fantom, harmony, linea, optimism, polygon, sonic, unichain
- Contract surface: 110 unique implementations (220 raw deployments)
- DeFi Llama TVL: $21,162,719.00
- On-chain TVL (included contracts): $21,723,834.32
- TVL by chain: Ethereum $16,151,997.99 | Bsc $2,931,661.59 | Arbitrum $761,941.23 | Polygon $663,216.38 | Base $652,024.37 | Celo $282,251.27 | Avalanche $158,422.69 | Optimism $74,308.37 | Unichain $26,646.96 | Sonic $21,363.48

## Project Description

Allbridge is a cross-chain bridge for transferring assets between blockchains. Its current Allbridge Core product supports cross-chain swaps and transfers of native stablecoins using liquidity pools, while Allbridge Classic is the legacy wrapped-token bridge. LayerZero/OFT should only be referenced for specific adapter contracts when directly supported by scope evidence.

### Architecture

Allbridge Classic and Allbridge Core are separate bridge implementations that do not share infrastructure. The Classic bridge is being deprecated in favor of Core, which uses a different architecture based on liquidity pools and OFT adapters.

## Contract Surface Quality

- Indexed contracts: 548; live-surface contracts included: 220 (209 live, 11 unknown).
- Excluded by liveness: 292 inactive, 36 singleton, 0 uninitialized.
- Deployment units: 2/20 live.
- Detected codebases: none
- Unverified dependencies: 1/18.

## Audit Coverage Summary

- Verified implementations audited: 0/35 (0.0%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 4
- Unverified implementations: 75
- Unique implementations: 110
- Raw deployments: 220
- Audits discovered: 11
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,723,834.32
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 0 aging, 4 stale, 6 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $21,723,834.32 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | polygon | n/a | 20 deployments: ethereum `0x7dbf07...74135d`; ethereum `0xa7062b...c57c4d`; ethereum `0xcab34d...51abad`; optimism `0x3b96f8...f1f68f`; optimism `0xb24a05...b0deea`; bsc `0x731822...f29953`; bsc `0xf833af...537811`; unichain `0xba2fba...a094d7`; unichain `0xd0a1ff...d9fce1`; polygon [`0x0394c4...090791`](./contracts/polygon-137/0x0394c4f17738a10096510832beab89a9dd090791/); polygon `0x4c42df...2eb0a6`; polygon `0x58cc62...9437da`; sonic `0xca0dc3...43c71f`; base `0xda6bb1...5e96d5`; arbitrum `0x2b5e5e...c59d6d`; arbitrum `0x47235c...8472c7`; arbitrum `0x690e66...8a21df`; celo `0xfb2c7c...e2b5af`; avalanche `0x2d2f46...8b5784`; avalanche `0xe82735...38ec9f` | ⚠️ Unaudited |
| YellowToken | token | polygon | n/a | 2 deployments: ethereum `0x90b7e2...8a3320`; polygon [`0x18e73a...ab7b81`](./contracts/polygon-137/0x18e73a5333984549484348a94f4d219f4fab7b81/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | [`0xc2c28b...115148`](./contracts/bsc-56/0xc2c28b58db223da89b567a0a98197fc17c115148/) | ⚠️ Unaudited |
| StableTokenV2 | token | celo | unit-18408 | [`0xe8537a...ab4787`](./contracts/celo-42220/0xe8537a3d056da446677b9e9d6c5db704eaab4787/) | ⚠️ Unaudited |
| Accounts | unknown | celo | n/a | 4 deployments: celo [`0x0fe151...67ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x565677...e2b98c`; celo `0x907f5c...9c525a`; celo `0xbac4a3...05f603` | ⚠️ Unaudited |
| AttestationsProxy | unknown | celo | n/a | 18 deployments: celo [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| CctpBridge | operational_periphery | optimism | n/a | 5 deployments: ethereum `0xc51397...2210d6`; optimism [`0x08391e...7c1cd0`](./contracts/optimism-10/0x08391edf36f41f05d27a1e0fd7a29448417c1cd0/); polygon `0x710282...1ac82c`; base `0x1efe2c...6314f6`; arbitrum `0x23e1ae...92ccdb` | ⚠️ Unaudited |
| DuckyFamilyV1 | unknown | polygon | n/a | [`0xb66bf7...ff7675`](./contracts/polygon-137/0xb66bf78cad7cbab51988ddc792652cbabdff7675/) | ⚠️ Unaudited |
| Election | unknown | celo | n/a | 3 deployments: celo [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x3db69c...9f6f28`; celo `0xbd7d39...31780e` | ⚠️ Unaudited |
| EpochManager | governance | celo | n/a | [`0x91e35c...dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | ⚠️ Unaudited |
| EpochRewards | unknown | celo | n/a | 3 deployments: celo [`0x33285c...63464b`](./contracts/celo-42220/0x33285cab4df24f37899dc14f324530661c63464b/); celo `0x4cadba...562aba`; celo `0x9dc549...f050d9` | ⚠️ Unaudited |
| GasOracle | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x0bdf61...5b96e0`](./contracts/ethereum-1/0x0bdf6139f2841a7856ca154d851182c52f5b96e0/); optimism `0x4ad835...199d9a`; polygon `0x163f20...29d612`; base `0x7b806a...42f6d6`; arbitrum `0x2476b2...ebcb10`; avalanche `0x175fda...a2d29e` | ⚠️ Unaudited |
| GoldToken | token | celo | n/a | 3 deployments: celo [`0x04a182...c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0xb16516...b2c19d`; celo `0xfea1b3...c4f7b1` | ⚠️ Unaudited |
| Governance | unknown | celo | n/a | 3 deployments: celo [`0x40bca4...1824e6`](./contracts/celo-42220/0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6/); celo `0x40cac0...a6c57a`; celo `0xf51d27...7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | 2 deployments: celo [`0xb1b7b6...c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/); celo `0xed1073...6dbe14` | ⚠️ Unaudited |
| HAPI | unknown | ethereum | n/a | [`0xd9c2d3...84fb54`](./contracts/ethereum-1/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | ⚠️ Unaudited |
| HAPIBSC | unknown | bsc | n/a | [`0xd9c2d3...84fb54`](./contracts/bsc-56/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | ⚠️ Unaudited |
| HedgetToken | token | bsc | n/a | [`0xc7d8d3...071731`](./contracts/bsc-56/0xc7d8d35eba58a0935ff2d5a33df105dd9f071731/) | ⚠️ Unaudited |
| ImpossibleFinance | unknown | bsc | n/a | [`0xb0e1fc...614af1`](./contracts/bsc-56/0xb0e1fc65c1a741b4662b813eb787d369b8614af1/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | n/a | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| Messenger | unknown | ethereum | n/a | 6 deployments: ethereum [`0x203e87...9086da`](./contracts/ethereum-1/0x203e8785b4d4312c4152d0c42ba3fa8bd79086da/); optimism `0x309a09...093695`; polygon `0x3e0383...38451c`; base `0x9bc674...558271`; arbitrum `0xd5826d...bc4f9d`; avalanche `0xfd6e9d...36446f` | ⚠️ Unaudited |
| PEN | unknown | ethereum | n/a | [`0x5ee318...c88f66`](./contracts/ethereum-1/0x5ee3188a3f8adee1d736edd4ae85000105c88f66/) | ⚠️ Unaudited |
| PortfolioToken | token | celo | n/a | [`0xbeff0c...63120d`](./contracts/celo-42220/0xbeff0ca03f5a9d4eb79057c81d2596265a63120d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | unichain | n/a | [`0x818861...73c97a`](./contracts/unichain-130/0x818861321540148dbf6058d585cc0427f273c97a/) | ⚠️ Unaudited |
| Rewards | unknown | bsc | n/a | [`0x88f042...085110`](./contracts/bsc-56/0x88f042fdea1d94ccd7b848686f9f529552085110/) | ⚠️ Unaudited |
| StableTokenV3 | token | celo | unit-18406 | [`0xd8763c...d6ca73`](./contracts/celo-42220/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73/) | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | unichain | n/a | [`0x01bff4...bc1071`](./contracts/unichain-130/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| USDeOFT | unknown | arbitrum | n/a | [`0x5d3a1f...52ef34`](./contracts/arbitrum-42161/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| Validators | unknown | celo | n/a | [`0xa47961...c8dc95`](./contracts/celo-42220/0xa47961bf08da4267825866757f6e469a40c8dc95/) | ⚠️ Unaudited |
| WormholeMessenger | unknown | arbitrum | n/a | 2 deployments: optimism `0xf98a37...49e377`; arbitrum [`0x5f4e0a...bfc313`](./contracts/arbitrum-42161/0x5f4e0a6b848db318f4afc0b238c09747eebfc313/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | unknown | polygon | n/a | 4 deployments: ethereum `0xa11bd3...ce8c7c`; ethereum `0xf74134...ea3615`; bsc `0x37dfac...0aacb7`; polygon [`0x14743e...4103e7`](./contracts/polygon-137/0x14743e1c6f812154f7ecc980d890f0f5234103e7/) | ⚠️ Unaudited (bytecode match) |
| WrappedToken | token | polygon | n/a | 18 deployments: ethereum `0x087095...f1863f`; ethereum `0x2bd1f3...3f5f0f`; ethereum `0x34ac7e...52d469`; ethereum `0x48b847...9bba72`; ethereum `0x934ac3...6ee8a9`; bsc `0x4f161e...f8ce9e`; bsc `0x68784f...f42b4a`; bsc `0x9df465...71f8f0`; bsc `0xa0a996...e73d97`; polygon [`0x04429f...293346`](./contracts/polygon-137/0x04429fbb948bbd09327763214b45e505a5293346/); polygon `0x72bd80...af6f2f`; polygon `0x7dff46...2ea7a4`; celo `0x173234...aed450`; celo `0x47264a...7346a8`; celo `0x6e512b...680cc9`; celo `0x8e3670...89b690`; celo `0xed193c...02835c`; avalanche `0xafc436...b291c9` | ⚠️ Unaudited (bytecode match) |
| Bridge | operational_periphery | base | n/a | 19 deployments: ethereum `0x609c69...af0c9e`; ethereum `0xbbbd1b...1de884`; ethereum `0xd5d6b2...5d6fc4`; optimism `0x97e5bf...50d5ab`; bsc `0x3c4fa6...58312f`; bsc `0xbbbd1b...1de884`; bsc `0xd5d6b2...5d6fc4`; unichain `0x782e91...05c598`; polygon `0x7775d6...d7d3e0`; polygon `0xbbbd1b...1de884`; polygon `0xd5d6b2...5d6fc4`; sonic `0x801217...19a116`; base [`0x001e3f...35def7`](./contracts/base-8453/0x001e3f136c2f804854581da55ad7660a2b35def7/); arbitrum `0x9ce344...92d189`; celo `0x80858f...c6ba0e`; celo `0xbbbd1b...1de884`; celo `0xd5d6b2...5d6fc4`; avalanche `0x9068e1...caeea9`; avalanche `0xbbbd1b...1de884` | ⚠️ Unaudited (bytecode match) |
| MultiSig | unknown | celo | n/a | 9 deployments: celo [`0x066f67...bd25f2`](./contracts/celo-42220/0x066f672c03347a24ee3f52d1f184f04f7abd25f2/); celo `0x120c00...49e892`; celo `0x65534a...043372`; celo `0x68e231...ee3903`; celo `0x72306f...72c33d`; celo `0xad52b8...14e7fc`; celo `0xb7feac...ff582a`; celo `0xbcb789...c3a567`; celo `0xc99d54...dd411e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3415ca...fbd34b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b91b2...0a04a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4074ab...ba3b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f9e6...52cf15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7972d6...d15c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc8889...f9c2eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec455f...47ab7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x63b693...55e933` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xea7251...b077f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf357f3...bce9ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf119b1...3e2022` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x13313c...524c4f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3070c6...e85486` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x44abfa...f62cc0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe8a580...c0528b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83b71b...e170c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x92b033...76634e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5b78b...6aac70` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1bb92e...0caa39` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x44f723...e0f296` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x543acd...87b679` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbbbd1b...1de884` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc3e16e...6ee327` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x214d97...6d7fad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dc269...9cd337` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f4be8...a908e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc75553...e307fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0c333...c67188` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05266f...3cfe60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ed534...88ca18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d7124...574eac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa82b9e...e54d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb074e7...94fdea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe76d1b...66f130` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0d6d2c...f2900a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5f86cc...e156f1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6da06a...806ef5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8fa407...eedf84` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb766b6...2fe062` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbc4ee7...0f606a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fbf8d...b521c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65de05...3b57ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x713157...32db10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa666ec...297bd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcf579...ea40d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf216f2...7fd100` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x39a421...60e2c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3dd9d...99b907` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x5cb524...9fcd4b` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xa21aab...664fd4` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xcc9d14...37e71c` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xf80ed1...f3383c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<>](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<>](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) | Kudelski Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211105-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211105-Neodyme.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211117-LeastAuthority.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211117-LeastAuthority.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [20220916-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20220916-Halborn.pdf) | Halborn | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [20221104-AckeeBlockchain.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221104-AckeeBlockchain.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20221208-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221208-Halborn.pdf) | Halborn | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [20230607-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20230607-Neodyme.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://hacken.io/audits/allbridge) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.coinfabrik.com/blog/allbridge-audit-report) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 109 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1819] <>
- [1820] <>
- [9788] 20211105-Neodyme.pdf
- [9789] 20211117-LeastAuthority.pdf
- [9790] 20220916-Halborn.pdf
- [9791] 20221104-AckeeBlockchain.pdf
- [9792] 20221208-Halborn.pdf
- [9793] 20230607-Neodyme.pdf
- [12352] DL audit link
- [12354] DL audit link
- [12355] DL audit link

Fork inheritance lineage and inherited audits are included when available.
