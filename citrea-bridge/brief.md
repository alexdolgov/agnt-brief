# Agentic Audit Brief: Citrea Bridge

## Project Overview

- Project: Citrea Bridge (`citrea-bridge`)
- Website: [https://citrea.xyz/bridge](https://citrea.xyz/bridge)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:01.397Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $6,637,260.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Citrea Bridge is a bridge for moving BTC and other supported tokens to and from Citrea. Its listed Ethereum contract surface includes LayerZero OFT-style adapter and proxy contracts for bridged assets such as WBTC and stablecoins where applicable, while generic deployment infrastructure should be treated separately from scoreable Citrea Bridge contracts.

### Architecture

The Bridges family uses proxy contracts pointing to SourceOFTAdapter implementations from the Assets family, while Utility Contracts support deployment and infrastructure. WBTCOFTAdapter likely integrates with the SourceOFTAdapter to handle WBTC-specific bridging logic.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 10
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 9 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 1 | 50.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SourceOFTAdapter | adapter | ethereum | 3 deployments: ethereum [`0x6925cc...6dbba6`](./contracts/ethereum-1/0x6925ccd29e3993c82a574ced4372d8737c6dbba6/); ethereum `0x9f3096...304dc4`; ethereum `0xdaa289...4b868e` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WBTCOFTAdapter | adapter | ethereum | [`0x2c0139...ba76ed`](./contracts/ethereum-1/0x2c01390e10e44c968b73a7bcff7e4b4f50ba76ed/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x4e59b4...b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| [SigmaPrime](https://sigmaprime.io/) | Citrea | July 2025 | [view]() |](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [| [SigmaPrime](https://sigmaprime.io/) | Clementine | August 2025 | [view]() |](https://github.com/chainwayxyz/clementine/blob/main/audits/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [| [Cantina Competition](https://cantina.xyz/competitions/49b9e08d-4f8f-4103-b6e5-f5f43cf9faa1) | Citrea | Oct 2025 | [view]() |](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_competition_citrea_jul2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [| [Cantina Competition](https://cantina.xyz/competitions/ce181972-2b40-4047-8ee9-89ec43527686) | Clementine | Oct 2025 | [view]() |](https://github.com/chainwayxyz/clementine/blob/main/audits/cantina-competition-report.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [| [Guardian](https://guardianaudits.com) | USDT.e & USDC.e Bridge | Oct 2025 | [view]() |](https://github.com/chainwayxyz/token-bridge/blob/main/audits/Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [BitVM - Zellic Audit Report.pdf](https://github.com/BitVM/BitVM/blob/1f42f41c00d935988d87529e79e7d950d3bf9503/aduits/BitVM%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [| [Guardian](https://guardianaudits.com) | CTR & xCTR | Feb 2026 | [view]() |](https://static.citrea.xyz/audits/ctr-xctr-guardian.pdf) | Guardian | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [| [Sherlock](https://sherlock.xyz) | CTR & xCTR | Feb 2026 | [view]() |](https://static.citrea.xyz/audits/ctr-xctr-sherlock.pdf) | Sherlock | Contest | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [cantina_eip6780_fix_feb2026.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_eip6780_fix_feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |

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
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [2504] | [SigmaPrime](https://sigmaprime.io/) | Citrea | July 2025 | [view]() |
- [2505] | [SigmaPrime](https://sigmaprime.io/) | Clementine | August 2025 | [view]() |
- [2506] | [Cantina Competition](https://cantina.xyz/competitions/49b9e08d-4f8f-4103-b6e5-f5f43cf9faa1) | Citrea | Oct 2025 | [view]() |
- [2507] | [Cantina Competition](https://cantina.xyz/competitions/ce181972-2b40-4047-8ee9-89ec43527686) | Clementine | Oct 2025 | [view]() |
- [2510] BitVM - Zellic Audit Report.pdf
- [2511] | [Guardian](https://guardianaudits.com) | CTR & xCTR | Feb 2026 | [view]() |
- [2512] | [Sherlock](https://sherlock.xyz) | CTR & xCTR | Feb 2026 | [view]() |
- [2513] Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf
- [2514] cantina_eip6780_fix_feb2026.pdf

Fork inheritance lineage and inherited audits are included when available.
