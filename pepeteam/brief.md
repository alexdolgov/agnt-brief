# Agentic Audit Brief: PepeTeam

## Project Overview

- Project: PepeTeam (`pepeteam`)
- Website: [https://pepe.team](https://pepe.team)
- Lifecycle: active (Tier 0, 91.1% below peak)
- Generated: 2026-06-13T19:26:01.216Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: bsc, ethereum, polygon
- Contract surface: 21 unique implementations (60 raw deployments)
- DeFi Llama TVL: $1,031,570.00
- On-chain TVL (included contracts): $11,093.18
- TVL by chain: Ethereum $8,711.26 | Polygon $2,381.93

## Project Description

PepeTeam is a multi-chain product development team whose current products include P2P trading and escrow, a pepeCash fiat/crypto purchase flow, a Telegram bot, and pepeBridge cross-chain communication and liquidity-transfer infrastructure. Do not describe the project as offering a vault-based DEX or sWAVES liquid staking unless those claims are independently supported.

### Architecture

Both families share the same deployer cluster and proxy infrastructure, indicating a unified development team. The bridge contracts may supply liquidity or wrapped assets to the DEX vaults, while the DEX could provide trading venues for bridged tokens.

## Audit Coverage Summary

- Verified implementations audited: 0/20 (0.0%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 21
- Raw deployments: 60
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $11,093.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 4 deployments: ethereum [`0x34a0a7...246554`](./contracts/ethereum-1/0x34a0a70c78c6477a3c721828b7e220a6c3246554/); ethereum `0xe1afed...8e2bf5`; polygon `0xcb0c5e...5a00cc`; polygon `0xea27b6...cabbbf` | ⚠️ Unaudited |
| EthereumRetroDropVault | core_logic | ethereum | [`0xca26cf...a9872c`](./contracts/ethereum-1/0xca26cf4143161eb7171f20eb6bb752c7ada9872c/) | ⚠️ Unaudited |
| CoinBridge | operational_periphery | polygon | 4 deployments: ethereum `0x1bda12...003e14`; ethereum `0x882260...3c856a`; polygon [`0x0aebf0...1370b7`](./contracts/polygon-137/0x0aebf0543b572d65360d6fcbdf8a5298471370b7/); polygon `0xea3cc7...399018` | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | [`0x932481...dd0119`](./contracts/ethereum-1/0x9324819c5afb3b80c4dcd9207ee9e8bd67dd0119/) | ⚠️ Unaudited |
| ERC20Wrapped | token | ethereum | 2 deployments: ethereum [`0x0fb765...6ac2fe`](./contracts/ethereum-1/0x0fb765ddbd4d26ac524aa5990b0643d0ab6ac2fe/); ethereum `0xf7bd89...02fea5` | ⚠️ Unaudited |
| ExecutorV2 | unknown | ethereum | [`0x5dcb74...309ad5`](./contracts/ethereum-1/0x5dcb742d09ade3da6461024f91f53518bb309ad5/) | ⚠️ Unaudited |
| ExecutorV3 | unknown | ethereum | 4 deployments: ethereum [`0x3ffd8b...802294`](./contracts/ethereum-1/0x3ffd8b918917727c6f226f4eb88e33e452802294/); ethereum `0xa106a0...d649db`; polygon `0xd7fee5...ac1d42`; polygon `0xf745ea...1101f0` | ⚠️ Unaudited |
| MintRootAdapter | adapter | polygon | 4 deployments: ethereum `0x28c3ec...5dc2dd`; ethereum `0x8dc9ac...3c8a5f`; polygon [`0x1bda12...003e14`](./contracts/polygon-137/0x1bda1227875f0f8bb27625dd720f386b40003e14/); polygon `0xa106a0...d649db` | ⚠️ Unaudited |
| Multisig | governance | polygon | 14 deployments: ethereum `0x2a6619...ccb3b0`; ethereum `0x455185...abff65`; ethereum `0x45fe75...1c6637`; ethereum `0x48e53f...b1bd2c`; ethereum `0x586382...3c5a2f`; ethereum `0x5f951d...4c4c12`; ethereum `0xba51af...98f88e`; ethereum `0xcdefa7...bf87be`; polygon [`0x033197...1e4e54`](./contracts/polygon-137/0x0331971963105bdd5932d9d7bddc33c0ad1e4e54/); polygon `0x22b643...fb4fb8`; polygon `0x2a6619...ccb3b0`; polygon `0x30965e...1991f1`; polygon `0x7615c8...d6ed42`; polygon `0xa38ce8...6800ed` | ⚠️ Unaudited |
| PreSale | unknown | ethereum | 5 deployments: ethereum [`0x077c74...208c23`](./contracts/ethereum-1/0x077c742e07e522c9303291143762f1ba27208c23/); ethereum `0x25bdfa...b7444e`; ethereum `0x2e9fa6...f7e043`; ethereum `0x5219fa...6495a4`; ethereum `0xf160bd...576059` | ⚠️ Unaudited |
| PreSaleShutdown | unknown | ethereum | [`0x1fc9a0...ac2ced`](./contracts/ethereum-1/0x1fc9a03ecb10d266c3e4f933f1ac065c3fac2ced/) | ⚠️ Unaudited |
| PreSaleShutdownV2 | unknown | ethereum | [`0xec65f3...f7c8f1`](./contracts/ethereum-1/0xec65f32570e0aecda434d848d9bf1885cbf7c8f1/) | ⚠️ Unaudited |
| PreSaleShutdownV3 | unknown | ethereum | 2 deployments: ethereum [`0x2bf51f...159671`](./contracts/ethereum-1/0x2bf51f353db6d8edb668d566bbe4295535159671/); ethereum `0x82163f...a67f18` | ⚠️ Unaudited |
| ReleaseRootAdapter | adapter | ethereum | 2 deployments: ethereum [`0x6697ec...c04bb0`](./contracts/ethereum-1/0x6697ec1223c277b871377d5df0a9e84544c04bb0/); ethereum `0x6a1190...b90f7f` | ⚠️ Unaudited |
| SafeERC20Bridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x0de7b0...21ea83`](./contracts/ethereum-1/0x0de7b091a21bd439bdb2dfbb63146d9cea21ea83/); ethereum `0x8bfac9...3f739a`; polygon `0x5f89d0...66e37c` | ⚠️ Unaudited |
| SafeERC20BridgeWithPool | operational_periphery | bsc | 3 deployments: bsc [`0x8df127...e9367a`](./contracts/bsc-56/0x8df12786ec0e34e60d4c52f9052ba4e536e9367a/); polygon `0xc4e86c...d72970`; polygon `0xf57db8...f81e4a` | ⚠️ Unaudited |
| WavesCaller | unknown | polygon | 2 deployments: ethereum `0x30965e...1991f1`; polygon [`0x28c3ec...5dc2dd`](./contracts/polygon-137/0x28c3ec13075801c96d109f815aee45303d5dc2dd/) | ⚠️ Unaudited |
| WavesMintAdapter | adapter | ethereum | 2 deployments: ethereum [`0x1985ca...e458d7`](./contracts/ethereum-1/0x1985ca0fd8d8ea5a114a7e5f22634e6bd8e458d7/); polygon `0x274475...adc031` | ⚠️ Unaudited |
| WavesReleaseAdapter | adapter | ethereum | [`0x09d844...391118`](./contracts/ethereum-1/0x09d8444770adce8d61fb5c967b57287b70391118/) | ⚠️ Unaudited |
| WrappedERC20Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x5d1ecf...013586`](./contracts/ethereum-1/0x5d1ecf1e8a8fdf7b1a8bc0e7073139a1f2013586/); ethereum `0xa3fb11...c42e51` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x4bfa7d...b7dff6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x34a0a7...246554`](./contracts/ethereum-1/0x34a0a70c78c6477a3c721828b7e220a6c3246554/) | Vault | core_logic | $11,072.16 | Verified native implementation with $11,072.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0aebf0...1370b7`](./contracts/polygon-137/0x0aebf0543b572d65360d6fcbdf8a5298471370b7/) | CoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x932481...dd0119`](./contracts/ethereum-1/0x9324819c5afb3b80c4dcd9207ee9e8bd67dd0119/) | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dcb74...309ad5`](./contracts/ethereum-1/0x5dcb742d09ade3da6461024f91f53518bb309ad5/) | ExecutorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ffd8b...802294`](./contracts/ethereum-1/0x3ffd8b918917727c6f226f4eb88e33e452802294/) | ExecutorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc9a0...ac2ced`](./contracts/ethereum-1/0x1fc9a03ecb10d266c3e4f933f1ac065c3fac2ced/) | PreSaleShutdown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec65f3...f7c8f1`](./contracts/ethereum-1/0xec65f32570e0aecda434d848d9bf1885cbf7c8f1/) | PreSaleShutdownV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bf51f...159671`](./contracts/ethereum-1/0x2bf51f353db6d8edb668d566bbe4295535159671/) | PreSaleShutdownV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6697ec...c04bb0`](./contracts/ethereum-1/0x6697ec1223c277b871377d5df0a9e84544c04bb0/) | ReleaseRootAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8df127...e9367a`](./contracts/bsc-56/0x8df12786ec0e34e60d4c52f9052ba4e536e9367a/) | SafeERC20BridgeWithPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d1ecf...013586`](./contracts/ethereum-1/0x5d1ecf1e8a8fdf7b1a8bc0e7073139a1f2013586/) | WrappedERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
