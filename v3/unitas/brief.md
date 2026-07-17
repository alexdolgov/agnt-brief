# Agentic Audit Brief: Unitas

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Unitas (`unitas`)
- Website: [https://app.unitas.so](https://app.unitas.so)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $56,654,489.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Unitas. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1), erc4626 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- StakedUSDuV2 (`0x385c279445581a186a4182a5503094ebb652ec71`, chain 56)
- USDu (`0xea953ea6634d55dac6697c436b1e81a679db5882`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 17 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 2 | 18.2% | 2025-10 |
| unknown | Tier 2 | 2 | 18.2% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakedUSDuV2 | token | project_anchor | own_supporting | 0 | bsc | unit-395312 | `0x385c279445581a186a4182a5503094ebb652ec71` | ✅ Audited |
| USDu | unknown | project_anchor | own_supporting | 0 | bsc | unit-395313 | `0xea953ea6634d55dac6697c436b1e81a679db5882` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PancakeV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8aab5522d601bbb85501d703b55a272e47852120` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb464c9890604926bd5fa7b66bf15d26bcd0ed3a9` | ⚠️ Unaudited |
| UnitasMintingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb984ce670100aa855f6152f88b26ee57f4ea82a` | ⚠️ Unaudited |
| XGLDExchangeRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bbe7fdcd6bdffd7f767a9531b6210b87b3e46e7` | ⚠️ Unaudited |
| XGLDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a9e3ea72575e05337a7703c8fad65a82a5b5865` | ⚠️ Unaudited |
| XGLDRateUpdaterWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e20582d0b490039020bc0a6e9d7bd7963c63bdd` | ⚠️ Unaudited |
| XGLDRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ac5abd45fea3d72afc1c68500ba4a677153003c` | ⚠️ Unaudited |
| XGLDTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99997b18733ff4a9d8e0b9c7d9dec59625f87228` | ⚠️ Unaudited |
| XGLDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe60106a5cab7e7c64830919d36ab20caaf50ac91` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b5f4ac56dab45f43dbad9b41c6a57f0f85fbb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x643c75cb6eb5218e7cb39f563dd606bf62a6e4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e705a2e978a30dc92df69b428a333f6b82c0c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82a7cc65dc43a9cd5b105581b954ef082595c361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1e9526cb6ac47403a7a820e75d7bb0c2831c89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfff99c2ac4c0cbc03dc4a8fa55baefe1139eb38` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Unipay Audit Report-2026-1-9.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unipay%20Audit%20Report-2026-1-9.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Unitas Audit Audit Report-2025-9-12.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unitas%20Audit%20Audit%20Report-2025-9-12.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | matched | 2 | 0 | 0 | 5 | n/a |
| [Unitas Contracts - SlowMist Audit Report.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unitas%20Contracts%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | n/a | matched | 2 | 0 | 0 | 5 | n/a |
| [2025-04-04 Audit Report - Unipay.pdf](https://github.com/UnipayFi/Audit/blob/main/SVM/2025-04-04%20Audit%20Report%20-%20Unipay.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [20250326-Unipay-Final-Audit-Report.pdf](https://github.com/UnipayFi/Audit/blob/main/SVM/20250326-Unipay-Final-Audit-Report.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4619] Unipay Audit Report-2026-1-9.pdf — no match: Only one contract in scope: UnitasProxy. Audit date from cover page.
- [4620] Unitas Audit Audit Report-2025-9-12.pdf — matched: No reason recorded
- [4621] Unitas Contracts - SlowMist Audit Report.pdf — matched: No reason recorded
- [4622] 2025-04-04 Audit Report - Unipay.pdf — matched: No reason recorded
- [4623] 20250326-Unipay-Final-Audit-Report.pdf — matched: Extracted contract names from the 'Files in Scope' table and project description. The audit report covers four main programs: USDU, SUSDU, Vault, and Guardian. The audit date is the end date of the audit period (Mon Mar 10 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Unipay Audit Report-2026-1-9.pdf | UnitasProxy | unmatched — not counted | — | listed in scope table (ID UPR1) | no |
| Unitas Audit Audit Report-2025-9-12.pdf | SingleAdminAccessControl | unmatched — not counted | — | — | no |
| Unitas Audit Audit Report-2025-9-12.pdf | StakedUSDu | unmatched — not counted | — | — | no |
| Unitas Audit Audit Report-2025-9-12.pdf | StakedUSDuV2 | own contract | StakedUSDuV2 (selected) `0x385c279445581a186a4182a5503094ebb652ec71` — deployed 2025-11-22 10:13:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Unitas Audit Audit Report-2025-9-12.pdf | USDu | own contract | USDu (selected) `0xea953ea6634d55dac6697c436b1e81a679db5882` — deployed 2025-11-22 10:12:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Unitas Audit Audit Report-2025-9-12.pdf | USDuSilo | unmatched — not counted | — | — | no |
| Unitas Audit Audit Report-2025-9-12.pdf | UnitasMinting | unmatched — not counted | — | — | no |
| Unitas Audit Audit Report-2025-9-12.pdf | UnitasMintingV2 | unmatched — not counted | — | — | no |
| Unitas Contracts - SlowMist Audit Report.pdf | SingleAdminAccessControl | unmatched — not counted | — | — | no |
| Unitas Contracts - SlowMist Audit Report.pdf | StakedUSDu | unmatched — not counted | — | — | no |
| Unitas Contracts - SlowMist Audit Report.pdf | StakedUSDuV2 | own contract | StakedUSDuV2 (selected) `0x385c279445581a186a4182a5503094ebb652ec71` — deployed 2025-11-22 10:13:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Unitas Contracts - SlowMist Audit Report.pdf | USDu | own contract | USDu (selected) `0xea953ea6634d55dac6697c436b1e81a679db5882` — deployed 2025-11-22 10:12:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Unitas Contracts - SlowMist Audit Report.pdf | USDuSilo | unmatched — not counted | — | — | no |
| Unitas Contracts - SlowMist Audit Report.pdf | UnitasMinting | unmatched — not counted | — | — | no |
| Unitas Contracts - SlowMist Audit Report.pdf | UnitasMintingV2 | unmatched — not counted | — | — | no |
| 2025-04-04 Audit Report - Unipay.pdf | AccessRegistry | unmatched — not counted | — | — | no |
| 2025-04-04 Audit Report - Unipay.pdf | BlacklistState | unmatched — not counted | — | — | no |
| 2025-04-04 Audit Report - Unipay.pdf | Cooldown | unmatched — not counted | — | — | no |
| 2025-04-04 Audit Report - Unipay.pdf | SUSDU | unmatched — not counted | — | — | no |
| 2025-04-04 Audit Report - Unipay.pdf | USDU | own contract | USDu (selected) `0xea953ea6634d55dac6697c436b1e81a679db5882` — deployed 2025-11-22 10:12:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-04 Audit Report - Unipay.pdf | VaultConfig | unmatched — not counted | — | — | no |
| 20250326-Unipay-Final-Audit-Report.pdf | USDU | own contract | USDu (selected) `0xea953ea6634d55dac6697c436b1e81a679db5882` — deployed 2025-11-22 10:12:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20250326-Unipay-Final-Audit-Report.pdf | SUSDU | unmatched — not counted | — | Files in scope include programs/susdu/src/state/config.rs, state/mod.rs, instructions/admin/init_config.rs, instructions/admin/mod.rs, instructions/mod.rs | no |
| 20250326-Unipay-Final-Audit-Report.pdf | Vault | unmatched — not counted | — | Files in scope include programs/vault/src/utils/token.rs, math/rounding.rs, math/error.rs, state/cooldown.rs, instructions/admin/init_vault.rs, instructions/susdu/mod.rs, instructions/mod.rs, instructions/usdu/mod.rs | no |
| 20250326-Unipay-Final-Audit-Report.pdf | Guardian | unmatched — not counted | — | Files in scope include programs/guardian/src/constants.rs, events.rs, state/mod.rs, instructions/admin/mod.rs, instructions/admin/init_access_registry.rs, instructions/mod.rs | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=6

Zero-match audit list:

- [4619] Unipay Audit Report-2026-1-9.pdf

Fork inheritance lineage and inherited audits are included when available.
