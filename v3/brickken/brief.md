# Agentic Audit Brief: Brickken

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

- Project: Brickken (`brickken`)
- Website: [https://www.brickken.com](https://www.brickken.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, polygon
- Contract surface: 36 unique implementations (101 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $42,164,586.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Brickken. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, ethereum, polygon. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8f523d7e1acbbc6d0e3ca19b7d8c1981b346ceb8`, chain 1)
- UnnamedContract (`0xfc209eeba3d744aa741cc5c2a73ebf9c977b5f82`, chain 1)
- Brickken (`0x0a638f07acc6969abf392bb009f216d22adea36d`, chain 1)
- PerpetualStakingV4 (`0x482b09786c7eb62ef8eee311c3e17a7ac3d91143`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 3 of 36 unique; 33 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 36
- Raw deployments: 101
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Brickken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381505 | `0x0a638f07acc6969abf392bb009f216d22adea36d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xee046214759b58bb0eb10d760448e2783de8a546`; ethereum `0xf4f74dba118aa076ecae9c42167ce5647f2e7713` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95954c10ff5319ec1fdcc352d22e74066399a6f7` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0f1564deb8dc85aa410813e06775c7f08dff20` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d51655203787f1cd6aba27d022fc6b5873fe9d1` | ⚠️ Unaudited |
| NegativeCarbonBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b751a65312702312d741ce01a86f764cec90a8` | ⚠️ Unaudited |
| OwnedTimelockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6ac5a1789468487da7050a0b926f7afd371228d7`; ethereum `0xbc718a5787e27d713d8523b726a75cfbb2dd8afe` | ⚠️ Unaudited |
| P2PHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x64fdd96dc513e01327f3f307de9e1fd66df3ed45`; polygon `0x8ed6601a5bb34396fc93c9b1fea3da24ed0c5800`; base `0x89b281df2702f19189fdd73f1d7865707bc7ba3b` | ⚠️ Unaudited |
| PerpetualStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x31c64c80396a7416abcc09be17af370772d4726f`; ethereum `0x37d9b478c161313d61111bb5cfe65620d4740083`; ethereum `0x935621d2b2ef45a91415d18e414dd88975b85ad0`; ethereum `0xa79596109ab63b264385bc31e793c65d7de3cbe8`; ethereum `0xc1bb5d0d82e987faca788c2f387460c55aef32c0` | ⚠️ Unaudited |
| PerpetualStakingV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381507 | 2 deployments: ethereum `0x482b09786c7eb62ef8eee311c3e17a7ac3d91143`; ethereum `0x8f523d7e1acbbc6d0e3ca19b7d8c1981b346ceb8` | ⚠️ Unaudited |
| PriceAndSwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x36fb65754b70982d1aa0d5cedefd8bc614af8fd6`; polygon `0xd84620b75d0e7183491dc5188e14db89fdbd19b0`; base `0xff362452d0969f61d8a7fe1ea70a7caa534aeb07` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf66aa19d631365dff24134884e197792b11ef7b` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4459432f1626cc4de0e0a004e74ff282ae9c4a6f`; ethereum `0xe2f8f2910d923e660a4a526f7c08ef3ddd7a713d` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x27576e72f8cd047e4de23c683acfbf8576476f14`; polygon `0xd1ba506b8c0af146d528ab02a6ab5f4ebf76ea5c` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0x513f0b5f188d33d6b0efbba0b5f07f37cb7cbdeb`; ethereum `0xa6df4685bb512ddf8707ce6966e596a1dbf523d8`; ethereum `0xb7526069485e760612294b23240eecde2bb6b3ee`; polygon `0x409a37fa3636519380624cfb437e48ccaa9d86f7`; polygon `0xc6c230fa8f40022de997727436fae01caabcde61`; base `0x409a37fa3636519380624cfb437e48ccaa9d86f7`; base `0x6d04327079a19297180004891051de7ac5685e89`; base `0xf6b6235f6725f84457f5d6f0b0aa3c962a079977` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2c82a5eac210667e807b409d9e92cf607f2aca94`; base `0xd1ba506b8c0af146d528ab02a6ab5f4ebf76ea5c` | ⚠️ Unaudited |
| STOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x217418172c4c13220ac87285517001fa198e690d`; ethereum `0x37758952d46349a9692c7dea6280e902b1384065`; ethereum `0x67e71d61f88c6b097ffb60f914c0422d48cf951c`; ethereum `0x8ad2bcf07ff1d52ea3a28a9b6a534628b570ade0` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1bb57e2abf2822c01ccaebccbc9d16c7fd0c1956`; polygon `0xd515ca5b14330ed1f25f8f9bc7fd8b08050a0634` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xbb0b08a9bf9b31185c5b925b1e32baf2d29e1b69`; ethereum `0xccda54c76724edaf4591373f29d18648518bbd88`; ethereum `0xf48a4248c1dcd17dc2afd9eddaf9f6687983f0fa`; polygon `0x26840ff7cb44ea734c68616714e3a5692d1d40ff`; base `0xbc2074b87828c30e1ac6285da672602ffdd3f074`; base `0xe1961920e5e47dde355492ca56af6ee511703fe2` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x278d7bdc2451b0fa4087a68ce084a86cb91d4d83`; base `0x816e88407c5edaa8b471b78f72bc3ec695984607` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x46ff5d33a12f3c34e24a4dd4da590da166c3ebac`; ethereum `0xd4ddc16834099e8e43c4b0c5a67f580a137419d7`; polygon `0xb409eb0e7695fa8c72452857cac888371103ab3e`; base `0xb409eb0e7695fa8c72452857cac888371103ab3e`; base `0xbd3d7e8dba0e406a66fa68608564387da83b38aa` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5dc006a13c0f2cb4ea104b3b6ea1d1514a09618a`; ethereum `0x643630f8bd8fc10c4b72669ff899d64ecbe3af54` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5e4e3a4ca61c1f8b3cd4bb560a0040270ad13666`; polygon `0xff362452d0969f61d8a7fe1ea70a7caa534aeb07` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477`; base `0x8bedc6dabef2d289db22ace495f9bd300001ad48` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x00f56834493ed61eb3f4f08b3d01abb8c4fb6735`; ethereum `0x04016a55a97830e8ffe592c96833bd4ae95845c1`; ethereum `0x1d6fa14de7c072811ecf8ee3af756d38fc928c82`; ethereum `0x24df0f6ddda93c1cd90118d735f02b305c3bb013`; ethereum `0x2b80216c45900dbb74cf197bf952828e2b4fa7bd`; ethereum `0x48f33af935645cd7f27d7cf65a366bee515d9bae`; ethereum `0x5e431ba8d7b61f3d812a9f20eb170d64cd248cd2`; ethereum `0x61794595f4014e8b92488af83a9bd703167bcf97`; ethereum `0x6260f35e28b6f58be7035a49c9a6eecc9b0e3db6`; ethereum `0x6a5b55b571604748068f49dfc7f71feb2a6ad143`; ethereum `0x6d04327079a19297180004891051de7ac5685e89`; ethereum `0x775ef82569f239b5d267bd5fd86731a26792763c`; ethereum `0x8343814f9913b311d7afc06c02fa7b8c7269c074`; ethereum `0x916c14f08b0b02aba16dbbdfbe5af5e37b3b69a1`; ethereum `0xa5cc0119d80a2284843049d4b1f97abaaf9e0a1c`; ethereum `0xab1eb447fd635843201a6240516864b4d7e9e597`; ethereum `0xaf923125ab3b3bf8360990d7317664cb0c6214f6`; ethereum `0xb81b6ab76b84f9e207df3cb6695b2556bb18f37c`; ethereum `0xb8a0e9773fa3d63cadb8957f052d20cacc90e8bf`; ethereum `0xbd3ae91c2c3fde0188a1d517181773198eacccbe`; ethereum `0xcce3f7589b33b4413347c20a201347dec09720c3`; ethereum `0xcd26bc3d7138ae6c8420eba668d4b92244c8fd04`; ethereum `0xcdda2b27b1762f075e437d7e831d7a74f1ca183d`; ethereum `0xde22d957c055959a91646962a4019193836c8a76`; ethereum `0xe44af4fef642fe6888b838a0a72d8f0a2d74b04e`; ethereum `0xef46cfd3bf441060121dceb457363546af11e84b`; ethereum `0xf9b60ac7e4f8f4e43cbc84b902e7b514e0f2095f` | ⚠️ Unaudited |
| WBKNVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcaefc11571955a244070638d42356ff398309c73`; ethereum `0xfa8dbf6791371abcd675979e9894e448d84e359e` | ⚠️ Unaudited |
| WBKNVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe867cb4ecde197d9801924806d48f2e45c90877` | ⚠️ Unaudited |
| WBrickken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6b6235f6725f84457f5d6f0b0aa3c962a079977` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b78b5dbbadafec9690002bbf9b66b1175384f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52292de889c4f00ab9e38f578f4c30711d99238d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75509ce41a846e4af4426e77716c7b1b81f62482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b823ec09d8a772391501055374f7dc0c4ad1915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe851c34fb3ebd25c5bbb7425013f16636aefba18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381506 | `0xfc209eeba3d744aa741cc5c2a73ebf9c977b5f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7a06bfd2edca7bb19cab99b4335cc2f559dd5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdecbcba39a5defcfaebbaec076a66d6721e06f5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/brickken](https://skynet.certik.com/projects/brickken) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf](https://cdn.prod.website-files.com/680a2df699085611f5f9221a/69e0f131a3c7f0b39a48f86d_BRICKKEN_AI%202026_signed.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11550] skynet.certik.com/projects/brickken — no match: Extracted from 'Audited Files/SHA256' list in the report. Only two files explicitly listed; others referenced as 'View 13 Audited Files' but not named.
- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf — no match: The document is an ISO/IEC 27001 certificate for Brickken Solutions, not a smart contract audit report. No smart contracts are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/brickken | UpgradeableBeaconEscrow | unmatched — not counted | — | Audited Files/SHA256 section | no |
| skynet.certik.com/projects/brickken | UpgradeableBeaconToken | unmatched — not counted | — | Audited Files/SHA256 section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0a638f07acc6969abf392bb009f216d22adea36d` | Brickken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x482b09786c7eb62ef8eee311c3e17a7ac3d91143` | PerpetualStakingV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [11550] skynet.certik.com/projects/brickken
- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf

Fork inheritance lineage and inherited audits are included when available.
