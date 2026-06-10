# Agentic Audit Brief: Multichain

⚠️ Lifecycle status: DEAD - TVL dropped 4.2% over 90 days

## Project Overview

- Project: Multichain (`multichain`)
- Website: [https://multichain.org/](https://multichain.org/)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-06-10T20:59:07.826Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 17 unique implementations (22 raw deployments)
- DeFi Llama TVL: $44,466,550.29
- On-chain TVL (included contracts): $12,482,372.81
- TVL by chain: Ethereum $12,482,372.81

## Project Description

Multichain is a cross-chain bridge and router protocol that enables users to transfer tokens and perform cross-chain swaps between supported blockchains. Any contract surface, coverage, or product-family analysis should be based on confirmed Multichain/AnySwap deployments and should not treat Circle CCTP MessageTransmitter or TokenMessenger contracts as Multichain-owned infrastructure.

### Architecture

The Mainnet family provides generic cross-chain messaging infrastructure, while the Multichain family focuses on token bridging and swaps. Both families share the underlying Message contract as a common implementation for message transmission, and the AnyCallProxy in the Multichain family likely relies on the Mainnet family's message passing capabilities.

## Audit Coverage Summary

- Verified implementations audited: 6/14 (42.9%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 17
- Raw deployments: 22
- Audits discovered: 15
- Scoreable audits (matched contracts): 3
- Active bug bounty: BlockSec ([program](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_routerv7_v1.0-signed.pdf))
- ASD (verified + unaudited TVL): $128.81
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $128.81 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 35.7% | 2022-03 |
| Dedaub | Tier 2 | 2 | 14.3% | 2022-03 |
| BlockSec | Tier 2 | 1 | 7.1% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultichainToken | token | ethereum | [`0x65ef70...492df4`](./contracts/ethereum-1/0x65ef703f5594d2573eb71aaf55bc0cb548492df4/) | ✅ Audited |
| SwapTokens | token | ethereum | [`0xaed047...b2ec60`](./contracts/ethereum-1/0xaed0472b498548b1354925d222b832b99bb2ec60/) | ✅ Audited |
| AnyswapV6ERC20 | token | ethereum | [`0x0615db...6748b1`](./contracts/ethereum-1/0x0615dbba33fe61a31c7ed131bda6655ed76748b1/) | ✅ Audited |
| AnyswapV6Router | adapter | ethereum | [`0xba8da9...910705`](./contracts/ethereum-1/0xba8da9dcf11b50b03fd5284f164ef5cdef910705/) | ✅ Audited |
| MultiDao | unknown | ethereum | [`0x172280...90d558`](./contracts/ethereum-1/0x1722800c0f1bfdf916ef948ef7790a861e90d558/) | ✅ Audited |
| ve | unknown | ethereum | [`0xbba411...48ceba`](./contracts/ethereum-1/0xbba4115ecb1f811061ecb5a8dc8fcdee2748ceba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AnyswapV5ERC20 | token | ethereum | [`0x9fb9a3...8764e3`](./contracts/ethereum-1/0x9fb9a33956351cf4fa040f65a13b835a3c8764e3/) | ⚠️ Unaudited |
| AnycallExecutorUpgradeable | unknown | ethereum | 3 deployments: ethereum [`0x2fc1af...5f7b00`](./contracts/ethereum-1/0x2fc1af4b7b031bd39af7009e0a62694a795f7b00/); ethereum `0x429210...cd77d6`; ethereum `0x72cb20...976b81` | ⚠️ Unaudited |
| AnyCallProxy | unknown | ethereum | 2 deployments: ethereum [`0x37414a...490a89`](./contracts/ethereum-1/0x37414a8662bc1d25be3ee51fb27c2686e2490a89/); ethereum `0xd50ab2...6d4e90` | ⚠️ Unaudited |
| AnycallV7Config | governance | ethereum | [`0xc75b18...73eb03`](./contracts/ethereum-1/0xc75b1860f553012a16de727b2bb2402aaf73eb03/) | ⚠️ Unaudited |
| AnyCallV7Upgradeable | unknown | ethereum | 2 deployments: ethereum [`0x6bc6e0...f04508`](./contracts/ethereum-1/0x6bc6e050b3db999a322093c6c8144da517f04508/); ethereum `0x8efd01...604374` | ⚠️ Unaudited |
| BscBridge | operational_periphery | ethereum | [`0xc34277...b34972`](./contracts/ethereum-1/0xc342774492b54ce5f8ac662113ed702fc1b34972/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x065d01...ab2261`](./contracts/ethereum-1/0x065d014e0c898ae6a35bcf1c5effa98796ab2261/); ethereum `0x6c24ba...303a4e` | ⚠️ Unaudited |
| Reward | unknown | ethereum | [`0x44529a...ad7db6`](./contracts/ethereum-1/0x44529a37a43bab8af2336698e31f2e4585ad7db6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0d37f5...382602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ca1a0...fd3df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30ef59...aab5d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_audit_multichain_routerv7_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_routerv7_v1.0-signed.pdf) | BlockSec | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Read [veMULTI proposal](https://medium.com/multichainorg/vemulti-proposal-stake-multi-get-multichain-fees-rewards-d8d13b9e20cb) and [code audit]()](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_v1.0-signed.pdf) | BlockSec | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf) | CertiK | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf) | CertiK | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Coinspect - Security Assessment - Multichain Stellar - V230330.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Coinspect/Coinspect%20-%20Security%20Assessment%20-%20Multichain%20Stellar%20-%20V230330.pdf) | Coinspect | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Multichain Contract V6 Audit Report by Dedaub.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/DEDAUB/Multichain%20Contract%20V6%20Audit%20Report%20by%20Dedaub.pdf) | Dedaub | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [* Audit report: [PeckShield]()](https://github.com/anyswap/Anyswap-Audit/blob/master/PeckShield/PeckShield-Audit-Report-MultiChainV6-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 5 | high |
| [AnySwap CrossChain-Bridge Security Audit Report.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/AnySwap%20CrossChain-Bridge%20Security%20Audit%20Report.pdf) | yAudit | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [AnySwap 跨链桥白盒安全审计报告.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/AnySwap%20%E8%B7%A8%E9%93%BE%E6%A1%A5%E7%99%BD%E7%9B%92%E5%AE%89%E5%85%A8%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8A.pdf) | SlowMist | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Anyswap Smart Contract Security Audit.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/Anyswap%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [SlowMist Audit Report - AnySwap AnyCall App.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/SlowMist%20Audit%20Report%20-%20AnySwap%20AnyCall%20App.pdf) | SlowMist | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [智能合约审计报告DApp - Anyswap.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/%E6%99%BA%E8%83%BD%E5%90%88%E7%BA%A6%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8ADApp%20-%20Anyswap.pdf) | SlowMist | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [AnySwap Threshold-DSA Final Report Edited.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/TrailOfBits/AnySwap%20Threshold-DSA%20Final%20Report%20Edited.pdf) | Trail of Bits | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/TrailOfBits/Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final%20Report.pdf) | Trail of Bits | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Verichain/Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf) | Verichains | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2fc1af...5f7b00`](./contracts/ethereum-1/0x2fc1af4b7b031bd39af7009e0a62694a795f7b00/) | AnycallExecutorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37414a...490a89`](./contracts/ethereum-1/0x37414a8662bc1d25be3ee51fb27c2686e2490a89/) | AnyCallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc75b18...73eb03`](./contracts/ethereum-1/0xc75b1860f553012a16de727b2bb2402aaf73eb03/) | AnycallV7Config | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bc6e0...f04508`](./contracts/ethereum-1/0x6bc6e050b3db999a322093c6c8144da517f04508/) | AnyCallV7Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc34277...b34972`](./contracts/ethereum-1/0xc342774492b54ce5f8ac662113ed702fc1b34972/) | BscBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44529a...ad7db6`](./contracts/ethereum-1/0x44529a37a43bab8af2336698e31f2e4585ad7db6/) | Reward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
