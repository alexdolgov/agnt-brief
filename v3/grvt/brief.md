# Agentic Audit Brief: Grvt

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Grvt (`grvt`)
- Website: [https://grvt.io/](https://grvt.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-326, chain-327, ethereum, grvt-exchange
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,740,313.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Grvt. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across chain-326, chain-327, ethereum, grvt-exchange. Structural roles: 4 unclassified, 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: unclassified (4), supporting (2), core (1)
- Contract kinds: contract (6), abstract (1)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Exchange (`0x85dee8...a74098`, chain 325)
- TimelockController (`0x4e2971...ea36de`, chain 1)
- TransparentUpgradeableProxy (`0xe17aed...113a65`, chain 1)
- Vault ProxyAdmin (`0xf57be7...381575`, chain 1)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (3 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 4 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 33.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GRVTBridgeProxy | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-387139 | `0xe17aed...113a65` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3Strategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-387145 | `0x1ff873...07a5e4` | ⚠️ Unaudited |
| GRVTL1TreasuryVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387113 | `0x11f6ee...a4ef2e` | ⚠️ Unaudited |
| GRVTL1TreasuryVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-387143 | `0xc95fed...b48f45` | ⚠️ Unaudited |
| L1NativeTokenVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-387141 | `0xbed1eb...1111f6` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-387118 | `0x4e2971...ea36de` | ⚠️ Unaudited |
| Vault ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387126 | `0xf57be7...381575` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Exchange | unknown | project_anchor | own_supporting | 0 | grvt-exchange | unit-387127 | `0x85dee8...a74098` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387115 | `0x3a2391...0b19e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387120 | `0x6e1b2a...971439` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387122 | `0x7bc348...703af8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387124 | `0x882285...33f5e3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | grvt-exchange | unit-387130 | `0xb78715...8901d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-326 | unit-387132 | `0x3a435a...410998` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-326 | unit-387133 | `0x9faca4...894e93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-327 | unit-387135 | `0x45ce10...bda881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-327 | unit-387137 | `0xd53767...ff11c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit - Spearbit Report December 14 2025.pdf](https://github.com/gravity-technologies/exchange-contract/blob/main/docs/Audit%20-%20Spearbit%20Report%20December%2014%202025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21266] Audit - Spearbit Report December 14 2025.pdf — matched: Extracted contract names from findings context; no explicit scope section found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit - Spearbit Report December 14 2025.pdf | FundingAndSettlement | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | TradeContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | LiquidationContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | DataStructure | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | RiskCheck | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | ConfigContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | OracleContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | TransferContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | AccountContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | SubAccountContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | GRVTBridgeProxy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe17aed...113a65` — deployed 2024-12-02 11:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit - Spearbit Report December 14 2025.pdf | TradeSig | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 11 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
