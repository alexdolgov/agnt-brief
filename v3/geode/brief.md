# Agentic Audit Brief: Geode

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

- Project: Geode (`geode`)
- Website: [https://www.geode.fi/](https://www.geode.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, goerli
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $346,887.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Geode in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 12 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0220ba...e9b72b` | ⚠️ Unaudited |
| DataStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb25a42...fdc570` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x115fe1...a07e63` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4948d8...2284fa` | ⚠️ Unaudited |
| ERC20InterfaceUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08b201...fa4142` | ⚠️ Unaudited |
| gAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cfbdc...27b24b` | ⚠️ Unaudited |
| GeodeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76e42b...59fa5b` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71b0cd...0dbe8c` | ⚠️ Unaudited |
| StakeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ea723...692332` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x577a73...355f09` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29be47...702c09` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-240960 | `0xb0334f...407083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0334f...407083` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022-10-Diligence-Audit-Report-v1.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2FgXfJDYahjqo7b24xjtqY%2F2022-10-geodefi-audit-v1.pdf) | Consensys Diligence | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2023-03-Diligence-Audit-Response.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2FnzbntAjkNqkgkZNowPAe%2F2023-03-Diligence-Audit-Response-2.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 37 | high |
| [2023-03-Internal-Audit-Report.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2F6wmagkLikYak3zZ8uTki%2F2023-03-Internal-Audit-Report.pdf) | Internal | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-05-Diligence-Audit-Report-v2.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2Fh2dsHDg3kte5W3nIkXCY%2F2023-05-geode-staking-v2-audit.pdf) | Consensys Diligence | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2023-07-Shieldify-Audit-Report.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2Fhmp5fqU9OPtw3tYVv3Iu%2F2023-07-Shieldify-Audit-Report.pdf) | Shieldify | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2F8Cpu7l9588XuD6hPRvO6%2F2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf) | Consensys Diligence | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20424] 2022-10-Diligence-Audit-Report-v1.pdf — no match: Extracted 16 contract names from the scope table in Appendix 2. Audit date from executive summary: review conducted Nov 1 to Dec 9, 2022, so end date is Dec 9, 2022.
- [20425] 2023-03-Diligence-Audit-Response.pdf — no match: Extracted from the Audit Findings scope table and the Summary table. The audit date is from the statement 'This version of the report is finalized on March 22, 2023.'
- [20426] 2023-03-Internal-Audit-Report.pdf — no match: Extracted 8 contracts from the Files in Scope appendix. Audit date is the end date of the audit period (March 6 to March 31, 2023).
- [20427] 2023-05-Diligence-Audit-Report-v2.pdf — no match: Only two libraries are in scope: OracleExtensionLib.sol and StakeModuleLib.sol. The audit date is May 2023, interpreted as end of month.
- [20428] 2023-07-Shieldify-Audit-Report.pdf — no match: Extracted 17 contract names from the scope table in section 5.2. Audit date from cover page.
- [20429] 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf — no match: Scope section lists three files: WithdrawalModule.sol, WithdrawalModuleLib.sol, WithdrawalContract.sol. Audit date is October 2023, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-10-Diligence-Audit-Report-v1.pdf | MiniGovernance | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | Portal | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | gETH | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | ERC20InterfacePermitUpgradable | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | ERC20InterfaceUpgradable | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | ERC1155SupplyMinterPauser | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | DataStoreUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | GeodeUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | MaintainerUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | OracleUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | StakeUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | AmplificationUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-Diligence-Audit-Response.pdf | MiniGovernance | unmatched — not counted | — | listed in scope table with SHA1 hash 3ef6d711e | no |
| 2023-03-Diligence-Audit-Response.pdf | Portal | unmatched — not counted | — | listed in scope table with SHA1 hash 3e2fddb0a | no |
| 2023-03-Diligence-Audit-Response.pdf | gETH | unmatched — not counted | — | listed in scope table with SHA1 hash 0c149c8ee | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC20InterfacePermitUpgradable | unmatched — not counted | — | listed in scope table with SHA1 hash 1aa5cf595 | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC20InterfaceUpgradable | unmatched — not counted | — | listed in scope table with SHA1 hash 8bf2ca0ab | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC1155SupplyMinterPauser | unmatched — not counted | — | listed in scope table with SHA1 hash d228841d7 | no |
| 2023-03-Diligence-Audit-Response.pdf | DataStoreUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash 680b86043 | no |
| 2023-03-Diligence-Audit-Response.pdf | GeodeUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash db36c1cd3 | no |
| 2023-03-Diligence-Audit-Response.pdf | MaintainerUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash f171c4ea1 | no |
| 2023-03-Diligence-Audit-Response.pdf | OracleUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash 7b606059b | no |
| 2023-03-Diligence-Audit-Response.pdf | StakeUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash dd33fa886 | no |
| 2023-03-Diligence-Audit-Response.pdf | LPToken | unmatched — not counted | — | listed in scope table with SHA1 hash 66124ef6d | no |
| 2023-03-Diligence-Audit-Response.pdf | Swap | unmatched — not counted | — | listed in scope table with SHA1 hash ca1fad6d3 | no |
| 2023-03-Diligence-Audit-Response.pdf | AmplificationUtils | unmatched — not counted | — | listed in scope table with SHA1 hash f5afa0fb6 | no |
| 2023-03-Diligence-Audit-Response.pdf | MathUtils | unmatched — not counted | — | listed in scope table with SHA1 hash 897743675 | no |
| 2023-03-Diligence-Audit-Response.pdf | SwapUtils | unmatched — not counted | — | listed in scope table with SHA1 hash 2736852fd | no |
| 2023-03-Diligence-Audit-Response.pdf | globals | unmatched — not counted | — | mentioned as added file in summary table and in section 1 | no |
| 2023-03-Diligence-Audit-Response.pdf | WithdrawalContract | unmatched — not counted | — | listed in summary table as added contract and in scope table | no |
| 2023-03-Diligence-Audit-Response.pdf | DepositContractUtilsLib | unmatched — not counted | — | listed in summary table as refactored library | no |
| 2023-03-Diligence-Audit-Response.pdf | IgETHInterface | unmatched — not counted | — | listed in summary table as added interface | no |
| 2023-03-Diligence-Audit-Response.pdf | IGeodeModule | unmatched — not counted | — | listed in summary table as added interface | no |
| 2023-03-Diligence-Audit-Response.pdf | IWhiteList | unmatched — not counted | — | listed in summary table as added interface | no |
| 2023-03-Diligence-Audit-Response.pdf | IPortal | unmatched — not counted | — | listed in summary table as refactored interface | no |
| 2023-03-Diligence-Audit-Response.pdf | ILPToken | unmatched — not counted | — | listed in summary table as refactored interface | no |
| 2023-03-Diligence-Audit-Response.pdf | ISwap | unmatched — not counted | — | listed in summary table as cleaned up interface | no |
| 2023-03-Diligence-Audit-Response.pdf | OwnerPausableUpgradeable | unmatched — not counted | — | listed in summary table as helper with no changes | no |
| 2023-03-Diligence-Audit-Response.pdf | TestMathUtils | unmatched — not counted | — | listed in summary table as helper with no changes | no |
| 2023-03-Diligence-Audit-Response.pdf | TestSwapReturnValues | unmatched — not counted | — | listed in summary table as helper with no changes | no |
| 2023-03-Diligence-Audit-Response.pdf | TestDepositContractUtils | unmatched — not counted | — | listed in summary table as refactored helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestDataStoreUtils | unmatched — not counted | — | listed in summary table as improved helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestGlobals | unmatched — not counted | — | listed in summary table as added helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestGeodeUtils | unmatched — not counted | — | listed in summary table as removed helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestStakeUtils | unmatched — not counted | — | listed in summary table as removed helper | no |
| 2023-03-Diligence-Audit-Response.pdf | WhiteListHelper | unmatched — not counted | — | listed in summary table as added helper | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC1155ReceiverMock | unmatched — not counted | — | listed in summary table as refactored helper | no |
| 2023-03-Diligence-Audit-Response.pdf | nonERC1155Receiver | unmatched — not counted | — | listed in summary table as refactored helper | no |
| 2023-03-Diligence-Audit-Response.pdf | DepositContract | unmatched — not counted | — | listed in summary table as removed helper | no |
| 2023-03-Internal-Audit-Report.pdf | gETH | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | Portal | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | globals | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | DataStoreUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | GeodeUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | OracleUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | StakeUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | withdrawalContract | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-05-Diligence-Audit-Report-v2.pdf | OracleExtensionLib | unmatched — not counted | — | listed in scope table | no |
| 2023-05-Diligence-Audit-Report-v2.pdf | StakeModuleLib | unmatched — not counted | — | listed in scope table | no |
| 2023-07-Shieldify-Audit-Report.pdf | gETH | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | ERC20PermitMiddleware | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | ERC20Middleware | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | DataStoreModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | DataStoreModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | GeodeModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | GeodeModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | DepositContractLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | StakeModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | OracleExtensionLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | StakeModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | LiquidityModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | AmplificationLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | LiquidityModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | WithdrawalContract | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | Portal | unmatched — not counted | — | listed in scope | no |
| 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf | WithdrawalModule | unmatched — not counted | — | listed in scope | no |
| 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf | WithdrawalModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf | WithdrawalContract | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [20424] 2022-10-Diligence-Audit-Report-v1.pdf
- [20425] 2023-03-Diligence-Audit-Response.pdf
- [20426] 2023-03-Internal-Audit-Report.pdf
- [20427] 2023-05-Diligence-Audit-Report-v2.pdf
- [20428] 2023-07-Shieldify-Audit-Report.pdf
- [20429] 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf

Fork inheritance lineage and inherited audits are included when available.
