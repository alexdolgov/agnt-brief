# Agentic Audit Brief: Segment Finance

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

- Project: Segment Finance (`segment-finance`)
- Website: [https://segment.finance](https://segment.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, opbnb
- Contract surface: 35 unique implementations (40 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $510,615.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Segment Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 48 contract row(s) across bsc, ethereum, opbnb. Structural roles: 23 core, 13 unclassified, 12 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 48
- Structural roles: core (23), unclassified (13), supporting (12)
- Contract kinds: contract (42), abstract (6)
- Detected standards: erc20 (16), ownable (6), erc1967proxy (5), erc165 (3), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (23), openzeppelin-upgradeable (5), foundry (1)
- Upgradeable-pattern rows: 8

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 48; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 35 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 35
- Raw deployments: 40
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Ethereum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254585 | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254611 | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254667 | `0x8ac76a...cd580d` | ⚠️ Unaudited |
| BEP20USDT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254601 | `0x55d398...197955` | ⚠️ Unaudited |
| Diamond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254671 | 2 deployments: bsc `0x57e09c...060173`; bsc `0xdeb818...c92fa5` | ⚠️ Unaudited |
| Diamond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254655 | 2 deployments: opbnb `0x71ac0e...a8cbb5`; opbnb `0xae2a97...140817` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254660 | `0xd76d8c...b1df3c` | ⚠️ Unaudited |
| HypFiatToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254659 | `0xf0a54a...ee3862` | ⚠️ Unaudited |
| JumpRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254607 | `0x62bb16...b86d0a` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254571 | `0x882cc1...e181f8` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254649 | `0xf1c743...05fc12` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254569 | `0x7c6b91...7227f2` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254572 | `0x9e5aac...ca96f3` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254576 | `0xe7798f...5a77ea` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254595 | `0x48758b...a97155` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254640 | `0xd5f767...af0626` | ⚠️ Unaudited |
| PoolLens | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254615 | `0x759dd1...1c4cbe` | ⚠️ Unaudited |
| PoolLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254568 | `0x7a72b3...7435fb` | ⚠️ Unaudited |
| PoolRegistry | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254658 | `0xb5983a...f54cf4` | ⚠️ Unaudited |
| PoolRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254654 | `0xe890d8...9ecb83` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254669 | `0x763217...7b9a05` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254657 | `0xaacf63...b4d491` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 4 | bsc | unit-254664 (4 proxies) | 4 deployments: bsc `0x12cd46...d0f61d`; bsc `0x382117...5d7eed`; bsc `0x44b1e0...300119`; bsc `0x8969b8...93e226` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254656 | `0x7add37...b95102` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254566 | `0x567558...534c3c` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254570 | `0x81b98b...2a08d2` | ⚠️ Unaudited |
| SeBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254605 | `0x5fcea9...3328c3` | ⚠️ Unaudited |
| SEF | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254603 | `0x5de40c...bbc4fd` | ⚠️ Unaudited |
| SEFVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254662 | `0xc6bcbe...16fe57` | ⚠️ Unaudited |
| SegmentLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254590 | `0x31e98e...46856b` | ⚠️ Unaudited |
| SegmentLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254578 | `0xf9fd96...a817e6` | ⚠️ Unaudited |
| SetterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254561 | `0x1d6c46...bba289` | ⚠️ Unaudited |
| STreasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254593 | `0x3a833e...f134b9` | ⚠️ Unaudited |
| STreasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254562 | `0x2f6778...0ad696` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254637 | `0xc835e1...69a4ec` | ⚠️ Unaudited |

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
| [spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf](https://1437394138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcYvodOcCalriGDOIk0m4%2Fuploads%2F2aV2FDinQ3TxtFSRRnqN%2FSegment_Finance_-_Public_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Segment%20Finance%20Pool%20Register%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13823] spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf — no match: Audit scope explicitly lists two files: PoolRegistry.sol and PoolRegistryInterface.sol. Audit date is Nov 21, 2023 from cover page and executive summary.
- [13824] Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf — no match: Scope explicitly lists PoolRegistry.sol and PoolRegistryInterface.sol. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf | PoolRegistry | unmatched — not counted | — | listed in scope section: 'Our audit scope encompasses only two files: PoolRegistry.sol and PoolRegistryInterface.sol' | no |
| spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf | PoolRegistryInterface | unmatched — not counted | — | listed in scope section: 'Our audit scope encompasses only two files: PoolRegistry.sol and PoolRegistryInterface.sol' | no |
| Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf | PoolRegistry | unmatched — not counted | — | listed in scope section | no |
| Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf | PoolRegistryInterface | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13823] spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf
- [13824] Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
