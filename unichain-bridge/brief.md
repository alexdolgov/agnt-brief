# Agentic Audit Brief: Unichain Bridge

## Project Overview

- Project: Unichain Bridge (`unichain-bridge`)
- Website: [https://www.unichain.org](https://www.unichain.org)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-13T19:51:32.368Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: ethereum, unichain
- Contract surface: 39 unique implementations (65 raw deployments)
- DeFi Llama TVL: $2,187,503.45
- On-chain TVL (included contracts): $44.27
- TVL by chain: Unichain $44.27

## Project Description

Unichain Bridge is the canonical bridge for the Unichain network, enabling users to transfer ETH and ERC-20 tokens between Ethereum and Unichain. It uses the OP Stack's standard bridge architecture with a portal, cross-domain messenger, and dispute game factory for secure message passing and fraud proofs.

### Architecture

The bridge family shares infrastructure through the OP Stack's modular design: the OptimismPortal2 coordinates deposits and withdrawals, relying on the L1CrossDomainMessenger for message passing and the L1StandardBridge for token transfers. Supporting contracts like SystemConfig, DisputeGameFactory, and AnchorStateRegistry provide configuration, fraud proof handling, and state anchoring, all working together to secure the bridge.

## Audit Coverage Summary

- Verified implementations audited: 0/39 (0.0%)
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 65
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $44.27
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BaseFeeVault | core_logic | unichain | [`0x420000...000019`](./contracts/unichain-130/0x4200000000000000000000000000000000000019/) | ⚠️ Unaudited |
| L1FeeVault | core_logic | unichain | [`0x420000...00001a`](./contracts/unichain-130/0x420000000000000000000000000000000000001a/) | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | unichain | [`0x420000...000011`](./contracts/unichain-130/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| AddressManager | governance | ethereum | 3 deployments: ethereum [`0x7e2e1f...b8def6`](./contracts/ethereum-1/0x7e2e1fe92d67f0199708056a22c34d1331b8def6/); ethereum `0x8098f6...63d575`; ethereum `0xc9fd0f...9fce07` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | 3 deployments: ethereum [`0x27cf50...acaff9`](./contracts/ethereum-1/0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9/); ethereum `0x318a64...38643b`; ethereum `0x401522...d76e48` | ⚠️ Unaudited |
| Challenger1of2 | unknown | ethereum | [`0x35d539...4efcd1`](./contracts/ethereum-1/0x35d539d303b1baf30ec59b81044fad70bc4efcd1/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | 6 deployments: ethereum [`0x0bdbec...071a3c`](./contracts/ethereum-1/0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c/); ethereum `0x4755de...75826f`; ethereum `0x7d8ea6...499d70`; ethereum `0x92ac36...04230d`; ethereum `0xc49b2d...9a9da2`; ethereum `0xe62b02...bcd0ac` | ⚠️ Unaudited |
| DeployerWhitelist | unknown | unichain | [`0x420000...000002`](./contracts/unichain-130/0x4200000000000000000000000000000000000002/) | ⚠️ Unaudited |
| DeputyPauseModule | unknown | ethereum | [`0x76fc2f...0e1754`](./contracts/ethereum-1/0x76fc2f971fb355d0453cf9f64d3f9e4f640e1754/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | 2 deployments: ethereum [`0x2f12d6...51dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/); ethereum `0x86a380...989be9` | ⚠️ Unaudited |
| EAS | unknown | unichain | [`0x420000...000021`](./contracts/unichain-130/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | [`0x1196f6...fc566a`](./contracts/ethereum-1/0x1196f688c585d3e5c895ef8954ffb0dcdafc566a/) | ⚠️ Unaudited |
| ETHLockbox | unknown | ethereum | [`0x08ba00...2df5c5`](./contracts/ethereum-1/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5/) | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | ethereum | [`0x6ddba0...707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x847b5c...5b9d92`](./contracts/ethereum-1/0x847b5c174615b1b7fdf770882256e2d3e95b9d92/); ethereum `0xc2819d...e3bd03` | ⚠️ Unaudited |
| L1BlockNumber | unknown | unichain | [`0x420000...000013`](./contracts/unichain-130/0x4200000000000000000000000000000000000013/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x9a3d64...6e98a6`](./contracts/ethereum-1/0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x308017...68f339`](./contracts/ethereum-1/0x3080177e8503b63aa97f15caba69099d7668f339/); ethereum `0xd04d0d...6849cf` | ⚠️ Unaudited |
| L1LidoTokensBridge | operational_periphery | ethereum | [`0x755610...aa1877`](./contracts/ethereum-1/0x755610f5be536ad7afbaa7c10f3e938ea3aa1877/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | 2 deployments: ethereum [`0x81014f...35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/); ethereum `0x9e7569...b98eb5` | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | unichain | [`0x420000...000007`](./contracts/unichain-130/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2ERC721Bridge | operational_periphery | unichain | [`0x420000...000014`](./contracts/unichain-130/0x4200000000000000000000000000000000000014/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | unichain | [`0x420000...000010`](./contracts/unichain-130/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | unichain | [`0x420000...000016`](./contracts/unichain-130/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | [`0x6463de...edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | unichain | 3 deployments: ethereum `0x98742e...a5d286`; ethereum `0xa2b597...d5edad`; unichain [`0x420000...000012`](./contracts/unichain-130/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismMintableERC721Factory | registry | unichain | [`0x420000...000017`](./contracts/unichain-130/0x4200000000000000000000000000000000000017/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | 2 deployments: ethereum [`0x0bd48f...56a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/); ethereum `0xd3a31c...2b3963` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | 2 deployments: ethereum [`0xa35f3d...685772`](./contracts/ethereum-1/0xa35f3d6b5c1ab1de36fe830fc4288fd585685772/); ethereum `0xb2872e...669e8d` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | ethereum | [`0x58bf35...43266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0x9c065e...1be277` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | [`0x8062ab...93b935`](./contracts/ethereum-1/0x8062abc286f5e7d9428a0ccb9abd71e50d93b935/) | ⚠️ Unaudited |
| Proxy | unknown | unichain | 3 deployments: ethereum `0x86b30e...1d9adf`; unichain [`0x420000...00000f`](./contracts/unichain-130/0x420000000000000000000000000000000000000f/); unichain `0x420000...000015` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 4 deployments: ethereum [`0x3b73fa...e2f2a4`](./contracts/ethereum-1/0x3b73fa8d82f511a3cae17b5a26e4e1a2d5e2f2a4/); ethereum `0x48ff88...80fa9d`; ethereum `0xb1b8a6...8ab3b9`; unichain `0x420000...000018` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | [`0x374454...3f2124`](./contracts/ethereum-1/0x374454d6c756c8b594ff9aa799ad8dbfd93f2124/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 3 deployments: ethereum [`0x6d5b18...4d5833`](./contracts/ethereum-1/0x6d5b183f538abb8572f5cd17109c617b994d5833/); ethereum `0x9245d5...0ca1b1`; ethereum `0xb0c4c4...e744ec` | ⚠️ Unaudited |
| SchemaRegistry | registry | unichain | [`0x420000...000020`](./contracts/unichain-130/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 2 deployments: ethereum [`0x1f5ef8...f2d6c1`](./contracts/ethereum-1/0x1f5ef8626a313a32d314664f6d42431f92f2d6c1/); ethereum `0xc40739...f1bda6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7e2e1f...b8def6`](./contracts/ethereum-1/0x7e2e1fe92d67f0199708056a22c34d1331b8def6/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27cf50...acaff9`](./contracts/ethereum-1/0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35d539...4efcd1`](./contracts/ethereum-1/0x35d539d303b1baf30ec59b81044fad70bc4efcd1/) | Challenger1of2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bdbec...071a3c`](./contracts/ethereum-1/0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76fc2f...0e1754`](./contracts/ethereum-1/0x76fc2f971fb355d0453cf9f64d3f9e4f640e1754/) | DeputyPauseModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f12d6...51dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1196f6...fc566a`](./contracts/ethereum-1/0x1196f688c585d3e5c895ef8954ffb0dcdafc566a/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ba00...2df5c5`](./contracts/ethereum-1/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5/) | ETHLockbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a3d64...6e98a6`](./contracts/ethereum-1/0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x308017...68f339`](./contracts/ethereum-1/0x3080177e8503b63aa97f15caba69099d7668f339/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x755610...aa1877`](./contracts/ethereum-1/0x755610f5be536ad7afbaa7c10f3e938ea3aa1877/) | L1LidoTokensBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81014f...35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bd48f...56a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa35f3d...685772`](./contracts/ethereum-1/0xa35f3d6b5c1ab1de36fe830fc4288fd585685772/) | PermissionedDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8062ab...93b935`](./contracts/ethereum-1/0x8062abc286f5e7d9428a0ccb9abd71e50d93b935/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x374454...3f2124`](./contracts/ethereum-1/0x374454d6c756c8b594ff9aa799ad8dbfd93f2124/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f5ef8...f2d6c1`](./contracts/ethereum-1/0x1f5ef8626a313a32d314664f6d42431f92f2d6c1/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
