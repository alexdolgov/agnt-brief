# Agentic Audit Brief: Llama Airforce

⚠️ Lifecycle status: DECLINING - TVL dropped 13.2% over 90 days

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: declining (Tier 0, 88.9% below peak)
- Generated: 2026-06-11T00:43:47.746Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: ethereum
- Contract surface: 93 unique implementations (180 raw deployments)
- DeFi Llama TVL: $3,827,128.96
- On-chain TVL (included contracts): $3,513,474.52
- TVL by chain: Ethereum $3,513,474.52

## Project Description

Llama Airforce is associated publicly with the Curve ecosystem, described as “Airdropping knowledge bombs about the Curve ecosystem.” Its on-chain surface and DeFiLlama categorization suggest yield/vault-related activity across multiple product families, including Convex-, Aura-, Union/Pirex-, staking-, zap-, harvester-, migration-, and distributor-related contracts, but specific claims such as unified auto-compounding optimization should be treated as unverified unless supported by primary documentation or source review.

### Architecture

The single product family contains vaults that share a common deployer cluster, indicating a unified infrastructure. The PxCvx contract likely serves as a supporting token or adapter for the vaults.

## Audit Coverage Summary

- Verified implementations audited: 0/64 (0.0%)
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 4
- Unverified implementations: 29
- Unique implementations: 93
- Raw deployments: 180
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,513,474.52
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,513,474.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnionPirexVault | core_logic | ethereum | [`0x8659fc...7927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | ethereum | 2 deployments: ethereum [`0x4ebad8...6b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/); ethereum `0xde2bef...afa8b7` | ⚠️ Unaudited |
| AuraBalStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x4b0987...ee5077`](./contracts/ethereum-1/0x4b0987bef3f966354c6ecd22f6d844d621ee5077/); ethereum `0x67c542...ceb9c7`; ethereum `0x6fc5af...5ee8a4`; ethereum `0xca7b5b...95025c` | ⚠️ Unaudited |
| stkCvxFxsVault | core_logic | ethereum | 2 deployments: ethereum [`0x0fdd9e...35386d`](./contracts/ethereum-1/0x0fdd9e5dc0c83795f5c114e2b27926194035386d/); ethereum `0x3a8864...c7b29c` | ⚠️ Unaudited |
| UnionVault | core_logic | ethereum | [`0x83507c...884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | ⚠️ Unaudited |
| GenericUnionVault | core_logic | ethereum | [`0xf964b0...89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | ethereum | [`0x9bfd08...1464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | ⚠️ Unaudited |
| AuraBalVault | core_logic | ethereum | 4 deployments: ethereum [`0x77e5bb...af7328`](./contracts/ethereum-1/0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328/); ethereum `0x8c4eb0...88dd67`; ethereum `0xb70ec1...ff48ac`; ethereum `0xd6fc1e...c74c29` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x8e6d5c...f1baa4`](./contracts/ethereum-1/0x8e6d5cf9b9659d4f8e68ee040bf26e728ef1baa4/); ethereum `0x9b4586...5369f0` | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | [`0xcfa23b...0d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | ⚠️ Unaudited |
| AuraBalZaps | adapter | ethereum | 4 deployments: ethereum [`0x06ee5f...947363`](./contracts/ethereum-1/0x06ee5f2c2690c3b03718e662dd14282cb9947363/); ethereum `0x4e87a7...fa4f4b`; ethereum `0x7374c3...ac6067`; ethereum `0xbda1da...83ac02` | ⚠️ Unaudited |
| AuraHandler | unknown | ethereum | 3 deployments: ethereum [`0x09ee25...85940e`](./contracts/ethereum-1/0x09ee25e4f85826705b385ab863e6f1701a85940e/); ethereum `0x4fcd11...8c73e2`; ethereum `0x83d6cd...733f76` | ⚠️ Unaudited |
| BBUSDHandler | unknown | ethereum | 3 deployments: ethereum [`0x1d2fc9...6c8e37`](./contracts/ethereum-1/0x1d2fc9222633d33271f03255b56e7e50636c8e37/); ethereum `0x5c5317...60e484`; ethereum `0xa9cabe...0241fb` | ⚠️ Unaudited |
| BBUSDHandlerv2 | unknown | ethereum | [`0xe33ed4...98d4a8`](./contracts/ethereum-1/0xe33ed45c38a1def9c0bfb592d6b4f9788898d4a8/) | ⚠️ Unaudited |
| CrvUsdSwapper | adapter | ethereum | [`0x5b62f9...6328de`](./contracts/ethereum-1/0x5b62f91278f9439bcffd25d9fdc08043b46328de/) | ⚠️ Unaudited |
| CvxFxsStrategy | core_logic | ethereum | [`0xf761c0...badff8`](./contracts/ethereum-1/0xf761c0098967d756c9673f2798dbf23342badff8/) | ⚠️ Unaudited |
| CvxFxsZaps | adapter | ethereum | 4 deployments: ethereum [`0x374223...21944d`](./contracts/ethereum-1/0x3742235b332fac741ec3a4f1ab7115ae0621944d/); ethereum `0x63f079...d0166c`; ethereum `0xd0e50a...1c0d58`; ethereum `0xf97d26...5dafef` | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x27a110...b0cb49`](./contracts/ethereum-1/0x27a11054b62c29c166f3fab2b0ac708043b0cb49/); ethereum `0x678823...7afcc5`; ethereum `0x9da701...da25e4` | ⚠️ Unaudited |
| DistributorZaps | operational_periphery | ethereum | [`0x56e9db...2ed944`](./contracts/ethereum-1/0x56e9db574c8d5015d198671cbf1200b6bb2ed944/) | ⚠️ Unaudited |
| ExtraZaps | adapter | ethereum | 3 deployments: ethereum [`0x5d69b6...29838e`](./contracts/ethereum-1/0x5d69b683bf963648137b3ab5244e9d31d529838e/); ethereum `0x7b7481...d86336`; ethereum `0xaaf755...b1f29c` | ⚠️ Unaudited |
| FeeAllocator | operational_periphery | ethereum | 2 deployments: ethereum [`0x22530d...8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/); ethereum `0x874942...79f322` | ⚠️ Unaudited |
| FXSMerkleDistributor | operational_periphery | ethereum | [`0x11fe17...c1d4c7`](./contracts/ethereum-1/0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7/) | ⚠️ Unaudited |
| FXSSwapper | adapter | ethereum | 2 deployments: ethereum [`0x2dce36...ded929`](./contracts/ethereum-1/0x2dce36d00bb398cb01390a0769260b84edded929/); ethereum `0x80617e...7f9b2b` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xba5602...fd8562`](./contracts/ethereum-1/0xba5602730824340d714c92a153460db958fd8562/) | ⚠️ Unaudited |
| MerkleDistributorV2 | operational_periphery | ethereum | [`0xa83043...956183`](./contracts/ethereum-1/0xa83043df401346a67eddeb074679b4570b956183/) | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | [`0x966a2f...fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | ⚠️ Unaudited |
| PCvxZaps | adapter | ethereum | 5 deployments: ethereum [`0x6753f2...e48222`](./contracts/ethereum-1/0x6753f23905f15376429e6f0c381fcc4862e48222/); ethereum `0x864461...5c073e`; ethereum `0x94699c...a5bec9`; ethereum `0x9ef0b5...266c6f`; ethereum `0xb19290...f17a55` | ⚠️ Unaudited |
| PirexClaimAll | unknown | ethereum | 3 deployments: ethereum [`0x0037eb...8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/); ethereum `0x5af5e9...7c2e71`; ethereum `0x8bd873...a7b44a` | ⚠️ Unaudited |
| PirexClaims | unknown | ethereum | 3 deployments: ethereum [`0x7ac09d...5dee7a`](./contracts/ethereum-1/0x7ac09d90f8fcf0cce77f0d3bc7aaef3ad75dee7a/); ethereum `0xc7a23a...158f01`; ethereum `0xed41c3...517ff9` | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | ethereum | 5 deployments: ethereum [`0x49a805...b6e6b8`](./contracts/ethereum-1/0x49a8056440065900a3a21b33594815aa0fb6e6b8/); ethereum `0x783c13...1d4a51`; ethereum `0x9ae313...f58285`; ethereum `0xa1fdfc...a65981`; ethereum `0xe82999...7da097` | ⚠️ Unaudited |
| PirexMigrationV1 | operational_periphery | ethereum | [`0x8e705c...e686c2`](./contracts/ethereum-1/0x8e705c0694795516178c63b6c40339ac2be686c2/) | ⚠️ Unaudited |
| PirexMigrationV2 | operational_periphery | ethereum | [`0xc8ec7d...5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | ⚠️ Unaudited |
| PrismaSwapper | adapter | ethereum | [`0xd94b07...422154`](./contracts/ethereum-1/0xd94b0763dadd691a1e9688cf0ef8238d95422154/) | ⚠️ Unaudited |
| PxCvx | unknown | ethereum | [`0xbce0cf...15c3ac`](./contracts/ethereum-1/0xbce0cf87f513102f22232436cca2ca49e815c3ac/) | ⚠️ Unaudited |
| RAAC Stable Vault Factory | registry | ethereum | 2 deployments: ethereum [`0x10f6ef...740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/); ethereum `0xe1ca33...982989` | ⚠️ Unaudited |
| ReUsdSwapper | adapter | ethereum | [`0x4174b1...8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | ethereum | [`0x17ac69...367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | [`0x534437...3595a3`](./contracts/ethereum-1/0x53443740ea74c4e816a9e167704f9f9fae3595a3/) | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | ethereum | [`0x55b2b5...25690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | operational_periphery | ethereum | 6 deployments: ethereum [`0x1b8b49...8dff7b`](./contracts/ethereum-1/0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b/); ethereum `0x2604ab...05a2ed`; ethereum `0x2a24bb...3406f2`; ethereum `0x2f66e1...cf775c`; ethereum `0x68b565...025e1c`; ethereum `0xd2b650...216c19` | ⚠️ Unaudited |
| stkCvxCrvHarvester | operational_periphery | ethereum | 4 deployments: ethereum [`0x3e2cad...fe83d7`](./contracts/ethereum-1/0x3e2cad773e36e29a53eaab56726043ac04fe83d7/); ethereum `0x4bf420...7c0197`; ethereum `0x932331...3863ff`; ethereum `0xf14d21...b5dc9f` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x0ed7d0...696f17`](./contracts/ethereum-1/0x0ed7d0497194fc029ae02223fec6d4d567696f17/); ethereum `0x2c5e80...bf06c8` | ⚠️ Unaudited |
| stkCvxCrvMigration | operational_periphery | ethereum | 2 deployments: ethereum [`0x3074e3...07ac3c`](./contracts/ethereum-1/0x3074e38941c52a466a228e451e21a0c34607ac3c/); ethereum `0x3cf974...4303a3` | ⚠️ Unaudited |
| stkCvxCrvStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x8d2aee...0eb7f3`](./contracts/ethereum-1/0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3/); ethereum `0xec221a...1f8883` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | ethereum | 5 deployments: ethereum [`0x105ec4...87ee2b`](./contracts/ethereum-1/0x105ec4f5cc0dfd706ac3af68de1a3c80b587ee2b/); ethereum `0xac4925...3ab2e8`; ethereum `0xc8d133...1c4d78`; ethereum `0xd835cd...0c5b25`; ethereum `0xff87da...c31a95` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | ethereum | [`0xae12bf...dc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | ⚠️ Unaudited |
| stkCvxFxsHarvester | operational_periphery | ethereum | [`0x35d28d...f5e906`](./contracts/ethereum-1/0x35d28d77369e825298de76060e96e5ada7f5e906/) | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | ethereum | [`0x5682a2...7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | ⚠️ Unaudited |
| stkCvxFxsMigration | operational_periphery | ethereum | [`0xab237f...c30fd9`](./contracts/ethereum-1/0xab237fd3b2e72a82ab08330f98fb1fa36ec30fd9/) | ⚠️ Unaudited |
| stkCvxFxsStrategy | core_logic | ethereum | [`0x110a88...fb70de`](./contracts/ethereum-1/0x110a888f88b65a2c34a6922f518128eda4fb70de/) | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | ethereum | [`0x1f409e...a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | ethereum | 2 deployments: ethereum [`0x0976b9...354480`](./contracts/ethereum-1/0x0976b9a5816bb7d0441b776a76c3057980354480/); ethereum `0x0cb569...5528c3` | ⚠️ Unaudited |
| stkCvxPrismaHarvester | operational_periphery | ethereum | [`0x1f9409...54defb`](./contracts/ethereum-1/0x1f9409933aa273dab349ceba255f5ad8f854defb/) | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | ethereum | [`0xf09320...6754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | ethereum | [`0x06c3b2...599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | ⚠️ Unaudited |
| stkCvxPrismaStrategy | core_logic | ethereum | [`0x88011c...e89e01`](./contracts/ethereum-1/0x88011c72623777f6452a7d6d8bab10ec67e89e01/) | ⚠️ Unaudited |
| stkCvxPrismaZaps | adapter | ethereum | 2 deployments: ethereum [`0x167832...2dd5f4`](./contracts/ethereum-1/0x1678324f62001454f7c08e936511a0371a2dd5f4/); ethereum `0x5beef4...002624` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | [`0x6508ef...2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | ⚠️ Unaudited |
| UnionZap | adapter | ethereum | 9 deployments: ethereum [`0x7a7f79...aa4925`](./contracts/ethereum-1/0x7a7f79c5706716bae853c1b96e36538c7eaa4925/); ethereum `0x835076...29e66f`; ethereum `0x853dcb...966067`; ethereum `0x8b37af...6acf15`; ethereum `0xcc2a0f...d47f91`; ethereum `0xce45e2...f5d988`; ethereum `0xd248e6...3600c9`; ethereum `0xd52ca7...31e5ed`; ethereum `0xf41129...a30eb7` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 11 deployments: ethereum [`0x18b79c...3b73cb`](./contracts/ethereum-1/0x18b79cba3ff6f6120eec4b01781d343cc43b73cb/); ethereum `0x20b68b...a751c1`; ethereum `0x218403...0a953c`; ethereum `0x505b5f...53f7d4`; ethereum `0x59c952...114310`; ethereum `0x760524...0e0471`; ethereum `0x8c7aa3...2f292c`; ethereum `0xb10c27...1c106c`; ethereum `0xb40359...5156d7`; ethereum `0xcc40a1...aea6dc`; ethereum `0xfb9b21...447281` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| cow_harvester | unknown | ethereum | 4 deployments: ethereum [`0xa48946...acaa92`](./contracts/ethereum-1/0xa48946501488abf8d4ce1102e813aec919acaa92/); ethereum `0xb0a21a...d6acd3`; ethereum `0xc139d4...8324c2`; ethereum `0xc76d5b...bef739` | ⚠️ Unaudited (bytecode match) |
| RAAC CoW Harvester | unknown | ethereum | 9 deployments: ethereum [`0x1b38b7...38f33c`](./contracts/ethereum-1/0x1b38b7576cc1646ec4ba607c2d92d8fd0438f33c/); ethereum `0x2a893b...165787`; ethereum `0x3891f4...5d1048`; ethereum `0x4e342d...a430c9`; ethereum `0x6cd77c...6b78d3`; ethereum `0x7440e9...d7b1fe`; ethereum `0xceeff5...81a375`; ethereum `0xd902f3...5dc1c1`; ethereum `0xf22259...3ed9ba` | ⚠️ Unaudited (bytecode match) |
| RAAC Vault | core_logic | ethereum | 2 deployments: ethereum [`0x7eef8f...75b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/); ethereum `0xbc39eb...6c6756` | ⚠️ Unaudited (bytecode match) |
| raac_vault | unknown | ethereum | 3 deployments: ethereum [`0x698804...ff5b46`](./contracts/ethereum-1/0x698804b7cc4070260a0dc14ce2ca4e3af0ff5b46/); ethereum `0xa3a874...7288ba`; ethereum `0xd08657...36e8aa` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x05ede2...ebabba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12cb78...d4ab37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13665a...0fadce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13c7e4...7efe70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1b2458...104b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2251af...423f9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x239f56...db233d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29e6ad...8eb10d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ece2b...66d526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x471f4c...c20d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x478da5...c4d3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49774e...004a90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x591ae6...f26be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x627862...ce85e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68d4dc...bd3e15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84a92b...499434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99d55f...8bf630` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa98a92...33a068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb32da...0ba111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1cad8...6db32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2bf3f...019c97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce3c7d...e44578` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd255bf...f8e739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd41c27...85602c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb39a2...5371af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0b6af...b0a68f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5183d...d762c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5d130...e387c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf770f6...eb6eda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8659fc...7927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | UnionPirexVault | core_logic | $2,717,153.33 | Verified native implementation with $2,717,153.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ebad8...6b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/) | stkCvxCrvVault | core_logic | $747,353.16 | Verified native implementation with $747,353.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b0987...ee5077`](./contracts/ethereum-1/0x4b0987bef3f966354c6ecd22f6d844d621ee5077/) | AuraBalStrategy | core_logic | $31,603.46 | Verified native implementation with $31,603.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdd9e...35386d`](./contracts/ethereum-1/0x0fdd9e5dc0c83795f5c114e2b27926194035386d/) | stkCvxFxsVault | core_logic | $11,168.59 | Verified native implementation with $11,168.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83507c...884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | UnionVault | core_logic | $3,668.84 | Verified native implementation with $3,668.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf964b0...89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | GenericUnionVault | core_logic | $960.19 | Verified native implementation with $960.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bfd08...1464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | stkCvxPrismaVault | core_logic | $901.00 | Verified native implementation with $901.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77e5bb...af7328`](./contracts/ethereum-1/0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328/) | AuraBalVault | core_logic | $665.95 | Verified native implementation with $665.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e6d5c...f1baa4`](./contracts/ethereum-1/0x8e6d5cf9b9659d4f8e68ee040bf26e728ef1baa4/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfa23b...0d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06ee5f...947363`](./contracts/ethereum-1/0x06ee5f2c2690c3b03718e662dd14282cb9947363/) | AuraBalZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09ee25...85940e`](./contracts/ethereum-1/0x09ee25e4f85826705b385ab863e6f1701a85940e/) | AuraHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d2fc9...6c8e37`](./contracts/ethereum-1/0x1d2fc9222633d33271f03255b56e7e50636c8e37/) | BBUSDHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe33ed4...98d4a8`](./contracts/ethereum-1/0xe33ed45c38a1def9c0bfb592d6b4f9788898d4a8/) | BBUSDHandlerv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa48946...acaa92`](./contracts/ethereum-1/0xa48946501488abf8d4ce1102e813aec919acaa92/) | cow_harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b62f9...6328de`](./contracts/ethereum-1/0x5b62f91278f9439bcffd25d9fdc08043b46328de/) | CrvUsdSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf761c0...badff8`](./contracts/ethereum-1/0xf761c0098967d756c9673f2798dbf23342badff8/) | CvxFxsStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x374223...21944d`](./contracts/ethereum-1/0x3742235b332fac741ec3a4f1ab7115ae0621944d/) | CvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a110...b0cb49`](./contracts/ethereum-1/0x27a11054b62c29c166f3fab2b0ac708043b0cb49/) | CVXMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56e9db...2ed944`](./contracts/ethereum-1/0x56e9db574c8d5015d198671cbf1200b6bb2ed944/) | DistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d69b6...29838e`](./contracts/ethereum-1/0x5d69b683bf963648137b3ab5244e9d31d529838e/) | ExtraZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22530d...8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | FeeAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11fe17...c1d4c7`](./contracts/ethereum-1/0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7/) | FXSMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dce36...ded929`](./contracts/ethereum-1/0x2dce36d00bb398cb01390a0769260b84edded929/) | FXSSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa83043...956183`](./contracts/ethereum-1/0xa83043df401346a67eddeb074679b4570b956183/) | MerkleDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966a2f...fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6753f2...e48222`](./contracts/ethereum-1/0x6753f23905f15376429e6f0c381fcc4862e48222/) | PCvxZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0037eb...8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/) | PirexClaimAll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac09d...5dee7a`](./contracts/ethereum-1/0x7ac09d90f8fcf0cce77f0d3bc7aaef3ad75dee7a/) | PirexClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49a805...b6e6b8`](./contracts/ethereum-1/0x49a8056440065900a3a21b33594815aa0fb6e6b8/) | PirexDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e705c...e686c2`](./contracts/ethereum-1/0x8e705c0694795516178c63b6c40339ac2be686c2/) | PirexMigrationV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8ec7d...5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | PirexMigrationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd94b07...422154`](./contracts/ethereum-1/0xd94b0763dadd691a1e9688cf0ef8238d95422154/) | PrismaSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbce0cf...15c3ac`](./contracts/ethereum-1/0xbce0cf87f513102f22232436cca2ca49e815c3ac/) | PxCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b38b7...38f33c`](./contracts/ethereum-1/0x1b38b7576cc1646ec4ba607c2d92d8fd0438f33c/) | RAAC CoW Harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f6ef...740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/) | RAAC Stable Vault Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eef8f...75b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/) | RAAC Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698804...ff5b46`](./contracts/ethereum-1/0x698804b7cc4070260a0dc14ce2ca4e3af0ff5b46/) | raac_vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4174b1...8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ReUsdSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ac69...367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | sCrvUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b2b5...25690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | sReUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8b49...8dff7b`](./contracts/ethereum-1/0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b/) | stkCvxCrvDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e2cad...fe83d7`](./contracts/ethereum-1/0x3e2cad773e36e29a53eaab56726043ac04fe83d7/) | stkCvxCrvHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ed7d0...696f17`](./contracts/ethereum-1/0x0ed7d0497194fc029ae02223fec6d4d567696f17/) | stkCvxCrvMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3074e3...07ac3c`](./contracts/ethereum-1/0x3074e38941c52a466a228e451e21a0c34607ac3c/) | stkCvxCrvMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d2aee...0eb7f3`](./contracts/ethereum-1/0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3/) | stkCvxCrvStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x105ec4...87ee2b`](./contracts/ethereum-1/0x105ec4f5cc0dfd706ac3af68de1a3c80b587ee2b/) | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae12bf...dc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | stkCvxFxsDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35d28d...f5e906`](./contracts/ethereum-1/0x35d28d77369e825298de76060e96e5ada7f5e906/) | stkCvxFxsHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5682a2...7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | stkCvxFxsMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab237f...c30fd9`](./contracts/ethereum-1/0xab237fd3b2e72a82ab08330f98fb1fa36ec30fd9/) | stkCvxFxsMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x110a88...fb70de`](./contracts/ethereum-1/0x110a888f88b65a2c34a6922f518128eda4fb70de/) | stkCvxFxsStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f409e...a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | stkCvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0976b9...354480`](./contracts/ethereum-1/0x0976b9a5816bb7d0441b776a76c3057980354480/) | stkCvxPrismaDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f9409...54defb`](./contracts/ethereum-1/0x1f9409933aa273dab349ceba255f5ad8f854defb/) | stkCvxPrismaHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf09320...6754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | stkCvxPrismaMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c3b2...599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | stkCvxPrismaMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88011c...e89e01`](./contracts/ethereum-1/0x88011c72623777f6452a7d6d8bab10ec67e89e01/) | stkCvxPrismaStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x167832...2dd5f4`](./contracts/ethereum-1/0x1678324f62001454f7c08e936511a0371a2dd5f4/) | stkCvxPrismaZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6508ef...2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a7f79...aa4925`](./contracts/ethereum-1/0x7a7f79c5706716bae853c1b96e36538c7eaa4925/) | UnionZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
