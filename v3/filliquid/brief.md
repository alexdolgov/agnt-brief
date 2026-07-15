# Agentic Audit Brief: FILLiquid

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: FILLiquid (`filliquid`)
- Website: [https://dapp.filliquid.io](https://dapp.filliquid.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $197,041.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for FILLiquid. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: axelar (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xaf5dd8...4f5812`, chain 56)
- InterchainToken (`0x2f3e41...668d6b`, chain 56)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| InterchainToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-239855 | `0x2f3e41...668d6b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-239856 | `0xaf5dd8...4f5812` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FILLiquid_audit_report_2024-04-26.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/FILLiquid_audit_report_2024-04-26.pdf) | Salus | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [skynet.certik.com/projects/filliquid](https://skynet.certik.com/projects/filliquid) | CertiK | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [REP-final-20240426T031044Z.pdf](https://4014563253-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdhOs5OllpdOOyrijMlP5%2Fuploads%2FpH8LG58Cj0rPnRHZHU3E%2FREP-final-20240426T031044Z.pdf) | REP | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Rendered PDF capture](https://4014563253-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdhOs5OllpdOOyrijMlP5%2Fuploads%2FVdb8iF9KFZrU79j1Ce6R%2FFILLiquid_audit_report_2024-04-26.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21387] FILLiquid_audit_report_2024-04-26.pdf — no match: All contracts listed in Appendix-1 Files in Scope are extracted. Audit date from 'Dates Apr262024' in the header.
- [21388] skynet.certik.com/projects/filliquid — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It mentions a security audit completed by CertiK on 7/30/2024, but does not list any contracts in scope.
- [24101] REP-final-20240426T031044Z.pdf — no match: All 13 files listed in the Audit Scope table are included. The audit date is explicitly stated as 'Assessed on Apr 25th, 2024' on the cover page and in the footer.
- [24102] Rendered PDF capture — no match: All contracts listed in Appendix-1 Files in Scope. Audit date from 'Dates Apr262024' in the header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FILLiquid_audit_report_2024-04-26.pdf | DataFetcher | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Deployer1 | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Deployer2 | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Deployer3 | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | ERC20Pot | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | FILGovernance | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | FILLiquid | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | FILTrust | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | FITStake | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Governance | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | MultiSignFactory | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Calculation | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Conversion | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | FilecoinAPI | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| FILLiquid_audit_report_2024-04-26.pdf | Validation | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| REP-final-20240426T031044Z.pdf | ERC20Pot | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | FILGovernance | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | FILLiquid | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | FILStake | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | FILTrust | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | Governance | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | MultiSignFactory | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | Calculation | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | Conversion | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | FilecoinAPI | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | Validation | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | Deployer1 | unmatched — not counted | — | listed in audit scope table | no |
| REP-final-20240426T031044Z.pdf | Deployer2 | unmatched — not counted | — | listed in audit scope table | no |
| Rendered PDF capture | DataFetcher | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Deployer1 | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Deployer2 | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Deployer3 | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | ERC20Pot | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | FILGovernance | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | FILLiquid | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | FILTrust | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | FITStake | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Governance | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | MultiSignFactory | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Calculation | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Conversion | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | FilecoinAPI | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Rendered PDF capture | Validation | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x2f3e41...668d6b` | InterchainToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 43 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [21387] FILLiquid_audit_report_2024-04-26.pdf
- [21388] skynet.certik.com/projects/filliquid
- [24101] REP-final-20240426T031044Z.pdf
- [24102] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
