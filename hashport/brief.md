# Agentic Audit Brief: Hashport

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, base, bsc, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 94 unique implementations (310 raw deployments)
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
- Address-book implementation classification: 0 own, 70 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/74
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 94
- Raw deployments: 310
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
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241760 | `0xe79c9bb508f00ab7b03cf3043929639e86626ef9` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241763 | `0x101461c74d9298fbbe7fffafaa5d4e7c4ea0a5f7` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241805 | `0xb0c8a4ead6b7085ff36d4e54e0a7cc5f1179725b` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241775 | `0x2232a10986375fdc9315f682551e141fc2a0a785` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x6b3667d9d5cb78dcc6c87185cb903ec35378441a`; moonbeam `0x65dad752b5c6f68672f606b462051e9a47cf1f79`; moonbeam `0x9faa69d678d587699d83ec85e981fe3ca8ac430b`; base `0x43a4564ad1f577d0773f0a86df4f7827ac3de595`; avalanche `0x6b3667d9d5cb78dcc6c87185cb903ec35378441a`; avalanche `0xb0c8a4ead6b7085ff36d4e54e0a7cc5f1179725b` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241783 | `0x3587fe621dba42944dd7cc48797c31ce4978b4b8` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241793 | `0x33587c4ca60530b0d3e168f68ebd6a60d266f461` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241758 | `0x6f1fb462c6e328e8acccf59e58445a2fe18ff01e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241762 | `0x02a03de476c586821e67124c317ad2908e3e02e8` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241800 | `0x0348ee68bece3444c508a864dc9918b5954cd870` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241779 | `0x8e1e4560c1571e4abe2be524ce62fe398bf8caad` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241790 | `0xcaabf356386d2779a4ab0d120469b2641b8adf98` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: bsc `0x32efa93d40b948a98e289b345774eb5bddd0917b`; moonbeam `0x607492fdef10ae6f7202fb7d1778a734dab12dd2`; moonbeam `0x9cda853d8cc730e2f22337694a4246ad044370c3`; base `0x0b5ea903db149f505a5af1a692761491bc5e1ef9`; avalanche `0x0348ee68bece3444c508a864dc9918b5954cd870`; avalanche `0x32efa93d40b948a98e289b345774eb5bddd0917b` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241796 | `0x9d9aa36f55f1e1efe1234e33e63aca0a1f5ef880` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241759 | `0xbb3930ad4429bb05c6c5f3ffe590553d38b9a650` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241771 | `0x8c6539842aeaa4c168055502ad68d6cb83189388` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241803 | `0x802a575134728920382753a835d500f6f7a701e1` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241774 | `0x0c49c965d76cc7a4ae7afbfaf6d32a8aaafaad3d` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241784 | `0x3d39f9c9fa1b2103a5cdf496141c441f80715572` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0x7327b01ef3bce998ca97541ed510ec6e0d96e22b`; optimism `0x8ba79782f135075514670fde8a11c62c2be19d98`; bsc `0xc76c7c5e795bd853ffb5598c2aa2223f301cb737`; polygon `0x2f20f10840e959ae9daf3ddd63534b99e7c950da`; moonbeam `0x2df8b565f0c0c5550b11b1a635e339152a8cdfbe`; moonbeam `0xbe3923fe1f438175c9357aecf6d5a756ecd1ba98`; base `0xa26804ebf7cc08048eed544d014867fc1ad8a693`; arbitrum `0xd6e23e5c5b432906779f736939ebdf1992baa15e`; avalanche `0x1c667fcf32dd76722b174aa6dd3f4a9ecaaba0ba` | ⚠️ Unaudited |
| ERC721PortalFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241794 | `0x7622c26b05e8392830f8b342f29a4544102609dd` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241754 | `0x2bf0c79ce13a405a1f752f77227a28eec621f94c` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241764 | `0x14c73955fd354bf48ab7a1867e72cfa90a3e4085` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241802 | `0x147ac324210e9809e15c18b92bdb97121f4b32df` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241780 | `0x9010ee70ec5d75be46ba5f7366776a3c7ad9ab1f` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241787 | `0x5e0f83bf38f119a32e8c6e4c30802d455f386775` | ⚠️ Unaudited |
| FeeCalculatorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: bsc `0x51b3642ea87d8fe1d070e6f73c27d33f3b97c029`; moonbeam `0x77765209ec3173e90fe96f2120fd1e5f6f6acdb4`; moonbeam `0xb91e2f76e3f8bb226be735098926dfccd3b2eaca`; base `0x8334e9f1e3ed2bbed3c3d2098cf8bcf11cabe66f`; avalanche `0x1197c65f839af38f038ae8a403a98c3f1b67627d`; avalanche `0x147ac324210e9809e15c18b92bdb97121f4b32df`; avalanche `0x51b3642ea87d8fe1d070e6f73c27d33f3b97c029` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241756 | `0x48b3d6e97a8237f51861afb7f6512fb85a52d7ee` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241768 | `0x69606c71501b7251b32ed9c782766198857188b9` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241807 | `0xd387fc40af6d0b0d855c6558d6d029b1fde48f7b` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241778 | `0x8088cb9ba08224c7ecff05d4b9ee32dcaac1fabc` | ⚠️ Unaudited |
| GovernanceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 6 deployments: bsc `0x93c85cc426c2a21395050dcb589b7ed1acddfdc7`; moonbeam `0x4c199d838ee05ef1c42412b5cecad70207b9f817`; moonbeam `0xee353507466ce1330eb77a7e02ef6f23432b1cd6`; base `0x8e89a2406f5c8c784d2b24fdf42b5448700b8929`; avalanche `0x93c85cc426c2a21395050dcb589b7ed1acddfdc7`; avalanche `0xd387fc40af6d0b0d855c6558d6d029b1fde48f7b` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241789 | `0x90e46cc92136ad6ec8e01abb3aea48ae5ed7e4f8` | ⚠️ Unaudited |
| GovernanceFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241792 | `0x27354c246ff7b6492a026cd8adc243f99d80b1c8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241757 | `0x4af1069ffd125f4ce782dc54330272ccda42b403` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241765 | `0x2e1a4ca7ad1f461df9368d6659810385dcd9f2a8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241801 | `0x1197c65f839af38f038ae8a403a98c3f1b67627d` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241773 | `0x0381d726d3146e2171ffe48ae04bbc20a473f1b8` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: moonbeam `0x8dfc5461c63a4d8227ad50880485a2e07a9a2a3d`; moonbeam `0xefb5b1b474edd4869538676f6b17f2dc7941bc50`; base `0x1e2b227791d2f65baeadf9e248622898f3226dbe` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241785 | `0x41ae06d8c52babb15d9dce3a9ba3f0c4b1311d1c` | ⚠️ Unaudited |
| GovernanceV2Facet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241799 | `0xf01df4fc1e9e58623cb9fc29a407e143bbabca8c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241755 | `0x3fad3c29973bea5e964d9d90ebb8c84cb921e6c8` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241772 | `0xd1f633f02f5362edd60ed11b5f1223e196e44115` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1a359ec6a0cebabfa2702e78df83e3c269636f12`; moonbeam `0x24fca898d41ad35cce44d0b5ac3bff6c362c595a`; moonbeam `0xf6b713f1e209a342fe107c0d832152076d85f84c`; base `0xc34aa6d8d51e958cd554279548810e03270aa7e0`; avalanche `0x1a359ec6a0cebabfa2702e78df83e3c269636f12`; avalanche `0x83fad6e962ea361c2e57000d1d720136c26d325c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241804 | `0x83fad6e962ea361c2e57000d1d720136c26d325c` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241777 | `0x590243fa41af4383237e83a4ce5490a5ad9dace3` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241788 | `0x79b62e5752a653787b4cee0ac2c92e24767701b1` | ⚠️ Unaudited |
| OwnershipFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241797 | `0xc76c7c5e795bd853ffb5598c2aa2223f301cb737` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241753 | `0x11481c1136d42c60c5bf29dfb9cb7eed90845814` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241770 | `0x86d08c6875be6875a8277d3a16c6867a275b1577` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241808 | `0xd8df34a071179fe8cef910ae0b43cde49d611b49` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241781 | `0x9e4eabd511acf7dc7594cabff98120139f9a43e1` | ⚠️ Unaudited |
| PausableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: moonbeam `0x2ef9bd21fe6dbee4aa315bee0972cbf82bab32aa`; moonbeam `0xb4cb658a5d0f3b363b8c8b77938b617286e2adfd`; base `0x2a58671e23f41f2c684daa372f2b06ab673f52bd` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241791 | `0xe010fb8d0987dfe55aec3b184568eb355718cde1` | ⚠️ Unaudited |
| PausableFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241795 | `0x87f640abd4473fe9e762cd6bc3aa1206ebdb3903` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241761 | `0xf50329f6f000308538f978299cc1f670460db514` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241767 | `0x65dedbfa4a5f361e565dd7e014d361a2890ce5a5` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-241806 | `0xd050edc322915341baf5e8e9e1dcd25c92db11cc` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-241776 | `0x382d0017eb5b1301dd462172cbc0433848b0cb74` | ⚠️ Unaudited |
| PaymentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: moonbeam `0xce656a47ebe2042ab116fc406f87c487d88b520b`; moonbeam `0xd4848b9dae91ec47816d1c3e918c415f6569a285`; base `0x358e77bbcd8860d1444e99d8804ffa2d58a29306` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241786 | `0x4eee0fd885856fa09311acec26b473ef4a7130e1` | ⚠️ Unaudited |
| PaymentFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241798 | `0xda35df2801cfef822457f46488e5f446f8f8a712` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241769 | `0x6da4e99b62b8d910e1688e34121cd8d50b7c0c3e` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x08b5816f1057de757ead4df99469ea653f6fd88e`; moonbeam `0x617d29b4bae43b3aa3d63b7f61177600036d2f6b`; moonbeam `0xeb5a0bf4e651b91a0be4b6c07d8a91df5686fe8a`; base `0x0f3414b61b902513e04e76ca4d1a7b003d09f54b`; avalanche `0x08b5816f1057de757ead4df99469ea653f6fd88e`; avalanche `0x9021926be887355b76e60f4148ebb6b3f1ffafcc` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241809 | 2 deployments: ethereum `0x367e59b559283c8506207d75b0c5d8c66c4cd4b7`; ethereum `0xf9fe427563b12ec644e79a42b68e148273942b34` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241766 | `0x3347f15601be15f426689d652794f64fd90e7a6e` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-241812 | 2 deployments: bsc `0x2e195f12e4d049126f9ffb9a57782d730c4de6f7`; bsc `0x9021926be887355b76e60f4148ebb6b3f1ffafcc` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241810 | 2 deployments: polygon `0xa2f8f68d5d83f90b8401990196d0c233dc0d4d7f`; polygon `0xf4c0153a8bdb3dfe8d135ce3be0d45e14e5ce53d` | ⚠️ Unaudited |
| RouterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241811 | 2 deployments: arbitrum `0x73d0da54fc9716e9895f3a02048e46ac792cc899`; arbitrum `0x984bb007b41a865bd8a9db9ca919000fbab5893a` | ⚠️ Unaudited |
| RouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: bsc `0xcccaffc62f0e9f3a59a9e42946203082143e981b`; moonbeam `0x6bb0702d9d671da492fea9368733dca4a62fa886`; moonbeam `0x7741a15a5ec59085f3cf2b5c90e3c556222f7cee`; base `0xd9cde0457e04f0fc9a5a9fd314fd185d00ef42e8`; avalanche `0x2e195f12e4d049126f9ffb9a57782d730c4de6f7`; avalanche `0xcccaffc62f0e9f3a59a9e42946203082143e981b` | ⚠️ Unaudited |
| RouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd050edc322915341baf5e8e9e1dcd25c92db11cc`; avalanche `0xd8df34a071179fe8cef910ae0b43cde49d611b49` | ⚠️ Unaudited |
| WrappedERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x27d74c114d7f137f9f1a4cf8ea6d335884cafa26`; ethereum `0xbc8fa68ceda02eb00e9139e589f2913c5d0573f3`; ethereum `0xbcb430d7c39eb75f801fac32d77a400326ee4a7d`; polygon `0x09cef21241116fdd00eb7e90c93be724d370b6f7`; polygon `0x0ffe15290dc190083187a5eb09625995f4ad1547`; polygon `0x7c4070b9bdc2bef45fea675f10122de4f8b2cbb9` | ⚠️ Unaudited |
| WrappedERC721Pausable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 23 deployments: ethereum `0x1eb71d3e7d28b9667fb5abae6184e54aa7302cae`; ethereum `0x30a08a04f765aeec3eb139872e021d2620259204`; ethereum `0x58b9ceb6b7856c539c4cb97fba2d7a2c478d07d6`; ethereum `0x8d591de7ef24181e794f6b69724f6e8d06e61065`; ethereum `0x9598f5102d2801931c8dd411995f0de30825dd0a`; ethereum `0x95acb37f86e342af41e06aa00d736b249c429edf`; ethereum `0x9fd01a0465694e5197b482e0873344c0f815456d`; ethereum `0xc05b52ec09fb2a5ca5a1e952a77bc0ec30bacab1`; ethereum `0xdef809f5556e7efeea7d1c103f9a1d53786dd2eb`; ethereum `0xe8204322bbdb5e223332d5c4ebb39cb91a3b8f90`; ethereum `0xf0d88a4b58ebdde23fb3cffd2ded66b9d135a36a`; ethereum `0xf660461a84eb95690124977075cf92c80088934f`; polygon `0x0f1ff2541b81d5f9d6410301febd1a9669bc0251`; polygon `0x1d163ee6225ca5f224d9325e8f6993b0361a6e59`; polygon `0x25ebc0423417ad75778975f91cf002064329abc3`; polygon `0x2a3ea96954b20680def03c54ccdaccd3a7120d85`; polygon `0x4525727b992f81ddbb44552eee6bdc3eba5ad4f0`; polygon `0x563b49f1366c22899116eae4227d3b87fced9d61`; polygon `0x58dc843c1a1487f6693e28c8cef84b961f8aeb31`; polygon `0x63d71ec6fd36c0002969d0703f6d168e46a305ef`; polygon `0x7c38d5ae550113ec31b90c32074340130753c77b`; polygon `0xe6f8be99348de91c4119dd0da6c2eef4fa53f907`; polygon `0xf0082ef35081a4ab0c0ada989df8382e7b111d45` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 135 deployments: ethereum `0x0e9bf2aa9d50f4155f47625ec2cfbb08fd8e72cf`; ethereum `0x13ceaf35d3c48bc63a26361852ee6d229c503369`; ethereum `0x16d0b8ac8022e54947e0dc7d8a5b5a79e2b54f0b`; ethereum `0x1f7fd18926a9646f4ff62952706dfcaed7b544bb`; ethereum `0x23cce5bc29d30cb69eaa4f6cd58b4b912c520546`; ethereum `0x273d437c391d4eca926f482cb66a2a13f2051c18`; ethereum `0x2aeabde1ab736c59e9a19bed67681869eef39526`; ethereum `0x2e6fb7fe03ca394ce11c040f4ee8a1ffadab422f`; ethereum `0x2f3afd7373f6dd960afd083fb2f0ac2303285ef7`; ethereum `0x3b930b1248e902367ff36860d256c87244016ccc`; ethereum `0x45c82a92b1b502ecb5e8061d4ba97477813b764d`; ethereum `0x7158b89d2e76e4f4f299dea53d74d2675df1e54a`; ethereum `0xa32419c815d58bc6f51781b555e65eb641ddd824`; ethereum `0xa6312d2ce2724b68f7c426a0d6eddabdadbdde48`; ethereum `0xb418223050e06bde731e9a903ea5806cd35d70c7`; ethereum `0xbd09be64774042053f084df5ac9f394c290c2558`; ethereum `0xcc944ce7aee3f2fd39da5e71e4e725becd28af61`; ethereum `0xe2d48a96d5eef8c432eb407f9b5e3d14712726af`; ethereum `0xeebd1eeeed96834af8fa1499e895e8ff245ae426`; ethereum `0xf6a72caf13029c18c90eaaf93f18a0b0e3592b97`; ethereum `0xff77067a8f093463c53e8d3f84b253f08b998167`; optimism `0x1d299fa77d3f52418448eba69ffa25f957ffd401`; optimism `0x21b82925826a1ea73f11549fcdd9282d219114cd`; optimism `0x2cbf04cf1f0713eaf78b039724b6fa735e671dcc`; optimism `0x2ea0a6edb6a28e5de8c42d8497969522de4cdc99`; optimism `0x52cfce488453841d5b333c11777030e699f29dac`; optimism `0x73fa28a574f8b7ad9a506a6ccf3fe5cbec3b0e1b`; optimism `0x7fa8107de5041209178c897375673ff09ef372ff`; optimism `0x92c30a32175b39be2131cb15ea158a3c2610d7c6`; optimism `0x9ca4ee570c167b1332eeb9c3721285db7a0699a8`; optimism `0xb4e73a9ff23e1c90e5f445e156cac810fe2d5856`; optimism `0xbc41ddefa252e86c983cfaed22838e175ab50a69`; optimism `0xc2c4e4e513de4d840874876ca64b35b432e833b3`; optimism `0xc3fbd800813d1d4848422614ab6e22739e7c0128`; optimism `0xd91ff310df12fbb9d4c77a55beda0367e2244ca6`; optimism `0xe11ec1e793ff3c0606f02d9151af84b9c8a9e956`; optimism `0xe15b6305504ae8a172c97afe7bf8326d681ea65e`; optimism `0xf4b6e087275711046d19bb18b2f3e18b1abd2b32`; optimism `0xf6daa62cf94845f57f30fa590c97a390251f1659`; optimism `0xf792ff88fdce0bbbae29a9b55d7577d5bcb4245e`; bsc `0x08707eaefcc344ad35bd35c5ff5691c2d3db456e`; bsc `0x1675b4ef9be27e399500a5e735738c0c264355f9`; bsc `0x1bb2191ff6f49ba1008398bc9fa882db62c878b9`; bsc `0x1f9f0fe7db0aebce6543cb4f7d6c47e2a43cd2e2`; bsc `0x3881db10c5051325bf29aff95c0ff7d57af431b3`; bsc `0x4e7ff40dfbc8ab76fca8c60b4fb87e049b868ff6`; bsc `0x58b4591a3fd16041f28686098431b1374c3bb789`; bsc `0x5b9f053596f04a47b289f2dc33c1966b41d8977f`; bsc `0x6a7f89e895ecdb9955533119f24f922cd9d25474`; bsc `0x7622c26b05e8392830f8b342f29a4544102609dd`; bsc `0x7b173deb33ae82f256445d620625ef731ce9b39b`; bsc `0x8d27bfb87a0b7f6eee18543aa341bc6dff5566af`; bsc `0xa2e4395cd42ef7f3a41d02e4ae10aa5a3c240119`; bsc `0xac41bedf22bcd4fb3534c01d64bb6535bbb69529`; bsc `0xd8f3cf9fc5f1eefde2bcc6c292f6da0042c4e5c1`; bsc `0xe0ecf8b3fab0d379f18117e5e9f8b1e0e7566b66`; bsc `0xe932b880fa267ed7d0e0c80590363532c25d4a47`; bsc `0xf839c319b760a52eeadfef3b0f8060a34314110a`; polygon `0x28dba92350a099d7e43ffc63043073733ebd6d34`; polygon `0x2d2101e723d00e74b858ce9cc79c71ac9a440ab1`; polygon `0x3194138eb010566c7169e33e99bc70adf98bc5db`; polygon `0x3212bfcea233d996edae6574683b70fb4860042f`; polygon `0x346ba158c8cb2f9f8a21c3e4f75c02c63c19e55e`; polygon `0x59c43ed0c7d85cbda8683d89d4eb40c72b7e2441`; polygon `0x75771d2c0f1654866076c4a9b6b2dd9d121e67e7`; polygon `0x79103b27fc21c81f7c6cb5caff78901b45a972d5`; polygon `0x7998a96c269c6ecc001b9586ef346f30f8455aac`; polygon `0x7adb6295e6197d048a0edd1e0e6a6e8abdd71262`; polygon `0x8b4cae9af23eb752515a88497e678e9adff1753d`; polygon `0x8f3d0354b69ef9c911b3936c66fcc40c378305a4`; polygon `0xb98ce6b4c3148f30c24012ab5fc83c16ebcee369`; polygon `0xc63ec8d322351da57b13628f180a14bdec0a9e93`; polygon `0xcceadd0453fb970f622488a721cc0f57e38b95fc`; polygon `0xcddc03ecdc1cea44424079a43ea7c6a50f114ddf`; polygon `0xd30ed32f47c902636bc75d9804a6697b88ffeb31`; polygon `0xea85862303e9363c46b41a03f5342a14d0358c0e`; moonbeam `0x1e02a7c24219fe059a4263fd044d9726939dcb8e`; moonbeam `0x22c9b5fb2a0ed13ca918df73f2a56981d17a3f60`; moonbeam `0x2ca9f31de48297d645c88235461f430637bffcc2`; moonbeam `0x49967f416ada178eac9e40e77f4b523cf0dd7331`; moonbeam `0x4dbbe83aa01a3707126ffb9ac1671b84f347d8c1`; moonbeam `0x6a1fcc6f388b6c320e911a613a62277258f4300f`; moonbeam `0x708f96ab739548749e1e4effb027d541f4d18502`; moonbeam `0xad6bc171202d74251b94aa9578c6bd8ea1693bde`; moonbeam `0xd84eafa1d7b80a69b27844591192dbb9aad58963`; moonbeam `0xdab7779ba8b9d0c1efb9eaba41560f072efab699`; moonbeam `0xe32c01d807c2290fee75625cdede876a0a1c8ec0`; base `0x22833bd616fae02c369c40523c77f00ddeca5761`; base `0x2a6eb279117bfdcc069c3a272cd3911d88635162`; base `0x34598d8c74a307b8325ed4b71f842a3fb02c9d0f`; base `0x8419528dba6daf5d869e1d12a12e9523fe671bd5`; base `0x93aefc0a469ae85f85a53eb24564ee897ec9c333`; base `0xc5e8fec887a9906c54ceb8d55dc6bebd667febf3`; base `0xd3705dbcc4b578999f40cbbbeec0892643b7dc9f`; base `0xdc586c04873a477bdd4e499c5072593ed29bfe14`; base `0xde5806500084779d19f95b23489ec5f11ab8fa97`; base `0xfa77ca39eed8a67b6975e5aaefd24e9ec67e7167`; arbitrum `0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e`; arbitrum `0x148200c4d177b8decdc4bb78768e925bd4fc48a6`; arbitrum `0x31269bbf1bc50272c4f19d42d3a60a103cfa7c89`; arbitrum `0x50809611d8ce90c7315d5bdd7f95934d2d0bfcfa`; arbitrum `0x53a1981509fde8441ff1f1a91fbac31b65ecfd3a`; arbitrum `0x5a324ee2961550082bdb184bce27239953015da5`; arbitrum `0x5c173e31a35a2a0da2e0b44aba9d206a810bb19a`; arbitrum `0x6534f741fc1ecef23afdb0dd5cb3d161cb5247af`; arbitrum `0x6ce727f68669d505b55b3b9fd0afb7a4777cc171`; arbitrum `0x6fd9085167665f805d7a5714960841574bf3946d`; arbitrum `0x84b42028e291f0643e2061780f6c19200a226057`; arbitrum `0x8f005e2c3ed0decfc1a48182ccb6e5437680a6cc`; arbitrum `0xaca4683bd01e3d10f335b0d728264f23e48e0a55`; arbitrum `0xad4ff3ee9a97e6b3c9848e05d601f8b56f5f393a`; arbitrum `0xc12f1d8e4ded4126499d205d643e451eaf0ad58e`; arbitrum `0xe508b026410d4abecb24045be178c288b0cdc7f5`; arbitrum `0xe821c045f9149b44ef96f8054b9c6d94f4c89417`; arbitrum `0xeb7278da7926b1d9a4973621bc435c2dd4927d68`; arbitrum `0xed6c7a7b116876a4bf225cbf044681f070684fa5`; arbitrum `0xfa151ed98e189df8ccb9a82d755aea241e0facce`; avalanche `0x08707eaefcc344ad35bd35c5ff5691c2d3db456e`; avalanche `0x1bb2191ff6f49ba1008398bc9fa882db62c878b9`; avalanche `0x2e8db7f122fc55ffe60dcca08a3c9a3b3be15c68`; avalanche `0x2fd6446bdcb8578733c868a2bb2f03ea478fae11`; avalanche `0x30c74769ea97c6454e2a4d4e9d2da947c64ca1e0`; avalanche `0x3594913364de2154581171375d4a9cce7f947758`; avalanche `0x430eee5ee04ac875aee825cfeff92cfc76abf4d8`; avalanche `0x6bb7c894241e8304dd4354bb9ddc241017c88444`; avalanche `0x781aaf8af3ff77548800f06903a6c05b41b91a9d`; avalanche `0x8b6e25a65c35c93be14c6a2c81a657c977e3616c`; avalanche `0x8bcf393ea8838ac2a38fa9f1cfb032e4728ec479`; avalanche `0x8d27bfb87a0b7f6eee18543aa341bc6dff5566af`; avalanche `0x945ca41d03ec19b6a6ebf2ef0f4d0a50b23e4f2c`; avalanche `0xb31c96599dd241a03464247ae009c17c423c35b6`; avalanche `0xdbaf534ac33f09745d0e9dee60563a3011d1c0b5`; avalanche `0xe0ecf8b3fab0d379f18117e5e9f8b1e0e7566b66`; avalanche `0xe932b880fa267ed7d0e0c80590363532c25d4a47`; avalanche `0xf839c319b760a52eeadfef3b0f8060a34314110a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14ee6273a3a1d7079e945ad103bda9ade7c9b022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x36daafd7c305677905a643cf1a0c74a281c6413c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87f640abd4473fe9e762cd6bc3aa1206ebdb3903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ee2277a673e57df78c825797a4d85a02f46fc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2aa7591ea5445f1fcad66c0db92d31fe3fff50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaebcaeafb7c9c68acc1ad5f60b5c2a061f3e3f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfce733b381d2f7ff9377489b1bbd5f8d265322c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x20dadec88383cfd3f2ba754b5f2e934037f2c4ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2d35326f296c1a444a16bf99db88e609a636759d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-241782 | `0x475b21ade54b9494d8201e0330ca7994081f4e0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x4d6139f106757f436fbf4be0a62319cfd8a86b2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x54dcd9b9ea3302a91f8e973fa002213b812138cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x61612dcce62ba9ab5f5a9a732cc31fdf0311a569` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x6c7220cf12d74fb5f6b3ed637f4f9f886f5fb929` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x9f6b7a4eda06ef574874129a648b1d325f72c27b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb42693ac16ef574ef1819e9f8d52fe3035808dc7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xe54e93002c4d0e9a04d2ebd306e85f4483f569ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfd26f14f6e9b50613d58016240dccb5953a705b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a9240784d305d6c141df3191ee13444cd0d8d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b9f053596f04a47b289f2dc33c1966b41d8977f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 269
- Live contracts: 0
- Unknown liveness contracts: 269
- Source-verified contracts: 261
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=122, contamination review=9, exact address book overlap=49, source verified unclassified=81, unverified unclassified=8

Showing first 200 of 269 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | RouterFacet<br>`0x73d0da54fc9716e9895f3a02048e46ac792cc899` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x148200c4d177b8decdc4bb78768e925bd4fc48a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x31269bbf1bc50272c4f19d42d3a60a103cfa7c89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x53a1981509fde8441ff1f1a91fbac31b65ecfd3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x5a324ee2961550082bdb184bce27239953015da5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x5c173e31a35a2a0da2e0b44aba9d206a810bb19a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x6534f741fc1ecef23afdb0dd5cb3d161cb5247af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x6ce727f68669d505b55b3b9fd0afb7a4777cc171` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x6fd9085167665f805d7a5714960841574bf3946d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x84b42028e291f0643e2061780f6c19200a226057` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0x8f005e2c3ed0decfc1a48182ccb6e5437680a6cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0xaca4683bd01e3d10f335b0d728264f23e48e0a55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0xe508b026410d4abecb24045be178c288b0cdc7f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0xe821c045f9149b44ef96f8054b9c6d94f4c89417` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0xeb7278da7926b1d9a4973621bc435c2dd4927d68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | candidate review | WrappedToken<br>`0xfa151ed98e189df8ccb9a82d755aea241e0facce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | contamination review | FeeCalculatorFacet<br>`0x5e0f83bf38f119a32e8c6e4c30802d455f386775` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | DiamondCutFacet<br>`0x3587fe621dba42944dd7cc48797c31ce4978b4b8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | DiamondLoupeFacet<br>`0xcaabf356386d2779a4ab0d120469b2641b8adf98` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | ERC721PortalFacet<br>`0x3d39f9c9fa1b2103a5cdf496141c441f80715572` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | GovernanceFacet<br>`0x90e46cc92136ad6ec8e01abb3aea48ae5ed7e4f8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | GovernanceV2Facet<br>`0x41ae06d8c52babb15d9dce3a9ba3f0c4b1311d1c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | OwnershipFacet<br>`0x79b62e5752a653787b4cee0ac2c92e24767701b1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | PausableFacet<br>`0xe010fb8d0987dfe55aec3b184568eb355718cde1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | PaymentFacet<br>`0x4eee0fd885856fa09311acec26b473ef4a7130e1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | exact address book overlap | Router<br>`0x984bb007b41a865bd8a9db9ca919000fbab5893a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | source verified unclassified | ERC721PortalFacet<br>`0xd6e23e5c5b432906779f736939ebdf1992baa15e` | non_address_book | unknown | unknown | verified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a9240784d305d6c141df3191ee13444cd0d8d90` | non_address_book | unknown | unknown | unverified | n/a | `0x08993fa65723c9a6251054f84c10569248f62881` |
| avalanche | candidate review | RouterFacet<br>`0x2e195f12e4d049126f9ffb9a57782d730c4de6f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | RouterFacet<br>`0xcccaffc62f0e9f3a59a9e42946203082143e981b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | RouterFacet<br>`0xd050edc322915341baf5e8e9e1dcd25c92db11cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x08707eaefcc344ad35bd35c5ff5691c2d3db456e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x1bb2191ff6f49ba1008398bc9fa882db62c878b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x2fd6446bdcb8578733c868a2bb2f03ea478fae11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x3594913364de2154581171375d4a9cce7f947758` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x430eee5ee04ac875aee825cfeff92cfc76abf4d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x6bb7c894241e8304dd4354bb9ddc241017c88444` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x781aaf8af3ff77548800f06903a6c05b41b91a9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x8b6e25a65c35c93be14c6a2c81a657c977e3616c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x8bcf393ea8838ac2a38fa9f1cfb032e4728ec479` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0x8d27bfb87a0b7f6eee18543aa341bc6dff5566af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0xb31c96599dd241a03464247ae009c17c423c35b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0xdbaf534ac33f09745d0e9dee60563a3011d1c0b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0xe0ecf8b3fab0d379f18117e5e9f8b1e0e7566b66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0xe932b880fa267ed7d0e0c80590363532c25d4a47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | candidate review | WrappedToken<br>`0xf839c319b760a52eeadfef3b0f8060a34314110a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | contamination review | FeeCalculatorFacet<br>`0x1197c65f839af38f038ae8a403a98c3f1b67627d` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | contamination review | GovernanceFacet<br>`0x27354c246ff7b6492a026cd8adc243f99d80b1c8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | DiamondCutFacet<br>`0x33587c4ca60530b0d3e168f68ebd6a60d266f461` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | DiamondLoupeFacet<br>`0x9d9aa36f55f1e1efe1234e33e63aca0a1f5ef880` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | ERC721PortalFacet<br>`0x7622c26b05e8392830f8b342f29a4544102609dd` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | GovernanceV2Facet<br>`0xf01df4fc1e9e58623cb9fc29a407e143bbabca8c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | OwnershipFacet<br>`0xc76c7c5e795bd853ffb5598c2aa2223f301cb737` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | PausableFacet<br>`0x87f640abd4473fe9e762cd6bc3aa1206ebdb3903` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | exact address book overlap | PaymentFacet<br>`0xda35df2801cfef822457f46488e5f446f8f8a712` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | DiamondCutFacet<br>`0x6b3667d9d5cb78dcc6c87185cb903ec35378441a` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | DiamondCutFacet<br>`0xb0c8a4ead6b7085ff36d4e54e0a7cc5f1179725b` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | DiamondLoupeFacet<br>`0x0348ee68bece3444c508a864dc9918b5954cd870` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | DiamondLoupeFacet<br>`0x32efa93d40b948a98e289b345774eb5bddd0917b` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | ERC721PortalFacet<br>`0x1c667fcf32dd76722b174aa6dd3f4a9ecaaba0ba` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | FeeCalculatorFacet<br>`0x147ac324210e9809e15c18b92bdb97121f4b32df` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | FeeCalculatorFacet<br>`0x51b3642ea87d8fe1d070e6f73c27d33f3b97c029` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | GovernanceFacet<br>`0x93c85cc426c2a21395050dcb589b7ed1acddfdc7` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | GovernanceFacet<br>`0xd387fc40af6d0b0d855c6558d6d029b1fde48f7b` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | OwnershipFacet<br>`0x1a359ec6a0cebabfa2702e78df83e3c269636f12` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | OwnershipFacet<br>`0x83fad6e962ea361c2e57000d1d720136c26d325c` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | Router<br>`0x08b5816f1057de757ead4df99469ea653f6fd88e` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | Router<br>`0x9021926be887355b76e60f4148ebb6b3f1ffafcc` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | source verified unclassified | Router<br>`0xd8df34a071179fe8cef910ae0b43cde49d611b49` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5b9f053596f04a47b289f2dc33c1966b41d8977f` | non_address_book | unknown | unknown | unverified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| base | candidate review | WrappedToken<br>`0x8419528dba6daf5d869e1d12a12e9523fe671bd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | candidate review | WrappedToken<br>`0x93aefc0a469ae85f85a53eb24564ee897ec9c333` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | candidate review | WrappedToken<br>`0xc5e8fec887a9906c54ceb8d55dc6bebd667febf3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | candidate review | WrappedToken<br>`0xd3705dbcc4b578999f40cbbbeec0892643b7dc9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | candidate review | WrappedToken<br>`0xdc586c04873a477bdd4e499c5072593ed29bfe14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | candidate review | WrappedToken<br>`0xde5806500084779d19f95b23489ec5f11ab8fa97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | candidate review | WrappedToken<br>`0xfa77ca39eed8a67b6975e5aaefd24e9ec67e7167` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | contamination review | PaymentFacet<br>`0x358e77bbcd8860d1444e99d8804ffa2d58a29306` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | DiamondCutFacet<br>`0x43a4564ad1f577d0773f0a86df4f7827ac3de595` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | DiamondLoupeFacet<br>`0x0b5ea903db149f505a5af1a692761491bc5e1ef9` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | ERC721PortalFacet<br>`0xa26804ebf7cc08048eed544d014867fc1ad8a693` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | FeeCalculatorFacet<br>`0x8334e9f1e3ed2bbed3c3d2098cf8bcf11cabe66f` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | GovernanceFacet<br>`0x8e89a2406f5c8c784d2b24fdf42b5448700b8929` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | GovernanceV2Facet<br>`0x1e2b227791d2f65baeadf9e248622898f3226dbe` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | OwnershipFacet<br>`0xc34aa6d8d51e958cd554279548810e03270aa7e0` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| base | source verified unclassified | PausableFacet<br>`0x2a58671e23f41f2c684daa372f2b06ab673f52bd` | non_address_book | unknown | unknown | verified | n/a | `0x40776f9cb961c2490ec0ad5ffa3f8a9368b7048c` |
| bsc | candidate review | RouterFacet<br>`0x2e195f12e4d049126f9ffb9a57782d730c4de6f7` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | RouterFacet<br>`0xcccaffc62f0e9f3a59a9e42946203082143e981b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x08707eaefcc344ad35bd35c5ff5691c2d3db456e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x1675b4ef9be27e399500a5e735738c0c264355f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x1bb2191ff6f49ba1008398bc9fa882db62c878b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x1f9f0fe7db0aebce6543cb4f7d6c47e2a43cd2e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x3881db10c5051325bf29aff95c0ff7d57af431b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x4e7ff40dfbc8ab76fca8c60b4fb87e049b868ff6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x58b4591a3fd16041f28686098431b1374c3bb789` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x5b9f053596f04a47b289f2dc33c1966b41d8977f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x6a7f89e895ecdb9955533119f24f922cd9d25474` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x7622c26b05e8392830f8b342f29a4544102609dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x7b173deb33ae82f256445d620625ef731ce9b39b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0x8d27bfb87a0b7f6eee18543aa341bc6dff5566af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0xa2e4395cd42ef7f3a41d02e4ae10aa5a3c240119` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0xac41bedf22bcd4fb3534c01d64bb6535bbb69529` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0xd8f3cf9fc5f1eefde2bcc6c292f6da0042c4e5c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0xe0ecf8b3fab0d379f18117e5e9f8b1e0e7566b66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0xe932b880fa267ed7d0e0c80590363532c25d4a47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | candidate review | WrappedToken<br>`0xf839c319b760a52eeadfef3b0f8060a34314110a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | DiamondCutFacet<br>`0xb0c8a4ead6b7085ff36d4e54e0a7cc5f1179725b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | DiamondLoupeFacet<br>`0x0348ee68bece3444c508a864dc9918b5954cd870` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | ERC721PortalFacet<br>`0x802a575134728920382753a835d500f6f7a701e1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | FeeCalculatorFacet<br>`0x147ac324210e9809e15c18b92bdb97121f4b32df` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | GovernanceFacet<br>`0xd387fc40af6d0b0d855c6558d6d029b1fde48f7b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | GovernanceV2Facet<br>`0x1197c65f839af38f038ae8a403a98c3f1b67627d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | OwnershipFacet<br>`0x83fad6e962ea361c2e57000d1d720136c26d325c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | PausableFacet<br>`0xd8df34a071179fe8cef910ae0b43cde49d611b49` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | exact address book overlap | PaymentFacet<br>`0xd050edc322915341baf5e8e9e1dcd25c92db11cc` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | DiamondCutFacet<br>`0x6b3667d9d5cb78dcc6c87185cb903ec35378441a` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | DiamondLoupeFacet<br>`0x32efa93d40b948a98e289b345774eb5bddd0917b` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | ERC721PortalFacet<br>`0xc76c7c5e795bd853ffb5598c2aa2223f301cb737` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | FeeCalculatorFacet<br>`0x51b3642ea87d8fe1d070e6f73c27d33f3b97c029` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | GovernanceFacet<br>`0x93c85cc426c2a21395050dcb589b7ed1acddfdc7` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | OwnershipFacet<br>`0x1a359ec6a0cebabfa2702e78df83e3c269636f12` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | source verified unclassified | Router<br>`0x08b5816f1057de757ead4df99469ea653f6fd88e` | non_address_book | unknown | unknown | verified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| bsc | unverified unclassified | UnnamedContract<br>`0x87f640abd4473fe9e762cd6bc3aa1206ebdb3903` | non_address_book | unknown | unknown | unverified | n/a | `0xd84a06d2146a47cb83950ca3ca1690caa994e333` |
| ethereum | candidate review | RouterFacet<br>`0xf9fe427563b12ec644e79a42b68e148273942b34` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x0e9bf2aa9d50f4155f47625ec2cfbb08fd8e72cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x13ceaf35d3c48bc63a26361852ee6d229c503369` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x16d0b8ac8022e54947e0dc7d8a5b5a79e2b54f0b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x23cce5bc29d30cb69eaa4f6cd58b4b912c520546` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x2e6fb7fe03ca394ce11c040f4ee8a1ffadab422f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x3b930b1248e902367ff36860d256c87244016ccc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x45c82a92b1b502ecb5e8061d4ba97477813b764d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0x7158b89d2e76e4f4f299dea53d74d2675df1e54a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0xa32419c815d58bc6f51781b555e65eb641ddd824` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0xa6312d2ce2724b68f7c426a0d6eddabdadbdde48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0xb418223050e06bde731e9a903ea5806cd35d70c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0xe2d48a96d5eef8c432eb407f9b5e3d14712726af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0xeebd1eeeed96834af8fa1499e895e8ff245ae426` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | candidate review | WrappedToken<br>`0xff77067a8f093463c53e8d3f84b253f08b998167` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | DiamondCutFacet<br>`0xe79c9bb508f00ab7b03cf3043929639e86626ef9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | DiamondLoupeFacet<br>`0x6f1fb462c6e328e8acccf59e58445a2fe18ff01e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | ERC721PortalFacet<br>`0xbb3930ad4429bb05c6c5f3ffe590553d38b9a650` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | FeeCalculatorFacet<br>`0x2bf0c79ce13a405a1f752f77227a28eec621f94c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | GovernanceFacet<br>`0x48b3d6e97a8237f51861afb7f6512fb85a52d7ee` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | GovernanceV2Facet<br>`0x4af1069ffd125f4ce782dc54330272ccda42b403` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | OwnershipFacet<br>`0x3fad3c29973bea5e964d9d90ebb8c84cb921e6c8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | PausableFacet<br>`0x11481c1136d42c60c5bf29dfb9cb7eed90845814` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | PaymentFacet<br>`0xf50329f6f000308538f978299cc1f670460db514` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | exact address book overlap | Router<br>`0x367e59b559283c8506207d75b0c5d8c66c4cd4b7` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | ERC721PortalFacet<br>`0x7327b01ef3bce998ca97541ed510ec6e0d96e22b` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721<br>`0x27d74c114d7f137f9f1a4cf8ea6d335884cafa26` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721<br>`0xbc8fa68ceda02eb00e9139e589f2913c5d0573f3` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721<br>`0xbcb430d7c39eb75f801fac32d77a400326ee4a7d` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x1eb71d3e7d28b9667fb5abae6184e54aa7302cae` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x30a08a04f765aeec3eb139872e021d2620259204` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x58b9ceb6b7856c539c4cb97fba2d7a2c478d07d6` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x8d591de7ef24181e794f6b69724f6e8d06e61065` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x9598f5102d2801931c8dd411995f0de30825dd0a` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x95acb37f86e342af41e06aa00d736b249c429edf` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0x9fd01a0465694e5197b482e0873344c0f815456d` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0xc05b52ec09fb2a5ca5a1e952a77bc0ec30bacab1` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0xdef809f5556e7efeea7d1c103f9a1d53786dd2eb` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0xe8204322bbdb5e223332d5c4ebb39cb91a3b8f90` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0xf0d88a4b58ebdde23fb3cffd2ded66b9d135a36a` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| ethereum | source verified unclassified | WrappedERC721Pausable<br>`0xf660461a84eb95690124977075cf92c80088934f` | non_address_book | unknown | unknown | verified | n/a | `0xd447148db4aa5079113cd0b16505a5ce3d4b62d1` |
| moonbeam | candidate review | RouterFacet<br>`0x6bb0702d9d671da492fea9368733dca4a62fa886` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | RouterFacet<br>`0x7741a15a5ec59085f3cf2b5c90e3c556222f7cee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0x1e02a7c24219fe059a4263fd044d9726939dcb8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0x22c9b5fb2a0ed13ca918df73f2a56981d17a3f60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0x2ca9f31de48297d645c88235461f430637bffcc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0x49967f416ada178eac9e40e77f4b523cf0dd7331` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0x4dbbe83aa01a3707126ffb9ac1671b84f347d8c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0x708f96ab739548749e1e4effb027d541f4d18502` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0xd84eafa1d7b80a69b27844591192dbb9aad58963` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0xdab7779ba8b9d0c1efb9eaba41560f072efab699` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | candidate review | WrappedToken<br>`0xe32c01d807c2290fee75625cdede876a0a1c8ec0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | DiamondCutFacet<br>`0x65dad752b5c6f68672f606b462051e9a47cf1f79` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | DiamondCutFacet<br>`0x9faa69d678d587699d83ec85e981fe3ca8ac430b` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | DiamondLoupeFacet<br>`0x607492fdef10ae6f7202fb7d1778a734dab12dd2` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | DiamondLoupeFacet<br>`0x9cda853d8cc730e2f22337694a4246ad044370c3` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | ERC721PortalFacet<br>`0x2df8b565f0c0c5550b11b1a635e339152a8cdfbe` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | ERC721PortalFacet<br>`0xbe3923fe1f438175c9357aecf6d5a756ecd1ba98` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | FeeCalculatorFacet<br>`0x77765209ec3173e90fe96f2120fd1e5f6f6acdb4` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | FeeCalculatorFacet<br>`0xb91e2f76e3f8bb226be735098926dfccd3b2eaca` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | GovernanceFacet<br>`0x4c199d838ee05ef1c42412b5cecad70207b9f817` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | GovernanceFacet<br>`0xee353507466ce1330eb77a7e02ef6f23432b1cd6` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | GovernanceV2Facet<br>`0x8dfc5461c63a4d8227ad50880485a2e07a9a2a3d` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | GovernanceV2Facet<br>`0xefb5b1b474edd4869538676f6b17f2dc7941bc50` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | OwnershipFacet<br>`0x24fca898d41ad35cce44d0b5ac3bff6c362c595a` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | OwnershipFacet<br>`0xf6b713f1e209a342fe107c0d832152076d85f84c` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | PausableFacet<br>`0x2ef9bd21fe6dbee4aa315bee0972cbf82bab32aa` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | PausableFacet<br>`0xb4cb658a5d0f3b363b8c8b77938b617286e2adfd` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | PaymentFacet<br>`0xce656a47ebe2042ab116fc406f87c487d88b520b` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | PaymentFacet<br>`0xd4848b9dae91ec47816d1c3e918c415f6569a285` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| moonbeam | source verified unclassified | Router<br>`0xeb5a0bf4e651b91a0be4b6c07d8a91df5686fe8a` | non_address_book | unknown | unknown | verified | n/a | `0x572ee1065d17e4c0ae3cc63a90725006c9bb3c7d` |
| optimism | candidate review | RouterFacet<br>`0x3347f15601be15f426689d652794f64fd90e7a6e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x692f53d6f7389ccb5d023210247e3d88599b86f9` |
| optimism | candidate review | WrappedToken<br>`0x1d299fa77d3f52418448eba69ffa25f957ffd401` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x692f53d6f7389ccb5d023210247e3d88599b86f9` |
| optimism | candidate review | WrappedToken<br>`0x2cbf04cf1f0713eaf78b039724b6fa735e671dcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x692f53d6f7389ccb5d023210247e3d88599b86f9` |
| optimism | candidate review | WrappedToken<br>`0x2ea0a6edb6a28e5de8c42d8497969522de4cdc99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x692f53d6f7389ccb5d023210247e3d88599b86f9` |
| optimism | candidate review | WrappedToken<br>`0x73fa28a574f8b7ad9a506a6ccf3fe5cbec3b0e1b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x692f53d6f7389ccb5d023210247e3d88599b86f9` |

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
| needs_review | 20 |

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
