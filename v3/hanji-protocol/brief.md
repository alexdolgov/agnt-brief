# Agentic Audit Brief: Hanji Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hanji Protocol (`hanji-protocol`)
- Website: [https://hanji.io](https://hanji.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $961,006.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hanji Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base. Structural roles: 4 core, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), infra (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (3), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (4), layerzero (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15c8cb...25eee3`, chain 8453)
- UnnamedContract (`0xc032b6...3609de`, chain 8453)
- UnnamedContract (`0xf455b3...354eea`, chain 8453)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0...ed33bf`, chain 8453)
- WETH9 (`0x420000...000006`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 6 of 9 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-241636 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-241635 | `0x833589...a02913` | ⚠️ Unaudited |
| LBTC | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241637 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-241615 | `0x420000...000006` | ⚠️ Unaudited |
| WXTZ | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-241629 | `0xc9b53a...7a3eab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241611 | `0x15c8cb...25eee3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-241618 | `0x628a1d...30eb28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241627 | `0xc032b6...3609de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241632 | `0xf455b3...354eea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hanji Protocol Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Hanji/OnchainCLOB/Hanji%20Protocol%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [Hanji Liquidity Vault Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Hanji/Liquidity%20Vault/Hanji%20Liquidity%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11585] Hanji Protocol Security Audit Report.pdf — no match: Extracted contract names from scope table and deployed contracts list. Audit date from cover page.
- [11586] Hanji Liquidity Vault Security Audit Report.pdf — no match: Extracted 14 contract names from the scope table and deployments table. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hanji Protocol Security Audit Report.pdf | HanjiTrie | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiLOB | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiLOBFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiTrieFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiErrors | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiFP24 | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiHelper | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiWatchDog | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiWatchDogFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | OnchainCLOB | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | OnchainCLOBFactory | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | TrieLib | unmatched — not counted | — | mentioned in findings (e.g., TrieLib.sol) | no |
| Hanji Protocol Security Audit Report.pdf | WatchDog | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | Helper | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | TrieFactory | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | Proxy | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | Trie | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPManagerFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ErrorReporter | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPManager | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | Proxy | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ProxyLOB | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | RfqProxyLOB | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | Ecdsa | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | RfqOrderLib | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ProxyLOBBatch | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ProxyPyth | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | TokenValueCalculator | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | PythPriceHelper | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPManagerHelper | unmatched — not counted | — | listed in deployments table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xcbb7c0...ed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589...a02913` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420000...000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11585] Hanji Protocol Security Audit Report.pdf
- [11586] Hanji Liquidity Vault Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
