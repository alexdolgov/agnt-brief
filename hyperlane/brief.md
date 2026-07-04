# Agentic Audit Brief: Hyperlane

## Project Overview

- Project: Hyperlane (`hyperlane`)
- Website: [https://www.hyperlane.xyz/](https://www.hyperlane.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.767Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, avalanche, base, bsc, celo, ethereum, fraxtal, gnosis, linea, manta, metis, mode, optimism, polygon, sei
- Contract surface: 67 unique implementations (67 raw deployments)
- DeFi Llama TVL: $95,364,597.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 65 project-authored contract(s) across 15 chain(s); 8 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 14 common project-authored base contract(s) (ownableupgradeable, packageversioned, mailboxclient). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 67 (63 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 37/59 (62.7%)
- Deployed-live implementations: 63 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 40/67
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 67
- Raw deployments: 67
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 40 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 13.6% (ChainSecurity, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 28 | 41.8% | 2025-02 |
| ChainLight | Tier 2 | 16 | 23.9% | 2025-06 |
| Trail of Bits | Tier 1 | 6 | 9.0% | 2023-09 |
| Oak Security | Tier 2 | 3 | 4.5% | 2024-02 |
| ChainSecurity | Tier 1 | 2 | 3.0% | 2025-02 |
| Sec3 | Tier 2 | 1 | 1.5% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AbacusConnectionManager | unknown | polygon | n/a | [`0x02d16b...82c4d9`](./contracts/polygon-137/0x02d16bc51af6bfd153d67ca61754cf912e82c4d9/) | ✅ Audited |
| AmountRoutingHook | unknown | mode | n/a | [`0x08b446...9f5dee`](./contracts/mode-34443/0x08b446e5915519eda9aa0a19e4480b75de9f5dee/) | ✅ Audited |
| CCIPHook | unknown | celo | n/a | [`0x00acc2...5da583`](./contracts/celo-42220/0x00acc2c04ef207a90425b0602234a760f25da583/) | ✅ Audited |
| CCIPIsm | unknown | base | n/a | [`0x0e389a...b46659`](./contracts/base-8453/0x0e389a95ba8717a2dd38b85c4c29753d98b46659/) | ✅ Audited |
| CircleBridgeAdapter | unknown | avalanche | n/a | [`0x0bff79...bbc2ed`](./contracts/avalanche-43114/0x0bff79f395a73817df1d3c80d78bb3c57fbbc2ed/) | ✅ Audited |
| DefaultFallbackRoutingIsm | unknown | ethereum | n/a | [`0x00cff6...cbb476`](./contracts/ethereum-1/0x00cff6a1e5450746158b8349bb99fa4803cbb476/) | ✅ Audited |
| DefaultHook | unknown | mode | n/a | [`0x004640...214bd3`](./contracts/mode-34443/0x004640d86f894df0147c21f107318138bb214bd3/) | ✅ Audited |
| DomainRoutingHook | unknown | arbitrum | n/a | [`0x00acc2...5da583`](./contracts/arbitrum-42161/0x00acc2c04ef207a90425b0602234a760f25da583/) | ✅ Audited |
| ECDSAStakeRegistry | unknown | ethereum | n/a | [`0x272cf0...d48910`](./contracts/ethereum-1/0x272cf0bb70d3b4f79414e0823b426d2eafd48910/) | ✅ Audited |
| EverclearEthBridge | unknown | base | n/a | [`0x02e058...c51260`](./contracts/base-8453/0x02e058b48d6883a23a3f21f3d3e7fcb345c51260/) | ✅ Audited |
| HypERC20 | unknown | mode | n/a | [`0x003fdf...c1147e`](./contracts/mode-34443/0x003fdf558a2166508911ba11f74d0c55c5c1147e/) | ✅ Audited |
| HypERC20Collateral | unknown | base | n/a | [`0x01348f...b80f37`](./contracts/base-8453/0x01348f639d6e418a5a9673c08c0ddf6eccb80f37/) | ✅ Audited |
| HypERC4626 | unknown | bsc | n/a | [`0x04b833...f1a1dc`](./contracts/bsc-56/0x04b833d386e56ca0b899c1948e091bf0aff1a1dc/) | ✅ Audited |
| HypERC721URICollateral | unknown | ethereum | n/a | [`0x4ff0fc...ba4f62`](./contracts/ethereum-1/0x4ff0fca64a89b5d8a26b6da6011fe5a8b9ba4f62/) | ✅ Audited |
| HypERC721URIStorage | unknown | celo | n/a | [`0x426d6a...132b7d`](./contracts/celo-42220/0x426d6a6e1b55c0b6a83abd8ca5bee29357132b7d/) | ✅ Audited |
| HyperlaneServiceManager | unknown | ethereum | n/a | [`0x296af8...d30682`](./contracts/ethereum-1/0x296af86bff91b23cf980f6a443bc15a3a5d30682/) | ✅ Audited |
| HyperToken | unknown | ethereum | n/a | [`0x7ea7ae...9d48fe`](./contracts/ethereum-1/0x7ea7ae459a2d07711716080a1e42b8069f9d48fe/) | ✅ Audited |
| HypNative | unknown | optimism | n/a | [`0x05a674...0ddba0`](./contracts/optimism-10/0x05a6740f4adbf55adb307868941e7a93700ddba0/) | ✅ Audited |
| InboxValidatorManager | unknown | polygon | n/a | [`0x086ef9...18301f`](./contracts/polygon-137/0x086ef95a2f74582ee30e7d698518a872fb18301f/) | ✅ Audited |
| InterchainAccountIsm | unknown | optimism | n/a | [`0x0389fa...abcb48`](./contracts/optimism-10/0x0389facac114023c123e22f3e54394944cabcb48/) | ✅ Audited |
| InterchainAccountRouter | unknown | optimism | n/a | [`0x03d6cc...d901ad`](./contracts/optimism-10/0x03d6cc17d45e9ea27ed757a8214d1f07f7d901ad/) | ✅ Audited |
| LiquidityLayerRouter | unknown | ethereum | n/a | [`0x75fe1c...22d8e1`](./contracts/ethereum-1/0x75fe1c9cf9cd1f49bd655f4a173fe5ca7c22d8e1/) | ✅ Audited |
| ManagedXERC20Lockbox | unknown | optimism | n/a | [`0x07e437...3f7f31`](./contracts/optimism-10/0x07e437d73e9e43ceece6ea14085b26159e3f7f31/) | ✅ Audited |
| MultisigIsm | unknown | arbitrum | n/a | [`0x32b92b...36d04c`](./contracts/arbitrum-42161/0x32b92bd3e5045b67fdd8dbb7a58d25980836d04c/) | ✅ Audited |
| Outbox | unknown | arbitrum | n/a | [`0x0761b0...7f5004`](./contracts/arbitrum-42161/0x0761b0827849abbf7b0cc09ce14e1c93d87f5004/) | ✅ Audited |
| OutboxValidatorManager | unknown | celo | n/a | [`0x1ab68d...724555`](./contracts/celo-42220/0x1ab68dc4f7b6cfcd00218d4b761b7f3b5a724555/) | ✅ Audited |
| PausableHook | unknown | base | n/a | [`0x05318b...2546da`](./contracts/base-8453/0x05318b5dba51490abe60bb6c29a8169a1a2546da/) | ✅ Audited |
| ProxyAdmin | unknown | bsc | n/a | [`0x0007b3...ab0627`](./contracts/bsc-56/0x0007b3c5765c2e8a115e07607ab9fa2852ab0627/) | ✅ Audited |
| TestRecipient | unknown | base | n/a | [`0x007174...71cce2`](./contracts/base-8453/0x0071740bf129b05c4684abfbbed248d80971cce2/) | ✅ Audited |
| TokenBridgeCctp | unknown | optimism | n/a | [`0x004879...c7f867`](./contracts/optimism-10/0x004879ead3c39fab28d396319932acd657c7f867/) | ✅ Audited |
| TokenBridgeCctpV2 | unknown | base | n/a | [`0x01bfbc...fc278c`](./contracts/base-8453/0x01bfbc80b32469c36db4c7fc564e75475dfc278c/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | sei | n/a | [`0x018ee5...b39beb`](./contracts/sei-1329/0x018ee58c3668e5971e0f6e0ec7f693a3d1b39beb/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x02d16b...82c4d9`](./contracts/linea-59144/0x02d16bc51af6bfd153d67ca61754cf912e82c4d9/) | ✅ Audited |
| TrustedRelayerIsm | unknown | base | n/a | [`0x0cde89...26253b`](./contracts/base-8453/0x0cde890ec71d8c37485c91c3bf0cea647e26253b/) | ✅ Audited |
| UpgradeBeacon | unknown | bsc | n/a | [`0x0d6312...699ae4`](./contracts/bsc-56/0x0d63128d887159d63de29497dfa45afc7c699ae4/) | ✅ Audited |
| UpgradeBeaconController | unknown | bsc | n/a | [`0x02d16b...82c4d9`](./contracts/bsc-56/0x02d16bc51af6bfd153d67ca61754cf912e82c4d9/) | ✅ Audited |
| UpgradeBeaconProxy | unknown | optimism | n/a | [`0x02d16b...82c4d9`](./contracts/optimism-10/0x02d16bc51af6bfd153d67ca61754cf912e82c4d9/) | ✅ Audited |
| UpgradeBeaconProxy | unknown | arbitrum | n/a | [`0x02d16b...82c4d9`](./contracts/arbitrum-42161/0x02d16bc51af6bfd153d67ca61754cf912e82c4d9/) | ✅ Audited |
| ValidatorAnnounce | unknown | metis | n/a | [`0x062200...94784e`](./contracts/metis-1088/0x062200d92df6bb7ba89ce4d6800110450f94784e/) | ✅ Audited |
| XERC20Lockbox | unknown | ethereum | n/a | [`0x271f31...ed3858`](./contracts/ethereum-1/0x271f31773706f06328aa75fa721acd811ded3858/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmountRoutingIsm | unknown | optimism | n/a | [`0x016529...a3c4a9`](./contracts/optimism-10/0x016529e4b4fbc33a742834bbb478e897afa3c4a9/) | ⚠️ Unaudited |
| DistributionPoolProxy | unknown | manta | n/a | [`0x0d6312...699ae4`](./contracts/manta-169/0x0d63128d887159d63de29497dfa45afc7c699ae4/) | ⚠️ Unaudited |
| DomainRoutingIsmFactory | unknown | polygon | n/a | [`0x0b48a7...fd66f7`](./contracts/polygon-137/0x0b48a744698ba8dfa514742dfeb6728f52fd66f7/) | ⚠️ Unaudited |
| FallbackDomainRoutingHook | unknown | base | n/a | [`0x01e92d...f6c0fd`](./contracts/base-8453/0x01e92de2e9c1fee3377eed4fac05ddacb4f6c0fd/) | ⚠️ Unaudited |
| HelloWorld | unknown | gnosis | n/a | [`0x00ecd1...927eaf`](./contracts/gnosis-100/0x00ecd1e858c9809df78f0843697265d93d927eaf/) | ⚠️ Unaudited |
| HyperlaneArbiter | unknown | ethereum | n/a | [`0x088470...ec6da4`](./contracts/ethereum-1/0x088470910056221862d18ff2e65ffaec96ec6da4/) | ⚠️ Unaudited |
| HyperlaneTribunal | unknown | base | n/a | [`0x339b23...7984f1`](./contracts/base-8453/0x339b234fdba8c5c77c43aa01a6ad38071b7984f1/) | ⚠️ Unaudited |
| HypMinter | unknown | ethereum | n/a | [`0x36d224...5bd0c1`](./contracts/ethereum-1/0x36d2246e2299b3c50bb1fd9ba996e0c4135bd0c1/) | ⚠️ Unaudited |
| HypXERC20 | unknown | fraxtal | n/a | [`0x005c5b...31a5bc`](./contracts/fraxtal-252/0x005c5b1fe75c66363d1d12cd283d80f60d31a5bc/) | ⚠️ Unaudited |
| HypXERC20Lockbox | unknown | celo | n/a | [`0x10ed03...6aa053`](./contracts/celo-42220/0x10ed03431193b04b3fa7c3e1f47bf853466aa053/) | ⚠️ Unaudited |
| LinearFee | unknown | optimism | n/a | [`0x01d89d...01471a`](./contracts/optimism-10/0x01d89d803396e5085497bf337c15f8c89801471a/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x0a4e39...9386bf`](./contracts/ethereum-1/0x0a4e396843d7c0f05dd370603bd0a7c0269386bf/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | base | n/a | [`0x04c0ad...ce1eeb`](./contracts/base-8453/0x04c0ad606e14eaa099bb75fa1aad5f96afce1eeb/) | ⚠️ Unaudited |
| MerkleTreeHook | unknown | mode | n/a | [`0x005c5b...31a5bc`](./contracts/mode-34443/0x005c5b1fe75c66363d1d12cd283d80f60d31a5bc/) | ⚠️ Unaudited |
| Network | unknown | ethereum | n/a | [`0x3d92e7...5cd4de`](./contracts/ethereum-1/0x3d92e7d3a9aca6dc2e72399d88d4e131be5cd4de/) | ⚠️ Unaudited |
| PausableIsm | unknown | avalanche | n/a | [`0x00e401...6c11ea`](./contracts/avalanche-43114/0x00e4017ec6177184f10f1727f6f5dee47c6c11ea/) | ⚠️ Unaudited |
| RoutingFee | unknown | optimism | n/a | [`0xa24205...239a01`](./contracts/optimism-10/0xa24205d80a273927a1a3e1c12aa5de9f91239a01/) | ⚠️ Unaudited |
| StagingToken | unknown | optimism | n/a | [`0x17736d...40f78d`](./contracts/optimism-10/0x17736d5b4f57ecb6c6dba278873179961240f78d/) | ⚠️ Unaudited |
| StaticAggregationHookFactory | unknown | manta | n/a | [`0x0761b0...7f5004`](./contracts/manta-169/0x0761b0827849abbf7b0cc09ce14e1c93d87f5004/) | ⚠️ Unaudited |
| StaticAggregationIsmFactory | unknown | avalanche | n/a | [`0x070d4f...0705fc`](./contracts/avalanche-43114/0x070d4f61b05ed9e20c9194f29df073f2110705fc/) | ⚠️ Unaudited |
| StaticMerkleRootWeightedMultisigIsmFactory | unknown | manta | n/a | [`0x0a5d83...54f2c5`](./contracts/manta-169/0x0a5d831c09204888b8791bf4e9c49445ad54f2c5/) | ⚠️ Unaudited |
| StaticMessageIdMultisigIsmFactory | unknown | ethereum | n/a | [`0x113d00...9fb189`](./contracts/ethereum-1/0x113d00bab9efe06d61803837f07881a10a9fb189/) | ⚠️ Unaudited |
| StaticMessageIdWeightedMultisigIsmFactory | unknown | base | n/a | [`0x17736d...40f78d`](./contracts/base-8453/0x17736d5b4f57ecb6c6dba278873179961240f78d/) | ⚠️ Unaudited |
| StaticMultisigIsmFactory | unknown | optimism | n/a | [`0x21581d...1ed9cc`](./contracts/optimism-10/0x21581de0cb0ce91e87b9d5124543c75fa01ed9cc/) | ⚠️ Unaudited |
| StaticProtocolFee | unknown | ethereum | n/a | [`0x8b05bf...79e6d8`](./contracts/ethereum-1/0x8b05bf30f6247a90006c5837ea63c7905d79e6d8/) | ⚠️ Unaudited |
| StorageGasOracle | unknown | arbitrum | n/a | [`0x03b260...03c5af`](./contracts/arbitrum-42161/0x03b2607ef8fd4ebc989115a0230fe7c7ea03c5af/) | ⚠️ Unaudited |
| TimelockController | unknown | manta | n/a | [`0x004640...214bd3`](./contracts/manta-169/0x004640d86f894df0147c21f107318138bb214bd3/) | ⚠️ Unaudited |

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
| [[Original]() (also discovered via alternate URL)](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_2Q_2025_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-06 | aging | Direct | contract_name | 5 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_HyperToken_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-04 | aging | Direct | contract_name | 2 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_PR_5752_5757_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/Offbeat_Security_Hyperlane_Compound_Staker_Rewards.pdf) | Offbeat Security | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainSecurity_Hyperlane_Superchain_USDT_audit_draft.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_CCIP_Warp_Route_Security_Audit_v1.1.pdf) | ChainLight | Audit | 2025-02 | aging | Direct | contract_name | 5 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/chainlight-v3.1-protocol-audit.pdf) | ChainLight | Audit | 2024-12 | aging | Direct | contract_name | 8 | high |
| [[Original]()](https://github.com/trailofbits/publications/blob/master/reviews/2023-09-hyperlane-securityreview.pdf) | Trail of Bits | Audit | 2023-09 | stale | Direct | contract_name | 6 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v3-protocol-audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 6 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v2-protocol-audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 16 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v1-protocol-audit.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 10 | high |
| [[Original]()](https://github.com/sec3-service/reports/blob/master/reports/sec3_hyperlane-sealevel.pdf) | Sec3 | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/sealevel-hyperlane-audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/sealeval-audit-hyperlane-20250327.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [[Original]()](https://github.com/oak-security/audit-reports/blob/main/Hyperlane/2024-02-13%20Audit%20Report%20-%20cw-hyperlane%20v1.0.pdf) | Oak Security | Audit | 2024-02 | stale | Direct | contract_name | 3 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/cw-hyperlane-audit.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 5 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/starknet-hyperlane-audit-draft.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x016529...a3c4a9`](./contracts/optimism-10/0x016529e4b4fbc33a742834bbb478e897afa3c4a9/) | AmountRoutingIsm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0d6312...699ae4`](./contracts/manta-169/0x0d63128d887159d63de29497dfa45afc7c699ae4/) | DistributionPoolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b48a7...fd66f7`](./contracts/polygon-137/0x0b48a744698ba8dfa514742dfeb6728f52fd66f7/) | DomainRoutingIsmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01e92d...f6c0fd`](./contracts/base-8453/0x01e92de2e9c1fee3377eed4fac05ddacb4f6c0fd/) | FallbackDomainRoutingHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x00ecd1...927eaf`](./contracts/gnosis-100/0x00ecd1e858c9809df78f0843697265d93d927eaf/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088470...ec6da4`](./contracts/ethereum-1/0x088470910056221862d18ff2e65ffaec96ec6da4/) | HyperlaneArbiter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x339b23...7984f1`](./contracts/base-8453/0x339b234fdba8c5c77c43aa01a6ad38071b7984f1/) | HyperlaneTribunal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36d224...5bd0c1`](./contracts/ethereum-1/0x36d2246e2299b3c50bb1fd9ba996e0c4135bd0c1/) | HypMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x005c5b...31a5bc`](./contracts/fraxtal-252/0x005c5b1fe75c66363d1d12cd283d80f60d31a5bc/) | HypXERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x10ed03...6aa053`](./contracts/celo-42220/0x10ed03431193b04b3fa7c3e1f47bf853466aa053/) | HypXERC20Lockbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x01d89d...01471a`](./contracts/optimism-10/0x01d89d803396e5085497bf337c15f8c89801471a/) | LinearFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a4e39...9386bf`](./contracts/ethereum-1/0x0a4e396843d7c0f05dd370603bd0a7c0269386bf/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04c0ad...ce1eeb`](./contracts/base-8453/0x04c0ad606e14eaa099bb75fa1aad5f96afce1eeb/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x005c5b...31a5bc`](./contracts/mode-34443/0x005c5b1fe75c66363d1d12cd283d80f60d31a5bc/) | MerkleTreeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d92e7...5cd4de`](./contracts/ethereum-1/0x3d92e7d3a9aca6dc2e72399d88d4e131be5cd4de/) | Network | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00e401...6c11ea`](./contracts/avalanche-43114/0x00e4017ec6177184f10f1727f6f5dee47c6c11ea/) | PausableIsm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa24205...239a01`](./contracts/optimism-10/0xa24205d80a273927a1a3e1c12aa5de9f91239a01/) | RoutingFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x17736d...40f78d`](./contracts/optimism-10/0x17736d5b4f57ecb6c6dba278873179961240f78d/) | StagingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0761b0...7f5004`](./contracts/manta-169/0x0761b0827849abbf7b0cc09ce14e1c93d87f5004/) | StaticAggregationHookFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x070d4f...0705fc`](./contracts/avalanche-43114/0x070d4f61b05ed9e20c9194f29df073f2110705fc/) | StaticAggregationIsmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0a5d83...54f2c5`](./contracts/manta-169/0x0a5d831c09204888b8791bf4e9c49445ad54f2c5/) | StaticMerkleRootWeightedMultisigIsmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x113d00...9fb189`](./contracts/ethereum-1/0x113d00bab9efe06d61803837f07881a10a9fb189/) | StaticMessageIdMultisigIsmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17736d...40f78d`](./contracts/base-8453/0x17736d5b4f57ecb6c6dba278873179961240f78d/) | StaticMessageIdWeightedMultisigIsmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x21581d...1ed9cc`](./contracts/optimism-10/0x21581de0cb0ce91e87b9d5124543c75fa01ed9cc/) | StaticMultisigIsmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b05bf...79e6d8`](./contracts/ethereum-1/0x8b05bf30f6247a90006c5837ea63c7905d79e6d8/) | StaticProtocolFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03b260...03c5af`](./contracts/arbitrum-42161/0x03b2607ef8fd4ebc989115a0230fe7c7ea03c5af/) | StorageGasOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=16
- Match method counts: extraction_exact=79

Zero-match audit list:

- [20525] [Original]()

Fork inheritance lineage and inherited audits are included when available.
