# Agentic Audit Brief: BeraPaw

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 5 audit(s)
- Eligible audit results: 7 (5 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: BeraPaw (`berapaw`)
- Website: [https://www.berapaw.com](https://www.berapaw.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: 2/4 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $213,335.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BeraPaw. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across berachain. Structural roles: 3 core, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (2)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (3), erc165 (3), erc20 (3), erc1967proxy (2), erc20permit (2)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8ba3f4...a71d66`, chain 80094)
- UnnamedContract (`0xa77dee...d712b0`, chain 80094)
- UnnamedContract (`0xe3e61d...1f52c6`, chain 80094)
- UnnamedContract (`0xeeac64...c20e3d`, chain 80094)
- UnnamedContract (`0xface73...9ef0ca`, chain 80094)
- UnnamedContract (`0xfeedb9...e5cafe`, chain 80094)
- ERC1967Proxy (`0x4b1d14...f0b00b`, chain 80094)
- LBGT (`0xbaadcc...d6babe`, chain 80094)
- pBERA (`0xdeadf1...26b34a`, chain 80094)
- PrePaw (`0x03c86e...33e1ac`, chain 80094)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/4 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations excluded (2 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 10 of 29 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 50.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LBGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-380490 | `0xbaadcc...d6babe` | ✅ Audited |
| pBERA | unknown | project_anchor | own_supporting | 0 | berachain | unit-380491 | `0xdeadf1...26b34a` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuctionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x79f068...e0bc59` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | berachain | unit-380496 | `0x34018a...4e5e95` | ⚠️ Unaudited |
| BeraPawForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1cb5d6...29fb3d` | ⚠️ Unaudited |
| BeraPawRewardsReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x717dd5...06bdd0` | ⚠️ Unaudited |
| BeraPawRewardVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x339922...e2c699` | ⚠️ Unaudited |
| BGT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x656b95...eb1dba` | ⚠️ Unaudited |
| BuyBackBurnModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8e91e2...19ef5b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x118d2c...3eec9a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x3ea91a...96ec28` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | berachain | unit-380497 | `0x4b1d14...f0b00b` | ⚠️ Unaudited |
| EulerDepositLBGTModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9e1b7b...b22634` | ⚠️ Unaudited |
| LbgtHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x938f83...355eb4` | ⚠️ Unaudited |
| LBGTStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e4692...ff13f4` | ⚠️ Unaudited |
| LPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3301dd...b55b8d` | ⚠️ Unaudited |
| PolVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43a5df...3c9606` | ⚠️ Unaudited |
| PrePaw | unknown | project_anchor | own_supporting | 0 | berachain | unit-380486 | `0x03c86e...33e1ac` | ⚠️ Unaudited |
| RewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe8ed00...d5a401` | ⚠️ Unaudited |
| StakedLbgt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x083546...771ce9` | ⚠️ Unaudited |
| StakedPBera | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x18e352...265a5c` | ⚠️ Unaudited |
| yPawRefund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe9405d...8a96b5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-380487 | `0x4eb335...0ce20d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380488 | `0x8ba3f4...a71d66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380489 | `0xa77dee...d712b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380492 | `0xe3e61d...1f52c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380493 | `0xeeac64...c20e3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380494 | `0xface73...9ef0ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380495 | `0xfeedb9...e5cafe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BeraPaw - Core Contracts - Initial Report](https://drive.google.com/file/d/1-QYOlw-qVZRdeFvqeNrqwFHh27zhjojC/view?usp=drive_link) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [BeraPaw - Core Contracts - Final Report](https://drive.google.com/file/d/1G43j12bsHnqktqF75Z1Bu2aaUh1Hekad/view?usp=drive_link) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [BeraPaw - Pol Strategy Vault - Initial Report](https://drive.google.com/file/d/19DeHlc3RRT_ZVr5yXRO8VgsAxBWkfyq3/view?usp=drive_link) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BeraPaw - Pol Strategy Vault - Final Report](https://drive.google.com/file/d/104um4fN6lTN7EY8KxUfofVhkcs7w1Fcm/view?usp=drive_link) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BeraPaw - pBERA - Initial Report](https://drive.google.com/file/d/1lbUUP96kl8Z2Hba8aIEeLS8g8wtAJKTb/view?usp=drive_link) | unknown | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [BeraPaw - pBERA - Final Report](https://drive.google.com/file/d/18EWumO-MPJrPbNMDQvWrT6mYXlFZGupw/view?usp=drive_link) | unknown | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [BeraPaw – Forge & Staker Upgrades](https://drive.google.com/file/d/1DxzKgFjstAunklmUoHKFwY2z_uWfcysk/view?usp=drive_link) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16836] BeraPaw - Core Contracts - Initial Report — matched: Scope section explicitly lists 6 files. Audit date from cover page and timeline.
- [16837] BeraPaw - Core Contracts - Final Report — matched: Scope section explicitly lists 6 files. Audit date from cover page and final report publication date.
- [16838] BeraPaw - Pol Strategy Vault - Initial Report — no match: Scope section explicitly lists 6 files. Audit date from cover page and executive summary.
- [16839] BeraPaw - Pol Strategy Vault - Final Report — no match: Scope section explicitly lists 6 files. Audit date from cover page and header.
- [16840] BeraPaw - pBERA - Initial Report — matched: Scope section explicitly lists 5 files. Audit date from cover page and executive summary.
- [16841] BeraPaw - pBERA - Final Report — matched: Scope section explicitly lists 5 contracts in src/core/. Audit date from cover page and final report publication date.
- [16842] BeraPaw – Forge & Staker Upgrades — matched: Scope section explicitly lists two contracts: BeraPawForge.sol and BeraPawStaker.sol. Audit date is 10/09/2025 from the published date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BeraPaw - Core Contracts - Initial Report | Constants | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | LBGT | own contract | LBGT (selected) `0xbaadcc...d6babe` — deployed 2025-02-25 14:51:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Core Contracts - Initial Report | StakedLgbt | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | RewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | PolController | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | BeraPawForge | own contract | 0xfeedb9… (selected) `0xfeedb9...e5cafe` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Core Contracts - Final Report | Constants | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | LBGT | own contract | LBGT (selected) `0xbaadcc...d6babe` — deployed 2025-02-25 14:51:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Core Contracts - Final Report | StakedLgbt | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | RewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | PolController | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | BeraPawForge | own contract | 0xfeedb9… (selected) `0xfeedb9...e5cafe` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Pol Strategy Vault - Initial Report | HarvestModule | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | PolVault | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | RewardVaultStakingToken | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | BuyBackBurn | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | IHarvestModule | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | IPolVault | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Final Report | HarvestModule | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | PolVault | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | RewardVaultStakingToken | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | BuyBackBurn | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | IHarvestModule | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | IPolVault | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - pBERA - Initial Report | BeraPawStaker | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Initial Report | pBERA | own contract | pBERA (selected) `0xdeadf1...26b34a` — deployed 2025-09-10 21:36:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Initial Report | StakedPBera | own contract | 0xe3e61d… (selected) `0xe3e61d...1f52c6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Initial Report | ValidatorOperator | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Initial Report | StakerRewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Final Report | BeraPawStaker | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Final Report | pBERA | own contract | pBERA (selected) `0xdeadf1...26b34a` — deployed 2025-09-10 21:36:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Final Report | StakedPBera | own contract | 0xe3e61d… (selected) `0xe3e61d...1f52c6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Final Report | ValidatorOperator | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Final Report | StakerRewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw – Forge & Staker Upgrades | BeraPawForge | own contract | 0xfeedb9… (selected) `0xfeedb9...e5cafe` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw – Forge & Staker Upgrades | BeraPawStaker | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x03c86e...33e1ac` | PrePaw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=9

Zero-match audit list:

- [16838] BeraPaw - Pol Strategy Vault - Initial Report
- [16839] BeraPaw - Pol Strategy Vault - Final Report

Fork inheritance lineage and inherited audits are included when available.
