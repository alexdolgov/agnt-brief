# Agentic Audit Brief: BakerySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 17.1% over 90 days

## Project Overview

- Project: BakerySwap (`bakeryswap`)
- Website: [https://www.bakeryswap.org/](https://www.bakeryswap.org/)
- Lifecycle: declining (Tier 0, 98.7% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 103 unique implementations (192 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,768,926.96
- On-chain TVL (included contracts): $525,894.48
- TVL by chain: Bsc $525,894.48

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for BakerySwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BakeryToken (`0xe02df9...8902c5`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 102 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 1 of 103 unique; 102 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/69
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 103
- Raw deployments: 192
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $525,894.48
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $525,894.48 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BakeryToken | token | project_anchor | own_supporting | 0 | bsc | unit-380102 | `0xe02df9...8902c5` | ⚠️ Unaudited |
| ArtworkBatchMintProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38ad96...d435d7` | ⚠️ Unaudited |
| ArtworkNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bc94e...04e44f` | ⚠️ Unaudited |
| BakeBaseIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x005c66...4559e2`; bsc `0x03f100...000142`; bsc `0x1e7d51...58a774`; bsc `0x37453b...379e69`; bsc `0x9e38df...9f3070`; bsc `0xbe687e...257256`; bsc `0xe9dcd9...519a62` | ⚠️ Unaudited |
| BakeBaseIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x78ed8c...1bd07b`; bsc `0x792cc1...6d27e2` | ⚠️ Unaudited |
| BakeBaseIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x873820...7c1e65`; bsc `0xb535d4...a0b6a1` | ⚠️ Unaudited |
| BakeBaseMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa1d32a...f2f235`; bsc `0xed8732...8b3e0e` | ⚠️ Unaudited |
| BakeryActivityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95c420...9b9a62` | ⚠️ Unaudited |
| BakeryAnniversary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d866e...175c2e` | ⚠️ Unaudited |
| BakeryDestroyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x732b66...afc747` | ⚠️ Unaudited |
| BakeryMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ec29...e5056f` | ⚠️ Unaudited |
| BakeryReserveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x418c99...169ed3` | ⚠️ Unaudited |
| BakerySwapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bf7c...ae16a7` | ⚠️ Unaudited |
| BakerySwapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2fc2ad...48769a`; bsc `0x559e3d...82188b`; bsc `0x5fef67...745d86`; bsc `0x6e218e...fce50a`; bsc `0xc2eed0...9ae492`; bsc `0xfb72d7...97d0e3` | ⚠️ Unaudited |
| BakerySwapPairHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x091307...7100c7` | ⚠️ Unaudited |
| BakerySwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcde540...3e330f` | ⚠️ Unaudited |
| BakeryVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x382d04...6e8b17` | ⚠️ Unaudited |
| BidNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x01fa29...9f0e55`; bsc `0x055930...177fbb`; bsc `0x0c7ab5...12cf8e`; bsc `0x192720...b442af`; bsc `0x2d0130...1ddc15`; bsc `0x35996a...64306f`; bsc `0x3bd857...29da33`; bsc `0x437bf8...07682b`; bsc `0x4ab5d6...31ba70`; bsc `0x585fd9...0184d4`; bsc `0x616ea4...48b0ae`; bsc `0x61e918...98e3e3`; bsc `0xe84e73...44891e`; bsc `0xe98631...a79e29`; bsc `0xea8683...40a8a7`; bsc `0xebead4...66733a`; bsc `0xef44a8...0567e1` | ⚠️ Unaudited |
| CAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x176a25...40264a` | ⚠️ Unaudited |
| CarBlindBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0628cf...8cad88`; bsc `0x74db53...e32e40` | ⚠️ Unaudited |
| CarNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d09fc...b04699` | ⚠️ Unaudited |
| CarNFTStakingPowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0e90b...0ba3aa` | ⚠️ Unaudited |
| CommonMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x2560c6...a4e606`; bsc `0x4302b6...7409ec`; bsc `0x4c496d...962e63`; bsc `0x4d6d2e...16e9f5`; bsc `0x62da74...f0956f`; bsc `0x6a8dbb...494f81`; bsc `0x6bc509...7d61a4`; bsc `0x8d921e...d02eed`; bsc `0x99638f...5c5e02`; bsc `0x9c94e8...212c30`; bsc `0xa9e34c...04f7a8`; bsc `0xe6642f...c4850b`; bsc `0xf5df2d...c2058c` | ⚠️ Unaudited |
| CommonMasterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1307c3...a6dd9c`; bsc `0x6cf0c5...5ea3eb`; bsc `0x885d6c...66c106`; bsc `0xdf2a7a...b7fd93` | ⚠️ Unaudited |
| CommonNftMasterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03b3d5...7f63c6` | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x72bec5...58a621`; bsc `0xc13769...135f51` | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99cc4e...91b98d` | ⚠️ Unaudited |
| CommonStakeERC721EarnBakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x596af0...c8b4ad`; bsc `0x87020e...56c60f` | ⚠️ Unaudited |
| CommonStakeERC721EarnERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xb14b6c...3cc455`; bsc `0xf7f10b...135635` | ⚠️ Unaudited |
| CommonStakeERC721EarnERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x543229...b6196a`; bsc `0xe9d116...f1dd9b` | ⚠️ Unaudited |
| DefaultGetStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0c92...2a8b99` | ⚠️ Unaudited |
| DishMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x714531...a4cf91` | ⚠️ Unaudited |
| DishNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x51efe1...aa7e2e`; bsc `0xa7463c...834962` | ⚠️ Unaudited |
| DishStakingPowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x169895...886f65`; bsc `0x54f135...382275` | ⚠️ Unaudited |
| DogeMemeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84d7fe...5bfa72` | ⚠️ Unaudited |
| Doggy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x44beb8...29fb96`; bsc `0x74926b...6e00c6` | ⚠️ Unaudited |
| ETH2Master | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xe627f0...278a20`; bsc `0xe7cfe6...4df729` | ⚠️ Unaudited |
| ExchangeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x05b39c...ac8a38`; bsc `0x05d189...0b2831`; bsc `0x0f1844...59f3ac`; bsc `0x1f48ae...3681c2`; bsc `0x26b82a...68e814`; bsc `0x58e6e6...cc07b2`; bsc `0x59dc5a...06df61`; bsc `0x615c00...c13490`; bsc `0x7f67a8...fa0e6c`; bsc `0x8443be...53950f`; bsc `0x961985...f4d3b0`; bsc `0xa3514f...d6b326`; bsc `0xa4c3a8...33f644`; bsc `0xc54601...b2cf11`; bsc `0xe590d8...e74b56`; bsc `0xf13015...badff1` | ⚠️ Unaudited |
| ExchangeNFTConfiguration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5f8c0a...d77b94`; bsc `0x611e69...fdecdd` | ⚠️ Unaudited |
| ExchangeNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x047c5e...b5c898`; bsc `0xb1d125...d7fe2c` | ⚠️ Unaudited |
| ExchangeNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5cd944...f218ef`; bsc `0x683a94...e56fbf` | ⚠️ Unaudited |
| ExchangeNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce4129...11150e` | ⚠️ Unaudited |
| GetCarNFTStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38e90a...989e5f` | ⚠️ Unaudited |
| GetComboStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba7e47...905ef3` | ⚠️ Unaudited |
| GetPokerCardStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaafb7...961145` | ⚠️ Unaudited |
| IdoFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8ad715...f7bc80`; bsc `0xb673b0...4d6e28`; bsc `0xceb1c1...fd3a6f` | ⚠️ Unaudited |
| MuskDogeNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1233b9...0cdbd3` | ⚠️ Unaudited |
| MysteryBox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x000fcc...b54311`; bsc `0xe910ad...5a8861` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b6fb6...0fbe50` | ⚠️ Unaudited |
| OneInchBAKENFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b8439...cab7f9` | ⚠️ Unaudited |
| PetMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d2fe7...725e08` | ⚠️ Unaudited |
| PetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x829963...88bce4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cd8a7...472447` | ⚠️ Unaudited |
| SfpNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d0e5a...ed964b` | ⚠️ Unaudited |
| SimpleStakeToysEarnERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04c798...499e3c`; bsc `0x735c9f...64cf03` | ⚠️ Unaudited |
| SoccerPokerGameBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a038...7297cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x138d14...4de315`; bsc `0xf6dae2...ece510` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15c716...b4d012`; bsc `0x45ac8b...e29250` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1868e9...408df7`; bsc `0x43db8e...b59445` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x22631c...d57151`; bsc `0xb56f47...b89a27` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2299c1...c185ef`; bsc `0x28a93d...be5352`; bsc `0x45b2c7...fb01a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2dca88...faa64c`; bsc `0xecc2b7...71f0b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4120ee...2ce568`; bsc `0xb3a47a...b31799` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x647527...375890`; bsc `0x7f7b19...fe9cf9`; bsc `0xe7fc81...5b1fe8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x97abe5...a71957`; bsc `0xb6f8af...396710` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa88b7c...a18400`; bsc `0xf99ee0...0ea422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc3d086...6de527`; bsc `0xca92d1...e18c5b` | ⚠️ Unaudited |
| VoteForNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87b06e...d2a92e` | ⚠️ Unaudited |
| VoteForNFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97e95c...aeb2d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0276a0...bf81b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0387d7...b4a866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08bfbe...f201e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09da17...082d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cd070...0f9fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12fc00...4f40f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x163454...e2acf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19f8c3...349bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bb698...8edc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f2688...681cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cbb0e...e53521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x498a5e...91d979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b235...8d9d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5700df...e388a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bb233...4f4399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e860f...422789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x773028...cc4b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c9378...788bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x888d8f...679d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fb398...ddb2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a76f5...68ff6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaad7ec...3070aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad4f4d...1690b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb78976...17acd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15d07...ca7705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc32ea3...ad28fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc92123...0fffea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfb27c...0a0a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5c260...33c72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9cd74...271e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda033c...848312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4d329...3b2b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe56a84...084e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf10970...e4700c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/bakeryswap](https://skynet.certik.com/projects/bakeryswap) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2736] skynet.certik.com/projects/bakeryswap — no match: Extracted from 'Audited Files/SHA256' section; only two files explicitly listed. Audit date from 'Last Audit was delivered on 8/27/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/bakeryswap | TransferHelper | unmatched — not counted | — | Audited Files/SHA256 list | no |
| skynet.certik.com/projects/bakeryswap | AddressStringUtil | unmatched — not counted | — | Audited Files/SHA256 list | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xe02df9...8902c5` | BakeryToken | token | $525,894.48 | Verified native implementation with $525,894.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2736] skynet.certik.com/projects/bakeryswap

Fork inheritance lineage and inherited audits are included when available.
