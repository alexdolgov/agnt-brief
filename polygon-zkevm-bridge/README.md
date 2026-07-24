# Agentic Audit Brief: Polygon zkEVM Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Polygon zkEVM Bridge (`polygon-zkevm-bridge`)
- Website: [https://portal.polygon.technology/bridge](https://portal.polygon.technology/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, polygon
- Contract surface: 25 unique implementations (35 raw deployments)
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
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 25
- Raw deployments: 35
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggchainECDSAMultisig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x519e42c24163192dca44cd3fbdcebf6be9130987` | ⚠️ Unaudited |
| AgglayerGER | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb` | ⚠️ Unaudited |
| AgglayerManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2` | ⚠️ Unaudited |
| BridgeLib | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3` | ⚠️ Unaudited |
| DappnodeSmoothingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc9f1fcb464423f81027dc6dd39edf751e9a584` | ⚠️ Unaudited |
| FflonkVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0775e11309d75aa6b0967917fb0213c5673edf81`; ethereum `0x1c3a3da552b8662cd69538356b1e7c2e9cc1ebd8`; ethereum `0x21f65deadb3b85082ba99766f323bea90eb5a3d6`; ethereum `0x4aabba26ea9e7a7fbd052d17a167e6ae3f8ec7be`; ethereum `0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9`; ethereum `0x5f411584e02964a028e3123c833c352cd2f5cbd5` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x242dae44f5d8fb54b198d03a94da45b5a4413e21`; ethereum `0xf694c9e3a34f5fa48b6f3a0ff186c1c6c4fce904` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x70e70e58ed7b1cec0d8ef7464072ed8a52d755eb`; ethereum `0xa4e6762eaaf259da74696f46faaf79ba9dde14e6` | ⚠️ Unaudited |
| PolygonDataCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9ccd205052c732ac1df2cf7bf8aacc0e371ee0b0`; ethereum `0xf4e87685e323818e0ae35dcdfc3b65106002e456` | ⚠️ Unaudited |
| PolygonRollupManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b82da772c825283d85d5d6717a77c6ff582053b` | ⚠️ Unaudited |
| PolygonValidiumEtrog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cf80f7eb1c76ec5ae7a88b417e373449b73ac30` | ⚠️ Unaudited |
| PolygonValidiumStorageMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d296e8add0535be71639e5d1d1c30ae1c6bd4c` | ⚠️ Unaudited |
| PolygonZkEVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe262ea2782e2e8dbfe354048c3b5d6de9603efef` | ⚠️ Unaudited |
| PolygonZkEVMBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0feb850b183c57534b56b7d56520133c8f9bdb65` | ⚠️ Unaudited |
| PolygonZkEVMEtrog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2650a9a4fc64f63f573ef0f405064ef54bc46f71` | ⚠️ Unaudited |
| PolygonZkEVMExistentEtrog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79bcb82b35a335cd8a8ec433b304a0c91f67cde0` | ⚠️ Unaudited |
| PolygonZkEVMGlobalExitRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1ea504fc54d078514efcca1f6860b5219b6bc3` | ⚠️ Unaudited |
| PolygonZkEVMGlobalExitRootV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e38cd55163137483e30580cb468c2dff1d85077` | ⚠️ Unaudited |
| PolygonZkEVMTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1462451c30ea7ad8555386226059fe837ca4ef` | ⚠️ Unaudited |
| PolygonZkEVMUpgraded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x301442aa888701c8b86727d42f3c55fb0dd9ef7f`; ethereum `0xb1585916487acedd99952086f2950763d253b923` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f99738b2fc14d77308337f3e2596b63ae7bcc4a`; ethereum `0x1963d7b78e75a5edff9e5376e7a07a935fb3d50d` | ⚠️ Unaudited |
| SP1Verifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0459d576a6223feea177fb3df53c9c77bf84c459` | ⚠️ Unaudited |
| WstETHBridgeL1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 22
- Live contracts: 0
- Unknown liveness contracts: 22
- Source-verified contracts: 22
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=13, contamination review=2, source verified unclassified=7

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | PolygonDataCommittee<br>`0xf4e87685e323818e0ae35dcdfc3b65106002e456` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonRollupManager<br>`0x3b82da772c825283d85d5d6717a77c6ff582053b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonValidiumEtrog<br>`0x9cf80f7eb1c76ec5ae7a88b417e373449b73ac30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonValidiumStorageMigration<br>`0x10d296e8add0535be71639e5d1d1c30ae1c6bd4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonZkEVM<br>`0xe262ea2782e2e8dbfe354048c3b5d6de9603efef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| candidate review | PolygonZkEVMBridgeV2<br>`0x0feb850b183c57534b56b7d56520133c8f9bdb65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonZkEVMEtrog<br>`0x2650a9a4fc64f63f573ef0f405064ef54bc46f71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonZkEVMExistentEtrog<br>`0x79bcb82b35a335cd8a8ec433b304a0c91f67cde0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | PolygonZkEVMUpgraded<br>`0x301442aa888701c8b86727d42f3c55fb0dd9ef7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| candidate review | PolygonZkEVMUpgraded<br>`0xb1585916487acedd99952086f2950763d253b923` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | ProxyAdmin<br>`0x1963d7b78e75a5edff9e5376e7a07a935fb3d50d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| candidate review | TransparentUpgradeableProxy<br>`0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| candidate review | TransparentUpgradeableProxy<br>`0x9ccd205052c732ac1df2cf7bf8aacc0e371ee0b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| contamination review | FflonkVerifier<br>`0x0775e11309d75aa6b0967917fb0213c5673edf81` | non_address_book | unknown | unknown | verified | n/a | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| contamination review | FflonkVerifier<br>`0x21f65deadb3b85082ba99766f323bea90eb5a3d6` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| source verified unclassified | DappnodeSmoothingPool<br>`0x5cc9f1fcb464423f81027dc6dd39edf751e9a584` | non_address_book | unknown | unknown | verified | n/a | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| source verified unclassified | FflonkVerifier<br>`0x1c3a3da552b8662cd69538356b1e7c2e9cc1ebd8` | non_address_book | unknown | unknown | verified | n/a | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| source verified unclassified | FflonkVerifier<br>`0x4aabba26ea9e7a7fbd052d17a167e6ae3f8ec7be` | non_address_book | unknown | unknown | verified | n/a | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| source verified unclassified | FflonkVerifier<br>`0x5f411584e02964a028e3123c833c352cd2f5cbd5` | non_address_book | unknown | unknown | verified | n/a | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |
| source verified unclassified | L1Escrow<br>`0xa4e6762eaaf259da74696f46faaf79ba9dde14e6` | non_address_book | unknown | unknown | verified | n/a | `0x528ce6792fc825115e6537c2e3b3af53f385d927` |
| source verified unclassified | PolygonZkEVMGlobalExitRoot<br>`0xbc1ea504fc54d078514efcca1f6860b5219b6bc3` | non_address_book | unknown | unknown | verified | n/a | `0x7c280c055cbf830f77d6da3a6363e961e0b91c7d` |
| source verified unclassified | PolygonZkEVMGlobalExitRootV2<br>`0x2e38cd55163137483e30580cb468c2dff1d85077` | non_address_book | unknown | unknown | verified | n/a | `0x0f8352ca7c57731382cb7e1b80d2603e31e056f4` |

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
| native | 22 |
| upstream | 0 |
| standard_library | 2 |
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
