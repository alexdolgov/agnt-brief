# Agentic Audit Brief: Boba Bridge

⚠️ Lifecycle status: DECLINING - TVL changed 5.1% over 90 days

## Project Overview

- Project: Boba Bridge (`boba-bridge`)
- Website: [https://gateway.boba.network](https://gateway.boba.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T07:47:23.513Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 53 unique implementations (102 raw deployments)
- DeFi Llama TVL: $3,083,181.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Boba Bridge is the canonical bridge for the Boba Network, enabling users to transfer assets between Ethereum and Boba. It provides standard token bridging, fast exits, and liquidity pool-based swaps for efficient cross-chain movement.

### Architecture

The bridge family relies on shared infrastructure contracts like SystemConfig and ProtocolVersions for network configuration, while SuperchainConfig provides cross-chain security. The L1CrossDomainMessenger and EthBridge contracts handle message passing and asset transfers, with L2OutputOracle enabling state verification for withdrawals.

## Audit Coverage Summary

- Verified implementations audited: 0/41 (0.0%)
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 53
- Raw deployments: 102
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressDeprecator | unknown | ethereum | [`0xf6f919...90221e`](./contracts/ethereum-1/0xf6f9193c06b6eec9815a656906f696399a90221e/) | ⚠️ Unaudited |
| BondManager | governance | ethereum | [`0x60660e...65b627`](./contracts/ethereum-1/0x60660e6cdeb423cf847dd11de4c473130d65b627/) | ⚠️ Unaudited |
| CanonicalTransactionChain | unknown | ethereum | [`0xfbd254...04c3db`](./contracts/ethereum-1/0xfbd2541e316948b259264c02f370ed088e04c3db/) | ⚠️ Unaudited |
| ChainStorageContainer | unknown | ethereum | 3 deployments: ethereum [`0x13992b...e87d93`](./contracts/ethereum-1/0x13992b9f327faca11568be18a8ad3e9747e87d93/); ethereum `0x171482...691231`; ethereum `0x5f0030...eccd8d` | ⚠️ Unaudited |
| EthBridge | operational_periphery | ethereum | 12 deployments: ethereum [`0x05273e...b21b45`](./contracts/ethereum-1/0x05273ee930a8ef516c4f79014bfa2ad5ecb21b45/); ethereum `0x1a36e2...e03e55`; ethereum `0x51c3db...e27f3f`; ethereum `0x5d7824...59040f`; ethereum `0x648276...5400de`; ethereum `0x6f5378...da2f41`; ethereum `0x76b822...207d72`; ethereum `0x79c7c8...60e32c`; ethereum `0x9dd420...434e7e`; ethereum `0xb0003e...38c490`; ethereum `0xbe6817...a67485`; ethereum `0xd5c567...ed939e` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 3 deployments: ethereum [`0x12acf6...e47820`](./contracts/ethereum-1/0x12acf6e3ca96a60fba0bbfd14d2fe0eb6ae47820/); ethereum `0x3b4859...b1b077`; ethereum `0x6d4528...dff69e` | ⚠️ Unaudited |
| L1CrossDomainMessengerFast | unknown | ethereum | 2 deployments: ethereum [`0x329996...1c7c8c`](./contracts/ethereum-1/0x329996d52cdbc617492428680a7a892e8f1c7c8c/); ethereum `0x4cd194...460996` | ⚠️ Unaudited |
| L1ERC1155Bridge | operational_periphery | ethereum | [`0x72c455...49c8ce`](./contracts/ethereum-1/0x72c455c20ef23cce31f47e636bf67a9b8749c8ce/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x999481...db9318`](./contracts/ethereum-1/0x99948157f4702b3ee9de4290c3dcdf2622db9318/); ethereum `0xa6ad22...8bf87e` | ⚠️ Unaudited |
| L1LiquidityPool | core_logic | ethereum | 10 deployments: ethereum [`0x1a26ef...361a14`](./contracts/ethereum-1/0x1a26ef6575b7bbb864d984d9255c069f6c361a14/); ethereum `0x2b4c53...46e92c`; ethereum `0x3256bd...3f7879`; ethereum `0x3d95be...13ec25`; ethereum `0x87b6c8...fd541c`; ethereum `0x9dadbc...468da6`; ethereum `0x9eace4...c2ced7`; ethereum `0xd24484...d53cb1`; ethereum `0xec99d7...9b2813`; ethereum `0xecb03b...6f97a0` | ⚠️ Unaudited |
| L1MultiMessageRelayer | unknown | ethereum | [`0x5fd2cf...a0070b`](./contracts/ethereum-1/0x5fd2cf99586b9d92f56cbad0a3ea4df256a0070b/) | ⚠️ Unaudited |
| L1MultiMessageRelayerFast | unknown | ethereum | 2 deployments: ethereum [`0x16650a...3e0d59`](./contracts/ethereum-1/0x16650a81cd8cc7e6d132bb98925efdeea73e0d59/); ethereum `0x2d6134...5f9622` | ⚠️ Unaudited |
| L1NFTBridge | operational_periphery | ethereum | 4 deployments: ethereum [`0x8db3b7...fdba82`](./contracts/ethereum-1/0x8db3b7db8a0f77e0e21178fcad0a53e52bfdba82/); ethereum `0xb095a3...49c8ff`; ethereum `0xb88883...2684ae`; ethereum `0xbf313a...c9a582` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x5eb029...58520f`](./contracts/ethereum-1/0x5eb02901135865af8da6752af92fbae62258520f/); ethereum `0xdc1664...2f1c00`; ethereum `0xede17d...6e2633` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x31f395...517017`](./contracts/ethereum-1/0x31f395dd26430a8cbfa530e31b46aaf7ad517017/); ethereum `0xbb7ad3...068741` | ⚠️ Unaudited |
| Lib_AddressManager | governance | ethereum | [`0x8376ac...02f089`](./contracts/ethereum-1/0x8376ac6c3f73a25dd994e0b0669ca7ee0c02f089/) | ⚠️ Unaudited |
| Lib_ResolvedDelegateProxy | unknown | ethereum | 2 deployments: ethereum [`0x841979...b495c1`](./contracts/ethereum-1/0x841979bbc06be7bfe28d9faddac1a73e1fb495c1/); ethereum `0xc891f4...d5b088` | ⚠️ Unaudited |
| mockOVM_BondManager | governance | ethereum | [`0xa4f8cd...29ec27`](./contracts/ethereum-1/0xa4f8cd56c14fcec655cfddb2cebd9f1e9329ec27/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 2 deployments: ethereum [`0x4d898f...81f0c3`](./contracts/ethereum-1/0x4d898f66327fa050131a17ed17a39ebecc81f0c3/); ethereum `0xd080a3...0f15b2` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0xd80562...261826`](./contracts/ethereum-1/0xd8056243180c4b56a7d2ccd5df9c2696e1261826/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0x7b02d1...21ee7e`](./contracts/ethereum-1/0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e/) | ⚠️ Unaudited |
| OVM_CanonicalTransactionChain | unknown | ethereum | [`0x4b5d9e...c272f2`](./contracts/ethereum-1/0x4b5d9e5a6b1a514eba15a2f949531dccd7c272f2/) | ⚠️ Unaudited |
| OVM_ChainStorageContainer | unknown | ethereum | 3 deployments: ethereum [`0x318d4d...5372d1`](./contracts/ethereum-1/0x318d4dab7d3793e40139b496c3b89422ae5372d1/); ethereum `0x33938f...0d4c50`; ethereum `0xa7557b...522c46` | ⚠️ Unaudited |
| OVM_ExecutionManager | governance | ethereum | 2 deployments: ethereum [`0xa230d4...c8b646`](./contracts/ethereum-1/0xa230d4b11f66a3deee0beaf8d04551f236c8b646/); ethereum `0xe6dc42...55bcba` | ⚠️ Unaudited |
| OVM_FraudVerifier | periphery | ethereum | [`0x872c65...e4f4b8`](./contracts/ethereum-1/0x872c65c835deb2cfb3493f2c3dd353633ae4f4b8/) | ⚠️ Unaudited |
| OVM_L1CrossDomainMessenger | unknown | ethereum | 2 deployments: ethereum [`0x251091...a537f3`](./contracts/ethereum-1/0x25109139f8c4f9f7b4e4d5452a067feae3a537f3/); ethereum `0xae6b04...ef38fd` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessengerFast | unknown | ethereum | 3 deployments: ethereum [`0x2cc555...e205b0`](./contracts/ethereum-1/0x2cc555b5b1a4cf7fa5401b29ab46fc5ba2e205b0/); ethereum `0xb7e757...3b4855`; ethereum `0xd05b8f...a7257e` | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayer | unknown | ethereum | [`0xab2af3...42f9ca`](./contracts/ethereum-1/0xab2af3a98d229b7daed7305bb88ad0ba2c42f9ca/) | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayerFast | unknown | ethereum | [`0xd982ef...022548`](./contracts/ethereum-1/0xd982efe00e48ae19de1d3b7ded0aac2265022548/) | ⚠️ Unaudited |
| OVM_L1StandardBridge | operational_periphery | ethereum | 5 deployments: ethereum [`0x1bc6c9...cd8a7b`](./contracts/ethereum-1/0x1bc6c9ef455856e260bccf3dee27463a78cd8a7b/); ethereum `0x411402...1153d0`; ethereum `0x554eab...77a762`; ethereum `0xc9b56d...71bca9`; ethereum `0xcb701f...d2f149` | ⚠️ Unaudited |
| OVM_SafetyChecker | unknown | ethereum | [`0x85c0ce...7e5884`](./contracts/ethereum-1/0x85c0cebfe3b81d64d256b38fdf65dd05887e5884/) | ⚠️ Unaudited |
| OVM_StateCommitmentChain | unknown | ethereum | [`0x17834b...d98ab6`](./contracts/ethereum-1/0x17834b754e2f09946ce48d7b5beb4d7d94d98ab6/) | ⚠️ Unaudited |
| OVM_StateManagerFactory | registry | ethereum | [`0x0c4935...146846`](./contracts/ethereum-1/0x0c4935b421af8f86698fb77233e90abc5f146846/) | ⚠️ Unaudited |
| OVM_StateTransitionerFactory | registry | ethereum | [`0xc6dd73...ffab40`](./contracts/ethereum-1/0xc6dd73d427bf784dd1e2f9f64029a79533ffab40/) | ⚠️ Unaudited |
| PortalSender | unknown | ethereum | [`0xbc0093...c8ee0f`](./contracts/ethereum-1/0xbc0093224657ce95495e9b65f1344bdc03c8ee0f/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | 2 deployments: ethereum [`0x60e761...809a42`](./contracts/ethereum-1/0x60e7617506d44d975bde9cddedc753bd8c809a42/); ethereum `0x9b2a3a...38fda7` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x6e598c...49a0dc`](./contracts/ethereum-1/0x6e598cec2701ffaa3c06175dc3af0317a749a0dc/) | ⚠️ Unaudited |
| StateCommitmentChain | unknown | ethereum | [`0xde7355...d441ec`](./contracts/ethereum-1/0xde7355c971a5b733fe2133753abd7e5441d441ec/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | 2 deployments: ethereum [`0x996ffd...77c076`](./contracts/ethereum-1/0x996ffd627901f10c80a7d4b72a12316d2e77c076/); ethereum `0xe4e0f7...30270f` | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 2 deployments: ethereum [`0x158fd5...9b59eb`](./contracts/ethereum-1/0x158fd5715f16ac1f2dc959a299b383aaaf9b59eb/); ethereum `0xfae274...866f4a` | ⚠️ Unaudited |
| SystemDictator | unknown | ethereum | 2 deployments: ethereum [`0x010dd8...2e1716`](./contracts/ethereum-1/0x010dd8f3f734b56adc28db0fea7daa2c752e1716/); ethereum `0xe8fb8e...dab64c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1c64b8...432df7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2595cf...2b9614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ccb5e...f46f74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39a047...e34d76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48f20d...77931d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68ac16...d5789e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b4eab...ea7087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad6e4d...640ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb68a38...0f4714` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3782a...332b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdef475...9a9cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9197a...662f59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf6f919...90221e`](./contracts/ethereum-1/0xf6f9193c06b6eec9815a656906f696399a90221e/) | AddressDeprecator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60660e...65b627`](./contracts/ethereum-1/0x60660e6cdeb423cf847dd11de4c473130d65b627/) | BondManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbd254...04c3db`](./contracts/ethereum-1/0xfbd2541e316948b259264c02f370ed088e04c3db/) | CanonicalTransactionChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13992b...e87d93`](./contracts/ethereum-1/0x13992b9f327faca11568be18a8ad3e9747e87d93/) | ChainStorageContainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05273e...b21b45`](./contracts/ethereum-1/0x05273ee930a8ef516c4f79014bfa2ad5ecb21b45/) | EthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12acf6...e47820`](./contracts/ethereum-1/0x12acf6e3ca96a60fba0bbfd14d2fe0eb6ae47820/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x329996...1c7c8c`](./contracts/ethereum-1/0x329996d52cdbc617492428680a7a892e8f1c7c8c/) | L1CrossDomainMessengerFast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72c455...49c8ce`](./contracts/ethereum-1/0x72c455c20ef23cce31f47e636bf67a9b8749c8ce/) | L1ERC1155Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x999481...db9318`](./contracts/ethereum-1/0x99948157f4702b3ee9de4290c3dcdf2622db9318/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a26ef...361a14`](./contracts/ethereum-1/0x1a26ef6575b7bbb864d984d9255c069f6c361a14/) | L1LiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fd2cf...a0070b`](./contracts/ethereum-1/0x5fd2cf99586b9d92f56cbad0a3ea4df256a0070b/) | L1MultiMessageRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16650a...3e0d59`](./contracts/ethereum-1/0x16650a81cd8cc7e6d132bb98925efdeea73e0d59/) | L1MultiMessageRelayerFast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8db3b7...fdba82`](./contracts/ethereum-1/0x8db3b7db8a0f77e0e21178fcad0a53e52bfdba82/) | L1NFTBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eb029...58520f`](./contracts/ethereum-1/0x5eb02901135865af8da6752af92fbae62258520f/) | L1StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31f395...517017`](./contracts/ethereum-1/0x31f395dd26430a8cbfa530e31b46aaf7ad517017/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8376ac...02f089`](./contracts/ethereum-1/0x8376ac6c3f73a25dd994e0b0669ca7ee0c02f089/) | Lib_AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x841979...b495c1`](./contracts/ethereum-1/0x841979bbc06be7bfe28d9faddac1a73e1fb495c1/) | Lib_ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4f8cd...29ec27`](./contracts/ethereum-1/0xa4f8cd56c14fcec655cfddb2cebd9f1e9329ec27/) | mockOVM_BondManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd80562...261826`](./contracts/ethereum-1/0xd8056243180c4b56a7d2ccd5df9c2696e1261826/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b5d9e...c272f2`](./contracts/ethereum-1/0x4b5d9e5a6b1a514eba15a2f949531dccd7c272f2/) | OVM_CanonicalTransactionChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318d4d...5372d1`](./contracts/ethereum-1/0x318d4dab7d3793e40139b496c3b89422ae5372d1/) | OVM_ChainStorageContainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa230d4...c8b646`](./contracts/ethereum-1/0xa230d4b11f66a3deee0beaf8d04551f236c8b646/) | OVM_ExecutionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x872c65...e4f4b8`](./contracts/ethereum-1/0x872c65c835deb2cfb3493f2c3dd353633ae4f4b8/) | OVM_FraudVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x251091...a537f3`](./contracts/ethereum-1/0x25109139f8c4f9f7b4e4d5452a067feae3a537f3/) | OVM_L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cc555...e205b0`](./contracts/ethereum-1/0x2cc555b5b1a4cf7fa5401b29ab46fc5ba2e205b0/) | OVM_L1CrossDomainMessengerFast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab2af3...42f9ca`](./contracts/ethereum-1/0xab2af3a98d229b7daed7305bb88ad0ba2c42f9ca/) | OVM_L1MultiMessageRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd982ef...022548`](./contracts/ethereum-1/0xd982efe00e48ae19de1d3b7ded0aac2265022548/) | OVM_L1MultiMessageRelayerFast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc6c9...cd8a7b`](./contracts/ethereum-1/0x1bc6c9ef455856e260bccf3dee27463a78cd8a7b/) | OVM_L1StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85c0ce...7e5884`](./contracts/ethereum-1/0x85c0cebfe3b81d64d256b38fdf65dd05887e5884/) | OVM_SafetyChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17834b...d98ab6`](./contracts/ethereum-1/0x17834b754e2f09946ce48d7b5beb4d7d94d98ab6/) | OVM_StateCommitmentChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4935...146846`](./contracts/ethereum-1/0x0c4935b421af8f86698fb77233e90abc5f146846/) | OVM_StateManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6dd73...ffab40`](./contracts/ethereum-1/0xc6dd73d427bf784dd1e2f9f64029a79533ffab40/) | OVM_StateTransitionerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc0093...c8ee0f`](./contracts/ethereum-1/0xbc0093224657ce95495e9b65f1344bdc03c8ee0f/) | PortalSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde7355...d441ec`](./contracts/ethereum-1/0xde7355c971a5b733fe2133753abd7e5441d441ec/) | StateCommitmentChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
