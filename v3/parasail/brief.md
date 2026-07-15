# Agentic Audit Brief: Parasail

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Parasail (`parasail`)
- Website: [https://www.parasail.network/](https://www.parasail.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 36 unique implementations (44 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,600,797.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Parasail. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum. Structural roles: 2 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: axelar (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x277aeb...40bce0`, chain 42161)
- UnnamedContract (`0x8eebfa...786ef3`, chain 42161)
- UnnamedContract (`0xc537e6...75f398`, chain 42161)
- ERC1967Proxy (`0x3812fa...603dbc`, chain 42161)
- ERC1967Proxy (`0xc5229e...057a09`, chain 42161)
- InterchainToken (`0xc87b37...9d056c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 4 of 36 unique; 32 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 36
- Raw deployments: 44
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2032f1...a5e511`; arbitrum `0x618d55...0f31dd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251088 | 2 deployments: arbitrum `0x277aeb...40bce0`; arbitrum `0x3812fa...603dbc` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251089 | 2 deployments: arbitrum `0x8eebfa...786ef3`; arbitrum `0xc5229e...057a09` | ⚠️ Unaudited |
| InterchainToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-251087 | `0xc87b37...9d056c` | ⚠️ Unaudited |
| LoanContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe28cde...e98205` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xaa5d9edfd680297533a14e121b70ae9fadd77831) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0ec4dc...010caa`; arbitrum `0xaa5d9e...d77831` | ❓ Unverified |
| Proxy (impl: 0xc4f869b9040ce060d3f3204abd579b00461a4e45) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x369d4b...5df44e`; arbitrum `0xc4f869...1a4e45` | ❓ Unverified |
| Proxy (impl: 0xcbe7efd39be37699e2377ddab28b627aa321d209) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x19eb5d...81ee02`; arbitrum `0xcbe7ef...21d209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fafc1...1bbbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12b785...71855a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16e7d8...fe0362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x174fcc...574818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e8895...beca03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22dbba...fc032a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28a141...3d2582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab36b...852b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x304ece...d181ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d7dde...963dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43ba49...9272df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x445895...662909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e7088...c18e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c588e...158127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x885266...10085e`; arbitrum `0xc7a6aa...5a5fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x901a72...5b336e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x906be3...270319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92a159...1fb2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa82e4...64c86f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251086 | `0xc537e6...75f398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce0a65...888969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6e02f...35efc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd76ac8...bd66b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9694e...59f7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd99ab1...203dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xd9a340...47e74c`; arbitrum `0xe87792...39b2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae9f8...2f689c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5b42a...301f47` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Zokyo Audit Report](https://docs.parasail.network/assets/files/Repl_Zokyo_audit_report_2023-75580faff2dc76b2dd8d98cde41cf2dc.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SlowMist Audit Report](https://docs.parasail.network/assets/files/SlowMist_Audit_Report-47a5f3b63df90c99a4aa4d39ce367307.pdf) | SlowMist | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf](https://docs.parasail.network/assets/files/Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf) | Zokyo | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SlowMist Audit Report](https://docs.parasail.network/assets/files/SlowMist_Audit_Report_v2-f6d7b788a09dce44f924c5dbbf80c35b.pdf) | SlowMist | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SlowMist Audit Report](https://docs.parasail.network/assets/files/SlowMist_Audit_Report_v3-d35bee4e70ede7fc50406ad60f651fc4.pdf) | Code4rena | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29762] Zokyo Audit Report — no match: Scope section explicitly lists 6 contracts with file paths. Audit date is December 8th 2023 from the cover page.
- [29763] SlowMist Audit Report — no match: Contracts extracted from visibility tables and scope mentions in the report.
- [29764] Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf — no match: Scope section explicitly lists four contracts: AgentImplementation.sol, Repl.sol, ReplAuction.sol, and interfaces/Interface.sol. Audit date is March 5th 2024 from the title.
- [29765] SlowMist Audit Report — no match: Contracts extracted from visibility tables and vulnerability descriptions. Audit date from audit result table: 2024.02.19 - 2024.02.20, using end date.
- [29766] SlowMist Audit Report — no match: Contracts extracted from visibility tables and code overview; audit date from audit result table (end date of range).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Zokyo Audit Report | wPFIL | unmatched — not counted | — | listed in scope | no |
| Zokyo Audit Report | AgentProxy | unmatched — not counted | — | listed in scope | no |
| Zokyo Audit Report | ReplAuction | unmatched — not counted | — | listed in scope | no |
| Zokyo Audit Report | PFIL | unmatched — not counted | — | listed in scope | no |
| Zokyo Audit Report | AgentImplementation | unmatched — not counted | — | listed in scope | no |
| Zokyo Audit Report | Repl | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report | AgentImplContract | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | PFIL | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | Repl | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | AgentProxy | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report | ReplAuction | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | wPFIL | unmatched — not counted | — | listed in visibility table | no |
| Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf | AgentImplementation | unmatched — not counted | — | listed in scope | no |
| Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf | Repl | unmatched — not counted | — | listed in scope | no |
| Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf | ReplAuction | unmatched — not counted | — | listed in scope | no |
| Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf | Interface | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report | AgentImplContract | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | PFIL | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | ReplOracle | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report | Repl | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | ReplAuction | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report | wPFIL | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report | AgentImplContract | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | Repl | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report | InterestRateModel | unmatched — not counted | — | listed in visibility table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xc87b37...9d056c` | InterchainToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [29762] Zokyo Audit Report
- [29763] SlowMist Audit Report
- [29764] Repl_Zokyo_audit_report_v2-692a505f2bfcad0d3322df85223804ab.pdf
- [29765] SlowMist Audit Report
- [29766] SlowMist Audit Report

Fork inheritance lineage and inherited audits are included when available.
