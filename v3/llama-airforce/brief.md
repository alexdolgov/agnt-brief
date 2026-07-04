# Agentic Audit Brief: Llama Airforce

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:42.067Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 99 unique implementations (127 raw deployments)
- DeFi Llama TVL: $1,007,480.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 90 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 10 common project-authored base contract(s) (aurabalstrategybase, handlerbase, genericdistributor). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 225; live-surface contracts included: 127 (75 live, 52 unknown).
- Excluded by liveness: 98 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/47 (0.0%)
- Deployed-live implementations: 47 of 99 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 99
- Raw deployments: 127
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

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressRegistry | registry | ethereum | n/a | [`0x92e6e4...966ee2`](./contracts/ethereum-1/0x92e6e43f99809df84ed2d533e1fd8017eb966ee2/) | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | n/a | [`0xcfa23b...0d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | ⚠️ Unaudited |
| AuraBalVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x77e5bb...af7328`](./contracts/ethereum-1/0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328/); ethereum `0x8c4eb0...88dd67`; ethereum `0xb70ec1...ff48ac`; ethereum `0xd6fc1e...c74c29` | ⚠️ Unaudited |
| cow_harvester | operational_periphery | ethereum | n/a | [`0xb0a21a...d6acd3`](./contracts/ethereum-1/0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3/) | ⚠️ Unaudited |
| CvxFxsZaps | adapter | ethereum | n/a | [`0x63f079...d0166c`](./contracts/ethereum-1/0x63f0797015489d407fc2ac7e3891467e1ed0166c/) | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x678823...7afcc5`](./contracts/ethereum-1/0x6788234f40931ca615b0d221c1afbf0ec07afcc5/); ethereum `0x9da701...da25e4` | ⚠️ Unaudited |
| DelegateRegistry | registry | ethereum | n/a | [`0x469788...015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | ⚠️ Unaudited |
| DistributorZaps | unknown | ethereum | n/a | [`0x56e9db...2ed944`](./contracts/ethereum-1/0x56e9db574c8d5015d198671cbf1200b6bb2ed944/) | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbae47c...8f2b76`](./contracts/ethereum-1/0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76/); ethereum `0xc04461...3f7db8` | ⚠️ Unaudited |
| ERC1155Solmate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a3d81...4e0fe1`](./contracts/ethereum-1/0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1/); ethereum `0xe47e8b...d20fc3` | ⚠️ Unaudited |
| FeeAllocator | operational_periphery | ethereum | n/a | [`0x22530d...8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | ⚠️ Unaudited |
| GenericUnionVault | core_logic | ethereum | n/a | [`0xf964b0...89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 3 deployments: ethereum [`0x6ed9c1...7061d6`](./contracts/ethereum-1/0x6ed9c171e02de08aaedf0fc1d589923d807061d6/); ethereum `0x9bc7c6...e53f99`; ethereum `0xaef6ea...bc1f16` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | [`0x966a2f...fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | ⚠️ Unaudited |
| PCvxZaps | adapter | ethereum | n/a | [`0xb19290...f17a55`](./contracts/ethereum-1/0xb192908e533fc64109a20ee7d056175a24f17a55/) | ⚠️ Unaudited |
| PirexClaimAll | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0037eb...8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/); ethereum `0x5af5e9...7c2e71`; ethereum `0x8bd873...a7b44a` | ⚠️ Unaudited |
| PirexClaims | unknown | ethereum | n/a | [`0xed41c3...517ff9`](./contracts/ethereum-1/0xed41c3402c4b62777939b7334b4d3d2407517ff9/) | ⚠️ Unaudited |
| PirexCvx | unknown | ethereum | n/a | [`0x35a398...8588d7`](./contracts/ethereum-1/0x35a398425d9f1029021a92bc3d2557d42c8588d7/) | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x783c13...1d4a51`](./contracts/ethereum-1/0x783c13b94123ccdcc5d597deb93a69983e1d4a51/); ethereum `0xa1fdfc...a65981` | ⚠️ Unaudited |
| PirexFees | unknown | ethereum | n/a | [`0x9b0dff...b0720f`](./contracts/ethereum-1/0x9b0dff589fc0acac23581ecaff5688434db0720f/) | ⚠️ Unaudited |
| PirexMigrationV2 | operational_periphery | ethereum | n/a | [`0xc8ec7d...5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | ⚠️ Unaudited |
| PxCvx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x505337...9733c7`](./contracts/ethereum-1/0x5053371da4ba1f6c65e61a4bba86cedee49733c7/); ethereum `0xbce0cf...15c3ac` | ⚠️ Unaudited |
| RAAC CoW Harvester | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2a893b...165787`](./contracts/ethereum-1/0x2a893bb0f62e0a4a5e104753dd88fe1773165787/); ethereum `0xf22259...3ed9ba` | ⚠️ Unaudited |
| RAAC Stable Vault Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x10f6ef...740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/); ethereum `0xe1ca33...982989` | ⚠️ Unaudited |
| RAAC Vault | core_logic | ethereum | n/a | [`0x7eef8f...75b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/) | ⚠️ Unaudited |
| raac_vault | core_logic | ethereum | n/a | [`0xa3a874...7288ba`](./contracts/ethereum-1/0xa3a8749896ef4185a26a2a23f04f722c157288ba/) | ⚠️ Unaudited |
| ReUsdSwapper | adapter | ethereum | n/a | [`0x4174b1...8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | ethereum | n/a | [`0x17ac69...367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | ethereum | n/a | [`0x55b2b5...25690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1b8b49...8dff7b`](./contracts/ethereum-1/0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b/); ethereum `0x2604ab...05a2ed`; ethereum `0x2a24bb...3406f2`; ethereum `0x2f66e1...cf775c`; ethereum `0x68b565...025e1c`; ethereum `0xd2b650...216c19` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | ethereum | n/a | [`0x2c5e80...bf06c8`](./contracts/ethereum-1/0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8/) | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4ebad8...6b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/); ethereum `0xde2bef...afa8b7` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | ethereum | n/a | 2 deployments: ethereum [`0xc8d133...1c4d78`](./contracts/ethereum-1/0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78/); ethereum `0xd835cd...0c5b25` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | ethereum | n/a | [`0xae12bf...dc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | ethereum | n/a | [`0x5682a2...7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | ⚠️ Unaudited |
| stkCvxFxsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fdd9e...35386d`](./contracts/ethereum-1/0x0fdd9e5dc0c83795f5c114e2b27926194035386d/); ethereum `0x3a8864...c7b29c` | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | ethereum | n/a | [`0x1f409e...a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | ethereum | n/a | [`0x0cb569...5528c3`](./contracts/ethereum-1/0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3/) | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | ethereum | n/a | [`0xf09320...6754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | ethereum | n/a | [`0x06c3b2...599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | ethereum | n/a | [`0x9bfd08...1464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | [`0x6508ef...2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | ⚠️ Unaudited |
| UnionPirexStrategy | unknown | ethereum | n/a | [`0x45f97d...b35d03`](./contracts/ethereum-1/0x45f97d07dab04b21f36fa3b1149c35e316b35d03/) | ⚠️ Unaudited |
| UnionPirexVault | core_logic | ethereum | n/a | [`0x8659fc...7927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | ⚠️ Unaudited |
| UnionVault | core_logic | ethereum | n/a | [`0x83507c...884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | ⚠️ Unaudited |
| UnionZap | adapter | ethereum | n/a | [`0xd52ca7...31e5ed`](./contracts/ethereum-1/0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x18b79c...3b73cb`](./contracts/ethereum-1/0x18b79cba3ff6f6120eec4b01781d343cc43b73cb/); ethereum `0x20b68b...a751c1`; ethereum `0x505b5f...53f7d4`; ethereum `0x59c952...114310`; ethereum `0x8c7aa3...2f292c`; ethereum `0xb40359...5156d7`; ethereum `0xfb9b21...447281` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x05ede2...ebabba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x094234...2c842b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102aed...30d66f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12cb78...d4ab37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13665a...0fadce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13c7e4...7efe70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b2458...104b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b38b7...38f33c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2251af...423f9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x239f56...db233d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29e6ad...8eb10d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3891f4...5d1048` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d32cc...b94f16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ece2b...66d526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471f4c...c20d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x478da5...c4d3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49774e...004a90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e342d...a430c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e5a69...d78566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57b9d8...12bf02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x591ae6...f26be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x627862...ce85e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d4dc...bd3e15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x698804...ff5b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cd77c...6b78d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70bafc...927886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7440e9...d7b1fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf2bd...c358a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84a92b...499434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99d55f...8bf630` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa48946...acaa92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa98a92...33a068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb683c1...2d0471` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb32da...0ba111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc39eb...6c6756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc139d4...8324c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1cad8...6db32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2bf3f...019c97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc76d5b...bef739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb1985...1623d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce3c7d...e44578` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceeff5...81a375` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd08657...36e8aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd255bf...f8e739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd41c27...85602c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd902f3...5dc1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb39a2...5371af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0b6af...b0a68f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5183d...d762c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5d130...e387c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d519...54dd4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf770f6...eb6eda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 99 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
