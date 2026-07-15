# Agentic Audit Brief: SynFutures

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SynFutures (`synfutures`)
- Website: [https://www.synfutures.com/](https://www.synfutures.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, bsc, ethereum
- Contract surface: 48 unique implementations (49 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,639,090.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SynFutures. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, blast, bsc, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (2), layerzero (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04d72f...330749`, chain 8453)
- UnnamedContract (`0x0b54c5...bf4d1d`, chain 8453)
- UnnamedContract (`0x116752...d1c8b4`, chain 8453)
- UnnamedContract (`0x200e09...36fa6c`, chain 8453)
- UnnamedContract (`0x206a0a...1c61df`, chain 8453)
- UnnamedContract (`0x2c2449...2e6ed6`, chain 8453)
- UnnamedContract (`0x32bdb0...a51425`, chain 8453)
- UnnamedContract (`0x3737b9...12b0c2`, chain 8453)
- UnnamedContract (`0x38c4c6...ab4a81`, chain 8453)
- UnnamedContract (`0x3dc806...f6ed9d`, chain 8453)
- UnnamedContract (`0x46d7ea...ae383b`, chain 8453)
- UnnamedContract (`0x53aafe...3fb569`, chain 8453)
- UnnamedContract (`0x53e90a...3930ee`, chain 8453)
- UnnamedContract (`0x55de64...6e0e2d`, chain 8453)
- UnnamedContract (`0x620d1d...cd3952`, chain 8453)
- UnnamedContract (`0x62ba13...ab18b0`, chain 8453)
- UnnamedContract (`0x62d010...4f4faa`, chain 8453)
- UnnamedContract (`0x75da1f...aff14f`, chain 8453)
- UnnamedContract (`0x7c83c8...394ded`, chain 8453)
- UnnamedContract (`0x8065b6...610912`, chain 8453)
- UnnamedContract (`0x899194...cf373b`, chain 8453)
- UnnamedContract (`0x89c2e7...661a50`, chain 8453)
- UnnamedContract (`0x8f7692...1e81cd`, chain 8453)
- UnnamedContract (`0x9c57b8...dce0b5`, chain 8453)
- UnnamedContract (`0x9f824a...a441db`, chain 8453)
- UnnamedContract (`0xb146f1...1488dc`, chain 8453)
- UnnamedContract (`0xb41303...e4b6dd`, chain 8453)
- UnnamedContract (`0xb63902...fea172`, chain 8453)
- UnnamedContract (`0xbe0f37...0bd87e`, chain 8453)
- UnnamedContract (`0xdb166a...b2a830`, chain 8453)
- UnnamedContract (`0xe73d81...dcf8aa`, chain 8453)
- UnnamedContract (`0xec6c44...e71460`, chain 8453)
- UnnamedContract (`0xf8559f...f9a568`, chain 8453)
- UnnamedContract (`0xfdc1bb...1ce4ba`, chain 8453)
- UnnamedContract (`0x03f2e7...e2816c`, chain 81457)
- UnnamedContract (`0x0e1b87...eb53d8`, chain 81457)
- UnnamedContract (`0x245bb4...fabb7a`, chain 81457)
- UnnamedContract (`0x543056...cabea7`, chain 81457)
- UnnamedContract (`0x730d6a...6ac194`, chain 81457)
- UnnamedContract (`0x99660f...f9c9c6`, chain 81457)
- UnnamedContract (`0xb0ceff...0ad286`, chain 81457)
- UnnamedContract (`0xb85b77...32c751`, chain 81457)
- UnnamedContract (`0xeb9e88...b20ff8`, chain 81457)
- SynFuturesToken (`0x6e15a5...0252f9`, chain 1)
- SynFuturesTokenOFT (`0xc9ccbd...04d3bb`, chain 56)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/58 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 44 of 48 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 48
- Raw deployments: 49
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SynFuturesToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257832 | `0x6e15a5...0252f9` | ⚠️ Unaudited |
| SynFuturesTokenOFT | token | project_anchor | own_supporting | 0 | bsc | unit-257839 | `0xc9ccbd...04d3bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x00e2dd97927263023002c544cd0b0d138b4f24b9) | unknown | project_anchor | own_supporting | 1 | blast | unit-257879 | `0x730d6a...6ac194` | ❓ Unverified |
| Proxy (impl: 0x10b4c55046d1ca88d605feea3415d1d296445fc3) | unknown | project_anchor | own_supporting | 1 | base | unit-257882 | `0xdb166a...b2a830` | ❓ Unverified |
| Proxy (impl: 0x1b91f44e8c5d584839000111392095785914e621) | unknown | project_anchor | own_supporting | 1 | base | unit-257883 | `0x8f7692...1e81cd` | ❓ Unverified |
| Proxy (impl: 0x1e43f25ff6f6cf888b0a83f0ca5fcc76f1c95e00) | unknown | project_anchor | own_supporting | 1 | base | unit-257884 | `0xbe0f37...0bd87e` | ❓ Unverified |
| Proxy (impl: 0x228f51f5f6ae1349674c2d5c37e1caa111f14455) | unknown | project_anchor | own_supporting | 1 | base | unit-257885 | `0x0b54c5...bf4d1d` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | project_anchor | own_supporting | 2 | base | unit-257886 (2 proxies) | 2 deployments: base `0x89c2e7...661a50`; base `0xfdc1bb...1ce4ba` | ❓ Unverified |
| Proxy (impl: 0xb7ce7bd01a05b020058bc11be34d988edcfe42af) | unknown | project_anchor | own_supporting | 1 | base | unit-257887 | `0xe73d81...dcf8aa` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | unknown | project_anchor | own_supporting | 1 | blast | unit-257880 | `0x245bb4...fabb7a` | ❓ Unverified |
| Proxy (impl: 0xd046a47e0c3fa89877a0aebec014e90fa43ba439) | unknown | project_anchor | own_supporting | 1 | blast | unit-257881 | `0xb85b77...32c751` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257852 | `0x04d72f...330749` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257853 | `0x116752...d1c8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257854 | `0x200e09...36fa6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257855 | `0x206a0a...1c61df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257856 | `0x2c2449...2e6ed6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257857 | `0x32bdb0...a51425` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257858 | `0x3737b9...12b0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257859 | `0x38c4c6...ab4a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257860 | `0x3dc806...f6ed9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257861 | `0x46d7ea...ae383b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257862 | `0x53aafe...3fb569` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257863 | `0x53e90a...3930ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257864 | `0x55de64...6e0e2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257865 | `0x620d1d...cd3952` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257866 | `0x62ba13...ab18b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257867 | `0x62d010...4f4faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257868 | `0x75da1f...aff14f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257869 | `0x7c83c8...394ded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257870 | `0x8065b6...610912` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257871 | `0x899194...cf373b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257872 | `0x9c57b8...dce0b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257873 | `0x9f824a...a441db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257874 | `0xb146f1...1488dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257875 | `0xb41303...e4b6dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257876 | `0xb63902...fea172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257877 | `0xec6c44...e71460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257878 | `0xf8559f...f9a568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257840 | `0x03f2e7...e2816c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0a44ec...476c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257841 | `0x0e1b87...eb53d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257843 | `0x543056...cabea7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257847 | `0x99660f...f9c9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9ba497...1ec92d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257849 | `0xb0ceff...0ad286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc13517...6aa3d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-257850 | `0xeb9e88...b20ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xebfadd...b1e838` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.04.02%20-%20Final%20-%20Anchored%20Collaborative%20Audit%20Report%201775117748.pdf) | Sherlock | Contest | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11701] 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf — no match: All 23 contracts listed in the scope section of the audit report. Date range March 10-March 23, 2026; end date used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncBrokerGateway | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncCashier | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncOrderSettler | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncStockExchange | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncStockRouter | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | CashierBase | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | CashSettlerBase | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | OrderSettlerBase | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | StockExchangeBase | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | StockRouterBase | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncBridgeAdapterAcross | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncBridgeAdapterCctp | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncCompliance | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | MondayCashier | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | MondayOrderSettler | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | MondayStockExchange | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | MondayStockRouter | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | CashSettler | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncStockTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | AncStockToken | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | Create3Deployer | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | LibFundTransfer | unmatched — not counted | — | listed in scope | no |
| 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf | ProxyAdmin2Step | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6e15a5...0252f9` | SynFuturesToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc9ccbd...04d3bb` | SynFuturesTokenOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [11701] 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf

Fork inheritance lineage and inherited audits are included when available.
