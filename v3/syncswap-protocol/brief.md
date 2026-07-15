# Agentic Audit Brief: SyncSwap Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea, scroll, zksync-era
- Contract surface: 44 unique implementations (44 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $7,912,329.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SyncSwap Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across linea, scroll, zksync-era. Structural roles: 7 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (6)
- Contract kinds: contract (13)
- Detected standards: ownable (9), ownable2step (5), multicall (3), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (8), permit2 (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 13; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 44 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SyncSwapClassicPoolFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257922 | `0x37bac7...a0ac2d` | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257920 | `0x1080ee...a6d1ea` | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257917 | `0x87aeb5...937018` | ⚠️ Unaudited |
| SyncSwapFeeManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257921 | `0x12af3e...6c586d` | ⚠️ Unaudited |
| SyncSwapFeeRecipient | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257927 | `0xa2a09f...410bd8` | ⚠️ Unaudited |
| SyncSwapPoolMaster | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257924 | `0x608cb7...64b4a3` | ⚠️ Unaudited |
| SyncSwapPoolMaster | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257931 | `0xee8790...55b3a0` | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257915 | `0x4318a7...07657c` | ⚠️ Unaudited |
| SyncSwapRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257926 | `0x80e382...bd5c69` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257928 | `0xc2a194...3e8a1e` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257919 | `0xfd541d...dc9115` | ⚠️ Unaudited |
| SyncSwapVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257925 | `0x716057...1ab61b` | ⚠️ Unaudited |
| WETH9 | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-257930 | `0xe5d7c2...5cf34f` | ⚠️ Unaudited |
| WrappedEther | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | scroll | unit-257916 | `0x530000...000004` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257888 | `0x075487...0f327d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257889 | `0x0a34fb...906193` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257890 | `0x1b887a...3a084c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257891 | `0x1fc09a...0e3791` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257892 | `0x20b28b...b90c5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257893 | `0x2da10a...1c0295` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257894 | `0x31a2c9...303978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257895 | `0x432bcc...681e6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257896 | `0x582ad7...2d5a3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257897 | `0x593f66...8c5c55` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | unit-257898 | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257899 | `0x5b9f21...356ea3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257900 | `0x621425...f8d091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257901 | `0x63ad09...906ebb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257902 | `0x7581a8...946502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257903 | `0x812515...5c317f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257904 | `0x877b04...6991e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257905 | `0x9b5def...26b059` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257906 | `0x9d63d3...4e6f13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257907 | `0xa757ed...5a4131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257908 | `0xbb0591...909ffb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257909 | `0xc6dac3...722601` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257910 | `0xc8a3d1...cb472e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257911 | `0xecdd1c...af58b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257912 | `0xf2dad8...aca7cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257913 | `0xfd43b4...12811c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257914 | `0xfdfe03...5783d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257923 | `0x45b320...681301` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257929 | `0xe4cf80...dd3727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257918 | `0xdfb26a...132611` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [reports (GitHub directory)](https://github.com/syncswap/reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf — no match: Scope explicitly lists 5 contracts from file paths; ERC20Permit2 is a contract mentioned as a target in a finding but not in scope list; included as it is audited.
- [2072] SyncSwap - Zellic Audit Report.pdf — no match: No reason recorded
- [2073] MetaScan_Report_core-contracts_202303161916.pdf — no match: No reason recorded
- [2074] MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf — no match: No reason recorded
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf — no match: The report mentions 'contracts' as the project name and codebase path, but no specific contract names are listed in scope. The date is extracted from the header: 'April 4, 2023'.
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf — no match: The report mentions 'core-contracts' as the project name but does not list specific contract names or files in scope. No contracts are explicitly identified.
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf — no match: No scope section or contract names found in the report text.
- [2078] 202304231022.pdf — no match: No explicit scope section; contracts inferred from findings lines references. Audit date from cover page.
- [14423] reports (GitHub directory) — no match: The provided text is a GitHub repository listing with file names but no actual audit report content. No contracts in scope or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapVoter | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapGauge | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapBribe | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | VortexToken | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | VortexDividends | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | ERC20Permit2 | unmatched — not counted | — | mentioned as target in finding PVE-002 | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | BasePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ECDSA | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ERC20Permit2 | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ForwarderRegistry | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | IPool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Multicall | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Ownable | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Pausable | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | StableMath | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapClassicPoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapFeeManager | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapFeeRecipient | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapPoolMaster | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapRouter | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapStablePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | BasePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ECDSA | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ERC20Permit2 | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ForwarderRegistry | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | IPool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Math | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Multicall | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Ownable | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Pausable | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | StableMath | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapClassicPoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapFeeManager | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapFeeRecipient | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapPoolMaster | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapRouter | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapStablePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| 202304231022.pdf | SyncSwapPadToken | unmatched — not counted | — | mentioned in finding SYNCSWAP-1 lines reference | no |
| 202304231022.pdf | SyncSwapLunchPool | unmatched — not counted | — | mentioned in finding SYNCSWAP-2 lines reference | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2072] SyncSwap - Zellic Audit Report.pdf
- [2073] MetaScan_Report_core-contracts_202303161916.pdf
- [2074] MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf
- [14423] reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
