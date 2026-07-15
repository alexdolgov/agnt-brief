# Agentic Audit Brief: KlayBank

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: KlayBank (`klaybank`)
- Website: [https://docs.klaybank.org/](https://docs.klaybank.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kaia
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $313,457.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for KlayBank in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x946bc7...763f2d`, chain 8217)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 1 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-388308 | `0x946bc7...763f2d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hexlant-Bondsale-2022-01-13.pdf.pdf](https://github.com/klaybank/klaybank-bondsale/blob/main/audits/%20Hexlant-Bondsale-2022-01-13.pdf.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf](https://github.com/klaybank/klaybank-stake/blob/main/audits/Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf](https://github.com/klaybank/klaybank-stake/blob/main/audits/Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13345] Hexlant-Bondsale-2022-01-13.pdf.pdf — no match: Audit scope explicitly lists 'KlayKbtLpDepository' as a project title, but the actual contracts audited are BondTreasury.sol and BondDepository.sol as per test results and vulnerability analysis.
- [13346] Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf — no match: Scope section lists files under ./klaybank-stake/contracts/**/*.sol, and findings reference three specific contracts.
- [13347] Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf — no match: All five contracts explicitly listed in AUDIT SCOPE section on page 2.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hexlant-Bondsale-2022-01-13.pdf.pdf | BondTreasury | unmatched — not counted | — | listed in scope and test results | no |
| Hexlant-Bondsale-2022-01-13.pdf.pdf | BondDepository | unmatched — not counted | — | listed in scope and test results | no |
| Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf | KlaybankDistributionManager | unmatched — not counted | — | listed in scope and findings | no |
| Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf | StakedToken | unmatched — not counted | — | listed in scope and findings | no |
| Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf | StakedKbt | unmatched — not counted | — | listed in scope and findings | no |
| Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf | KlaybankDistributionManager | unmatched — not counted | — | listed in AUDIT SCOPE section | no |
| Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf | KlaybankEcosystemReserve | unmatched — not counted | — | listed in AUDIT SCOPE section | no |
| Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf | KlaybankIncentivesController | unmatched — not counted | — | listed in AUDIT SCOPE section | no |
| Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf | StakedToken | unmatched — not counted | — | listed in AUDIT SCOPE section | no |
| Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf | StakedKbt | unmatched — not counted | — | listed in AUDIT SCOPE section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [13345] Hexlant-Bondsale-2022-01-13.pdf.pdf
- [13346] Smart_Contract_Audit_Expert-Stake-2022-01-20.pdf
- [13347] Smart_Contract_Audit_Hexlant-Stake-2022-02-23.pdf

Fork inheritance lineage and inherited audits are included when available.
