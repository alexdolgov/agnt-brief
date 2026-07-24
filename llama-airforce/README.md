# Agentic Audit Brief: Llama Airforce

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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

**AuraBalVault** (`0x8c4eb0fc6805ee7337ac126f89a807271a88dd67`, chain 1)
Origin: llama-airforce (`0x4ebad8...6b89b7`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- harvestAndSetRewardWeight(uint256,bool,uint256)
- setRewardWeight(uint256)

**stkCvxCrvVault** (`0xde2bef0a01845257b4aef2a2eaa48f6eaeafa8b7`, chain 1)
Origin: llama-airforce (`0x4ebad8...6b89b7`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**UnionZap** (`0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed`, chain 1)
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

- AddressRegistry (`0x92e6e43f99809df84ed2d533e1fd8017eb966ee2`, chain 1)
- AssetRegistry (`0xcfa23b8f9062369b21049b9f4a4ce79d640d1873`, chain 1)
- AuraBalStrategy (`0x4b0987bef3f966354c6ecd22f6d844d621ee5077`, chain 1)
- AuraBalVault (`0xd6fc1ecd9965ba9cac895654979564a291c74c29`, chain 1)
- AuraBalZaps (`0x7374c3dcaf8ff2c9bb706eaff7bf4ebbf9ac6067`, chain 1)
- AuraHandler (`0x83d6cdd50110cb3fd9547618cc94540b79733f76`, chain 1)
- BBUSDHandler (`0x5c53174c8d88f0f56c33f923b8c6a84a1760e484`, chain 1)
- CvxFxsZaps (`0x63f0797015489d407fc2ac7e3891467e1ed0166c`, chain 1)
- CVXMerkleDistributor (`0x9da701a9b76e0dd136d3508cb60a4c436dda25e4`, chain 1)
- DelegateRegistry (`0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446`, chain 1)
- ERC1155PresetMinterSupply (`0xc044613b702ed11567a38108703ac5478a3f7db8`, chain 1)
- FXSMerkleDistributor (`0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7`, chain 1)
- GenericUnionVault (`0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e`, chain 1)
- GnosisSafeProxy (`0x6ed9c171e02de08aaedf0fc1d589923d807061d6`, chain 1)
- GnosisSafeProxy (`0x9bc7c6ad7e7cf3a6fcb58fb21e27752ac1e53f99`, chain 1)
- GnosisSafeProxy (`0xaef6ea60f6443bad046e825c1d2b0c0b5ebc1f16`, chain 1)
- PCvxZaps (`0xb192908e533fc64109a20ee7d056175a24f17a55`, chain 1)
- PirexClaims (`0xed41c3402c4b62777939b7334b4d3d2407517ff9`, chain 1)
- PirexCvx (`0x35a398425d9f1029021a92bc3d2557d42c8588d7`, chain 1)
- PirexDistributorZaps (`0x783c13b94123ccdcc5d597deb93a69983e1d4a51`, chain 1)
- PxCvx (`0xbce0cf87f513102f22232436cca2ca49e815c3ac`, chain 1)
- sCrvUsdDistributor (`0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc`, chain 1)
- sReUsdDistributor (`0x55b2b51f661e269aed638a5ddbf2fc930125690a`, chain 1)
- stkCvxCrvDistributorZaps (`0x68b56567af308fe8d94876ab0fe88541ed025e1c`, chain 1)
- stkCvxCrvMerkleDistributor (`0x0ed7d0497194fc029ae02223fec6d4d567696f17`, chain 1)
- stkCvxCrvMerkleDistributor (`0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8`, chain 1)
- stkCvxCrvStrategy (`0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3`, chain 1)
- stkCvxCrvStrategy (`0xec221ae5c62029cb03d91eff85611a378a1f8883`, chain 1)
- stkCvxCrvVault (`0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7`, chain 1)
- stkCvxCrvZaps (`0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78`, chain 1)
- stkCvxCrvZaps (`0xd835cdedc20ca3075f86dea4e0d914499d0c5b25`, chain 1)
- stkCvxFxsDistributorZaps (`0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c`, chain 1)
- stkCvxFxsMerkleDistributor (`0x5682a28919389b528ae74dd627e0d632ca7e398c`, chain 1)
- stkCvxFxsStrategy (`0x110a888f88b65a2c34a6922f518128eda4fb70de`, chain 1)
- stkCvxFxsVault (`0x3a886455e5b33300a31c5e77bac01e76c0c7b29c`, chain 1)
- stkCvxFxsZaps (`0x1f409ec6f395493ad39f5b27945f1a6658a23908`, chain 1)
- stkCvxPrismaDistributorZaps (`0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3`, chain 1)
- stkCvxPrismaMerkleDistributor (`0xf09320ed7db384cab7fce9ea9947436a806754d3`, chain 1)
- stkCvxPrismaMigration (`0x06c3b252c01225fdf3017551f39668c9b6599ac5`, chain 1)
- stkCvxPrismaStrategy (`0x88011c72623777f6452a7d6d8bab10ec67e89e01`, chain 1)
- stkCvxPrismaVault (`0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd`, chain 1)
- stkCvxPrismaZaps (`0x5beef400f378df4f353fb42e58498f9779002624`, chain 1)
- UnionPirexStrategy (`0x45f97d07dab04b21f36fa3b1149c35e316b35d03`, chain 1)
- UnionPirexVault (`0x8659fc767cad6005de79af65dafe4249c57927af`, chain 1)
- UnionVault (`0x83507cc8c8b67ed48badd1f59f684d5d02884c81`, chain 1)
- UnionZap (`0x7a7f79c5706716bae853c1b96e36538c7eaa4925`, chain 1)
- UnionZap (`0x835076176ab24f2c4372ba15c8e7e76c1429e66f`, chain 1)
- UnionZap (`0x853dcbf4dd00dbc6a70002ff87be3671ac966067`, chain 1)
- UnionZap (`0xcc2a0f5e95c88aabd7b8e0db5c5252820cd47f91`, chain 1)
- UnionZap (`0xce45e2e9a1ca8ba9a311bf862606b890c1f5d988`, chain 1)
- UnionZap (`0xd248e64b2d3d00d7f6a21009c3fcc1bd593600c9`, chain 1)
- UnionZap (`0xf4112931c955fda9fb7f184da3518e6050a30eb7`, chain 1)

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
| AddressRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266912 | `0x92e6e43f99809df84ed2d533e1fd8017eb966ee2` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5eb7d90f856f0df11ba59876a8981cebe4bc04` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e6d5cf9b9659d4f8e68ee040bf26e728ef1baa4`; ethereum `0x9b4586b4d14bead4ba0eb244d103cd7e075369f0` | ⚠️ Unaudited |
| AssetRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266922 | `0xcfa23b8f9062369b21049b9f4a4ce79d640d1873` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266893 | `0x4b0987bef3f966354c6ecd22f6d844d621ee5077` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x67c542c99fca130fd0a830794ca9f46143ceb9c7`; ethereum `0x6fc5afc727d7807c21ed0a961f0fa6e4c25ee8a4`; ethereum `0xca7b5b6a9b135fc7e29ba7bc5d4cca936395025c` | ⚠️ Unaudited |
| AuraBalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328`; ethereum `0xb70ec1ae115d184d9401e30510dc20b294ff48ac` | ⚠️ Unaudited |
| AuraBalVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266910 | `0x8c4eb0fc6805ee7337ac126f89a807271a88dd67` | ⚠️ Unaudited |
| AuraBalVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266925 | `0xd6fc1ecd9965ba9cac895654979564a291c74c29` | ⚠️ Unaudited |
| AuraBalZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x06ee5f2c2690c3b03718e662dd14282cb9947363`; ethereum `0x4e87a71dcb68287e07330db2516bd9b4cafa4f4b`; ethereum `0xbda1daacd2a5d7770edbdf9c6039861cad83ac02` | ⚠️ Unaudited |
| AuraBalZaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266901 | `0x7374c3dcaf8ff2c9bb706eaff7bf4ebbf9ac6067` | ⚠️ Unaudited |
| AuraHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09ee25e4f85826705b385ab863e6f1701a85940e`; ethereum `0x4fcd115f7e7e161d82c6a9fbe8cfd35b6e8c73e2` | ⚠️ Unaudited |
| AuraHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266906 | `0x83d6cdd50110cb3fd9547618cc94540b79733f76` | ⚠️ Unaudited |
| BBUSDHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d2fc9222633d33271f03255b56e7e50636c8e37`; ethereum `0xa9cabe82816caafaf514045259eafad1060241fb` | ⚠️ Unaudited |
| BBUSDHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266898 | `0x5c53174c8d88f0f56c33f923b8c6a84a1760e484` | ⚠️ Unaudited |
| BBUSDHandlerv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33ed45c38a1def9c0bfb592d6b4f9788898d4a8` | ⚠️ Unaudited |
| cow_harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3` | ⚠️ Unaudited |
| CrvUsdSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b62f91278f9439bcffd25d9fdc08043b46328de` | ⚠️ Unaudited |
| CvxFxsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf761c0098967d756c9673f2798dbf23342badff8` | ⚠️ Unaudited |
| CvxFxsZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3742235b332fac741ec3a4f1ab7115ae0621944d`; ethereum `0xd0e50af0696f8972439198771cdf759c901c0d58`; ethereum `0xf97d26bbf79cd7b319f54e5dd8a6f581605dafef` | ⚠️ Unaudited |
| CvxFxsZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266899 | `0x63f0797015489d407fc2ac7e3891467e1ed0166c` | ⚠️ Unaudited |
| CVXMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27a11054b62c29c166f3fab2b0ac708043b0cb49`; ethereum `0x6788234f40931ca615b0d221c1afbf0ec07afcc5` | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266914 | `0x9da701a9b76e0dd136d3508cb60a4c436dda25e4` | ⚠️ Unaudited |
| DelegateRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-266892 | `0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446` | ⚠️ Unaudited |
| DistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e9db574c8d5015d198671cbf1200b6bb2ed944` | ⚠️ Unaudited |
| EasySign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c7c0eae2d6c6244814467f7718407e2571487d` | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76` | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266918 | `0xc044613b702ed11567a38108703ac5478a3f7db8` | ⚠️ Unaudited |
| ERC1155Solmate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1`; ethereum `0xe47e8b5b4ee05b7663b15087381bd47bcbd20fc3` | ⚠️ Unaudited |
| ExtraZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5d69b683bf963648137b3ab5244e9d31d529838e`; ethereum `0x7b7481c10233563c1505a1161d9e761df7d86336`; ethereum `0xaaf75554249209114ced07027c67bee7cfb1f29c` | ⚠️ Unaudited |
| FeeAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x22530d384cd9915e096ead2db7f82ee81f8eb468`; ethereum `0x874942096ed129c1a7c99de6c7aa6fa0b679f322` | ⚠️ Unaudited |
| Flywheelie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31ab6aecea7ae3be6b7985996c8c34e19e514d7d`; ethereum `0xd0602f19e2297623b89b8944db04a19c9637a690` | ⚠️ Unaudited |
| FXSMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266882 | `0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7` | ⚠️ Unaudited |
| FXSSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2dce36d00bb398cb01390a0769260b84edded929`; ethereum `0x80617e6a0fa8e018ceb6ddb9037999b6bb7f9b2b` | ⚠️ Unaudited |
| GenericUnionVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266932 | `0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 3 | ethereum | unit-266933 (3 proxies) | 3 deployments: ethereum `0x6ed9c171e02de08aaedf0fc1d589923d807061d6`; ethereum `0x9bc7c6ad7e7cf3a6fcb58fb21e27752ac1e53f99`; ethereum `0xaef6ea60f6443bad046e825c1d2b0c0b5ebc1f16` | ⚠️ Unaudited |
| LockedBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x921712d41288c04cc69d0925764e3ceb83a2ea1c`; ethereum `0xa0f1024bad722cf6c757b230fb88286dfbbf3bf7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5602730824340d714c92a153460db958fd8562` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa83043df401346a67eddeb074679b4570b956183` | ⚠️ Unaudited |
| MerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x450dee782b088b0778bdf7291222e6781f6877c2`; ethereum `0x6f76c6c2fefa72bac17d2864e05b93abe7b1441c`; ethereum `0x9eaefbecb59ce28c24ca4f5a1b667626419a5c46`; ethereum `0xd02f1d2df98208368ccce6411efa1b2acfb9c414`; ethereum `0xe63f4ef026a3e30a267c5ff39765a283ca37b931` | ⚠️ Unaudited |
| MultiMerkleStash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x34590960981f98b55d236b70e8b4d9929ad89c9c`; ethereum `0x378ba9b73309be80bf4c2c027aad799766a7ed5a`; ethereum `0x966a2f2dc3aff00965c6eccf6290d0d402fd4567` | ⚠️ Unaudited |
| PCvxZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6753f23905f15376429e6f0c381fcc4862e48222`; ethereum `0x86446124258f8fae2fd8a7637816111f555c073e`; ethereum `0x94699cf40851c5796e6f4e55063cd79b33a5bec9`; ethereum `0x9ef0b5af11a5309f08e69771b735324afa266c6f` | ⚠️ Unaudited |
| PCvxZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266916 | `0xb192908e533fc64109a20ee7d056175a24f17a55` | ⚠️ Unaudited |
| PirexClaimAll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca`; ethereum `0x5af5e91dede935c1f92e08e9bb4c961f387c2e71`; ethereum `0x8bd873dad13493d3d0f3585ff221fba389a7b44a` | ⚠️ Unaudited |
| PirexClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7ac09d90f8fcf0cce77f0d3bc7aaef3ad75dee7a`; ethereum `0xc7a23a1098f27e4c1554de9442e95e4138158f01` | ⚠️ Unaudited |
| PirexClaims | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266929 | `0xed41c3402c4b62777939b7334b4d3d2407517ff9` | ⚠️ Unaudited |
| PirexCvx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266887 | `0x35a398425d9f1029021a92bc3d2557d42c8588d7` | ⚠️ Unaudited |
| PirexDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x49a8056440065900a3a21b33594815aa0fb6e6b8`; ethereum `0x9ae3136aa13217921f6a75b5b04c7b1f7df58285`; ethereum `0xa1fdfcab1c53e6f80439462f7f394c1f2ba65981`; ethereum `0xe829995c461367e1f159a7ed1f64bf7b4d7da097` | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266902 | `0x783c13b94123ccdcc5d597deb93a69983e1d4a51` | ⚠️ Unaudited |
| PirexFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b0dff589fc0acac23581ecaff5688434db0720f` | ⚠️ Unaudited |
| PirexMigrationV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e705c0694795516178c63b6c40339ac2be686c2` | ⚠️ Unaudited |
| PirexMigrationV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ec7d444c88ba3afe96978854645c43bd5fd70a` | ⚠️ Unaudited |
| PrismaSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94b0763dadd691a1e9688cf0ef8238d95422154` | ⚠️ Unaudited |
| PxCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5053371da4ba1f6c65e61a4bba86cedee49733c7` | ⚠️ Unaudited |
| PxCvx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266917 | `0xbce0cf87f513102f22232436cca2ca49e815c3ac` | ⚠️ Unaudited |
| RAAC CoW Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a893bb0f62e0a4a5e104753dd88fe1773165787`; ethereum `0xf222593a4c8f68336b4709ec57e1a76a7e3ed9ba` | ⚠️ Unaudited |
| RAAC Stable Vault Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10f6ef027725df44cebbf1efd25d3e1df3740d4f`; ethereum `0xe1ca332516a74e136575bac99205c60888982989` | ⚠️ Unaudited |
| RAAC Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eef8f6a259cbbc939ba29cdb009abef8275b879` | ⚠️ Unaudited |
| raac_vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8749896ef4185a26a2a23f04f722c157288ba` | ⚠️ Unaudited |
| ReUsdSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4174b1b21b41fbc616b754552fcfa66ebf8c132c` | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266883 | `0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53443740ea74c4e816a9e167704f9f9fae3595a3` | ⚠️ Unaudited |
| SpaceAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07c3c293dc6c71bcc00142738ec1a356340a2d17`; ethereum `0xcd215f053c0cd288e894e7bac1a1519071dd9216` | ⚠️ Unaudited |
| SplitFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e3b0e8df4ee3f71a62c34847c34e139fc0b297` | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266895 | `0x55b2b51f661e269aed638a5ddbf2fc930125690a` | ⚠️ Unaudited |
| StashController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x496e2d5697af7754acff7bb1175bbd0e76b8a0b9`; ethereum `0x9d37a22cec2f6b3635c61c253d192e68e85b1790` | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b`; ethereum `0x2604ab21546775e8d9b6e230a3c85a37ff05a2ed`; ethereum `0x2a24bb027d7fe2a62e39871187d644daf03406f2`; ethereum `0x2f66e12d94bdac080604768383e65a234dcf775c`; ethereum `0xd2b650143eb80c779b427e2d12b87bbf53216c19` | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266900 | `0x68b56567af308fe8d94876ab0fe88541ed025e1c` | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266890 | `0x3e2cad773e36e29a53eaab56726043ac04fe83d7` | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4bf420e8040d6e96218328730e611ea3357c0197`; ethereum `0x9323318261718f36ed55e34391c160260d3863ff`; ethereum `0xf14d2128e4d36aa81b3a46ce57bf427629b5dc9f` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266880 | `0x0ed7d0497194fc029ae02223fec6d4d567696f17` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266886 | `0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8` | ⚠️ Unaudited |
| stkCvxCrvMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3074e38941c52a466a228e451e21a0c34607ac3c`; ethereum `0x3cf974912dfc7d5fa1a3503fe83ff5ae7e4303a3` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266911 | `0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3` | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266928 | `0xec221ae5c62029cb03d91eff85611a378a1f8883` | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266894 | `0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7` | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266927 | `0xde2bef0a01845257b4aef2a2eaa48f6eaeafa8b7` | ⚠️ Unaudited |
| stkCvxCrvZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x105ec4f5cc0dfd706ac3af68de1a3c80b587ee2b`; ethereum `0xac4925a6e9446f619e48709a15948fae853ab2e8`; ethereum `0xff87da30e779ca78ff2e9b1582d6c15c1ac31a95` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266919 | `0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266926 | `0xd835cdedc20ca3075f86dea4e0d914499d0c5b25` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266915 | `0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c` | ⚠️ Unaudited |
| stkCvxFxsHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266888 | `0x35d28d77369e825298de76060e96e5ada7f5e906` | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266896 | `0x5682a28919389b528ae74dd627e0d632ca7e398c` | ⚠️ Unaudited |
| stkCvxFxsMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab237fd3b2e72a82ab08330f98fb1fa36ec30fd9` | ⚠️ Unaudited |
| stkCvxFxsStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266881 | `0x110a888f88b65a2c34a6922f518128eda4fb70de` | ⚠️ Unaudited |
| stkCvxFxsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fdd9e5dc0c83795f5c114e2b27926194035386d` | ⚠️ Unaudited |
| stkCvxFxsVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266889 | `0x3a886455e5b33300a31c5e77bac01e76c0c7b29c` | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266884 | `0x1f409ec6f395493ad39f5b27945f1a6658a23908` | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0976b9a5816bb7d0441b776a76c3057980354480` | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266879 | `0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3` | ⚠️ Unaudited |
| stkCvxPrismaHarvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266885 | `0x1f9409933aa273dab349ceba255f5ad8f854defb` | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266930 | `0xf09320ed7db384cab7fce9ea9947436a806754d3` | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-266878 | `0x06c3b252c01225fdf3017551f39668c9b6599ac5` | ⚠️ Unaudited |
| stkCvxPrismaStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266909 | `0x88011c72623777f6452a7d6d8bab10ec67e89e01` | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266913 | `0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd` | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1678324f62001454f7c08e936511a0371a2dd5f4` | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266897 | `0x5beef400f378df4f353fb42e58498f9779002624` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58f3295b3db1a9bc0f909d591c6f0e600488487` | ⚠️ Unaudited |
| TommyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed23eafeaa51e34cee163b5ef08c512e9adf6ff7` | ⚠️ Unaudited |
| Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6508ef65b0bd57eabd0f1d52685a70433b2d290b` | ⚠️ Unaudited |
| UnionPirexStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266891 | `0x45f97d07dab04b21f36fa3b1149c35e316b35d03` | ⚠️ Unaudited |
| UnionPirexVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266908 | `0x8659fc767cad6005de79af65dafe4249c57927af` | ⚠️ Unaudited |
| UnionVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-266905 | `0x83507cc8c8b67ed48badd1f59f684d5d02884c81` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266903 | `0x7a7f79c5706716bae853c1b96e36538c7eaa4925` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266904 | `0x835076176ab24f2c4372ba15c8e7e76c1429e66f` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266907 | `0x853dcbf4dd00dbc6a70002ff87be3671ac966067` | ⚠️ Unaudited |
| UnionZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b37af33127aeb54d9e602f98c53f279f46acf15` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266920 | `0xcc2a0f5e95c88aabd7b8e0db5c5252820cd47f91` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266921 | `0xce45e2e9a1ca8ba9a311bf862606b890c1f5d988` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266923 | `0xd248e64b2d3d00d7f6a21009c3fcc1bd593600c9` | ⚠️ Unaudited |
| UnionZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-266924 | `0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed` | ⚠️ Unaudited |
| UnionZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266931 | `0xf4112931c955fda9fb7f184da3518e6050a30eb7` | ⚠️ Unaudited |
| Votium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a2b16ca90ea56d34a00898850c52b1f1f2dae26`; ethereum `0x45c7667632ea2562a68caa36da86509ae41547e3` | ⚠️ Unaudited |
| VotiumBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19bbc3463dd8d07f55438014b021fb457ebd4595` | ⚠️ Unaudited |
| VotiumVeCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fb1fd4aec780bc255bf231189e9a244475d260` | ⚠️ Unaudited |
| VotiumZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x371b7b96ebdbdaf7e9b2c7402bc57c82ce801b20`; ethereum `0x830098c262c3618e6fe80acf8e0395e2c0732ae2` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x18b79cba3ff6f6120eec4b01781d343cc43b73cb`; ethereum `0x20b68b9efbe3c925b10d07a09391a83a78a751c1`; ethereum `0x218403ebc5ee1ee088823985b496cabffb0a953c`; ethereum `0x505b5ff8f6a33050b5950e28eda7c524b553f7d4`; ethereum `0x59c952823c271da02b52debcf4b5582ad9114310`; ethereum `0x76052439a4a632b65cc03074df1c7766ba0e0471`; ethereum `0x8c7aa3c15ffead950d4556cfecafec2b742f292c`; ethereum `0xb10c27e4370b95c807915f3e64e94717591c106c`; ethereum `0xb40359ce3d7494adb696697855537640f85156d7`; ethereum `0xcc40a1c97a87792f341bbd8e05bd2d309daea6dc`; ethereum `0xfb9b21087f5cf9f1c1e0217628afab98ba447281` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ede2b40226aacda21f2829802482c84eebabba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0942345b4e78bb849d45678a3a43d7fadd2c842b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102aeda97327b41bab887f7c7ccd0c1e6a30d66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12cb781637e638263a3c8dcd57ffc212c6d4ab37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13665acd569e30b2fa3087da6ad0fa3ed80fadce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c7e46304f7a13a7e327c98bae1dbe49d7efe70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2458880e4abec98dbba9e1cd2ba117de104b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b38b7576cc1646ec4ba607c2d92d8fd0438f33c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2251af9804d0a1a04e8e0e7a1fbb83f4d7423f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239f567689de71c97a896bde3c31070571db233d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e6ad23260fb54679ca9ee9dd5512c8388eb10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3891f47346e3cd607b547830d0f9fe2d0c5d1048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32cc59dbc1bd7b32796c8a247ea9f7beb94f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ece2b74be59a17be4cdc6c378a57c22d966d526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x471f4ca9175d50a4f2ef87722bf878fc83c20d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478da5ff31fcad6e436b79456803b4aca6c4d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49774e9e48f280498bab542cd877da93bd004a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e342db1b36b7c39fe0079dd13c90d3377a430c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5a69560f32a1c2293a8c63eabebe5aecd78566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b9d83bf47ea4b1b6e9c7db076d796c6012bf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x591ae6a795554ce2a81cc934650eff2f1bf26be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627862c586401e3a157a9e5a86209a1d60ce85e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d4dcb510b84ab209ad599555e52e1b25bd3e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698804b7cc4070260a0dc14ce2ca4e3af0ff5b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd77c4e1937fdf5cea0997dc358b9dcf06b78d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70bafc475500d0fb648d738a007fabdae5927886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7440e99a14c694253e78f5b747dc4ccf5cd7b1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf2bdd07261ecf53f512566b9ede56d5cc358a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a92be6585c261f10bf94cb342f87aa08499434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d55ff983725ec5ae2840154ecd836ac58bf630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48946501488abf8d4ce1102e813aec919acaa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98a92c4dfa816dcc5b4ced2f11cbeacf333a068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb683c12ab153751cfa883a4c4d1907186f2d0471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb32da1873e9a2a0fb478a960c5aef02550ba111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc39ebe15b012920013a072627705eb7f76c6756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc139d405d3255cbd0a6950f6f5fcc3cd8b8324c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1cad8a1787285cc9dc6687ee234e1ff6a6db32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bf3fac7bfc34ed8186b484341703fdc6019c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76d5b13ea53523a14b754aa8d151d7554bef739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb19851693bf648724f01d79e4c1ecd2ba1623d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3c7dd81c7ea9ff81c2aaaaa58e106291e44578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceeff5c1616cb0907281f46ce58be8c9ab81a375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08657fdd67b857731628eac6511fee30436e8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd255bf529da5761ba14980b0f74c2cb2a4f8e739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41c27900f694d0cb58056e2e84b20befd85602c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd902f325cda60a34324818d5b35199b0c15dc1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb39a269167b9d0b429c0c71b6397049e55371af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b6af951a95e2531034e6154155029750b0a68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5183d721b43cde100800fa175069f29dbd762c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d13061e18cfc53d9f2461084ae2d7ed3e387c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d519b87e37002490b47c4616b1a9b6c154dd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf770f682ff67ae6e1c7b5d780bc9391b08eb6eda` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 142
- Live contracts: 25
- Unknown liveness contracts: 117
- Source-verified contracts: 120
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=18, contamination review=13, exact address book overlap=18, source verified unclassified=71, unverified unclassified=22

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | AuraBalVault<br>`0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | AuraBalVault<br>`0xb70ec1ae115d184d9401e30510dc20b294ff48ac` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | AuraBalVault<br>`0xd6fc1ecd9965ba9cac895654979564a291c74c29` | project_anchor | unknown | live | verified | review: missing_independent_ownership_evidence | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | DistributorZaps<br>`0x56e9db574c8d5015d198671cbf1200b6bb2ed944` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | stkCvxCrvDistributorZaps<br>`0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | stkCvxCrvDistributorZaps<br>`0x2604ab21546775e8d9b6e230a3c85a37ff05a2ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | stkCvxCrvDistributorZaps<br>`0x2a24bb027d7fe2a62e39871187d644daf03406f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | stkCvxCrvDistributorZaps<br>`0x2f66e12d94bdac080604768383e65a234dcf775c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | stkCvxCrvDistributorZaps<br>`0xd2b650143eb80c779b427e2d12b87bbf53216c19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | candidate review | stkCvxFxsVault<br>`0x0fdd9e5dc0c83795f5c114e2b27926194035386d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | AirdropDistributor<br>`0x8e6d5cf9b9659d4f8e68ee040bf26e728ef1baa4` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | AuraBalZaps<br>`0x06ee5f2c2690c3b03718e662dd14282cb9947363` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | AuraHandler<br>`0x09ee25e4f85826705b385ab863e6f1701a85940e` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | BBUSDHandler<br>`0x1d2fc9222633d33271f03255b56e7e50636c8e37` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | BBUSDHandlerv2<br>`0xe33ed45c38a1def9c0bfb592d6b4f9788898d4a8` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | MerkleDistributor<br>`0xba5602730824340d714c92a153460db958fd8562` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | stkCvxCrvHarvester<br>`0x3e2cad773e36e29a53eaab56726043ac04fe83d7` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | stkCvxFxsHarvester<br>`0x35d28d77369e825298de76060e96e5ada7f5e906` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | stkCvxPrismaDistributorZaps<br>`0x0976b9a5816bb7d0441b776a76c3057980354480` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | stkCvxPrismaHarvester<br>`0x1f9409933aa273dab349ceba255f5ad8f854defb` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | AuraBalStrategy<br>`0x4b0987bef3f966354c6ecd22f6d844d621ee5077` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | AuraBalZaps<br>`0x7374c3dcaf8ff2c9bb706eaff7bf4ebbf9ac6067` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | AuraHandler<br>`0x83d6cdd50110cb3fd9547618cc94540b79733f76` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | BBUSDHandler<br>`0x5c53174c8d88f0f56c33f923b8c6a84a1760e484` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | FXSMerkleDistributor<br>`0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | stkCvxCrvMerkleDistributor<br>`0x0ed7d0497194fc029ae02223fec6d4d567696f17` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | stkCvxCrvStrategy<br>`0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | stkCvxCrvStrategy<br>`0xec221ae5c62029cb03d91eff85611a378a1f8883` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | stkCvxFxsStrategy<br>`0x110a888f88b65a2c34a6922f518128eda4fb70de` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | stkCvxPrismaStrategy<br>`0x88011c72623777f6452a7d6d8bab10ec67e89e01` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | stkCvxPrismaZaps<br>`0x5beef400f378df4f353fb42e58498f9779002624` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0x7a7f79c5706716bae853c1b96e36538c7eaa4925` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0x835076176ab24f2c4372ba15c8e7e76c1429e66f` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0x853dcbf4dd00dbc6a70002ff87be3671ac966067` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0xcc2a0f5e95c88aabd7b8e0db5c5252820cd47f91` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0xce45e2e9a1ca8ba9a311bf862606b890c1f5d988` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0xd248e64b2d3d00d7f6a21009c3fcc1bd593600c9` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | exact address book overlap | UnionZap<br>`0xf4112931c955fda9fb7f184da3518e6050a30eb7` | project_anchor | unknown | live | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AirdropDistributor<br>`0x9b4586b4d14bead4ba0eb244d103cd7e075369f0` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AuraBalStrategy<br>`0x67c542c99fca130fd0a830794ca9f46143ceb9c7` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AuraBalStrategy<br>`0x6fc5afc727d7807c21ed0a961f0fa6e4c25ee8a4` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AuraBalStrategy<br>`0xca7b5b6a9b135fc7e29ba7bc5d4cca936395025c` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AuraBalZaps<br>`0x4e87a71dcb68287e07330db2516bd9b4cafa4f4b` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AuraBalZaps<br>`0xbda1daacd2a5d7770edbdf9c6039861cad83ac02` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | AuraHandler<br>`0x4fcd115f7e7e161d82c6a9fbe8cfd35b6e8c73e2` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | BBUSDHandler<br>`0xa9cabe82816caafaf514045259eafad1060241fb` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | CrvUsdSwapper<br>`0x5b62f91278f9439bcffd25d9fdc08043b46328de` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | CvxFxsStrategy<br>`0xf761c0098967d756c9673f2798dbf23342badff8` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | CvxFxsZaps<br>`0x3742235b332fac741ec3a4f1ab7115ae0621944d` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | CvxFxsZaps<br>`0xd0e50af0696f8972439198771cdf759c901c0d58` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | CvxFxsZaps<br>`0xf97d26bbf79cd7b319f54e5dd8a6f581605dafef` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | CVXMerkleDistributor<br>`0x27a11054b62c29c166f3fab2b0ac708043b0cb49` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | ExtraZaps<br>`0x5d69b683bf963648137b3ab5244e9d31d529838e` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | ExtraZaps<br>`0x7b7481c10233563c1505a1161d9e761df7d86336` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | ExtraZaps<br>`0xaaf75554249209114ced07027c67bee7cfb1f29c` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | FeeAllocator<br>`0x874942096ed129c1a7c99de6c7aa6fa0b679f322` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | FXSSwapper<br>`0x2dce36d00bb398cb01390a0769260b84edded929` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | FXSSwapper<br>`0x80617e6a0fa8e018ceb6ddb9037999b6bb7f9b2b` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | MerkleDistributorV2<br>`0xa83043df401346a67eddeb074679b4570b956183` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PCvxZaps<br>`0x6753f23905f15376429e6f0c381fcc4862e48222` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PCvxZaps<br>`0x86446124258f8fae2fd8a7637816111f555c073e` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PCvxZaps<br>`0x94699cf40851c5796e6f4e55063cd79b33a5bec9` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PCvxZaps<br>`0x9ef0b5af11a5309f08e69771b735324afa266c6f` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PirexClaims<br>`0x7ac09d90f8fcf0cce77f0d3bc7aaef3ad75dee7a` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PirexClaims<br>`0xc7a23a1098f27e4c1554de9442e95e4138158f01` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PirexDistributorZaps<br>`0x49a8056440065900a3a21b33594815aa0fb6e6b8` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PirexDistributorZaps<br>`0x9ae3136aa13217921f6a75b5b04c7b1f7df58285` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PirexDistributorZaps<br>`0xe829995c461367e1f159a7ed1f64bf7b4d7da097` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PirexMigrationV1<br>`0x8e705c0694795516178c63b6c40339ac2be686c2` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | PrismaSwapper<br>`0xd94b0763dadd691a1e9688cf0ef8238d95422154` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | SemiLog monetary policy<br>`0x53443740ea74c4e816a9e167704f9f9fae3595a3` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvHarvester<br>`0x4bf420e8040d6e96218328730e611ea3357c0197` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvHarvester<br>`0x9323318261718f36ed55e34391c160260d3863ff` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvHarvester<br>`0xf14d2128e4d36aa81b3a46ce57bf427629b5dc9f` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvMigration<br>`0x3074e38941c52a466a228e451e21a0c34607ac3c` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvMigration<br>`0x3cf974912dfc7d5fa1a3503fe83ff5ae7e4303a3` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvZaps<br>`0x105ec4f5cc0dfd706ac3af68de1a3c80b587ee2b` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvZaps<br>`0xac4925a6e9446f619e48709a15948fae853ab2e8` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxCrvZaps<br>`0xff87da30e779ca78ff2e9b1582d6c15c1ac31a95` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxFxsMigration<br>`0xab237fd3b2e72a82ab08330f98fb1fa36ec30fd9` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | stkCvxPrismaZaps<br>`0x1678324f62001454f7c08e936511a0371a2dd5f4` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | UnionZap<br>`0x8b37af33127aeb54d9e602f98c53f279f46acf15` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x218403ebc5ee1ee088823985b496cabffb0a953c` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x76052439a4a632b65cc03074df1c7766ba0e0471` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | Vyper_contract<br>`0xb10c27e4370b95c807915f3e64e94717591c106c` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | source verified unclassified | Vyper_contract<br>`0xcc40a1c97a87792f341bbd8e05bd2d309daea6dc` | non_address_book | unknown | unknown | verified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05ede2b40226aacda21f2829802482c84eebabba` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2251af9804d0a1a04e8e0e7a1fbb83f4d7423f9e` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x239f567689de71c97a896bde3c31070571db233d` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d32cc59dbc1bd7b32796c8a247ea9f7beb94f16` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ece2b74be59a17be4cdc6c378a57c22d966d526` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49774e9e48f280498bab542cd877da93bd004a90` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa98a92c4dfa816dcc5b4ced2f11cbeacf333a068` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb32da1873e9a2a0fb478a960c5aef02550ba111` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1cad8a1787285cc9dc6687ee234e1ff6a6db32f` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd41c27900f694d0cb58056e2e84b20befd85602c` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb39a269167b9d0b429c0c71b6397049e55371af` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0b6af951a95e2531034e6154155029750b0a68f` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf770f682ff67ae6e1c7b5d780bc9391b08eb6eda` | non_address_book | unknown | unknown | unverified | n/a | `0x0b98718264ca14d0a17c145ffe1e4f3c38a39372` |
| ethereum | contamination review | LockedBalanceChecker<br>`0x921712d41288c04cc69d0925764e3ceb83a2ea1c` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | contamination review | TommyDeployer<br>`0xed23eafeaa51e34cee163b5ef08c512e9adf6ff7` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | contamination review | VotiumZap<br>`0x371b7b96ebdbdaf7e9b2c7402bc57c82ce801b20` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | AddressRegistry<br>`0xdd5eb7d90f856f0df11ba59876a8981cebe4bc04` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | EasySign<br>`0xc9c7c0eae2d6c6244814467f7718407e2571487d` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | Flywheelie<br>`0x31ab6aecea7ae3be6b7985996c8c34e19e514d7d` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | Flywheelie<br>`0xd0602f19e2297623b89b8944db04a19c9637a690` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | LockedBalanceChecker<br>`0xa0f1024bad722cf6c757b230fb88286dfbbf3bf7` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MerkleStash<br>`0x450dee782b088b0778bdf7291222e6781f6877c2` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MerkleStash<br>`0x6f76c6c2fefa72bac17d2864e05b93abe7b1441c` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MerkleStash<br>`0x9eaefbecb59ce28c24ca4f5a1b667626419a5c46` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MerkleStash<br>`0xd02f1d2df98208368ccce6411efa1b2acfb9c414` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MerkleStash<br>`0xe63f4ef026a3e30a267c5ff39765a283ca37b931` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MultiMerkleStash<br>`0x34590960981f98b55d236b70e8b4d9929ad89c9c` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | MultiMerkleStash<br>`0x378ba9b73309be80bf4c2c027aad799766a7ed5a` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | SpaceAuction<br>`0x07c3c293dc6c71bcc00142738ec1a356340a2d17` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | SpaceAuction<br>`0xcd215f053c0cd288e894e7bac1a1519071dd9216` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | SplitFunds<br>`0x29e3b0e8df4ee3f71a62c34847c34e139fc0b297` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | StashController<br>`0x496e2d5697af7754acff7bb1175bbd0e76b8a0b9` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | StashController<br>`0x9d37a22cec2f6b3635c61c253d192e68e85b1790` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | Swapper<br>`0xb58f3295b3db1a9bc0f909d591c6f0e600488487` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | Votium<br>`0x3a2b16ca90ea56d34a00898850c52b1f1f2dae26` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | Votium<br>`0x45c7667632ea2562a68caa36da86509ae41547e3` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | VotiumBribe<br>`0x19bbc3463dd8d07f55438014b021fb457ebd4595` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | VotiumVeCRV<br>`0xb4fb1fd4aec780bc255bf231189e9a244475d260` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | source verified unclassified | VotiumZap<br>`0x830098c262c3618e6fe80acf8e0395e2c0732ae2` | non_address_book | unknown | unknown | verified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0942345b4e78bb849d45678a3a43d7fadd2c842b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x102aeda97327b41bab887f7c7ccd0c1e6a30d66f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e5a69560f32a1c2293a8c63eabebe5aecd78566` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57b9d83bf47ea4b1b6e9c7db076d796c6012bf02` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70bafc475500d0fb648d738a007fabdae5927886` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bf2bdd07261ecf53f512566b9ede56d5cc358a2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb683c12ab153751cfa883a4c4d1907186f2d0471` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb19851693bf648724f01d79e4c1ecd2ba1623d2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0d519b87e37002490b47c4616b1a9b6c154dd4f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19` |
| ethereum | candidate review | ERC1155PresetMinterSupply<br>`0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | ERC1155PresetMinterSupply<br>`0xc044613b702ed11567a38108703ac5478a3f7db8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | ERC1155Solmate<br>`0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | ERC1155Solmate<br>`0xe47e8b5b4ee05b7663b15087381bd47bcbd20fc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | PirexCvx<br>`0x35a398425d9f1029021a92bc3d2557d42c8588d7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | PirexFees<br>`0x9b0dff589fc0acac23581ecaff5688434db0720f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | PxCvx<br>`0x5053371da4ba1f6c65e61a4bba86cedee49733c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |
| ethereum | candidate review | UnionPirexStrategy<br>`0x45f97d07dab04b21f36fa3b1149c35e316b35d03` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe49efdb44ab67f8377e59ae9027b0bf4eca9a091` |

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
| ethereum | `0x92e6e43f99809df84ed2d533e1fd8017eb966ee2` | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcfa23b8f9062369b21049b9f4a4ce79d640d1873` | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b0987bef3f966354c6ecd22f6d844d621ee5077` | AuraBalStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c4eb0fc6805ee7337ac126f89a807271a88dd67` | AuraBalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6fc1ecd9965ba9cac895654979564a291c74c29` | AuraBalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7374c3dcaf8ff2c9bb706eaff7bf4ebbf9ac6067` | AuraBalZaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83d6cdd50110cb3fd9547618cc94540b79733f76` | AuraHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c53174c8d88f0f56c33f923b8c6a84a1760e484` | BBUSDHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63f0797015489d407fc2ac7e3891467e1ed0166c` | CvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9da701a9b76e0dd136d3508cb60a4c436dda25e4` | CVXMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446` | DelegateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc044613b702ed11567a38108703ac5478a3f7db8` | ERC1155PresetMinterSupply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7` | FXSMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e` | GenericUnionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb192908e533fc64109a20ee7d056175a24f17a55` | PCvxZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xed41c3402c4b62777939b7334b4d3d2407517ff9` | PirexClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35a398425d9f1029021a92bc3d2557d42c8588d7` | PirexCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x783c13b94123ccdcc5d597deb93a69983e1d4a51` | PirexDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbce0cf87f513102f22232436cca2ca49e815c3ac` | PxCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc` | sCrvUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55b2b51f661e269aed638a5ddbf2fc930125690a` | sReUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x68b56567af308fe8d94876ab0fe88541ed025e1c` | stkCvxCrvDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e2cad773e36e29a53eaab56726043ac04fe83d7` | stkCvxCrvHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ed7d0497194fc029ae02223fec6d4d567696f17` | stkCvxCrvMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8` | stkCvxCrvMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3` | stkCvxCrvStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec221ae5c62029cb03d91eff85611a378a1f8883` | stkCvxCrvStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7` | stkCvxCrvVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde2bef0a01845257b4aef2a2eaa48f6eaeafa8b7` | stkCvxCrvVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78` | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd835cdedc20ca3075f86dea4e0d914499d0c5b25` | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c` | stkCvxFxsDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35d28d77369e825298de76060e96e5ada7f5e906` | stkCvxFxsHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5682a28919389b528ae74dd627e0d632ca7e398c` | stkCvxFxsMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x110a888f88b65a2c34a6922f518128eda4fb70de` | stkCvxFxsStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a886455e5b33300a31c5e77bac01e76c0c7b29c` | stkCvxFxsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f409ec6f395493ad39f5b27945f1a6658a23908` | stkCvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3` | stkCvxPrismaDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9409933aa273dab349ceba255f5ad8f854defb` | stkCvxPrismaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf09320ed7db384cab7fce9ea9947436a806754d3` | stkCvxPrismaMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x06c3b252c01225fdf3017551f39668c9b6599ac5` | stkCvxPrismaMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88011c72623777f6452a7d6d8bab10ec67e89e01` | stkCvxPrismaStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd` | stkCvxPrismaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5beef400f378df4f353fb42e58498f9779002624` | stkCvxPrismaZaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45f97d07dab04b21f36fa3b1149c35e316b35d03` | UnionPirexStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8659fc767cad6005de79af65dafe4249c57927af` | UnionPirexVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83507cc8c8b67ed48badd1f59f684d5d02884c81` | UnionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a7f79c5706716bae853c1b96e36538c7eaa4925` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x835076176ab24f2c4372ba15c8e7e76c1429e66f` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x853dcbf4dd00dbc6a70002ff87be3671ac966067` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc2a0f5e95c88aabd7b8e0db5c5252820cd47f91` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce45e2e9a1ca8ba9a311bf862606b890c1f5d988` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd248e64b2d3d00d7f6a21009c3fcc1bd593600c9` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed` | UnionZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4112931c955fda9fb7f184da3518e6050a30eb7` | UnionZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
