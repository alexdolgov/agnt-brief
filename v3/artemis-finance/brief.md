# Agentic Audit Brief: Artemis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Artemis Finance (`artemis-finance`)
- Website: [https://artemisfinance.io/](https://artemisfinance.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, goat, metis
- Contract surface: 42 unique implementations (42 raw deployments)
- Coverage basis: 1/14 confirmed own live verified implementations (7.1%); conservative 7.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $717,498.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Artemis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum, goat, metis. Structural roles: 4 infra, 1 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: infra (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (3), ownable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02f294...c360c4`, chain 2345)
- UnnamedContract (`0x17e5da...64a31f`, chain 2345)
- UnnamedContract (`0x3a45af...657157`, chain 2345)
- UnnamedContract (`0x4daa75...d9dca4`, chain 2345)
- UnnamedContract (`0x5f0d03...93b88f`, chain 2345)
- UnnamedContract (`0x941508...5a94c3`, chain 2345)
- UnnamedContract (`0x9a5f06...77c785`, chain 2345)
- UnnamedContract (`0xa30279...126f34`, chain 2345)
- UnnamedContract (`0xb2d167...4264c8`, chain 2345)
- UnnamedContract (`0xd78ff6...8c73b1`, chain 2345)
- UnnamedContract (`0xe4cbfd...f3567e`, chain 2345)
- UnnamedContract (`0xe5474a...b47287`, chain 2345)
- UnnamedContract (`0xed4dcc...9e1cf2`, chain 2345)
- EACAggregatorProxy (`0xd4a5bb...fdfa6d`, chain 1088)
- MerkleDistributorFactory (`0xb2d167...4264c8`, chain 1088)
- ProxyAdmin (`0x479603...9e218d`, chain 1088)
- TransparentUpgradeableProxy (`0x014e82...321f5d`, chain 1)
- TransparentUpgradeableProxy (`0x0cf6ab...80e139`, chain 1088)
- TransparentUpgradeableProxy (`0x13e029...1beb94`, chain 1088)
- TransparentUpgradeableProxy (`0x22fc5a...ce4455`, chain 1088)
- TransparentUpgradeableProxy (`0x2583a2...b4821d`, chain 1088)
- TransparentUpgradeableProxy (`0x357f55...25e849`, chain 1088)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 1088)
- TransparentUpgradeableProxy (`0x500d5e...84d3d6`, chain 1088)
- TransparentUpgradeableProxy (`0x70f619...7e72b9`, chain 1088)
- TransparentUpgradeableProxy (`0x96c4a4...19ad8e`, chain 1088)
- UpgradeableBeacon (`0x2350ea...709913`, chain 1088)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/14 (7.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 27 of 42 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/14
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 1 | 7.1% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MerkleDistributorFactory | unknown | project_anchor | own_supporting | 0 | metis | unit-379733 | `0xb2d167...4264c8` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x06f582...94b5ed` | ⚠️ Unaudited |
| AMTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x646279...f1e6e3` | ⚠️ Unaudited |
| AMTDepositPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x507fdb...466ced` | ⚠️ Unaudited |
| AMTRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xad2995...53421c` | ⚠️ Unaudited |
| AMTWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x06c499...f663ce` | ⚠️ Unaudited |
| ArtMetis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x920873...56a3b8` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xed2b73...417839` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x01da51...805bce` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379734 | `0xd4a5bb...fdfa6d` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x42b087...46b04a` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79892e...7ec046` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x741620...c4fecc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | metis | unit-379723 | `0x479603...9e218d` | ⚠️ Unaudited |
| SequencerNodeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbb1f6c...0f8569` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x345a89...845404` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x135c4d...ee9a16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379752 | `0x014e82...321f5d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379715 | `0x0cf6ab...80e139` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379716 | `0x13e029...1beb94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379718 | `0x22fc5a...ce4455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379720 | `0x2583a2...b4821d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379721 | `0x357f55...25e849` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379724 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379726 | `0x500d5e...84d3d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379728 | `0x70f619...7e72b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379730 | `0x96c4a4...19ad8e` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | project_anchor | own_supporting | 0 | metis | unit-379719 | `0x2350ea...709913` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1679fe...46723b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379739 | `0x02f294...c360c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379740 | `0x17e5da...64a31f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379741 | `0x3a45af...657157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379742 | `0x4daa75...d9dca4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379743 | `0x5f0d03...93b88f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379744 | `0x941508...5a94c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379745 | `0x9a5f06...77c785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379746 | `0xa30279...126f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379747 | `0xb2d167...4264c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379748 | `0xd78ff6...8c73b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379749 | `0xe4cbfd...f3567e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379750 | `0xe5474a...b47287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379751 | `0xed4dcc...9e1cf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Artemis-v1.0.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2F7DxuyRfKvFSf1kTGkLwN%2FPeckShield-Audit-Report-Artemis-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield-Audit-Report-Artemis-v1.0.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2FvfYMfFs0CegB7fiDbEY1%2FPeckShield-Audit-Report-Artemis-v1.0.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Artemis_GOAT_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2Fj7xRiPEECoBznYCVViXZ%2FArtemis_GOAT_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2FuzfwiX1PeIuSJkY9Wnzp%2FArtmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2F3CwTyqdsSdVS2VdzLuqe%2FArtemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19452] PeckShield-Audit-Report-Artemis-v1.0.pdf — no match: Contracts extracted from findings sections; no explicit scope table listing all contracts, but these are the contracts discussed in findings.
- [19453] PeckShield-Audit-Report-Artemis-v1.0.pdf — no match: Scope explicitly lists AMTDepositPool.sol, AMTWithdrawalManager.sol, StakingPool.sol, and L1/StakingPoolManager.sol. Audit date is July 27, 2024 from cover page.
- [19454] Artemis_GOAT_Audit_Report_by_WatchPug.pdf — matched: Extracted contract names from findings and scope summary. Audit date from delivery date.
- [19455] Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf — no match: Only Swap.sol is explicitly referenced in findings; no formal scope section or contract listing provided.
- [19456] Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf — matched: Extracted from audit report summary and findings sections. Main contracts: SequencerPool, DepositPool, LockingDelegator, Locking, IncentivePool, SequencerPoolManager.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPool | unmatched — not counted | — | mentioned in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPoolManager | unmatched — not counted | — | mentioned in findings PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTDepositPool | unmatched — not counted | — | mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTRewardPool | unmatched — not counted | — | mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTDepositPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTWithdrawalManager | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPoolManager | unmatched — not counted | — | listed in scope | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | DepositPool | unmatched — not counted | — | mentioned in findings and scope | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | RewardPool | unmatched — not counted | — | mentioned in findings | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | WithdrawalManager | unmatched — not counted | — | mentioned in findings | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | SequencerPoolManager | own contract | MerkleDistributorFactory (selected) `0xb2d167...4264c8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | TransferHelper | unmatched — not counted | — | mentioned in WP-H2 | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | ISequencerPool | unmatched — not counted | — | mentioned in WP-C1 | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | IERC20MintBurn | unmatched — not counted | — | mentioned in WP-C1 | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | DoubleEndedQueue | unmatched — not counted | — | mentioned in WP-L6 | no |
| Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf | Swap | unmatched — not counted | — | mentioned in findings [WP-L3] and [WP-N4] as Swap.sol | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | SequencerPool | unmatched — not counted | — | listed in scope and findings | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | DepositPool | unmatched — not counted | — | listed in findings | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | LockingDelegator | unmatched — not counted | — | mentioned in findings as contract | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | Locking | unmatched — not counted | — | mentioned in findings as contract | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | IncentivePool | unmatched — not counted | — | mentioned in findings as contract | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | SequencerPoolManager | own contract | MerkleDistributorFactory (selected) `0xb2d167...4264c8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [19452] PeckShield-Audit-Report-Artemis-v1.0.pdf
- [19453] PeckShield-Audit-Report-Artemis-v1.0.pdf
- [19455] Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
