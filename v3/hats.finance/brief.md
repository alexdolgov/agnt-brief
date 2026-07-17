# Agentic Audit Brief: Hats.Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hats.Finance (`hats.finance`)
- Website: [https://hats.finance](https://hats.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, optimism, polygon
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $194,641.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Hats.Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0xfd4255f16378306ca83e37015df01a1700dac296`, chain 1)

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
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 26 unique; 25 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutomatedFeeForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46bc877a4edc28bfef7dce78500b7970ed97c6e5` | ⚠️ Unaudited |
| FeeForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d4498e2387135a3ed1078d1037a306218a8e41d` | ⚠️ Unaudited |
| HATAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x323193b77cda1da3bb4a79f5148e9ed20f6ca233` | ⚠️ Unaudited |
| HATAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4153be482582e4cd542e2214745a5d3ce5db128` | ⚠️ Unaudited |
| HATClaimsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101` | ⚠️ Unaudited |
| HATGovernanceArbitrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | ⚠️ Unaudited |
| HATHackersNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ⚠️ Unaudited |
| HATPaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199c5835b31a32401bdee9691cfcff1e379a3852` | ⚠️ Unaudited |
| HATPaymentSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ⚠️ Unaudited |
| HATTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ⚠️ Unaudited |
| HATToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042613dadf333766c9815a97e08282ee90e5c5dc` | ⚠️ Unaudited |
| HATTokenArbitrumBridgeL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c4ec0068923da13ee11527d6cf9b7521000049` | ⚠️ Unaudited |
| HATTokenArbitrumBridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02b82d08ef5315b6206d1e946509b6bea175df4f` | ⚠️ Unaudited |
| HATTokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101` | ⚠️ Unaudited |
| HATVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ⚠️ Unaudited |
| HATVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x571f39d351513146248acafa9d0509319a327c4d` | ⚠️ Unaudited |
| HATVaultsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | ⚠️ Unaudited |
| HATVaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aa1464db005857db8fc3e0470d306fb9e54b908` | ⚠️ Unaudited |
| HATVaultsV2Data | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ⚠️ Unaudited |
| MessageDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x145b550ac44c3d052e9200937dfab0b163c538de` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7690166442e81b473d6eb413e865aa6379490371` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x773d3ee9c9ba0c85e52ed7bdd960498f668c77df` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8eb8475f764e1e5a5a8027ff1fee8adb16057f` | ⚠️ Unaudited |
| TokenLockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aa1464db005857db8fc3e0470d306fb9e54b908` | ⚠️ Unaudited |
| TokenLockFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006b6863370150a0e53a06335a53a9a2bb89d2e1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241752 | `0xfd4255f16378306ca83e37015df01a1700dac296` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202105-zokyo-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202105-zokyo-audit.pdf) | Zokyo | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [202107-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202107-g0-group-audit.pdf) | G0 Group | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [202109-levi-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202109-levi-audit.pdf) | Levi | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [202210-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202210-g0-group-audit.pdf) | G0 Group | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202301-hexen-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202301-hexen-audit.pdf) | Hexen | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [202302-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202302-g0-group-audit.pdf) | G0 Group | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Hats - Audit Report.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/Hats%20-%20Audit%20Report.pdf) | Unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17421] 202105-zokyo-audit.pdf — no match: Contracts extracted from findings and file paths in the report. No explicit scope table, but contracts are clearly audited.
- [17422] 202107-g0-group-audit.pdf — no match: Scope section states 'All solidity files in https://github.com/hats-finance/hats-contracts/tree/46e7a21fd32be2cfdf1b9f309f54dbc3b0d5dbcc'. Contract names extracted from findings.
- [17423] 202109-levi-audit.pdf — no match: All contracts listed in 'Files in scope' section extracted. Audit date inferred from title 'Hats Audit / Aug 2021' (month and year only, last day of month used).
- [17424] 202210-g0-group-audit.pdf — no match: Scope mentions all .sol files in the repository; only HATVault and RewardController are explicitly named in findings.
- [17425] 202301-hexen-audit.pdf — no match: Extracted contracts from scope and findings sections. Date from cover page.
- [17426] 202302-g0-group-audit.pdf — no match: All contracts listed in the 'Files in scope' section of the report.
- [17427] Hats - Audit Report.pdf — no match: Audit report for Hats DAO, August 2021. Scope includes 12 contracts listed under 'Files in scope'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202105-zokyo-audit.pdf | HATVault | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATMaster | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATToken | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATTokenLock | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATVaults | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | TokenLock | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | TokenLockFactory | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | Ownable | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | Governable | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | HATMaster | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | HATToken | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | TokenLockFactory | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | HATVaults | unmatched — not counted | — | mentioned in findings | no |
| 202109-levi-audit.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATMaster | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATToken | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATVaults | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | CloneFactory | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATTokenLock | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | ITokenLock | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | ITokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | OwnableInitializable | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | TokenLock | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | TokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202210-g0-group-audit.pdf | HATVault | unmatched — not counted | — | mentioned in scope and findings | no |
| 202210-g0-group-audit.pdf | RewardController | unmatched — not counted | — | mentioned in findings | no |
| 202301-hexen-audit.pdf | HATVault | unmatched — not counted | — | listed in scope and findings | no |
| 202301-hexen-audit.pdf | HATVaultsRegistry | unmatched — not counted | — | listed in scope and findings | no |
| 202301-hexen-audit.pdf | HATToken | unmatched — not counted | — | listed in findings | no |
| 202302-g0-group-audit.pdf | IHATToken | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVault | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsData | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsV1 | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsV2 | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IRewardController | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATTokenLock | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | TokenLock | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | TokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | ITokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | ITokenLock | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATGovernanceArbitrator | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATTimelockController | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATToken | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATVault | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | RewardController | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATMaster | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATToken | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATVaults | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | CloneFactory | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATTokenLock | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | ITokenLock | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | ITokenLockFactory | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | OwnableInitializable | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | TokenLock | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | TokenLockFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [17421] 202105-zokyo-audit.pdf
- [17422] 202107-g0-group-audit.pdf
- [17423] 202109-levi-audit.pdf
- [17424] 202210-g0-group-audit.pdf
- [17425] 202301-hexen-audit.pdf
- [17426] 202302-g0-group-audit.pdf
- [17427] Hats - Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
