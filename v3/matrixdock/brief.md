# Agentic Audit Brief: MatrixDock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 13 (0 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: MatrixDock (`matrixdock`)
- Website: [https://www.matrixdock.com/home](https://www.matrixdock.com/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, hashkey, polygon
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $82,213,089.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MatrixDock. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, hashkey, polygon. Structural roles: 2 infra, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2), chainlinkaggregator (1), ownable (1)
- Frameworks: openzeppelin (3), chainlink (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2103e8...ea8682`, chain 1)
- UnnamedContract (`0x530824...45b44a`, chain 1)
- UnnamedContract (`0x67dcc9...58c7ee`, chain 1)
- UnnamedContract (`0xb2624f...bbf72e`, chain 1)
- UnnamedContract (`0xca2418...9ae02b`, chain 1)
- UnnamedContract (`0x23ae4f...656028`, chain 56)
- UnnamedContract (`0xe310db...70298b`, chain 56)
- UnnamedContract (`0xfc9bd2...ea2ea2`, chain 56)
- UnnamedContract (`0x59c734...5417cc`, chain 137)
- UnnamedContract (`0xa7e229...801081`, chain 137)
- UnnamedContract (`0x257721...47d15a`, chain 177)
- UnnamedContract (`0x318864...7047f5`, chain 177)
- UnnamedContract (`0x5a3917...fbea67`, chain 177)
- FallbackReserveFeed (`0x20377b...5e28ab`, chain 1)
- MTokenMain (`0x123ffe...58d9e1`, chain 1)
- MTokenMessenger (`0x0be916...8f68c5`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 16 of 37 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 2 unknown
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
| BullionEnumerableNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62bee1...cc368c` | ⚠️ Unaudited |
| BullionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a6dd...d2f9dc` | ⚠️ Unaudited |
| CCWSTBTMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a918b...0bbf18` | ⚠️ Unaudited |
| CustomerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0978aa...e3f004` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0630f6...19c755` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0654cf...39ec76` | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246323 | `0x20377b...5e28ab` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344363...1a0e2f` | ⚠️ Unaudited |
| MTokenMain | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246337 | `0x123ffe...58d9e1` | ⚠️ Unaudited |
| MTokenMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ce2a...028c7e` | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102874...5fb878` | ⚠️ Unaudited |
| MTokenMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246338 | `0x0be916...8f68c5` | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb350d8...a6386f` | ⚠️ Unaudited |
| MTokenMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd20e...296cef` | ⚠️ Unaudited |
| MTokenSide | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d0ba3...245010` | ⚠️ Unaudited |
| OKXSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08190f...25c8ee` | ⚠️ Unaudited |
| STBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24f5b8...0fc948` | ⚠️ Unaudited |
| StbtTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb8f1...7b6f47` | ⚠️ Unaudited |
| STBTv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0868...5a37aa` | ⚠️ Unaudited |
| TERPOC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2022be...6a877d` | ⚠️ Unaudited |
| UpgradeableSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a67b...60528f` | ⚠️ Unaudited |
| WSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288a80...bc4c83` | ⚠️ Unaudited |
| XAUMDCAMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3681af...3289e2` | ⚠️ Unaudited |
| XAUMDCARouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31b19c...f57775` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246324 | `0x2103e8...ea8682` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246325 | `0x530824...45b44a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246326 | `0x67dcc9...58c7ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246327 | `0xb2624f...bbf72e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246328 | `0xca2418...9ae02b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246334 | `0x23ae4f...656028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246335 | `0xe310db...70298b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246336 | `0xfc9bd2...ea2ea2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246329 | `0x59c734...5417cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246330 | `0xa7e229...801081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-246331 | `0x257721...47d15a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-246332 | `0x318864...7047f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-246333 | `0x5a3917...fbea67` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Matrixdock-STBT - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/Matrixdock-STBT%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Minter - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/Minter%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TProtocol audit report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/TProtocol%20audit%20report.pdf) | TProtocol | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [WSTBT - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/WSTBT%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blocksec_matrixdock_v1.0-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixdock_v1.0-signed.pdf) | BlockSec | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_matrixdock_v1.1-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixdock_v1.1-signed.pdf) | BlockSec | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_matrixport_stbt_v1.1-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixport_stbt_v1.1-signed.pdf) | BlockSec | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [he-yue-shen-ji.md (also discovered via alternate URL)](https://matrixdock.gitbook.io/matrixdock-docs/huang-jin-dai-bi-xaum/zhi-neng-he-yue/he-yue-shen-ji.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [contract-audit.md (also discovered via alternate URL)](https://matrixdock.gitbook.io/matrixdock-docs/english/gold-token-xaum/smart-contract/contract-audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20819] Matrixdock-STBT - Zellic Audit Report.pdf — no match: Scope section 2.3 explicitly lists three contracts: STBT, UpgradeableSTBT, StbtTimelockController. Audit date is on cover page: February 7, 2023.
- [20820] Minter - Zellic Audit Report.pdf — no match: Only one contract (Minter) is in scope. The report also mentions STBT and timelock contracts but they are not listed in scope.
- [20821] TProtocol audit report.pdf — no match: Contracts explicitly listed in scope section of the audit report.
- [20822] WSTBT - Zellic Audit Report.pdf — no match: Only one contract (WSTBT) is in scope. STBT is mentioned as an underlying token but not in scope.
- [20823] blocksec_matrixdock_v1.0-signed.pdf — no match: The audit report clearly defines the scope as Minter.sol and WSTBT.sol contracts. The date is from the cover page.
- [20824] blocksec_matrixdock_v1.1-signed.pdf — no match: Scope explicitly lists Minter.sol and WSTBT.sol as the only contracts audited.
- [20825] blocksec_matrixport_stbt_v1.1-signed.pdf — no match: Scope section 1.1 explicitly states 'target of this audit is the STBT Contracts'. Two contracts identified: STBT and StbtTimelockController.
- [20826] he-yue-shen-ji.md — no match: The provided text only lists audit report files for different chains (EVM, SUI, Solana) but does not include the actual audit report content. No contract names or scope details are present.
- [20829] contract-audit.md — no match: The document is an index page listing audit reports for different chains (EVM, SUI, Solana) but does not contain the actual audit reports or any contract names in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Matrixdock-STBT - Zellic Audit Report.pdf | STBT | unmatched — not counted | — | listed in scope section 2.3 | no |
| Matrixdock-STBT - Zellic Audit Report.pdf | UpgradeableSTBT | unmatched — not counted | — | listed in scope section 2.3 | no |
| Matrixdock-STBT - Zellic Audit Report.pdf | StbtTimelockController | unmatched — not counted | — | listed in scope section 2.3 | no |
| Minter - Zellic Audit Report.pdf | Minter | unmatched — not counted | — | Scope section lists 'Minter Contract' as target | no |
| TProtocol audit report.pdf | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | iUSTP | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | LiquidatePool | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | migrator | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | rUSTP | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | rUSTPool | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | USTP | unmatched — not counted | — | listed in scope | no |
| WSTBT - Zellic Audit Report.pdf | WSTBT | unmatched — not counted | — | Scope section lists WSTBT contract; threat model module is WSTBT.sol | no |
| blocksec_matrixdock_v1.0-signed.pdf | Minter | unmatched — not counted | — | Section 1.1 explicitly states the audit covers Minter.sol and WSTBT.sol. | no |
| blocksec_matrixdock_v1.0-signed.pdf | WSTBT | unmatched — not counted | — | Section 1.1 explicitly states the audit covers Minter.sol and WSTBT.sol. | no |
| blocksec_matrixdock_v1.1-signed.pdf | Minter | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_matrixdock_v1.1-signed.pdf | WSTBT | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_matrixport_stbt_v1.1-signed.pdf | STBT | unmatched — not counted | — | Listed in scope section 1.1 as STBT Contracts, referenced in findings as STBT contract | no |
| blocksec_matrixport_stbt_v1.1-signed.pdf | StbtTimelockController | unmatched — not counted | — | Mentioned in finding 2.3.2 as StbtTimelockController contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x20377b...5e28ab` | FallbackReserveFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x123ffe...58d9e1` | MTokenMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0be916...8f68c5` | MTokenMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: n/a

Zero-match audit list:

- [20819] Matrixdock-STBT - Zellic Audit Report.pdf
- [20820] Minter - Zellic Audit Report.pdf
- [20821] TProtocol audit report.pdf
- [20822] WSTBT - Zellic Audit Report.pdf
- [20823] blocksec_matrixdock_v1.0-signed.pdf
- [20824] blocksec_matrixdock_v1.1-signed.pdf
- [20825] blocksec_matrixport_stbt_v1.1-signed.pdf
- [20826] he-yue-shen-ji.md
- [20829] contract-audit.md

Fork inheritance lineage and inherited audits are included when available.
