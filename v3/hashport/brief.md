# Agentic Audit Brief: Hashport

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, bsc, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 84 unique implementations (300 raw deployments)
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

The pinned logic-topography run contains 63 contract row(s) across arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, moonbeam, optimism, polygon. Structural roles: 51 unclassified, 6 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 63
- Structural roles: unclassified (51), core (6), supporting (6)
- Contract kinds: contract (63)
- Detected standards: erc165 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 63; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 60 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/74
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 84
- Raw deployments: 300
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

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241760 | `0xe79c9b...626ef9` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241763 | `0x101461...a0a5f7` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241805 | `0xb0c8a4...79725b` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241775 | `0x2232a1...a0a785` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x6b3667...78441a`; moonbeam `0x65dad7...cf1f79`; moonbeam `0x9faa69...ac430b`; base `0x43a456...3de595`; avalanche `0x6b3667...78441a`; avalanche `0xb0c8a4...79725b` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241783 | `0x3587fe...78b4b8` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241793 | `0x33587c...66f461` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241758 | `0x6f1fb4...8ff01e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241762 | `0x02a03d...3e02e8` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241800 | `0x0348ee...4cd870` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241779 | `0x8e1e45...f8caad` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241790 | `0xcaabf3...8adf98` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: bsc `0x32efa9...d0917b`; moonbeam `0x607492...b12dd2`; moonbeam `0x9cda85...4370c3`; base `0x0b5ea9...5e1ef9`; avalanche `0x0348ee...4cd870`; avalanche `0x32efa9...d0917b` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241796 | `0x9d9aa3...5ef880` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241759 | `0xbb3930...b9a650` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241771 | `0x8c6539...189388` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241803 | `0x802a57...a701e1` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241774 | `0x0c49c9...faad3d` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241784 | `0x3d39f9...715572` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0x7327b0...96e22b`; optimism `0x8ba797...e19d98`; bsc `0xc76c7c...1cb737`; polygon `0x2f20f1...c950da`; moonbeam `0x2df8b5...8cdfbe`; moonbeam `0xbe3923...d1ba98`; base `0xa26804...d8a693`; arbitrum `0xd6e23e...baa15e`; avalanche `0x1c667f...aba0ba` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241794 | `0x7622c2...2609dd` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241754 | `0x2bf0c7...21f94c` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241764 | `0x14c739...3e4085` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241802 | `0x147ac3...4b32df` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241780 | `0x9010ee...d9ab1f` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241787 | `0x5e0f83...386775` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: bsc `0x51b364...97c029`; moonbeam `0x777652...6acdb4`; moonbeam `0xb91e2f...b2eaca`; base `0x8334e9...abe66f`; avalanche `0x1197c6...67627d`; avalanche `0x147ac3...4b32df`; avalanche `0x51b364...97c029` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241756 | `0x48b3d6...52d7ee` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241768 | `0x69606c...7188b9` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241807 | `0xd387fc...e48f7b` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241778 | `0x8088cb...c1fabc` | ⚠️ Unaudited |
| GovernanceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 6 deployments: bsc `0x93c85c...ddfdc7`; moonbeam `0x4c199d...b9f817`; moonbeam `0xee3535...2b1cd6`; base `0x8e89a2...0b8929`; avalanche `0x93c85c...ddfdc7`; avalanche `0xd387fc...e48f7b` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241789 | `0x90e46c...d7e4f8` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241792 | `0x27354c...80b1c8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241757 | `0x4af106...42b403` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241765 | `0x2e1a4c...d9f2a8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241801 | `0x1197c6...67627d` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241773 | `0x0381d7...73f1b8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: moonbeam `0x8dfc54...9a2a3d`; moonbeam `0xefb5b1...41bc50`; base `0x1e2b22...226dbe` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241785 | `0x41ae06...311d1c` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241799 | `0xf01df4...abca8c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241755 | `0x3fad3c...21e6c8` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241772 | `0xd1f633...e44115` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1a359e...636f12`; moonbeam `0x24fca8...2c595a`; moonbeam `0xf6b713...85f84c`; base `0xc34aa6...0aa7e0`; avalanche `0x1a359e...636f12`; avalanche `0x83fad6...6d325c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241804 | `0x83fad6...6d325c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241777 | `0x590243...9dace3` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241788 | `0x79b62e...7701b1` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241797 | `0xc76c7c...1cb737` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241753 | `0x11481c...845814` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241770 | `0x86d08c...5b1577` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241808 | `0xd8df34...611b49` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241781 | `0x9e4eab...9a43e1` | ⚠️ Unaudited |
| PausableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: moonbeam `0x2ef9bd...ab32aa`; moonbeam `0xb4cb65...e2adfd`; base `0x2a5867...3f52bd` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241791 | `0xe010fb...18cde1` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241795 | `0x87f640...db3903` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241761 | `0xf50329...0db514` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241767 | `0x65dedb...0ce5a5` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241806 | `0xd050ed...db11cc` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241776 | `0x382d00...b0cb74` | ⚠️ Unaudited |
| PaymentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: moonbeam `0xce656a...8b520b`; moonbeam `0xd4848b...69a285`; base `0x358e77...a29306` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241786 | `0x4eee0f...7130e1` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241798 | `0xda35df...f8a712` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241769 | `0x6da4e9...7c0c3e` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x08b581...6fd88e`; moonbeam `0x617d29...6d2f6b`; moonbeam `0xeb5a0b...86fe8a`; base `0x0f3414...09f54b`; avalanche `0x08b581...6fd88e`; avalanche `0x902192...ffafcc` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241809 | 2 deployments: ethereum `0x367e59...4cd4b7`; ethereum `0xf9fe42...942b34` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241766 | `0x3347f1...0e7a6e` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-241812 | 2 deployments: bsc `0x2e195f...4de6f7`; bsc `0x902192...ffafcc` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241810 | 2 deployments: polygon `0xa2f8f6...0d4d7f`; polygon `0xf4c015...5ce53d` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241811 | 2 deployments: arbitrum `0x73d0da...2cc899`; arbitrum `0x984bb0...b5893a` | ⚠️ Unaudited |
| RouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: bsc `0xcccaff...3e981b`; moonbeam `0x6bb070...2fa886`; moonbeam `0x7741a1...2f7cee`; base `0xd9cde0...ef42e8`; avalanche `0x2e195f...4de6f7`; avalanche `0xcccaff...3e981b` | ⚠️ Unaudited |
| RouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd050ed...db11cc`; avalanche `0xd8df34...611b49` | ⚠️ Unaudited |
| WrappedERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x27d74c...cafa26`; ethereum `0xbc8fa6...0573f3`; ethereum `0xbcb430...ee4a7d`; polygon `0x09cef2...70b6f7`; polygon `0x0ffe15...ad1547`; polygon `0x7c4070...b2cbb9` | ⚠️ Unaudited |
| WrappedERC721Pausable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 23 deployments: ethereum `0x1eb71d...302cae`; ethereum `0x30a08a...259204`; ethereum `0x58b9ce...8d07d6`; ethereum `0x8d591d...e61065`; ethereum `0x9598f5...25dd0a`; ethereum `0x95acb3...429edf`; ethereum `0x9fd01a...15456d`; ethereum `0xc05b52...bacab1`; ethereum `0xdef809...6dd2eb`; ethereum `0xe82043...3b8f90`; ethereum `0xf0d88a...35a36a`; ethereum `0xf66046...88934f`; polygon `0x0f1ff2...bc0251`; polygon `0x1d163e...1a6e59`; polygon `0x25ebc0...29abc3`; polygon `0x2a3ea9...120d85`; polygon `0x452572...5ad4f0`; polygon `0x563b49...ed9d61`; polygon `0x58dc84...8aeb31`; polygon `0x63d71e...a305ef`; polygon `0x7c38d5...53c77b`; polygon `0xe6f8be...53f907`; polygon `0xf0082e...111d45` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 135 deployments: ethereum `0x0e9bf2...8e72cf`; ethereum `0x13ceaf...503369`; ethereum `0x16d0b8...b54f0b`; ethereum `0x1f7fd1...b544bb`; ethereum `0x23cce5...520546`; ethereum `0x273d43...051c18`; ethereum `0x2aeabd...f39526`; ethereum `0x2e6fb7...ab422f`; ethereum `0x2f3afd...285ef7`; ethereum `0x3b930b...016ccc`; ethereum `0x45c82a...3b764d`; ethereum `0x7158b8...f1e54a`; ethereum `0xa32419...ddd824`; ethereum `0xa6312d...bdde48`; ethereum `0xb41822...5d70c7`; ethereum `0xbd09be...0c2558`; ethereum `0xcc944c...28af61`; ethereum `0xe2d48a...2726af`; ethereum `0xeebd1e...5ae426`; ethereum `0xf6a72c...592b97`; ethereum `0xff7706...998167`; optimism `0x1d299f...ffd401`; optimism `0x21b829...9114cd`; optimism `0x2cbf04...671dcc`; optimism `0x2ea0a6...4cdc99`; optimism `0x52cfce...f29dac`; optimism `0x73fa28...3b0e1b`; optimism `0x7fa810...f372ff`; optimism `0x92c30a...10d7c6`; optimism `0x9ca4ee...0699a8`; optimism `0xb4e73a...2d5856`; optimism `0xbc41dd...b50a69`; optimism `0xc2c4e4...e833b3`; optimism `0xc3fbd8...7c0128`; optimism `0xd91ff3...244ca6`; optimism `0xe11ec1...a9e956`; optimism `0xe15b63...1ea65e`; optimism `0xf4b6e0...bd2b32`; optimism `0xf6daa6...1f1659`; optimism `0xf792ff...b4245e`; bsc `0x08707e...db456e`; bsc `0x1675b4...4355f9`; bsc `0x1bb219...c878b9`; bsc `0x1f9f0f...3cd2e2`; bsc `0x3881db...f431b3`; bsc `0x4e7ff4...868ff6`; bsc `0x58b459...3bb789`; bsc `0x5b9f05...d8977f`; bsc `0x6a7f89...d25474`; bsc `0x7622c2...2609dd`; bsc `0x7b173d...e9b39b`; bsc `0x8d27bf...5566af`; bsc `0xa2e439...240119`; bsc `0xac41be...b69529`; bsc `0xd8f3cf...c4e5c1`; bsc `0xe0ecf8...566b66`; bsc `0xe932b8...5d4a47`; bsc `0xf839c3...14110a`; polygon `0x28dba9...bd6d34`; polygon `0x2d2101...440ab1`; polygon `0x319413...8bc5db`; polygon `0x3212bf...60042f`; polygon `0x346ba1...19e55e`; polygon `0x59c43e...7e2441`; polygon `0x75771d...1e67e7`; polygon `0x79103b...a972d5`; polygon `0x7998a9...455aac`; polygon `0x7adb62...d71262`; polygon `0x8b4cae...f1753d`; polygon `0x8f3d03...8305a4`; polygon `0xb98ce6...cee369`; polygon `0xc63ec8...0a9e93`; polygon `0xcceadd...8b95fc`; polygon `0xcddc03...114ddf`; polygon `0xd30ed3...ffeb31`; polygon `0xea8586...358c0e`; moonbeam `0x1e02a7...9dcb8e`; moonbeam `0x22c9b5...7a3f60`; moonbeam `0x2ca9f3...bffcc2`; moonbeam `0x49967f...dd7331`; moonbeam `0x4dbbe8...47d8c1`; moonbeam `0x6a1fcc...f4300f`; moonbeam `0x708f96...d18502`; moonbeam `0xad6bc1...693bde`; moonbeam `0xd84eaf...d58963`; moonbeam `0xdab777...fab699`; moonbeam `0xe32c01...1c8ec0`; base `0x22833b...ca5761`; base `0x2a6eb2...635162`; base `0x34598d...2c9d0f`; base `0x841952...671bd5`; base `0x93aefc...c9c333`; base `0xc5e8fe...7febf3`; base `0xd3705d...b7dc9f`; base `0xdc586c...9bfe14`; base `0xde5806...b8fa97`; base `0xfa77ca...7e7167`; arbitrum `0x029341...2bf85e`; arbitrum `0x148200...fc48a6`; arbitrum `0x31269b...fa7c89`; arbitrum `0x508096...0bfcfa`; arbitrum `0x53a198...ecfd3a`; arbitrum `0x5a324e...015da5`; arbitrum `0x5c173e...0bb19a`; arbitrum `0x6534f7...5247af`; arbitrum `0x6ce727...7cc171`; arbitrum `0x6fd908...f3946d`; arbitrum `0x84b420...226057`; arbitrum `0x8f005e...80a6cc`; arbitrum `0xaca468...8e0a55`; arbitrum `0xad4ff3...5f393a`; arbitrum `0xc12f1d...0ad58e`; arbitrum `0xe508b0...cdc7f5`; arbitrum `0xe821c0...c89417`; arbitrum `0xeb7278...927d68`; arbitrum `0xed6c7a...684fa5`; arbitrum `0xfa151e...0facce`; avalanche `0x08707e...db456e`; avalanche `0x1bb219...c878b9`; avalanche `0x2e8db7...e15c68`; avalanche `0x2fd644...8fae11`; avalanche `0x30c747...4ca1e0`; avalanche `0x359491...947758`; avalanche `0x430eee...abf4d8`; avalanche `0x6bb7c8...c88444`; avalanche `0x781aaf...b91a9d`; avalanche `0x8b6e25...e3616c`; avalanche `0x8bcf39...8ec479`; avalanche `0x8d27bf...5566af`; avalanche `0x945ca4...3e4f2c`; avalanche `0xb31c96...3c35b6`; avalanche `0xdbaf53...d1c0b5`; avalanche `0xe0ecf8...566b66`; avalanche `0xe932b8...5d4a47`; avalanche `0xf839c3...14110a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14ee62...c9b022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x36daaf...c6413c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87f640...db3903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ee227...46fc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2aa75...fff50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaebcae...3e3f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfce733...5322c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-241782 | `0x475b21...1f4e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a9240...0d8d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b9f05...d8977f` | ❓ Unverified |

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
| native | 74 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

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
