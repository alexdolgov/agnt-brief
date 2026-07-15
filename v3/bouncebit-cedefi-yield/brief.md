# Agentic Audit Brief: BounceBit CeDeFi Yield

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

- Project: BounceBit CeDeFi Yield (`bouncebit-cedefi-yield`)
- Website: [https://portal.bouncebit.io/](https://portal.bouncebit.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $284,855,549.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BounceBit CeDeFi Yield in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BBOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127661 | `0xd459ec...1073a3` | ⚠️ Unaudited |
| BBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127659 | `0x8b8d92...9d6863` | ⚠️ Unaudited |
| BBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127660 | `0xbc8570...da6eb1` | ⚠️ Unaudited |
| CefiTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127656 | `0x403f10...757475` | ⚠️ Unaudited |
| CefiTrove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127658 | `0x69b706...e40116` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-127655 | `0x13b037...4707b2` | ⚠️ Unaudited |
| TokenVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127657 | `0x4756c4...cb580e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-127662 | `0x035d73...316467` | ⚠️ Unaudited |

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
| [Smart Contract Audit Report](https://docs.bouncebit.io/assets/smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [First BounceBit TVL Audit Report](https://docs.bouncebit.io/assets/first-bouncebit-tvl-audit-report.md) | unknown | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [BounceBit-Vault_audit_report_2024-02-09.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [BounceBit BTC TVL Report 20240207.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2F0oZ4vafYh0ye8HRPsgVU%2FBounceBit%20BTC%20TVL%20Report%2020240207.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19615] Smart Contract Audit Report — no match: The provided text is a markdown page with a file reference but no actual audit report content. No contract names or audit date could be extracted.
- [19616] First BounceBit TVL Audit Report — no match: The report text does not list any specific smart contracts, source files, or modules in scope. It only mentions a CeFi+DeFi infrastructure and a TVL audit, but no contract names are identifiable.
- [19617] BounceBit-Vault_audit_report_2024-02-09.pdf — no match: Only one contract in scope: BounceBitVault. Addresses provided for BSC and Ethereum.
- [19618] BounceBit BTC TVL Report 20240207.pdf — no match: The provided text is an account statement for Bouncebit Ltd., not a smart contract audit report. No contracts, source files, or audit scope were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BounceBit-Vault_audit_report_2024-02-09.pdf | BounceBitVault | unmatched — not counted | — | listed in scope and findings target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=3
- Match method counts: n/a

Zero-match audit list:

- [19615] Smart Contract Audit Report
- [19616] First BounceBit TVL Audit Report
- [19617] BounceBit-Vault_audit_report_2024-02-09.pdf
- [19618] BounceBit BTC TVL Report 20240207.pdf

Fork inheritance lineage and inherited audits are included when available.
