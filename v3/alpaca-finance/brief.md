# Agentic Audit Brief: Alpaca Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 6 audit(s)
- Eligible audit results: 19 (6 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Website: [https://www.alpacafinance.org/](https://www.alpacafinance.org/)
- Lifecycle: declining (Tier 0, 97.9% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 25 unique implementations (36 raw deployments)
- Coverage basis: 12/25 confirmed own live verified implementations (48.0%); conservative 48.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $39,030,090.00
- On-chain TVL (included contracts): $8,547,726.77
- TVL by chain: Bsc $8,547,726.77

## Project Description

This brief describes the observed EVM deployment and audit surface for Alpaca Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across bsc. Structural roles: 23 unclassified, 10 core, 7 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (23), core (10), supporting (7)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (9), ownable (4), erc20 (1)
- Frameworks: openzeppelin (15), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0x02da70...aa7442`, chain 56)
- AdminUpgradeabilityProxy (`0x08fc9b...1c24e7`, chain 56)
- AdminUpgradeabilityProxy (`0x11362e...a9db40`, chain 56)
- AdminUpgradeabilityProxy (`0x158da8...951e59`, chain 56)
- AdminUpgradeabilityProxy (`0x262de1...1b59b2`, chain 56)
- AdminUpgradeabilityProxy (`0x3282d2...8cd3cd`, chain 56)
- AdminUpgradeabilityProxy (`0x3b4fbb...0fa4dc`, chain 56)
- AdminUpgradeabilityProxy (`0x6a3487...2a55f9`, chain 56)
- AdminUpgradeabilityProxy (`0x7c9e73...87592f`, chain 56)
- AdminUpgradeabilityProxy (`0x92110a...258fe6`, chain 56)
- AdminUpgradeabilityProxy (`0xb76ed4...aeaf84`, chain 56)
- AdminUpgradeabilityProxy (`0xbff4a3...723afe`, chain 56)
- AdminUpgradeabilityProxy (`0xd7d069...fc0063`, chain 56)
- AdminUpgradeabilityProxy (`0xf1be8e...16d421`, chain 56)
- DebtToken (`0x513813...e22cec`, chain 56)
- DebtToken (`0xd19d62...029ebd`, chain 56)
- FairLaunch (`0xa625ab...489a8f`, chain 56)
- GnosisSafeProxy (`0x18f59e...475d01`, chain 56)
- MerkleDistributor (`0x083c02...e58de7`, chain 56)
- MerkleDistributor (`0x60bc40...514105`, chain 56)
- MerkleDistributor (`0x63c60b...dc4412`, chain 56)
- MerkleDistributor (`0xa33ff7...50ce58`, chain 56)
- MerkleDistributor (`0xd193b3...21c4bf`, chain 56)
- Multicall (`0x41263c...90e76c`, chain 56)
- ProxyAdmin (`0x5379f3...94f452`, chain 56)
- Shield (`0x1963f8...1b4656`, chain 56)
- StronkAlpaca (`0x6f695b...6ce7a7`, chain 56)
- Timelock (`0x2d5408...1d0a59`, chain 56)
- TransparentUpgradeableProxy (`0x08b5a9...5afc7e`, chain 56)
- TransparentUpgradeableProxy (`0x426bdf...c361f3`, chain 56)
- TransparentUpgradeableProxy (`0x4f4054...c1cf43`, chain 56)
- TransparentUpgradeableProxy (`0x50e574...1ddab7`, chain 56)
- TransparentUpgradeableProxy (`0x800933...1e26d7`, chain 56)
- TransparentUpgradeableProxy (`0xc4ed26...5d938b`, chain 56)
- TransparentUpgradeableProxy (`0xff6934...b147eb`, chain 56)

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (36 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/25 (48.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 12/25
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 36
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $8,544,244.14
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 19 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 8.0% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $8,544,244.14 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 32.0% | 2022-03 |
| CertiK | Tier 2 | 6 | 24.0% | 2021-05 |
| SlowMist | Tier 1 | 2 | 8.0% | 2021-11 |
| unknown | Tier 2 | 1 | 4.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 2 | bsc | unit-226236 (2 proxies) | 2 deployments: bsc `0x3282d2...8cd3cd`; bsc `0xf1be8e...16d421` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 3 | bsc | unit-226237 (3 proxies) | 3 deployments: bsc `0x158da8...951e59`; bsc `0xd7d069...fc0063`; bsc `0xff6934...b147eb` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-226244 | `0x7c9e73...87592f` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 8 | bsc | unit-226233 (8 proxies) | 8 deployments: bsc `0x02da70...aa7442`; bsc `0x11362e...a9db40`; bsc `0x262de1...1b59b2`; bsc `0x3b4fbb...0fa4dc`; bsc `0x426bdf...c361f3`; bsc `0x6a3487...2a55f9`; bsc `0x92110a...258fe6`; bsc `0xb76ed4...aeaf84` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-226224 | `0x513813...e22cec` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-226232 | `0xd19d62...029ebd` | ✅ Audited |
| FairLaunch | unknown | project_anchor | own_supporting | 0 | bsc | unit-226230 | `0xa625ab...489a8f` | ✅ Audited |
| GrazingRange | unknown | project_anchor | own_supporting | 1 | bsc | unit-226241 | `0x6bf5b3...feb343` | ✅ Audited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-226225 | `0x5379f3...94f452` | ✅ Audited |
| Shield | unknown | project_anchor | own_supporting | 0 | bsc | unit-226221 | `0x1963f8...1b4656` | ✅ Audited |
| StronkAlpaca | unknown | project_anchor | own_supporting | 0 | bsc | unit-226228 | `0x6f695b...6ce7a7` | ✅ Audited |
| Timelock | governance | project_anchor | own_supporting | 0 | bsc | unit-226222 | `0x2d5408...1d0a59` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultAip25 | core_logic | project_anchor | own_supporting | 2 | bsc | unit-226239 (2 proxies) | 2 deployments: bsc `0x08fc9b...1c24e7`; bsc `0xbff4a3...723afe` | ⚠️ Unaudited |
| EmissionForwarder | unknown | project_anchor | own_supporting | 1 | bsc | unit-226240 | `0x4f4054...c1cf43` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-226235 | `0x18f59e...475d01` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226220 | `0x083c02...e58de7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226226 | `0x60bc40...514105` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226227 | `0x63c60b...dc4412` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226229 | `0xa33ff7...50ce58` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226231 | `0xd193b3...21c4bf` | ⚠️ Unaudited |
| Multicall | periphery | project_anchor | own_supporting | 0 | bsc | unit-226223 | `0x41263c...90e76c` | ⚠️ Unaudited |
| ProxyToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-226238 | `0x50e574...1ddab7` | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-226234 | `0x08b5a9...5afc7e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-226242 | `0x800933...1e26d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-226243 | `0xc4ed26...5d938b` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/add-collateral-routine/PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | n/a | matched | 1 | 1 | 0 | 3 | n/a |
| [Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [alpaca_v1.0-signed.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/alpaca_v1.0-signed.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/mdex-integration/Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/optimized-worker/Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/oracle/Smart%20Contract%20Security%20Audit%20Report%20-%20Alpaca%20Finance%20Oracle.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/partial-close/PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [CertiK Security Assessment for Alpaca Finance 1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/CertiK%20Security%20Assessment%20for%20Alpaca%20Finance%201.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | matched | 6 | 2 | 0 | 19 | n/a |
| [PeckShield-Audit-Report-Alpaca-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/PeckShield-Audit-Report-Alpaca-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | address | matched | 10 | 5 | 0 | 26 | high |
| [Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/spooky-minifl/Inspex_AUDIT2022008_Alpaca%20Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [SlowMist_Audit_Report_-_AlpacaStablecoin.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/SlowMist_Audit_Report_-_AlpacaStablecoin.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | n/a | matched | 2 | 0 | 0 | 44 | n/a |
| [PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf](https://github.com/alpaca-finance/alpies-contract/blob/main/audits/PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5761] PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf — matched: No reason recorded
- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf — no match: Extracted 7 contracts from scope tables in sections 2.2 (pages 3-5). Date from cover page: Jun 14, 2021.
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf — no match: Audit report for Alpaca Finance's CakeMaxiWorker and strategies. Scope explicitly mentions 'CakeMaxi Worker and its associated strategies'. Two contracts identified from findings: CakeMaxiWorker and CakeMaxiWorkerConfig.
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf — no match: Scope explicitly lists CakeMaxiWorker.sol, SingleAssetWorkerConfig.sol, and all strategies under a folder. The audit date is given as 2021.06.11 in the audit result table.
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf — no match: Contracts extracted from scope description and findings targets. Audit date from cover page and version history.
- [5766] alpaca_v1.0-signed.pdf — no match: Extracted from report title page and scope section. Contracts explicitly mentioned in scope and findings.
- [5767] Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf — matched: Only one contract in scope: GrazingRange.sol. Date from cover page: '5 May 2021'.
- [5768] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf — matched: Only one contract, GrazingRange, is in scope. Audit date from 'Audit Date' column in Audit Result table: 2021.05.04 - 2021.05.06, using end date.
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf — no match: All 7 contracts listed in the scope section (Section 2.2) were extracted. The audit date is from the cover page: 'Date Issued: Sep 24, 2021'.
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf — no match: Three contracts explicitly listed in scope table. Audit date from cover page.
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf — no match: Two contracts explicitly listed in scope: OracleMedianizer and ChainLinkPriceOracle. Audit date from audit result table: 2021.07.08 - 2021.07.12, using end date.
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings and report description.
- [5773] CertiK Security Assessment for Alpaca Finance 1.pdf — matched: No reason recorded
- [5774] PeckShield-Audit-Report-Alpaca-v1.0.pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings targets and the deployment table.
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf — no match: All 9 contracts explicitly listed in scope table on page 3-4. Audit date from cover page: Feb 8, 2022.
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf — no match: All contracts listed in the Scope section (2.2) of the audit report, both initial audit and reassessment, were extracted. The audit date is from the cover page: 'Date Issued: Nov 15, 2021'.
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf — no match: Extracted contract names from findings targets and scope description. Audit date from cover page.
- [5778] SlowMist_Audit_Report_-_AlpacaStablecoin.pdf — matched: No reason recorded
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf — no match: Audit report for Alpies NFT collection. Scope includes Alpies, AscendingStepModel, and DescendingStepModel contracts. Audit date is October 18, 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | ConfigurableInterestVaultConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x3282d2...8cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xf1be8e...16d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-21 was 41d from audit; next candidate 98d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | WorkerConfig | unmatched — not counted | — | — | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | CakeMaxiWorker | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | CakeMaxiWorkerConfig | unmatched — not counted | — | Listed in scope table for Round 1 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyAddBaseTokenOnly | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyAddBaseWithFarm | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyLiquidate | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyWithdrawMinimizeTrading | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | Listed in scope table for Round 2 | no |
| PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf | CakeMaxiWorker | unmatched — not counted | — | Listed as target in findings (PVE-001) and mentioned in scope description. | no |
| PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf | CakeMaxiWorkerConfig | unmatched — not counted | — | Listed as target in findings (PVE-002) and mentioned in scope description. | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | CakeMaxiWorker | unmatched — not counted | — | listed in scope and analyzed in report | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | listed in scope and analyzed in report | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unmatched — not counted | — | all strategies under folder listed in scope | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVault | unmatched — not counted | — | mentioned as target in scope and findings | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralPancakeWorker02 | unmatched — not counted | — | listed as associated worker in Section 1.1 | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralMdexWorker02 | unmatched — not counted | — | listed as associated worker in Section 1.1 | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVaultConfig | unmatched — not counted | — | mentioned in finding PVE-001 as target | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVaultGateway | unmatched — not counted | — | mentioned in finding PVE-002 as target | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralVault | unmatched — not counted | — | listed in scope and findings | no |
| alpaca_v1.0-signed.pdf | PriceHelper | unmatched — not counted | — | mentioned in finding 2.2.3 | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralPancakeWorker02 | unmatched — not counted | — | mentioned in finding 2.3.2 | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralMdexWorker02 | unmatched — not counted | — | mentioned in finding 2.3.2 | no |
| Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf | GrazingRange | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x6bf5b3...feb343` — deployed 2021-05-05 14:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf | GrazingRange | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x6bf5b3...feb343` — deployed 2021-05-05 14:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexWorker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyAddBaseTokenOnly | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyWithdrawMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyAddTwosidesOptimal | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyPartialCloseMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | PCSV2Worker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | WaultSwapWorker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | CakeMaxiWorker02 | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf | OracleMedianizer | unmatched — not counted | — | listed in scope section with commit hash | no |
| Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in scope section with commit hash | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | WaultSwapRestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | AlpacaMath | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | AlpacaToken | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | ConfigurableInterestVaultConfig | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | DebtToken | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x6a3487...2a55f9` — deployed 2021-03-23 10:16:31+03 — liveness: live (current_address_book_code)<br>DebtToken (alternative) `0xd19d62...029ebd` — deployed 2021-02-26 14:28:40+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x3b4fbb...0fa4dc` — deployed 2021-05-26 04:58:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x426bdf...c361f3` — deployed 2022-01-07 10:45:00+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x92110a...258fe6` — deployed 2021-04-06 08:36:01+03 — liveness: live (current_address_book_code)<br>DebtToken (alternative) `0x513813...e22cec` — deployed 2021-02-26 14:20:37+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x262de1...1b59b2` — deployed 2021-05-27 13:41:54+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x02da70...aa7442` — deployed 2021-03-23 10:20:46+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xb76ed4...aeaf84` — deployed 2021-06-21 19:24:47+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0x11362e...a9db40` — deployed 2021-04-25 09:44:37+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 6d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab...489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | FairLaunchV2 | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | IbTokenRouter | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | LinearRelease | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | PancakeswapWorker | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SafeToken | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Shield | own contract | Shield (selected) `0x1963f8...1b4656` — deployed 2021-03-29 12:09:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SimplePriceOracle | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SimpleVaultConfig | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyAddBaseTokenOnly | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyAddTwoSidesOptimal | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyLiquidate | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyWithdrawMinimizeTrading | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StronkAlpaca | own contract | StronkAlpaca (selected) `0x6f695b...6ce7a7` — deployed 2021-03-12 18:49:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StronkAlpacaRelayer | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Timelock | own contract | Timelock (selected) `0x2d5408...1d0a59` — deployed 2021-02-26 13:52:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | TripleSlopeModel | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x3282d2...8cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xf1be8e...16d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 6d from audit; next candidate 51d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | WNativeRelayer | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | WorkerConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x3282d2...8cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xf1be8e...16d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 36d from audit; next candidate 93d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | CollateralLocker | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | LiquidityLocker | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | LoanLib | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseTokenOnly | unmatched — not counted | — | Listed as target in findings PVE-005, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddTwoSidesOptimal | unmatched — not counted | — | Mentioned in findings PVE-005, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyWithdrawMinimizeTrading | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAllBNBOnly | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyLiquidate | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | PancakeswapWorker | unmatched — not counted | — | Listed as target in findings PVE-005, PVE-006, PVE-010 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibTokenRouter | unmatched — not counted | — | Listed as target in findings PVE-006, PVE-007, PVE-008 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab...489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | FairLaunchV2 | unmatched — not counted | — | Mentioned in findings PVE-012, PVE-013 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | AlpacaToken | unmatched — not counted | — | Listed as target in finding PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | SimplePriceOracle | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | Timelock | own contract | Timelock (selected) `0x2d5408...1d0a59` — deployed 2021-02-26 13:52:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ProxyAdmin | own contract | ProxyAdmin (selected) `0x5379f3...94f452` — deployed 2021-02-26 14:00:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7c9e73...87592f` — deployed 2021-02-26 14:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Config | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Config Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xd7d069...fc0063` — deployed 2021-02-26 14:20:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Config | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Config Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ALPACA | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ALPACA-WBNB LP | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | WBNB | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibBNB | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xd7d069...fc0063` — deployed 2021-02-26 14:20:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | debtibBNB | own contract | DebtToken (selected) `0x513813...e22cec` — deployed 2021-02-26 14:20:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibBUSD | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7c9e73...87592f` — deployed 2021-02-26 14:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | debtibBUSD | own contract | DebtToken (selected) `0xd19d62...029ebd` — deployed 2021-02-26 14:28:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | SimplePriceOracle Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseOnly | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseOnly Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyLiquidate Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | MiniFL | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | Rewarder1 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookyWorker03 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyAddBaseTokenOnly | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyAddTwoSidesOptimal | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyPartialCloseLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyPartialCloseMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyWithdrawMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | FlashMintModule | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | GetPositions | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PositionHandler | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaOraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | IbTokenPriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | SimplePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StrictAlpacaOraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | DexPriceOracle | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaStablecoinProxyActions | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaAuth | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaNote | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWallet | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletCache | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletFactory | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletRegistry | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | IbTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AuthTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StablecoinAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | TokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AccessControlConfig | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | CollateralPoolConfig | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaStablecoin | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | BookKeeper | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | LiquidationEngine | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ShowStopper | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StabilityFeeCollector | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StableSwapModule | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | SystemDebtEngine | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | BookKeeper | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AlpacaStableCoin | unmatched — not counted | — | Target in findings PVE-002, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | TokenAdapter | unmatched — not counted | — | Target in findings PVE-003, PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | Target in findings PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | IbTokenAdapter | unmatched — not counted | — | Target in findings PVE-005, PVE-006, PVE-010, PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | LiquidationEngine | unmatched — not counted | — | Target in findings PVE-005, PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | ShowStopper | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AuthTokenAdapter | unmatched — not counted | — | Target in finding PVE-008 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AccessControlConfig | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-007 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | SystemDebtEngine | unmatched — not counted | — | Target in finding PVE-011 | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AccessControlConfig | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AccessControlUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaAuth | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaAuthEvents | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaNote | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaOraclePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaStablecoin | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaStablecoinProxyActions | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaToken | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AuthTokenAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | BookKeeper | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | CollateralPoolConfig | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Context | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ContextUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | DexPriceOracle | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ERC20 | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab...489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FlashLoanReceiverBase | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FlashMintModule | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | GetPositions | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | IbTokenAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | IbTokenPriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Initializable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Ownable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | OwnableUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PausableUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PositionHandler | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PositionManager | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PriceOracle | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWallet | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletCache | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletFactory | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletRegistry | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ReentrancyGuardUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Shield | own contract | Shield (selected) `0x1963f8...1b4656` — deployed 2021-03-29 12:09:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ShowStopper | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | SimplePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StabilityFeeCollector | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StableSwapModule | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StablecoinAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StrictAlpacaOraclePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | SystemDebtEngine | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | TokenAdapter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | Alpies | unmatched — not counted | — | Target of finding PVE-002; main contract of the protocol | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | AscendingStepModel | unmatched — not counted | — | Target of finding PVE-001; mentioned in code listing | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | DescendingStepModel | unmatched — not counted | — | Mentioned as sharing the same issue as AscendingStepModel in PVE-001 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4f4054...c1cf43` | EmissionForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x083c02...e58de7` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x60bc40...514105` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63c60b...dc4412` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa33ff7...50ce58` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd193b3...21c4bf` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x50e574...1ddab7` | ProxyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 184 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=15, medium=1
- Match method counts: address=6, temporal_name=4, unique_name=9

Zero-match audit list:

- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf
- [5766] alpaca_v1.0-signed.pdf
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
