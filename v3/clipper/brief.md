# Agentic Audit Brief: Clipper

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Clipper (`clipper`)
- Website: [https://clipper.exchange](https://clipper.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, mantle, moonbeam, optimism, polygon, polygon-zkevm
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $685,744.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Clipper. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across arbitrum, base, ethereum, mantle, moonbeam, optimism, polygon, polygon-zkevm. Structural roles: 14 core, 2 supporting, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (14), supporting (2), infra (1)
- Contract kinds: contract (14), abstract (3)
- Detected standards: erc20 (13), ownable (7), erc20permit (2), erc165 (1), erc4626 (1), ownable2step (1)
- Frameworks: openzeppelin (17), prb-math (3), chainlink (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e3fb8...0c2449`, chain 1)
- UnnamedContract (`0xac2b3f...cc74cb`, chain 10)
- UnnamedContract (`0x8e44d3...15a7ad`, chain 137)
- UnnamedContract (`0xae00af...4acb57`, chain 1101)
- UnnamedContract (`0xb32d85...41247c`, chain 8453)
- UnnamedContract (`0x769728...f590c5`, chain 42161)
- ClipperApproximateCaravelExchange (`0x655edc...ee4b77`, chain 1)
- ClipperPackedVerifiedExchange (`0x5130f6...20ed40`, chain 10)
- ClipperProtocolDeposit (`0x84f462...9ae1b9`, chain 1)
- ClipperVerifiedExchange (`0x6bfce6...3ae3b8`, chain 137)
- ClonableBeaconProxy (`0xb52bd6...ab6cf7`, chain 42161)
- FxERC20 (`0xd1a718...57a85e`, chain 137)
- OptimismSailToken (`0x7a1263...262c5e`, chain 10)
- SailToken (`0xd8f146...7415b7`, chain 1)
- SplitFeeFarm (`0xd04544...27436e`, chain 1)
- veSAIL (`0x26fe2f...166ff5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (10 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 16 of 46 unique; 30 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| BlacklistAndTimeFilter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38ae5...6c2ea2` | ⚠️ Unaudited |
| ClipperApproximateCaravelExchange | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381719 | `0x655edc...ee4b77` | ⚠️ Unaudited |
| ClipperCaravelExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381722 | `0xcc1253...9218a7` | ⚠️ Unaudited |
| ClipperCove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08f7e9...7d4be8` | ⚠️ Unaudited |
| ClipperDirectExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-381736 | `0xd01e35...de8eed` | ⚠️ Unaudited |
| ClipperExchangeInterface | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381718 | `0x2e9c6d...155bc9` | ⚠️ Unaudited |
| ClipperExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7c9c...68b738` | ⚠️ Unaudited |
| ClipperFarmingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08b4b3...e7f3f8` | ⚠️ Unaudited |
| ClipperPackedExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-381730 | `0xdbd4ff...2db7db` | ⚠️ Unaudited |
| ClipperPackedVerifiedExchange | unknown | project_anchor | own_supporting | 1 | optimism | unit-381741 | `0x5130f6...20ed40` | ⚠️ Unaudited |
| ClipperPermitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41c536...c1f834` | ⚠️ Unaudited |
| ClipperPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381726 | `0xe82906...6a99d9` | ⚠️ Unaudited |
| ClipperProtocolDeposit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381721 | `0x84f462...9ae1b9` | ⚠️ Unaudited |
| ClipperResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235d3a...88551f` | ⚠️ Unaudited |
| ClipperRouter | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381727 | `0xf0f455...09de47` | ⚠️ Unaudited |
| ClipperTransferHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12bb16...3195d7` | ⚠️ Unaudited |
| ClipperVerifiedCaravelExchange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-381725 | `0xe7b0ce...9d216c` | ⚠️ Unaudited |
| ClipperVerifiedExchange | unknown | project_anchor | own_supporting | 0 | polygon | unit-381734 | `0x6bfce6...3ae3b8` | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381739 | `0xb52bd6...ab6cf7` | ⚠️ Unaudited |
| CollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb83e7...7a6e41` | ⚠️ Unaudited |
| FxERC20 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381737 | `0xd1a718...57a85e` | ⚠️ Unaudited |
| LinearVestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7840...dfed3c` | ⚠️ Unaudited |
| Longship | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x840e96...8ff003` | ⚠️ Unaudited |
| LongshipFrontendUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21995c...0e30ca` | ⚠️ Unaudited |
| LongshipParent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35242f...4bcd60` | ⚠️ Unaudited |
| LPTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c16dd...9bb08a` | ⚠️ Unaudited |
| MainnetLPTransferFromOldClipper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205e8c...edd3bb` | ⚠️ Unaudited |
| OptimismSailToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-381728 | `0x7a1263...262c5e` | ⚠️ Unaudited |
| OwnedCollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5041f1...cefcd8` | ⚠️ Unaudited |
| PublicCollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238cc1...063c22` | ⚠️ Unaudited |
| SailToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381724 | `0xd8f146...7415b7` | ⚠️ Unaudited |
| SplitFeeFarm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381723 | `0xd04544...27436e` | ⚠️ Unaudited |
| veSAIL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381717 | `0x26fe2f...166ff5` | ⚠️ Unaudited |
| VestingMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ffbf1...f46488` | ⚠️ Unaudited |
| WrappedEthRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137f48...f6e69c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381720 | `0x6e3fb8...0c2449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae00af...4acb57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-381729 | `0xac2b3f...cc74cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-381735 | `0x8e44d3...15a7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe38c90...498c13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-381731 | `0xae00af...4acb57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon-zkevm | unit-381732 | `0xe38c90...498c13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonbeam | unit-381733 | `0xe90d41...5be933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x769728...f590c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381740 | `0xb32d85...41247c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381738 | `0x769728...f590c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MZxPgaEAx6qALhvK9dz%2F-MeQPVj2lfzFokn8pVdf%2F-MeQQbEsv7rRnS9IUpNp%2FClipper%20-%20Report%20(Quantstamp).pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZxPgaEAx6qALhvK9dz%2Fuploads%2FgKn8GiO5Smfnub8EoByN%2FAudit%20Report%20-%20AdmiralDAO%20Sail%20Token.pdf) | AdmiralDAO | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZxPgaEAx6qALhvK9dz%2Fuploads%2FbIKOLmSOkmQEjMkyEuH3%2FClipper%20-%20RFQ%20Report%20(Solidified)%20.pdf) | Solidified | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MZxPgaEAx6qALhvK9dz%2F-MeRSHTtRzJdRmITR5HS%2F-MeRSMu1QaF-AvqWDc01%2FClipper%20-%20Report%20(Solidified).pdf) | Solidified | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19643] Rendered PDF capture — no match: Scope includes all contracts listed in the file signatures appendix and mentioned in findings. Audit date is the reaudit update date (2021-05-25) from the changelog.
- [19644] Rendered PDF capture — no match: Only one contract in scope: AdmiralDAOSailToken. Date from title and header.
- [19645] Rendered PDF capture — no match: Extracted from audited files list and findings references.
- [19646] Rendered PDF capture — no match: Scope explicitly lists 9 contracts in the file tree under 'contracts/' and 'contracts/libraries/'. Mocks excluded.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | GalleonPool | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | GalleonExchangeInterface | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | GalleonDeposit | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | BlacklistAndTimeFilter | unmatched — not counted | — | Listed in scope table and findings | no |
| Rendered PDF capture | GalleonEscapeContract | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | UniERC20 | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | AggregatorInterface | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | Sqrt | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | ApprovalInterface | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | MockToken | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | MockOracle | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | SqrtMock | unmatched — not counted | — | Listed in scope table | no |
| Rendered PDF capture | AdmiralDAOSailToken | unmatched — not counted | — | Audited file is the AdmiralDAOSailToken contract, referenced throughout the report. | no |
| Rendered PDF capture | ClipperDirectExchange | unmatched — not counted | — | listed in audited files list | no |
| Rendered PDF capture | OwnedCollectionContract | unmatched — not counted | — | listed in audited files list | no |
| Rendered PDF capture | WrapperProxy | unmatched — not counted | — | mentioned in findings as ClipperDirectExchange.sol / WrapperProxy.sol | no |
| Rendered PDF capture | BlacklistAndTimeFilter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonDeposit | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonEscapeContract | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonExchangeInterface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | GalleonPool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ApprovalInterface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Sqrt | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | UniERC20 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x655edc...ee4b77` | ClipperApproximateCaravelExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5130f6...20ed40` | ClipperPackedVerifiedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84f462...9ae1b9` | ClipperProtocolDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6bfce6...3ae3b8` | ClipperVerifiedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb52bd6...ab6cf7` | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd1a718...57a85e` | FxERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7a1263...262c5e` | OptimismSailToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd8f146...7415b7` | SailToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd04544...27436e` | SplitFeeFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fe2f...166ff5` | veSAIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [19643] Rendered PDF capture
- [19644] Rendered PDF capture
- [19645] Rendered PDF capture
- [19646] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
