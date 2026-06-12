# Agentic Audit Brief: Ankr

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 93% below peak)
- Generated: 2026-06-12T13:56:36.416Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: avalanche, ethereum, fantom, gnosis, polygon
- Contract surface: 25 unique implementations (28 raw deployments)
- DeFi Llama TVL: $17,640,916.91
- On-chain TVL (included contracts): $162.27
- TVL by chain: Polygon $129.54 | Avalanche $32.73 | Ethereum $0.00

## Project Description

Ankr is a Web3 infrastructure provider. Its DeFi/DefiLlama-listed product includes liquid staking services that allow users to stake assets across multiple blockchains and receive liquid staking tokens, while the currently attested contract roles are largely unknown or incomplete and should not be treated as the full active deployment surface.

### Architecture

The Ankr family shares infrastructure through configuration contracts (EarnConfig, StakingConfig, Config) that manage parameters for various pools and tokens. Governance (Governance_R3) and the AnkrProtocol contract coordinate across chains, while the CrossChainBridge facilitates asset transfers between networks.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 25
- Raw deployments: 28
- Audits discovered: 14
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $32.80
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 13 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AvalanchePool_R6 | core_logic | avalanche | [`0x7baa1e...0a836d`](./contracts/avalanche-43114/0x7baa1e3bfe49db8361680785182b80bb420a836d/) | ⚠️ Unaudited |
| SwapPool | core_logic | polygon | [`0x62a509...eddb2a`](./contracts/polygon-137/0x62a509ba95c75cabc7190469025e5abee4eddb2a/) | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | ethereum | [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| AnkrAVAXRateProvider | unknown | avalanche | [`0xd70c8a...9bcee4`](./contracts/avalanche-43114/0xd70c8aac058e6dafe3446f78091325f9e29bcee4/) | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | ethereum | [`0x00f8e6...9d6abc`](./contracts/ethereum-1/0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc/) | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | polygon | 3 deployments: ethereum `0xc437df...0e7181`; polygon [`0x31be0f...0887f5`](./contracts/polygon-137/0x31be0fa706e391a88c3a09cc13112bd55e0887f5/); avalanche [`0x31be0f...0887f5`](./contracts/avalanche-43114/0x31be0fa706e391a88c3a09cc13112bd55e0887f5/) | ⚠️ Unaudited |
| FeeRecipient_R1 | operational_periphery | ethereum | [`0x90b0c8...3eab08`](./contracts/ethereum-1/0x90b0c836a19a74195d45fad2d2d3895a7a3eab08/) | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | avalanche | [`0xc33448...c727f6`](./contracts/avalanche-43114/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| InsurancePool_R2 | core_logic | gnosis | [`0xb42bf1...8d0fa2`](./contracts/gnosis-100/0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2/) | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | ethereum | 2 deployments: ethereum [`0xcb0006...ed7eba`](./contracts/ethereum-1/0xcb0006b31e6b403feeec257a8abee0817bed7eba/); avalanche `0xef3c16...54050f` | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | ethereum | [`0x59f767...0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/) | ⚠️ Unaudited |
| PolygonPool_R8 | core_logic | ethereum | [`0xcfd4b4...b3ce89`](./contracts/ethereum-1/0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89/) | ⚠️ Unaudited |
| ProviderRegistry | registry | gnosis | [`0x8a2f83...2ce27a`](./contracts/gnosis-100/0x8a2f83347f0e59faefe2320b7422f8aa432ce27a/) | ⚠️ Unaudited |
| StakingConfig | governance | ethereum | [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/) | ⚠️ Unaudited |
| StakingPool_R3 | core_logic | gnosis | [`0xfd0f61...6c34d6`](./contracts/gnosis-100/0xfd0f61255913825da1c194b985f04982966c34d6/) | ⚠️ Unaudited |
| ValidatorManager_R3 | unknown | gnosis | [`0xe95a20...c2c3cb`](./contracts/gnosis-100/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| WithdrawalPool | operational_periphery | ethereum | [`0x67428d...719348`](./contracts/ethereum-1/0x67428de0680494e448f1a19d33c2022a51719348/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MaticPool | core_logic | polygon | `0xad0dcc...adb4b7` | ❓ Unverified |
| MaticStaking | unknown | ethereum | `0xad0dcc...adb4b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x26dcfb...c5480c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcfc785...ef5179` | ❓ Unverified |
| ValidatorStorage | unknown | ethereum | `0xa2d1aa...c5cc8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [detailed audit report](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [DL audit link (also discovered via alternate URL)](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Ankr Bridge Mar 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [ANKR Delegated Staking Dec 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [ANKR Delegated Staking Feb 2023 audit report by Veridise](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [AVAX Liquid Staking Jul 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [BNB Liquid Staking Apr 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) | Beosin | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [BNB Liquid Staking Jul 2022 audit report by PeckShield](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [BNB Liquid Staking Feb 2023 audit report by Veridise](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [ETH Liquid Staking Nov 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) | Beosin | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [ETH Liquid Staking May 2023 audit report by Salus](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [FLOW Liquid Staking Aug 2024 audit report by Halborn](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) | Halborn | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [FTM Liquid Staking Mar 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [POL Liquid Staking Jun 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) | Beosin | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1860] detailed audit report
- [3459] DL audit link
- [3461] Ankr Bridge Mar 2022 audit report by Beosin
- [3462] ANKR Delegated Staking Dec 2022 audit report by Beosin
- [3463] ANKR Delegated Staking Feb 2023 audit report by Veridise
- [3464] AVAX Liquid Staking Jul 2022 audit report by Beosin
- [3465] BNB Liquid Staking Apr 2022 audit report by Beosin
- [3466] BNB Liquid Staking Jul 2022 audit report by PeckShield
- [3467] BNB Liquid Staking Feb 2023 audit report by Veridise
- [3469] ETH Liquid Staking Nov 2022 audit report by Beosin
- [3470] ETH Liquid Staking May 2023 audit report by Salus
- [3471] FLOW Liquid Staking Aug 2024 audit report by Halborn
- [3472] FTM Liquid Staking Mar 2022 audit report by Beosin
- [3473] POL Liquid Staking Jun 2022 audit report by Beosin

Fork inheritance lineage and inherited audits are included when available.
