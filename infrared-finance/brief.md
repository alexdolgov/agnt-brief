# Agentic Audit Brief: Infrared Finance

## Project Overview

- Project: Infrared Finance (`infrared-finance`)
- Website: [https://infrared.finance](https://infrared.finance)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.023Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: berachain, bsc
- Contract surface: 8 unique implementations (22 raw deployments)
- DeFi Llama TVL: $30,216,782.27
- On-chain TVL (included contracts): $861,893.53
- TVL by chain: Berachain $861,893.53

## Project Description

Infrared Finance is a Berachain Proof-of-Liquidity and liquid-products protocol. Its product suite includes PoL vaults, iBGT, iBERA as the BERA liquid staking receipt token, sIR, and IR Swap. BSC IROFT/OFT deployments should be described separately as token/OFT infrastructure rather than as the main BERA staking derivative or a TVL-bearing protocol chain.

### Architecture

The core staking contracts (InfraredBERAV2_1 and InfraredV1_10) interact with supporting infrastructure: depositor and withdrawor handle user flows, distributor manages reward distribution, fee receivor collects protocol fees, and bribe collector optimizes yield, all sharing the iROFT token.

## Contract Surface Quality

- Indexed contracts: 121; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 95 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 5/7 live.
- Detected codebases: none
- Unverified dependencies: 5/8.

## Audit Coverage Summary

- Verified implementations audited: 8/8 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 22
- Audits discovered: 27
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Staleness: 15 fresh, 11 aging, 1 stale, 0 unknown
- Tier 1 coverage: 50.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 100.0% | 2026-04 |
| Spearbit | Tier 1 | 4 | 50.0% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedVault | core_logic | berachain | n/a | 15 deployments: berachain [`0x021f62...eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x58b34e...2871fd`; berachain `0x7e3129...54e39a`; berachain `0x81ba24...6f490a`; berachain `0x920598...9b139a`; berachain `0xa3a376...80f26f`; berachain `0xb38b0d...26c9b9`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xde7472...687958`; berachain `0xfe7a78...c5f575` | ✅ Audited |
| BribeCollectorV1_4 | operational_periphery | berachain | unit-21703 | [`0x8d4417...21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ✅ Audited |
| InfraredBERADepositorV2 | unknown | berachain | unit-21700 | [`0x04cddc...cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ✅ Audited |
| InfraredBERAV2_1 | unknown | berachain | unit-21704 | [`0x9b6761...cd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ✅ Audited |
| InfraredBERAWithdrawor | operational_periphery | berachain | unit-21702 | [`0x8c0e12...2818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ✅ Audited |
| InfraredBGT | unknown | berachain | n/a | [`0xac03ca...bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ✅ Audited |
| InfraredV1_10 | unknown | berachain | unit-21705 | [`0xb71b3d...2fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ✅ Audited |
| IROFT | unknown | bsc | n/a | [`0xace9de...bdcb39`](./contracts/bsc-56/0xace9de5af92eb82a97a5973b00eff85024bdcb39/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Infrared - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [Infrared - Zenith Audit Report - 20082025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%20-%2020082025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Infrared - Zenith Audit Report 09.07.2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%2009.07.2025.pdf) | unknown | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Infrared - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Infrared Berachain Core Integration - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Berachain%20Core%20Integration%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [Infrared Merkle Distributor - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Merkle%20Distributor%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Infrared OFT Adapter Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20OFT%20Adapter%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [Infrared Operations & Future Vaults Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Operations%20%26%20Future%20Vaults%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Infrared Smart Contract Security Assessment.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Smart%20Contract%20Security%20Assessment.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Infraredv1.5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infraredv1.5.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Zenith Audit Report - Infrared Finance.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Zenith%20Audit%20Report%20-%20Infrared%20Finance.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [baseline-ethskills.md](https://github.com/infrared-dao/contracts/blob/master/audits/baseline-ethskills.md) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | 20 | high |
| [cantinacode-24.01.2026.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/cantinacode-24.01.2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [infraredContractsSecurityReview.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infraredContractsSecurityReview.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [infrared_contract_security_review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_contract_security_review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 2 | medium |
| [infrared_security_review_12_11_2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_security_review_12_11_2025.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [report-cantinacode-infrared-03072025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-03072025.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | medium |
| [report-cantinacode-infrared-0310-bribeCollector.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0310-bribeCollector.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [report-cantinacode-infrared-0320.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [report-cantinacode-infrared-1.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [report-cantinacode-infrared-1201.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1201.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [report-cantinacode-infrared-5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-5.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [report-cantinacode-infrared-pr647.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-pr647.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [report-cantinacode-infrared.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [report-cli-cantina-infrared-0503_final.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cli-cantina-infrared-0503_final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [report-competition-infrared-contracts.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-competition-infrared-contracts.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 16 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8, medium=2
- Match method counts: extraction_exact=241

Zero-match audit list:

- [5712] Infrared - Zellic Audit Report.pdf
- [5713] Infrared - Zenith Audit Report - 20082025.pdf
- [5715] Infrared - Zenith Audit Report.pdf
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf
- [5719] Infrared Operations & Future Vaults Security Review.pdf
- [5720] Infrared Smart Contract Security Assessment.pdf
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf
- [5722] Infraredv1.5.pdf
- [5723] Zenith Audit Report - Infrared Finance.pdf
- [5725] cantinacode-24.01.2026.pdf
- [5726] infraredContractsSecurityReview.pdf
- [5728] infrared_security_review_12_11_2025.pdf
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf
- [5731] report-cantinacode-infrared-0320.pdf
- [5736] report-cantinacode-infrared.pdf
- [5737] report-cli-cantina-infrared-0503_final.pdf

Fork inheritance lineage and inherited audits are included when available.
