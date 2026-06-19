# Agentic Audit Brief: Llama Airforce

⚠️ Lifecycle status: DECLINING - TVL dropped 13.2% over 90 days

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: declining (Tier 0, 88.9% below peak)
- Generated: 2026-06-19T06:14:26.357Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum
- Contract surface: 58 unique implementations (87 raw deployments)
- DeFi Llama TVL: $1,327,597.42
- On-chain TVL (included contracts): $3,481,860.92
- TVL by chain: Ethereum $3,481,860.92

## Project Description

Llama Airforce is associated publicly with the Curve ecosystem, described as “Airdropping knowledge bombs about the Curve ecosystem.” Its on-chain surface and DeFiLlama categorization suggest yield/vault-related activity across multiple product families, including Convex-, Aura-, Union/Pirex-, staking-, zap-, harvester-, migration-, and distributor-related contracts, but specific claims such as unified auto-compounding optimization should be treated as unverified unless supported by primary documentation or source review.

### Architecture

The single product family contains vaults that share a common deployer cluster, indicating a unified infrastructure. The PxCvx contract likely serves as a supporting token or adapter for the vaults.

## Contract Surface Quality

- Indexed contracts: 185; live-surface contracts included: 87 (87 live, 0 unknown).
- Excluded by liveness: 98 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Unverified dependencies: 4/321.

## Audit Coverage Summary

- Verified implementations audited: 0/41 (0.0%)
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 4
- Unverified implementations: 17
- Unique implementations: 58
- Raw deployments: 87
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,481,860.92
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,481,860.92 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnionPirexVault | core_logic | ethereum | n/a | [`0x8659fc...7927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4ebad8...6b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/); ethereum `0xde2bef...afa8b7` | ⚠️ Unaudited |
| stkCvxFxsVault | core_logic | ethereum | n/a | [`0x3a8864...c7b29c`](./contracts/ethereum-1/0x3a886455e5b33300a31c5e77bac01e76c0c7b29c/) | ⚠️ Unaudited |
| UnionVault | core_logic | ethereum | n/a | [`0x83507c...884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | ⚠️ Unaudited |
| GenericUnionVault | core_logic | ethereum | n/a | [`0xf964b0...89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | ethereum | n/a | [`0x9bfd08...1464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | ⚠️ Unaudited |
| AuraBalVault | core_logic | ethereum | n/a | [`0x8c4eb0...88dd67`](./contracts/ethereum-1/0x8c4eb0fc6805ee7337ac126f89a807271a88dd67/) | ⚠️ Unaudited |
| AddressRegistry | registry | ethereum | n/a | [`0x92e6e4...966ee2`](./contracts/ethereum-1/0x92e6e43f99809df84ed2d533e1fd8017eb966ee2/) | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | n/a | [`0xcfa23b...0d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | ⚠️ Unaudited |
| CvxFxsZaps | adapter | ethereum | n/a | [`0x63f079...d0166c`](./contracts/ethereum-1/0x63f0797015489d407fc2ac7e3891467e1ed0166c/) | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x678823...7afcc5`](./contracts/ethereum-1/0x6788234f40931ca615b0d221c1afbf0ec07afcc5/); ethereum `0x9da701...da25e4` | ⚠️ Unaudited |
| DelegateRegistry | registry | ethereum | n/a | [`0x469788...015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | ⚠️ Unaudited |
| FeeAllocator | operational_periphery | ethereum | n/a | [`0x22530d...8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-25360 (3 proxies) | 3 deployments: ethereum [`0x6ed9c1...7061d6`](./contracts/ethereum-1/0x6ed9c171e02de08aaedf0fc1d589923d807061d6/); ethereum `0x9bc7c6...e53f99`; ethereum `0xaef6ea...bc1f16` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | [`0x966a2f...fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | ⚠️ Unaudited |
| PCvxZaps | adapter | ethereum | n/a | [`0xb19290...f17a55`](./contracts/ethereum-1/0xb192908e533fc64109a20ee7d056175a24f17a55/) | ⚠️ Unaudited |
| PirexClaimAll | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0037eb...8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/); ethereum `0x5af5e9...7c2e71`; ethereum `0x8bd873...a7b44a` | ⚠️ Unaudited |
| PirexClaims | unknown | ethereum | n/a | [`0xed41c3...517ff9`](./contracts/ethereum-1/0xed41c3402c4b62777939b7334b4d3d2407517ff9/) | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x783c13...1d4a51`](./contracts/ethereum-1/0x783c13b94123ccdcc5d597deb93a69983e1d4a51/); ethereum `0xa1fdfc...a65981` | ⚠️ Unaudited |
| PirexMigrationV2 | operational_periphery | ethereum | n/a | [`0xc8ec7d...5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | ⚠️ Unaudited |
| PxCvx | unknown | ethereum | n/a | [`0xbce0cf...15c3ac`](./contracts/ethereum-1/0xbce0cf87f513102f22232436cca2ca49e815c3ac/) | ⚠️ Unaudited |
| RAAC Stable Vault Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x10f6ef...740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/); ethereum `0xe1ca33...982989` | ⚠️ Unaudited |
| ReUsdSwapper | adapter | ethereum | n/a | [`0x4174b1...8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | ethereum | n/a | [`0x17ac69...367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | ethereum | n/a | [`0x55b2b5...25690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | operational_periphery | ethereum | n/a | [`0x68b565...025e1c`](./contracts/ethereum-1/0x68b56567af308fe8d94876ab0fe88541ed025e1c/) | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | ethereum | n/a | [`0x2c5e80...bf06c8`](./contracts/ethereum-1/0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8/) | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | ethereum | n/a | 2 deployments: ethereum [`0xc8d133...1c4d78`](./contracts/ethereum-1/0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78/); ethereum `0xd835cd...0c5b25` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | ethereum | n/a | [`0xae12bf...dc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | ethereum | n/a | [`0x5682a2...7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | ethereum | n/a | [`0x1f409e...a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | ethereum | n/a | [`0x0cb569...5528c3`](./contracts/ethereum-1/0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3/) | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | ethereum | n/a | [`0xf09320...6754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | ethereum | n/a | [`0x06c3b2...599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | [`0x6508ef...2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | ⚠️ Unaudited |
| UnionZap | adapter | ethereum | n/a | [`0xd52ca7...31e5ed`](./contracts/ethereum-1/0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x18b79c...3b73cb`](./contracts/ethereum-1/0x18b79cba3ff6f6120eec4b01781d343cc43b73cb/); ethereum `0x20b68b...a751c1`; ethereum `0x505b5f...53f7d4`; ethereum `0x59c952...114310`; ethereum `0x8c7aa3...2f292c`; ethereum `0xb40359...5156d7`; ethereum `0xfb9b21...447281` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| cow_harvester | unknown | ethereum | n/a | 4 deployments: ethereum [`0xa48946...acaa92`](./contracts/ethereum-1/0xa48946501488abf8d4ce1102e813aec919acaa92/); ethereum `0xb0a21a...d6acd3`; ethereum `0xc139d4...8324c2`; ethereum `0xc76d5b...bef739` | ⚠️ Unaudited (bytecode match) |
| RAAC CoW Harvester | unknown | ethereum | n/a | 9 deployments: ethereum [`0x1b38b7...38f33c`](./contracts/ethereum-1/0x1b38b7576cc1646ec4ba607c2d92d8fd0438f33c/); ethereum `0x2a893b...165787`; ethereum `0x3891f4...5d1048`; ethereum `0x4e342d...a430c9`; ethereum `0x6cd77c...6b78d3`; ethereum `0x7440e9...d7b1fe`; ethereum `0xceeff5...81a375`; ethereum `0xd902f3...5dc1c1`; ethereum `0xf22259...3ed9ba` | ⚠️ Unaudited (bytecode match) |
| RAAC Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7eef8f...75b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/); ethereum `0xbc39eb...6c6756` | ⚠️ Unaudited (bytecode match) |
| raac_vault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x698804...ff5b46`](./contracts/ethereum-1/0x698804b7cc4070260a0dc14ce2ca4e3af0ff5b46/); ethereum `0xa3a874...7288ba`; ethereum `0xd08657...36e8aa` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x12cb78...d4ab37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13665a...0fadce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13c7e4...7efe70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b2458...104b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29e6ad...8eb10d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471f4c...c20d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x478da5...c4d3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x591ae6...f26be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x627862...ce85e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d4dc...bd3e15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84a92b...499434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99d55f...8bf630` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2bf3f...019c97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce3c7d...e44578` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd255bf...f8e739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5183d...d762c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5d130...e387c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8659fc...7927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | UnionPirexVault | core_logic | $2,717,153.33 | Verified native implementation with $2,717,153.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ebad8...6b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/) | stkCvxCrvVault | core_logic | $747,353.16 | Verified native implementation with $747,353.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a8864...c7b29c`](./contracts/ethereum-1/0x3a886455e5b33300a31c5e77bac01e76c0c7b29c/) | stkCvxFxsVault | core_logic | $11,168.59 | Verified native implementation with $11,168.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83507c...884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | UnionVault | core_logic | $3,668.84 | Verified native implementation with $3,668.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf964b0...89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | GenericUnionVault | core_logic | $960.19 | Verified native implementation with $960.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bfd08...1464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | stkCvxPrismaVault | core_logic | $901.00 | Verified native implementation with $901.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c4eb0...88dd67`](./contracts/ethereum-1/0x8c4eb0fc6805ee7337ac126f89a807271a88dd67/) | AuraBalVault | core_logic | $655.81 | Verified native implementation with $655.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92e6e4...966ee2`](./contracts/ethereum-1/0x92e6e43f99809df84ed2d533e1fd8017eb966ee2/) | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfa23b...0d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa48946...acaa92`](./contracts/ethereum-1/0xa48946501488abf8d4ce1102e813aec919acaa92/) | cow_harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63f079...d0166c`](./contracts/ethereum-1/0x63f0797015489d407fc2ac7e3891467e1ed0166c/) | CvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x678823...7afcc5`](./contracts/ethereum-1/0x6788234f40931ca615b0d221c1afbf0ec07afcc5/) | CVXMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22530d...8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | FeeAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966a2f...fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb19290...f17a55`](./contracts/ethereum-1/0xb192908e533fc64109a20ee7d056175a24f17a55/) | PCvxZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0037eb...8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/) | PirexClaimAll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed41c3...517ff9`](./contracts/ethereum-1/0xed41c3402c4b62777939b7334b4d3d2407517ff9/) | PirexClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x783c13...1d4a51`](./contracts/ethereum-1/0x783c13b94123ccdcc5d597deb93a69983e1d4a51/) | PirexDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8ec7d...5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | PirexMigrationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbce0cf...15c3ac`](./contracts/ethereum-1/0xbce0cf87f513102f22232436cca2ca49e815c3ac/) | PxCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f6ef...740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/) | RAAC Stable Vault Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eef8f...75b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/) | RAAC Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698804...ff5b46`](./contracts/ethereum-1/0x698804b7cc4070260a0dc14ce2ca4e3af0ff5b46/) | raac_vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4174b1...8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ReUsdSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ac69...367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | sCrvUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b2b5...25690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | sReUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68b565...025e1c`](./contracts/ethereum-1/0x68b56567af308fe8d94876ab0fe88541ed025e1c/) | stkCvxCrvDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c5e80...bf06c8`](./contracts/ethereum-1/0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8/) | stkCvxCrvMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d133...1c4d78`](./contracts/ethereum-1/0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78/) | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae12bf...dc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | stkCvxFxsDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5682a2...7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | stkCvxFxsMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f409e...a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | stkCvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb569...5528c3`](./contracts/ethereum-1/0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3/) | stkCvxPrismaDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf09320...6754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | stkCvxPrismaMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c3b2...599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | stkCvxPrismaMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6508ef...2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52ca7...31e5ed`](./contracts/ethereum-1/0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed/) | UnionZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
