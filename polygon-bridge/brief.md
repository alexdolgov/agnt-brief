# Agentic Audit Brief: Polygon Bridge

## Project Overview

- Project: Polygon Bridge (`polygon-bridge`)
- Website: [https://polygon.technology/](https://polygon.technology/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.990Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum, polygon
- Contract surface: 66 unique implementations (66 raw deployments)
- DeFi Llama TVL: $2,738,904,672.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 52 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 8 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (chainidmixin, governable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 66 (65 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/57 (0.0%)
- Deployed-live implementations: 65 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/66
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BytesLib | unknown | ethereum | n/a | [`0x1d21fa...7e2417`](./contracts/ethereum-1/0x1d21facfc8cad068ef0cbc87fdacdfb20d7e2417/) | ⚠️ Unaudited |
| ChainExitERC1155Predicate | unknown | ethereum | n/a | [`0xea748e...61d216`](./contracts/ethereum-1/0xea748e5b9d0106854cc7479a9b95c92f7061d216/) | ⚠️ Unaudited |
| ChildChain | unknown | polygon | n/a | [`0xd9c7c4...e34861`](./contracts/polygon-137/0xd9c7c4ed4b66858301d0cb28cc88bf655fe34861/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0xa40fc0...37f1b5`](./contracts/polygon-137/0xa40fc0782bee28dd2cf8cb4ac2ecdb05c537f1b5/) | ⚠️ Unaudited |
| ChildERC20Proxified | unknown | polygon | n/a | [`0xf251b5...c58b56`](./contracts/polygon-137/0xf251b57dd11b708cb0385f1f058ec1211fc58b56/) | ⚠️ Unaudited |
| ChildTokenProxy | unknown | polygon | n/a | [`0x1ff58e...e4be31`](./contracts/polygon-137/0x1ff58e665531953a3c667e2d831586777fe4be31/) | ⚠️ Unaudited |
| Common | unknown | ethereum | n/a | [`0x31851a...b7bd75`](./contracts/ethereum-1/0x31851aaf1fa4cc6632f45570c2086adcf8b7bd75/) | ⚠️ Unaudited |
| CommunityTreasuryVotes | unknown | ethereum | n/a | [`0xcb8b43...3b6905`](./contracts/ethereum-1/0xcb8b435481da1ed5abc895e03535ce0bba3b6905/) | ⚠️ Unaudited |
| DefaultEmissionManager | unknown | ethereum | n/a | [`0x152442...27fcb9`](./contracts/ethereum-1/0x152442d77e9fb9c210953d583cbb2da88027fcb9/) | ⚠️ Unaudited |
| DelegationProxy | unknown | ethereum | n/a | [`0x40730f...4bbe44`](./contracts/ethereum-1/0x40730f34668afcb3884f050cbc3d376a444bbe44/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | [`0x401f6c...21188b`](./contracts/ethereum-1/0x401f6c983ea34274ec46f84d70b31c151321188b/) | ⚠️ Unaudited |
| ECVerify | unknown | ethereum | n/a | [`0x71d91a...21b7df`](./contracts/ethereum-1/0x71d91a8988d81617be53427126ee62471321b7df/) | ⚠️ Unaudited |
| EIP1559Burn | unknown | ethereum | n/a | [`0x70bca5...553c38`](./contracts/ethereum-1/0x70bca57f4579f58670ab2d18ef16e02c17553c38/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x91cf48...49894d`](./contracts/polygon-137/0x91cf48ab3c652ee9908cb072e7f52e1e8449894d/) | ⚠️ Unaudited |
| ERC20PredicateBurnOnly | unknown | ethereum | n/a | [`0x158d5f...ffce95`](./contracts/ethereum-1/0x158d5fa3ef8e4dda8a5367decf76b94e7effce95/) | ⚠️ Unaudited |
| ERC721PredicateBurnOnly | unknown | ethereum | n/a | [`0x031848...596447`](./contracts/ethereum-1/0x031848f9487219cc538c42dac150968f95596447/) | ⚠️ Unaudited |
| EventsHub | unknown | ethereum | n/a | [`0x067277...2c9edd`](./contracts/ethereum-1/0x0672777617caa1e778083a4f74ebc997262c9edd/) | ⚠️ Unaudited |
| ExitNFT | unknown | ethereum | n/a | [`0x3b54d2...bca6aa`](./contracts/ethereum-1/0x3b54d2ee48eb06becf706aa37c39ee334abca6aa/) | ⚠️ Unaudited |
| FxRoot | unknown | ethereum | n/a | [`0xfe5e5d...8389a2`](./contracts/ethereum-1/0xfe5e5d361b2ad62c541bab87c45a0b9b018389a2/) | ⚠️ Unaudited |
| GasSwapper | unknown | ethereum | n/a | [`0x1646a4...318b80`](./contracts/ethereum-1/0x1646a4761aa54f23d7f4d5deb5d393f67d318b80/) | ⚠️ Unaudited |
| GenericCustomTokenLayerZero | unknown | polygon | n/a | [`0xee9bf5...8c65cf`](./contracts/polygon-137/0xee9bf5069ce00cf106f1bb6fe214b6c0228c65cf/) | ⚠️ Unaudited |
| GenericCustomTokenPolygon | unknown | polygon | n/a | [`0x45541c...df8879`](./contracts/polygon-137/0x45541c765f6834389601434150832725dadf8879/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x6e7a58...c9ce48`](./contracts/ethereum-1/0x6e7a5820bad6ceba8ef5ea69c0c92ebbdac9ce48/) | ⚠️ Unaudited |
| GovernanceProxy | unknown | ethereum | n/a | [`0x1cc7f5...3bcf41`](./contracts/ethereum-1/0x1cc7f59668986b620330dd23fde2a173ce3bcf41/) | ⚠️ Unaudited |
| MaticToken | unknown | ethereum | n/a | [`0x7d1afa...cfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | ⚠️ Unaudited |
| MaticTokenVesting | unknown | ethereum | n/a | [`0x164255...419f5e`](./contracts/ethereum-1/0x164255531e730788cb1e68a93c81edb585419f5e/) | ⚠️ Unaudited |
| MaticWETH | unknown | ethereum | n/a | [`0xa45b96...56dde8`](./contracts/ethereum-1/0xa45b966996374e9e65ab991c6fe4bfce3a56dde8/) | ⚠️ Unaudited |
| Merkle | unknown | ethereum | n/a | [`0x032a13...ae2ac4`](./contracts/ethereum-1/0x032a138ef9b6efb91c8df33082e7abf17aae2ac4/) | ⚠️ Unaudited |
| MerklePatriciaProof | unknown | ethereum | n/a | [`0x8e51a1...ec9dc8`](./contracts/ethereum-1/0x8e51a119e892d3fb324c0410f11f39f61dec9dc8/) | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | ethereum | n/a | [`0x7fbd00...23b387`](./contracts/ethereum-1/0x7fbd00c577caa70318bcf1c6c11e23732823b387/) | ⚠️ Unaudited |
| MRC20 | unknown | polygon | n/a | [`0x000000...001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | ⚠️ Unaudited |
| NewBurn1559 | unknown | polygon | n/a | [`0x1bd455...b33feb`](./contracts/polygon-137/0x1bd455c30ad8e2b8df40df44a2ef923d67b33feb/) | ⚠️ Unaudited |
| NttManager | unknown | polygon | n/a | [`0x2de16d...3d117b`](./contracts/polygon-137/0x2de16d15215a6db2fe1c927e01a5294a833d117b/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0xa7a8e4...14dc0a`](./contracts/ethereum-1/0xa7a8e43ef0e579c3d64618d2a34dd456ae14dc0a/) | ⚠️ Unaudited |
| PeerToken | unknown | polygon | n/a | [`0xc4babe...0ce5c7`](./contracts/polygon-137/0xc4babee541c2fa1ea55ce9af9eb3b5c76b0ce5c7/) | ⚠️ Unaudited |
| PolygonEcosystemToken | unknown | ethereum | n/a | [`0x455e53...ffc3f6`](./contracts/ethereum-1/0x455e53cbb86018ac2b8092fdcd39d8444affc3f6/) | ⚠️ Unaudited |
| PolygonMigration | unknown | ethereum | n/a | [`0x29e7df...0e2c4e`](./contracts/ethereum-1/0x29e7df7b6a1b2b07b731457f499e1696c60e2c4e/) | ⚠️ Unaudited |
| PriorityQueue | unknown | ethereum | n/a | [`0x1c1d34...4ee4e2`](./contracts/ethereum-1/0x1c1d34e469e2c0b43432dc1fea91b1ea804ee4e2/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x409834...12da44`](./contracts/polygon-137/0x409834270b6f2591dd6c1e9f351e4194b112da44/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x33a02e...99ca71`](./contracts/ethereum-1/0x33a02e6cc863d393d6bf231b697b82f6e499ca71/) | ⚠️ Unaudited |
| RLPEncode | unknown | ethereum | n/a | [`0x021c2b...bae495`](./contracts/ethereum-1/0x021c2bf4d2941ce3d593e07317ec355937bae495/) | ⚠️ Unaudited |
| RLPReader | unknown | ethereum | n/a | [`0xd75f1d...e035a2`](./contracts/ethereum-1/0xd75f1d6a8a7dc558a65c2f30ebf876ddbee035a2/) | ⚠️ Unaudited |
| RootChain | unknown | ethereum | n/a | [`0x17ad93...412b00`](./contracts/ethereum-1/0x17ad93683697ce557ef7774660394456a7412b00/) | ⚠️ Unaudited |
| RootChainManager | unknown | ethereum | n/a | [`0x4015cc...38e5d0`](./contracts/ethereum-1/0x4015ccad9218b109d3339b356392c6ee8438e5d0/) | ⚠️ Unaudited |
| RootERC721 | unknown | ethereum | n/a | [`0x96cddf...e54ad3`](./contracts/ethereum-1/0x96cddf45c0cd9a59876a2a29029d7c54f6e54ad3/) | ⚠️ Unaudited |
| SafeMath | unknown | ethereum | n/a | [`0x96d358...97ca05`](./contracts/ethereum-1/0x96d358795782a73d90f2ed2d505ab235d197ca05/) | ⚠️ Unaudited |
| StakeManager | unknown | ethereum | n/a | [`0x3a8b34...3b8ee0`](./contracts/ethereum-1/0x3a8b34d222bb4169b36bc07aa9ca85d61d3b8ee0/) | ⚠️ Unaudited |
| StakeManagerExtension | unknown | ethereum | n/a | [`0xef49ea...f78166`](./contracts/ethereum-1/0xef49ea6996073752b6840cda34773ffa78f78166/) | ⚠️ Unaudited |
| StakeManagerProxy | unknown | ethereum | n/a | [`0x88f650...b303eb`](./contracts/ethereum-1/0x88f65097ba6e10f25e93bf41987f9416bbb303eb/) | ⚠️ Unaudited |
| StakingInfo | unknown | ethereum | n/a | [`0x1ff58e...e4be31`](./contracts/ethereum-1/0x1ff58e665531953a3c667e2d831586777fe4be31/) | ⚠️ Unaudited |
| StakingNFT | unknown | ethereum | n/a | [`0x47cbe2...ec897f`](./contracts/ethereum-1/0x47cbe25bbdb40a774cc37e1da92d10c2c7ec897f/) | ⚠️ Unaudited |
| StateSender | unknown | ethereum | n/a | [`0x28e4f3...a5bfbe`](./contracts/ethereum-1/0x28e4f3a7f651294b9564800b2d01f35189a5bfbe/) | ⚠️ Unaudited |
| TestToken | unknown | ethereum | n/a | [`0x3db715...512722`](./contracts/ethereum-1/0x3db715989da05c1d17441683b5b41d4510512722/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x933dcf...62cdc1`](./contracts/ethereum-1/0x933dcf4b58d3ae8fb0cde6e10e22f6c0e062cdc1/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x0bee30...e19038`](./contracts/ethereum-1/0x0bee30d716c380ea7001dec1bb64c8b095e19038/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2c24b5...32374f`](./contracts/ethereum-1/0x2c24b57e2ccd1f273045af6a5f632504c432374f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2dc70f...c34dff`](./contracts/ethereum-1/0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x417d01...689e02`](./contracts/ethereum-1/0x417d01b64ea30c4e163873f3a1f77b727c689e02/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x7995b8...2957b9`](./contracts/polygon-137/0x7995b8b819bbcd43086a9d0490730db90e2957b9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0xa4a666...81a743`](./contracts/polygon-137/0xa4a666fc6474de50608cc0fc8a41478fcf81a743/) | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | n/a | [`0x01d5dc...fed5ec`](./contracts/ethereum-1/0x01d5dc56ad4206bb0c132d834644d57f51fed5ec/) | ⚠️ Unaudited |
| ValidatorShareFactory | unknown | ethereum | n/a | [`0x379e6a...3fe308`](./contracts/ethereum-1/0x379e6aae389f284d5e54b2aa0beba8833c3fe308/) | ⚠️ Unaudited |
| VaultBridgeTokenInitializer | unknown | ethereum | n/a | [`0xb2ec4d...3945f5`](./contracts/ethereum-1/0xb2ec4d99c82417257f41b2c8ceda0962c03945f5/) | ⚠️ Unaudited |
| VaultBridgeTokenPart2 | unknown | ethereum | n/a | [`0x1c8565...298e80`](./contracts/ethereum-1/0x1c8565f454f8239b854fe62c99b90b3fc9298e80/) | ⚠️ Unaudited |
| WithdrawManager | unknown | ethereum | n/a | [`0x017c89...8201ca`](./contracts/ethereum-1/0x017c89ca4bda3d66cc65e3d20dd95432258201ca/) | ⚠️ Unaudited |
| ZkEVMWrapperV2 | unknown | ethereum | n/a | [`0x7bd2f4...0fcae8`](./contracts/ethereum-1/0x7bd2f45b2d389c5bdeea7a09d7b0f5e2270fcae8/) | ⚠️ Unaudited |

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
| [Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf) | Hexens | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma%20Prime%20-%20Polygon%20-%20LXLY%20Banana%20-%20Security%20Assessment%20Report%20-%202.0.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Spearbits-full-agglayer-v0.3.0.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/Spearbits-full-agglayer-v0.3.0.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/0xPolygonHermez/zkevm-contracts/blob/main/audits/zkEVM-bridge-Spearbit-27-March.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1d21fa...7e2417`](./contracts/ethereum-1/0x1d21facfc8cad068ef0cbc87fdacdfb20d7e2417/) | BytesLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea748e...61d216`](./contracts/ethereum-1/0xea748e5b9d0106854cc7479a9b95c92f7061d216/) | ChainExitERC1155Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd9c7c4...e34861`](./contracts/polygon-137/0xd9c7c4ed4b66858301d0cb28cc88bf655fe34861/) | ChildChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa40fc0...37f1b5`](./contracts/polygon-137/0xa40fc0782bee28dd2cf8cb4ac2ecdb05c537f1b5/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf251b5...c58b56`](./contracts/polygon-137/0xf251b57dd11b708cb0385f1f058ec1211fc58b56/) | ChildERC20Proxified | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ff58e...e4be31`](./contracts/polygon-137/0x1ff58e665531953a3c667e2d831586777fe4be31/) | ChildTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31851a...b7bd75`](./contracts/ethereum-1/0x31851aaf1fa4cc6632f45570c2086adcf8b7bd75/) | Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb8b43...3b6905`](./contracts/ethereum-1/0xcb8b435481da1ed5abc895e03535ce0bba3b6905/) | CommunityTreasuryVotes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x152442...27fcb9`](./contracts/ethereum-1/0x152442d77e9fb9c210953d583cbb2da88027fcb9/) | DefaultEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40730f...4bbe44`](./contracts/ethereum-1/0x40730f34668afcb3884f050cbc3d376a444bbe44/) | DelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x401f6c...21188b`](./contracts/ethereum-1/0x401f6c983ea34274ec46f84d70b31c151321188b/) | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71d91a...21b7df`](./contracts/ethereum-1/0x71d91a8988d81617be53427126ee62471321b7df/) | ECVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70bca5...553c38`](./contracts/ethereum-1/0x70bca57f4579f58670ab2d18ef16e02c17553c38/) | EIP1559Burn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x158d5f...ffce95`](./contracts/ethereum-1/0x158d5fa3ef8e4dda8a5367decf76b94e7effce95/) | ERC20PredicateBurnOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031848...596447`](./contracts/ethereum-1/0x031848f9487219cc538c42dac150968f95596447/) | ERC721PredicateBurnOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067277...2c9edd`](./contracts/ethereum-1/0x0672777617caa1e778083a4f74ebc997262c9edd/) | EventsHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b54d2...bca6aa`](./contracts/ethereum-1/0x3b54d2ee48eb06becf706aa37c39ee334abca6aa/) | ExitNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe5e5d...8389a2`](./contracts/ethereum-1/0xfe5e5d361b2ad62c541bab87c45a0b9b018389a2/) | FxRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1646a4...318b80`](./contracts/ethereum-1/0x1646a4761aa54f23d7f4d5deb5d393f67d318b80/) | GasSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xee9bf5...8c65cf`](./contracts/polygon-137/0xee9bf5069ce00cf106f1bb6fe214b6c0228c65cf/) | GenericCustomTokenLayerZero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x45541c...df8879`](./contracts/polygon-137/0x45541c765f6834389601434150832725dadf8879/) | GenericCustomTokenPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e7a58...c9ce48`](./contracts/ethereum-1/0x6e7a5820bad6ceba8ef5ea69c0c92ebbdac9ce48/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc7f5...3bcf41`](./contracts/ethereum-1/0x1cc7f59668986b620330dd23fde2a173ce3bcf41/) | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d1afa...cfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | MaticToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x164255...419f5e`](./contracts/ethereum-1/0x164255531e730788cb1e68a93c81edb585419f5e/) | MaticTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa45b96...56dde8`](./contracts/ethereum-1/0xa45b966996374e9e65ab991c6fe4bfce3a56dde8/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x032a13...ae2ac4`](./contracts/ethereum-1/0x032a138ef9b6efb91c8df33082e7abf17aae2ac4/) | Merkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e51a1...ec9dc8`](./contracts/ethereum-1/0x8e51a119e892d3fb324c0410f11f39f61dec9dc8/) | MerklePatriciaProof | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fbd00...23b387`](./contracts/ethereum-1/0x7fbd00c577caa70318bcf1c6c11e23732823b387/) | MintableERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000000...001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | MRC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1bd455...b33feb`](./contracts/polygon-137/0x1bd455c30ad8e2b8df40df44a2ef923d67b33feb/) | NewBurn1559 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2de16d...3d117b`](./contracts/polygon-137/0x2de16d15215a6db2fe1c927e01a5294a833d117b/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7a8e4...14dc0a`](./contracts/ethereum-1/0xa7a8e43ef0e579c3d64618d2a34dd456ae14dc0a/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc4babe...0ce5c7`](./contracts/polygon-137/0xc4babee541c2fa1ea55ce9af9eb3b5c76b0ce5c7/) | PeerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x455e53...ffc3f6`](./contracts/ethereum-1/0x455e53cbb86018ac2b8092fdcd39d8444affc3f6/) | PolygonEcosystemToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29e7df...0e2c4e`](./contracts/ethereum-1/0x29e7df7b6a1b2b07b731457f499e1696c60e2c4e/) | PolygonMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c1d34...4ee4e2`](./contracts/ethereum-1/0x1c1d34e469e2c0b43432dc1fea91b1ea804ee4e2/) | PriorityQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33a02e...99ca71`](./contracts/ethereum-1/0x33a02e6cc863d393d6bf231b697b82f6e499ca71/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x021c2b...bae495`](./contracts/ethereum-1/0x021c2bf4d2941ce3d593e07317ec355937bae495/) | RLPEncode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd75f1d...e035a2`](./contracts/ethereum-1/0xd75f1d6a8a7dc558a65c2f30ebf876ddbee035a2/) | RLPReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ad93...412b00`](./contracts/ethereum-1/0x17ad93683697ce557ef7774660394456a7412b00/) | RootChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4015cc...38e5d0`](./contracts/ethereum-1/0x4015ccad9218b109d3339b356392c6ee8438e5d0/) | RootChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96cddf...e54ad3`](./contracts/ethereum-1/0x96cddf45c0cd9a59876a2a29029d7c54f6e54ad3/) | RootERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96d358...97ca05`](./contracts/ethereum-1/0x96d358795782a73d90f2ed2d505ab235d197ca05/) | SafeMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a8b34...3b8ee0`](./contracts/ethereum-1/0x3a8b34d222bb4169b36bc07aa9ca85d61d3b8ee0/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef49ea...f78166`](./contracts/ethereum-1/0xef49ea6996073752b6840cda34773ffa78f78166/) | StakeManagerExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88f650...b303eb`](./contracts/ethereum-1/0x88f65097ba6e10f25e93bf41987f9416bbb303eb/) | StakeManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ff58e...e4be31`](./contracts/ethereum-1/0x1ff58e665531953a3c667e2d831586777fe4be31/) | StakingInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47cbe2...ec897f`](./contracts/ethereum-1/0x47cbe25bbdb40a774cc37e1da92d10c2c7ec897f/) | StakingNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28e4f3...a5bfbe`](./contracts/ethereum-1/0x28e4f3a7f651294b9564800b2d01f35189a5bfbe/) | StateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3db715...512722`](./contracts/ethereum-1/0x3db715989da05c1d17441683b5b41d4510512722/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x933dcf...62cdc1`](./contracts/ethereum-1/0x933dcf4b58d3ae8fb0cde6e10e22f6c0e062cdc1/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d5dc...fed5ec`](./contracts/ethereum-1/0x01d5dc56ad4206bb0c132d834644d57f51fed5ec/) | ValidatorShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x379e6a...3fe308`](./contracts/ethereum-1/0x379e6aae389f284d5e54b2aa0beba8833c3fe308/) | ValidatorShareFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2ec4d...3945f5`](./contracts/ethereum-1/0xb2ec4d99c82417257f41b2c8ceda0962c03945f5/) | VaultBridgeTokenInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c8565...298e80`](./contracts/ethereum-1/0x1c8565f454f8239b854fe62c99b90b3fc9298e80/) | VaultBridgeTokenPart2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x017c89...8201ca`](./contracts/ethereum-1/0x017c89ca4bda3d66cc65e3d20dd95432258201ca/) | WithdrawManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bd2f4...0fcae8`](./contracts/ethereum-1/0x7bd2f45b2d389c5bdeea7a09d7b0f5e2270fcae8/) | ZkEVMWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24332] Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf
- [24333] Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf
- [24334] Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf
- [24335] Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf
- [24336] Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf
- [24337] Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf
- [24338] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf
- [24339] Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf
- [24340] Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf
- [24341] Spearbits-full-agglayer-v0.3.0.pdf
- [24342] zkEVM-bridge-Spearbit-27-March.pdf

Fork inheritance lineage and inherited audits are included when available.
