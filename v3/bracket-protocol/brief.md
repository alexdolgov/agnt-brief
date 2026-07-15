# Agentic Audit Brief: Bracket Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,921,478.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Bracket Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 1 | 100.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BrktETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381410 | `0x6c8550...1accd6` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Bracket Rd.2 - LST Vault_report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [2024-01-20_Bracket.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [Bracket Fi Escrow - Zellic Audit Report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2753] spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf — no match: No reason recorded
- [2754] spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf — no match: No reason recorded
- [2755] Bracket Rd.2 - LST Vault_report.pdf — matched: Extracted contract names from findings locations and scope description. The audit report covers Bracket's LST management system with contracts BracketVault, VaultFactory, BrktETH, BracketOracle, IBracketVault, and RebalancingToken.
- [2756] 2024-01-20_Bracket.pdf — matched: Extracted contract names from findings and scope sections. Audit date from cover page.
- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf — no match: Scope section explicitly lists BridgeEscrow.sol, EscrowBase.sol, MainEscrow.sol. Audit date is April 19, 2024 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketVaultV2 | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketWrappedVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | KYCWhitelist | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | NavUpdater | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | RebasingToken | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | VaultRouter | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | BracketVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | BrktETHRouter | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | Config | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | KYCWhitelist | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | RebasingToken | unmatched — not counted | — | — | no |
| Bracket Rd.2 - LST Vault_report.pdf | BracketVault | unmatched — not counted | — | Listed in findings locations (e.g., BracketVault.sol:133) | no |
| Bracket Rd.2 - LST Vault_report.pdf | VaultFactory | unmatched — not counted | — | Listed in findings locations (e.g., VaultFactory.sol:32) | no |
| Bracket Rd.2 - LST Vault_report.pdf | BrktETH | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6c8550...1accd6` — deployed 2025-01-20 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bracket Rd.2 - LST Vault_report.pdf | BracketOracle | unmatched — not counted | — | Listed in findings locations (e.g., BracketOracle.sol) | no |
| Bracket Rd.2 - LST Vault_report.pdf | IBracketVault | unmatched — not counted | — | Listed in findings locations (e.g., IBracketVault.sol) | no |
| Bracket Rd.2 - LST Vault_report.pdf | RebalancingToken | unmatched — not counted | — | Mentioned in L-18 finding as a contract with totalSupply() discrepancy | no |
| 2024-01-20_Bracket.pdf | BrktETH | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6c8550...1accd6` — deployed 2025-01-20 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-20_Bracket.pdf | BracketVault | unmatched — not counted | — | Listed in findings and scope | no |
| 2024-01-20_Bracket.pdf | BracketOracle | unmatched — not counted | — | Listed in findings and scope | no |
| 2024-01-20_Bracket.pdf | RebasingToken | unmatched — not counted | — | Listed in finding L-11 | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | BridgeEscrow | unmatched — not counted | — | listed in scope section | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | EscrowBase | unmatched — not counted | — | listed in scope section | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | MainEscrow | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=2

Zero-match audit list:

- [2753] spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf
- [2754] spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf
- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
