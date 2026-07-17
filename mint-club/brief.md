# Agentic Audit Brief: Mint Club

## Project Overview

- Project: Mint Club (`mint-club`)
- Website: [https://mint.club](https://mint.club)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.142Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, klaytn, optimism, polygon, unichain, zora
- Contract surface: 39 unique implementations (130 raw deployments)
- DeFi Llama TVL: $592,959.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 19 project-authored contract(s) across 7 chain(s); 6 ERC20 tokens, 1 ERC1155 multi-token; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (erc20initializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 154; live-surface contracts included: 130 (89 live, 41 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/12 (66.7%)
- Deployed-live implementations: 12 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/12
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 39
- Raw deployments: 130
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 6 | 50.0% | 2025-08 |
| Sooho | Tier 2 | 2 | 16.7% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Locker | unknown | avalanche | n/a | 7 deployments: ethereum `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; optimism `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; unichain `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; polygon `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; base `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; arbitrum `0xa3dcf3ca587d9929d540868c924f208726dc9ab6`; avalanche [`0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`](./contracts/avalanche-43114/0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17/) | ✅ Audited |
| MCV2_Bond | unknown | ethereum | n/a | 7 deployments: ethereum [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/ethereum-1/0xc5a076cad94176c2996b32d8466be1ce757faa27/); optimism [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/optimism-10/0xc5a076cad94176c2996b32d8466be1ce757faa27/); bsc [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/bsc-56/0xc5a076cad94176c2996b32d8466be1ce757faa27/); unichain [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/unichain-130/0xc5a076cad94176c2996b32d8466be1ce757faa27/); polygon [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/polygon-137/0xc5a076cad94176c2996b32d8466be1ce757faa27/); base [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/base-8453/0xc5a076cad94176c2996b32d8466be1ce757faa27/); arbitrum [`0xc5a076cad94176c2996b32d8466be1ce757faa27`](./contracts/arbitrum-42161/0xc5a076cad94176c2996b32d8466be1ce757faa27/) | ✅ Audited |
| MCV2_Token | unknown | ethereum | n/a | 8 deployments: ethereum [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/ethereum-1/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/); optimism [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/optimism-10/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/); bsc [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/bsc-56/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/); unichain [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/unichain-130/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/); polygon [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/polygon-137/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/); base [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/base-8453/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/); base `0xff45161474c39cb00699070dd49582e417b57a7e`; arbitrum [`0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df`](./contracts/arbitrum-42161/0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df/) | ✅ Audited |
| MCV2_ZapV1 | adapter | ethereum | n/a | 7 deployments: ethereum [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/ethereum-1/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); optimism [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/optimism-10/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); bsc [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/bsc-56/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); unichain [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/unichain-130/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); polygon [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/polygon-137/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); base [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/base-8453/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); arbitrum [`0x91523b39813f3f4e406ece406d0beaaa9de251fa`](./contracts/arbitrum-42161/0x91523b39813f3f4e406ece406d0beaaa9de251fa/) | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`](./contracts/ethereum-1/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); optimism [`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`](./contracts/optimism-10/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); unichain `0x3bc6b601196752497a68b2625db4f2205c3b150b`; polygon [`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`](./contracts/polygon-137/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); base [`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`](./contracts/base-8453/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); arbitrum [`0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4`](./contracts/arbitrum-42161/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); avalanche `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; avalanche `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | ✅ Audited |
| MintClubBond | unknown | bsc | n/a | 2 deployments: bsc [`0x8bbac0c7583cc146244a18863e708bffbbf19975`](./contracts/bsc-56/0x8bbac0c7583cc146244a18863e708bffbbf19975/); bsc `0xc6f6e7b8e0abcde5c8c553803cd904008465bbe9` | ✅ Audited |
| MintClubToken | unknown | bsc | n/a | 2 deployments: bsc [`0x19128727a8a7a6276e17a1d1acb224b4b711e4eb`](./contracts/bsc-56/0x19128727a8a7a6276e17a1d1acb224b4b711e4eb/); bsc `0x1f3af095cda17d63cad238358837321e95fc5915` | ✅ Audited |
| Stake | unknown | optimism | n/a | 27 deployments: ethereum `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; ethereum `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; ethereum `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; optimism [`0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`](./contracts/optimism-10/0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724/); optimism `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; optimism `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; bsc `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633`; bsc `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; unichain `0x5dae94e149cf2112ec625d46670047814aa9ac2a`; unichain `0xa4021a8907197df92341f1218b32e26b250f6798`; unichain `0xf44939c1613143ad587c79602182de7dcf593e33`; polygon `0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17`; polygon `0x95bda90196c4e737933360f4639c46ace657aab7`; polygon `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65`; base `0x3460e2fd6cbc9afb49bf970659afde2909cf3399`; base `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; base `0x68f54a53d3e69e2191bcf586fb507c81e5353413`; base `0x9ab05eca10d087f23a1b22a44a714cdbba76e802`; arbitrum `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633`; arbitrum `0x9a176d09b3824cf50417e348696cbbbc43d7818d`; arbitrum `0xf7e2cde9e603f15118e6e389cf14f11f19c1afbc`; avalanche `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; avalanche `0x68f54a53d3e69e2191bcf586fb507c81e5353413`; avalanche `0x95bda90196c4e737933360f4639c46ace657aab7`; blast `0x364e0f814a2c5524d26e82937815c574f8bb86c1`; blast `0x68f54a53d3e69e2191bcf586fb507c81e5353413`; blast `0x95bda90196c4e737933360f4639c46ace657aab7` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BulkSender | unknown | polygon | n/a | 7 deployments: ethereum `0x621c335b4bd8f2165e120dc70d3afcafc6628681`; polygon [`0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`](./contracts/polygon-137/0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724/); base `0x95bda90196c4e737933360f4639c46ace657aab7`; avalanche `0x3a8a4bfcc487d0fe9d342b6180bf0323989f251b`; avalanche `0x9a176d09b3824cf50417e348696cbbbc43d7818d`; blast `0x9a176d09b3824cf50417e348696cbbbc43d7818d`; blast `0xf187645d1c5ae70c3ddcdee6d746e5a7619a2a65` | ⚠️ Unaudited |
| MCV2_BondPeriphery | periphery | base | n/a | 15 deployments: ethereum `0x7b09b728ee8c6a714dc3f10367b5df9b217fe633`; optimism `0x841a2bd2fc97dcb865b4ddb352540148bad2db09`; unichain `0x621c335b4bd8f2165e120dc70d3afcafc6628681`; polygon `0x6c0e6c7f1c97bb4ba7df001d30a939425d9846f1`; base [`0x4328e5fb27ae0ad3c81cc2dc0809361245df48da`](./contracts/base-8453/0x4328e5fb27ae0ad3c81cc2dc0809361245df48da/); base `0x492c412369db76c9cdd9939e6c521579301473a3`; base `0x4ccc692b458d718f7c09ff7bacc293db602e7eb8`; base `0x683e890b27ab8bdbf74caf8fc2a65df0878c2f42`; base `0x8eb28bf59f6982c24f640cd817446e213f7cd4cf`; base `0xa3dfa8828a7a8fa7d8539884b168526b4602f22f`; base `0xaaa2231f07983ee17f02aa079f9a72fb38b60d74`; base `0xad4f451ecc336a49ab5ff4befb32381e51922863`; arbitrum `0x5fbdc7941a735685eb08c51776ba77098ebe1eb7`; avalanche `0x5dff49313d616c30599f6007b04bab71619c5687`; blast `0x5dff49313d616c30599f6007b04bab71619c5687` | ⚠️ Unaudited |
| MCV2_MultiToken | unknown | ethereum | n/a | 7 deployments: ethereum [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/ethereum-1/0x6c61918eeccc306d35247338fdcf025af0f6120a/); optimism [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/optimism-10/0x6c61918eeccc306d35247338fdcf025af0f6120a/); bsc [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/bsc-56/0x6c61918eeccc306d35247338fdcf025af0f6120a/); unichain [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/unichain-130/0x6c61918eeccc306d35247338fdcf025af0f6120a/); polygon [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/polygon-137/0x6c61918eeccc306d35247338fdcf025af0f6120a/); base [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/base-8453/0x6c61918eeccc306d35247338fdcf025af0f6120a/); arbitrum [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/arbitrum-42161/0x6c61918eeccc306d35247338fdcf025af0f6120a/) | ⚠️ Unaudited |
| MCV2_ZapV2 | adapter | base | n/a | [`0x7d999874eae10f170c4813270173363468a559cd`](./contracts/base-8453/0x7d999874eae10f170c4813270173363468a559cd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x5dae94e149cf2112ec625d46670047814aa9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 6 deployments: klaytn `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`; klaytn `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; klaytn `0xa4021a8907197df92341f1218b32e26b250f6798`; klaytn `0xc5a076cad94176c2996b32d8466be1ce757faa27`; zora `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1`; zora `0xc5a076cad94176c2996b32d8466be1ce757faa27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1412029b3ccaa2c1e7c1c3688d312be05f7530f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06fd26c092db44e5491abb7cdc580ce24d93030c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x621c335b4bd8f2165e120dc70d3afcafc6628681` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bc6b601196752497a68b2625db4f2205c3b150b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dae94e149cf2112ec625d46670047814aa9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x621c335b4bd8f2165e120dc70d3afcafc6628681` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91523b39813f3f4e406ece406d0beaaa9de251fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf987e88bf30581f7074e628c894a3fcbf4ee12e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb54dacb4c2ccb64f8074eceea33b5ebb38e5387` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf44939c1613143ad587c79602182de7dcf593e33` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x06fd26c092db44e5491abb7cdc580ce24d93030c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3bc6b601196752497a68b2625db4f2205c3b150b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3fd5b4dcda968c8e22898523f5343177f94ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5dae94e149cf2112ec625d46670047814aa9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x621c335b4bd8f2165e120dc70d3afcafc6628681` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c61918eeccc306d35247338fdcf025af0f6120a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x91523b39813f3f4e406ece406d0beaaa9de251fa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa3dcf3ca587d9929d540868c924f208726dc9ab6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaa70bc79fd1cb4a6fba717018351f0c3c64b79df` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc5a076cad94176c2996b32d8466be1ce757faa27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK-20240118.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-20240118.pdf) | CertiK | Audit | 2024-01 | stale | Direct | contract_name | 5 | n/a |
| [COMMUNITY_AUDIT.md](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/COMMUNITY_AUDIT.md) | Community | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CertiK-Staking Investigation Report.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking%20Investigation%20Report.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [CertiK-Staking-20250812.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250812.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [CertiK-Staking-20250830.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250830.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [skynet.certik.com/projects/mint-club](https://skynet.certik.com/projects/mint-club) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 3 | n/a |
| [[EN] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BEN%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | contract_name | 2 | n/a |
| [[KO] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BKO%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724`](./contracts/polygon-137/0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724/) | BulkSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4328e5fb27ae0ad3c81cc2dc0809361245df48da`](./contracts/base-8453/0x4328e5fb27ae0ad3c81cc2dc0809361245df48da/) | MCV2_BondPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c61918eeccc306d35247338fdcf025af0f6120a`](./contracts/ethereum-1/0x6c61918eeccc306d35247338fdcf025af0f6120a/) | MCV2_MultiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d999874eae10f170c4813270173363468a559cd`](./contracts/base-8453/0x7d999874eae10f170c4813270173363468a559cd/) | MCV2_ZapV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=15

Zero-match audit list:

- [13503] COMMUNITY_AUDIT.md

Fork inheritance lineage and inherited audits are included when available.
