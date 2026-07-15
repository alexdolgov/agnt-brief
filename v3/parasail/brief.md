# Agentic Audit Brief: Parasail

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Parasail (`parasail`)
- Website: [https://www.parasail.network/](https://www.parasail.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 4 unique implementations (4 raw deployments)
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

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc537e6...75f398`, chain 42161)
- ERC1967Proxy (`0x3812fa...603dbc`, chain 42161)
- ERC1967Proxy (`0xc5229e...057a09`, chain 42161)
- InterchainToken (`0xc87b37...9d056c`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251088 | `0x3812fa...603dbc` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251089 | `0xc5229e...057a09` | ⚠️ Unaudited |
| InterchainToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-251087 | `0xc87b37...9d056c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251086 | `0xc537e6...75f398` | ❓ Unverified |

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
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

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
