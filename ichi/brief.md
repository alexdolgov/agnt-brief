# Agentic Audit Brief: ICHI

## Project Overview

- Project: ICHI (`ichi`)
- Website: [https://www.ichi.org](https://www.ichi.org)
- Lifecycle: active (Tier 0, 90.3% below peak)
- Generated: 2026-06-17T20:53:40.116Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-6f9b
- Chains: arbitrum, base, blast, bsc, celo, ethereum, fantom, kava, linea, mode, polygon, polygon-zkevm, sonic
- Contract surface: 126 unique implementations (170 raw deployments)
- DeFi Llama TVL: $10,695,458.24
- On-chain TVL (included contracts): $35,943,712.62
- TVL by chain: Ethereum $35,943,712.62

## Project Description

ICHI is a decentralized liquidity management protocol that automates concentrated liquidity positions on Uniswap V3 and similar AMMs. It deploys managed vaults that optimize fee earnings and rebalance assets to maintain a target token ratio, simplifying LP strategies for users.

### Architecture

The ICHI Vaults family relies on factory contracts like ICHIVaultFactory and RebalancerFactory to deploy and manage vaults across multiple chains, while the Legacy ICHI family contains older staking and farming contracts that may interact with the ICHI token. Both families share the ICHI token and some infrastructure like OneTokenFactory, but the vault system is the active product line.

## Contract Surface Quality

- Indexed contracts: 1076; live-surface contracts included: 170 (158 live, 12 unknown).
- Excluded by liveness: 884 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 9/44 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 5/40 (12.5%)
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 1
- Unverified implementations: 86
- Unique implementations: 126
- Raw deployments: 170
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $35,943,712.62
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Bramah | Tier 2 | 3 | 7.5% | 2020-10 |
| CertiK | Tier 2 | 1 | 2.5% | 2021-11 |
| Quantstamp | Tier 2 | 1 | 2.5% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Arbitrary | unknown | ethereum | n/a | [`0x6287d5...f4554c`](./contracts/ethereum-1/0x6287d56e246eee33bead2d7dd3a99db693f4554c/) | ✅ Audited |
| IchiStake | unknown | ethereum | n/a | [`0x70605a...ab467e`](./contracts/ethereum-1/0x70605a6457b0a8fbf1eee896911895296eab467e/) | ✅ Audited |
| IchiV2 | unknown | ethereum | n/a | [`0x111111...6bc4d6`](./contracts/ethereum-1/0x111111517e4929d3dcbdfa7cce55d30d4b6bc4d6/) | ✅ Audited |
| oneETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6fcbbb...eeb6e1`](./contracts/ethereum-1/0x6fcbbb527fb2954bed2b224a5bb7c23c5aeeb6e1/); ethereum `0xec0d77...085868` | ✅ Audited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x9cd028...28d069`](./contracts/ethereum-1/0x9cd028b1287803250b1e226f0180eb725428d069/) | ✅ Audited |

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartToken | token | ethereum | n/a | [`0x1f573d...a7ff1c`](./contracts/ethereum-1/0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c/) | ⚠️ Unaudited |
| AegisVault | core_logic | celo | n/a | [`0x289dc4...9df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/) | ⚠️ Unaudited |
| AegisVaultERC20 | core_logic | celo | n/a | [`0xf92ac7...dd3cdb`](./contracts/celo-42220/0xf92ac78dac667bae6b55c53b4da93c5c6ddd3cdb/) | ⚠️ Unaudited |
| AegisVaultFactory | registry | celo | n/a | [`0xbeff79...34f6dd`](./contracts/celo-42220/0xbeff7973ff3dfca2aa86e1da41abc8321334f6dd/) | ⚠️ Unaudited |
| Ally | unknown | ethereum | n/a | [`0x1aa1e6...6952ef`](./contracts/ethereum-1/0x1aa1e61369874bae3444a8ef6528d6b13d6952ef/) | ⚠️ Unaudited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| ETHVaultWithSlippage | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x980d4a...8efb1d`](./contracts/ethereum-1/0x980d4a48077cde0b51c2ae19d44cc2dd0c8efb1d/); ethereum `0xeaf2de...913755`; arbitrum `0xb24a00...e00216`; arbitrum `0xb443de...723083`; arbitrum `0xd44939...58758f` | ⚠️ Unaudited |
| Ichi | unknown | ethereum | n/a | [`0x903bef...67a881`](./contracts/ethereum-1/0x903bef1736cddf2a537176cf3c64579c3867a881/) | ⚠️ Unaudited |
| ICHIVault | core_logic | ethereum | n/a | [`0x460d84...14323d`](./contracts/ethereum-1/0x460d84b04f53d8e4021a514b08180d775714323d/) | ⚠️ Unaudited |
| ICHIVaultDeployer | core_logic | celo | n/a | 2 deployments: celo [`0x544113...2756e1`](./contracts/celo-42220/0x544113cc95cc2d076065c6028ab718d8682756e1/); celo `0xb78144...c8eb68` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | celo | n/a | 19 deployments: ethereum `0xe6e32d...0ef70a`; bsc `0x454130...c606c2`; bsc `0xd9272a...a66ee1`; bsc `0xe79140...5e914b`; polygon `0x64e445...483041`; polygon `0xa5ce10...eb05a4`; polygon `0xdb8e25...b590b6`; base `0xbf38e4...599819`; base `0xe2381b...a31f26`; arbitrum `0x932e19...b95c5e`; arbitrum `0xfb5263...686d12`; celo [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/); celo `0x62fd18...4774c2`; celo `0xa19595...4d5a14`; linea `0x57c9d9...a079df`; linea `0x60f508...8c505d`; linea `0x92bce3...effe5b`; blast `0x8346a8...5955f1`; blast `0xd44939...58758f` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | celo | n/a | 3 deployments: celo [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/); celo `0xb066a0...9029c3`; celo `0xdb771e...d6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | registry | base | n/a | 4 deployments: base [`0x2b52c4...00280a`](./contracts/base-8453/0x2b52c416f723f16e883e53f3f16435b51300280a/); celo `0x7df494...14e975`; celo `0x82dca6...e33870`; celo `0xb3bf88...d3e5bf` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | celo | n/a | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ⚠️ Unaudited |
| Mooniswap | unknown | ethereum | n/a | [`0x1dce26...d9f3a5`](./contracts/ethereum-1/0x1dce26f543e591c27717e25294aebbf59ad9f3a5/) | ⚠️ Unaudited |
| MultiFeeDistributionFactory | registry | celo | n/a | 3 deployments: celo [`0x772960...3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/); celo `0xb005d5...0002fc`; celo `0xe734a1...e73017` | ⚠️ Unaudited |
| oneBTC | unknown | ethereum | n/a | [`0xc88f47...777c37`](./contracts/ethereum-1/0xc88f47067db2e25851317a2fdae73a22c0777c37/) | ⚠️ Unaudited |
| OneInch | unknown | ethereum | n/a | [`0x111111...20c302`](./contracts/ethereum-1/0x111111111117dc0aa78b770fa6a738034120c302/) | ⚠️ Unaudited |
| oneLINK | unknown | ethereum | n/a | [`0x18cc17...e2a2cf`](./contracts/ethereum-1/0x18cc17a1eed37c02a77b0b96b7890c7730e2a2cf/) | ⚠️ Unaudited |
| oneVBTC | unknown | ethereum | n/a | [`0x7bd198...edbc4c`](./contracts/ethereum-1/0x7bd198b9107496fd5cc3d7655af52f43a8edbc4c/) | ⚠️ Unaudited |
| oneWING | unknown | ethereum | n/a | [`0x8f041a...0e1618`](./contracts/ethereum-1/0x8f041a3940a5e6fb580075c3774e15fcfa0e1618/) | ⚠️ Unaudited |
| QuoterV1 | periphery | celo | n/a | [`0xe1962f...0f8f85`](./contracts/celo-42220/0xe1962f415feb5915962d5d3a075311e6be0f8f85/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | ethereum | unit-33071 | [`0x40af9b...d52f10`](./contracts/ethereum-1/0x40af9be27b203da639a237447613879184d52f10/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | bsc | unit-33076 | [`0xcf60db...f9388f`](./contracts/bsc-56/0xcf60dbf617618a17eda28dd8dfe89905dcf9388f/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | base | unit-33089 | [`0xf8b3f6...ff765e`](./contracts/base-8453/0xf8b3f6727e44abb211c0049fc849fbb091ff765e/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | celo | unit-33094 | [`0x101eb1...bfc879`](./contracts/celo-42220/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | linea | unit-33108 | [`0xbb7a3d...ee2e73`](./contracts/linea-59144/0xbb7a3d439abf42cf39837f9102f987bab3ee2e73/) | ⚠️ Unaudited |
| SymbolLib | unknown | celo | n/a | [`0xbed3ce...9de85e`](./contracts/celo-42220/0xbed3cea309c8e413f785e1b547d06f37c49de85e/) | ⚠️ Unaudited |
| UV3Math | unknown | celo | n/a | 4 deployments: celo [`0x3b5fbc...4e0d3b`](./contracts/celo-42220/0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b/); celo `0xafec07...dadf69`; celo `0xf6b5ab...045fa6`; celo `0xfa0263...1b97c5` | ⚠️ Unaudited |
| VaultLocker | core_logic | celo | n/a | 7 deployments: sonic `0x6613f6...344a4e`; sonic `0x765c21...9eef75`; sonic `0xccd6d4...a6cfa2`; celo [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/); celo `0x2a8d03...d0e337`; celo `0x7f2eaf...ad8a65`; celo `0xd2c08d...5837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV2 | core_logic | celo | n/a | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | ⚠️ Unaudited |
| VaultSlippageCheckV2_1 | core_logic | celo | n/a | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | celo | n/a | [`0xcec871...4b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | ⚠️ Unaudited |
| VolatilityCheck | unknown | celo | n/a | [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RebalancerFactory | adapter | celo | unit-33095 | 4 deployments: celo [`0x16eb8e...b96483`](./contracts/celo-42220/0x16eb8e3b7d23b9eddc82ba0e034860e722b96483/); celo `0x215d61...e3a50c`; celo `0x83ee90...edc23f`; celo `0xe04ba7...cbbef3` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x871c2b...1c7124` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4a094b...0f98c2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4c8c0d...53fc5f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4d8f0b...562036` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8bc998...4905e2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8dd5e4...a929f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf1ffa...fafe28` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb2ac18...9ff017` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xccb051...d12405` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf6c0ee...745fc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8d41b...04c613` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x85a4dd...583c55` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x89ffda...fa5f34` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x932e19...b95c5e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb62399...090a71` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x1721cb...8115b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x63703a...2535fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x860f38...1a146c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x8ccd02...cd8182` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xe8532d...b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x2d2c72...a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xadda3a...6035f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fd993...29e3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e4a5d...297225` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x246e22...098d78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x288f5b...5313ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab2c4...ae52ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b6518...e14c77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e5685...ce1aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f77a0...0f5ea4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cfa9d...72aa01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad6c5e...cbdf63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc28a0...318e26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf8393...45433c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe872ea...d213a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf19a52...26e50a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf251d0...38eb5a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0c551e...9da944` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0e9a6b...d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0ffba7...083b09` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x14380c...f2d796` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1657a6...0e1a02` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x16edb1...348ef8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x178369...3000b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1919c1...dc2163` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x204f7c...25f0d2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x22b2a7...57e875` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3bc85a...d0e909` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3c568f...835663` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4238eb...1ab723` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4f5202...1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5df820...fe1001` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x66854c...62eece` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x683334...f9b689` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6b7ccf...27208a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6dbb1e...866fd7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6f6b1b...90e106` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x808baa...5dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x838602...1c2119` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x994969...44369c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x998f04...9ac395` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x99fb98...4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9bd308...241f76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ff36c...5bf847` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa21139...ba4f42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa24c23...45fca6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa287a2...13e9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa8b1ba...4819dc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xae7b34...f0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbb1385...6a6e01` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdd005...754dd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc2ddc7...2e261e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc4dcae...36b4ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc9dcd7...53bb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xca1d96...0d87b2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3db08...947894` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd4d56d...d695e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd59966...8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd8322b...91b08c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdeb87c...ccf879` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe14209...5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe1c415...a998e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7948b...77ab55` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfc7efd...4d5ed9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK Audit Report for ICHI - FarmV2.pdf](https://github.com/ichifarm/ichi-farming/blob/main/audits/CertiK%20Audit%20Report%20for%20ICHI%20-%20FarmV2.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 0 | n/a |
| [Audit Report (also discovered via alternate URL)](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp/audit.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [Audit Report](https://skynet.certik.com/projects/ichi) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [Audit Report](https://de.fi/audit-database/defiyield/ichi) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit Report](https://github.com/ichifarm/audit) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit Report](https://drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view?usp=sharing) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit Report](https://drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view?usp=drive_link) | FYEO: Quality Assessment | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Ichi_Farm_Audit_Bramah.pdf](https://github.com/ichifarm/audit/blob/main/Ichi_Farm_Audit_Bramah.pdf) | Bramah | Audit | 2020-10 | stale | Direct | contract_name | 4 | high |
| [quantstamp](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x289dc4...9df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/) | AegisVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf92ac7...dd3cdb`](./contracts/celo-42220/0xf92ac78dac667bae6b55c53b4da93c5c6ddd3cdb/) | AegisVaultERC20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbeff79...34f6dd`](./contracts/celo-42220/0xbeff7973ff3dfca2aa86e1da41abc8321334f6dd/) | AegisVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aa1e6...6952ef`](./contracts/ethereum-1/0x1aa1e61369874bae3444a8ef6528d6b13d6952ef/) | Ally | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x980d4a...8efb1d`](./contracts/ethereum-1/0x980d4a48077cde0b51c2ae19d44cc2dd0c8efb1d/) | ETHVaultWithSlippage | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x903bef...67a881`](./contracts/ethereum-1/0x903bef1736cddf2a537176cf3c64579c3867a881/) | Ichi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x460d84...14323d`](./contracts/ethereum-1/0x460d84b04f53d8e4021a514b08180d775714323d/) | ICHIVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x544113...2756e1`](./contracts/celo-42220/0x544113cc95cc2d076065c6028ab718d8682756e1/) | ICHIVaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/) | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/) | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b52c4...00280a`](./contracts/base-8453/0x2b52c416f723f16e883e53f3f16435b51300280a/) | ICHIVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ICHIVaultMigrationGuard | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x772960...3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/) | MultiFeeDistributionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc88f47...777c37`](./contracts/ethereum-1/0xc88f47067db2e25851317a2fdae73a22c0777c37/) | oneBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18cc17...e2a2cf`](./contracts/ethereum-1/0x18cc17a1eed37c02a77b0b96b7890c7730e2a2cf/) | oneLINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bd198...edbc4c`](./contracts/ethereum-1/0x7bd198b9107496fd5cc3d7655af52f43a8edbc4c/) | oneVBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f041a...0e1618`](./contracts/ethereum-1/0x8f041a3940a5e6fb580075c3774e15fcfa0e1618/) | oneWING | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbed3ce...9de85e`](./contracts/celo-42220/0xbed3cea309c8e413f785e1b547d06f37c49de85e/) | SymbolLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x3b5fbc...4e0d3b`](./contracts/celo-42220/0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b/) | UV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/) | VaultLocker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | VaultSlippageCheckV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | VaultSlippageCheckV2_1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xcec871...4b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | VaultSlippageCheckV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/) | VolatilityCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 5 |
| standard_library | 6 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=66

Zero-match audit list:

- [6948] CertiK Audit Report for ICHI - FarmV2.pdf
- [11802] Audit Report
- [11803] Audit Report
- [11804] Audit Report
- [11805] Audit Report
- [11807] quantstamp

Fork inheritance lineage and inherited audits are included when available.
