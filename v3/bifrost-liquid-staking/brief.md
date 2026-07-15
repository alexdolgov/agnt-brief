# Agentic Audit Brief: Bifrost Liquid Staking

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bifrost Liquid Staking (`bifrost-liquid-staking`)
- Website: [https://app.bifrost.io/?channelId=17](https://app.bifrost.io/?channelId=17)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, manta-pacific
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $13,999,849.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Bifrost Liquid Staking in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 6 stale, 0 unknown
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [slowmist-rep-bifrost-2022-02.pdf](https://github.com/bifrost-io/bifrost-wiki/blob/master/slowmist-rep-bifrost-2022-02.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [certik-rep-bifrost-2022-01.pdf](https://github.com/bifrost-io/bifrost-wiki/blob/master/certik-rep-bifrost-2022-01.pdf) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist Audit Report - Bifrost vETH 2.0.pdf](https://github.com/bifrost-io/bifrost-vETH-2.0/blob/main/audit/SlowMist%20Audit%20Report%20-%20Bifrost%20vETH%202.0.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [slowmist-rep-bifrost-slp-2022-08.pdf](https://github.com/bifrost-io/bifrost-wiki/blob/master/slowmist-rep-bifrost-slp-2022-08.pdf) | SlowMist | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Bifrost_vtoken-voting_202310121750.pdf](https://beosin.com/audits/Bifrost_vtoken-voting_202310121750.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Bifrost(vtoken-minting&&slp-v2)_202509251121.pdf](https://beosin.com/audits/Bifrost(vtoken-minting&&slp-v2)_202509251121.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf](https://beosin.com/audits/Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2024-03-11 Audit Report - Bifrost Finance Leveraged Staking v1.0.pdf](https://github.com/oak-security/audit-reports/blob/main/Bifrost/2024-03-11%20Audit%20Report%20-%20Bifrost%20Finance%20Leveraged%20Staking%20v1.0.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12782] slowmist-rep-bifrost-2022-02.pdf — no match: Scope section lists 8 files/modules. Audit date range is 2021.11.15 - 2021.11.30, using end date.
- [12783] certik-rep-bifrost-2022-01.pdf — no match: Only one file (lib.rs) is in scope; it is a Substrate runtime module (balances pallet) written in Rust, not a Solidity contract. The audit date is explicitly given as Jan 13, 2022.
- [12784] SlowMist Audit Report - Bifrost vETH 2.0.pdf — no match: Contracts extracted from scope description and code overview tables. Audit date from audit result table: 2023.03.24 - 2023.03.29, using end date.
- [12785] slowmist-rep-bifrost-slp-2022-08.pdf — no match: The audit scope includes pallets/slp/src/primitives/moonbeam_primitives.rs, pallets/slp/src/agents/moonbeam_agent/agent.rs, pallets/slp/src/agents/moonbeam_agent/mod.rs, pallets/slp/src/agents/moonbeam_agent/types.rs. The main contract name extracted is 'slp' from the pallet name. The audit date is the end date of the audit period (2022.08.01 - 2022.08.05).
- [12786] Bifrost_vtoken-voting_202310121750.pdf — no match: The audit report covers the Bifrost vtoken-voting pallet. The scope is specified as './pallets/vtoken-voting' and the project name is 'Bifrost_vtoken-voting'. The date is from the cover page: 'Oct 12th, 2023'.
- [12787] Bifrost(vtoken-minting&&slp-v2)_202509251121.pdf — no match: Audit scope explicitly lists pallets vtoken-minting and slp-v2 with specific file paths. Audit date is September 25, 2025 from cover page.
- [12788] Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf — no match: Contracts explicitly listed in scope on page 4 of the audit report. ValidatorManager is also in scope as it appears in a finding.
- [12789] 2024-03-11 Audit Report - Bifrost Finance Leveraged Staking v1.0.pdf — no match: Scope explicitly lists three pallets: lend-market, leverage-staking, and prices. Audit date is March 11, 2024 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| slowmist-rep-bifrost-2022-02.pdf | currency | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | fee_dealer | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | flexible-fee | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | misc_fees | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | vsbond-auction | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | salp | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | liquidity-mining | unmatched — not counted | — | listed in scope | no |
| slowmist-rep-bifrost-2022-02.pdf | zenlink-protocol | unmatched — not counted | — | listed in scope | no |
| certik-rep-bifrost-2022-01.pdf | lib.rs | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| SlowMist Audit Report - Bifrost vETH 2.0.pdf | SLPCore | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - Bifrost vETH 2.0.pdf | vETH2 | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - Bifrost vETH 2.0.pdf | SLPDeposit | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - Bifrost vETH 2.0.pdf | vETH2Claim | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - Bifrost vETH 2.0.pdf | WithdrawalVault | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - Bifrost vETH 2.0.pdf | MevVault | unmatched — not counted | — | listed in code overview | no |
| slowmist-rep-bifrost-slp-2022-08.pdf | slp | unmatched — not counted | — | listed in scope and findings | no |
| Bifrost_vtoken-voting_202310121750.pdf | vtoken-voting | unmatched — not counted | — | Audit scope section: 'Audit scope: ./pallets/vtoken-voting' | no |
| Bifrost(vtoken-minting&&slp-v2)_202509251121.pdf | vtoken-minting | unmatched — not counted | — | listed in scope | no |
| Bifrost(vtoken-minting&&slp-v2)_202509251121.pdf | slp-v2 | unmatched — not counted | — | listed in scope | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | HyperbridgeHandler | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | LayerZeroHandler | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | SnowbridgeHandler | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | SlpForward | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | SlpProxy | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | SlpSsvManager | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | SlpVault | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | SlpWithdrawalVault | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | WhitelistBytes32 | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | BridgeVault | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | Oracle | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | VTokenBase | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | VToken | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | VETH | unmatched — not counted | — | listed in scope on page 4 | no |
| Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf | ValidatorManager | unmatched — not counted | — | mentioned in finding Bifrost-01 | no |
| 2024-03-11 Audit Report - Bifrost Finance Leveraged Staking v1.0.pdf | lend-market | unmatched — not counted | — | listed in scope | no |
| 2024-03-11 Audit Report - Bifrost Finance Leveraged Staking v1.0.pdf | leverage-staking | unmatched — not counted | — | listed in scope | no |
| 2024-03-11 Audit Report - Bifrost Finance Leveraged Staking v1.0.pdf | prices | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [12782] slowmist-rep-bifrost-2022-02.pdf
- [12783] certik-rep-bifrost-2022-01.pdf
- [12784] SlowMist Audit Report - Bifrost vETH 2.0.pdf
- [12785] slowmist-rep-bifrost-slp-2022-08.pdf
- [12786] Bifrost_vtoken-voting_202310121750.pdf
- [12787] Bifrost(vtoken-minting&&slp-v2)_202509251121.pdf
- [12788] Bifrost(veth-3.0&&slpx-v2)_202509251035.pdf
- [12789] 2024-03-11 Audit Report - Bifrost Finance Leveraged Staking v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
