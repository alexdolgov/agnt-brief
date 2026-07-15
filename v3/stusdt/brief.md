# Agentic Audit Brief: stUSDT

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: stUSDT (`stusdt`)
- Website: [https://stusdt.io/#/home](https://stusdt.io/#/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 4/4 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $60,224,841.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for stUSDT. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x82bb08...f7358d`, chain 1)
- MinterProxy (`0xe22d16...73728c`, chain 1)
- StUSDTProxy (`0x25ec98...145e10`, chain 1)
- UnstUSDTProxy (`0x156269...2c058c`, chain 1)
- WstUSDTProxy (`0x572975...fe1ab0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/4 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 5 of 5 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/4
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 100.0% | 2024-02 |
| yAudit | Tier 2 | 4 | 100.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MinterProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393256 | `0xe22d16...73728c` | ✅ Audited |
| StUSDTProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393258 | `0x25ec98...145e10` | ✅ Audited |
| UnstUSDTProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393257 | `0x156269...2c058c` | ✅ Audited |
| WstUSDTProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393259 | `0x572975...fe1ab0` | ✅ Audited |

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
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393255 | `0x82bb08...f7358d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.chainsecurity.com/security-audit/stusdt-smart-contracts](https://www.chainsecurity.com/security-audit/stusdt-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [ChainSecurity_StUSDT_StUSDT_Audit.pdf](https://reports.chainsecurity.com/StUSDT/ChainSecurity_StUSDT_StUSDT_Audit.pdf) | ChainSecurity | Audit | 2024-02 | stale | Direct | contract_name | matched | 4 | 4 | 0 | 29 | high |
| [stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available](https://stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit-report.pdf](https://stusdt.io/audit-report.pdf) | yAudit | Audit | 2024-02 | stale | Direct | contract_name | matched | 4 | 4 | 0 | 29 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21016] www.chainsecurity.com/security-audit/stusdt-smart-contracts — no match: The report does not contain a clear scope section listing contracts. Only the token name 'stUSDT' is mentioned as the main contract, but no file paths or additional contract names are provided.
- [21017] ChainSecurity_StUSDT_StUSDT_Audit.pdf — matched: Extracted all contracts listed in the scope section (Section 2.1) including those under FOR_ETHEREUM_CONTRACT/ and interface/library/pauseOperation subdirectories. Excluded from scope items are noted but still extracted as they were listed in scope. Audit date from cover page.
- [21018] stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available — no match: The text is a blog post announcing an audit, but does not list specific contracts in scope. No contract names or file paths are provided.
- [21019] audit-report.pdf — matched: Extracted contract names from the scope table in section 2.1. Also included Ethereum variants (FOR_ETHEREUM_CONTRACT) as separate entries. Excluded library and utils files that were explicitly out of scope. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.chainsecurity.com/security-audit/stusdt-smart-contracts | stUSDT | unmatched — not counted | — | The report states 'stUSDT is the receipt token users receive upon staking USD stablecoins' and the title mentions 'stUSDT Smart Contracts'. | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | UnstUSDTProxy | own proxy deployment | UnstUSDTProxy (proxy) (selected) `0x156269...2c058c` — deployed 2023-07-27 07:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | WstUSDTStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | BlackListManager | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | MinterProxy | own proxy deployment | MinterProxy (proxy) (selected) `0xe22d16...73728c` — deployed 2023-07-27 07:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | StUSDTG1 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | AdminProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | UnstUSDTStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | MinterG1 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | WstUSDTG1 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | WstUSDTProxy | own proxy deployment | WstUSDTProxy (proxy) (selected) `0x572975...fe1ab0` — deployed 2023-07-27 07:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | StUSDTProxy | own proxy deployment | StUSDTProxy (proxy) (selected) `0x25ec98...145e10` — deployed 2023-07-27 07:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | ValuesAggregator | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | StUSDTStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | WstUSDTG2 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | AdminStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | MinterStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | MinterForTUSD | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | AssetSwapRouter | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | UnstUSDTG1 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | IStUSDT | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | IBlackListManager | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | IProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | EnumerableSet | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | PauseController | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | AccessControl | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | AccessControlMixin | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | AccessControlSingle | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | Address | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | Initializable | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | Context | unmatched — not counted | — | listed in scope but excluded | no |
| ChainSecurity_StUSDT_StUSDT_Audit.pdf | ITRC20 | unmatched — not counted | — | listed in scope | no |
| audit-report.pdf | UnstUSDTProxy | own proxy deployment | UnstUSDTProxy (proxy) (selected) `0x156269...2c058c` — deployed 2023-07-27 07:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-report.pdf | WstUSDTStorage | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | BlackListManager | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | MinterProxy | own proxy deployment | MinterProxy (proxy) (selected) `0xe22d16...73728c` — deployed 2023-07-27 07:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-report.pdf | StUSDTG1 | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | AdminProxy | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | UnstUSDTStorage | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | MinterG1 | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | WstUSDTG1 | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | WstUSDTProxy | own proxy deployment | WstUSDTProxy (proxy) (selected) `0x572975...fe1ab0` — deployed 2023-07-27 07:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-report.pdf | StUSDTProxy | own proxy deployment | StUSDTProxy (proxy) (selected) `0x25ec98...145e10` — deployed 2023-07-27 07:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-report.pdf | ValuesAggregator | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | StUSDTStorage | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | WstUSDTG2 | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | AdminStorage | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | MinterStorage | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | MinterForTUSD | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | AssetSwapRouter | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | UnstUSDTG1 | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | IStUSDT | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | IBlackListManager | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | IProxy | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | EnumerableSet | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | PauseController | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | AccessControl | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | AccessControlMixin | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | AccessControlSingle | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | Address | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | Initializable | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | Context | unmatched — not counted | — | listed in scope table | no |
| audit-report.pdf | ITRC20 | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 59 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: unique_name=8

Zero-match audit list:

- [21016] www.chainsecurity.com/security-audit/stusdt-smart-contracts
- [21018] stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available

Fork inheritance lineage and inherited audits are included when available.
