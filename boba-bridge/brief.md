# Agentic Audit Brief: Boba Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 9.9% over 90 days

## Project Overview

- Project: Boba Bridge (`boba-bridge`)
- Website: [https://gateway.boba.network](https://gateway.boba.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:07.673Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 67 unique implementations (98 raw deployments)
- DeFi Llama TVL: $2,628,741.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 46 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 2 common project-authored base contract(s) (lib_addressresolver, crossdomainenabled). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 98 (86 live, 12 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 24/53 (45.3%)
- Deployed-live implementations: 55 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 24/55
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 67
- Raw deployments: 98
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 24 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 23 | 41.8% | 2023-04 |
| PeckShield | Tier 2 | 13 | 23.6% | 2023-05 |
| Zokyo | Tier 2 | 5 | 9.1% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BondManager | unknown | ethereum | n/a | [`0x60660e...65b627`](./contracts/ethereum-1/0x60660e6cdeb423cf847dd11de4c473130d65b627/) | ✅ Audited |
| CanonicalTransactionChain | unknown | ethereum | n/a | [`0xfbd254...04c3db`](./contracts/ethereum-1/0xfbd2541e316948b259264c02f370ed088e04c3db/) | ✅ Audited |
| ChainStorageContainer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x13992b...e87d93`](./contracts/ethereum-1/0x13992b9f327faca11568be18a8ad3e9747e87d93/); ethereum `0x171482...691231`; ethereum `0x5f0030...eccd8d` | ✅ Audited |
| EthBridge | unknown | ethereum | n/a | 8 deployments: ethereum [`0x05273e...b21b45`](./contracts/ethereum-1/0x05273ee930a8ef516c4f79014bfa2ad5ecb21b45/); ethereum `0x51c3db...e27f3f`; ethereum `0x5d7824...59040f`; ethereum `0x648276...5400de`; ethereum `0x76b822...207d72`; ethereum `0x79c7c8...60e32c`; ethereum `0xbe6817...a67485`; ethereum `0xd5c567...ed939e` | ✅ Audited |
| EthBridge | operational_periphery | ethereum | n/a | [`0x1a36e2...e03e55`](./contracts/ethereum-1/0x1a36e24d61bc1ada68c21c2da1ad53eab8e03e55/) | ✅ Audited |
| EthBridge | operational_periphery | ethereum | n/a | [`0x6f5378...da2f41`](./contracts/ethereum-1/0x6f537839714761388b6d7ed61bc09579d5da2f41/) | ✅ Audited |
| EthBridge | unknown | ethereum | n/a | [`0x9dd420...434e7e`](./contracts/ethereum-1/0x9dd4202aa5ee9625d1eaa671e2294014dd434e7e/) | ✅ Audited |
| EthBridge | unknown | ethereum | n/a | [`0xb0003e...38c490`](./contracts/ethereum-1/0xb0003eb166654f7e57c0463f8d1a438eb238c490/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x12acf6...e47820`](./contracts/ethereum-1/0x12acf6e3ca96a60fba0bbfd14d2fe0eb6ae47820/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b4859...b1b077`](./contracts/ethereum-1/0x3b48597212f2622511585914cc4d4152c9b1b077/); ethereum `0x6d4528...dff69e` | ✅ Audited |
| L1CrossDomainMessengerFast | unknown | ethereum | n/a | 2 deployments: ethereum [`0x329996...1c7c8c`](./contracts/ethereum-1/0x329996d52cdbc617492428680a7a892e8f1c7c8c/); ethereum `0x4cd194...460996` | ✅ Audited |
| L1ERC1155Bridge | unknown | ethereum | n/a | [`0x72c455...49c8ce`](./contracts/ethereum-1/0x72c455c20ef23cce31f47e636bf67a9b8749c8ce/) | ✅ Audited |
| L1LiquidityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a26ef...361a14`](./contracts/ethereum-1/0x1a26ef6575b7bbb864d984d9255c069f6c361a14/); ethereum `0xd24484...d53cb1` | ✅ Audited |
| L1LiquidityPool | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2b4c53...46e92c`](./contracts/ethereum-1/0x2b4c53c075c745ecc2ad3e3cf35e1ce4d246e92c/); ethereum `0x3d95be...13ec25`; ethereum `0x9dadbc...468da6`; ethereum `0x9eace4...c2ced7`; ethereum `0xec99d7...9b2813`; ethereum `0xecb03b...6f97a0` | ✅ Audited |
| L1LiquidityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3256bd...3f7879`](./contracts/ethereum-1/0x3256bd6fc8b5fa48db95914d0df314465f3f7879/); ethereum `0x87b6c8...fd541c` | ✅ Audited |
| L1MultiMessageRelayer | unknown | ethereum | n/a | [`0x5fd2cf...a0070b`](./contracts/ethereum-1/0x5fd2cf99586b9d92f56cbad0a3ea4df256a0070b/) | ✅ Audited |
| L1MultiMessageRelayerFast | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16650a...3e0d59`](./contracts/ethereum-1/0x16650a81cd8cc7e6d132bb98925efdeea73e0d59/); ethereum `0x2d6134...5f9622` | ✅ Audited |
| L1NFTBridge | unknown | ethereum | n/a | 4 deployments: ethereum [`0x8db3b7...fdba82`](./contracts/ethereum-1/0x8db3b7db8a0f77e0e21178fcad0a53e52bfdba82/); ethereum `0xb095a3...49c8ff`; ethereum `0xb88883...2684ae`; ethereum `0xbf313a...c9a582` | ✅ Audited |
| L1StandardBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5eb029...58520f`](./contracts/ethereum-1/0x5eb02901135865af8da6752af92fbae62258520f/); ethereum `0xede17d...6e2633` | ✅ Audited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0xdc1664...2f1c00`](./contracts/ethereum-1/0xdc1664458d2f0b6090bea60a8793a4e66c2f1c00/) | ✅ Audited |
| Lib_AddressManager | unknown | ethereum | n/a | [`0x8376ac...02f089`](./contracts/ethereum-1/0x8376ac6c3f73a25dd994e0b0669ca7ee0c02f089/) | ✅ Audited |
| Lib_ResolvedDelegateProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x841979...b495c1`](./contracts/ethereum-1/0x841979bbc06be7bfe28d9faddac1a73e1fb495c1/); ethereum `0xc891f4...d5b088` | ✅ Audited |
| OVM_L1CrossDomainMessengerFast | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb7e757...3b4855`](./contracts/ethereum-1/0xb7e757633857c2e6ec7aab362c17e7a5913b4855/); ethereum `0xd05b8f...a7257e` | ✅ Audited |
| StateCommitmentChain | unknown | ethereum | n/a | [`0xde7355...d441ec`](./contracts/ethereum-1/0xde7355c971a5b733fe2133753abd7e5441d441ec/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressDeprecator | unknown | ethereum | n/a | [`0xf6f919...90221e`](./contracts/ethereum-1/0xf6f9193c06b6eec9815a656906f696399a90221e/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | n/a | [`0x7e021d...6638a6`](./contracts/ethereum-1/0x7e021d19c9949109919dcb522df6baec1d6638a6/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0xf45a5f...6af852`](./contracts/ethereum-1/0xf45a5f1e36fcea3cc830a98c6c3c5cea7d6af852/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x56121a...5b9bc4`](./contracts/ethereum-1/0x56121a8612474c3eb65d69a3b871f284705b9bc4/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x999481...db9318`](./contracts/ethereum-1/0x99948157f4702b3ee9de4290c3dcdf2622db9318/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xa6ad22...8bf87e`](./contracts/ethereum-1/0xa6ad22bb0e73def40a24e510cfbc93807d8bf87e/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31f395...517017`](./contracts/ethereum-1/0x31f395dd26430a8cbfa530e31b46aaf7ad517017/); ethereum `0xbb7ad3...068741` | ⚠️ Unaudited |
| mockOVM_BondManager | unknown | ethereum | n/a | [`0xa4f8cd...29ec27`](./contracts/ethereum-1/0xa4f8cd56c14fcec655cfddb2cebd9f1e9329ec27/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x4d898f...81f0c3`](./contracts/ethereum-1/0x4d898f66327fa050131a17ed17a39ebecc81f0c3/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xd080a3...0f15b2`](./contracts/ethereum-1/0xd080a33e651780cd6f52f16020e1ffa04f0f15b2/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0xd80562...261826`](./contracts/ethereum-1/0xd8056243180c4b56a7d2ccd5df9c2696e1261826/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x7b02d1...21ee7e`](./contracts/ethereum-1/0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e/) | ⚠️ Unaudited |
| OVM_CanonicalTransactionChain | unknown | ethereum | n/a | [`0x4b5d9e...c272f2`](./contracts/ethereum-1/0x4b5d9e5a6b1a514eba15a2f949531dccd7c272f2/) | ⚠️ Unaudited |
| OVM_ChainStorageContainer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x318d4d...5372d1`](./contracts/ethereum-1/0x318d4dab7d3793e40139b496c3b89422ae5372d1/); ethereum `0x33938f...0d4c50`; ethereum `0xa7557b...522c46` | ⚠️ Unaudited |
| OVM_ExecutionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa230d4...c8b646`](./contracts/ethereum-1/0xa230d4b11f66a3deee0beaf8d04551f236c8b646/); ethereum `0xe6dc42...55bcba` | ⚠️ Unaudited |
| OVM_FraudVerifier | unknown | ethereum | n/a | [`0x872c65...e4f4b8`](./contracts/ethereum-1/0x872c65c835deb2cfb3493f2c3dd353633ae4f4b8/) | ⚠️ Unaudited |
| OVM_L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x251091...a537f3`](./contracts/ethereum-1/0x25109139f8c4f9f7b4e4d5452a067feae3a537f3/); ethereum `0xae6b04...ef38fd` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessengerFast | unknown | ethereum | n/a | [`0x2cc555...e205b0`](./contracts/ethereum-1/0x2cc555b5b1a4cf7fa5401b29ab46fc5ba2e205b0/) | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayer | unknown | ethereum | n/a | [`0xab2af3...42f9ca`](./contracts/ethereum-1/0xab2af3a98d229b7daed7305bb88ad0ba2c42f9ca/) | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayerFast | unknown | ethereum | n/a | [`0xd982ef...022548`](./contracts/ethereum-1/0xd982efe00e48ae19de1d3b7ded0aac2265022548/) | ⚠️ Unaudited |
| OVM_StateCommitmentChain | unknown | ethereum | n/a | [`0x17834b...d98ab6`](./contracts/ethereum-1/0x17834b754e2f09946ce48d7b5beb4d7d94d98ab6/) | ⚠️ Unaudited |
| OVM_StateTransitionerFactory | unknown | ethereum | n/a | [`0xc6dd73...ffab40`](./contracts/ethereum-1/0xc6dd73d427bf784dd1e2f9f64029a79533ffab40/) | ⚠️ Unaudited |
| PortalSender | unknown | ethereum | n/a | [`0xbc0093...c8ee0f`](./contracts/ethereum-1/0xbc0093224657ce95495e9b65f1344bdc03c8ee0f/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0x60e761...809a42`](./contracts/ethereum-1/0x60e7617506d44d975bde9cddedc753bd8c809a42/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0x9b2a3a...38fda7`](./contracts/ethereum-1/0x9b2a3a76905f7ded47cabb5429924a456b38fda7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x6e598c...49a0dc`](./contracts/ethereum-1/0x6e598cec2701ffaa3c06175dc3af0317a749a0dc/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x996ffd...77c076`](./contracts/ethereum-1/0x996ffd627901f10c80a7d4b72a12316d2e77c076/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0xe4e0f7...30270f`](./contracts/ethereum-1/0xe4e0f760409eb1661db76a4365c0803c3630270f/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x158fd5...9b59eb`](./contracts/ethereum-1/0x158fd5715f16ac1f2dc959a299b383aaaf9b59eb/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0xfae274...866f4a`](./contracts/ethereum-1/0xfae274b77ba59f001196689f93e9e73693866f4a/) | ⚠️ Unaudited |
| SystemDictator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x010dd8...2e1716`](./contracts/ethereum-1/0x010dd8f3f734b56adc28db0fea7daa2c752e1716/); ethereum `0xe8fb8e...dab64c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1c64b8...432df7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2595cf...2b9614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ccb5e...f46f74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39a047...e34d76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f20d...77931d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ac16...d5789e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b4eab...ea7087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad6e4d...640ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb68a38...0f4714` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3782a...332b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdef475...9a9cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9197a...662f59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Boba Network 1 - Quantstamp final report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%201%20-%20Quantstamp%20final%20report.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | 25 | high |
| [Boba Network 2 & 3 - Quantstamp Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%202%20%26%203%20-%20Quantstamp%20Final%20Report.pdf) | Quantstamp | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [Boba Network - Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | contract_name | 39 | high |
| [Boba Network Layer Zero Brigde - Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%20Layer%20Zero%20Brigde%20-%20Final%20Report.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | contract_name | 12 | high |
| [Boba_Zokyo_audit_report_Aug7_2023.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba_Zokyo_audit_report_Aug7_2023.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Boba-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/PeckShield-Audit-Report-Boba-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | 25 | high |
| [index.html](https://certificate.quantstamp.com/full/boba-1-bridges-and-lp-floating-fee/1e5a1e09-bde0-417d-83cd-083234b1409c/index.html) | Quantstamp | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf6f919...90221e`](./contracts/ethereum-1/0xf6f9193c06b6eec9815a656906f696399a90221e/) | AddressDeprecator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e021d...6638a6`](./contracts/ethereum-1/0x7e021d19c9949109919dcb522df6baec1d6638a6/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf45a5f...6af852`](./contracts/ethereum-1/0xf45a5f1e36fcea3cc830a98c6c3c5cea7d6af852/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x999481...db9318`](./contracts/ethereum-1/0x99948157f4702b3ee9de4290c3dcdf2622db9318/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6ad22...8bf87e`](./contracts/ethereum-1/0xa6ad22bb0e73def40a24e510cfbc93807d8bf87e/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31f395...517017`](./contracts/ethereum-1/0x31f395dd26430a8cbfa530e31b46aaf7ad517017/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4f8cd...29ec27`](./contracts/ethereum-1/0xa4f8cd56c14fcec655cfddb2cebd9f1e9329ec27/) | mockOVM_BondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d898f...81f0c3`](./contracts/ethereum-1/0x4d898f66327fa050131a17ed17a39ebecc81f0c3/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd080a3...0f15b2`](./contracts/ethereum-1/0xd080a33e651780cd6f52f16020e1ffa04f0f15b2/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd80562...261826`](./contracts/ethereum-1/0xd8056243180c4b56a7d2ccd5df9c2696e1261826/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b02d1...21ee7e`](./contracts/ethereum-1/0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b5d9e...c272f2`](./contracts/ethereum-1/0x4b5d9e5a6b1a514eba15a2f949531dccd7c272f2/) | OVM_CanonicalTransactionChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318d4d...5372d1`](./contracts/ethereum-1/0x318d4dab7d3793e40139b496c3b89422ae5372d1/) | OVM_ChainStorageContainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa230d4...c8b646`](./contracts/ethereum-1/0xa230d4b11f66a3deee0beaf8d04551f236c8b646/) | OVM_ExecutionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x872c65...e4f4b8`](./contracts/ethereum-1/0x872c65c835deb2cfb3493f2c3dd353633ae4f4b8/) | OVM_FraudVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x251091...a537f3`](./contracts/ethereum-1/0x25109139f8c4f9f7b4e4d5452a067feae3a537f3/) | OVM_L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cc555...e205b0`](./contracts/ethereum-1/0x2cc555b5b1a4cf7fa5401b29ab46fc5ba2e205b0/) | OVM_L1CrossDomainMessengerFast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab2af3...42f9ca`](./contracts/ethereum-1/0xab2af3a98d229b7daed7305bb88ad0ba2c42f9ca/) | OVM_L1MultiMessageRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd982ef...022548`](./contracts/ethereum-1/0xd982efe00e48ae19de1d3b7ded0aac2265022548/) | OVM_L1MultiMessageRelayerFast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17834b...d98ab6`](./contracts/ethereum-1/0x17834b754e2f09946ce48d7b5beb4d7d94d98ab6/) | OVM_StateCommitmentChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6dd73...ffab40`](./contracts/ethereum-1/0xc6dd73d427bf784dd1e2f9f64029a79533ffab40/) | OVM_StateTransitionerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc0093...c8ee0f`](./contracts/ethereum-1/0xbc0093224657ce95495e9b65f1344bdc03c8ee0f/) | PortalSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60e761...809a42`](./contracts/ethereum-1/0x60e7617506d44d975bde9cddedc753bd8c809a42/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b2a3a...38fda7`](./contracts/ethereum-1/0x9b2a3a76905f7ded47cabb5429924a456b38fda7/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x996ffd...77c076`](./contracts/ethereum-1/0x996ffd627901f10c80a7d4b72a12316d2e77c076/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4e0f7...30270f`](./contracts/ethereum-1/0xe4e0f760409eb1661db76a4365c0803c3630270f/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x158fd5...9b59eb`](./contracts/ethereum-1/0x158fd5715f16ac1f2dc959a299b383aaaf9b59eb/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfae274...866f4a`](./contracts/ethereum-1/0xfae274b77ba59f001196689f93e9e73693866f4a/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010dd8...2e1716`](./contracts/ethereum-1/0x010dd8f3f734b56adc28db0fea7daa2c752e1716/) | SystemDictator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=194

Zero-match audit list:

- [21309] Boba Network 2 & 3 - Quantstamp Final Report.pdf
- [21312] Boba_Zokyo_audit_report_Aug7_2023.pdf
- [21314] index.html

Fork inheritance lineage and inherited audits are included when available.
