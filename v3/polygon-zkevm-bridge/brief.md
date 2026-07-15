# Agentic Audit Brief: Polygon zkEVM Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Polygon zkEVM Bridge (`polygon-zkevm-bridge`)
- Website: [https://portal.polygon.technology/bridge](https://portal.polygon.technology/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $74,877,494.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Polygon zkEVM Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | n/a | `0x000000...000000` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/zkEVM-bridge-Spearbit-27-March.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf) | Hexens | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma%20Prime%20-%20Polygon%20-%20LXLY%20Banana%20-%20Security%20Assessment%20Report%20-%202.0.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21259] zkEVM-bridge-Spearbit-27-March.pdf — no match: Extracted from the report title page and executive summary. The report covers the zkevm-contracts repository with multiple contracts in scope.
- [21260] Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf — no match: Extracted contract names from file paths in findings and imports. Audit completion date found on page 5.
- [21261] Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf — no match: Extracted contract names from findings and test files. Audit date from cover page: 'February, 2024' -> last day of month.
- [21262] Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf — no match: Scope section states review was on files in the 'Banana' feature branch up to commit 0ab3f10. Contracts identified from findings assets and test file names.
- [21263] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf — no match: Extracted contracts from scope section and findings. Audit date inferred from 'January, 2025' on cover page.
- [21264] Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf — no match: Scope section states review of changes to Solidity files and updateVanillaGenesis.ts in diff v10.0.0-rc.6...v10.1.0-rc.1. Contract names extracted from findings assets and file references.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| zkEVM-bridge-Spearbit-27-March.pdf | PolygonZkEVM | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | PolygonZkEVMBridge | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | PolygonZkEVMGlobalExitRoot | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | PolygonZkEVMGlobalExitRootL2 | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | PolygonZkEVMTimelock | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | DepositContract | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | TokenWrapped | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | IBridgeMessageReceiver | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | IVerifierRollup | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | EmergencyManager | unmatched — not counted | — | listed in scope | no |
| zkEVM-bridge-Spearbit-27-March.pdf | GlobalExitRootLib | unmatched — not counted | — | listed in scope | no |
| Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf | PolygonZkEvmBridge | unmatched — not counted | — | mentioned in finding 1 path | no |
| Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf | PolygonZkEvm | unmatched — not counted | — | mentioned in finding 10 path | no |
| Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf | DepositContract | unmatched — not counted | — | mentioned in finding 11 path | no |
| Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf | EmergencyManager | unmatched — not counted | — | imported in PolygonZkEvm.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | CDKDataCommittee | unmatched — not counted | — | Listed in findings (LXLY-01) and test file CDKDataCommittee.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonRollupBase | unmatched — not counted | — | Listed in findings (LXLY-02, LXLY-06, LXLY-08, LXLY-09, LXLY-10, LXLY-16, LXLY-19) and test files | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonRollupManager | unmatched — not counted | — | Listed in findings (LXLY-03, LXLY-05, LXLY-08, LXLY-13, LXLY-14, LXLY-15, LXLY-17) and test file PolygonRollupManager.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonZkEVMBridgeV2 | unmatched — not counted | — | Listed in findings (LXLY-04, LXLY-07, LXLY-18, LXLY-19) and test files | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonRollupBaseEtrog | unmatched — not counted | — | Listed in findings (LXLY-06, LXLY-08, LXLY-09, LXLY-10) and test files | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | TokenWrapped | unmatched — not counted | — | Listed in findings (LXLY-07, LXLY-12) and test file TokenWrapped.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonZkEVMGlobalExitRootV2 | unmatched — not counted | — | Listed in findings (LXLY-19) and test file PolygonZkEVMGlobalExitRootV2.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonDataCommittee | unmatched — not counted | — | Listed in findings (LXLY-19) and test file PolygonDataCommitteeEtrog.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonTransparentProxy | unmatched — not counted | — | Listed in findings (LXLY-19) and test file PolygonTransparentProxy.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | PolygonAccessControlUpgradeable | unmatched — not counted | — | Listed in test file PolygonAccessControlUpgradeable.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | EmergencyManager | unmatched — not counted | — | Listed in test file EmergencyManager.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | DepositContractV2 | unmatched — not counted | — | Listed in test file DepositContractV2.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | DepositContract | unmatched — not counted | — | Listed in test file DepositContract.t.sol | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | LegacyZKEVMStateVariables | unmatched — not counted | — | Listed in findings (LXLY-19) | no |
| Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf | IBasePolygonZkEVMGlobalExitRoot | unmatched — not counted | — | Listed in findings (LXLY-19) | no |
| Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf | PolygonRollupManager | unmatched — not counted | — | Listed as asset in findings ZKEVM04-01, ZKEVM04-02, ZKEVM04-03, ZKEVM04-04, ZKEVM04-05 | no |
| Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf | PolygonZkEVMGlobalExitRootV2 | unmatched — not counted | — | Test file PolygonZkEVMGlobalExitRootV2.t.sol indicates contract exists | no |
| Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf | PolygonValidiumEtrog | unmatched — not counted | — | Test file PolygonValidiumEtrog.t.sol indicates contract exists | no |
| Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf | PolygonRollupBaseEtrog | unmatched — not counted | — | Test file PolygonRollupBaseEtrog.t.sol indicates contract exists | no |
| Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf | BridgeL2SovereignChain | unmatched — not counted | — | Listed in scope and findings sections. | no |
| Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf | GlobalExitRootManagerL2SovereignChain | unmatched — not counted | — | Listed in scope and findings sections. | no |
| Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf | PolygonZkEVMGlobalExitRootV2 | unmatched — not counted | — | Mentioned in finding ZKEVM05-06. | no |
| Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf | BridgeL2SovereignChain | unmatched — not counted | — | listed in scope as asset for finding UWT-04 | no |
| Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf | PolygonZkEVMBridgeV2 | unmatched — not counted | — | listed in scope as asset for findings UWT-05 and UWT-06 | no |
| Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf | BytecodeStorer | unmatched — not counted | — | listed in scope as asset for finding UWT-06 | no |
| Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf | TokenWrappedTransparentProxy | unmatched — not counted | — | mentioned in finding UWT-06 comment | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [21259] zkEVM-bridge-Spearbit-27-March.pdf
- [21260] Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf
- [21261] Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf
- [21262] Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf
- [21263] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf
- [21264] Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf

Fork inheritance lineage and inherited audits are included when available.
