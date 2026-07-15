# Agentic Audit Brief: Zircuit Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Zircuit Finance (`zircuit-finance`)
- Website: [https://finance.zircuit.com/](https://finance.zircuit.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia
- Contract surface: 33 unique implementations (33 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,141,487.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Zircuit Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0792c4...df3f5b`, chain 1)
- UnnamedContract (`0x17bfaf...043fb1`, chain 1)
- UnnamedContract (`0x2a721c...5ea091`, chain 1)
- UnnamedContract (`0x30f82a...a428ff`, chain 1)
- UnnamedContract (`0x386b76...b26dd8`, chain 1)
- UnnamedContract (`0x5b1ef6...fc5257`, chain 1)
- UnnamedContract (`0x6c8910...d5cf0e`, chain 1)
- UnnamedContract (`0x745393...6d3da0`, chain 1)
- UnnamedContract (`0x7d43eb...80f35e`, chain 1)
- UnnamedContract (`0x92ef6a...9245a4`, chain 1)
- UnnamedContract (`0x994eeb...0dd244`, chain 1)
- UnnamedContract (`0xc77ece...90e932`, chain 1)
- UnnamedContract (`0xf35a40...e31f67`, chain 1)
- UnnamedContract (`0x0792c4...df3f5b`, chain 10)
- UnnamedContract (`0x0792c4...df3f5b`, chain 8453)
- UnnamedContract (`0x0792c4...df3f5b`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 16 own, 17 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 16 of 33 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 2 fresh, 5 aging, 4 stale, 2 unknown
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

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398198 | `0x0792c4...df3f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398199 | `0x17bfaf...043fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398200 | `0x2a721c...5ea091` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398201 | `0x30f82a...a428ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398202 | `0x386b76...b26dd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398203 | `0x5b1ef6...fc5257` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-398204 | `0x5ff137...6d2789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398205 | `0x6c8910...d5cf0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398206 | `0x745393...6d3da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398207 | `0x7d43eb...80f35e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-398208 | `0x7fc984...088348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398209 | `0x92ef6a...9245a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398210 | `0x994eeb...0dd244` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398211 | `0xc77ece...90e932` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398212 | `0xf35a40...e31f67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398213 | `0x0792c4...df3f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398229 | `0x0792c4...df3f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398227 | `0x0792c4...df3f5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398230 | `0x7fd9f1...a01f70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398228 | `0x7fd9f1...a01f70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398214 | `0x2b4913...6a1069` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398215 | `0x3d3fc8...64463f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398216 | `0x4e21a7...702c21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398217 | `0x540ff7...0c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398218 | `0x6ac894...1cf130` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398219 | `0x7fd9f1...a01f70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398220 | `0x87a7e2...4460d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398221 | `0x9641b8...079dfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398222 | `0x987d60...09746e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398223 | `0x9da6c2...08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398224 | `0xb99857...847205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398225 | `0xbea946...4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398226 | `0xd69d3a...eaf211` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Reports](https://docs.zircuit.com/info/security/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Link (also discovered via alternate URL)](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit - Zenith Audit Report.pdf](https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2F3HGYEl2g48GgzIm810Nh%2FZircuit%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Zircuit Finance - CCTP Adapter Report.pdf](https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2FDTiUd0GK87vWQ6Nfe880%2FZircuit%20Finance%20-%20CCTP%20Adapter%20Report.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18718] Audit Reports — no match: The document is an index page listing multiple audit reports with descriptions (e.g., 'L2 Upgradeable Contract', 'Lido's wstETH', 'USDCAdapter', 'Token and Migration', 'Liquidity Hub', 'Bridge', 'Staking Pool') but does not provide specific contract names, file paths, or a detailed scope section. The audit dates are for each report, but no single audit date can be extracted for the overall document.
- [18719] Link — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [18721] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf — no match: Only one contract in scope: USDCAdapter.sol. Audit date from title: Sep 19th, 2024.
- [18722] Zircuit_zrc_token_Secure3_Audit_Report.pdf — no match: Audit scope explicitly lists two files: src/ZRC.sol and src/ZRCL2.sol. The report date is from the title: 'Sep 18th, 2024'.
- [18723] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf — no match: Extracted 4 contracts from Appendix 1 - Files in Scope. Audit date from 'Dates Sep14 2024' in overview.
- [18724] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf — no match: Scope section explicitly lists three contracts: BatchMigrator.sol, Migrator.sol, ZrcDistributor.sol. Audit date is the end date of engagement: August 2nd, 2024.
- [18725] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf — no match: Scope section explicitly lists src/ZRC.sol and src/ZRCL2.sol. BatchTransfer.sol is mentioned in findings but not in scope section; however, it is a contract in the repository and was tested.
- [18726] Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf — no match: Scope section explicitly lists 6 contracts under contracts-bedrock/src/ with file paths.
- [18727] dedaub-audit-zkr-staking-ztakingpool.pdf — no match: Scope explicitly lists contracts/ directory with ZtakingPool.sol and interfaces IMigrator.sol, IWETH.sol, IZtakingPool.sol. Audit date from title: March 11, 2024.
- [18728] ztakingpool_ottersec.pdf — no match: Only one contract file (ZtakingPool.sol) is explicitly referenced in the findings. The scope section describes the program 'zkr-staking' but does not list individual contract files. The findings reference 'contracts/ZtakingPool.sol' as the audited file.
- [18729] ZRC_OFT_final_report_Quantstamp.pdf — no match: Scope section explicitly lists three contracts: ERC20PermitOFT.sol, ZrcOFT.sol, ZrcOFTAdapter.sol. Audit date from changelog: 2025-05-23.
- [18730] Zircuit - Zenith Audit Report.pdf — no match: Extracted 19 contract names from scope section (files under bridge-router/contracts, strategies/contracts, vault/contracts) and findings. Audit date is report published date: December 5, 2025.
- [18731] Zircuit Finance - CCTP Adapter Report.pdf — no match: Only CircleCCTPAdapter.sol was in scope per the report's scope section. Other contracts mentioned (OFTBridgeAdapter, etc.) are siblings for comparison, not in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf | USDCAdapter | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRC | unmatched — not counted | — | listed in Audit Scope table | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRCL2 | unmatched — not counted | — | listed in Audit Scope table | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LiquidityHub | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPool | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | BasePool | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPoolFactory | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | BatchMigrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | ZrcDistributor | unmatched — not counted | — | listed in scope | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRC | unmatched — not counted | — | listed in scope section and findings | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRCL2 | unmatched — not counted | — | listed in scope section and findings | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | BatchTransfer | unmatched — not counted | — | mentioned in finding 5.10 | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | ZtakingPool | unmatched — not counted | — | listed in scope | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IMigrator | unmatched — not counted | — | listed in scope | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IZtakingPool | unmatched — not counted | — | listed in scope | no |
| ztakingpool_ottersec.pdf | ZtakingPool | unmatched — not counted | — | Referenced in findings as _contracts/ZtakingPool.sol | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ERC20PermitOFT | unmatched — not counted | — | listed in scope | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFT | unmatched — not counted | — | listed in scope | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Zircuit - Zenith Audit Report.pdf | VaultToken | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in findings H-1, L-1, L-10, L-11, L-12 | no |
| Zircuit - Zenith Audit Report.pdf | InstitutionLender | unmatched — not counted | — | Listed in scope under strategies/contracts/**/*.sol and referenced in finding M-1 | no |
| Zircuit - Zenith Audit Report.pdf | VaultComposerSync | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in finding L-2 | no |
| Zircuit - Zenith Audit Report.pdf | OAppFactory | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in finding L-3 | no |
| Zircuit - Zenith Audit Report.pdf | ProtoCCTPGatewayAdapter | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in finding L-4 | no |
| Zircuit - Zenith Audit Report.pdf | OptimismBridgeAdapter | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in finding L-4 | no |
| Zircuit - Zenith Audit Report.pdf | OFTBridgeAdapter | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in findings L-4, I-7 | no |
| Zircuit - Zenith Audit Report.pdf | ArbitrumAdapterL2 | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in finding L-4 | no |
| Zircuit - Zenith Audit Report.pdf | ArbitrumAdapterL1 | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in findings L-4, L-5 | no |
| Zircuit - Zenith Audit Report.pdf | Auction | unmatched — not counted | — | Listed in scope under strategies/contracts/**/*.sol and referenced in finding L-6 | no |
| Zircuit - Zenith Audit Report.pdf | VaultComposer | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in findings L-7, L-8, I-8 | no |
| Zircuit - Zenith Audit Report.pdf | UnderlyingOFTAdapter | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in finding L-9 | no |
| Zircuit - Zenith Audit Report.pdf | UnderlyingOFT | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in finding I-2 | no |
| Zircuit - Zenith Audit Report.pdf | Vault | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in finding I-3 | no |
| Zircuit - Zenith Audit Report.pdf | Factory | unmatched — not counted | — | Listed in scope under bridge-router/contracts/**/*.sol and referenced in finding I-4 | no |
| Zircuit - Zenith Audit Report.pdf | AccountingReceiver | unmatched — not counted | — | Listed in scope under vault/contracts/**/*.sol and referenced in finding I-4 | no |
| Zircuit - Zenith Audit Report.pdf | StrategyManager | unmatched — not counted | — | Listed in scope under strategies/contracts/**/*.sol and referenced in finding I-4 | no |
| Zircuit - Zenith Audit Report.pdf | MorphoCompounder | unmatched — not counted | — | Listed in scope under strategies/contracts/**/*.sol and referenced in findings I-5, I-6 | no |
| Zircuit - Zenith Audit Report.pdf | AaveV3Lender | unmatched — not counted | — | Listed in scope under strategies/contracts/**/*.sol and referenced in findings I-1, I-6 | no |
| Zircuit Finance - CCTP Adapter Report.pdf | CircleCCTPAdapter | unmatched — not counted | — | listed in scope section and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=2
- Match method counts: n/a

Zero-match audit list:

- [18718] Audit Reports
- [18719] Link
- [18721] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [18722] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [18723] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [18724] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [18725] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [18726] Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf
- [18727] dedaub-audit-zkr-staking-ztakingpool.pdf
- [18728] ztakingpool_ottersec.pdf
- [18729] ZRC_OFT_final_report_Quantstamp.pdf
- [18730] Zircuit - Zenith Audit Report.pdf
- [18731] Zircuit Finance - CCTP Adapter Report.pdf

Fork inheritance lineage and inherited audits are included when available.
