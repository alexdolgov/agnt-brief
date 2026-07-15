# Agentic Audit Brief: Llama Airforce

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 169 unique implementations (229 raw deployments)
- Coverage basis: 0/56 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,007,480.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Llama Airforce. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 58 contract row(s) across ethereum. Structural roles: 35 core, 23 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 58
- Structural roles: core (35), supporting (23)
- Contract kinds: contract (58)
- Detected standards: ownable (30), erc20 (8), erc20permit (2), accesscontrol (1), erc1155 (1), erc165 (1), pausable (1)
- Frameworks: openzeppelin (53), solmate (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 55 contracts are derived from known codebases. 52 contracts have no detected origin.

### Forked Contracts

**AuraBalVault** (`0x8c4eb0...88dd67`, chain 1)
Origin: llama-airforce (`0x4ebad8...6b89b7`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- harvestAndSetRewardWeight(uint256,bool,uint256)
- setRewardWeight(uint256)

**stkCvxCrvVault** (`0xde2bef...afa8b7`, chain 1)
Origin: llama-airforce (`0x4ebad8...6b89b7`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**UnionZap** (`0xd52ca7...31e5ed`, chain 1)
Origin: curve-finance (`0x7a7f79...aa4925`)
Containment: 86.7% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- adjust(bool,uint32[],uint32[],uint256[])
- processIncentives(IMultiMerkleStash.claimParam[],uint256,bool,bool,uint256,uint32[],uint32[],uint256[])

Removals (removed from original):
- adjust(bool,uint32[],uint256[])
- processIncentives(IMultiMerkleStash.claimParam[],uint256,bool,bool,uint256,uint32[],uint256[])

### Original Contracts (no fork detected - full audit scope)

- AddressRegistry (`0x92e6e4...966ee2`, chain 1)
- AssetRegistry (`0xcfa23b...0d1873`, chain 1)
- AuraBalStrategy (`0x4b0987...ee5077`, chain 1)
- AuraBalVault (`0xd6fc1e...c74c29`, chain 1)
- AuraBalZaps (`0x7374c3...ac6067`, chain 1)
- AuraHandler (`0x83d6cd...733f76`, chain 1)
- BBUSDHandler (`0x5c5317...60e484`, chain 1)
- CvxFxsZaps (`0x63f079...d0166c`, chain 1)
- CVXMerkleDistributor (`0x9da701...da25e4`, chain 1)
- DelegateRegistry (`0x469788...015446`, chain 1)
- ERC1155PresetMinterSupply (`0xc04461...3f7db8`, chain 1)
- FXSMerkleDistributor (`0x11fe17...c1d4c7`, chain 1)
- GenericUnionVault (`0xf964b0...89ce0e`, chain 1)
- GnosisSafeProxy (`0x6ed9c1...7061d6`, chain 1)
- GnosisSafeProxy (`0x9bc7c6...e53f99`, chain 1)
- GnosisSafeProxy (`0xaef6ea...bc1f16`, chain 1)
- PCvxZaps (`0xb19290...f17a55`, chain 1)
- PirexClaims (`0xed41c3...517ff9`, chain 1)
- PirexCvx (`0x35a398...8588d7`, chain 1)
- PirexDistributorZaps (`0x783c13...1d4a51`, chain 1)
- PxCvx (`0xbce0cf...15c3ac`, chain 1)
- sCrvUsdDistributor (`0x17ac69...367efc`, chain 1)
- sReUsdDistributor (`0x55b2b5...25690a`, chain 1)
- stkCvxCrvDistributorZaps (`0x68b565...025e1c`, chain 1)
- stkCvxCrvMerkleDistributor (`0x0ed7d0...696f17`, chain 1)
- stkCvxCrvMerkleDistributor (`0x2c5e80...bf06c8`, chain 1)
- stkCvxCrvStrategy (`0x8d2aee...0eb7f3`, chain 1)
- stkCvxCrvStrategy (`0xec221a...1f8883`, chain 1)
- stkCvxCrvVault (`0x4ebad8...6b89b7`, chain 1)
- stkCvxCrvZaps (`0xc8d133...1c4d78`, chain 1)
- stkCvxCrvZaps (`0xd835cd...0c5b25`, chain 1)
- stkCvxFxsDistributorZaps (`0xae12bf...dc7d7c`, chain 1)
- stkCvxFxsMerkleDistributor (`0x5682a2...7e398c`, chain 1)
- stkCvxFxsStrategy (`0x110a88...fb70de`, chain 1)
- stkCvxFxsVault (`0x3a8864...c7b29c`, chain 1)
- stkCvxFxsZaps (`0x1f409e...a23908`, chain 1)
- stkCvxPrismaDistributorZaps (`0x0cb569...5528c3`, chain 1)
- stkCvxPrismaMerkleDistributor (`0xf09320...6754d3`, chain 1)
- stkCvxPrismaMigration (`0x06c3b2...599ac5`, chain 1)
- stkCvxPrismaStrategy (`0x88011c...e89e01`, chain 1)
- stkCvxPrismaVault (`0x9bfd08...1464bd`, chain 1)
- stkCvxPrismaZaps (`0x5beef4...002624`, chain 1)
- UnionPirexStrategy (`0x45f97d...b35d03`, chain 1)
- UnionPirexVault (`0x8659fc...7927af`, chain 1)
- UnionVault (`0x83507c...884c81`, chain 1)
- UnionZap (`0x7a7f79...aa4925`, chain 1)
- UnionZap (`0x835076...29e66f`, chain 1)
- UnionZap (`0x853dcb...966067`, chain 1)
- UnionZap (`0xcc2a0f...d47f91`, chain 1)
- UnionZap (`0xce45e2...f5d988`, chain 1)
- UnionZap (`0xd248e6...3600c9`, chain 1)
- UnionZap (`0xf41129...a30eb7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 58; live-surface rows included: 58 (58 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 56/56 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/56 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 56 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 56 of 169 unique; 113 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/117
- Verified + Unaudited implementations: 117
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 169
- Raw deployments: 229
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (117)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266912 | `0x92e6e4...966ee2` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5eb7...e4bc04` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e6d5c...f1baa4`; ethereum `0x9b4586...5369f0` | ⚠️ Unaudited |
| AssetRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266922 | `0xcfa23b...0d1873` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266893 | `0x4b0987...ee5077` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x67c542...ceb9c7`; ethereum `0x6fc5af...5ee8a4`; ethereum `0xca7b5b...95025c` | ⚠️ Unaudited |
| AuraBalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77e5bb...af7328`; ethereum `0xb70ec1...ff48ac` | ⚠️ Unaudited |
| AuraBalVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266910 | `0x8c4eb0...88dd67` | ⚠️ Unaudited |
| AuraBalVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266925 | `0xd6fc1e...c74c29` | ⚠️ Unaudited |
| AuraBalZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x06ee5f...947363`; ethereum `0x4e87a7...fa4f4b`; ethereum `0xbda1da...83ac02` | ⚠️ Unaudited |
| AuraBalZaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266901 | `0x7374c3...ac6067` | ⚠️ Unaudited |
| AuraHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09ee25...85940e`; ethereum `0x4fcd11...8c73e2` | ⚠️ Unaudited |
| AuraHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266906 | `0x83d6cd...733f76` | ⚠️ Unaudited |
| BBUSDHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d2fc9...6c8e37`; ethereum `0xa9cabe...0241fb` | ⚠️ Unaudited |
| BBUSDHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266898 | `0x5c5317...60e484` | ⚠️ Unaudited |
| BBUSDHandlerv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33ed4...98d4a8` | ⚠️ Unaudited |
| cow_harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a21a...d6acd3` | ⚠️ Unaudited |
| CrvUsdSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b62f9...6328de` | ⚠️ Unaudited |
| CvxFxsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf761c0...badff8` | ⚠️ Unaudited |
| CvxFxsZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x374223...21944d`; ethereum `0xd0e50a...1c0d58`; ethereum `0xf97d26...5dafef` | ⚠️ Unaudited |
| CvxFxsZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266899 | `0x63f079...d0166c` | ⚠️ Unaudited |
| CVXMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27a110...b0cb49`; ethereum `0x678823...7afcc5` | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266914 | `0x9da701...da25e4` | ⚠️ Unaudited |
| DelegateRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266892 | `0x469788...015446` | ⚠️ Unaudited |
| DistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e9db...2ed944` | ⚠️ Unaudited |
| EasySign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c7c0...71487d` | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae47c...8f2b76` | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266918 | `0xc04461...3f7db8` | ⚠️ Unaudited |
| ERC1155Solmate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a3d81...4e0fe1`; ethereum `0xe47e8b...d20fc3` | ⚠️ Unaudited |
| ExtraZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5d69b6...29838e`; ethereum `0x7b7481...d86336`; ethereum `0xaaf755...b1f29c` | ⚠️ Unaudited |
| FeeAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x22530d...8eb468`; ethereum `0x874942...79f322` | ⚠️ Unaudited |
| Flywheelie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31ab6a...514d7d`; ethereum `0xd0602f...37a690` | ⚠️ Unaudited |
| FXSMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266882 | `0x11fe17...c1d4c7` | ⚠️ Unaudited |
| FXSSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2dce36...ded929`; ethereum `0x80617e...7f9b2b` | ⚠️ Unaudited |
| GenericUnionVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266932 | `0xf964b0...89ce0e` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 3 | ethereum | unit-266933 (3 proxies) | 3 deployments: ethereum `0x6ed9c1...7061d6`; ethereum `0x9bc7c6...e53f99`; ethereum `0xaef6ea...bc1f16` | ⚠️ Unaudited |
| LockedBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x921712...a2ea1c`; ethereum `0xa0f102...bf3bf7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5602...fd8562` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa83043...956183` | ⚠️ Unaudited |
| MerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x450dee...6877c2`; ethereum `0x6f76c6...b1441c`; ethereum `0x9eaefb...9a5c46`; ethereum `0xd02f1d...b9c414`; ethereum `0xe63f4e...37b931` | ⚠️ Unaudited |
| MultiMerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x345909...d89c9c`; ethereum `0x378ba9...a7ed5a`; ethereum `0x966a2f...fd4567` | ⚠️ Unaudited |
| PCvxZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6753f2...e48222`; ethereum `0x864461...5c073e`; ethereum `0x94699c...a5bec9`; ethereum `0x9ef0b5...266c6f` | ⚠️ Unaudited |
| PCvxZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266916 | `0xb19290...f17a55` | ⚠️ Unaudited |
| PirexClaimAll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0037eb...8f8aca`; ethereum `0x5af5e9...7c2e71`; ethereum `0x8bd873...a7b44a` | ⚠️ Unaudited |
| PirexClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7ac09d...5dee7a`; ethereum `0xc7a23a...158f01` | ⚠️ Unaudited |
| PirexClaims | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266929 | `0xed41c3...517ff9` | ⚠️ Unaudited |
| PirexCvx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266887 | `0x35a398...8588d7` | ⚠️ Unaudited |
| PirexDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x49a805...b6e6b8`; ethereum `0x9ae313...f58285`; ethereum `0xa1fdfc...a65981`; ethereum `0xe82999...7da097` | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266902 | `0x783c13...1d4a51` | ⚠️ Unaudited |
| PirexFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b0dff...b0720f` | ⚠️ Unaudited |
| PirexMigrationV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e705c...e686c2` | ⚠️ Unaudited |
| PirexMigrationV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ec7d...5fd70a` | ⚠️ Unaudited |
| PrismaSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94b07...422154` | ⚠️ Unaudited |
| PxCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505337...9733c7` | ⚠️ Unaudited |
| PxCvx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266917 | `0xbce0cf...15c3ac` | ⚠️ Unaudited |
| RAAC CoW Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a893b...165787`; ethereum `0xf22259...3ed9ba` | ⚠️ Unaudited |
| RAAC Stable Vault Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10f6ef...740d4f`; ethereum `0xe1ca33...982989` | ⚠️ Unaudited |
| RAAC Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eef8f...75b879` | ⚠️ Unaudited |
| raac_vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a874...7288ba` | ⚠️ Unaudited |
| ReUsdSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4174b1...8c132c` | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266883 | `0x17ac69...367efc` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x534437...3595a3` | ⚠️ Unaudited |
| SpaceAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07c3c2...0a2d17`; ethereum `0xcd215f...dd9216` | ⚠️ Unaudited |
| SplitFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e3b0...c0b297` | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266895 | `0x55b2b5...25690a` | ⚠️ Unaudited |
| StashController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x496e2d...b8a0b9`; ethereum `0x9d37a2...5b1790` | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1b8b49...8dff7b`; ethereum `0x2604ab...05a2ed`; ethereum `0x2a24bb...3406f2`; ethereum `0x2f66e1...cf775c`; ethereum `0xd2b650...216c19` | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266900 | `0x68b565...025e1c` | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266890 | `0x3e2cad...fe83d7` | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4bf420...7c0197`; ethereum `0x932331...3863ff`; ethereum `0xf14d21...b5dc9f` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266880 | `0x0ed7d0...696f17` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266886 | `0x2c5e80...bf06c8` | ⚠️ Unaudited |
| stkCvxCrvMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3074e3...07ac3c`; ethereum `0x3cf974...4303a3` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266911 | `0x8d2aee...0eb7f3` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266928 | `0xec221a...1f8883` | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266894 | `0x4ebad8...6b89b7` | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266927 | `0xde2bef...afa8b7` | ⚠️ Unaudited |
| stkCvxCrvZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x105ec4...87ee2b`; ethereum `0xac4925...3ab2e8`; ethereum `0xff87da...c31a95` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266919 | `0xc8d133...1c4d78` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266926 | `0xd835cd...0c5b25` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266915 | `0xae12bf...dc7d7c` | ⚠️ Unaudited |
| stkCvxFxsHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266888 | `0x35d28d...f5e906` | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266896 | `0x5682a2...7e398c` | ⚠️ Unaudited |
| stkCvxFxsMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab237f...c30fd9` | ⚠️ Unaudited |
| stkCvxFxsStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266881 | `0x110a88...fb70de` | ⚠️ Unaudited |
| stkCvxFxsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fdd9e...35386d` | ⚠️ Unaudited |
| stkCvxFxsVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266889 | `0x3a8864...c7b29c` | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266884 | `0x1f409e...a23908` | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0976b9...354480` | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266879 | `0x0cb569...5528c3` | ⚠️ Unaudited |
| stkCvxPrismaHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266885 | `0x1f9409...54defb` | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266930 | `0xf09320...6754d3` | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266878 | `0x06c3b2...599ac5` | ⚠️ Unaudited |
| stkCvxPrismaStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266909 | `0x88011c...e89e01` | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266913 | `0x9bfd08...1464bd` | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167832...2dd5f4` | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266897 | `0x5beef4...002624` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58f32...488487` | ⚠️ Unaudited |
| TommyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed23ea...df6ff7` | ⚠️ Unaudited |
| Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6508ef...2d290b` | ⚠️ Unaudited |
| UnionPirexStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266891 | `0x45f97d...b35d03` | ⚠️ Unaudited |
| UnionPirexVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266908 | `0x8659fc...7927af` | ⚠️ Unaudited |
| UnionVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266905 | `0x83507c...884c81` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266903 | `0x7a7f79...aa4925` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266904 | `0x835076...29e66f` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266907 | `0x853dcb...966067` | ⚠️ Unaudited |
| UnionZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b37af...6acf15` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266920 | `0xcc2a0f...d47f91` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266921 | `0xce45e2...f5d988` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266923 | `0xd248e6...3600c9` | ⚠️ Unaudited |
| UnionZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266924 | `0xd52ca7...31e5ed` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266931 | `0xf41129...a30eb7` | ⚠️ Unaudited |
| Votium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a2b16...2dae26`; ethereum `0x45c766...1547e3` | ⚠️ Unaudited |
| VotiumBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19bbc3...bd4595` | ⚠️ Unaudited |
| VotiumVeCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fb1f...75d260` | ⚠️ Unaudited |
| VotiumZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x371b7b...801b20`; ethereum `0x830098...732ae2` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x18b79c...3b73cb`; ethereum `0x20b68b...a751c1`; ethereum `0x218403...0a953c`; ethereum `0x505b5f...53f7d4`; ethereum `0x59c952...114310`; ethereum `0x760524...0e0471`; ethereum `0x8c7aa3...2f292c`; ethereum `0xb10c27...1c106c`; ethereum `0xb40359...5156d7`; ethereum `0xcc40a1...aea6dc`; ethereum `0xfb9b21...447281` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ede2...ebabba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094234...2c842b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102aed...30d66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12cb78...d4ab37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13665a...0fadce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c7e4...7efe70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2458...104b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b38b7...38f33c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2251af...423f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239f56...db233d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e6ad...8eb10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3891f4...5d1048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32cc...b94f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ece2b...66d526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x471f4c...c20d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478da5...c4d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49774e...004a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e342d...a430c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5a69...d78566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b9d8...12bf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x591ae6...f26be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627862...ce85e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d4dc...bd3e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698804...ff5b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd77c...6b78d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70bafc...927886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7440e9...d7b1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf2bd...c358a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a92b...499434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d55f...8bf630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48946...acaa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98a92...33a068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb683c1...2d0471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb32da...0ba111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc39eb...6c6756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc139d4...8324c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1cad8...6db32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bf3f...019c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76d5b...bef739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1985...1623d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3c7d...e44578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceeff5...81a375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08657...36e8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd255bf...f8e739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41c27...85602c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd902f3...5dc1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb39a2...5371af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b6af...b0a68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5183d...d762c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d130...e387c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d519...54dd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf770f6...eb6eda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x92e6e4...966ee2` | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcfa23b...0d1873` | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b0987...ee5077` | AuraBalStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c4eb0...88dd67` | AuraBalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6fc1e...c74c29` | AuraBalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7374c3...ac6067` | AuraBalZaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83d6cd...733f76` | AuraHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c5317...60e484` | BBUSDHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63f079...d0166c` | CvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9da701...da25e4` | CVXMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x469788...015446` | DelegateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc04461...3f7db8` | ERC1155PresetMinterSupply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x11fe17...c1d4c7` | FXSMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf964b0...89ce0e` | GenericUnionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb19290...f17a55` | PCvxZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xed41c3...517ff9` | PirexClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35a398...8588d7` | PirexCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x783c13...1d4a51` | PirexDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbce0cf...15c3ac` | PxCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17ac69...367efc` | sCrvUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55b2b5...25690a` | sReUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x68b565...025e1c` | stkCvxCrvDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e2cad...fe83d7` | stkCvxCrvHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ed7d0...696f17` | stkCvxCrvMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c5e80...bf06c8` | stkCvxCrvMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d2aee...0eb7f3` | stkCvxCrvStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec221a...1f8883` | stkCvxCrvStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ebad8...6b89b7` | stkCvxCrvVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde2bef...afa8b7` | stkCvxCrvVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc8d133...1c4d78` | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd835cd...0c5b25` | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xae12bf...dc7d7c` | stkCvxFxsDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35d28d...f5e906` | stkCvxFxsHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5682a2...7e398c` | stkCvxFxsMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x110a88...fb70de` | stkCvxFxsStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a8864...c7b29c` | stkCvxFxsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f409e...a23908` | stkCvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb569...5528c3` | stkCvxPrismaDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9409...54defb` | stkCvxPrismaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf09320...6754d3` | stkCvxPrismaMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x06c3b2...599ac5` | stkCvxPrismaMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88011c...e89e01` | stkCvxPrismaStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bfd08...1464bd` | stkCvxPrismaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5beef4...002624` | stkCvxPrismaZaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45f97d...b35d03` | UnionPirexStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8659fc...7927af` | UnionPirexVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83507c...884c81` | UnionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a7f79...aa4925` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x835076...29e66f` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x853dcb...966067` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc2a0f...d47f91` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce45e2...f5d988` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd248e6...3600c9` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd52ca7...31e5ed` | UnionZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf41129...a30eb7` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 116 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
