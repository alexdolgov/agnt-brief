# Agentic Audit Brief: Boba Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 13 (0 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 9.9% over 90 days

## Project Overview

- Project: Boba Bridge (`boba-bridge`)
- Website: [https://gateway.boba.network](https://gateway.boba.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 70 unique implementations (105 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,628,741.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Boba Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/58
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 70
- Raw deployments: 105
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressDeprecator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f9193c06b6eec9815a656906f696399a90221e` | ⚠️ Unaudited |
| BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60660e6cdeb423cf847dd11de4c473130d65b627` | ⚠️ Unaudited |
| CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd2541e316948b259264c02f370ed088e04c3db` | ⚠️ Unaudited |
| ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x13992b9f327faca11568be18a8ad3e9747e87d93`; ethereum `0x17148284d2da2f38c96346f1776c1bf7d7691231`; ethereum `0x5f003030884b3a105809a0eb0c0c28ac40eccd8d` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7e021d19c9949109919dcb522df6baec1d6638a6` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf45a5f1e36fcea3cc830a98c6c3c5cea7d6af852` | ⚠️ Unaudited |
| EthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x05273ee930a8ef516c4f79014bfa2ad5ecb21b45`; ethereum `0x51c3db474b023e4924133f36152f40a7b6e27f3f`; ethereum `0x5d7824051ea90f05ec1c6ecfef05d5234b59040f`; ethereum `0x6482767251d24f309c0c9985e2ea1262465400de`; ethereum `0x76b82285fb4a75481645e5f3771e33bc4d207d72`; ethereum `0x79c7c8298720123d0ca35d8c14753d407b60e32c`; ethereum `0xbe6817bbd54432de7afd071ae325526350a67485`; ethereum `0xd5c567ac6571ab35568a8e8c73470dff8eed939e` | ⚠️ Unaudited |
| EthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a36e24d61bc1ada68c21c2da1ad53eab8e03e55` | ⚠️ Unaudited |
| EthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f537839714761388b6d7ed61bc09579d5da2f41` | ⚠️ Unaudited |
| EthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9dd4202aa5ee9625d1eaa671e2294014dd434e7e` | ⚠️ Unaudited |
| EthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0003eb166654f7e57c0463f8d1a438eb238c490` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x56121a8612474c3eb65d69a3b871f284705b9bc4` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12acf6e3ca96a60fba0bbfd14d2fe0eb6ae47820` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3b48597212f2622511585914cc4d4152c9b1b077`; ethereum `0x6d4528d192db72e282265d6092f4b872f9dff69e` | ⚠️ Unaudited |
| L1CrossDomainMessengerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x329996d52cdbc617492428680a7a892e8f1c7c8c`; ethereum `0x4cd1948de677e6f791b463daab807645d3460996` | ⚠️ Unaudited |
| L1ERC1155Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c455c20ef23cce31f47e636bf67a9b8749c8ce` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99948157f4702b3ee9de4290c3dcdf2622db9318` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa6ad22bb0e73def40a24e510cfbc93807d8bf87e` | ⚠️ Unaudited |
| L1LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1a26ef6575b7bbb864d984d9255c069f6c361a14`; ethereum `0xd24484926f1d130778b9ebd7ec594548b2d53cb1` | ⚠️ Unaudited |
| L1LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2b4c53c075c745ecc2ad3e3cf35e1ce4d246e92c`; ethereum `0x3d95be575576f813b9b18ee14ba041d3e013ec25`; ethereum `0x9dadbc52d12e24b7d7de68477c8478aed4468da6`; ethereum `0x9eace427ab268eed5e674e9680d9a87db0c2ced7`; ethereum `0xec99d7d1afb64ee3eba7e0d5da55b36dbc9b2813`; ethereum `0xecb03b77fa399676dc20f21e97c8c0f1476f97a0` | ⚠️ Unaudited |
| L1LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3256bd6fc8b5fa48db95914d0df314465f3f7879`; ethereum `0x87b6c838486c836a1fb16716df25d8e023fd541c` | ⚠️ Unaudited |
| L1MultiMessageRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd2cf99586b9d92f56cbad0a3ea4df256a0070b` | ⚠️ Unaudited |
| L1MultiMessageRelayerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16650a81cd8cc7e6d132bb98925efdeea73e0d59`; ethereum `0x2d6134ac3e480fbdd263b7163d333dca285f9622` | ⚠️ Unaudited |
| L1NFTBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8db3b7db8a0f77e0e21178fcad0a53e52bfdba82`; ethereum `0xb095a3a4f4e6b4fd9825a4932ad6522d4949c8ff`; ethereum `0xb8888346c0cabf99b6f9c35d028590dee32684ae`; ethereum `0xbf313ad6e476ff4ab6c01b76dfc74a47f2c9a582` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5eb02901135865af8da6752af92fbae62258520f`; ethereum `0xede17df1a202ca498a822151079648aca96e2633` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdc1664458d2f0b6090bea60a8793a4e66c2f1c00` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31f395dd26430a8cbfa530e31b46aaf7ad517017`; ethereum `0xbb7ad3f9ccbc94085b7f7b1d5258e59f5f068741` | ⚠️ Unaudited |
| Lib_AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8376ac6c3f73a25dd994e0b0669ca7ee0c02f089` | ⚠️ Unaudited |
| Lib_ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x841979bbc06be7bfe28d9faddac1a73e1fb495c1`; ethereum `0xc891f466e53f40603250837282eae4e22ad5b088` | ⚠️ Unaudited |
| mockOVM_BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f8cd56c14fcec655cfddb2cebd9f1e9329ec27` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4d898f66327fa050131a17ed17a39ebecc81f0c3` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd080a33e651780cd6f52f16020e1ffa04f0f15b2` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8056243180c4b56a7d2ccd5df9c2696e1261826` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e` | ⚠️ Unaudited |
| OVM_CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5d9e5a6b1a514eba15a2f949531dccd7c272f2` | ⚠️ Unaudited |
| OVM_ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x318d4dab7d3793e40139b496c3b89422ae5372d1`; ethereum `0x33938f8e5f2c36e3ca2b01e878b3322e280d4c50`; ethereum `0xa7557b676ea0d9406459409b5ad01c14b5522c46` | ⚠️ Unaudited |
| OVM_ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa230d4b11f66a3deee0beaf8d04551f236c8b646`; ethereum `0xe6dc42fc8f6e6533ae3c8cfbe44a1debe755bcba` | ⚠️ Unaudited |
| OVM_FraudVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872c65c835deb2cfb3493f2c3dd353633ae4f4b8` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25109139f8c4f9f7b4e4d5452a067feae3a537f3`; ethereum `0xae6b041f0550edef61a70f76f89c77b2b1ef38fd` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessengerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc555b5b1a4cf7fa5401b29ab46fc5ba2e205b0` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessengerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7e757633857c2e6ec7aab362c17e7a5913b4855`; ethereum `0xd05b8fd53614e1569cac01c6d8d41416d0a7257e` | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab2af3a98d229b7daed7305bb88ad0ba2c42f9ca` | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayerFast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd982efe00e48ae19de1d3b7ded0aac2265022548` | ⚠️ Unaudited |
| OVM_L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1bc6c9ef455856e260bccf3dee27463a78cd8a7b`; ethereum `0x41140292d1c00bdffc869be1fbccfc69741153d0`; ethereum `0x554eab6576822b781ecf0a11115a1aeb2d77a762`; ethereum `0xc9b56dc0237133a2e49f2641d70cc41bf771bca9`; ethereum `0xcb701f1c4b4fc2a72cde4160f0473ea978d2f149` | ⚠️ Unaudited |
| OVM_SafetyChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c0cebfe3b81d64d256b38fdf65dd05887e5884` | ⚠️ Unaudited |
| OVM_StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17834b754e2f09946ce48d7b5beb4d7d94d98ab6` | ⚠️ Unaudited |
| OVM_StateManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4935b421af8f86698fb77233e90abc5f146846` | ⚠️ Unaudited |
| OVM_StateTransitionerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dd73d427bf784dd1e2f9f64029a79533ffab40` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0093224657ce95495e9b65f1344bdc03c8ee0f` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60e7617506d44d975bde9cddedc753bd8c809a42` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2a3a76905f7ded47cabb5429924a456b38fda7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e598cec2701ffaa3c06175dc3af0317a749a0dc` | ⚠️ Unaudited |
| StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde7355c971a5b733fe2133753abd7e5441d441ec` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x996ffd627901f10c80a7d4b72a12316d2e77c076` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e0f760409eb1661db76a4365c0803c3630270f` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x158fd5715f16ac1f2dc959a299b383aaaf9b59eb` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfae274b77ba59f001196689f93e9e73693866f4a` | ⚠️ Unaudited |
| SystemDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x010dd8f3f734b56adc28db0fea7daa2c752e1716`; ethereum `0xe8fb8e7da078cef652cbcb3058cab02ac2dab64c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c64b874d47540f96d8c6ebc21c4bf8ca5432df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2595cffb3d3e0aa7abde389acbc646d0902b9614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ccb5ee1d63367e25e2c0c45ca5fa5761bf46f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a047c6172abbc6ec88364795550dd45ee34d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f20dadc13d35a20b9ac712e4b6a2abfd77931d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ac1623acf9eb9f88b65b5f229fe3e2c0d5789e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4eab8d55a4f701c3fe58bdb8b3e1f181ea7087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad6e4dd3d078289611884e549d312be23a640ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68a38d3a10f28948ebf0f2450fef348680f4714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3782ab15fa9983cb4208de1b49cca00f1332b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdef4754af25f56a9ce37c41cad460ccbe19a9cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9197a0fdfc747981fb264071057c73d17662f59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Boba Network 1 - Quantstamp final report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%201%20-%20Quantstamp%20final%20report.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Boba Network 2 & 3 - Quantstamp Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%202%20%26%203%20-%20Quantstamp%20Final%20Report.pdf) | Quantstamp | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Boba Network - Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [Boba Network Layer Zero Brigde - Final Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba%20Network%20Layer%20Zero%20Brigde%20-%20Final%20Report.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Boba_Zokyo_audit_report_Aug7_2023.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/Boba_Zokyo_audit_report_Aug7_2023.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [PeckShield-Audit-Report-Boba-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/bobanetwork/boba/develop/boba_audits/PeckShield-Audit-Report-Boba-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [index.html](https://certificate.quantstamp.com/full/boba-1-bridges-and-lp-floating-fee/1e5a1e09-bde0-417d-83cd-083234b1409c/index.html) | Quantstamp | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21308] Boba Network 1 - Quantstamp final report.pdf — no match: Extracted contracts from scope paths (LP/*, ERC1155Bridges/*, ERC721Bridges/*, standards/* excluding L2GovernanceERC20 and xL2GovernanceERC20) and additional contracts mentioned in findings. Audit date from timeline: 2023-03-24 through 2023-03-24.
- [21309] Boba Network 2 & 3 - Quantstamp Final Report.pdf — no match: Two contracts in scope: Teleportation and Boba_GasPriceOracle. Audit date from cover page: 2023-04-11.
- [21310] Boba Network - Final Report.pdf — no match: Extracted contract names from scope description, findings, and file signatures. Audit date from cover page.
- [21311] Boba Network Layer Zero Brigde - Final Report.pdf — no match: Contracts explicitly listed in scope section on page 3.
- [21312] Boba_Zokyo_audit_report_Aug7_2023.pdf — no match: Extracted contract names from the scope listing on page 3. The audit date is from the cover page: 'August 7th 2023'.
- [21313] PeckShield-Audit-Report-Boba-v1.0.pdf — no match: Extracted contract names from findings targets and examples. No explicit scope table found, but contracts are clearly audited targets.
- [21314] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Boba Network 1 - Quantstamp final report.pdf | L1LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1LiquidityPoolAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2LiquidityPoolAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1NFTBridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2NFTBridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2NFTBridgeAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1ERC1155Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2ERC1155Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2ERC1155BridgeAltL1 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | DiscretionaryExitFee | unmatched — not counted | — | mentioned in finding BOB1-4 | no |
| Boba Network 1 - Quantstamp final report.pdf | DiscretionaryExitBurn | unmatched — not counted | — | mentioned in finding BOB1-4 | no |
| Boba Network 1 - Quantstamp final report.pdf | L1StandardERC721 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2StandardERC721 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1StandardERC1155 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L2StandardERC1155 | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network 1 - Quantstamp final report.pdf | L1CustomERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | L2CustomERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL1StandardERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL2StandardERC721 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL1StandardERC1155 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | IL2StandardERC1155 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL1NFTBridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2NFTBridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2NFTBridgeAltL1 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iSupportBridgeExtraData | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL1ERC1155Bridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2ERC1155Bridge | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2ERC1155BridgeAltL1 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL1LiquidityPool | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | iL2LiquidityPool | unmatched — not counted | — | listed in file signatures | no |
| Boba Network 1 - Quantstamp final report.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | mentioned in findings BOB1-23 and BOB1-26 | no |
| Boba Network 2 & 3 - Quantstamp Final Report.pdf | Teleportation | unmatched — not counted | — | listed in scope | no |
| Boba Network 2 & 3 - Quantstamp Final Report.pdf | Boba_GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Boba Network - Final Report.pdf | L1LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network - Final Report.pdf | L2LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network - Final Report.pdf | BobaFixedSavings | unmatched — not counted | — | listed in scope and findings | no |
| Boba Network - Final Report.pdf | L2StandardERC20 | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1StandardBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1CrossDomainMessengerFast | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1NFTBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2NFTBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2StandardERC721 | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2GovernanceERC20 | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L2StandardBridge | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | AtomicSwap | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | CanonicalTransactionChain | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | TokenPool | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | ERC721Genesis | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | ERC721Registry | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | ERC2470 | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | L1MultiMessageRelayerFast | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | Lib_AddressManager | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | L1ChugSplashProxy | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | OVM_DeployerWhitelist | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | OVM_GasPriceOracle | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | Timelock | unmatched — not counted | — | listed in findings | no |
| Boba Network - Final Report.pdf | GovernorBravoDelegate | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | GovernorBravoDelegator | unmatched — not counted | — | listed in file signatures | no |
| Boba Network - Final Report.pdf | BOBA | unmatched — not counted | — | listed in file signatures | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | LzApp | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | LzLib | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | AltL1Bridge | unmatched — not counted | — | listed in scope | no |
| Boba Network Layer Zero Brigde - Final Report.pdf | EthBridge | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EntryPointWrapper | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BaseAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EntryPoint | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | StakeManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BasePaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | SenderCreator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IEntryPoint | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | UserOperation | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IAggregator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | INonceManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IStakeManager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BobaDepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IBobaGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | VerifyingPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BobaVerifyingPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IBobaStraw | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | SimpleAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | bls | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | DepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | SimpleAccountFactory | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | callback | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | GPODepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | ManualDepositPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | TokenPaymaster | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSHelper | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | IBLSAccount | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSAccountFactory | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSSignatureAggregator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | lib | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BLSOpen | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | BNPairingPrecompileCostEstimator | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | ModExp | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | TokenCallbackHandler | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EIP4337Fallback | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | EIP4337Manager | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | GnosisAccountFactory | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Exec | unmatched — not counted | — | listed in scope | no |
| Boba_Zokyo_audit_report_Aug7_2023.pdf | Teleporation | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | Finding PVE-001 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1LiquidityPool | unmatched — not counted | — | Finding PVE-002 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2LiquidityPool | unmatched — not counted | — | Finding PVE-002 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | BobaTuringCredit | unmatched — not counted | — | Finding PVE-003 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | Boba_GasPriceOracle | unmatched — not counted | — | Finding PVE-004 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | FeedRegistry | unmatched — not counted | — | Finding PVE-005 example | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | FluxAggregator | unmatched — not counted | — | Finding PVE-005 example | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | DiscretionaryExitBurn | unmatched — not counted | — | Finding PVE-006 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1NFTBridge | unmatched — not counted | — | Finding PVE-007 target | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2NFTBridge | unmatched — not counted | — | Finding PVE-007 mentioned | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1ERC1155Bridge | unmatched — not counted | — | Finding PVE-007 mentioned | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2ERC1155Bridge | unmatched — not counted | — | Finding PVE-007 mentioned | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L1CrossDomainMessenger | unmatched — not counted | — | Finding PVE-007 status | no |
| PeckShield-Audit-Report-Boba-v1.0.pdf | L2CrossDomainMessenger | unmatched — not counted | — | Finding PVE-007 status | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 126 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: n/a

Zero-match audit list:

- [21308] Boba Network 1 - Quantstamp final report.pdf
- [21309] Boba Network 2 & 3 - Quantstamp Final Report.pdf
- [21310] Boba Network - Final Report.pdf
- [21311] Boba Network Layer Zero Brigde - Final Report.pdf
- [21312] Boba_Zokyo_audit_report_Aug7_2023.pdf
- [21313] PeckShield-Audit-Report-Boba-v1.0.pdf
- [21314] index.html

Fork inheritance lineage and inherited audits are included when available.
