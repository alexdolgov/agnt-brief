# Agentic Audit Brief: Mainstreet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Mainstreet (`mainstreet`)
- Website: [https://mainstreet.finance/](https://mainstreet.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (18 raw deployments)
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

- UnnamedContract (`0x4ba01f22827018b4772cd326c7627fb4956a7c00`, chain 1)
- UnnamedContract (`0xb72db4e3bdf013b6386e3e17a5a999230a9a7f98`, chain 1)
- ERC1967Proxy (`0x22eb4e61fe4d4e31113979e8b1f4377d46bc98f2`, chain 1)
- ERC1967Proxy (`0x70c0c12fbb3acfff8e48abf027436971cf2ade14`, chain 1)
- ERC1967Proxy (`0x890a5122aa1da30fec4286de7904ff808f0bd74a`, chain 1)
- FeeSilo (`0x6665efde9f1916a9e16f7f955375ecd392b98b81`, chain 1)
- msUSDSilo (`0x6f188821283923953121f35d74e69a5e73ea6871`, chain 1)
- SafeProxy (`0x0eae4acb10f3e5696cf6b0de33693ef8ec571858`, chain 1)
- SafeProxy (`0x6580adacc5dd7328eabde0d7af257535c08dccc4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 8 of 14 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/12
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 14
- Raw deployments: 18
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
| WatchPug | Tier 2 | 3 | 25.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainstreetMinter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388754 | `0x70c0c12fbb3acfff8e48abf027436971cf2ade14` | ✅ Audited |
| msUSDSilo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388743 | `0x6f188821283923953121f35d74e69a5e73ea6871` | ✅ Audited |
| StakedmsUSD | token | project_anchor | own_supporting | 1 | ethereum | unit-388753 | `0x890a5122aa1da30fec4286de7904ff808f0bd74a` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CustodianManager | governance | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-388752 | 2 deployments: ethereum `0x4cc94169605069ddf82c815493cf6048f1935d0a`; ethereum `0x7d4ad0e1161a7407dac817629bceb2e6d7125eab` | ⚠️ Unaudited |
| FeeSilo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388742 | `0x6665efde9f1916a9e16f7f955375ecd392b98b81` | ⚠️ Unaudited |
| MainstreetMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d08df027d12fd9c3441cf1829f1b47420044fae` | ⚠️ Unaudited |
| msYBridger | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-388750 | `0x22eb4e61fe4d4e31113979e8b1f4377d46bc98f2` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | third_party_dependency | 2 | ethereum | unit-388751 (2 proxies) | 2 deployments: ethereum `0x0eae4acb10f3e5696cf6b0de33693ef8ec571858`; ethereum `0x6580adacc5dd7328eabde0d7af257535c08dccc4` | ⚠️ Unaudited |
| StablePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x111ce2a60c30f6058a57d0dbae1a39a42d998826`; ethereum `0x9054ae85300c7d3a325714fc2f1454d0b7c73a12` | ⚠️ Unaudited |
| StakedmsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ced7dce66df68a6828f74ea73612fb511471a7` | ⚠️ Unaudited |
| StaticPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-388738 | `0x098e47096856eb292d8b2d379b74e987e23cd2af` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42d9ee7049f5dc573fe08330a3597af17437ebb6`; ethereum `0xcf72a84edaae931385e84fb4c2edee07a32822a6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388739 | `0x4ba01f22827018b4772cd326c7627fb4956a7c00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388746 | `0xb72db4e3bdf013b6386e3e17a5a999230a9a7f98` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 3
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=2, source verified unclassified=1

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | MainstreetMinter<br>`0x1d08df027d12fd9c3441cf1829f1b47420044fae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f9d2797082797bb7361c6e26b42d68c9da5c56` |
| candidate review | StakedmsUSD<br>`0x42ced7dce66df68a6828f74ea73612fb511471a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f9d2797082797bb7361c6e26b42d68c9da5c56` |
| source verified unclassified | CustodianManager<br>`0x7d4ad0e1161a7407dac817629bceb2e6d7125eab` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xe0f9d2797082797bb7361c6e26b42d68c9da5c56` |

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
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | MainstreetMinter | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x70c0c12fbb3acfff8e48abf027436971cf2ade14` — deployed 2025-12-04 22:49:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | StakedmsUSD | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x890a5122aa1da30fec4286de7904ff808f0bd74a` — deployed 2025-12-04 22:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | msUSDV2 | own contract | 0x4ba01f… (selected) `0x4ba01f22827018b4772cd326c7627fb4956a7c00` — deployed 2025-12-04 21:29:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | msUSDV2Satellite | unmatched — not counted | — | Listed in scope and finding WP-I7 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | StaticPriceOracle | unmatched — not counted | — | Listed in scope and finding WP-N8 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | msUSDSilo | own contract | msUSDSilo (selected) `0x6f188821283923953121f35d74e69a5e73ea6871` — deployed 2025-12-04 22:49:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | NonblockingLzAppUpgradeable | unmatched — not counted | — | Listed in scope and finding WP-I6 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | OFTCoreUpgradeable | unmatched — not counted | — | Listed in scope and finding WP-I7 references this contract. | no |
| Mainstreet_v2_Audit_Report_by_WatchPug.pdf | OFTUpgradeable | unmatched — not counted | — | Listed in scope and finding WP-I6 references this contract. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6665efde9f1916a9e16f7f955375ecd392b98b81` | FeeSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22eb4e61fe4d4e31113979e8b1f4377d46bc98f2` | msYBridger | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
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
