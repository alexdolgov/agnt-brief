# Agentic Audit Brief: Universe XYZ

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Website: [https://universe.xyz/](https://universe.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 16 unique implementations (17 raw deployments)
- Coverage basis: 5/15 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,590,712.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Universe XYZ. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across ethereum. Structural roles: 7 unclassified, 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (7), core (5), supporting (3)
- Contract kinds: contract (15)
- Detected standards: ownable (2), erc165 (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7263ca...cdf003`, chain 1)
- UnnamedContract (`0x8aa438...4f1f0d`, chain 1)
- CommunityVault (`0xc6f269...f9bd8e`, chain 1)
- Rewards (`0xf306ad...c31205`, chain 1)
- Staking (`0x2d6157...ba0c09`, chain 1)
- Supernova (`0x7b8660...872962`, chain 1)
- YieldFarmGenericToken (`0x0ef485...0ea0c7`, chain 1)
- YieldFarmGenericToken (`0x1d59a8...d7fc8f`, chain 1)
- YieldFarmGenericToken (`0x1f926b...d0185e`, chain 1)
- YieldFarmGenericToken (`0x49e01d...9fdf29`, chain 1)
- YieldFarmGenericToken (`0x4c82b9...2811a9`, chain 1)
- YieldFarmGenericToken (`0x9f8b01...7ea659`, chain 1)
- YieldFarmGenericToken (`0xe3e186...7a5f32`, chain 1)

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/15 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/15
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 16
- Raw deployments: 17
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 5 | 33.3% | 2021-02 |
| Haechi | Tier 2 | 4 | 26.7% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DiamondCutFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395318 | `0x441710...41a68e` | ✅ Audited |
| DiamondLoupeFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395326 | `0x75e333...801ec3` | ✅ Audited |
| Governance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395332 | `0xa8047c...b272c2` | ✅ Audited |
| OwnershipFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395321 | `0x5c7cb1...3e75cc` | ✅ Audited |
| Rewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395340 | `0xf306ad...c31205` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommunityVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395334 | `0xc6f269...f9bd8e` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395317 | `0x2d6157...ba0c09` | ⚠️ Unaudited |
| Supernova | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395342 | 2 deployments: ethereum `0x7b8660...872962`; ethereum `0x8aa438...4f1f0d` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395314 | `0x0ef485...0ea0c7` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395315 | `0x1d59a8...d7fc8f` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395316 | `0x1f926b...d0185e` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395319 | `0x49e01d...9fdf29` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395320 | `0x4c82b9...2811a9` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395330 | `0x9f8b01...7ea659` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395339 | `0xe3e186...7a5f32` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395323 | `0x7263ca...cdf003` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi | Audit | 2021-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | n/a | matched | 5 | 0 | 0 | 22 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14702] HAECHI-DAO.pdf — matched: Contracts listed in 'Contracts Subject to Audit' section. Date from cover page.
- [14703] PerfectAbstractions-Marketplace-Audit.pdf — no match: All contracts listed in the scope section of the audit report.
- [14704] Quantstamp-DAO.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HAECHI-DAO.pdf | Barn | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Reward | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Parameters | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Governance | own contract | Governance (selected) `0xa8047c...b272c2` — deployed 2021-05-25 12:02:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | BarnFacet | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x441710...41a68e` — deployed 2021-05-25 12:39:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x75e333...801ec3` — deployed 2021-05-25 12:40:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x5c7cb1...3e75cc` — deployed 2021-05-25 12:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | LibBarnStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibDiamondStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibOwnership | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseMarketplaceCore | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseMarketplace | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC721FloorBidMatcher | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | TransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC721LazyMintTransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC20TransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | SimpleTransferManager | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseTransferManager | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | TransferExecutor | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC2981Royalties | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | HasSecondarySaleFees | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | RoyaltiesRegistry | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | OrderValidator | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | OperatorRole | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | BpLibrary | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibAsset | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibERC1155LazyMint | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibERC721LazyMint | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibFeeSide | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibFill | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibOrderData | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibPart | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibSignature | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibTransfer | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | AssetMatcher | unmatched — not counted | — | listed in scope | no |
| Quantstamp-DAO.pdf | Barn | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | BarnFacet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | BarnMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Bridge | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | ChangeRewardsFacet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x441710...41a68e` — deployed 2021-05-25 12:39:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x75e333...801ec3` — deployed 2021-05-25 12:40:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | ERC20Mock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Governance | own contract | Governance (selected) `0xa8047c...b272c2` — deployed 2021-05-25 12:02:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | IBarn | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IBridge | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IDiamondCut | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IDiamondLoupe | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IERC165 | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IERC173 | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IRewards | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibBarnStorage | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibDiamond | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibDiamondStorage | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibOwnership | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | MulticallMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x5c7cb1...3e75cc` — deployed 2021-05-25 12:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | Parameters | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Rewards | own contract | Rewards (selected) `0xf306ad...c31205` — deployed 2021-05-25 12:45:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | RewardsMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Test1Facet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Test2Facet | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc6f269...f9bd8e` | CommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d6157...ba0c09` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b8660...872962` | Supernova | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ef485...0ea0c7` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d59a8...d7fc8f` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f926b...d0185e` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49e01d...9fdf29` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c82b9...2811a9` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f8b01...7ea659` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3e186...7a5f32` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 58 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=9

Zero-match audit list:

- [14703] PerfectAbstractions-Marketplace-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
