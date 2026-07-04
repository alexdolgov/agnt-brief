# Agentic Audit Brief: LayerZero

## Project Overview

- Project: LayerZero (`layerzero`)
- Website: [https://layerzero.network/](https://layerzero.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.350Z
- Pipeline run: v2-2026-07-03-f86598
- Chains: arbitrum, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $7,318,061,686.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 94 (94 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 21 fresh, 11 aging, 8 stale, 54 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LayerZeroToken | unknown | ethereum | n/a | [`0x698588...3271cd`](./contracts/ethereum-1/0x6985884c4392d348587b19cb9eaaf157f13271cd/) | ⚠️ Unaudited |
| LZMultiCall | unknown | ethereum | n/a | [`0x5528cf...12bde3`](./contracts/ethereum-1/0x5528cf58feb8fbfce94f43b33240fffb1312bde3/) | ⚠️ Unaudited |
| TransferDelegate | unknown | arbitrum | n/a | [`0x60fccb...609de4`](./contracts/arbitrum-42161/0x60fccb9b58d5e806ca5cb8bfce721c2274609de4/) | ⚠️ Unaudited |

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
| [DVN-OtterSec-12SEPT2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-OtterSec-12SEPT2023.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DVN-Paladin-11JUN2026-Diff.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Paladin-11JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [DVN-Paladin-26AUG2023-Initial.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Paladin-26AUG2023-Initial.pdf) | Paladin | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [DVN-Zellic-25AUG2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Zellic-25AUG2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DVN1.0-Zellic-14MAR2024.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN1.0-Zellic-14MAR2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gasolina-OtterSec-10DEC2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/Gasolina/Gasolina-OtterSec-10DEC2025.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Ottersec_Sep-18-25.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Zellic_Sep-25-25.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Ackee-15MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Ackee-15MAR2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Certora-28JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Certora-28JUL2022.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-SlowMist-15MAR2022Audit.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-SlowMist-15MAR2022Audit.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Zellic-03JUN2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zellic-03JUN2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Zokyo-22OCT2021.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zokyo-22OCT2021.pdf) | Zokyo | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-proof-lib-Ackee-11MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-proof-lib-Ackee-11MAR2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UltraLightNodeV2Radar-Zellic-22NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/UltraLightNodeV2Radar-Zellic-22NOV2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf) | Paladin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LzApp&Token-Ackee-03MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/LzApp%26Token-Ackee-03MAY2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NativeOFTV2-Zellic-16JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTV2-Zellic-16JUN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NativeOFTWithFee-Zellic-30JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTWithFee-Zellic-30JUN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExample-Ackee-27JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExample-Ackee-27JUL2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ackee-10OCT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-10OCT2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ackee-14NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-14NOV2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-21MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-21MAR2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-24JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-24JAN2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-27APR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-27APR2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Zellic-21MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Zellic-21MAY2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamplesONFT-Zellic-19JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesONFT-Zellic-19JAN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AptosBridge-Ottersec-30SEPT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/AptosBridge-Ottersec-30SEPT2022.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WrappedAssetBridge-Zellic-28FEB2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridge-Zellic-28FEB2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WrappedAssetBridgeV2-Hexens-AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Hexens-AUG2024.pdf) | Hexens | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf) | OtterSec | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf) | Paladin | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [EndpointV2-Blockian-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Blockian-13DEC2023.pdf) | Blockian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-CMichel-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-CMichel-13DEC2023.pdf) | CMichel | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Certora-DEDC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Certora-DEDC2023.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Ottersec-14DEC2023-Updated.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Ottersec-14DEC2023-Updated.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Paladin-11JUN2026-Diff.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Paladin-11JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [EndpointV2-Paladin-15DEC2023-Initial.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Paladin-15DEC2023-Initial.pdf) | Paladin | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [EndpointV2-Windhustler-15DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Windhustler-15DEC2023.pdf) | Windhustler | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Zellic-13DEC2023-Updated.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Zellic-13DEC2023-Updated.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MessageLib-Paladin-11JUN2026-Diff.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/MessageLib-Paladin-11JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [MessageLib-Paladin-15DEC2023-Initial.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/MessageLib-Paladin-15DEC2023-Initial.pdf) | Paladin | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [PriceFeed-OtterSec-26JUN2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/PriceFeed-OtterSec-26JUN2026.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lzRead-Paladin-14NOV2024-Initial.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Paladin-14NOV2024-Initial.pdf) | Paladin | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [lzRead-Paladin-23JUN2026-Diff.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Paladin-23JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [lzRead-Sec3-12NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Sec3-12NOV2024.pdf) | Sec3 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lzRead-Zellic-25OCT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Zellic-25OCT2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20IOTA%20L1/LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf) | OtterSec | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Receive-Types_OtterSec_July-12-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/LZ-Receive-Types_OtterSec_July-12-2025.pdf) | OtterSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SolanaEndPoint-Pashov-28MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndPoint-Pashov-28MAY2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-Halborn-24MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Halborn-24MAY2024.pdf) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-Ottersec-07JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Ottersec-07JUN2024.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-V2_Starknet_Zellic_30_Sept_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_Zellic_30_Sept_2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf) | OtterSec | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf) | UNH-IOL | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf) | OtterSec | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/StargateV2%20Variants%20-%20EndpointV2Alt/EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf) | OtterSec | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/StargateV2%20Variants%20-%20EndpointV2Alt/EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf) | Paladin | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [TempoOFTWrapper-OtterSec-16Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-OtterSec-16Feb2026.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TempoOFTWrapper-Paladin-10Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-Paladin-10Feb2026.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [HyperLiquid_Composer-Paladin-9MAY2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/HyperLiquid_Composer-Paladin-9MAY2025.pdf) | Paladin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf) | OtterSec | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Multicall_OtterSec_Dec-30th-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_OtterSec_Dec-30th-2025.pdf) | OtterSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [LZ-Multicall_Paladin_Jan-16th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_Paladin_Jan-16th-2026.pdf) | Paladin | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf) | UNH-IOL | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-OApp&OFT_Zellic_Sep-23-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/LZ-OApp%26OFT_Zellic_Sep-23-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OApp&OFT-Zellic-12JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OApp%26OFT-Zellic-12JUN2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OFT-OAPP-ChainSecurity-30JAN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OFT-OAPP-ChainSecurity-30JAN2024.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeableOapp&OFT-Hexens-01NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/UpgradeableOapp%26OFT-Hexens-01NOV2024.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Solana-Example-Review_Zellic_Dec-17-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-Example-Review_Zellic_Dec-17-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Ottersec-23May2025.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RateLimiter-Hexens-MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiter-Hexens-MAY2024.pdf) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Hexens-OCT2024oct24%20(1).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RateLimiterFlows-Pashov-20SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Pashov-20SEPT2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ONFT721_Paladin_10AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ONFT/ONFT721_Paladin_10AUG2024.pdf) | Paladin | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [LZ_OVault-Composer_Paladin_Oct-23-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Composer_Paladin_Oct-23-25.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ_OVault-Yield.xyz_19-Nov-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Yield.xyz_19-Nov-25.pdf) | Yield.xyz | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [LZ_OVault_Ottersec_Jul-16-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Ottersec_Jul-16-25.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_OVault_Paladin_Aug-06-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Paladin_Aug-06-25.pdf) | Paladin | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [AptosZROAirdrop-Paladin-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/Aptos%20ZRO%20Airdrop/AptosZROAirdrop-Paladin-17JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZROClaim-Paladin-18JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Paladin-18JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZROClaim-Pashov-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Pashov-17JUN2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZROclaim-hexens-23JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROclaim-hexens-23JUN2024.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VeDistributor_Paladin_09-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Paladin_09-Sep-2025.pdf) | Paladin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [VeDistributor_Zellic_08-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Zellic_08-Sep-2025.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 94
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [23801] DVN-OtterSec-12SEPT2023.pdf
- [23802] DVN-Paladin-11JUN2026-Diff.pdf
- [23803] DVN-Paladin-26AUG2023-Initial.pdf
- [23804] DVN-Zellic-25AUG2023.pdf
- [23805] DVN1.0-Zellic-14MAR2024.pdf
- [23806] Gasolina-OtterSec-10DEC2025.pdf
- [23807] LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf
- [23808] LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf
- [23809] EndpointV1-Ackee-15MAR2022.pdf
- [23810] EndpointV1-Certora-28JUL2022.pdf
- [23811] EndpointV1-SlowMist-15MAR2022Audit.pdf
- [23812] EndpointV1-Zellic-03JUN2022.pdf
- [23813] EndpointV1-Zokyo-22OCT2021.pdf
- [23814] EndpointV1-proof-lib-Ackee-11MAR2022.pdf
- [23815] UltraLightNodeV2Radar-Zellic-22NOV2022.pdf
- [23816] OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf
- [23817] OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf
- [23818] LzApp&Token-Ackee-03MAY2022.pdf
- [23819] NativeOFTV2-Zellic-16JUN2023.pdf
- [23820] NativeOFTWithFee-Zellic-30JUN2023.pdf
- [23821] SolidityExample-Ackee-27JUL2022.pdf
- [23822] SolidityExamples-Ackee-10OCT2022.pdf
- [23823] SolidityExamples-Ackee-14NOV2022.pdf
- [23824] SolidityExamples-Ottersec-21MAR2023.pdf
- [23825] SolidityExamples-Ottersec-24JAN2023.pdf
- [23826] SolidityExamples-Ottersec-27APR2023.pdf
- [23827] SolidityExamples-Zellic-21MAY2022.pdf
- [23828] SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf
- [23829] SolidityExamplesONFT-Zellic-19JAN2023.pdf
- [23830] AptosBridge-Ottersec-30SEPT2022.pdf
- [23831] WrappedAssetBridge-Zellic-28FEB2023.pdf
- [23832] WrappedAssetBridgeV2-Hexens-AUG2024.pdf
- [23833] WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf
- [23834] LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf
- [23835] LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf
- [23841] EndpointV2-Blockian-13DEC2023.pdf
- [23842] EndpointV2-CMichel-13DEC2023.pdf
- [23843] EndpointV2-Certora-DEDC2023.pdf
- [23844] EndpointV2-Ottersec-14DEC2023-Updated.pdf
- [23845] EndpointV2-Paladin-11JUN2026-Diff.pdf
- [23846] EndpointV2-Paladin-15DEC2023-Initial.pdf
- [23847] EndpointV2-Windhustler-15DEC2023.pdf
- [23848] EndpointV2-Zellic-13DEC2023-Updated.pdf
- [23849] MessageLib-Paladin-11JUN2026-Diff.pdf
- [23850] MessageLib-Paladin-15DEC2023-Initial.pdf
- [23851] PriceFeed-OtterSec-26JUN2026.pdf
- [23852] lzRead-Paladin-14NOV2024-Initial.pdf
- [23853] lzRead-Paladin-23JUN2026-Diff.pdf
- [23854] lzRead-Sec3-12NOV2024.pdf
- [23855] lzRead-Zellic-25OCT2024.pdf
- [23856] LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf
- [23857] LZ-Receive-Types_OtterSec_July-12-2025.pdf
- [23858] SolanaEndPoint-Pashov-28MAY2024.pdf
- [23859] SolanaEndpoint-Halborn-24MAY2024.pdf
- [23860] SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf
- [23861] SolanaEndpoint-Ottersec-07JUN2024.pdf
- [23862] LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf
- [23863] LZ-V2_Starknet_Zellic_30_Sept_2025.pdf
- [23864] LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf
- [23865] LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf
- [23866] LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf
- [23867] LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf
- [23868] EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf
- [23869] EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf
- [23870] TempoOFTWrapper-OtterSec-16Feb2026.pdf
- [23871] TempoOFTWrapper-Paladin-10Feb2026.pdf
- [23872] HyperLiquid_Composer-Paladin-9MAY2025.pdf
- [23873] LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf
- [23874] LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf
- [23875] LZ-Multicall_OtterSec_Dec-30th-2025.pdf
- [23876] LZ-Multicall_Paladin_Jan-16th-2026.pdf
- [23877] LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf
- [23878] LZ-OApp&OFT_Zellic_Sep-23-2025.pdf
- [23879] OApp&OFT-Zellic-12JUN2024.pdf
- [23880] OFT-OAPP-ChainSecurity-30JAN2024.pdf
- [23881] UpgradeableOapp&OFT-Hexens-01NOV2024.pdf
- [23882] Solana-Example-Review_Zellic_Dec-17-2025.pdf
- [23883] Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf
- [23884] TON_OFT-Ottersec-23May2025.pdf
- [23885] TON_OFT-Zellic-19May2025.pdf
- [23886] RateLimiter-Hexens-MAY2024.pdf
- [23887] RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf
- [23888] RateLimiterFlows-Pashov-20SEPT2024.pdf
- [23889] ONFT721_Paladin_10AUG2024.pdf
- [23890] LZ_OVault-Composer_Paladin_Oct-23-25.pdf
- [23891] LZ_OVault-Yield.xyz_19-Nov-25.pdf
- [23892] LZ_OVault_Ottersec_Jul-16-25.pdf
- [23893] LZ_OVault_Paladin_Aug-06-25.pdf
- [23894] AptosZROAirdrop-Paladin-17JUN2024.pdf
- [23895] ZROClaim-Paladin-18JUN2024.pdf
- [23896] ZROClaim-Pashov-17JUN2024.pdf
- [23897] ZROclaim-hexens-23JUN2024.pdf
- [23898] VeDistributor_Paladin_09-Sep-2025.pdf
- [23899] VeDistributor_Zellic_08-Sep-2025.pdf

Fork inheritance lineage and inherited audits are included when available.
