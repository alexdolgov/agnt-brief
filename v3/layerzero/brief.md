# Agentic Audit Brief: LayerZero

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 99 (0 matched; 99 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: LayerZero (`layerzero`)
- Website: [https://layerzero.network/](https://layerzero.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 10 unique implementations (10 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,318,061,686.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LayerZero. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x72faeb...3ea294`, chain 1)
- UnnamedContract (`0xacddac...9c05f1`, chain 1)
- UnnamedContract (`0x5528cf...12bde3`, chain 10)
- UnnamedContract (`0xfbea79...1c7b03`, chain 10)
- UnnamedContract (`0x7e07a9...95ff1f`, chain 8453)
- UnnamedContract (`0x8eca03...dcb4f8`, chain 8453)
- UnnamedContract (`0x8e60b7...19286e`, chain 42161)
- TransferDelegate (`0x60fccb...609de4`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 8 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 94 (94 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 31 fresh, 17 aging, 45 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LayerZeroToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698588...3271cd` | ⚠️ Unaudited |
| LZMultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5528cf...12bde3` | ⚠️ Unaudited |
| TransferDelegate | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244540 | `0x60fccb...609de4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244536 | `0x72faeb...3ea294` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244537 | `0xacddac...9c05f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244538 | `0x5528cf...12bde3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244539 | `0xfbea79...1c7b03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244542 | `0x7e07a9...95ff1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244543 | `0x8eca03...dcb4f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244541 | `0x8e60b7...19286e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DVN-OtterSec-12SEPT2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-OtterSec-12SEPT2023.pdf) | OtterSec | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [DVN-Paladin-11JUN2026-Diff.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Paladin-11JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [DVN-Paladin-26AUG2023-Initial.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Paladin-26AUG2023-Initial.pdf) | Paladin | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [DVN-Zellic-25AUG2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Zellic-25AUG2023.pdf) | Zellic | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [DVN1.0-Zellic-14MAR2024.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN1.0-Zellic-14MAR2024.pdf) | Zellic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Gasolina-OtterSec-10DEC2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/Gasolina/Gasolina-OtterSec-10DEC2025.pdf) | OtterSec | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Ottersec_Sep-18-25.pdf) | Ottersec | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Zellic_Sep-25-25.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [EndpointV1-Ackee-15MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Ackee-15MAR2022.pdf) | Ackee Blockchain | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [EndpointV1-Certora-28JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Certora-28JUL2022.pdf) | Certora | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [EndpointV1-SlowMist-15MAR2022Audit.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-SlowMist-15MAR2022Audit.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [EndpointV1-Zellic-03JUN2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zellic-03JUN2022.pdf) | Zellic | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [EndpointV1-Zokyo-22OCT2021.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zokyo-22OCT2021.pdf) | Zokyo | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [EndpointV1-proof-lib-Ackee-11MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-proof-lib-Ackee-11MAR2022.pdf) | Ackee Blockchain | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [UltraLightNodeV2Radar-Zellic-22NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/UltraLightNodeV2Radar-Zellic-22NOV2022.pdf) | Zellic | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf) | Paladin | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf) | Zellic | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [LzApp&Token-Ackee-03MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/LzApp%26Token-Ackee-03MAY2022.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [NativeOFTV2-Zellic-16JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTV2-Zellic-16JUN2023.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NativeOFTWithFee-Zellic-30JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTWithFee-Zellic-30JUN2023.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SolidityExample-Ackee-27JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExample-Ackee-27JUL2022.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [SolidityExamples-Ackee-10OCT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-10OCT2022.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [SolidityExamples-Ackee-14NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-14NOV2022.pdf) | Ackee Blockchain | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [SolidityExamples-Ottersec-21MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-21MAR2023.pdf) | Ottersec | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [SolidityExamples-Ottersec-24JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-24JAN2023.pdf) | Ottersec | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [SolidityExamples-Ottersec-27APR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-27APR2023.pdf) | Ottersec | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SolidityExamples-Zellic-21MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Zellic-21MAY2022.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf) | Ackee Blockchain | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SolidityExamplesONFT-Zellic-19JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesONFT-Zellic-19JAN2023.pdf) | Zellic | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [AptosBridge-Ottersec-30SEPT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/AptosBridge-Ottersec-30SEPT2022.pdf) | Ottersec | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WrappedAssetBridge-Zellic-28FEB2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridge-Zellic-28FEB2023.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [WrappedAssetBridgeV2-Hexens-AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Hexens-AUG2024.pdf) | Hexens | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf) | Ottersec | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf) | OtterSec | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 60 | high |
| [EndpointV2-Blockian-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Blockian-13DEC2023.pdf) | Blockian | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [EndpointV2-CMichel-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-CMichel-13DEC2023.pdf) | CMichel | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [EndpointV2-Certora-DEDC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Certora-DEDC2023.pdf) | Certora | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [EndpointV2-Ottersec-14DEC2023-Updated.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Ottersec-14DEC2023-Updated.pdf) | Ottersec | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 68 | high |
| [EndpointV2-Paladin-11JUN2026-Diff.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Paladin-11JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [EndpointV2-Paladin-15DEC2023-Initial.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Paladin-15DEC2023-Initial.pdf) | Paladin | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [EndpointV2-Windhustler-15DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Windhustler-15DEC2023.pdf) | Windhustler | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [EndpointV2-Zellic-13DEC2023-Updated.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Zellic-13DEC2023-Updated.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 36 | high |
| [MessageLib-Paladin-11JUN2026-Diff.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/MessageLib-Paladin-11JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [MessageLib-Paladin-15DEC2023-Initial.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/MessageLib-Paladin-15DEC2023-Initial.pdf) | Paladin | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [PriceFeed-OtterSec-26JUN2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/PriceFeed-OtterSec-26JUN2026.pdf) | OtterSec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [lzRead-Paladin-14NOV2024-Initial.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Paladin-14NOV2024-Initial.pdf) | Paladin | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [lzRead-Paladin-23JUN2026-Diff.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Paladin-23JUN2026-Diff.pdf) | Paladin | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [lzRead-Sec3-12NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Sec3-12NOV2024.pdf) | Sec3 | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [lzRead-Zellic-25OCT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/lzRead%20MessageLib%20and%20DVN/lzRead-Zellic-25OCT2024.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20IOTA%20L1/LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf) | OtterSec | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LZ-Receive-Types_OtterSec_July-12-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/LZ-Receive-Types_OtterSec_July-12-2025.pdf) | OtterSec | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SolanaEndPoint-Pashov-28MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndPoint-Pashov-28MAY2024.pdf) | Pashov Audit Group | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [SolanaEndpoint-Halborn-24MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Halborn-24MAY2024.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [SolanaEndpoint-Ottersec-07JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Ottersec-07JUN2024.pdf) | OtterSec | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf) | OtterSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [LZ-V2_Starknet_Zellic_30_Sept_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_Zellic_30_Sept_2025.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf) | OtterSec | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf) | UNH-IOL | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf) | OtterSec | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/StargateV2%20Variants%20-%20EndpointV2Alt/EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf) | OtterSec | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/StargateV2%20Variants%20-%20EndpointV2Alt/EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [TempoOFTWrapper-OtterSec-16Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-OtterSec-16Feb2026.pdf) | OtterSec | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [TempoOFTWrapper-Paladin-10Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-Paladin-10Feb2026.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [HyperLiquid_Composer-Paladin-9MAY2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/HyperLiquid_Composer-Paladin-9MAY2025.pdf) | Paladin | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf) | OtterSec | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [LZ-Multicall_OtterSec_Dec-30th-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_OtterSec_Dec-30th-2025.pdf) | OtterSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [LZ-Multicall_Paladin_Jan-16th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_Paladin_Jan-16th-2026.pdf) | Paladin | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf) | UNH-IOL | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [LZ-OApp&OFT_Zellic_Sep-23-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/LZ-OApp%26OFT_Zellic_Sep-23-2025.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [OApp&OFT-Zellic-12JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OApp%26OFT-Zellic-12JUN2024.pdf) | Zellic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [OFT-OAPP-ChainSecurity-30JAN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OFT-OAPP-ChainSecurity-30JAN2024.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [UpgradeableOapp&OFT-Hexens-01NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/UpgradeableOapp%26OFT-Hexens-01NOV2024.pdf) | Hexens | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Solana-Example-Review_Zellic_Dec-17-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-Example-Review_Zellic_Dec-17-2025.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf) | Zellic | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Ottersec-23May2025.pdf) | Ottersec | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [RateLimiter-Hexens-MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiter-Hexens-MAY2024.pdf) | Hexens | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Hexens-OCT2024oct24%20(1).pdf) | Hexens | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [RateLimiterFlows-Pashov-20SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Pashov-20SEPT2024.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ONFT721_Paladin_10AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ONFT/ONFT721_Paladin_10AUG2024.pdf) | Paladin | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [LZ_OVault-Composer_Paladin_Oct-23-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Composer_Paladin_Oct-23-25.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [LZ_OVault-Yield.xyz_19-Nov-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Yield.xyz_19-Nov-25.pdf) | Yield.xyz | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [LZ_OVault_Ottersec_Jul-16-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Ottersec_Jul-16-25.pdf) | Ottersec | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LZ_OVault_Paladin_Aug-06-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Paladin_Aug-06-25.pdf) | Paladin | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [AptosZROAirdrop-Paladin-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/Aptos%20ZRO%20Airdrop/AptosZROAirdrop-Paladin-17JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ZROClaim-Paladin-18JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Paladin-18JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [ZROClaim-Pashov-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Pashov-17JUN2024.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [ZROclaim-hexens-23JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROclaim-hexens-23JUN2024.pdf) | Hexens | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [VeDistributor_Paladin_09-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Paladin_09-Sep-2025.pdf) | Paladin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [VeDistributor_Zellic_08-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Zellic_08-Sep-2025.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [23801] DVN-OtterSec-12SEPT2023.pdf — no match: Scope section explicitly lists VerifierNetwork. Other contracts are referenced in findings.
- [23802] DVN-Paladin-11JUN2026-Diff.pdf — no match: Scope section explicitly lists three contracts (VerifierNetwork/DVN, Worker, MultiSig) and rename mapping includes DVNFeeLib. Audit date from cover page.
- [23803] DVN-Paladin-26AUG2023-Initial.pdf — no match: Three contracts explicitly listed in 'Contracts Assessed' table on page 5. Audit date from cover page: '26 August 2023'.
- [23804] DVN-Zellic-25AUG2023.pdf — no match: Only one contract in scope: VerifierNetwork.sol
- [23805] DVN1.0-Zellic-14MAR2024.pdf — no match: Two contracts in scope: AxelarDVNAdapter and CCIPDVNAdapter. Audit date from cover page.
- [23806] Gasolina-OtterSec-10DEC2025.pdf — no match: The audit scope describes the 'gasolina' program as an offchain oracle, not smart contracts. No contract names, source files, or modules are listed in scope. The report focuses on off-chain code (TypeScript) and does not include any on-chain contracts.
- [23807] LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf — no match: Only one contract (LayerZeroSlasher) is explicitly referenced in the findings. The scope section describes the program 'eigen-dvn' but does not list individual contracts. The file path is inferred from the finding code snippets.
- [23808] LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf — no match: Two contracts in scope: LayerZeroSlasher.sol and LayerZeroAVSRegistrar.sol, both under contracts/src/eigenlayer/. Audit date is September 25, 2025.
- [23809] EndpointV1-Ackee-15MAR2022.pdf — no match: Extracted 10 contracts from the System Overview section. Audit date from cover page and revision history.
- [23810] EndpointV1-Certora-28JUL2022.pdf — no match: Only one contract, Endpoint.sol, is in scope.
- [23811] EndpointV1-SlowMist-15MAR2022Audit.pdf — no match: Contracts extracted from visibility descriptions and vulnerability references. Audit date from audit result table: 2022.02.21 - 2022.02.28, using end date.
- [23812] EndpointV1-Zellic-03JUN2022.pdf — no match: Scope section explicitly lists 8 contracts. Audit date from cover page.
- [23813] EndpointV1-Zokyo-22OCT2021.pdf — no match: The PDF content was not fully parsed; only metadata from the filename and title was available. The audit appears to cover the Endpoint V1 contract.
- [23814] EndpointV1-proof-lib-Ackee-11MAR2022.pdf — no match: Scope includes MPTValidator contract, Buffer, RLPDecode, UltraLightNodeEVMDecoder, and LayerZeroPacket libraries. Audit date from document revision 1.1 dated 11 Mar 2022.
- [23815] UltraLightNodeV2Radar-Zellic-22NOV2022.pdf — no match: Only one contract in scope: UltraLightNodeV2Radar. ULNv2 and dappRadar are mentioned as context but not separate contracts in scope.
- [23816] OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf — no match: Two contracts explicitly listed in scope table and assessed in findings.
- [23817] OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf — no match: Two contracts explicitly listed in scope: OmnichainGovernanceExecutor and OmnichainProposalSender. Audit date from cover page.
- [23818] LzApp&Token-Ackee-03MAY2022.pdf — no match: Extracted 15 contract names from the scope description (Section 4.1) and the repository path. Audit date is from the document revision date (3 May 2022).
- [23819] NativeOFTV2-Zellic-16JUN2023.pdf — no match: Only one contract, NativeOFTV2, is in scope. Audit date is June 16, 2023 from the cover page.
- [23820] NativeOFTWithFee-Zellic-30JUN2023.pdf — no match: Scope section lists NativeOFTWithFee, OFTWithFee, BaseOFTWithFee, Fee. Audit date from cover page.
- [23821] SolidityExample-Ackee-27JUL2022.pdf — no match: Extracted contract names from System Overview section and findings targets. Audit date from cover page and Appendix A.
- [23822] SolidityExamples-Ackee-10OCT2022.pdf — no match: Extracted contracts from scope sections 5.1 and 6.1, including upgradeable and composable variants.
- [23823] SolidityExamples-Ackee-14NOV2022.pdf — no match: Scope explicitly lists four files: DistributeONFT721, BitLib.sol, ONFT721A.sol, WrappedOFT.sol. Additional contracts (LzApp, NonblockingLzApp, ONFT721ACore) are described in system overview and are part of the audited codebase. Audit date is November 14, 2022 (end date of audit period).
- [23824] SolidityExamples-Ottersec-21MAR2023.pdf — no match: Scope section mentions 'solidity-examples' repository but no specific contract names. Contract names extracted from findings: Fee.sol and LzAppUpgradeable.sol. Audit date inferred from 'starting November 11th' and report year 2022; assumed end of November.
- [23825] SolidityExamples-Ottersec-24JAN2023.pdf — no match: Scope section describes 'solidity-examples' repository but does not list individual contracts. Contracts OFT and Fee are referenced in findings.
- [23826] SolidityExamples-Ottersec-27APR2023.pdf — no match: Scope section describes 'solidity-examples' repository but does not list individual contracts. Contract names extracted from findings.
- [23827] SolidityExamples-Zellic-21MAY2022.pdf — no match: Extracted contract names from the scope section of the audit report. The audit date is from the cover page.
- [23828] SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf — no match: Contracts in scope are explicitly listed in System Overview section (page 8) and referenced in findings. NativeOFT is the renamed version of NativeProxyOFT20.
- [23829] SolidityExamplesONFT-Zellic-19JAN2023.pdf — no match: Scope section lists four contracts: ONFT721, ONFT721Core, UniversalONFT721, ProxyONFT721. Audit date from title page.
- [23830] AptosBridge-Ottersec-30SEPT2022.pdf — no match: Scope section lists two programs: endpoint and bridge. Additional files like channel.move, executor.move, oracle.move, counter.move, packet.move are mentioned in findings but not explicitly listed in scope.
- [23831] WrappedAssetBridge-Zellic-28FEB2023.pdf — no match: Scope section lists four contracts: OriginalTokenBridge, TokenBridgeBase, WrappedERC20, WrappedTokenBridge. Audit date from cover page: February 28, 2023.
- [23832] WrappedAssetBridgeV2-Hexens-AUG2024.pdf — no match: The report explicitly states 'four smart contracts' in scope and names them in findings: WOFT, WOFTFactory, WOFTAdapter, WOFTAdapterFactory.
- [23833] WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf — no match: The scope section describes the repository and commit but does not list specific contract names or file paths. The only contract mentioned in findings is 'isPending' which is a variable, not a contract. No contract names could be extracted.
- [23834] LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf — no match: Extracted contract names from scope table and findings. Audit date from cover page.
- [23835] LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf — no match: All contracts listed in the 'Contracts Assessed' table (pages 12-15) and detailed in findings sections. Audit date from cover page: '14 Jan 2025'.
- [23841] EndpointV2-Blockian-13DEC2023.pdf — no match: Scope defined as layerzero-v2/evm/protocol/contracts/** and layerzero-v2/evm/messagelib/contracts/**; extracted contract names from findings and file paths. No audit date found in the report text.
- [23842] EndpointV2-CMichel-13DEC2023.pdf — no match: All contracts listed in the scope table of the audit report are included. The audit date is explicitly stated on the cover page.
- [23843] EndpointV2-Certora-DEDC2023.pdf — no match: Extracted 24 contract names from the scope section and formal verification sections. The audit date is December 2023, interpreted as 2023-12-31.
- [23844] EndpointV2-Ottersec-14DEC2023-Updated.pdf — no match: Extracted all contracts from the 'Contracts List' sections (pages 4-6) and VerifierNetwork from findings. Audit date from executive summary: 'conducted between July 14th and August 3rd, 2023' -> end date 2023-08-03.
- [23845] EndpointV2-Paladin-11JUN2026-Diff.pdf — no match: Extracted 25 contracts from scope tables and contract verification sections. Audit date from cover page: 11 June 2026.
- [23846] EndpointV2-Paladin-15DEC2023-Initial.pdf — no match: All contracts listed in the 'Contracts Assessed' table on page 5 are in scope. The audit date is from the cover page: '15 December 2023'.
- [23847] EndpointV2-Windhustler-15DEC2023.pdf — no match: Scope includes all contracts under packages/layerzero-v2/evm/protocol/contracts/ and packages/layerzero-v2/evm/messagelib/contracts/. Specific contracts mentioned in findings are extracted.
- [23848] EndpointV2-Zellic-13DEC2023-Updated.pdf — no match: Extracted all contracts from the scope section (file paths) and additional contracts mentioned in findings (VerifierNetwork, MessagingComposer, SafeCall, UlnConfig, MultiSigUpgradeable). Audit date from cover page.
- [23849] MessageLib-Paladin-11JUN2026-Diff.pdf — no match: Extracted 26 contract names from scope sections and rename/split mapping. Audit date from cover page.
- [23850] MessageLib-Paladin-15DEC2023-Initial.pdf — no match: All 12 contracts listed in the 'Contracts Assessed' table on page 7 are in scope. Audit date is from the cover page.
- [23851] PriceFeed-OtterSec-26JUN2026.pdf — no match: Only one contract (PriceFeed) is in scope. Audit date from cover page.
- [23852] lzRead-Paladin-14NOV2024-Initial.pdf — no match: All six contracts are explicitly listed in the 'Contracts Assessed' table on page 6. The audit date is from the cover page: '15 Nov 2024'.
- [23853] lzRead-Paladin-23JUN2026-Diff.pdf — no match: Extracted contracts from scope table and diff analysis sections. Audit date from cover page (23 June 2026).
- [23854] lzRead-Sec3-12NOV2024.pdf — no match: All contracts listed in the scope section of the report were extracted. The audit date is explicitly stated as November 12, 2024.
- [23855] lzRead-Zellic-25OCT2024.pdf — no match: All contracts listed in the scope section (2.3) were extracted. The audit date is from the cover page and header.
- [23856] LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf — no match: The scope section describes the integration as 'iota' but does not list specific contract names or file paths. No individual contracts are named.
- [23857] LZ-Receive-Types_OtterSec_July-12-2025.pdf — no match: The scope section describes the program as 'lzReceiveTypes-V2' but does not list specific contract names or file paths. The only file mentioned is 'programs/executor/src/instructions/post_execute.rs' in a finding, but it is not explicitly stated as in scope. No Solidity contracts are named.
- [23858] SolanaEndPoint-Pashov-28MAY2024.pdf — no match: Scope section lists 9 program directories under packages/layerzero-v2/solana/programs/ and libs/. The audit date is the end date of the engagement: May 28th 2024.
- [23859] SolanaEndpoint-Halborn-24MAY2024.pdf — no match: The scope lists files under the 'endpoint' program. No other contract names are explicitly mentioned; the program is referred to as 'endpoint'.
- [23860] SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf — no match: Scope section lists 9 Solana programs (directories) under layerzero-v2/solana/programs/ and libs/. The audit date is July 23, 2024 from the cover page.
- [23861] SolanaEndpoint-Ottersec-07JUN2024.pdf — no match: The scope section only lists the program name 'layerzero-v2' without individual contract files. The audit date is from the cover page.
- [23862] LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf — no match: Extracted contract names from findings and file paths. The scope section describes the program as 'layerero-endpoint' but does not list individual contracts; however, findings reference specific contracts and files.
- [23863] LZ-V2_Starknet_Zellic_30_Sept_2025.pdf — no match: Extracted contracts from scope table, findings targets, and system design. Audit date from cover page.
- [23864] LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf — no match: The scope section describes the program as 'sui' (Layerzero on Sui) but does not list specific contract names or file paths. The findings reference files like contracts/message-libs/treasury/sources/treasury.move, contracts/call/sources/call_cap.move, contracts/endpoint-v2/sources/endpoint_v2.move, but these are not explicitly listed as in-scope contracts. No contract names are explicitly extracted.
- [23865] LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf — no match: All contracts listed in the 'Contracts Assessed' section (pages 8-9) and corresponding findings sections. Audit date from cover page: '07 October 2025'.
- [23866] LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf — no match: Scope table lists two files: src/interfaces/ILZEndpointDollar.sol and src/LZEndpointDollar.sol. Audit date is February 6, 2026 from the final report delivery.
- [23867] LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf — no match: Only one contract in scope: LZEndpointDollar. Audit date from cover page.
- [23868] EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf — no match: The scope section describes the program as 'stargateV2-EndpointV2Alt' which introduces ALT-endpoint variants of Stargate V2 contracts. Specific contract names were extracted from vulnerability and general findings sections.
- [23869] EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf — no match: All contracts explicitly listed in 'Contracts Assessed' section. Date found on cover page: '03 February 2026'.
- [23870] TempoOFTWrapper-OtterSec-16Feb2026.pdf — no match: Only one contract (tempoOFTWrapper) and one interface (IOFT) are in scope. No file paths provided.
- [23871] TempoOFTWrapper-Paladin-10Feb2026.pdf — no match: Two contracts explicitly listed in scope: TempoOFTWrapper.sol and ITempoOFTWrapper.sol. Audit date from cover page.
- [23872] HyperLiquid_Composer-Paladin-9MAY2025.pdf — no match: Three contracts explicitly listed in 'Contracts Assessed' table and detailed in Findings sections.
- [23873] LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf — no match: Only one program name 'hyperliquid-composer' is mentioned in scope; no individual contract files or names are listed.
- [23874] LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf — no match: Three contracts explicitly listed in 'Contracts Assessed' section. Audit date found on cover page.
- [23875] LZ-Multicall_OtterSec_Dec-30th-2025.pdf — no match: Only one contract, LZMulticall, is in scope. No file paths provided.
- [23876] LZ-Multicall_Paladin_Jan-16th-2026.pdf — no match: Two contracts explicitly listed in 'Contracts Assessed' section. Audit date from cover page.
- [23877] LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf — no match: Scope section lists 4 files: ILZMultiCall.sol, ITransferDelegate.sol, LZMultiCall.sol, TransferDelegate.sol. Audit date from cover page and review timeline end date.
- [23878] LZ-OApp&OFT_Zellic_Sep-23-2025.pdf — no match: The report covers LayerZero OApp and OFT contracts. No specific file paths or addresses provided. Audit date is September 23, 2025 from the cover page.
- [23879] OApp&OFT-Zellic-12JUN2024.pdf — no match: All contracts listed in the Scope section of the report.
- [23880] OFT-OAPP-ChainSecurity-30JAN2024.pdf — no match: Extracted 12 contract names from the scope table in section 2.1. Audit date from cover page: Jan 30, 2024.
- [23881] UpgradeableOapp&OFT-Hexens-01NOV2024.pdf — no match: Audit report for LayerZero upgradeable EVM OApp/OFT contracts. Scope section mentions 'two smart contracts' but lists multiple files in findings. All contracts with file paths in findings are included.
- [23882] Solana-Example-Review_Zellic_Dec-17-2025.pdf — no match: Scope lists three example programs under Solana Examples; no individual .sol files mentioned.
- [23883] Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf — no match: Scope section lists contracts/**.sol and programs/my_oapp/src/**.rs. The Solidity contract is MyOApp.sol and the Solana program is ExampleOApp (from file paths and threat model).
- [23884] TON_OFT-Ottersec-23May2025.pdf — no match: Scope section explicitly lists three contracts: BamOFT, Token, TokenAdmin. Audit date is May 23rd, 2025 from the cover page.
- [23885] TON_OFT-Zellic-19May2025.pdf — no match: The scope section lists a diff file (diff_output3.diff) and mentions 'TON OFT Files' but does not name specific contracts. The only file referenced in findings is 'TokenAdmin/storage.fc', but it is not explicitly listed as a scoped target. No contract names are identifiable.
- [23886] RateLimiter-Hexens-MAY2024.pdf — no match: Scope section mentions 'OFT Rate Limiter smart contracts' but does not list individual files. Contract names extracted from findings paths.
- [23887] RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf — no match: Only one contract in scope: RateLimiter from LayerZero devtools repository.
- [23888] RateLimiterFlows-Pashov-20SEPT2024.pdf — no match: Only one contract, RateLimiter, is explicitly in scope. The audit date is the end date of the engagement (September 18th - September 19th).
- [23889] ONFT721_Paladin_10AUG2024.pdf — no match: All five contracts are explicitly listed in the 'Contracts Assessed' table and have dedicated findings sections.
- [23890] LZ_OVault-Composer_Paladin_Oct-23-25.pdf — no match: Two contracts explicitly listed in scope: VaultComposerSync and VaultComposerSyncNative. Audit date found on cover page.
- [23891] LZ_OVault-Yield.xyz_19-Nov-25.pdf — no match: Two contracts explicitly listed in 'Contracts Assessed' section. Audit date from cover page.
- [23892] LZ_OVault_Ottersec_Jul-16-25.pdf — no match: The scope section describes the program 'ovault' but does not list specific contract names or file paths. No contract names are explicitly mentioned as being in scope.
- [23893] LZ_OVault_Paladin_Aug-06-25.pdf — no match: Only one contract, VaultComposerSync, is in scope. Audit date found on cover page: '06 August 2025'.
- [23894] AptosZROAirdrop-Paladin-17JUN2024.pdf — no match: Two contracts in scope: airdrop_zro (Aptos Move) and AptosAirdropZRO (Ethereum Solidity). Audit date from cover page.
- [23895] ZROClaim-Paladin-18JUN2024.pdf — no match: All seven contracts listed in the 'Contracts Assessed' table are in scope.
- [23896] ZROClaim-Pashov-17JUN2024.pdf — no match: Scope section lists ZROClaimCore, ZROClaimHub, ZROClaimSpoke, IZROCLaim. Additional contracts (DonateRemote, DonateCore, DonateLocal, ClaimLocal, ClaimRemote) are mentioned in findings and are part of the audited codebase.
- [23897] ZROclaim-hexens-23JUN2024.pdf — no match: Extracted 6 contracts from scope and findings sections. Audit date from 'delivered 18.06.2024'.
- [23898] VeDistributor_Paladin_09-Sep-2025.pdf — no match: Three contracts explicitly listed in the 'Contracts Assessed' table on page 4. Audit date found on cover page: '09 September 2025'.
- [23899] VeDistributor_Zellic_08-Sep-2025.pdf — no match: Scope section explicitly lists VeDistributor.sol, interfaces/IVeDistributor.sol, and interfaces/IVotingEscrow.sol. Audit date is September 8, 2025 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DVN-OtterSec-12SEPT2023.pdf | VerifierNetwork | unmatched — not counted | — | listed in scope section and findings | no |
| DVN-OtterSec-12SEPT2023.pdf | UlnBase | unmatched — not counted | — | mentioned in finding OS-LZ-SUG-00 | no |
| DVN-OtterSec-12SEPT2023.pdf | IUltraLightNode | unmatched — not counted | — | interface referenced in VerifierNetwork.sol and UlnBase.sol | no |
| DVN-OtterSec-12SEPT2023.pdf | ILayerZeroUltraLightNodeV2 | unmatched — not counted | — | interface referenced in VerifierNetwork.sol | no |
| DVN-Paladin-11JUN2026-Diff.pdf | DVN | unmatched — not counted | — | listed in scope table and rename mapping | no |
| DVN-Paladin-11JUN2026-Diff.pdf | Worker | unmatched — not counted | — | listed in scope table | no |
| DVN-Paladin-11JUN2026-Diff.pdf | MultiSig | unmatched — not counted | — | listed in scope table | no |
| DVN-Paladin-11JUN2026-Diff.pdf | DVNFeeLib | unmatched — not counted | — | listed in scope table | no |
| DVN-Paladin-11JUN2026-Diff.pdf | IDVN | unmatched — not counted | — | rename mapping | no |
| DVN-Paladin-11JUN2026-Diff.pdf | IDVNFeeLib | unmatched — not counted | — | rename mapping | no |
| DVN-Paladin-11JUN2026-Diff.pdf | ILayerZeroDVN | unmatched — not counted | — | rename mapping | no |
| DVN-Paladin-11JUN2026-Diff.pdf | IReceiveUlnE2 | unmatched — not counted | — | rename mapping | no |
| DVN-Paladin-11JUN2026-Diff.pdf | DVNOptions | unmatched — not counted | — | rename mapping | no |
| DVN-Paladin-26AUG2023-Initial.pdf | VerifierNetwork | unmatched — not counted | — | Listed in 'Contracts Assessed' table and detailed in findings section 2.1 | no |
| DVN-Paladin-26AUG2023-Initial.pdf | Worker | unmatched — not counted | — | Listed in 'Contracts Assessed' table and detailed in findings section 2.2 | no |
| DVN-Paladin-26AUG2023-Initial.pdf | MultiSig | unmatched — not counted | — | Listed in 'Contracts Assessed' table and detailed in findings section 2.3 | no |
| DVN-Zellic-25AUG2023.pdf | VerifierNetwork | unmatched — not counted | — | listed in scope table | no |
| DVN1.0-Zellic-14MAR2024.pdf | AxelarDVNAdapter | unmatched — not counted | — | listed in scope table | no |
| DVN1.0-Zellic-14MAR2024.pdf | CCIPDVNAdapter | unmatched — not counted | — | listed in scope table | no |
| LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf | LayerZeroSlasher | unmatched — not counted | — | mentioned in findings and scope description | no |
| LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf | LayerZeroSlasher | unmatched — not counted | — | Scope section lists 'Programs contracts/src/eigenlayer/*.sol' and threat model covers LayerZeroSlasher.sol | no |
| LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf | LayerZeroAVSRegistrar | unmatched — not counted | — | Scope section lists 'Programs contracts/src/eigenlayer/*.sol' and threat model covers LayerZeroAVSRegistrar.sol | no |
| EndpointV1-Ackee-15MAR2022.pdf | Endpoint | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | Relayer | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | RelayerWithdraw | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | Treasury | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | UltraLightNode | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | ChainlinkOracleClient | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | Buffer | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | EVMValidator | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | LayerZeroPacket | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Ackee-15MAR2022.pdf | Decoder | unmatched — not counted | — | described in section 4.1 Contracts | no |
| EndpointV1-Certora-28JUL2022.pdf | Endpoint | unmatched — not counted | — | The scope of our verification was the Endpoint.sol contract. | no |
| EndpointV1-SlowMist-15MAR2022Audit.pdf | ChainlinkOracleClient | unmatched — not counted | — | listed in scope and visibility description | no |
| EndpointV1-SlowMist-15MAR2022Audit.pdf | Endpoint | unmatched — not counted | — | listed in scope and visibility description | no |
| EndpointV1-SlowMist-15MAR2022Audit.pdf | Relayer | unmatched — not counted | — | listed in scope and visibility description | no |
| EndpointV1-SlowMist-15MAR2022Audit.pdf | RelayerWithdraw | unmatched — not counted | — | listed in scope and visibility description | no |
| EndpointV1-SlowMist-15MAR2022Audit.pdf | UltraLightNode | unmatched — not counted | — | listed in scope and visibility description | no |
| EndpointV1-SlowMist-15MAR2022Audit.pdf | Treasury | unmatched — not counted | — | listed in scope and visibility description | no |
| EndpointV1-Zellic-03JUN2022.pdf | UltraLightNodeV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | TreasuryV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | RelayerV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | NonceContract | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | EndpointLite | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | LayerZeroPacket | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | MPTValidator01 | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zellic-03JUN2022.pdf | FPValidator | unmatched — not counted | — | listed in scope table | no |
| EndpointV1-Zokyo-22OCT2021.pdf | Endpoint | unmatched — not counted | — | Audit title 'Endpoint V1 - EVM' and filename 'EndpointV1-Zokyo-22OCT2021.pdf' indicate the Endpoint contract is in scope. | no |
| EndpointV1-proof-lib-Ackee-11MAR2022.pdf | MPTValidator | unmatched — not counted | — | listed in scope section | no |
| EndpointV1-proof-lib-Ackee-11MAR2022.pdf | Buffer | unmatched — not counted | — | listed in scope section | no |
| EndpointV1-proof-lib-Ackee-11MAR2022.pdf | RLPDecode | unmatched — not counted | — | listed in scope section | no |
| EndpointV1-proof-lib-Ackee-11MAR2022.pdf | UltraLightNodeEVMDecoder | unmatched — not counted | — | listed in scope section | no |
| EndpointV1-proof-lib-Ackee-11MAR2022.pdf | LayerZeroPacket | unmatched — not counted | — | listed in scope section | no |
| UltraLightNodeV2Radar-Zellic-22NOV2022.pdf | UltraLightNodeV2Radar | unmatched — not counted | — | listed in scope table | no |
| OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf | OmnichainProposalSender | unmatched — not counted | — | listed in scope table and findings sections | no |
| OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf | OmnichainGovernanceExecutor | unmatched — not counted | — | listed in scope table and findings sections | no |
| OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf | OmnichainGovernanceExecutor | unmatched — not counted | — | listed in scope section | no |
| OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf | OmnichainProposalSender | unmatched — not counted | — | listed in scope section | no |
| LzApp&Token-Ackee-03MAY2022.pdf | LzApp | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | BasedOFT | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | PausableOFT | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ProxyOFT | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | OFT | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ProxyONFT721 | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ProxyONFT1155 | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | UniversalONFT721 | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ONFT721 | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ONFT1155 | unmatched — not counted | — | listed in scope and described in System Overview | no |
| LzApp&Token-Ackee-03MAY2022.pdf | GlobalCappedOFT | unmatched — not counted | — | listed in scope and described in System Overview (Revision 1.1) | no |
| LzApp&Token-Ackee-03MAY2022.pdf | OFTCore | unmatched — not counted | — | listed in scope and described in System Overview (Revision 1.1) | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ONFT721Core | unmatched — not counted | — | listed in scope and described in System Overview (Revision 1.1) | no |
| LzApp&Token-Ackee-03MAY2022.pdf | ONFT1155Core | unmatched — not counted | — | listed in scope and described in System Overview (Revision 1.1) | no |
| NativeOFTV2-Zellic-16JUN2023.pdf | NativeOFTV2 | unmatched — not counted | — | listed in scope and threat model section | no |
| NativeOFTWithFee-Zellic-30JUN2023.pdf | NativeOFTWithFee | unmatched — not counted | — | listed in scope | no |
| NativeOFTWithFee-Zellic-30JUN2023.pdf | OFTWithFee | unmatched — not counted | — | listed in scope | no |
| NativeOFTWithFee-Zellic-30JUN2023.pdf | BaseOFTWithFee | unmatched — not counted | — | listed in scope | no |
| NativeOFTWithFee-Zellic-30JUN2023.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| SolidityExample-Ackee-27JUL2022.pdf | LzApp | unmatched — not counted | — | described in System Overview and targeted in findings | no |
| SolidityExample-Ackee-27JUL2022.pdf | NonblockingLzApp | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | OFT20 | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | OFT20Core | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | BasedOFT20 | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | GlobalCappedOFT20 | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | PausableOFT20 | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | ProxyOFT20 | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | ONFT721Core | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | ONFT721 | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | ONFT1155Core | unmatched — not counted | — | described in System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | LzAppUpgradeable | unmatched — not counted | — | mentioned in findings and System Overview | no |
| SolidityExample-Ackee-27JUL2022.pdf | ONFT721Upgradeable | unmatched — not counted | — | mentioned in System Overview | no |
| SolidityExamples-Ackee-10OCT2022.pdf | LzApp | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | OFT20 | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | OFT20Core | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | BasedOFT20 | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | GlobalCappedOFT20 | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | PausableOFT20 | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ProxyOFT20 | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ONFT721Core | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ONFT721 | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ONFT1155Core | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | LzAppUpgradeable | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | OFTCoreUpgradeable | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | NonblockingLzAppUpgradeable | unmatched — not counted | — | listed in scope section 5.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ComposableBasedOFT | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ComposableOFT | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ComposableOFTCore | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | UniversalONFT721 | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | ExcessivelySafeCall | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | BytesLib | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-10OCT2022.pdf | NativeOFT | unmatched — not counted | — | listed in scope section 6.1 | no |
| SolidityExamples-Ackee-14NOV2022.pdf | DistributeONFT721 | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Ackee-14NOV2022.pdf | BitLib | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Ackee-14NOV2022.pdf | ONFT721A | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Ackee-14NOV2022.pdf | WrappedOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Ackee-14NOV2022.pdf | LzApp | unmatched — not counted | — | mentioned in system overview and findings | no |
| SolidityExamples-Ackee-14NOV2022.pdf | NonblockingLzApp | unmatched — not counted | — | mentioned in system overview and findings | no |
| SolidityExamples-Ackee-14NOV2022.pdf | ONFT721ACore | unmatched — not counted | — | mentioned in system overview | no |
| SolidityExamples-Ottersec-21MAR2023.pdf | Fee | unmatched — not counted | — | mentioned in finding OS-LZR-SUG-01 | no |
| SolidityExamples-Ottersec-21MAR2023.pdf | LzAppUpgradeable | unmatched — not counted | — | mentioned in findings OS-LZR-SUG-02, OS-LZR-SUG-03, OS-LZR-SUG-04 | no |
| SolidityExamples-Ottersec-24JAN2023.pdf | OFT | unmatched — not counted | — | mentioned in finding OS-LZR-SUG-00 as OFT payload | no |
| SolidityExamples-Ottersec-24JAN2023.pdf | Fee | unmatched — not counted | — | mentioned in finding OS-LZR-SUG-01 as Fee.sol contract | no |
| SolidityExamples-Ottersec-27APR2023.pdf | Fee | unmatched — not counted | — | mentioned in finding OS-LZR-SUG-01 | no |
| SolidityExamples-Ottersec-27APR2023.pdf | LzAppUpgradeable | unmatched — not counted | — | mentioned in findings OS-LZR-SUG-02, OS-LZR-SUG-03, OS-LZR-SUG-04 | no |
| SolidityExamples-Ottersec-27APR2023.pdf | ONFT721Core | unmatched — not counted | — | mentioned in finding OS-LZR-SUG-05 | no |
| SolidityExamples-Ottersec-27APR2023.pdf | DistributedONFT721 | unmatched — not counted | — | mentioned in findings OS-LZR-SUG-05, OS-LZR-SUG-06 | no |
| SolidityExamples-Ottersec-27APR2023.pdf | ONFT721 | unmatched — not counted | — | mentioned in finding OS-LZR-SUG-06 as base contract | no |
| SolidityExamples-Zellic-21MAY2022.pdf | BasedOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | GlobalCappedOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | LzApp | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | OFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | OFTCore | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ONFT1155 | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ONFT1155Core | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ONFT721 | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ONFT721Core | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | PausableOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ProxyOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ProxyONFT1155 | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ProxyONFT721 | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | UniversalONFT721 | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ComposableOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ComposableProxyOFT | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ComposableOFTCore | unmatched — not counted | — | listed in scope | no |
| SolidityExamples-Zellic-21MAY2022.pdf | ExcessivelySafeCall | unmatched — not counted | — | listed in scope | no |
| SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf | LzApp | unmatched — not counted | — | listed in System Overview and findings | no |
| SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf | NonblockingLzApp | unmatched — not counted | — | listed in System Overview and findings | no |
| SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf | NativeProxyOFT20 | unmatched — not counted | — | listed in System Overview and findings | no |
| SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf | NativeOFT | unmatched — not counted | — | mentioned as renamed contract in Executive Summary | no |
| SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf | Ownable | unmatched — not counted | — | mentioned in finding L1 | no |
| SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf | ERC165 | unmatched — not counted | — | mentioned in finding L2 | no |
| SolidityExamplesONFT-Zellic-19JAN2023.pdf | ONFT721 | unmatched — not counted | — | listed in scope | no |
| SolidityExamplesONFT-Zellic-19JAN2023.pdf | ONFT721Core | unmatched — not counted | — | listed in scope | no |
| SolidityExamplesONFT-Zellic-19JAN2023.pdf | UniversalONFT721 | unmatched — not counted | — | listed in scope | no |
| SolidityExamplesONFT-Zellic-19JAN2023.pdf | ProxyONFT721 | unmatched — not counted | — | listed in scope | no |
| AptosBridge-Ottersec-30SEPT2022.pdf | endpoint | unmatched — not counted | — | listed in scope as 'endpoint' program | no |
| AptosBridge-Ottersec-30SEPT2022.pdf | bridge | unmatched — not counted | — | listed in scope as 'bridge' program | no |
| WrappedAssetBridge-Zellic-28FEB2023.pdf | OriginalTokenBridge | unmatched — not counted | — | listed in scope section | no |
| WrappedAssetBridge-Zellic-28FEB2023.pdf | TokenBridgeBase | unmatched — not counted | — | listed in scope section | no |
| WrappedAssetBridge-Zellic-28FEB2023.pdf | WrappedERC20 | unmatched — not counted | — | listed in scope section | no |
| WrappedAssetBridge-Zellic-28FEB2023.pdf | WrappedTokenBridge | unmatched — not counted | — | listed in scope section | no |
| WrappedAssetBridgeV2-Hexens-AUG2024.pdf | WOFT | unmatched — not counted | — | listed in scope and findings | no |
| WrappedAssetBridgeV2-Hexens-AUG2024.pdf | WOFTFactory | unmatched — not counted | — | listed in scope and findings | no |
| WrappedAssetBridgeV2-Hexens-AUG2024.pdf | WOFTAdapter | unmatched — not counted | — | listed in scope and findings | no |
| WrappedAssetBridgeV2-Hexens-AUG2024.pdf | WOFTAdapterFactory | unmatched — not counted | — | listed in scope and findings | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | endpoint | unmatched — not counted | — | listed in scope table as 'Core protocol managing trustless security and flow' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | uln_302 | unmatched — not counted | — | listed in scope table as 'Manages trust flow between workers like the Executor and DVN' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | routing-layer | unmatched — not counted | — | listed in scope table as 'Handles communication with message libraries, price feed modules, and fee library modules' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | unified-price-feed | unmatched — not counted | — | listed in scope table as 'Provides a platform for publishing and retrieving prices across the ecosystem' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | unified-fee-library | unmatched — not counted | — | listed in scope table as 'Computes fees for workers including the executor and DVNs' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | treasury | unmatched — not counted | — | listed in scope table as 'Configures and manages treasury fees' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | worker-registry | unmatched — not counted | — | listed in scope table as 'It manages configuration of DVN and Executor settings' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft | unmatched — not counted | — | listed in scope table as 'A cross-chain token built on top of the LayerZero ecosystem' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft_core | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-00 as 'oft_core::receive' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft_fa | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-01 as 'oft_fa::debit_fungible_asset' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oapp_receive | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-02 as 'oapp_receive::lz_receive' | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft_coin | unmatched — not counted | — | mentioned in findings OS-LZV-ADV-03 and OS-LZV-ADV-18 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | dvn | unmatched — not counted | — | mentioned in findings OS-LZV-ADV-04, OS-LZV-ADV-06 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oapp_delegate | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-05 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | executor_options | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-08 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | executor | unmatched — not counted | — | mentioned in findings OS-LZV-ADV-14 and OS-LZV-SUG-04 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | multisig_store | unmatched — not counted | — | mentioned in findings OS-LZV-ADV-10 and OS-LZV-ADV-13 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft_impl_config | unmatched — not counted | — | mentioned in findings OS-LZV-ADV-07, OS-LZV-ADV-09, OS-LZV-SUG-09, OS-LZV-SUG-11 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft_adapter | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-11 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | counter | unmatched — not counted | — | mentioned in findings OS-LZV-SUG-00 and OS-LZV-SUG-01 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | universal_config | unmatched — not counted | — | mentioned in findings OS-LZV-ADV-16 and OS-LZV-SUG-06 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | configuration | unmatched — not counted | — | mentioned in finding OS-LZV-ADV-17 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | channels | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-03 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | packet_v1_codec | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-06 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | contract_identity | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-07 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | feeds | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-08 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oapp_core | unmatched — not counted | — | mentioned in findings OS-LZV-SUG-05 and OS-LZV-SUG-08 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | oft_v1_msg_codec | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-05 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | worker_config | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-06 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | msglib_manager | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-06 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | worker_config_store | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-06 | no |
| LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf | configs_uln | unmatched — not counted | — | mentioned in finding OS-LZV-SUG-06 | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::channels | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::store | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::timeout | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::messaging_receipt | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::msglib_manager | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::endpoint | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::admin | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::registration | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2::messaging_composer | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::assert_no_duplicates | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::bytes32 | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::config_eid_tagged | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::contract_identity | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::guid | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::packet_raw | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::packet_v1_codec | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::send_packet | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::serde | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | router_node_0::router_node | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | router_node_1::router_node | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | blocked_msglib::router_calls | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | simple_msglib::router_calls | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | simple_msglib::msglib | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | msglib_3::router_calls | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | msglib_4::router_calls | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::msglib | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::router_calls | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::admin | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::verification | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::sending | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::uln_302_store | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::configuration | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::for_each_dvn | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::assert_valid_default_uln_config | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | uln_302::assert_valid_uln_config | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | msglib_types::configs_executor | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | msglib_types::configs_uln | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | endpoint_v2_common::dvn_verify_params | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | msglib_types::worker_options | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | treasury::treasury | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | dvn_fee_lib_router_0::dvn_fee_lib_router | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | dvn_fee_lib_router_1::dvn_fee_lib_router | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | executor_fee_lib_router_0::executor_fee_lib_router | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | executor_fee_lib_router_1::executor_fee_lib_router | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | executor_fee_lib_0::executor_fee_lib | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | executor_fee_lib_0::executor_option | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | executor_fee_lib_1::executor_fee_lib | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | dvn_fee_lib_0::dvn_fee_lib | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | dvn_fee_lib_1::dvn_fee_lib | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_module_0::feeds | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_module_0::price | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_module_0::eid_model_pair | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_module_1::feeds | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_module_2::feeds | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_router_0::router | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | price_feed_router_1::router | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | worker_common::worker_config | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | worker_common::worker_config_store | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | worker_common::multisig | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf | worker_common::multisig_store | unmatched — not counted | — | listed in scope table and findings section | no |
| EndpointV2-Blockian-13DEC2023.pdf | EndpointV2 | unmatched — not counted | — | Scope section: layerzero-v2/evm/protocol/contracts/** | no |
| EndpointV2-Blockian-13DEC2023.pdf | MessageLibManager | unmatched — not counted | — | Mentioned in finding I-01 | no |
| EndpointV2-Blockian-13DEC2023.pdf | SendLibBase | unmatched — not counted | — | Mentioned in finding I-03 | no |
| EndpointV2-Blockian-13DEC2023.pdf | SendLibBaseE1 | unmatched — not counted | — | Mentioned in findings M-02 and L-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | SimpleMessageLib | unmatched — not counted | — | Mentioned in finding I-04 | no |
| EndpointV2-Blockian-13DEC2023.pdf | Treasury | unmatched — not counted | — | Mentioned in finding I-03 | no |
| EndpointV2-Blockian-13DEC2023.pdf | NonceContract | unmatched — not counted | — | Mentioned in finding M-03 | no |
| EndpointV2-Blockian-13DEC2023.pdf | ILayerZeroEndpointV2 | unmatched — not counted | — | Mentioned in finding M-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | IMessageLibE1 | unmatched — not counted | — | Mentioned in finding M-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | ILayerZeroTreasury | unmatched — not counted | — | Mentioned in finding I-03 | no |
| EndpointV2-Blockian-13DEC2023.pdf | ILayerZeroDVN | unmatched — not counted | — | Mentioned in finding M-01 | no |
| EndpointV2-Blockian-13DEC2023.pdf | UlnConfig | unmatched — not counted | — | Mentioned in findings M-01 and L-01 | no |
| EndpointV2-Blockian-13DEC2023.pdf | DVNOptions | unmatched — not counted | — | Mentioned in finding M-01 | no |
| EndpointV2-Blockian-13DEC2023.pdf | AddressCast | unmatched — not counted | — | Mentioned in finding L-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | GUID | unmatched — not counted | — | Mentioned in finding L-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | Packet | unmatched — not counted | — | Mentioned in finding L-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | Origin | unmatched — not counted | — | Mentioned in finding I-04 | no |
| EndpointV2-Blockian-13DEC2023.pdf | ExecutionState | unmatched — not counted | — | Mentioned in finding I-05 | no |
| EndpointV2-Blockian-13DEC2023.pdf | MessagingParams | unmatched — not counted | — | Mentioned in finding I-02 | no |
| EndpointV2-Blockian-13DEC2023.pdf | MessagingReceipt | unmatched — not counted | — | Mentioned in finding I-02 | no |
| EndpointV2-CMichel-13DEC2023.pdf | EndpointV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | EndpointV2Alt | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | MessageLibManager | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | MessagingComposer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | MessagingContext | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | MessagingChannel | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | GUID | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | Transfer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | AddressCast | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | CalldataBytesLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | BlockedMessageLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | SimpleMessageLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | ExecutorOptions | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | BitMaps | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | PacketV1Codec | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | IMessageLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | ILayerZeroEndpointV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | ILayerZeroComposer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | IMessagingChannel | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | ISendLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | IMessagingContext | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | IMessageLibManager | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | IMessagingComposer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-CMichel-13DEC2023.pdf | ILayerZeroReceiver | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Certora-DEDC2023.pdf | BitMaps | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | PacketV1Codec | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | BlockedMessageLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | EndpointV2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessageLibManager | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessagingChannel | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessagingComposer | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessagingContext | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessageLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | TreasuryFeeHandler | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | UltraLightNode301 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | UltraLightNode302 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | UlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | UlnConfig | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | VerifierNetwork | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessageLibBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | MessageLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | OutboundConfig | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | Worker | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | OApp | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Certora-DEDC2023.pdf | SendUln301 | unmatched — not counted | — | mentioned in formal verification section | no |
| EndpointV2-Certora-DEDC2023.pdf | ReceiveUln301 | unmatched — not counted | — | mentioned in formal verification section | no |
| EndpointV2-Certora-DEDC2023.pdf | SendUln302 | unmatched — not counted | — | mentioned in formal verification section | no |
| EndpointV2-Certora-DEDC2023.pdf | ReceiveUln302 | unmatched — not counted | — | mentioned in formal verification section | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ExecutorFeeLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | MessageLibBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | PriceFeed | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ReceiveLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SendLibBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SendLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | Worker | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IExecutorFeeLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroExecutor | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroPriceFeed | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroTreasury | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IWorker | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SafeCall | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ReceiveUlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SendUlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | UlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | DVN | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | DVNFeeLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IDVN | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IDVNFeeLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroDVN | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IReceiveUlnE2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | DVNOptions | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | UlnOptions | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | AddressSizeConfig | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ReceiveLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ReceiveUln301 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SendLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SendUln301 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | TreasuryFeeHandler | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IMessageLibE1 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | INonceContract | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ITreasuryFeeHandler | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IUltraLightNode301 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ReceiveUln302 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | SendUln302 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | WorkerUpgradeable | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroComposer | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroEndpointV2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ILayerZeroReceiver | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IMessageLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IMessageLibManager | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IMessagingChannel | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IMessagingComposer | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | IMessagingContext | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ISendLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | AddressCast | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | CalldataBytesLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | GUID | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | Transfer | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | BitMaps | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | ExecutorOptions | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | PacketV1Codec | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | BlockedMessageLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | EndpointV2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | EndpointV2Alt | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | MessageLibManager | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | MessagingChannel | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | MessagingComposer | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | MessagingContext | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Ottersec-14DEC2023-Updated.pdf | VerifierNetwork | unmatched — not counted | — | listed in scope and findings | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | EndpointV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | MessageLibManager | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | MessagingChannel | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | MessagingComposer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | MessagingContext | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | ILayerZeroComposer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | ILayerZeroEndpointV2 | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | ILayerZeroReceiver | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | IMessageLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | IMessageLibManager | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | IMessagingChannel | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | IMessagingComposer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | IMessagingContext | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | ISendLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | AddressCast | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | CalldataBytesLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | GUID | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | Transfer | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | BlockedMessageLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | SimpleMessageLib | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | BitMaps | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | ExecutorOptions | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | PacketV1Codec | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-11JUN2026-Diff.pdf | EndpointV2Alt | unmatched — not counted | — | listed in scope table | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | EndpointV2 | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.2 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | MessageLibManager | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.3 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | BlockedMessageLib | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.4 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | MessagingChannel | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.5 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | MessagingComposer | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.6 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | MessagingContext | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.7 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | AddressCast | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.8 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | SafeCall | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.9 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | BitMaps | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.10 | no |
| EndpointV2-Paladin-15DEC2023-Initial.pdf | PacketV1Codec | unmatched — not counted | — | Listed in Contracts Assessed table and detailed in section 2.11 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | EndpointV2 | unmatched — not counted | — | mentioned in findings context | no |
| EndpointV2-Windhustler-15DEC2023.pdf | ExecutorFeeLib | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | PriceFeed | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | SendLibBase | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | Treasury | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | UlnBase | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | DVNFeeLib | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | AddressSizeConfig | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | ProxyAdmin | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | MessageLibManager | unmatched — not counted | — | mentioned in finding I-01 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | WorkerUpgradeable | unmatched — not counted | — | mentioned in finding I-02 | no |
| EndpointV2-Windhustler-15DEC2023.pdf | OmniCounter | unmatched — not counted | — | mentioned in finding L-03 | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SimpleMessageLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | BlockedMessageLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ExecutorOptions | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | PacketV1Codec | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MessagingContext | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MessagingChannel | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | EndpointV2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MessageLibManager | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SendUln302 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveUln302View | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveUln302 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | UlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SendLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveUln301View | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | TreasuryFeeHandler | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SendUln301 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveUln301 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | DVNFeeLib | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | DVN | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | UlnOptions | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | DVNOptions | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SendUlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveUlnBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SendLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MessageLibBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | ReceiveLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | Worker | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SendLibBase | unmatched — not counted | — | listed in scope | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | VerifierNetwork | unmatched — not counted | — | renamed from VerifierNetwork.sol, mentioned in findings | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MessagingComposer | unmatched — not counted | — | mentioned in finding 4.4 | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | SafeCall | unmatched — not counted | — | mentioned in finding 4.7 | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | UlnConfig | unmatched — not counted | — | mentioned in finding 4.9 | no |
| EndpointV2-Zellic-13DEC2023-Updated.pdf | MultiSigUpgradeable | unmatched — not counted | — | mentioned in finding 4.10 | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | UltraLightNode302 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | UlnBase | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | UlnConfig | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | MessageLibBase | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | MessageLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | OutboundConfig | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | UltraLightNode301 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | MessageLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | TreasuryFeeHandler | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | AddressSizeConfig | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | UlnOptions | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | VerifierOptions | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SendUln302 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | ReceiveUln302 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SendUlnBase | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | ReceiveUlnBase | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SendLibBase | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SendLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | ReceiveLibBaseE2 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SendUln301 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | ReceiveUln301 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SendLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | ReceiveLibBaseE1 | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | DVNOptions | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | Worker | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-11JUN2026-Diff.pdf | SafeCall | unmatched — not counted | — | listed in scope | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | UltraLightNode302 | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | ULNBase | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | MessageLibBase | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | MessageLibBaseE2 | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | UlnConfig | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | OutboundConfig | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | UltraLightNode301 | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | MessageLibBaseE1 | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | TreasuryFeeHandler | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | UlnOptions | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | VerifierOptions | unmatched — not counted | — | listed in scope table and findings section | no |
| MessageLib-Paladin-15DEC2023-Initial.pdf | AddressSizeConfig | unmatched — not counted | — | listed in scope table and findings section | no |
| PriceFeed-OtterSec-26JUN2026.pdf | PriceFeed | unmatched — not counted | — | Scope section describes priceFeed program; finding references PriceFeed.sol | no |
| lzRead-Paladin-14NOV2024-Initial.pdf | CmdLib | unmatched — not counted | — | listed in scope table and findings section | no |
| lzRead-Paladin-14NOV2024-Initial.pdf | CmdLibBase | unmatched — not counted | — | listed in scope table and findings section | no |
| lzRead-Paladin-14NOV2024-Initial.pdf | Multisig | unmatched — not counted | — | listed in scope table and findings section | no |
| lzRead-Paladin-14NOV2024-Initial.pdf | DVN | unmatched — not counted | — | listed in scope table and findings section | no |
| lzRead-Paladin-14NOV2024-Initial.pdf | CmdCodecV1 | unmatched — not counted | — | listed in scope table and findings section | no |
| lzRead-Paladin-14NOV2024-Initial.pdf | OAppRead | unmatched — not counted | — | listed in scope table and findings section | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | DVN | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | MultiSig | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | SimpleReadDVN | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | DVNFeeLib | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | SimpleReadExecutor | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | ExecutorFeeLib | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | IDVNFeeLib | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | IExecutorFeeLib | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | SupportedCmdTypes | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | ILayerZeroComposer | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | IMessageLibManager | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | ReadLib1002 | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | ReadLibBase | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | ReadLib1002View | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | ReadCmdCodecV1 | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | CmdCodecV1Mock | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | LzReadCounter | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | IOAppComputer | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | IOAppComputerMap | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Paladin-23JUN2026-Diff.pdf | IOAppComputerReduce | unmatched — not counted | — | listed in scope table and diff analysis | no |
| lzRead-Sec3-12NOV2024.pdf | ReadLib1002 | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | ReadLibBase | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | ILayerZeroReadDVN | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | ILayerZeroReadExecutor | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | DVN | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | ReadCmdCodecV1 | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | OAppRead | unmatched — not counted | — | listed in scope | no |
| lzRead-Sec3-12NOV2024.pdf | IOAppComputer | unmatched — not counted | — | listed in scope | no |
| lzRead-Zellic-25OCT2024.pdf | ReadLib1002 | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | ReadLibBase | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | ILayerZeroReadDVN | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | ILayerZeroReadExecutor | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | MultiSig | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | DVN | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | ReadCmdCodecV1 | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | OAppRead | unmatched — not counted | — | listed in scope section | no |
| lzRead-Zellic-25OCT2024.pdf | IOAppComputer | unmatched — not counted | — | listed in scope section | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | blocked-messagelib | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | dvn | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | endpoint | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | executor | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | messagelib-interface | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | oft | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | pricefeed | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | uln | unmatched — not counted | — | listed in scope | no |
| SolanaEndPoint-Pashov-28MAY2024.pdf | worker-interface | unmatched — not counted | — | listed in scope | no |
| SolanaEndpoint-Halborn-24MAY2024.pdf | endpoint | unmatched — not counted | — | listed in scope as the program name | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | blocked-messagelib | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | dvn | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | endpoint | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | executor | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | messagelib-interface | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | oft | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | pricefeed | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | uln | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf | worker-interface | unmatched — not counted | — | listed in scope table | no |
| SolanaEndpoint-Ottersec-07JUN2024.pdf | layerzero-v2 | unmatched — not counted | — | listed in scope table as the program name | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | endpoint | unmatched — not counted | — | mentioned in findings OS-LZE-SUG-00 and OS-LZE-SUG-01 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | ultra_light_node | unmatched — not counted | — | mentioned in findings OS-LZE-SUG-01 and OS-LZE-SUG-03 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | options | unmatched — not counted | — | mentioned in finding OS-LZE-SUG-01 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | Executor | unmatched — not counted | — | mentioned in finding OS-LZE-SUG-02 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | message_lib_manager | unmatched — not counted | — | mentioned in finding OS-LZE-SUG-02 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | dvn | unmatched — not counted | — | mentioned in finding OS-LZE-SUG-02 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | dvn_fee_lib | unmatched — not counted | — | mentioned in finding OS-LZE-SUG-03 | no |
| LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf | oapp_core | unmatched — not counted | — | mentioned in finding OS-LZE-SUG-03 | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | RateLimiterComponent | unmatched — not counted | — | Target in finding 3.2 and 3.7 | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | OmniCounter | unmatched — not counted | — | Target in finding 3.3 | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | DVN | unmatched — not counted | — | Target in finding 3.6 | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | OFTMintBurnAdapter | unmatched — not counted | — | Mentioned in scope changes and as using RateLimiterComponent | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | EndpointV2 | unmatched — not counted | — | Mentioned in system design and scope | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | IEndpointSafeDispatcher | unmatched — not counted | — | Mentioned in system design | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | OAppCoreComponent | unmatched — not counted | — | Mentioned in finding 3.3 | no |
| LZ-V2_Starknet_Zellic_30_Sept_2025.pdf | msg_codec | unmatched — not counted | — | Target in finding 3.5 | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | endpoint_v2 | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oapp_registry | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | messaging_composer | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | call | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | call_cap | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | multi_call | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | uln_302 | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | send_uln | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn_assign_job | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn_get_fee | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn_verify | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | executor_assign_job | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | executor_get_fee | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | worker_common | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | worker_info_v1 | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | worker_registry | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn_witness | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | hashes | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | multisig | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn_info_v1 | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | dvn_layerzero | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oapp | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | endpoint_calls | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oapp_info_v1 | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | compose_transfer | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | migration | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oft_compose_msg_codec | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oft_composer_manager | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oft | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oft_impl | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oft_ptb_builder | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | pausable | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | oft_info_v1 | unmatched — not counted | — | listed in scope | no |
| LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf | uln_302_ptb_builder | unmatched — not counted | — | listed in scope | no |
| LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf | ILZEndpointDollar | unmatched — not counted | — | listed in scope table | no |
| LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf | LZEndpointDollar | unmatched — not counted | — | listed in scope table | no |
| LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf | LZEndpointDollar | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf | StargateOFTTIP20 | unmatched — not counted | — | Mentioned in vulnerability and general findings sections as a contract in scope. | no |
| EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf | TokenMessagingAlt | unmatched — not counted | — | Mentioned in general findings section as a contract in scope. | no |
| EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf | StargateOFTAlt | unmatched — not counted | — | Mentioned in general findings section as a contract in scope. | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | StargateOFTTip20 | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | StargateOFTAlt | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | StargateBase | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | CreditMessagingAlt | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | TokenMessagingAlt | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | Transfer | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf | ITip20Minter | unmatched — not counted | — | listed in scope section 1.2 Contracts Assessed | no |
| TempoOFTWrapper-OtterSec-16Feb2026.pdf | tempoOFTWrapper | unmatched — not counted | — | mentioned as the main contract in scope | no |
| TempoOFTWrapper-OtterSec-16Feb2026.pdf | IOFT | unmatched — not counted | — | interface mentioned in findings | no |
| TempoOFTWrapper-Paladin-10Feb2026.pdf | TempoOFTWrapper | unmatched — not counted | — | listed in Contracts Assessed section | no |
| TempoOFTWrapper-Paladin-10Feb2026.pdf | ITempoOFTWrapper | unmatched — not counted | — | listed in Contracts Assessed section | no |
| HyperLiquid_Composer-Paladin-9MAY2025.pdf | HyperLiquidComposer | unmatched — not counted | — | listed in Contracts Assessed table and Findings section | no |
| HyperLiquid_Composer-Paladin-9MAY2025.pdf | HyperLiquidComposerCore | unmatched — not counted | — | listed in Contracts Assessed table and Findings section | no |
| HyperLiquid_Composer-Paladin-9MAY2025.pdf | HyperLiquidComposerCodec | unmatched — not counted | — | listed in Contracts Assessed table and Findings section | no |
| LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf | hyperliquid-composer | unmatched — not counted | — | listed in scope description | no |
| LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf | PrefundedFeeAbstraction | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf | RecoverableComposer | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf | IPreFundedFeeAbstraction | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ-Multicall_OtterSec_Dec-30th-2025.pdf | LZMulticall | unmatched — not counted | — | Scope section: 'LZMulticall Account abstraction contract that enables gasless transactions through EIP-712 signatures and multicall functionality.' | no |
| LZ-Multicall_Paladin_Jan-16th-2026.pdf | LZMultiCall | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ-Multicall_Paladin_Jan-16th-2026.pdf | TransferDelegate | ambiguous — not counted | 0xfbea79… (alternative) `0xfbea79...1c7b03` — liveness: live (current_address_book_code)<br>0x8eca03… (alternative) `0x8eca03...dcb4f8` — liveness: live (current_address_book_code)<br>0x72faeb… (alternative) `0x72faeb...3ea294` — liveness: live (current_address_book_code)<br>TransferDelegate (alternative) `0x60fccb...609de4` — deployed 2026-01-22 22:40:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf | ILZMultiCall | unmatched — not counted | — | listed in scope | no |
| LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf | ITransferDelegate | unmatched — not counted | — | listed in scope | no |
| LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf | LZMultiCall | unmatched — not counted | — | listed in scope | no |
| LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf | TransferDelegate | ambiguous — not counted | 0xfbea79… (alternative) `0xfbea79...1c7b03` — liveness: live (current_address_book_code)<br>0x8eca03… (alternative) `0x8eca03...dcb4f8` — liveness: live (current_address_book_code)<br>0x72faeb… (alternative) `0x72faeb...3ea294` — liveness: live (current_address_book_code)<br>TransferDelegate (alternative) `0x60fccb...609de4` — deployed 2026-01-22 22:40:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| LZ-OApp&OFT_Zellic_Sep-23-2025.pdf | OApp | unmatched — not counted | — | Scope section lists 'LayerZero OApp & OFT Contracts' as target; report discusses OApp and OFT as the audited contracts. | no |
| LZ-OApp&OFT_Zellic_Sep-23-2025.pdf | OFT | unmatched — not counted | — | Scope section lists 'LayerZero OApp & OFT Contracts' as target; report discusses OApp and OFT as the audited contracts. | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OApp | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OAppCore | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OAppReceiver | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OAppSender | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OFT | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OFTAdapter | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OFTCore | unmatched — not counted | — | listed in scope | no |
| OApp&OFT-Zellic-12JUN2024.pdf | OFtPrecrime | unmatched — not counted | — | listed in scope | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OApp | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OAppCore | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OAppOptionsType3 | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OAppReceiver | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OAppSender | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | IOAppPreCrimeSimulator | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OAppPreCrimeSimulator | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OFTComposeMsgCodec | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OFTMsgCodec | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OFT | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OFTAdapter | unmatched — not counted | — | listed in scope table | no |
| OFT-OAPP-ChainSecurity-30JAN2024.pdf | OFTCore | unmatched — not counted | — | listed in scope table | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | OFTCoreUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | PreCrimeUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | OAppUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | OAppCoreUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | OAppOptionsType3Upgradeable | unmatched — not counted | — | listed in scope and findings | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | OAppPreCrimeSimulatorUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| UpgradeableOapp&OFT-Hexens-01NOV2024.pdf | OFTAdapterUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| Solana-Example-Review_Zellic_Dec-17-2025.pdf | oapp-solana | unmatched — not counted | — | listed in scope | no |
| Solana-Example-Review_Zellic_Dec-17-2025.pdf | oft-solana | unmatched — not counted | — | listed in scope | no |
| Solana-Example-Review_Zellic_Dec-17-2025.pdf | lzapp-migration | unmatched — not counted | — | listed in scope | no |
| Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf | MyOApp | unmatched — not counted | — | Listed in scope as contracts/**.sol and referenced in threat model section 5.1 | no |
| Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf | ExampleOApp | unmatched — not counted | — | Listed in scope as programs/my_oapp/src/**.rs and referenced in threat model section 5.2 | no |
| TON_OFT-Ottersec-23May2025.pdf | BamOFT | unmatched — not counted | — | Scope section: 'BamOFT FunC implementation of the OFT OApp.' | no |
| TON_OFT-Ottersec-23May2025.pdf | Token | unmatched — not counted | — | Scope section: 'Token FunC implementation of the Jetton minter and wallet.' | no |
| TON_OFT-Ottersec-23May2025.pdf | TokenAdmin | unmatched — not counted | — | Scope section: 'TokenAdmin Contract administering the Jetton.' | no |
| RateLimiter-Hexens-MAY2024.pdf | OFTEfficientRateLimit | unmatched — not counted | — | listed in scope and findings | no |
| RateLimiter-Hexens-MAY2024.pdf | EfficientRateLimiter | unmatched — not counted | — | listed in findings | no |
| RateLimiter-Hexens-MAY2024.pdf | OFTEfficientRateLimitMock | unmatched — not counted | — | listed in findings | no |
| RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf | RateLimiter | unmatched — not counted | — | listed in scope | no |
| RateLimiterFlows-Pashov-20SEPT2024.pdf | RateLimiter | unmatched — not counted | — | Listed in scope section: 'The following smart contracts were in scope of the audit: RateLimiter' | no |
| ONFT721_Paladin_10AUG2024.pdf | ONFT721 | unmatched — not counted | — | listed in scope table and findings section | no |
| ONFT721_Paladin_10AUG2024.pdf | ONFT721Adapter | unmatched — not counted | — | listed in scope table and findings section | no |
| ONFT721_Paladin_10AUG2024.pdf | ONFT721Core | unmatched — not counted | — | listed in scope table and findings section | no |
| ONFT721_Paladin_10AUG2024.pdf | ONFT721MsgCodec | unmatched — not counted | — | listed in scope table and findings section | no |
| ONFT721_Paladin_10AUG2024.pdf | ONFTComposeMsgCodec | unmatched — not counted | — | listed in scope table and findings section | no |
| LZ_OVault-Composer_Paladin_Oct-23-25.pdf | VaultComposerSync | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ_OVault-Composer_Paladin_Oct-23-25.pdf | VaultComposerSyncNative | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ_OVault-Yield.xyz_19-Nov-25.pdf | YieldXyzOVaultComposerSync | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ_OVault-Yield.xyz_19-Nov-25.pdf | YieldXyzOVaultComposerSyncNative | unmatched — not counted | — | listed in Contracts Assessed section | no |
| LZ_OVault_Paladin_Aug-06-25.pdf | VaultComposerSync | unmatched — not counted | — | Listed in 'Contracts Assessed' section and throughout report as the audited contract. | no |
| AptosZROAirdrop-Paladin-17JUN2024.pdf | airdrop_zro | unmatched — not counted | — | listed in scope table and findings sections | no |
| AptosZROAirdrop-Paladin-17JUN2024.pdf | AptosAirdropZRO | unmatched — not counted | — | listed in scope table and findings sections | no |
| ZROClaim-Paladin-18JUN2024.pdf | DonateAndClaim | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Paladin-18JUN2024.pdf | ClaimCore | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Paladin-18JUN2024.pdf | ClaimLocal | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Paladin-18JUN2024.pdf | ClaimRemote | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Paladin-18JUN2024.pdf | DonateCore | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Paladin-18JUN2024.pdf | DonateLocal | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Paladin-18JUN2024.pdf | DonateRemote | unmatched — not counted | — | listed in scope table | no |
| ZROClaim-Pashov-17JUN2024.pdf | ZROClaimCore | unmatched — not counted | — | listed in scope | no |
| ZROClaim-Pashov-17JUN2024.pdf | ZROClaimHub | unmatched — not counted | — | listed in scope | no |
| ZROClaim-Pashov-17JUN2024.pdf | ZROClaimSpoke | unmatched — not counted | — | listed in scope | no |
| ZROClaim-Pashov-17JUN2024.pdf | IZROCLaim | unmatched — not counted | — | listed in scope | no |
| ZROClaim-Pashov-17JUN2024.pdf | DonateRemote | unmatched — not counted | — | mentioned in findings | no |
| ZROClaim-Pashov-17JUN2024.pdf | DonateCore | unmatched — not counted | — | mentioned in findings | no |
| ZROClaim-Pashov-17JUN2024.pdf | DonateLocal | unmatched — not counted | — | mentioned in findings | no |
| ZROClaim-Pashov-17JUN2024.pdf | ClaimLocal | unmatched — not counted | — | mentioned in findings | no |
| ZROClaim-Pashov-17JUN2024.pdf | ClaimRemote | unmatched — not counted | — | mentioned in findings | no |
| ZROclaim-hexens-23JUN2024.pdf | ClaimLocal | unmatched — not counted | — | mentioned in findings LZ02-12 and LZ02-16 | no |
| ZROclaim-hexens-23JUN2024.pdf | ClaimRemote | unmatched — not counted | — | mentioned in findings LZ02-19 and LZ02-16 | no |
| ZROclaim-hexens-23JUN2024.pdf | DonateRemote | unmatched — not counted | — | mentioned in finding LZ02-17 | no |
| ZROclaim-hexens-23JUN2024.pdf | ClaimCore | unmatched — not counted | — | mentioned in findings LZ02-20, LZ02-21, LZ02-22 | no |
| ZROclaim-hexens-23JUN2024.pdf | DonateCore | unmatched — not counted | — | mentioned in finding LZ02-18 | no |
| ZROclaim-hexens-23JUN2024.pdf | DonateAndClaim | unmatched — not counted | — | mentioned in finding LZ02-19 | no |
| VeDistributor_Paladin_09-Sep-2025.pdf | VeDistributor | unmatched — not counted | — | listed in Contracts Assessed table | no |
| VeDistributor_Paladin_09-Sep-2025.pdf | IVeDistributor | unmatched — not counted | — | listed in Contracts Assessed table | no |
| VeDistributor_Paladin_09-Sep-2025.pdf | IVotingEscrow | unmatched — not counted | — | listed in Contracts Assessed table | no |
| VeDistributor_Zellic_08-Sep-2025.pdf | VeDistributor | unmatched — not counted | — | listed in scope table | no |
| VeDistributor_Zellic_08-Sep-2025.pdf | IVeDistributor | unmatched — not counted | — | listed in scope table | no |
| VeDistributor_Zellic_08-Sep-2025.pdf | IVotingEscrow | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x60fccb...609de4` | TransferDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 94
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 745 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=81, low=7, medium=6
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
