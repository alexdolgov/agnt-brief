# Agentic Audit Brief: Citrea Bridge

## Project Overview

- Project: Citrea Bridge (`citrea-bridge`)
- Website: [https://citrea.xyz/bridge](https://citrea.xyz/bridge)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T17:53:32.099Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $4,766,416.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Citrea Bridge is a bridge for moving BTC and other supported tokens to and from Citrea. Its listed Ethereum contract surface includes LayerZero OFT-style adapter and proxy contracts for bridged assets such as WBTC and stablecoins where applicable, while generic deployment infrastructure should be treated separately from scoreable Citrea Bridge contracts.

### Architecture

The Bridges family uses proxy contracts pointing to SourceOFTAdapter implementations from the Assets family, while Utility Contracts support deployment and infrastructure. WBTCOFTAdapter likely integrates with the SourceOFTAdapter to handle WBTC-specific bridging logic.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 11
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 9 fresh, 1 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WBTCOFTAdapter | adapter | ethereum | n/a | [`0x2c0139...ba76ed`](./contracts/ethereum-1/0x2c01390e10e44c968b73a7bcff7e4b4f50ba76ed/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| [SigmaPrime](https://sigmaprime.io/) | Citrea | July 2025 | [view]() |](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [| [SigmaPrime](https://sigmaprime.io/) | Clementine | August 2025 | [view]() |](https://github.com/chainwayxyz/clementine/blob/main/audits/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [| [Cantina Competition](https://cantina.xyz/competitions/49b9e08d-4f8f-4103-b6e5-f5f43cf9faa1) | Citrea | Oct 2025 | [view]() |](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_competition_citrea_jul2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [| [Cantina Competition](https://cantina.xyz/competitions/ce181972-2b40-4047-8ee9-89ec43527686) | Clementine | Oct 2025 | [view]() |](https://github.com/chainwayxyz/clementine/blob/main/audits/cantina-competition-report.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [| [Guardian](https://guardianaudits.com) | USDT.e & USDC.e Bridge | Oct 2025 | [view]() |](https://github.com/chainwayxyz/token-bridge/blob/main/audits/Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | 0 | n/a |
| [BitVM - Zellic Audit Report.pdf](https://github.com/BitVM/BitVM/blob/1f42f41c00d935988d87529e79e7d950d3bf9503/aduits/BitVM%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [| [Guardian](https://guardianaudits.com) | CTR & xCTR | Feb 2026 | [view]() |](https://static.citrea.xyz/audits/ctr-xctr-guardian.pdf) | Guardian | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [| [Sherlock](https://sherlock.xyz) | CTR & xCTR | Feb 2026 | [view]() |](https://static.citrea.xyz/audits/ctr-xctr-sherlock.pdf) | Sherlock | Contest | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [cantina_eip6780_fix_feb2026.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_eip6780_fix_feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [| [OtterSec](https://osec.io) | WBTC.e Bridge | Sept 2024 | [view]() |](https://github.com/LayerZero-Labs/Audits/blob/d98efc2e0c4e6d7137a30529d1e55a9df7a4fbfd/audits/LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf) | Guardian | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2c0139...ba76ed`](./contracts/ethereum-1/0x2c01390e10e44c968b73a7bcff7e4b4f50ba76ed/) | WBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=3

Zero-match audit list:

- [2504] | [SigmaPrime](https://sigmaprime.io/) | Citrea | July 2025 | [view]() |
- [2505] | [SigmaPrime](https://sigmaprime.io/) | Clementine | August 2025 | [view]() |
- [2506] | [Cantina Competition](https://cantina.xyz/competitions/49b9e08d-4f8f-4103-b6e5-f5f43cf9faa1) | Citrea | Oct 2025 | [view]() |
- [2507] | [Cantina Competition](https://cantina.xyz/competitions/ce181972-2b40-4047-8ee9-89ec43527686) | Clementine | Oct 2025 | [view]() |
- [2508] | [Guardian](https://guardianaudits.com) | USDT.e & USDC.e Bridge | Oct 2025 | [view]() |
- [2510] BitVM - Zellic Audit Report.pdf
- [2511] | [Guardian](https://guardianaudits.com) | CTR & xCTR | Feb 2026 | [view]() |
- [2512] | [Sherlock](https://sherlock.xyz) | CTR & xCTR | Feb 2026 | [view]() |
- [2513] Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf
- [2514] cantina_eip6780_fix_feb2026.pdf
- [15503] | [OtterSec](https://osec.io) | WBTC.e Bridge | Sept 2024 | [view]() |

Fork inheritance lineage and inherited audits are included when available.
