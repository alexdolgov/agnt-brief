# Agentic Audit Brief: Citrea Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Citrea Bridge (`citrea-bridge`)
- Website: [https://citrea.xyz/bridge](https://citrea.xyz/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,644,002.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Citrea Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4e59b4...b4956c`, chain 1)
- UnnamedContract (`0x6925cc...6dbba6`, chain 1)
- UnnamedContract (`0x9f3096...304dc4`, chain 1)
- UnnamedContract (`0xba5ed0...8ba5ed`, chain 1)
- UnnamedContract (`0xdaa289...4b868e`, chain 1)
- WBTCOFTAdapter (`0x2c0139...ba76ed`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/50 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 6 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 27
- Raw deployments: 27
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WBTCOFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-231862 | `0x2c0139...ba76ed` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231859 | `0x017062...573804` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231861 | `0x29fcb4...00c762` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231884 | `0x38869b...43b526` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231886 | `0x3d4ba2...a46199` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231897 | `0x41675c...c7461a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231901 | `0x4e1dcf...20ec67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231903 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231905 | `0x526643...ffdac6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231909 | `0x6925cc...6dbba6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231911 | `0x69f4d1...6e2938` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231913 | `0x727a77...8fc044` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231927 | `0x9641d7...8102e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231929 | `0x98ffbb...aff717` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231931 | `0x998739...8f9eda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231933 | `0x9b35af...0a1a52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231935 | `0x9f3096...304dc4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231937 | `0xa1dabe...44102b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231941 | `0xb19d6f...640a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231943 | `0xba5ed0...8ba5ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231945 | `0xbd89a1...ffdc54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231947 | `0xc22834...f910bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231949 | `0xd53cd0...8012c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231951 | `0xdaa289...4b868e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231961 | `0xfb1bff...7191ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231963 | `0xfd0732...59ec99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231965 | `0xff83f6...8d9f69` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/clementine/blob/main/audits/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [cantina_competition_citrea_jul2025.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_competition_citrea_jul2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [cantina-competition-report.pdf](https://github.com/chainwayxyz/clementine/blob/main/audits/cantina-competition-report.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf](https://github.com/chainwayxyz/token-bridge/blob/main/audits/Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 36 | high |
| [BitVM - Zellic Audit Report.pdf](https://github.com/BitVM/BitVM/blob/1f42f41c00d935988d87529e79e7d950d3bf9503/aduits/BitVM%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [ctr-xctr-guardian.pdf](https://static.citrea.xyz/audits/ctr-xctr-guardian.pdf) | Guardian | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [ctr-xctr-sherlock.pdf](https://static.citrea.xyz/audits/ctr-xctr-sherlock.pdf) | Sherlock | Contest | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [cantina_eip6780_fix_feb2026.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_eip6780_fix_feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf](https://github.com/LayerZero-Labs/Audits/blob/d98efc2e0c4e6d7137a30529d1e55a9df7a4fbfd/audits/LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf) | Guardian | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2504] Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf — no match: Extracted contract names from scope section and findings. Audit date from cover page: 'July, 2025' -> last day of month.
- [2505] Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf — no match: Scope section lists files at commit 937e9f4. Audit date is 'August, 2025' from cover page, mapped to last day of month.
- [2506] cantina_competition_citrea_jul2025.pdf — no match: The report does not have a dedicated scope section. Contract names were extracted from findings that explicitly mention the contract as part of the audited codebase. The audit date is from the document title 'Citrea Competition October 21, 2025'.
- [2507] cantina-competition-report.pdf — no match: The report does not contain a scope section listing specific contracts or files. The only named entity is 'Clementine', which appears to be the overall project name, not a specific contract. No contract names could be extracted from the provided text.
- [2508] Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf — no match: Extracted contract names from the scope table on page 6 and from file paths. The audit date is from the cover page: 'Final Report Date October 6, 2025'.
- [2510] BitVM - Zellic Audit Report.pdf — no match: Extracted contract/module names from the scope tables in section 2.3. The audit date is from the cover page and header.
- [2511] ctr-xctr-guardian.pdf — no match: Scope table lists 4 contracts: CitreaToken, GaugeVotes, xCitreaToken, xCTRConfig. Also includes deploy scripts but those are not contracts. Audit date is March 10, 2026 from cover page.
- [2512] ctr-xctr-sherlock.pdf — no match: Scope section lists three files: CitreaToken.sol, GaugeVotes.sol, xCitreaToken.sol. Audit date range February 27 - March 1, 2026, so end date is March 1.
- [2513] Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf — no match: Extracted contract names from scope and findings sections. Audit date is October 2025, mapped to last day of month.
- [2514] cantina_eip6780_fix_feb2026.pdf — no match: Scope includes Rust source files (not Solidity contracts) from the Citrea rollup project. No smart contracts in the traditional sense; files are EVM implementation modules.
- [15503] LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf — no match: Extracted three programs from scope section. Audit date from title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | ValidateSPV | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | BTCUtils | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | WitnessUtils | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | Bridge | unmatched — not counted | — | mentioned in findings CTR-01, CTR-04, CTR-13, CTR-15, CTR-23 | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | BitcoinLightClientContract | unmatched — not counted | — | mentioned in findings CTR-06, CTR-07, CTR-10 | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | NativeShortHeaderProofProviderService | unmatched — not counted | — | mentioned in finding CTR-08 | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | TransactionV1 | unmatched — not counted | — | mentioned in finding CTR-21 | no |
| Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf | TransactionV2 | unmatched — not counted | — | mentioned in finding CTR-21 | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | main | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | extended_rpc | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | deposit | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | cli | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | citrea | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | verifier | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | bitvm_client | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | actor | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | operator | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | aggregator | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | servers | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | musig2 | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | rpc | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | config | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | builder | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf | database | unmatched — not counted | — | listed in scope | no |
| cantina_competition_citrea_jul2025.pdf | BitcoinLightClient | unmatched — not counted | — | mentioned in finding 3.2.1 as a contract with vulnerability | no |
| cantina_competition_citrea_jul2025.pdf | ValidateSPV | unmatched — not counted | — | library used by BitcoinLightClient, mentioned in finding 3.2.1 | no |
| cantina_competition_citrea_jul2025.pdf | SequencerLedgerOps | unmatched — not counted | — | mentioned in finding 3.2.6 as containing get_pending_commitments function | no |
| cantina_competition_citrea_jul2025.pdf | ParallelProverService | unmatched — not counted | — | mentioned in finding 3.2.10 as containing start_proving function | no |
| cantina-competition-report.pdf | Clementine | unmatched — not counted | — | The report is about a competition on Clementine, but no specific contract files are listed in scope. | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | DestinationOUSDC | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | DestinationOUSDT | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | SourceOFTAdapter | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCRolesHolder | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | ConfigSetup | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | DestinationOUSDCForTakeover | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | SourceOFTAdapterForTakeover | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTDeploy | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTBridgeDeploy | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTSrcBridgeSetLzConfig | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTDestBridgeSetLzConfig | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTSrcBridgeSetPeer | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTDestBridgeSetPeer | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTSetBridgeAsMinter | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDTAndBridgeAssignRoles | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCBridgeDeploy | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgeSetLzConfig | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCDestBridgeSetLzConfig | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgeSetPeer | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCDestBridgeSetPeer | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSetBridgeAsMinter | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCAndBridgeAssignRoles | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgePrepareTakeover | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCDestBridgePrepareTakeover | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgeSetBlockedMsgLib | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCDestBridgeSetBlockedMsgLib | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgePause | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCDestBridgePause | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCRemoveBridgeAsMinter | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgeSetCircle | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCProxyAdminTransfer | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCTransferOwner | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCRolesHolderSetCircle | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCDestBridgeUnpause | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | USDCSrcBridgeUnpause | unmatched — not counted | — | listed in scope table | no |
| Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf | InflightMsgCheckLzScan | unmatched — not counted | — | mentioned in findings as a script in scope | no |
| BitVM - Zellic Audit Report.pdf | bigint | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | u4 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | macro | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | src | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | ell_coeffs | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | fp254impl | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | fq | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | fq2 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | fq6 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | fq12 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | fr | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | g1 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | g2 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | mod | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | msm | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | utils | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | chunk | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | offchain_checker | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | blake3 | unmatched — not counted | — | listed in scope table | no |
| BitVM - Zellic Audit Report.pdf | signatures | unmatched — not counted | — | listed in scope table | no |
| ctr-xctr-guardian.pdf | CitreaToken | unmatched — not counted | — | listed in scope table | no |
| ctr-xctr-guardian.pdf | GaugeVotes | unmatched — not counted | — | listed in scope table | no |
| ctr-xctr-guardian.pdf | xCitreaToken | unmatched — not counted | — | listed in scope table | no |
| ctr-xctr-guardian.pdf | xCTRConfig | unmatched — not counted | — | listed in scope table | no |
| ctr-xctr-sherlock.pdf | CitreaToken | unmatched — not counted | — | listed in scope | no |
| ctr-xctr-sherlock.pdf | GaugeVotes | unmatched — not counted | — | listed in scope | no |
| ctr-xctr-sherlock.pdf | xCitreaToken | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf | BatchProofMethodIdBody | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf | BatchProofMethodId | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf | CitreaMempool | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf | SpecId | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf | min_base_fee_per_gas | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf | verify_method_id_security_council | unmatched — not counted | — | listed in scope and findings | no |
| cantina_eip6780_fix_feb2026.pdf | guest.rs | unmatched — not counted | — | listed in scope | no |
| cantina_eip6780_fix_feb2026.pdf | call.rs | unmatched — not counted | — | listed in scope | no |
| cantina_eip6780_fix_feb2026.pdf | db.rs | unmatched — not counted | — | listed in scope | no |
| cantina_eip6780_fix_feb2026.pdf | db_commit.rs | unmatched — not counted | — | listed in scope | no |
| cantina_eip6780_fix_feb2026.pdf | genesis.rs | unmatched — not counted | — | listed in scope | no |
| cantina_eip6780_fix_feb2026.pdf | lib.rs | unmatched — not counted | — | listed in scope | no |
| cantina_eip6780_fix_feb2026.pdf | query.rs | unmatched — not counted | — | listed in scope | no |
| LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf | wbtc-oft-swap | unmatched — not counted | — | listed in scope | no |
| LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf | SuperChainMintBurnERC20 | unmatched — not counted | — | listed in scope | no |
| LZ_WBTC-OFT-Conversion_OtterSec_23-Sept-24.pdf | MintBurnOFTFeeAdapter | unmatched — not counted | — | listed in scope and referenced in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2c0139...ba76ed` | WBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 108 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=1, medium=1
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
