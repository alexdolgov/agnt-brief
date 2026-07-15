# Agentic Audit Brief: Llama Airforce

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (58 raw deployments)
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

- Indexed contracts: 58; live-surface contracts included: 58 (58 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 56/56 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/56 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 56 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 56 of 56 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 56
- Raw deployments: 58
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

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266912 | `0x92e6e4...966ee2` | ⚠️ Unaudited |
| AssetRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266922 | `0xcfa23b...0d1873` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266893 | `0x4b0987...ee5077` | ⚠️ Unaudited |
| AuraBalVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266910 | `0x8c4eb0...88dd67` | ⚠️ Unaudited |
| AuraBalVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266925 | `0xd6fc1e...c74c29` | ⚠️ Unaudited |
| AuraBalZaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266901 | `0x7374c3...ac6067` | ⚠️ Unaudited |
| AuraHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266906 | `0x83d6cd...733f76` | ⚠️ Unaudited |
| BBUSDHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266898 | `0x5c5317...60e484` | ⚠️ Unaudited |
| CvxFxsZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266899 | `0x63f079...d0166c` | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266914 | `0x9da701...da25e4` | ⚠️ Unaudited |
| DelegateRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266892 | `0x469788...015446` | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266918 | `0xc04461...3f7db8` | ⚠️ Unaudited |
| FXSMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266882 | `0x11fe17...c1d4c7` | ⚠️ Unaudited |
| GenericUnionVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266932 | `0xf964b0...89ce0e` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 3 | ethereum | unit-266933 (3 proxies) | 3 deployments: ethereum `0x6ed9c1...7061d6`; ethereum `0x9bc7c6...e53f99`; ethereum `0xaef6ea...bc1f16` | ⚠️ Unaudited |
| PCvxZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266916 | `0xb19290...f17a55` | ⚠️ Unaudited |
| PirexClaims | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266929 | `0xed41c3...517ff9` | ⚠️ Unaudited |
| PirexCvx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266887 | `0x35a398...8588d7` | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266902 | `0x783c13...1d4a51` | ⚠️ Unaudited |
| PxCvx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266917 | `0xbce0cf...15c3ac` | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266883 | `0x17ac69...367efc` | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266895 | `0x55b2b5...25690a` | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266900 | `0x68b565...025e1c` | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266890 | `0x3e2cad...fe83d7` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266880 | `0x0ed7d0...696f17` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266886 | `0x2c5e80...bf06c8` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266911 | `0x8d2aee...0eb7f3` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266928 | `0xec221a...1f8883` | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266894 | `0x4ebad8...6b89b7` | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266927 | `0xde2bef...afa8b7` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266919 | `0xc8d133...1c4d78` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266926 | `0xd835cd...0c5b25` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266915 | `0xae12bf...dc7d7c` | ⚠️ Unaudited |
| stkCvxFxsHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266888 | `0x35d28d...f5e906` | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266896 | `0x5682a2...7e398c` | ⚠️ Unaudited |
| stkCvxFxsStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266881 | `0x110a88...fb70de` | ⚠️ Unaudited |
| stkCvxFxsVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266889 | `0x3a8864...c7b29c` | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266884 | `0x1f409e...a23908` | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266879 | `0x0cb569...5528c3` | ⚠️ Unaudited |
| stkCvxPrismaHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266885 | `0x1f9409...54defb` | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266930 | `0xf09320...6754d3` | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266878 | `0x06c3b2...599ac5` | ⚠️ Unaudited |
| stkCvxPrismaStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266909 | `0x88011c...e89e01` | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266913 | `0x9bfd08...1464bd` | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266897 | `0x5beef4...002624` | ⚠️ Unaudited |
| UnionPirexStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266891 | `0x45f97d...b35d03` | ⚠️ Unaudited |
| UnionPirexVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266908 | `0x8659fc...7927af` | ⚠️ Unaudited |
| UnionVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266905 | `0x83507c...884c81` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266903 | `0x7a7f79...aa4925` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266904 | `0x835076...29e66f` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266907 | `0x853dcb...966067` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266920 | `0xcc2a0f...d47f91` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266921 | `0xce45e2...f5d988` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266923 | `0xd248e6...3600c9` | ⚠️ Unaudited |
| UnionZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266924 | `0xd52ca7...31e5ed` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266931 | `0xf41129...a30eb7` | ⚠️ Unaudited |

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
| native | 55 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

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
