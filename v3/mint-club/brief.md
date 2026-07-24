# Agentic Audit Brief: Mint Club

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Mint Club (`mint-club`)
- Website: [https://mint.club](https://mint.club)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, kaia, optimism, polygon, unichain, zora
- Contract surface: 49 unique implementations (163 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $592,959.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Mint Club in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 49
- Raw deployments: 163
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 19 deployments: ethereum `0x621c335b4bd8f2165e120dc70d3afcafc6628681`; ethereum `0xf44939c1613143ad587c79602182de7dcf593e33`; optimism `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; optimism `0xa4021a8907197df92341f1218b32e26b250f6798`; bsc `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; bsc `0xa4021a8907197df92341f1218b32e26b250f6798`; unichain `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; polygon `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`; polygon `0x621c335b4bd8f2165e120dc70d3afcafc6628681`; base `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`; base `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; base `0x95bda90196c4e737933360f4639c46ace657aab7`; base `0xf7e2cde9e603f15118e6e389cf14f11f19c1afbc`; arbitrum `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`; arbitrum `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; avalanche `0x3a8a4bfcc487d0fe9d342b6180bf0323989f251b`; avalanche `0x9a176d09b3824cf50417e348696cbbbc43d7818d`; blast `0x9a176d09b3824cf50417e348696cbbbc43d7818d`; blast `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; optimism `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; bsc `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; unichain `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; polygon `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; base `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; arbitrum `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; avalanche `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17` | ⚠️ Unaudited |
| MCV1_Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | ⚠️ Unaudited |
| MCV2_Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0xc5a076cad94176c2996b32d8466be1ce757faa27`; optimism `0xc5a076cad94176c2996b32d8466be1ce757faa27`; bsc `0xc5a076cad94176c2996b32d8466be1ce757faa27`; unichain `0xc5a076cad94176c2996b32d8466be1ce757faa27`; polygon `0xc5a076cad94176c2996b32d8466be1ce757faa27`; base `0xc5a076cad94176c2996b32d8466be1ce757faa27`; arbitrum `0xc5a076cad94176c2996b32d8466be1ce757faa27` | ⚠️ Unaudited |
| MCV2_BondPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: ethereum `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633`; optimism `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; bsc `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; unichain `0x621c335b4bd8f2165e120dc70d3afcafc6628681`; polygon `0x6c0e6c7f1c97bb4ba7df001d30a939425d9846f1`; base `0x4328e5fb27ae0ad3c81cc2dc0809361245df48da`; base `0x492c412369db76c9cdd9939e6c521579301473a3`; base `0x4ccc692b458d718f7c09ff7bacc293db602e7eb8`; base `0x683e890b27ab8bdbf74caf8fc2a65df0878c2f42`; base `0x8eb28bf59f6982c24f640cd817446e213f7cd4cf`; base `0xa3dfa8828a7a8fa7d8539884b168526b4602f22f`; base `0xaaa2231f07983ee17f02aa079f9a72fb38b60d74`; base `0xad4f451ecc336a49ab5ff4befb32381e51922863`; arbitrum `0x5fbdc7941a735685eb08c51776ba77098ebe1eb7`; avalanche `0x5dff49313d616c30599f6007b04bab71619c5687`; blast `0x5dff49313d616c30599f6007b04bab71619c5687` | ⚠️ Unaudited |
| MCV2_MultiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x6c61918eeccc306d35247338fdcf025af0f6120a`; optimism `0x6c61918eeccc306d35247338fdcf025af0f6120a`; bsc `0x6c61918eeccc306d35247338fdcf025af0f6120a`; unichain `0x6c61918eeccc306d35247338fdcf025af0f6120a`; polygon `0x6c61918eeccc306d35247338fdcf025af0f6120a`; base `0x6c61918eeccc306d35247338fdcf025af0f6120a`; arbitrum `0x6c61918eeccc306d35247338fdcf025af0f6120a` | ⚠️ Unaudited |
| MCV2_NFTDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17` | ⚠️ Unaudited |
| MCV2_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`; optimism `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`; bsc `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`; unichain `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`; polygon `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`; base `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`; base `0xff45161474c39cb00699070dd49582e417b57a7e`; arbitrum `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | ⚠️ Unaudited |
| MCV2_ZapV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x91523b39813f3f4e406ece406d0beaaa9de251fa`; optimism `0x91523b39813f3f4e406ece406d0beaaa9de251fa`; bsc `0x91523b39813f3f4e406ece406d0beaaa9de251fa`; unichain `0x91523b39813f3f4e406ece406d0beaaa9de251fa`; polygon `0x91523b39813f3f4e406ece406d0beaaa9de251fa`; base `0x91523b39813f3f4e406ece406d0beaaa9de251fa`; arbitrum `0x91523b39813f3f4e406ece406d0beaaa9de251fa` | ⚠️ Unaudited |
| MCV2_ZapV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d999874eae10f170c4813270173363468a559cd` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; ethereum `0x3bc6b601196752497a68b2625db4f2205c3b150b`; optimism `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; optimism `0x3bc6b601196752497a68b2625db4f2205c3b150b`; bsc `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; bsc `0x3bc6b601196752497a68b2625db4f2205c3b150b`; unichain `0x3bc6b601196752497a68b2625db4f2205c3b150b`; polygon `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; polygon `0x3bc6b601196752497a68b2625db4f2205c3b150b`; base `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; base `0x3bc6b601196752497a68b2625db4f2205c3b150b`; arbitrum `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`; arbitrum `0x3bc6b601196752497a68b2625db4f2205c3b150b`; avalanche `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; avalanche `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | ⚠️ Unaudited |
| MintClubBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8bbac0c7583cc146244a18863e708bffbbf19975`; bsc `0xc6f6e7b8e0abcde5c8c553803cd904008465bbe9` | ⚠️ Unaudited |
| MintClubToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x19128727a8a7a6276e17a1d1acb224b4b711e4eb`; bsc `0x1f3af095cda17d63cad238358837321e95fc5915` | ⚠️ Unaudited |
| Stake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 29 deployments: ethereum `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; ethereum `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; ethereum `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; optimism `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`; optimism `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; optimism `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; bsc `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; bsc `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633`; bsc `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; bsc `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; unichain `0x5dae94e149cf2112ec625d46670047814aa9ac2a`; unichain `0xa4021a8907197df92341f1218b32e26b250f6798`; unichain `0xf44939c1613143ad587c79602182de7dcf593e33`; polygon `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; polygon `0x95bda90196c4e737933360f4639c46ace657aab7`; polygon `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; base `0x3460e2fd6cbc9afb49bf970659afde2909cf3399`; base `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; base `0x68f54a53d3e69e2191bcf586fb507c81e5353413`; base `0x9ab05eca10d087f23a1b22a44a714cdbba76e802`; arbitrum `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633`; arbitrum `0x9a176d09b3824cf50417e348696cbbbc43d7818d`; arbitrum `0xf7e2cde9e603f15118e6e389cf14f11f19c1afbc`; avalanche `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; avalanche `0x68f54a53d3e69e2191bcf586fb507c81e5353413`; avalanche `0x95bda90196c4e737933360f4639c46ace657aab7`; blast `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; blast `0x68f54a53d3e69e2191bcf586fb507c81e5353413`; blast `0x95bda90196c4e737933360f4639c46ace657aab7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e2cde9e603f15118e6e389cf14f11f19c1afbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dae94e149cf2112ec625d46670047814aa9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68f54a53d3e69e2191bcf586fb507c81e5353413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x06fd26c092db44e5491abb7cdc580ce24d93030c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x664f626516c82772f0f492ff64f6fa826c86f5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 6 deployments: kaia `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`; kaia `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; kaia `0xa4021a8907197df92341f1218b32e26b250f6798`; kaia `0xc5a076cad94176c2996b32d8466be1ce757faa27`; zora `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; zora `0xc5a076cad94176c2996b32d8466be1ce757faa27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96282046c0e19f727a92728198c0dc4e260ebe0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1412029b3ccaa2c1e7c1c3688d312be05f7530f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06fd26c092db44e5491abb7cdc580ce24d93030c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a8a4bfcc487d0fe9d342b6180bf0323989f251b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x621c335b4bd8f2165e120dc70d3afcafc6628681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bc6b601196752497a68b2625db4f2205c3b150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5dae94e149cf2112ec625d46670047814aa9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x621c335b4bd8f2165e120dc70d3afcafc6628681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91523b39813f3f4e406ece406d0beaaa9de251fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf987e88bf30581f7074e628c894a3fcbf4ee12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0586d5f4ae18650340ffc6f3b1307ab2ca334f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb54dacb4c2ccb64f8074eceea33b5ebb38e5387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf44939c1613143ad587c79602182de7dcf593e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x06fd26c092db44e5491abb7cdc580ce24d93030c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3bc6b601196752497a68b2625db4f2205c3b150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5dae94e149cf2112ec625d46670047814aa9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x621c335b4bd8f2165e120dc70d3afcafc6628681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6c61918eeccc306d35247338fdcf025af0f6120a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x91523b39813f3f4e406ece406d0beaaa9de251fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3dcf3ca587d9929d540868c924f208726dc9ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc5a076cad94176c2996b32d8466be1ce757faa27` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 76
- Live contracts: 0
- Unknown liveness contracts: 76
- Source-verified contracts: 48
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=23, contamination review=2, source verified unclassified=23, unverified unclassified=28

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Bond<br>`0xc5a076cad94176c2996b32d8466be1ce757faa27` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_ZapV1<br>`0x91523b39813f3f4e406ece406d0beaaa9de251fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MintClubBond<br>`0xc6f6e7b8e0abcde5c8c553803cd904008465bbe9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3035dee64c8dbe813a464a0263ce0c365c454d54` |
| candidate review | MintClubToken<br>`0x19128727a8a7a6276e17a1d1acb224b4b711e4eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3035dee64c8dbe813a464a0263ce0c365c454d54` |
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_MultiToken<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MCV2_Token<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | BulkSender<br>`0x3a8a4bfcc487d0fe9d342b6180bf0323989f251b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | BulkSender<br>`0x9a176d09b3824cf50417e348696cbbbc43d7818d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | MerkleDistributor<br>`0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | BulkSender<br>`0x9a176d09b3824cf50417e348696cbbbc43d7818d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| candidate review | BulkSender<br>`0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| contamination review | MCV2_BondPeriphery<br>`0x364e0f814a2c5524d26e82937815c574f8bb86c1` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| contamination review | MCV2_NFTDistributor<br>`0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0xf44939c1613143ad587c79602182de7dcf593e33` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0xa4021a8907197df92341f1218b32e26b250f6798` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0xa4021a8907197df92341f1218b32e26b250f6798` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | Locker<br>`0xa3dcf3ca587d9929d540868c924f208726dc9ab6` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MCV1_Wrapper<br>`0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | Stake<br>`0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | Stake<br>`0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x621c335b4bd8f2165e120dc70d3afcafc6628681` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0xf7e2cde9e603f15118e6e389cf14f11f19c1afbc` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | BulkSender<br>`0x841a2bd2fc97dcb865b4ddb352540148bad2db09` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| source verified unclassified | MerkleDistributor<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | verified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xf7e2cde9e603f15118e6e389cf14f11f19c1afbc` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x7b09b728ee8c6a714dc3f10367b5df9b217fe633` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x5dae94e149cf2112ec625d46670047814aa9ac2a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x68f54a53d3e69e2191bcf586fb507c81e5353413` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x06fd26c092db44e5491abb7cdc580ce24d93030c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x664f626516c82772f0f492ff64f6fa826c86f5e1` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x96282046c0e19f727a92728198c0dc4e260ebe0b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x06fd26c092db44e5491abb7cdc580ce24d93030c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x3a8a4bfcc487d0fe9d342b6180bf0323989f251b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x621c335b4bd8f2165e120dc70d3afcafc6628681` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x5dae94e149cf2112ec625d46670047814aa9ac2a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x621c335b4bd8f2165e120dc70d3afcafc6628681` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x91523b39813f3f4e406ece406d0beaaa9de251fa` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xaf987e88bf30581f7074e628c894a3fcbf4ee12e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xd0586d5f4ae18650340ffc6f3b1307ab2ca334f4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xeb54dacb4c2ccb64f8074eceea33b5ebb38e5387` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xf44939c1613143ad587c79602182de7dcf593e33` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x3bc6b601196752497a68b2625db4f2205c3b150b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x5dae94e149cf2112ec625d46670047814aa9ac2a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x6c61918eeccc306d35247338fdcf025af0f6120a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0x91523b39813f3f4e406ece406d0beaaa9de251fa` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xa3dcf3ca587d9929d540868c924f208726dc9ab6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |
| unverified unclassified | UnnamedContract<br>`0xc5a076cad94176c2996b32d8466be1ce757faa27` | non_address_book | unknown | unknown | unverified | n/a | `0xc9f109bcaac17cb25cd2a777dfc90db6196e743a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK-20240118.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-20240118.pdf) | CertiK | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [COMMUNITY_AUDIT.md](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/COMMUNITY_AUDIT.md) | Community | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [CertiK-Staking Investigation Report.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking%20Investigation%20Report.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [CertiK-Staking-20250812.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250812.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [CertiK-Staking-20250830.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250830.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [skynet.certik.com/projects/mint-club](https://skynet.certik.com/projects/mint-club) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [[EN] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BEN%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [[KO] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BKO%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13502] CertiK-20240118.pdf — no match: No reason recorded
- [13503] COMMUNITY_AUDIT.md — no match: The document is a community audit announcement, not an audit report. It does not list specific contracts in scope, only a repository URL.
- [13504] CertiK-Staking Investigation Report.pdf — no match: No reason recorded
- [13505] CertiK-Staking-20250812.pdf — no match: No reason recorded
- [13506] CertiK-Staking-20250830.pdf — no match: No reason recorded
- [13507] skynet.certik.com/projects/mint-club — no match: No reason recorded
- [16445] [EN] Security Assessment By Sooho.pdf — no match: No reason recorded
- [16446] [KO] Security Assessment By Sooho.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK-20240118.pdf | ERC1155Initializable | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | ERC20Initializable | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | Locker | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV1_Wrapper | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_Bond | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_MultiToken | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_Royalty | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_Token | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_ZapV1 | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| CertiK-Staking Investigation Report.pdf | Stake | unmatched — not counted | — | — | no |
| CertiK-Staking-20250812.pdf | Stake | unmatched — not counted | — | — | no |
| CertiK-Staking-20250830.pdf | Stake | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mint-club | MCV2_Bond | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mint-club | MCV2_ZapV1 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mint-club | MerkleDistributor | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | ERC20Initializable | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | Math | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubBond | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubFactory | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubFactoryMock | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubToken | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintToken | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | ERC20Initializable | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | Math | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubBond | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubFactory | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubFactoryMock | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubToken | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 30 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13502] CertiK-20240118.pdf
- [13503] COMMUNITY_AUDIT.md
- [13504] CertiK-Staking Investigation Report.pdf
- [13505] CertiK-Staking-20250812.pdf
- [13506] CertiK-Staking-20250830.pdf
- [13507] skynet.certik.com/projects/mint-club
- [16445] [EN] Security Assessment By Sooho.pdf
- [16446] [KO] Security Assessment By Sooho.pdf

Fork inheritance lineage and inherited audits are included when available.
