# Agentic Audit Brief: Hashport

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.327Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 13 unique implementations (161 raw deployments)
- DeFi Llama TVL: $925,077.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 25 project-authored contract(s) across 7 chain(s); 2 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 292; live-surface contracts included: 161 (151 live, 10 unknown).
- Excluded by liveness: 131 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 4 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 13
- Raw deployments: 161
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 3 | 75.0% | n/a |
| unknown | Tier 2 | 3 | 75.0% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Router | adapter | base | n/a | 3 deployments: optimism `0x6da4e99b62b8d910e1688e34121cd8d50b7c0c3e`; moonbeam `0x617d29b4bae43b3aa3d63b7f61177600036d2f6b`; base [`0x0f3414b61b902513e04e76ca4d1a7b003d09f54b`](./contracts/base-8453/0x0f3414b61b902513e04e76ca4d1a7b003d09f54b/) | ✅ Audited |
| RouterFacet | unknown | avalanche | n/a | 11 deployments: ethereum `0xf9fe427563b12ec644e79a42b68e148273942b34`; optimism `0x3347f15601be15f426689d652794f64fd90e7a6e`; bsc `0xcccaffc62f0e9f3a59a9e42946203082143e981b`; polygon `0xa2f8f68d5d83f90b8401990196d0c233dc0d4d7f`; moonbeam `0x6bb0702d9d671da492fea9368733dca4a62fa886`; moonbeam `0x7741a15a5ec59085f3cf2b5c90e3c556222f7cee`; base `0xd9cde0457e04f0fc9a5a9fd314fd185d00ef42e8`; arbitrum `0x73d0da54fc9716e9895f3a02048e46ac792cc899`; avalanche [`0x2e195f12e4d049126f9ffb9a57782d730c4de6f7`](./contracts/avalanche-43114/0x2e195f12e4d049126f9ffb9a57782d730c4de6f7/); avalanche `0xcccaffc62f0e9f3a59a9e42946203082143e981b`; avalanche `0xd050edc322915341baf5e8e9e1dcd25c92db11cc` | ✅ Audited |
| WrappedToken | unknown | arbitrum | n/a | 135 deployments: ethereum `0x0e9bf2aa9d50f4155f47625ec2cfbb08fd8e72cf`; ethereum `0x13ceaf35d3c48bc63a26361852ee6d229c503369`; ethereum `0x16d0b8ac8022e54947e0dc7d8a5b5a79e2b54f0b`; ethereum `0x1f7fd18926a9646f4ff62952706dfcaed7b544bb`; ethereum `0x23cce5bc29d30cb69eaa4f6cd58b4b912c520546`; ethereum `0x273d437c391d4eca926f482cb66a2a13f2051c18`; ethereum `0x2aeabde1ab736c59e9a19bed67681869eef39526`; ethereum `0x2e6fb7fe03ca394ce11c040f4ee8a1ffadab422f`; ethereum `0x2f3afd7373f6dd960afd083fb2f0ac2303285ef7`; ethereum `0x3b930b1248e902367ff36860d256c87244016ccc`; ethereum `0x45c82a92b1b502ecb5e8061d4ba97477813b764d`; ethereum `0x7158b89d2e76e4f4f299dea53d74d2675df1e54a`; ethereum `0xa32419c815d58bc6f51781b555e65eb641ddd824`; ethereum `0xa6312d2ce2724b68f7c426a0d6eddabdadbdde48`; ethereum `0xb418223050e06bde731e9a903ea5806cd35d70c7`; ethereum `0xbd09be64774042053f084df5ac9f394c290c2558`; ethereum `0xcc944ce7aee3f2fd39da5e71e4e725becd28af61`; ethereum `0xe2d48a96d5eef8c432eb407f9b5e3d14712726af`; ethereum `0xeebd1eeeed96834af8fa1499e895e8ff245ae426`; ethereum `0xf6a72caf13029c18c90eaaf93f18a0b0e3592b97`; ethereum `0xff77067a8f093463c53e8d3f84b253f08b998167`; optimism `0x1d299fa77d3f52418448eba69ffa25f957ffd401`; optimism `0x21b82925826a1ea73f11549fcdd9282d219114cd`; optimism `0x2cbf04cf1f0713eaf78b039724b6fa735e671dcc`; optimism `0x2ea0a6edb6a28e5de8c42d8497969522de4cdc99`; optimism `0x52cfce488453841d5b333c11777030e699f29dac`; optimism `0x73fa28a574f8b7ad9a506a6ccf3fe5cbec3b0e1b`; optimism `0x7fa8107de5041209178c897375673ff09ef372ff`; optimism `0x92c30a32175b39be2131cb15ea158a3c2610d7c6`; optimism `0x9ca4ee570c167b1332eeb9c3721285db7a0699a8`; optimism `0xb4e73a9ff23e1c90e5f445e156cac810fe2d5856`; optimism `0xbc41ddefa252e86c983cfaed22838e175ab50a69`; optimism `0xc2c4e4e513de4d840874876ca64b35b432e833b3`; optimism `0xc3fbd800813d1d4848422614ab6e22739e7c0128`; optimism `0xd91ff310df12fbb9d4c77a55beda0367e2244ca6`; optimism `0xe11ec1e793ff3c0606f02d9151af84b9c8a9e956`; optimism `0xe15b6305504ae8a172c97afe7bf8326d681ea65e`; optimism `0xf4b6e087275711046d19bb18b2f3e18b1abd2b32`; optimism `0xf6daa62cf94845f57f30fa590c97a390251f1659`; optimism `0xf792ff88fdce0bbbae29a9b55d7577d5bcb4245e`; bsc `0x08707eaefcc344ad35bd35c5ff5691c2d3db456e`; bsc `0x1675b4ef9be27e399500a5e735738c0c264355f9`; bsc `0x1bb2191ff6f49ba1008398bc9fa882db62c878b9`; bsc `0x1f9f0fe7db0aebce6543cb4f7d6c47e2a43cd2e2`; bsc `0x3881db10c5051325bf29aff95c0ff7d57af431b3`; bsc `0x4e7ff40dfbc8ab76fca8c60b4fb87e049b868ff6`; bsc `0x58b4591a3fd16041f28686098431b1374c3bb789`; bsc `0x5b9f053596f04a47b289f2dc33c1966b41d8977f`; bsc `0x6a7f89e895ecdb9955533119f24f922cd9d25474`; bsc `0x7622c26b05e8392830f8b342f29a4544102609dd`; bsc `0x7b173deb33ae82f256445d620625ef731ce9b39b`; bsc `0x8d27bfb87a0b7f6eee18543aa341bc6dff5566af`; bsc `0xa2e4395cd42ef7f3a41d02e4ae10aa5a3c240119`; bsc `0xac41bedf22bcd4fb3534c01d64bb6535bbb69529`; bsc `0xd8f3cf9fc5f1eefde2bcc6c292f6da0042c4e5c1`; bsc `0xe0ecf8b3fab0d379f18117e5e9f8b1e0e7566b66`; bsc `0xe932b880fa267ed7d0e0c80590363532c25d4a47`; bsc `0xf839c319b760a52eeadfef3b0f8060a34314110a`; polygon `0x28dba92350a099d7e43ffc63043073733ebd6d34`; polygon `0x2d2101e723d00e74b858ce9cc79c71ac9a440ab1`; polygon `0x3194138eb010566c7169e33e99bc70adf98bc5db`; polygon `0x3212bfcea233d996edae6574683b70fb4860042f`; polygon `0x346ba158c8cb2f9f8a21c3e4f75c02c63c19e55e`; polygon `0x59c43ed0c7d85cbda8683d89d4eb40c72b7e2441`; polygon `0x75771d2c0f1654866076c4a9b6b2dd9d121e67e7`; polygon `0x79103b27fc21c81f7c6cb5caff78901b45a972d5`; polygon `0x7998a96c269c6ecc001b9586ef346f30f8455aac`; polygon `0x7adb6295e6197d048a0edd1e0e6a6e8abdd71262`; polygon `0x8b4cae9af23eb752515a88497e678e9adff1753d`; polygon `0x8f3d0354b69ef9c911b3936c66fcc40c378305a4`; polygon `0xb98ce6b4c3148f30c24012ab5fc83c16ebcee369`; polygon `0xc63ec8d322351da57b13628f180a14bdec0a9e93`; polygon `0xcceadd0453fb970f622488a721cc0f57e38b95fc`; polygon `0xcddc03ecdc1cea44424079a43ea7c6a50f114ddf`; polygon `0xd30ed32f47c902636bc75d9804a6697b88ffeb31`; polygon `0xea85862303e9363c46b41a03f5342a14d0358c0e`; moonbeam `0x1e02a7c24219fe059a4263fd044d9726939dcb8e`; moonbeam `0x22c9b5fb2a0ed13ca918df73f2a56981d17a3f60`; moonbeam `0x2ca9f31de48297d645c88235461f430637bffcc2`; moonbeam `0x49967f416ada178eac9e40e77f4b523cf0dd7331`; moonbeam `0x4dbbe83aa01a3707126ffb9ac1671b84f347d8c1`; moonbeam `0x6a1fcc6f388b6c320e911a613a62277258f4300f`; moonbeam `0x708f96ab739548749e1e4effb027d541f4d18502`; moonbeam `0xad6bc171202d74251b94aa9578c6bd8ea1693bde`; moonbeam `0xd84eafa1d7b80a69b27844591192dbb9aad58963`; moonbeam `0xdab7779ba8b9d0c1efb9eaba41560f072efab699`; moonbeam `0xe32c01d807c2290fee75625cdede876a0a1c8ec0`; base `0x22833bd616fae02c369c40523c77f00ddeca5761`; base `0x2a6eb279117bfdcc069c3a272cd3911d88635162`; base `0x34598d8c74a307b8325ed4b71f842a3fb02c9d0f`; base `0x8419528dba6daf5d869e1d12a12e9523fe671bd5`; base `0x93aefc0a469ae85f85a53eb24564ee897ec9c333`; base `0xc5e8fec887a9906c54ceb8d55dc6bebd667febf3`; base `0xd3705dbcc4b578999f40cbbbeec0892643b7dc9f`; base `0xdc586c04873a477bdd4e499c5072593ed29bfe14`; base `0xde5806500084779d19f95b23489ec5f11ab8fa97`; base `0xfa77ca39eed8a67b6975e5aaefd24e9ec67e7167`; arbitrum [`0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e`](./contracts/arbitrum-42161/0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e/); arbitrum `0x148200c4d177b8decdc4bb78768e925bd4fc48a6`; arbitrum `0x31269bbf1bc50272c4f19d42d3a60a103cfa7c89`; arbitrum `0x50809611d8ce90c7315d5bdd7f95934d2d0bfcfa`; arbitrum `0x53a1981509fde8441ff1f1a91fbac31b65ecfd3a`; arbitrum `0x5a324ee2961550082bdb184bce27239953015da5`; arbitrum `0x5c173e31a35a2a0da2e0b44aba9d206a810bb19a`; arbitrum `0x6534f741fc1ecef23afdb0dd5cb3d161cb5247af`; arbitrum `0x6ce727f68669d505b55b3b9fd0afb7a4777cc171`; arbitrum `0x6fd9085167665f805d7a5714960841574bf3946d`; arbitrum `0x84b42028e291f0643e2061780f6c19200a226057`; arbitrum `0x8f005e2c3ed0decfc1a48182ccb6e5437680a6cc`; arbitrum `0xaca4683bd01e3d10f335b0d728264f23e48e0a55`; arbitrum `0xad4ff3ee9a97e6b3c9848e05d601f8b56f5f393a`; arbitrum `0xc12f1d8e4ded4126499d205d643e451eaf0ad58e`; arbitrum `0xe508b026410d4abecb24045be178c288b0cdc7f5`; arbitrum `0xe821c045f9149b44ef96f8054b9c6d94f4c89417`; arbitrum `0xeb7278da7926b1d9a4973621bc435c2dd4927d68`; arbitrum `0xed6c7a7b116876a4bf225cbf044681f070684fa5`; arbitrum `0xfa151ed98e189df8ccb9a82d755aea241e0facce`; avalanche `0x08707eaefcc344ad35bd35c5ff5691c2d3db456e`; avalanche `0x1bb2191ff6f49ba1008398bc9fa882db62c878b9`; avalanche `0x2e8db7f122fc55ffe60dcca08a3c9a3b3be15c68`; avalanche `0x2fd6446bdcb8578733c868a2bb2f03ea478fae11`; avalanche `0x30c74769ea97c6454e2a4d4e9d2da947c64ca1e0`; avalanche `0x3594913364de2154581171375d4a9cce7f947758`; avalanche `0x430eee5ee04ac875aee825cfeff92cfc76abf4d8`; avalanche `0x6bb7c894241e8304dd4354bb9ddc241017c88444`; avalanche `0x781aaf8af3ff77548800f06903a6c05b41b91a9d`; avalanche `0x8b6e25a65c35c93be14c6a2c81a657c977e3616c`; avalanche `0x8bcf393ea8838ac2a38fa9f1cfb032e4728ec479`; avalanche `0x8d27bfb87a0b7f6eee18543aa341bc6dff5566af`; avalanche `0x945ca41d03ec19b6a6ebf2ef0f4d0a50b23e4f2c`; avalanche `0xb31c96599dd241a03464247ae009c17c423c35b6`; avalanche `0xdbaf534ac33f09745d0e9dee60563a3011d1c0b5`; avalanche `0xe0ecf8b3fab0d379f18117e5e9f8b1e0e7566b66`; avalanche `0xe932b880fa267ed7d0e0c80590363532c25d4a47`; avalanche `0xf839c319b760a52eeadfef3b0f8060a34314110a` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RouterFacet | unknown | bsc | n/a | 2 deployments: bsc [`0x2e195f12e4d049126f9ffb9a57782d730c4de6f7`](./contracts/bsc-56/0x2e195f12e4d049126f9ffb9a57782d730c4de6f7/); bsc `0x9021926be887355b76e60f4148ebb6b3f1ffafcc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x14ee6273a3a1d7079e945ad103bda9ade7c9b022` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 2 deployments: cronos `0x36daafd7c305677905a643cf1a0c74a281c6413c`; fantom `0x475b21ade54b9494d8201e0330ca7994081f4e0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87f640abd4473fe9e762cd6bc3aa1206ebdb3903` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ee2277a673e57df78c825797a4d85a02f46fc5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2aa7591ea5445f1fcad66c0db92d31fe3fff50a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaebcaeafb7c9c68acc1ad5f60b5c2a061f3e3f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfce733b381d2f7ff9377489b1bbd5f8d265322c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a9240784d305d6c141df3191ee13444cd0d8d90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b9f053596f04a47b289f2dc33c1966b41d8977f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [omniscia.io/reports/limechain-hashport](https://omniscia.io/reports/limechain-hashport) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [omniscia.io/reports/limechain-hashport-round-2](https://omniscia.io/reports/limechain-hashport-round-2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [Hashport-Smart-Contract-Review-v1.0-3-1.pdf](https://www.hashport.network/wp-content/uploads/Hashport-Smart-Contract-Review-v1.0-3-1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2e195f12e4d049126f9ffb9a57782d730c4de6f7`](./contracts/bsc-56/0x2e195f12e4d049126f9ffb9a57782d730c4de6f7/) | RouterFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Fork inheritance lineage and inherited audits are included when available.
