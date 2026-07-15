# Agentic Audit Brief: Nexus Mutual

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Nexus Mutual (`nexus-mutual`)
- Website: [https://nexusmutual.io/](https://nexusmutual.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 39 unique implementations (42 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $76,712,645.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Nexus Mutual. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 10 core, 3 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (10), supporting (3)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (9), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01bfd8...0cd07e`, chain 1)
- UnnamedContract (`0x177665...903f7a`, chain 1)
- UnnamedContract (`0xcafea2...236b9e`, chain 1)
- UnnamedContract (`0xcafea5...f06eb8`, chain 1)
- UnnamedContract (`0xcafea5...48e97f`, chain 1)
- UnnamedContract (`0xcafea5...59a24a`, chain 1)
- UnnamedContract (`0xcafea5...1cf81f`, chain 1)
- UnnamedContract (`0xcafea6...82ca32`, chain 1)
- UnnamedContract (`0xcafeac...9646fa`, chain 1)
- UnnamedContract (`0xcafeac...424ea5`, chain 1)
- UnnamedContract (`0xcafeac...7bc3eb`, chain 1)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 1)
- UnnamedContract (`0xd7c49c...d4cf3b`, chain 1)
- UnnamedContract (`0xdc2d35...ef43af`, chain 1)
- CoverBroker (`0xcb2b73...507814`, chain 1)
- CoverViewer (`0xcafea5...fff8b9`, chain 1)
- OwnedUpgradeabilityProxy (`0x4a5c68...e87900`, chain 1)
- OwnedUpgradeabilityProxy (`0x540738...7960b8`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafea5...04210f`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafea5...2487cd`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafea5...3477e4`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafeab...9c6c13`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafeac...82ee62`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafead...87aa8d`, chain 1)
- StakingPoolFactory (`0xcafeaf...101cb3`, chain 1)
- UpgradeableProxy (`0xcafea9...1697cb`, chain 1)
- wNXM (`0x0d438f...432bde`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 27 of 39 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 39
- Raw deployments: 42
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/nexusmutual/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssessmentViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeaa...80f0cd` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389898 | `0xcafeac...82ee62` | ⚠️ Unaudited |
| CoverBroker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389886 | `0xcb2b73...507814` | ⚠️ Unaudited |
| CoverProducts | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389891 | `0xcafead...87aa8d` | ⚠️ Unaudited |
| CoverViewer | periphery | project_anchor | own_supporting | 0 | ethereum | unit-389878 | `0xcafea5...fff8b9` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x09abbe...017cf5`; ethereum `0x57d2d8...0d7fa1`; ethereum `0x8e53d0...64cfe3`; ethereum `0xfa7e85...cbdb3c` | ⚠️ Unaudited |
| IndividualClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcafeac...de7a62` | ⚠️ Unaudited |
| LegacyAssessment | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcafeaa...3690a3` | ⚠️ Unaudited |
| LegacyMemberRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x055cc4...b03926` | ⚠️ Unaudited |
| LimitOrders | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389894 | `0xcafea5...04210f` | ⚠️ Unaudited |
| NexusViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeab...6302b6` | ⚠️ Unaudited |
| Pool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-389895 | `0xcafea9...1697cb` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeaf...cf6158` | ⚠️ Unaudited |
| PriceFeedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafea9...97a592` | ⚠️ Unaudited |
| Ramm | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389893 | `0xcafea5...2487cd` | ⚠️ Unaudited |
| SafeTracker | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389890 | `0xcafeab...9c6c13` | ⚠️ Unaudited |
| StakingPoolFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-389885 | `0xcafeaf...101cb3` | ⚠️ Unaudited |
| StakingProducts | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389896 | `0xcafea5...3477e4` | ⚠️ Unaudited |
| StakingViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafea5...7f236b` | ⚠️ Unaudited |
| SwapOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeae...74f37e` | ⚠️ Unaudited |
| TemporaryGovernance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389897 | `0x4a5c68...e87900` | ⚠️ Unaudited |
| TokenController | governance | project_anchor | own_supporting | 1 | ethereum | unit-389892 | `0x540738...7960b8` | ⚠️ Unaudited |
| wNXM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389871 | `0x0d438f...432bde` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389870 | `0x01bfd8...0cd07e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389872 | `0x177665...903f7a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389873 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389874 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389875 | `0xcafea2...236b9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389876 | `0xcafea5...f06eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389877 | `0xcafea5...48e97f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389879 | `0xcafea5...59a24a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389880 | `0xcafea5...1cf81f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389881 | `0xcafea6...82ca32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389882 | `0xcafeac...9646fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389883 | `0xcafeac...424ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389884 | `0xcafeac...7bc3eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389887 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389888 | `0xd7c49c...d4cf3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389889 | `0xdc2d35...ef43af` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/nexusmutual/information](https://immunefi.com/bug-bounty/nexusmutual/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [audits-and-security.md](https://github.com/NexusMutual/docs/blob/master/docs/resources/audits-and-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4594] immunefi.com/bug-bounty/nexusmutual/information — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name 'Nexus Mutual' is mentioned. No audit date is present.
- [10354] audits-and-security.md — no match: The document is a summary page listing multiple audits with links to external reports, but does not contain the actual audit scope details or contract names. No specific contracts are named in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcafeac...82ee62` | Cover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb2b73...507814` | CoverBroker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafead...87aa8d` | CoverProducts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea5...fff8b9` | CoverViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea5...04210f` | LimitOrders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea9...1697cb` | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea5...2487cd` | Ramm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafeab...9c6c13` | SafeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafeaf...101cb3` | StakingPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea5...3477e4` | StakingProducts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a5c68...e87900` | TemporaryGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x540738...7960b8` | TokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d438f...432bde` | wNXM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [10354] audits-and-security.md

Fork inheritance lineage and inherited audits are included when available.
