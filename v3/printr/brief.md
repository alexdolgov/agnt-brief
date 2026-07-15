# Agentic Audit Brief: Printr

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Printr (`printr`)
- Website: [https://www.printr.money/](https://www.printr.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, mantle
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $131,260.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Printr in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 1 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
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
| PrintrProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xb77726...243172` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-251830 | `0xb77726...243172` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ackee-blockchain-printr-protocol-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-printr-protocol-report.pdf) | Ackee Blockchain Security | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [ackee-blockchain-printr-protocol-report-rev.2.2.pdf](https://3159715523-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBqgUMNkX5OgdF7BaqREa%2Fuploads%2FtOKFevMbiGfJhQK6oyXS%2Fackee-blockchain-printr-protocol-report-rev.2.2.pdf) | Ackee Blockchain | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [ackee-blockchain-printr-omnichain-token-launchpad-report.pdf](https://3159715523-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBqgUMNkX5OgdF7BaqREa%2Fuploads%2FWWUwR7setfzuisJmAoGe%2Fackee-blockchain-printr-omnichain-token-launchpad-report.pdf) | Ackee Blockchain | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21436] ackee-blockchain-printr-protocol-report.pdf — no match: Scope defined in Executive Summary Revision 1.0: all Solidity files in src directory except src/interfaces/*, src/libs/*, and specific liquidity modules. The audit date is the final report date from the Document Revisions table: 08.12.2025.
- [24351] ackee-blockchain-printr-protocol-report-rev.2.2.pdf — no match: Scope defined in Executive Summary Revision 1.0: all Solidity files in src directory except interfaces, libs, and specific liquidity modules. Audit date from final revision date: 24.11.2025.
- [24352] ackee-blockchain-printr-omnichain-token-launchpad-report.pdf — no match: Extracted contract names from file paths in findings and scope descriptions. The audit report covers the Omnichain Token Launchpad Protocol on Solana. The date is from the cover page and appendix A.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ackee-blockchain-printr-protocol-report.pdf | PrintrTrading | unmatched — not counted | — | Listed in scope (all Solidity files in src directory except interfaces, libs, and specific liquidity modules). Mentioned in findings C1, M2, W8, I1. | no |
| ackee-blockchain-printr-protocol-report.pdf | PrintrTeleport | unmatched — not counted | — | Listed in scope. Mentioned in findings C2, C3, C5, C6, C7, H1, H2, H3, M4, L2, W4, I2. | no |
| ackee-blockchain-printr-protocol-report.pdf | Telecoin | unmatched — not counted | — | Listed in scope. Mentioned in findings C3, L2, W5. | no |
| ackee-blockchain-printr-protocol-report.pdf | PrintrPrinting | unmatched — not counted | — | Listed in scope. Mentioned in findings C4, H1, L4, W1, W2. | no |
| ackee-blockchain-printr-protocol-report.pdf | TelecoinFactory | unmatched — not counted | — | Listed in scope. Mentioned in findings C4, W6. | no |
| ackee-blockchain-printr-protocol-report.pdf | PrintrTeleportingTelecoin | unmatched — not counted | — | Listed in scope. Mentioned in findings C4, I5. | no |
| ackee-blockchain-printr-protocol-report.pdf | PrintrMainTelecoin | unmatched — not counted | — | Listed in scope. Mentioned in findings C4, I5. | no |
| ackee-blockchain-printr-protocol-report.pdf | Teleporting | unmatched — not counted | — | Listed in scope. Mentioned in findings M3, W3, I3, I5. | no |
| ackee-blockchain-printr-protocol-report.pdf | Intent | unmatched — not counted | — | Listed in scope. Mentioned in findings M1, W7. | no |
| ackee-blockchain-printr-protocol-report.pdf | Treasury | unmatched — not counted | — | Listed in scope. Mentioned in finding L3. | no |
| ackee-blockchain-printr-protocol-report.pdf | PrintrInterchain | unmatched — not counted | — | Listed in scope. Mentioned in finding L1. | no |
| ackee-blockchain-printr-protocol-report.pdf | InterchainStandard | unmatched — not counted | — | Listed in scope. Mentioned in finding M3. | no |
| ackee-blockchain-printr-protocol-report.pdf | Printed | unmatched — not counted | — | Listed in scope. Mentioned in finding I4. | no |
| ackee-blockchain-printr-protocol-report.pdf | Whitelist | unmatched — not counted | — | Listed in scope. Mentioned in finding W7. | no |
| ackee-blockchain-printr-protocol-report.pdf | PrintrStorage | unmatched — not counted | — | Listed in scope. Mentioned in finding W4. | no |
| ackee-blockchain-printr-protocol-report.pdf | IPrintrStorage | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in findings L5, I6). | no |
| ackee-blockchain-printr-protocol-report.pdf | IPrintrTeleport | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in findings I6). | no |
| ackee-blockchain-printr-protocol-report.pdf | IIntent | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in finding I6). | no |
| ackee-blockchain-printr-protocol-report.pdf | IInterchainTokenFactory | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in findings I6, I8). | no |
| ackee-blockchain-printr-protocol-report.pdf | IInterchainTokenService | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in findings I6, I8). | no |
| ackee-blockchain-printr-protocol-report.pdf | ILiquidityModule | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in finding I6). | no |
| ackee-blockchain-printr-protocol-report.pdf | IMerchantmoeLB | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in findings I7, I8). | no |
| ackee-blockchain-printr-protocol-report.pdf | AddressBytes | unmatched — not counted | — | Listed in scope (libs excluded but referenced in finding I7). | no |
| ackee-blockchain-printr-protocol-report.pdf | IAlgebra | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in finding I8). | no |
| ackee-blockchain-printr-protocol-report.pdf | ILynex | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in finding I8). | no |
| ackee-blockchain-printr-protocol-report.pdf | IMerchantmoe | unmatched — not counted | — | Listed in scope (interfaces excluded but referenced in finding I8). | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrTrading | unmatched — not counted | — | Listed in scope (all Solidity files in src directory except interfaces, libs, and specific liquidity modules) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrTeleport | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | Telecoin | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrPrinting | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | TelecoinFactory | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrTeleportingTelecoin | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrMainTelecoin | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | Teleporting | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | Intent | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | Treasury | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrInterchain | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | InterchainStandard | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | PrintrStorage | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IPrintrStorage | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IPrintrTeleport | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IIntent | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IInterchainTokenFactory | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IInterchainTokenService | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | ILiquidityModule | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IMerchantmoeLB | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | AddressBytes | unmatched — not counted | — | Listed in scope (library) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IAlgebra | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | ILynex | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | IMerchantmoe | unmatched — not counted | — | Listed in scope (interface) | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | Whitelist | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-protocol-report-rev.2.2.pdf | Printed | unmatched — not counted | — | Listed in scope | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | create_printr_dbc | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | swap | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | claim_dbc_fees | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | claim_damm_fees | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | authorized_spend_all_quote | unmatched — not counted | — | mentioned in findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | cancel_authorized_spend_all_quote | unmatched — not counted | — | mentioned in findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | spend_all_quote_no_graduation | unmatched — not counted | — | mentioned in findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | claim_printr_authority_lamports | unmatched — not counted | — | mentioned in findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | create_printr_config | unmatched — not counted | — | mentioned in findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | estimate_swap | unmatched — not counted | — | mentioned in findings | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | deploy_telecoin | unmatched — not counted | — | mentioned in revision 2.0 scope | no |
| ackee-blockchain-printr-omnichain-token-launchpad-report.pdf | set_telecoin_teleport_conf | unmatched — not counted | — | mentioned in revision 2.0 scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 64 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [21436] ackee-blockchain-printr-protocol-report.pdf
- [24351] ackee-blockchain-printr-protocol-report-rev.2.2.pdf
- [24352] ackee-blockchain-printr-omnichain-token-launchpad-report.pdf

Fork inheritance lineage and inherited audits are included when available.
