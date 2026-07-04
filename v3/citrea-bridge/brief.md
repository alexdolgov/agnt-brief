# Agentic Audit Brief: Citrea Bridge

## Project Overview

- Project: Citrea Bridge (`citrea-bridge`)
- Website: [https://citrea.xyz/bridge](https://citrea.xyz/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.455Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $4,644,002.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 1 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol forms a single structural family (Adapters) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 9 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
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
| [Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/clementine/blob/main/audits/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [cantina_competition_citrea_jul2025.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_competition_citrea_jul2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [cantina-competition-report.pdf](https://github.com/chainwayxyz/clementine/blob/main/audits/cantina-competition-report.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf](https://github.com/chainwayxyz/token-bridge/blob/main/audits/Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BitVM - Zellic Audit Report.pdf](https://github.com/BitVM/BitVM/blob/1f42f41c00d935988d87529e79e7d950d3bf9503/aduits/BitVM%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [ctr-xctr-guardian.pdf](https://static.citrea.xyz/audits/ctr-xctr-guardian.pdf) | Guardian | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [ctr-xctr-sherlock.pdf](https://static.citrea.xyz/audits/ctr-xctr-sherlock.pdf) | Sherlock | Contest | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [cantina_eip6780_fix_feb2026.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_eip6780_fix_feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf](https://github.com/LayerZero-Labs/Audits/blob/d98efc2e0c4e6d7137a30529d1e55a9df7a4fbfd/audits/LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf) | Guardian | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2504] Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf
- [2505] Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf
- [2506] cantina_competition_citrea_jul2025.pdf
- [2507] cantina-competition-report.pdf
- [2508] Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf
- [2510] BitVM - Zellic Audit Report.pdf
- [2511] ctr-xctr-guardian.pdf
- [2512] ctr-xctr-sherlock.pdf
- [2513] Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf
- [2514] cantina_eip6780_fix_feb2026.pdf
- [15503] LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf

Fork inheritance lineage and inherited audits are included when available.
