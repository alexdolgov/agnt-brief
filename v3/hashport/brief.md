# Agentic Audit Brief: Hashport

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, fantom, optimism, polygon
- Contract surface: 60 unique implementations (64 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $925,077.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hashport. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 63 contract row(s) across arbitrum, avalanche, bsc, ethereum, fantom, optimism, polygon. Structural roles: 51 unclassified, 6 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 63
- Structural roles: unclassified (51), core (6), supporting (6)
- Contract kinds: contract (63)
- Detected standards: erc165 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 63; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 60 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 60
- Raw deployments: 64
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241760 | `0xe79c9b...626ef9` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241763 | `0x101461...a0a5f7` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241805 | `0xb0c8a4...79725b` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241775 | `0x2232a1...a0a785` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241783 | `0x3587fe...78b4b8` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241793 | `0x33587c...66f461` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241758 | `0x6f1fb4...8ff01e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241762 | `0x02a03d...3e02e8` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241800 | `0x0348ee...4cd870` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241779 | `0x8e1e45...f8caad` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241790 | `0xcaabf3...8adf98` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241796 | `0x9d9aa3...5ef880` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241759 | `0xbb3930...b9a650` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241771 | `0x8c6539...189388` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241803 | `0x802a57...a701e1` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241774 | `0x0c49c9...faad3d` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241784 | `0x3d39f9...715572` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241794 | `0x7622c2...2609dd` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241754 | `0x2bf0c7...21f94c` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241764 | `0x14c739...3e4085` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241802 | `0x147ac3...4b32df` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241780 | `0x9010ee...d9ab1f` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241787 | `0x5e0f83...386775` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241756 | `0x48b3d6...52d7ee` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241768 | `0x69606c...7188b9` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241807 | `0xd387fc...e48f7b` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241778 | `0x8088cb...c1fabc` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241789 | `0x90e46c...d7e4f8` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241792 | `0x27354c...80b1c8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241757 | `0x4af106...42b403` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241765 | `0x2e1a4c...d9f2a8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241801 | `0x1197c6...67627d` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241773 | `0x0381d7...73f1b8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241785 | `0x41ae06...311d1c` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241799 | `0xf01df4...abca8c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241755 | `0x3fad3c...21e6c8` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241772 | `0xd1f633...e44115` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241804 | `0x83fad6...6d325c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241777 | `0x590243...9dace3` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241788 | `0x79b62e...7701b1` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241797 | `0xc76c7c...1cb737` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241753 | `0x11481c...845814` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241770 | `0x86d08c...5b1577` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241808 | `0xd8df34...611b49` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241781 | `0x9e4eab...9a43e1` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241791 | `0xe010fb...18cde1` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241795 | `0x87f640...db3903` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241761 | `0xf50329...0db514` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241767 | `0x65dedb...0ce5a5` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241806 | `0xd050ed...db11cc` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241776 | `0x382d00...b0cb74` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241786 | `0x4eee0f...7130e1` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241798 | `0xda35df...f8a712` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241769 | `0x6da4e9...7c0c3e` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241809 | 2 deployments: ethereum `0x367e59...4cd4b7`; ethereum `0xf9fe42...942b34` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241766 | `0x3347f1...0e7a6e` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-241812 | 2 deployments: bsc `0x2e195f...4de6f7`; bsc `0x902192...ffafcc` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241810 | 2 deployments: polygon `0xa2f8f6...0d4d7f`; polygon `0xf4c015...5ce53d` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241811 | 2 deployments: arbitrum `0x73d0da...2cc899`; arbitrum `0x984bb0...b5893a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-241782 | `0x475b21...1f4e0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [omniscia.io/reports/limechain-hashport](https://omniscia.io/reports/limechain-hashport) | Omniscia | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [omniscia.io/reports/limechain-hashport-round-2](https://omniscia.io/reports/limechain-hashport-round-2) | Omniscia | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [Hashport-Smart-Contract-Review-v1.0-3-1.pdf](https://www.hashport.network/wp-content/uploads/Hashport-Smart-Contract-Review-v1.0-3-1.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 36 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2995] omniscia.io/reports/limechain-hashport — no match: No reason recorded
- [2996] omniscia.io/reports/limechain-hashport-round-2 — no match: No reason recorded
- [2997] Hashport-Smart-Contract-Review-v1.0-3-1.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| omniscia.io/reports/limechain-hashport | DiamondCutFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | DiamondLoupeFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | ERC20Permit | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | FeeCalculatorFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | GovernanceFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IDiamondCut | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IDiamondLoupe | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IERC173 | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IERC2612Permit | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IFeeCalculator | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IGovernance | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IPausable | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IRouter | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | IRouterDiamond | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | LibDiamond | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | LibFeeCalculator | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | LibGovernance | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | LibRouter | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | OwnershipFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | PausableFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | Router | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | RouterFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport | WrappedToken | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | DiamondCutFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | DiamondLoupeFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | ERC721PortalFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | FeeCalculatorFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | GovernanceFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | GovernanceV2Facet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | LibDiamond | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | LibERC721 | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | LibFeeCalculator | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | LibGovernance | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | LibPayment | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | LibRouter | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | OwnershipFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | PausableFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | PaymentFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | Router | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | RouterFacet | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | WrappedERC721 | unmatched — not counted | — | — | no |
| omniscia.io/reports/limechain-hashport-round-2 | WrappedToken | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | AddNewFunctionFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | DiamondCutFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | DiamondLoupeFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | ERC721PortalFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | FeeCalculatorFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | GovernanceFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | GovernanceV2Facet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IDiamondCut.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IDiamondLoupe.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IERC173.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IERC2612Permit.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IERC721PortalFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IFeeCalculator.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IGovernance.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IGovernanceV2.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IPausable.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IPayment.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IRouter.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | IRouterDiamond.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | LibDiamond.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | LibERC721.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | LibFeeCalculator.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | LibGovernance.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | LibPayment.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | LibRouter.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | OwnershipFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | PausableFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | PaymentFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | ReplaceFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | Router.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | RouterFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | Token.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | TokenPausabilityFacet.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | WrappedERC721.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | WrappedERC721Pausable.sol | unmatched — not counted | — | — | no |
| Hashport-Smart-Contract-Review-v1.0-3-1.pdf | WrappedToken.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 78 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2995] omniscia.io/reports/limechain-hashport
- [2996] omniscia.io/reports/limechain-hashport-round-2
- [2997] Hashport-Smart-Contract-Review-v1.0-3-1.pdf

Fork inheritance lineage and inherited audits are included when available.
