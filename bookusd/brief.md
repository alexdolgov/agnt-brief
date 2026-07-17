# Agentic Audit Brief: BOOKUSD

## Project Overview

- Project: BOOKUSD (`bookusd`)
- Website: [https://www.bookmemebsc.com/](https://www.bookmemebsc.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.727Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc
- Contract surface: 142 unique implementations (167 raw deployments)
- DeFi Llama TVL: $28,946.37
- On-chain TVL (included contracts): $83,638.83
- TVL by chain: Bsc $83,638.83

## Project Description

CDP. Structurally: 46 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 14 common project-authored base contract(s) (checkcontract, liquitybase, basemath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 226; live-surface contracts included: 162 (41 live, 121 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/18 (22.2%)
- Deployed-live implementations: 21 of 142 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 142
- Raw deployments: 167
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $83,638.83
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 19.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BookOfBinance | unknown | bsc | n/a | [`0xc9ad421f96579ace066ec188a7bba472fb83017f`](./contracts/bsc-56/0xc9ad421f96579ace066ec188a7bba472fb83017f/) | ✅ Audited |
| BorrowerOperations | core_logic | bsc | n/a | [`0x91fe1533b5e33a89e37a2494ce1bef74081c0814`](./contracts/bsc-56/0x91fe1533b5e33a89e37a2494ce1bef74081c0814/) | ✅ Audited |
| RedeemProxy | unknown | bsc | n/a | [`0x82fa44be42596119406e45d4d9653a3e8a0b2ef6`](./contracts/bsc-56/0x82fa44be42596119406e45d4d9653a3e8a0b2ef6/) | ✅ Audited |
| TroveManager | unknown | bsc | n/a | 3 deployments: bsc [`0xa33bd424ef456af316698963506d069c2d546af4`](./contracts/bsc-56/0xa33bd424ef456af316698963506d069c2d546af4/); bsc `0xbcb000d13b7bd08d02389cdbebbf357f58faeca4`; bsc `0xfe5d0abb0c4addbb57186133b6fdb7e1fad1ac15` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LQTYToken | token | bsc | n/a | 2 deployments: bsc [`0xafea16a14742f10cc5f83bd358e4a9d38718e00a`](./contracts/bsc-56/0xafea16a14742f10cc5f83bd358e4a9d38718e00a/); bsc `0xfc35bf79270bcad22ce7dd5651aa2435fce9b7c5` | ⚠️ Unaudited |
| LUSDToken | token | bsc | n/a | 3 deployments: bsc [`0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217`](./contracts/bsc-56/0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217/); bsc `0xc28957e946ac244612bcb205c899844cbbcb093d`; bsc `0xd4a1a6910eb008125ad226a19842d0d56d770173` | ⚠️ Unaudited |
| BurningBooks | unknown | bsc | n/a | 2 deployments: bsc [`0x3f669d02b58c2e35e273c7a5e2b8ee83a6b682f7`](./contracts/bsc-56/0x3f669d02b58c2e35e273c7a5e2b8ee83a6b682f7/); bsc `0xe8ead87c73f93b88099631134d0f70c698a4c67b` | ⚠️ Unaudited |
| FarmFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x6ddbd1329d093c244cf8ca272530f3947d237a5b`](./contracts/bsc-56/0x6ddbd1329d093c244cf8ca272530f3947d237a5b/); bsc `0xbb0e532ddd62b98236a6fc7f37f6735031c55610` | ⚠️ Unaudited |
| LpTool | unknown | bsc | n/a | [`0x466eaa98d1e6fa238309a5795ce51038614c353d`](./contracts/bsc-56/0x466eaa98d1e6fa238309a5795ce51038614c353d/) | ⚠️ Unaudited |
| LQTYStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x73317c7d55bbf7306339cf8423a83e29a8f089f8`](./contracts/bsc-56/0x73317c7d55bbf7306339cf8423a83e29a8f089f8/); bsc `0x7449590f197115cad9a9a120039273f116922c15`; bsc `0xd8ec53945788c2bc8990828a46fb2f408d8c3a17` | ⚠️ Unaudited |
| MintStakeShare | unknown | bsc | n/a | [`0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f`](./contracts/bsc-56/0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f/) | ⚠️ Unaudited |
| MintStakeShareExpansion | unknown | bsc | n/a | [`0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2`](./contracts/bsc-56/0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2/) | ⚠️ Unaudited |
| MSSNFT | unknown | bsc | n/a | 2 deployments: bsc [`0xc1f0c9094d2014306a5782d280a76df49bf90d3b`](./contracts/bsc-56/0xc1f0c9094d2014306a5782d280a76df49bf90d3b/); bsc `0xc8b33631a806b7ecb9d62c1422c20059f2153846` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | bsc | n/a | 3 deployments: bsc [`0x5ad54cddeac8dab5efe01c763144b08465fc6a11`](./contracts/bsc-56/0x5ad54cddeac8dab5efe01c763144b08465fc6a11/); bsc `0xa6de87af4b4abe5256417d921363ee34ff28f880`; bsc `0xf6171643e86a7b56ec9292399177f182c97e7bba` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | bsc | n/a | 2 deployments: bsc [`0x279e63c7f2243500cafce8b3f510bbe6dfdbde6e`](./contracts/bsc-56/0x279e63c7f2243500cafce8b3f510bbe6dfdbde6e/); bsc `0x33afd795cc5db5fa42f165b273bdab06b1b79195` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 4 deployments: bsc [`0x0a337dbef40e9d79bc5ad39415ff817b1e3b7abd`](./contracts/bsc-56/0x0a337dbef40e9d79bc5ad39415ff817b1e3b7abd/); bsc `0x4b556f3a476b58be7f35df77edd68fbe5076f706`; bsc `0xb6cb06ddd3539f696454315d8bd741446af35fb5`; bsc `0xd2e1e1fe136d0cb13fb9b8cc2746e365e0e71183` | ⚠️ Unaudited |
| SortedTroves | unknown | bsc | n/a | 3 deployments: bsc [`0x2e658e118886b2c176fc53b493322b6fc5215edc`](./contracts/bsc-56/0x2e658e118886b2c176fc53b493322b6fc5215edc/); bsc `0x7b5d6ae238467f4a5018f7d3ed6a09ba39e10da7`; bsc `0xf0723734e19920ab778b4ad5590a889c231a65e4` | ⚠️ Unaudited |
| StabilityPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac`](./contracts/bsc-56/0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac/); bsc `0x492f6212612ab7acdd4b6fd3350ef9d6b1f256a5` | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | 2 deployments: bsc [`0xc6d635e0cc999e7032d7bf07dd047d3e5311872b`](./contracts/bsc-56/0xc6d635e0cc999e7032d7bf07dd047d3e5311872b/); bsc `0xde5caed8811463e823f6465d04ba39c36a156d2b` | ⚠️ Unaudited |
| Swapper | unknown | bsc | n/a | 2 deployments: bsc [`0x224b5431a3a229056a1393f8a681bc28351aeec3`](./contracts/bsc-56/0x224b5431a3a229056a1393f8a681bc28351aeec3/); bsc `0xd3e6e2ac2734549fc839042029595784956ae3d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 5 deployments: bsc [`0x7a14b072636ebab2c957fc3dd7facbc8b070f780`](./contracts/bsc-56/0x7a14b072636ebab2c957fc3dd7facbc8b070f780/); bsc `0x7c8c6af12caa246f9cda7140bbd761199f7d656d`; bsc `0x98b9c5a163c61563758481d83c917b61a131a874`; bsc `0xcc0cfb4af0b0ae4a0644c26e4b74c5e4b9685ae5`; bsc `0xec16f1fe2b9640a7bbba2a7b2bf36e82fbcbc1ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0034b55c3201a0308eb14187cea6535ac1437eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0140559c1eda8624b0d915009ea29cc54dff40f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01a0f72b448a593332e076709cb7d326d87146ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01ed2e81322e3a3879a92f3bbd0430bc26247d6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067b5dd348b5397e5c88294badc32c5eb0dcf0e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d5515f2ce1b9e02940f39ecb1214f645a91798` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09975413d7bd48024f37a4b7755e10a64aa2a9b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09c1634103a395f62b3f6c7d82e5f90e85b9eb3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a7365d92c40bfbbdd44f98c7ee6d2ebbdc7f607` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b8710f5d24c4fdffaeee6b454dd31a6090c062b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d8d21da0d96da44d98665f4ddc5f16b8a78bdf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f65bd3da2d54b9c863b7f1d5a8ea1fe4679d5a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1338bf39825371f1722f2757d6042fb15b366cbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13a564982647cca1d3a9fefe0086d574cc6f1c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13d938c4e29fbc860826bc23fcc8ad3b7bd1c6d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13eac4a9a748500b97e4fdd06bfc5da87a0d7486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ec3bca2de8efe825997cf7590b95b0c32e162e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ef3d11dfe96f556505b249652f8c5ad469889dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20531c3ed66ba054f08df25eaca3100c95121f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x221da6f5d93f4877213fb524c41b1ec49d7e6048` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2abe9bdca2383a698c349c577082927d61702765` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c2f24c54498287494956ca89b101dade24e68e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fe420fed8c12ad719b0e78e6be60c5538907796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33b1ebbf9e54182b698e6251da10c3c83c5e102e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33bf658d71fa5e5557e8d7eea608c5f28737587c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x347e5a6ccf760e443567c0ed5df88b914216def2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36ed0ab42645532b01f2c250cb3fca109eae4ad9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x388ca09490510214d7ca1c427d8376c8a22350ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39449cbf3888ad0d7868e700cdd034d8840f0ec4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x395ed7726b8f30fc8d42ca09402f763a4e3d0df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a2654f7b4fbf34918b4dea194e5bf009b6699cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d32d83175eb52de496efcd771e63adbcf0cfa59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40ef15f2d2ad19b7f8d8d04b350f690f2e0bccee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x450d0782c8d2043d1fba2d72b9a2bfa05c1a9e52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47de1456f79be8f55e052b4adf5ca3843fcf33a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4beb0eac8bd116ec38a8489559d4ca2d73367496` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c299cddf27a6314fe7bd83f82973c0e9152e26c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ca2bc32f84b9ec9e3e71557c3ed8e3a9ea7154b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cd3f0069a53cb44a65cd0c5a9d1e1bf01320a09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x501a64dbe99663ca03b809428b9c67ca7c46f5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e6a8b134271311e39b4750661be5b41fe6619c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x542323412da6620c491f445828000feae52e6fb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54f71080b2b2d0deb3c3e462f06199709b09b2b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59d79fabc157f85fdee0075a77c349009f2e5571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59fa102209e1f6a72391f4be12195b23bc3a640a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5beec4a92abd584a794f079c0792a0d70e9fdaf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d6fd6ba74f3815f0767cd70d6d9af3ead7ae0d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d8393ccdd05d7a3419b3e30bb663e5b07b9a791` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e1d142bd15df8dd5af7daa3757585f5993c97ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6179e4f40097a3c4cfa31dff799826226f083787` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x622ea7ba9533a7cd2e11688ff7c2fda16ea04571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63fa5a9bcd35cda9954ffd15be0ab5af858554f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65892cd152f798da9d4084c57ac11de6833383b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6696ceed27bbfa8b999c13e2ceff86fd1f5ada52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66cd7980a458f6fa4a3c63ef23db01256fc2c7dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f251aae89a05fb9b8ac3d75c8eadc1189978869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7085835fdbe175e28da278ea636909ab93aedb91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7090995e5793bff1ae5b42f832d507ff1ec9545e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7639cff8b28859853f759140b7bd813ed5f69810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77103741aa8c28c358497eb02e5d0e7a5907ae7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77533b9dc4d674c549460bf04066e25ee90e132b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x776a4083c7d9b45e1c20101f7b453b1d251d5aa4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78f9336237a2dd699e6a2ada22845e6f5c4e78a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x792e0ec7af5a38d3202c569c3dd72f59e124295e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x808ba4b54d78675e03d67799b5ff22a4d7e82c52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x814328dfc859450238f372bb3a6d07ab14c07ac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81c76eb1240d06fac49de256d7a5d1624b936e5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82b0d07696b3d8ab7cfe92522071f35bed8aace7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82f99d5cb47771fb0b7211de0f2022de5de6c01f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83c72c8b49929fe554f8688732ce2cccf04f3c84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86f9cd154c4647998900f44afc2a9d3ed33957ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ddbb20eb87be0bfcbf8c83e35422a4f25ebbd16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91a0206733bac16057647a883eca16b0ef1b6311` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93b5365ad8d0ea91e81fdd1424f37272ae609c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x981b9efaad20774605aab4d257fd9eb06e831ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c83e3b8fccf0507c6894be91e60c9c0dc4d1b3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d1abe97b1931f5a5a5435e5e5fda867d5ac5042` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d26fbad355cbfae37ff6b16cae1f707026b2c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a78afcf519772c5dc8cca32dc5dc27a77f7aef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa13391d636ec48868467b30977bc90422ec7f038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4271bad8ac5a0237ea2ef04bc8545c7a86cf8d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7fb2687bdbdc023ea70f58c9cbd092ff2383fe4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa814eb55d92ddda7d91c127a17069fa048d8408d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad87f93f47895bc205bd97985f741e731a84ce15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7b7db2a6e66c13cc59cf07f1d84928bf60b23c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb21e803c15c1e49c58da9d531ad7a46ea23a85e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2eb2cdda0fd1d03228b6cf6fbdd69230dc12e32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9ba0f24898cd341e0d849f9d71be0ea28a1a3b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb6d5ea5557b8bb2aee8b708d77235a6ce5e6dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd2272e2b72187ea7abfaf9c5b00bffcdf724fb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc27377c6fbd1abef80c0f5c800fd386b4b2d2d11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc28aeb844c8941f571dab4dc0ae7f8b39bdd0e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4d8fd64829bab1524c3c2819172353f5b0497c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc2b96d829adecb14a9ab377ad14c9662e451873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd5c370475f109d153604684dcc7145b44cde199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce1ca5039c18d3a068444ae30755fa731b3a58f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd18d07b484f7752977a3f0fbf807075a9d289095` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23554b7bd3564ec916ecbc9be957a87a1ceba6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2da7b8d8484a4ff2df14591d9881291b39dce7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4077775da1166e095c281b2bb7892cad316574e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5f4f2062cb56f7f657d3d183a74baa5d3621e15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6e7701a5f93190d4d5a50f7a4a759626d0aeb0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd838e65349a91584cb6e7561e937d4b1dacf04b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8a52f49421a5af90ff9156a671faa1aaa93a4c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9a1c4129729395b7ca132f64f18d27c3fc25bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad8cb26e1b0eb0b6ef43a74a15db6603cb12793` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3bdc629640f02367250cc47d306c1ace05e5e60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5370a334d32c665db58f5a386b217f8195c15b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8215468b9377b2173b5896876b4747855c8f005` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea76ffbd519497501f1680899f1e8c9bc702a791` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeec0927a8ec985e3f6d7d7a31fcc7ca3476bb411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef3192f0c39ee4a3e72668eebe81953bc516bd35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefa40ea12565bc51446b0d1cf092e988baed48f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0e3a97ec34b180747dffc4ec4d9a4f9d0c1ec49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf21e066d299191af93855852b4f0aed7b02782dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf581cc3193c0bc2fc8db1cf6b8e77f3e306350ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84b4be1297925242d96e86ef970514689a8c806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8e9f12d090b901c26a114da64fc2f3a986cb48d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfabe94f5453f1fc82b23c5bb37e60998244de948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe8d5cc075de9154edcff349e975dd93bb8b4743` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffc1d3f3adcb2c2f6b65d61e7939bfd85470cbd5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BookUSD-v1.0.pdf](https://github.com/BookMemeBsc/bookusd-contracts/blob/main/PeckShield-Audit-Report-BookUSD-v1.0.pdf) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217`](./contracts/bsc-56/0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217/) | LUSDToken | token | $41,705.78 | Verified native implementation with $41,705.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f669d02b58c2e35e273c7a5e2b8ee83a6b682f7`](./contracts/bsc-56/0x3f669d02b58c2e35e273c7a5e2b8ee83a6b682f7/) | BurningBooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6ddbd1329d093c244cf8ca272530f3947d237a5b`](./contracts/bsc-56/0x6ddbd1329d093c244cf8ca272530f3947d237a5b/) | FarmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x466eaa98d1e6fa238309a5795ce51038614c353d`](./contracts/bsc-56/0x466eaa98d1e6fa238309a5795ce51038614c353d/) | LpTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73317c7d55bbf7306339cf8423a83e29a8f089f8`](./contracts/bsc-56/0x73317c7d55bbf7306339cf8423a83e29a8f089f8/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f`](./contracts/bsc-56/0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f/) | MintStakeShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2`](./contracts/bsc-56/0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2/) | MintStakeShareExpansion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc1f0c9094d2014306a5782d280a76df49bf90d3b`](./contracts/bsc-56/0xc1f0c9094d2014306a5782d280a76df49bf90d3b/) | MSSNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ad54cddeac8dab5efe01c763144b08465fc6a11`](./contracts/bsc-56/0x5ad54cddeac8dab5efe01c763144b08465fc6a11/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e658e118886b2c176fc53b493322b6fc5215edc`](./contracts/bsc-56/0x2e658e118886b2c176fc53b493322b6fc5215edc/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac`](./contracts/bsc-56/0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc6d635e0cc999e7032d7bf07dd047d3e5311872b`](./contracts/bsc-56/0xc6d635e0cc999e7032d7bf07dd047d3e5311872b/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x224b5431a3a229056a1393f8a681bc28351aeec3`](./contracts/bsc-56/0x224b5431a3a229056a1393f8a681bc28351aeec3/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 122 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
