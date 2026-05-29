# Agentic Audit Brief: Sorare Bridge

## Project Overview

- Project: Sorare Bridge (`sorare-bridge`)
- Website: [https://sorare.com/](https://sorare.com/)
- Lifecycle: active (Tier 0, 84.7% below peak)
- Generated: 2026-05-29T14:26:22.720Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 58 unique implementations (210 raw deployments)
- DeFi Llama TVL: $3,952,453.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sorare Bridge is a canonical bridge that facilitates asset transfers between Ethereum and Starknet, enabling users to move ETH, ERC-20 tokens, and NFTs across chains. It also supports exchange and perpetual trading functionality on Starknet via StarkExchange and StarkPerpetual contracts.

### Architecture

The bridge contracts (StarknetTokenBridge, StarknetEthBridge, StarknetERC20Bridge) handle asset transfers to Starknet, while StarkExchange and StarkPerpetual provide trading functionality on Starknet. CallProxy contracts serve as infrastructure for cross-chain calls, and StarkExchangeMigrationV2 supports upgrades.

## Audit Coverage Summary

- Verified implementations audited: 0/38 (0.0%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 58
- Raw deployments: 210
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AllVerifiers | periphery | ethereum | 5 deployments: ethereum [`0x5d8cc5...012ac5`](./contracts/ethereum-1/0x5d8cc5659db74eebf19aa2bb39973f9339012ac5/); ethereum `0x61d338...57bf4b`; ethereum `0x62bca4...a25379`; ethereum `0xf65c11...bc9d57`; ethereum `0xfbea22...815f12` | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | ethereum | 5 deployments: ethereum [`0x18186a...011db8`](./contracts/ethereum-1/0x18186aee529b9fac9d51397a4beac6f5bb011db8/); ethereum `0x1dd894...d02e2d`; ethereum `0x2503ed...2a5576`; ethereum `0x33e759...17e387`; ethereum `0xabf068...82c115` | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | 8 deployments: ethereum [`0x0f58e2...ee41a0`](./contracts/ethereum-1/0x0f58e286edeac10a197ba1906ea348bed3ee41a0/); ethereum `0x1fee20...39aa43`; ethereum `0x2cabd6...3570ae`; ethereum `0x473124...5bdb60`; ethereum `0xb2419f...ca5c6f`; ethereum `0xc8c212...0eb46c`; ethereum `0xcc5b2c...3c92f2`; ethereum `0xd4c404...d3f458` | ⚠️ Unaudited |
| Committee | unknown | ethereum | 6 deployments: ethereum [`0x16ba0f...0aa295`](./contracts/ethereum-1/0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295/); ethereum `0x1e6014...6169cb`; ethereum `0x879cd5...bbbe32`; ethereum `0x894729...7a32c0`; ethereum `0x8a8e80...2e2bb1`; ethereum `0x90ceb3...ee9542` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | 22 deployments: ethereum [`0x087452...e7fe6a`](./contracts/ethereum-1/0x08745211194aa895083cbb5d54d47314c7e7fe6a/); ethereum `0x140586...b16e23`; ethereum `0x16c65b...9e1435`; ethereum `0x1f5459...8d9d13`; ethereum `0x5e1cc8...adb387`; ethereum `0x5f1a71...d249ea`; ethereum `0x7737ae...e90e46`; ethereum `0x8d588a...31f3d1`; ethereum `0x913527...8c954a`; ethereum `0x986083...94380a`; ethereum `0x98bfc8...da2035`; ethereum `0xa5e413...44af64`; ethereum `0xaa766b...192b17`; ethereum `0xbd01f2...ae7e2d`; ethereum `0xc31f31...c46527`; ethereum `0xc3c63f...6ae01e`; ethereum `0xcd05ae...a231d5`; ethereum `0xdf9929...1ef52b`; ethereum `0xf15f83...6df027`; ethereum `0xf17bcb...d83212`; ethereum `0xf8b8d5...d1ab93`; ethereum `0xfd0068...92431a` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | ethereum | 22 deployments: ethereum [`0x024b2f...eee393`](./contracts/ethereum-1/0x024b2f66cc07a3f9361d5339035cef78b0eee393/); ethereum `0x04d4e6...fe6d73`; ethereum `0x17a571...6f08d8`; ethereum `0x2ac2e9...eb461a`; ethereum `0x2d70ec...93a604`; ethereum `0x4922f8...308863`; ethereum `0x52ab70...933f5a`; ethereum `0x5cf08f...f04279`; ethereum `0x5f7bb9...5a8563`; ethereum `0x7a4f7a...b3d8d3`; ethereum `0x92043f...abe513`; ethereum `0x975dbd...c1a33d`; ethereum `0xaf7ceb...8643af`; ethereum `0xb6ee53...39c927`; ethereum `0xceab2e...3aa325`; ethereum `0xe1e66e...db9d57`; ethereum `0xe6557b...7f4e93`; ethereum `0xeca5da...bc10a3`; ethereum `0xef6476...a4e1ba`; ethereum `0xf1e64e...f167ea`; ethereum `0xf85849...aaedca`; ethereum `0xfedc9d...287f9e` | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | 22 deployments: ethereum [`0x0c6dec...7799b5`](./contracts/ethereum-1/0x0c6dec0b366b1bb4c14597cf1da8b4af2e7799b5/); ethereum `0x1144d6...9bbe43`; ethereum `0x3016f9...f3897b`; ethereum `0x4df0ad...7ec10a`; ethereum `0x4f4451...d3c79e`; ethereum `0x4f7952...288938`; ethereum `0x85c0fc...7726c2`; ethereum `0x897c26...0cfc66`; ethereum `0x8ad328...25b129`; ethereum `0x9a7201...cf6e54`; ethereum `0xa7abcd...968490`; ethereum `0xa98f9c...7b89e4`; ethereum `0xb597f7...e6874d`; ethereum `0xb755f6...3a1f12`; ethereum `0xc22fea...c1b7de`; ethereum `0xc874c0...2d81ef`; ethereum `0xe97ca0...7b8302`; ethereum `0xf2add9...f59625`; ethereum `0xf336bc...624a4c`; ethereum `0xf35f6d...794983`; ethereum `0xf769f7...87a6b3`; ethereum `0xfceeb1...f9f2f9` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | 5 deployments: ethereum [`0x0b2d74...05a6b5`](./contracts/ethereum-1/0x0b2d74dc27308031713596898a6b56366205a6b5/); ethereum `0x52c4bb...5fb3c5`; ethereum `0x8528e4...1dd321`; ethereum `0x8a9edf...e7c13f`; ethereum `0xace04f...6fb547` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | 5 deployments: ethereum [`0xc5ca4c...2abd8a`](./contracts/ethereum-1/0xc5ca4cd798d2aeb964126eee71ec572ddf2abd8a/); ethereum `0xcc45ee...ee0790`; ethereum `0xd14fd3...013a15`; ethereum `0xfc4988...e9437c`; ethereum `0xffc5df...fd9457` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | [`0x4f8b2d...bc4446`](./contracts/ethereum-1/0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446/) | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | adapter | ethereum | 2 deployments: ethereum [`0x8260d7...ea2ece`](./contracts/ethereum-1/0x8260d7ab762db278880811906fe5a2b342ea2ece/); ethereum `0x8ab85d...5532f4` | ⚠️ Unaudited |
| ForcedActions | unknown | ethereum | 3 deployments: ethereum [`0x07228f...dd8764`](./contracts/ethereum-1/0x07228f73aa048f67893f4b966d1d09783edd8764/); ethereum `0x0d7c8d...fe083a`; ethereum `0x3799ad...d437a1` | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | 5 deployments: ethereum [`0x689f88...443045`](./contracts/ethereum-1/0x689f886b4e61b5907166b2506db5e89609443045/); ethereum `0x932457...474363`; ethereum `0xe74999...c1064b`; ethereum `0xecf98a...9eda6d`; ethereum `0xf6b83c...c5e1b1` | ⚠️ Unaudited |
| GpsFactRegistryAdapter | adapter | ethereum | 6 deployments: ethereum [`0x472fa7...917388`](./contracts/ethereum-1/0x472fa70390a46e1815cdfe96b16b7d232e917388/); ethereum `0x5339ab...db5143`; ethereum `0x575dd6...60b531`; ethereum `0x6e3abc...8b3bae`; ethereum `0x733872...ddd1fb`; ethereum `0xfa6a50...a9e16d` | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | ethereum | 6 deployments: ethereum [`0x45769d...630f17`](./contracts/ethereum-1/0x45769d52d47e9cbfac9a2df68c2051adb0630f17/); ethereum `0x522b28...905068`; ethereum `0x894c4a...8b7fc3`; ethereum `0x9bca5c...cac1f8`; ethereum `0xa739b1...ac338f`; ethereum `0xb1eda3...b32b84` | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | ethereum | 5 deployments: ethereum [`0x076cf2...8479e5`](./contracts/ethereum-1/0x076cf2113b6eed19883a92454c473998fc8479e5/); ethereum `0x280675...3edecd`; ethereum `0x963750...bfdd8b`; ethereum `0xa9b7e2...0dfd2e`; ethereum `0xefbcce...9acef8` | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | ethereum | 5 deployments: ethereum [`0x01378d...5bcca0`](./contracts/ethereum-1/0x01378dadf607ac74a072c956d8240d1df75bcca0/); ethereum `0x03e291...0821fe`; ethereum `0x0d62ba...57a830`; ethereum `0x26ec18...e0d386`; ethereum `0xfc359d...902607` | ⚠️ Unaudited |
| ModifyUpgradeDelayExternalInitializer | unknown | ethereum | [`0xf00e34...8b6d49`](./contracts/ethereum-1/0xf00e349a9ccca340b1e3dd48c4c77a2ba18b6d49/) | ⚠️ Unaudited |
| OnchainVaults | core_logic | ethereum | 3 deployments: ethereum [`0x1688ab...b5d339`](./contracts/ethereum-1/0x1688abb0b5c72f34b7f78e857aa317ded5b5d339/); ethereum `0x2d5428...8e720a`; ethereum `0xb2ed00...98f31f` | ⚠️ Unaudited |
| OrderRegistry | registry | ethereum | 3 deployments: ethereum [`0x518c4a...14ddf8`](./contracts/ethereum-1/0x518c4a79a1102eedc987005ca8ce6b87ca14ddf8/); ethereum `0x806d43...b97fe6`; ethereum `0x886322...90c0bd` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | 5 deployments: ethereum [`0x8426e8...bf3e41`](./contracts/ethereum-1/0x8426e8797f5a6cef602c99ed247ccb4fb6bf3e41/); ethereum `0x9bcf13...a3456d`; ethereum `0xb2f8b8...efee54`; ethereum `0xc91a01...47986f`; ethereum `0xf7896d...658e2d` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | 5 deployments: ethereum [`0x0fed12...4fec92`](./contracts/ethereum-1/0x0fed12bd8b1b11c629001c436b90bcd99f4fec92/); ethereum `0x4a971c...75a0d1`; ethereum `0x8c2a01...14516f`; ethereum `0xbbaf3b...3dde07`; ethereum `0xd85c64...609928` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | ethereum | 2 deployments: ethereum [`0x5c075a...617378`](./contracts/ethereum-1/0x5c075a0af1b3bff61be0e98dadd9c2344a617378/); ethereum `0x626211...11f3dd` | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | ethereum | [`0xc43f55...6b4ea3`](./contracts/ethereum-1/0xc43f5526124877f9125e3b48101dca6d7c6b4ea3/) | ⚠️ Unaudited |
| PerpetualState | token | ethereum | [`0xdf9c11...40d4a0`](./contracts/ethereum-1/0xdf9c117cad37f2ed8c99e36a40317d8cc340d4a0/) | ⚠️ Unaudited |
| PerpetualTokensAndRamping | token | ethereum | 2 deployments: ethereum [`0x3fed7b...368545`](./contracts/ethereum-1/0x3fed7bf5bf3e738bc30fbe61b048fdcb82368545/); ethereum `0xebfea8...fd2481` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | 3 deployments: ethereum [`0x970d1f...811c7f`](./contracts/ethereum-1/0x970d1fa79c64b256ef68bbfeab34137786811c7f/); ethereum `0xb3788a...132be6`; ethereum `0xb53532...6e50db` | ⚠️ Unaudited |
| ReplaceEscapeVerifierExternalInitializer | periphery | ethereum | [`0x89bb55...eca560`](./contracts/ethereum-1/0x89bb5527834385ac440732d35e8fd501ececa560/) | ⚠️ Unaudited |
| StarkExchange | unknown | ethereum | 9 deployments: ethereum [`0x1390f5...a27a07`](./contracts/ethereum-1/0x1390f521a79babe99b69b37154d63d431da27a07/); ethereum `0x3071be...2714e7`; ethereum `0x49401d...ac7378`; ethereum `0x4edd62...a7ac9b`; ethereum `0x7d2375...f9a055`; ethereum `0xb8563a...6f43ac`; ethereum `0xc0251e...ba491a`; ethereum `0xe6785c...caffee`; ethereum `0xf5c9f9...995826` | ⚠️ Unaudited |
| StarkExchangeMigrationV2 | operational_periphery | ethereum | [`0x5fdcca...8e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | ⚠️ Unaudited |
| StarkExState | unknown | ethereum | 4 deployments: ethereum [`0x1c3a4e...9929a2`](./contracts/ethereum-1/0x1c3a4eff75a287fe6249cab49606fa25659929a2/); ethereum `0x4b9b30...2af010`; ethereum `0x86d8f9...e13773`; ethereum `0xedb67d...e4793a` | ⚠️ Unaudited |
| Starknet | unknown | ethereum | [`0xdc109c...2a6955`](./contracts/ethereum-1/0xdc109c4a1a3084ed15a97692fbef3e1fb32a6955/) | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x56e233...2a381b`](./contracts/ethereum-1/0x56e233d613743297cdd27fafc5c1f5c1dc2a381b/); ethereum `0xbb3400...747605`; ethereum `0xf6080d...f92816` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x5e70f3...6dbe37`](./contracts/ethereum-1/0x5e70f3301bbbbb1dfa2c8d20d75b162afa6dbe37/); ethereum `0xae0ee0...48d419` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | [`0x283751...d9b5b4`](./contracts/ethereum-1/0x283751a21eafbfcd52297820d27c1f1963d9b5b4/) | ⚠️ Unaudited |
| StarkPerpetual | unknown | ethereum | 3 deployments: ethereum [`0x0a5a7a...cfe643`](./contracts/ethereum-1/0x0a5a7a738528af22b4f5cfe70e5a1e07a2cfe643/); ethereum `0x2c0df8...1cc2d3`; ethereum `0xd54f50...2d69c8` | ⚠️ Unaudited |
| TokensAndRamping | token | ethereum | 5 deployments: ethereum [`0x2dbc18...912afb`](./contracts/ethereum-1/0x2dbc18a3ac126abe1ff90a83bbc3947ff7912afb/); ethereum `0x853685...467687`; ethereum `0x97aa96...bd529e`; ethereum `0xa4e952...00469e`; ethereum `0xf677a1...d57713` | ⚠️ Unaudited |
| TransferRegistry | registry | ethereum | [`0xbe9a12...70d27a`](./contracts/ethereum-1/0xbe9a129909ebcb954bc065536d2bfafbd170d27a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x020517...1f43bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b72b9...b7d322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f400c...190c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2823d6...544b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ae851...cfc859` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45697c...e6784f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x514393...de1e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x579b2d...55a589` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59aafd...1646a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5eab21...df77be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64e48e...0db43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x655584...639d93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f6e52...bfd614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaec1fb...52e096` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe0dff...39bf10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd387d1...030c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd75f0b...825fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe75534...f3f9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5af62...6dd2bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc126e...f6f5a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x18186a...011db8`](./contracts/ethereum-1/0x18186aee529b9fac9d51397a4beac6f5bb011db8/) | CairoBootloaderProgram | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f58e2...ee41a0`](./contracts/ethereum-1/0x0f58e286edeac10a197ba1906ea348bed3ee41a0/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x087452...e7fe6a`](./contracts/ethereum-1/0x08745211194aa895083cbb5d54d47314c7e7fe6a/) | CpuConstraintPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x024b2f...eee393`](./contracts/ethereum-1/0x024b2f66cc07a3f9361d5339035cef78b0eee393/) | CpuFrilessVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ca4c...2abd8a`](./contracts/ethereum-1/0xc5ca4cd798d2aeb964126eee71ec572ddf2abd8a/) | EcdsaPointsYColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x689f88...443045`](./contracts/ethereum-1/0x689f886b4e61b5907166b2506db5e89609443045/) | FriStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45769d...630f17`](./contracts/ethereum-1/0x45769d52d47e9cbfac9a2df68c2051adb0630f17/) | GpsStatementVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x076cf2...8479e5`](./contracts/ethereum-1/0x076cf2113b6eed19883a92454c473998fc8479e5/) | MemoryPageFactRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01378d...5bcca0`](./contracts/ethereum-1/0x01378dadf607ac74a072c956d8240d1df75bcca0/) | MerkleStatementContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1688ab...b5d339`](./contracts/ethereum-1/0x1688abb0b5c72f34b7f78e857aa317ded5b5d339/) | OnchainVaults | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc43f55...6b4ea3`](./contracts/ethereum-1/0xc43f5526124877f9125e3b48101dca6d7c6b4ea3/) | PerpetualForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9c11...40d4a0`](./contracts/ethereum-1/0xdf9c117cad37f2ed8c99e36a40317d8cc340d4a0/) | PerpetualState | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fed7b...368545`](./contracts/ethereum-1/0x3fed7bf5bf3e738bc30fbe61b048fdcb82368545/) | PerpetualTokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1390f5...a27a07`](./contracts/ethereum-1/0x1390f521a79babe99b69b37154d63d431da27a07/) | StarkExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc109c...2a6955`](./contracts/ethereum-1/0xdc109c4a1a3084ed15a97692fbef3e1fb32a6955/) | Starknet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56e233...2a381b`](./contracts/ethereum-1/0x56e233d613743297cdd27fafc5c1f5c1dc2a381b/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e70f3...6dbe37`](./contracts/ethereum-1/0x5e70f3301bbbbb1dfa2c8d20d75b162afa6dbe37/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a5a7a...cfe643`](./contracts/ethereum-1/0x0a5a7a738528af22b4f5cfe70e5a1e07a2cfe643/) | StarkPerpetual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dbc18...912afb`](./contracts/ethereum-1/0x2dbc18a3ac126abe1ff90a83bbc3947ff7912afb/) | TokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe9a12...70d27a`](./contracts/ethereum-1/0xbe9a129909ebcb954bc065536d2bfafbd170d27a/) | TransferRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 13 |
| standard_library | 1 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7946] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7947] 0002-metadata-manifest-and-pull-command.md
- [7948] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
