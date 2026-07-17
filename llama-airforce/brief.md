# Agentic Audit Brief: Llama Airforce

## Project Overview

- Project: Llama Airforce (`llama-airforce`)
- Website: [https://llama.airforce](https://llama.airforce)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.148Z
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

- Coverage of deployed-live implementations: 0/46 (0.0%)
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
| AddressRegistry | registry | ethereum | n/a | [`0x92e6e43f99809df84ed2d533e1fd8017eb966ee2`](./contracts/ethereum-1/0x92e6e43f99809df84ed2d533e1fd8017eb966ee2/) | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | n/a | [`0xcfa23b8f9062369b21049b9f4a4ce79d640d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | ⚠️ Unaudited |
| AuraBalVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328`](./contracts/ethereum-1/0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328/); ethereum `0x8c4eb0fc6805ee7337ac126f89a807271a88dd67`; ethereum `0xb70ec1ae115d184d9401e30510dc20b294ff48ac`; ethereum `0xd6fc1ecd9965ba9cac895654979564a291c74c29` | ⚠️ Unaudited |
| cow_harvester | operational_periphery | ethereum | n/a | [`0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3`](./contracts/ethereum-1/0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3/) | ⚠️ Unaudited |
| CvxFxsZaps | adapter | ethereum | n/a | [`0x63f0797015489d407fc2ac7e3891467e1ed0166c`](./contracts/ethereum-1/0x63f0797015489d407fc2ac7e3891467e1ed0166c/) | ⚠️ Unaudited |
| CVXMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x6788234f40931ca615b0d221c1afbf0ec07afcc5`](./contracts/ethereum-1/0x6788234f40931ca615b0d221c1afbf0ec07afcc5/); ethereum `0x9da701a9b76e0dd136d3508cb60a4c436dda25e4` | ⚠️ Unaudited |
| DelegateRegistry | registry | ethereum | n/a | [`0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | ⚠️ Unaudited |
| DistributorZaps | unknown | ethereum | n/a | [`0x56e9db574c8d5015d198671cbf1200b6bb2ed944`](./contracts/ethereum-1/0x56e9db574c8d5015d198671cbf1200b6bb2ed944/) | ⚠️ Unaudited |
| ERC1155PresetMinterSupply | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76`](./contracts/ethereum-1/0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76/); ethereum `0xc044613b702ed11567a38108703ac5478a3f7db8` | ⚠️ Unaudited |
| ERC1155Solmate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1`](./contracts/ethereum-1/0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1/); ethereum `0xe47e8b5b4ee05b7663b15087381bd47bcbd20fc3` | ⚠️ Unaudited |
| FeeAllocator | operational_periphery | ethereum | n/a | [`0x22530d384cd9915e096ead2db7f82ee81f8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | ⚠️ Unaudited |
| GenericUnionVault | core_logic | ethereum | n/a | [`0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 3 deployments: ethereum [`0x6ed9c171e02de08aaedf0fc1d589923d807061d6`](./contracts/ethereum-1/0x6ed9c171e02de08aaedf0fc1d589923d807061d6/); ethereum `0x9bc7c6ad7e7cf3a6fcb58fb21e27752ac1e53f99`; ethereum `0xaef6ea60f6443bad046e825c1d2b0c0b5ebc1f16` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | [`0x966a2f2dc3aff00965c6eccf6290d0d402fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | ⚠️ Unaudited |
| PCvxZaps | adapter | ethereum | n/a | [`0xb192908e533fc64109a20ee7d056175a24f17a55`](./contracts/ethereum-1/0xb192908e533fc64109a20ee7d056175a24f17a55/) | ⚠️ Unaudited |
| PirexClaimAll | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/); ethereum `0x5af5e91dede935c1f92e08e9bb4c961f387c2e71`; ethereum `0x8bd873dad13493d3d0f3585ff221fba389a7b44a` | ⚠️ Unaudited |
| PirexClaims | unknown | ethereum | n/a | [`0xed41c3402c4b62777939b7334b4d3d2407517ff9`](./contracts/ethereum-1/0xed41c3402c4b62777939b7334b4d3d2407517ff9/) | ⚠️ Unaudited |
| PirexCvx | unknown | ethereum | n/a | [`0x35a398425d9f1029021a92bc3d2557d42c8588d7`](./contracts/ethereum-1/0x35a398425d9f1029021a92bc3d2557d42c8588d7/) | ⚠️ Unaudited |
| PirexDistributorZaps | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x783c13b94123ccdcc5d597deb93a69983e1d4a51`](./contracts/ethereum-1/0x783c13b94123ccdcc5d597deb93a69983e1d4a51/); ethereum `0xa1fdfcab1c53e6f80439462f7f394c1f2ba65981` | ⚠️ Unaudited |
| PirexFees | unknown | ethereum | n/a | [`0x9b0dff589fc0acac23581ecaff5688434db0720f`](./contracts/ethereum-1/0x9b0dff589fc0acac23581ecaff5688434db0720f/) | ⚠️ Unaudited |
| PirexMigrationV2 | operational_periphery | ethereum | n/a | [`0xc8ec7d444c88ba3afe96978854645c43bd5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | ⚠️ Unaudited |
| PxCvx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5053371da4ba1f6c65e61a4bba86cedee49733c7`](./contracts/ethereum-1/0x5053371da4ba1f6c65e61a4bba86cedee49733c7/); ethereum `0xbce0cf87f513102f22232436cca2ca49e815c3ac` | ⚠️ Unaudited |
| RAAC CoW Harvester | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2a893bb0f62e0a4a5e104753dd88fe1773165787`](./contracts/ethereum-1/0x2a893bb0f62e0a4a5e104753dd88fe1773165787/); ethereum `0xf222593a4c8f68336b4709ec57e1a76a7e3ed9ba` | ⚠️ Unaudited |
| RAAC Stable Vault Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x10f6ef027725df44cebbf1efd25d3e1df3740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/); ethereum `0xe1ca332516a74e136575bac99205c60888982989` | ⚠️ Unaudited |
| RAAC Vault | core_logic | ethereum | n/a | [`0x7eef8f6a259cbbc939ba29cdb009abef8275b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/) | ⚠️ Unaudited |
| raac_vault | core_logic | ethereum | n/a | [`0xa3a8749896ef4185a26a2a23f04f722c157288ba`](./contracts/ethereum-1/0xa3a8749896ef4185a26a2a23f04f722c157288ba/) | ⚠️ Unaudited |
| ReUsdSwapper | adapter | ethereum | n/a | [`0x4174b1b21b41fbc616b754552fcfa66ebf8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ⚠️ Unaudited |
| sCrvUsdDistributor | operational_periphery | ethereum | n/a | [`0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | ⚠️ Unaudited |
| sReUsdDistributor | operational_periphery | ethereum | n/a | [`0x55b2b51f661e269aed638a5ddbf2fc930125690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b`](./contracts/ethereum-1/0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b/); ethereum `0x2604ab21546775e8d9b6e230a3c85a37ff05a2ed`; ethereum `0x2a24bb027d7fe2a62e39871187d644daf03406f2`; ethereum `0x2f66e12d94bdac080604768383e65a234dcf775c`; ethereum `0x68b56567af308fe8d94876ab0fe88541ed025e1c`; ethereum `0xd2b650143eb80c779b427e2d12b87bbf53216c19` | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | operational_periphery | ethereum | n/a | [`0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8`](./contracts/ethereum-1/0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8/) | ⚠️ Unaudited |
| stkCvxCrvVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/); ethereum `0xde2bef0a01845257b4aef2a2eaa48f6eaeafa8b7` | ⚠️ Unaudited |
| stkCvxCrvZaps | adapter | ethereum | n/a | 2 deployments: ethereum [`0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78`](./contracts/ethereum-1/0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78/); ethereum `0xd835cdedc20ca3075f86dea4e0d914499d0c5b25` | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | operational_periphery | ethereum | n/a | [`0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | operational_periphery | ethereum | n/a | [`0x5682a28919389b528ae74dd627e0d632ca7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | ⚠️ Unaudited |
| stkCvxFxsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fdd9e5dc0c83795f5c114e2b27926194035386d`](./contracts/ethereum-1/0x0fdd9e5dc0c83795f5c114e2b27926194035386d/); ethereum `0x3a886455e5b33300a31c5e77bac01e76c0c7b29c` | ⚠️ Unaudited |
| stkCvxFxsZaps | adapter | ethereum | n/a | [`0x1f409ec6f395493ad39f5b27945f1a6658a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | operational_periphery | ethereum | n/a | [`0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3`](./contracts/ethereum-1/0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3/) | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | operational_periphery | ethereum | n/a | [`0xf09320ed7db384cab7fce9ea9947436a806754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | ⚠️ Unaudited |
| stkCvxPrismaMigration | operational_periphery | ethereum | n/a | [`0x06c3b252c01225fdf3017551f39668c9b6599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | ⚠️ Unaudited |
| stkCvxPrismaVault | core_logic | ethereum | n/a | [`0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | [`0x6508ef65b0bd57eabd0f1d52685a70433b2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | ⚠️ Unaudited |
| UnionPirexStrategy | unknown | ethereum | n/a | [`0x45f97d07dab04b21f36fa3b1149c35e316b35d03`](./contracts/ethereum-1/0x45f97d07dab04b21f36fa3b1149c35e316b35d03/) | ⚠️ Unaudited |
| UnionPirexVault | core_logic | ethereum | n/a | [`0x8659fc767cad6005de79af65dafe4249c57927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | ⚠️ Unaudited |
| UnionVault | core_logic | ethereum | n/a | [`0x83507cc8c8b67ed48badd1f59f684d5d02884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | ⚠️ Unaudited |
| UnionZap | adapter | ethereum | n/a | [`0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed`](./contracts/ethereum-1/0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x18b79cba3ff6f6120eec4b01781d343cc43b73cb`](./contracts/ethereum-1/0x18b79cba3ff6f6120eec4b01781d343cc43b73cb/); ethereum `0x20b68b9efbe3c925b10d07a09391a83a78a751c1`; ethereum `0x505b5ff8f6a33050b5950e28eda7c524b553f7d4`; ethereum `0x59c952823c271da02b52debcf4b5582ad9114310`; ethereum `0x8c7aa3c15ffead950d4556cfecafec2b742f292c`; ethereum `0xb40359ce3d7494adb696697855537640f85156d7`; ethereum `0xfb9b21087f5cf9f1c1e0217628afab98ba447281` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x05ede2b40226aacda21f2829802482c84eebabba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0942345b4e78bb849d45678a3a43d7fadd2c842b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102aeda97327b41bab887f7c7ccd0c1e6a30d66f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12cb781637e638263a3c8dcd57ffc212c6d4ab37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13665acd569e30b2fa3087da6ad0fa3ed80fadce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13c7e46304f7a13a7e327c98bae1dbe49d7efe70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b2458880e4abec98dbba9e1cd2ba117de104b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b38b7576cc1646ec4ba607c2d92d8fd0438f33c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2251af9804d0a1a04e8e0e7a1fbb83f4d7423f9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x239f567689de71c97a896bde3c31070571db233d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29e6ad23260fb54679ca9ee9dd5512c8388eb10d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3891f47346e3cd607b547830d0f9fe2d0c5d1048` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d32cc59dbc1bd7b32796c8a247ea9f7beb94f16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ece2b74be59a17be4cdc6c378a57c22d966d526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471f4ca9175d50a4f2ef87722bf878fc83c20d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x478da5ff31fcad6e436b79456803b4aca6c4d3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49774e9e48f280498bab542cd877da93bd004a90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e342db1b36b7c39fe0079dd13c90d3377a430c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e5a69560f32a1c2293a8c63eabebe5aecd78566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57b9d83bf47ea4b1b6e9c7db076d796c6012bf02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x591ae6a795554ce2a81cc934650eff2f1bf26be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x627862c586401e3a157a9e5a86209a1d60ce85e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d4dcb510b84ab209ad599555e52e1b25bd3e15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x698804b7cc4070260a0dc14ce2ca4e3af0ff5b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cd77c4e1937fdf5cea0997dc358b9dcf06b78d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70bafc475500d0fb648d738a007fabdae5927886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7440e99a14c694253e78f5b747dc4ccf5cd7b1fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf2bdd07261ecf53f512566b9ede56d5cc358a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84a92be6585c261f10bf94cb342f87aa08499434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99d55ff983725ec5ae2840154ecd836ac58bf630` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa48946501488abf8d4ce1102e813aec919acaa92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa98a92c4dfa816dcc5b4ced2f11cbeacf333a068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb683c12ab153751cfa883a4c4d1907186f2d0471` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb32da1873e9a2a0fb478a960c5aef02550ba111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc39ebe15b012920013a072627705eb7f76c6756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc139d405d3255cbd0a6950f6f5fcc3cd8b8324c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1cad8a1787285cc9dc6687ee234e1ff6a6db32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2bf3fac7bfc34ed8186b484341703fdc6019c97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc76d5b13ea53523a14b754aa8d151d7554bef739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb19851693bf648724f01d79e4c1ecd2ba1623d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce3c7dd81c7ea9ff81c2aaaaa58e106291e44578` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceeff5c1616cb0907281f46ce58be8c9ab81a375` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd08657fdd67b857731628eac6511fee30436e8aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd255bf529da5761ba14980b0f74c2cb2a4f8e739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd41c27900f694d0cb58056e2e84b20befd85602c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd902f325cda60a34324818d5b35199b0c15dc1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb39a269167b9d0b429c0c71b6397049e55371af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0b6af951a95e2531034e6154155029750b0a68f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5183d721b43cde100800fa175069f29dbd762c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5d13061e18cfc53d9f2461084ae2d7ed3e387c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d519b87e37002490b47c4616b1a9b6c154dd4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf770f682ff67ae6e1c7b5d780bc9391b08eb6eda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x92e6e43f99809df84ed2d533e1fd8017eb966ee2`](./contracts/ethereum-1/0x92e6e43f99809df84ed2d533e1fd8017eb966ee2/) | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfa23b8f9062369b21049b9f4a4ce79d640d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328`](./contracts/ethereum-1/0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328/) | AuraBalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3`](./contracts/ethereum-1/0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3/) | cow_harvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63f0797015489d407fc2ac7e3891467e1ed0166c`](./contracts/ethereum-1/0x63f0797015489d407fc2ac7e3891467e1ed0166c/) | CvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6788234f40931ca615b0d221c1afbf0ec07afcc5`](./contracts/ethereum-1/0x6788234f40931ca615b0d221c1afbf0ec07afcc5/) | CVXMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | DelegateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56e9db574c8d5015d198671cbf1200b6bb2ed944`](./contracts/ethereum-1/0x56e9db574c8d5015d198671cbf1200b6bb2ed944/) | DistributorZaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76`](./contracts/ethereum-1/0xbae47cd0e2f0f687f4ef78f972af13f6cf8f2b76/) | ERC1155PresetMinterSupply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1`](./contracts/ethereum-1/0x7a3d81cfc5a942abe9ec656eff818f7dab4e0fe1/) | ERC1155Solmate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22530d384cd9915e096ead2db7f82ee81f8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | FeeAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | GenericUnionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966a2f2dc3aff00965c6eccf6290d0d402fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb192908e533fc64109a20ee7d056175a24f17a55`](./contracts/ethereum-1/0xb192908e533fc64109a20ee7d056175a24f17a55/) | PCvxZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/) | PirexClaimAll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed41c3402c4b62777939b7334b4d3d2407517ff9`](./contracts/ethereum-1/0xed41c3402c4b62777939b7334b4d3d2407517ff9/) | PirexClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35a398425d9f1029021a92bc3d2557d42c8588d7`](./contracts/ethereum-1/0x35a398425d9f1029021a92bc3d2557d42c8588d7/) | PirexCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x783c13b94123ccdcc5d597deb93a69983e1d4a51`](./contracts/ethereum-1/0x783c13b94123ccdcc5d597deb93a69983e1d4a51/) | PirexDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b0dff589fc0acac23581ecaff5688434db0720f`](./contracts/ethereum-1/0x9b0dff589fc0acac23581ecaff5688434db0720f/) | PirexFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8ec7d444c88ba3afe96978854645c43bd5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | PirexMigrationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5053371da4ba1f6c65e61a4bba86cedee49733c7`](./contracts/ethereum-1/0x5053371da4ba1f6c65e61a4bba86cedee49733c7/) | PxCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a893bb0f62e0a4a5e104753dd88fe1773165787`](./contracts/ethereum-1/0x2a893bb0f62e0a4a5e104753dd88fe1773165787/) | RAAC CoW Harvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f6ef027725df44cebbf1efd25d3e1df3740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/) | RAAC Stable Vault Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eef8f6a259cbbc939ba29cdb009abef8275b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/) | RAAC Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a8749896ef4185a26a2a23f04f722c157288ba`](./contracts/ethereum-1/0xa3a8749896ef4185a26a2a23f04f722c157288ba/) | raac_vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4174b1b21b41fbc616b754552fcfa66ebf8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ReUsdSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | sCrvUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b2b51f661e269aed638a5ddbf2fc930125690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | sReUsdDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b`](./contracts/ethereum-1/0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b/) | stkCvxCrvDistributorZaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8`](./contracts/ethereum-1/0x2c5e808fca6d8299ce194e12ed728f0fdbbf06c8/) | stkCvxCrvMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/) | stkCvxCrvVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78`](./contracts/ethereum-1/0xc8d1335d18c0ef56a00dbb8b7a639183ee1c4d78/) | stkCvxCrvZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | stkCvxFxsDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5682a28919389b528ae74dd627e0d632ca7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | stkCvxFxsMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdd9e5dc0c83795f5c114e2b27926194035386d`](./contracts/ethereum-1/0x0fdd9e5dc0c83795f5c114e2b27926194035386d/) | stkCvxFxsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f409ec6f395493ad39f5b27945f1a6658a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | stkCvxFxsZaps | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3`](./contracts/ethereum-1/0x0cb569209d5d9eeb40b24c5bb79d3184e75528c3/) | stkCvxPrismaDistributorZaps | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf09320ed7db384cab7fce9ea9947436a806754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | stkCvxPrismaMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c3b252c01225fdf3017551f39668c9b6599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | stkCvxPrismaMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | stkCvxPrismaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6508ef65b0bd57eabd0f1d52685a70433b2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f97d07dab04b21f36fa3b1149c35e316b35d03`](./contracts/ethereum-1/0x45f97d07dab04b21f36fa3b1149c35e316b35d03/) | UnionPirexStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8659fc767cad6005de79af65dafe4249c57927af`](./contracts/ethereum-1/0x8659fc767cad6005de79af65dafe4249c57927af/) | UnionPirexVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83507cc8c8b67ed48badd1f59f684d5d02884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | UnionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed`](./contracts/ethereum-1/0xd52ca71aafa4d2590aac1e35e3005242dd31e5ed/) | UnionZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18b79cba3ff6f6120eec4b01781d343cc43b73cb`](./contracts/ethereum-1/0x18b79cba3ff6f6120eec4b01781d343cc43b73cb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
