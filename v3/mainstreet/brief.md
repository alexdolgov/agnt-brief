# Agentic Audit Brief: Mainstreet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mainstreet (`mainstreet`)
- Website: [https://mainstreet.finance/](https://mainstreet.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 10 unique implementations (11 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $74,181,335.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mainstreet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across ethereum. Structural roles: 6 supporting, 2 core, 2 unclassified. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: supporting (6), core (2), unclassified (2)
- Contract kinds: contract (9), abstract (1)
- Detected standards: erc1967proxy (4), ownable (1)
- Frameworks: openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4ba01f...6a7c00`, chain 1)
- UnnamedContract (`0xb72db4...9a7f98`, chain 1)
- ERC1967Proxy (`0x22eb4e...bc98f2`, chain 1)
- ERC1967Proxy (`0x70c0c1...2ade14`, chain 1)
- ERC1967Proxy (`0x890a51...0bd74a`, chain 1)
- FeeSilo (`0x6665ef...b98b81`, chain 1)
- msUSDSilo (`0x6f1888...ea6871`, chain 1)
- SafeProxy (`0x0eae4a...571858`, chain 1)
- SafeProxy (`0x6580ad...8dccc4`, chain 1)

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 8 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/6
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 10
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 3 | 50.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainstreetMinter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388754 | `0x70c0c1...2ade14` | ✅ Audited |
| msUSDSilo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388743 | `0x6f1888...ea6871` | ✅ Audited |
| StakedmsUSD | token | project_anchor | own_supporting | 1 | ethereum | unit-388753 | `0x890a51...0bd74a` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CustodianManager | governance | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-388752 | `0x4cc941...935d0a` | ⚠️ Unaudited |
| FeeSilo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388742 | `0x6665ef...b98b81` | ⚠️ Unaudited |
| msYBridger | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-388750 | `0x22eb4e...bc98f2` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | third_party_dependency | 2 | ethereum | unit-388751 (2 proxies) | 2 deployments: ethereum `0x0eae4a...571858`; ethereum `0x6580ad...8dccc4` | ⚠️ Unaudited |
| StaticPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-388738 | `0x098e47...3cd2af` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388739 | `0x4ba01f...6a7c00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388746 | `0xb72db4...9a7f98` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mainstreet_v2_Audit_Report_by_WatchPug.pdf](https://github.com/Mainstreet-Labs/mainstreet-watchpug-audit/blob/main/Mainstreet_v2_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | contract_name | matched | 4 | 2 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4639] Mainstreet_v2_Audit_Report_by_WatchPug.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report covers Mainstreet v2 smart contracts including MainstreetMinter, StakedmsUSD, msUSDV2, msUSDV2Satellite, StaticPriceOracle, msUSDSilo, and LayerZero utility contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | MainstreetMinter | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x70c0c1...2ade14` — deployed 2025-12-04 22:49:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | StakedmsUSD | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x890a51...0bd74a` — deployed 2025-12-04 22:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | msUSDV2 | own contract | 0x4ba01f… (selected) `0x4ba01f...6a7c00` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | msUSDV2Satellite | unmatched — not counted | — | Listed in scope and finding WP-I7 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | StaticPriceOracle | unmatched — not counted | — | Listed in scope and finding WP-N8 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | msUSDSilo | own contract | msUSDSilo (selected) `0x6f1888...ea6871` — deployed 2025-12-04 22:49:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | NonblockingLzAppUpgradeable | unmatched — not counted | — | Listed in scope and finding WP-I6 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | OFTCoreUpgradeable | unmatched — not counted | — | Listed in scope and finding WP-I7 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | OFTUpgradeable | unmatched — not counted | — | Listed in scope and finding WP-I6 references this contract. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6665ef...b98b81` | FeeSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22eb4e...bc98f2` | msYBridger | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
