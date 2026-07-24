# Agentic Audit Brief: GullNetwork

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: GullNetwork (`gullnetwork`)
- Website: [https://www.gullnetwork.com](https://www.gullnetwork.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, ethereum, manta-pacific
- Contract surface: 80 unique implementations (80 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $157,251.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GullNetwork. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across manta-pacific. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01b4455710cfc743056add3ec1c2bac52fd2d460`, chain 169)
- UnnamedContract (`0x1266c32ca48013a79694efab4622f6349edc8510`, chain 169)
- UnnamedContract (`0x15ae4df50629060031cd50514a0458e4b2277d13`, chain 169)
- UnnamedContract (`0x53edbd3da00e07a98e2d28df37f441ac8e039bd8`, chain 169)
- UnnamedContract (`0x5c6e3db777502b6b0708ca2c0136bfacd804d617`, chain 169)
- UnnamedContract (`0x857c6612c45a2f612d561b474e00c3fe16f4bc0f`, chain 169)
- UnnamedContract (`0x85fa37bcc4036f5a4f773ba21f1a424be694263f`, chain 169)
- UnnamedContract (`0x987d6c6907c4bf6174a89a2b8709184604717fb2`, chain 169)
- UnnamedContract (`0xa3c957b20779abf06661e25ee361be1430ef1038`, chain 169)
- UnnamedContract (`0xa503844730da7cb2defb3ae5b813e20ced27e0c0`, chain 169)
- UnnamedContract (`0xa7535cd4c944d84b7831925eaa447a4c2173d00c`, chain 169)
- UnnamedContract (`0xb1346ff891a74c4444984f1ce3cdb13ee787c1fd`, chain 169)
- UnnamedContract (`0xc686e0b5a823365f277d048e02ab681c5121ab46`, chain 169)
- UnnamedContract (`0xcdda6af3f904145b00f96a2f940013d1d7a7dafe`, chain 169)
- UnnamedContract (`0xec7d2dbf91acdbf43b376c47edeb369c4cf62ec3`, chain 169)
- GullV2Factory (`0x31a78894a2b5de2c4244cd41595cd0050a906db3`, chain 169)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 64 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 80 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 80
- Raw deployments: 80
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | n/a | `0x0aa43a13c09bc0faef6aeb3ba002bc32bacd3e4a` | ⚠️ Unaudited |
| GULL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9582b518d28dc65945f8151c25e44a4e80504205` | ⚠️ Unaudited |
| GullOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x617f1536dafd893994b9f51381f78875c86d2e95` | ⚠️ Unaudited |
| GullStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xfc6387f581d2a827f183a9ea68f07063f99744de` | ⚠️ Unaudited |
| GullV2Factory | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387234 | `0x31a78894a2b5de2c4244cd41595cd0050a906db3` | ⚠️ Unaudited |
| GullV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0c5d91e097a22e1454987652d7ccdb825f1ec462` | ⚠️ Unaudited |
| GullVIP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc7faab6408346dc5928e60556681f2359a551f77` | ⚠️ Unaudited |
| MantaGull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xccdb7b8e012d282a86a2a8e94e9351472774f360` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387231 | `0x01b4455710cfc743056add3ec1c2bac52fd2d460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0b4ebf26a98e08eada9ad4573fb4fe2e429cd3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x11000a494292dd2a7c22401419a01b1a0b6b1d26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387232 | `0x1266c32ca48013a79694efab4622f6349edc8510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x144dffc8a606ff8dd6f3f826ae5ead17fd24a019` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387233 | `0x15ae4df50629060031cd50514a0458e4b2277d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1fdeed1f958e5d7b4caf7188283da266d519b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x20d41b96598fb0f15fb1b30e3019effb54d7db30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x20f9f6450ab2ff20b391d7ee7f697e9a80b15613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2686294d6b1598691c231cd3ed352be519e4dc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x27228a1de79f6c4a9c196728ba6c7f0292b09815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x285b492bbc93023f9ca7d3007e46b411cbf3ab0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2a18164b5e84d9c1b03ddbb5a1982a35cf75e506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2b1fe5141f649592a15e781667d7e9e652a221b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x30ae5cf560811a2e5a464d077a08b9db714cbecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x325abd07e06317e6309f824145857673c8ff0340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x337d6095791714d90801672c0860882a891ed000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x35a6a66c79e38ac458f4ca664b33f224f8f9af03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x386550680d4f56d1f792f024064baf17c5105c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x40759fe61bf329c17e33b8abf83a1456b9f5a09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x43c1b610afa4fb2fa29e7caff02797b6c399d435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x468b5be7ed93d7e7191c8066d9366c936de671ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x4f2e24a4b5748ad4bb91ab61afb513abb07eb4ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387235 | `0x53edbd3da00e07a98e2d28df37f441ac8e039bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x54300855f885aefe6291d92267de588d2c2f1840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387236 | `0x5c6e3db777502b6b0708ca2c0136bfacd804d617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x63cb344b0ffe83a6184631b453756f5894125bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x649b7e3dff4de2cce02e8eb1751c9b2a60a565df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x6775d2168e4de7a9130701ea739809e460a35671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x6f054b8f7b591db1bfc6c9e35c0fe49b62524278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7061a7fa7b0ea652dc401a386d26446439941be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7b636f74059e3b153833bf5b92abdf63355f7019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7b63c33423dfdf7b90eff66c6434d4391c38e0d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7d9b8ac61e4983575c4649eef19fcceae5a2855a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7e84ebf3e23f1d5a76ccd75c6951444f38e88bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7ee015d44d18a104e679b9b0e66f0646435592e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7f6869a09ad8869a963d2c20a53e44ad187d8779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8124d4b2dd6c11e4a4881fdf72317e08f9721118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x83c554e60fa319b3521b51884908a574d5e405f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387237 | `0x857c6612c45a2f612d561b474e00c3fe16f4bc0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387238 | `0x85fa37bcc4036f5a4f773ba21f1a424be694263f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8e1fd9b34f4756571e30ab56969c8d97eff13949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x91e7d67938c4d72736941dc2728021c549ae3cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x92c9781cd8457063e058816641d87e30a1ceb9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x934f69bdad6a477421fd22857289c3d6c16defcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387239 | `0x987d6c6907c4bf6174a89a2b8709184604717fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x99a231c0d161b5e41339097b372de87587ad88b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9a000950ff8b47e1ead36914c8cd828ad613f66a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9ce8239cbc3a40710d6ac6cc980256f664e6f0dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387240 | `0xa3c957b20779abf06661e25ee361be1430ef1038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa501e474431a4ff5b3746119a8d28e3997c8d0a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387241 | `0xa503844730da7cb2defb3ae5b813e20ced27e0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa737051ed0046b174f21b28742e92888ae4378ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387242 | `0xa7535cd4c944d84b7831925eaa447a4c2173d00c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa9cbeb32b510755809a9f17e0fef365fc19c9f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387243 | `0xb1346ff891a74c4444984f1ce3cdb13ee787c1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xb567331e99bfae218735c9461fdc5eec03463862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xb59fdd64d0f8ec09bf531db1c0f66ca6818b28ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xba0e6deb9ea006c4c8c2d3af31fcc0195053cb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc0296a31f38c7ac20e5bdbe52e69993599ec8b1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387244 | `0xc686e0b5a823365f277d048e02ab681c5121ab46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc693e7ca813cec24235b6e8912a2ed51730415d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc79d9d43d6d7c1edf697ce0080c0a8e7b249c5d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387245 | `0xcdda6af3f904145b00f96a2f940013d1d7a7dafe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xd0103f4355c20e99174b72dc7c668be940e6e41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xddb3a64c7ca26c3cd5f09937353040ec77c42131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe18a2a424649b88abe2b803d81f73540385e0ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe79ad1aae046252b772b11ea5aa3b7f3264cc321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-387246 | `0xec7d2dbf91acdbf43b376c47edeb369c4cf62ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xedd1f9e4e8dcf79fcc22794c3ce0b8003a8b45db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf7480f88cebd2b743f2a45e5635c518c35949e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xfdc33c4bfb3962fdd19eb18670ce2598ab297cdb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 57
- Live contracts: 0
- Unknown liveness contracts: 57
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=57

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0b4ebf26a98e08eada9ad4573fb4fe2e429cd3a9` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x11000a494292dd2a7c22401419a01b1a0b6b1d26` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x144dffc8a606ff8dd6f3f826ae5ead17fd24a019` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x1fdeed1f958e5d7b4caf7188283da266d519b586` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x20d41b96598fb0f15fb1b30e3019effb54d7db30` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x20f9f6450ab2ff20b391d7ee7f697e9a80b15613` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x2686294d6b1598691c231cd3ed352be519e4dc1c` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x27228a1de79f6c4a9c196728ba6c7f0292b09815` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x285b492bbc93023f9ca7d3007e46b411cbf3ab0e` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x2a18164b5e84d9c1b03ddbb5a1982a35cf75e506` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x2b1fe5141f649592a15e781667d7e9e652a221b2` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x30ae5cf560811a2e5a464d077a08b9db714cbecc` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x325abd07e06317e6309f824145857673c8ff0340` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x337d6095791714d90801672c0860882a891ed000` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x35a6a66c79e38ac458f4ca664b33f224f8f9af03` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x386550680d4f56d1f792f024064baf17c5105c0a` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x40759fe61bf329c17e33b8abf83a1456b9f5a09e` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x43c1b610afa4fb2fa29e7caff02797b6c399d435` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x468b5be7ed93d7e7191c8066d9366c936de671ad` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x4f2e24a4b5748ad4bb91ab61afb513abb07eb4ba` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x54300855f885aefe6291d92267de588d2c2f1840` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x63cb344b0ffe83a6184631b453756f5894125bd1` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x649b7e3dff4de2cce02e8eb1751c9b2a60a565df` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x6775d2168e4de7a9130701ea739809e460a35671` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x6f054b8f7b591db1bfc6c9e35c0fe49b62524278` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7061a7fa7b0ea652dc401a386d26446439941be2` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7b636f74059e3b153833bf5b92abdf63355f7019` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7b63c33423dfdf7b90eff66c6434d4391c38e0d5` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7d9b8ac61e4983575c4649eef19fcceae5a2855a` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7e84ebf3e23f1d5a76ccd75c6951444f38e88bf8` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7ee015d44d18a104e679b9b0e66f0646435592e3` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x7f6869a09ad8869a963d2c20a53e44ad187d8779` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x8124d4b2dd6c11e4a4881fdf72317e08f9721118` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x83c554e60fa319b3521b51884908a574d5e405f1` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x8e1fd9b34f4756571e30ab56969c8d97eff13949` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x91e7d67938c4d72736941dc2728021c549ae3cc2` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x92c9781cd8457063e058816641d87e30a1ceb9a9` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x934f69bdad6a477421fd22857289c3d6c16defcf` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x99a231c0d161b5e41339097b372de87587ad88b9` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x9a000950ff8b47e1ead36914c8cd828ad613f66a` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0x9ce8239cbc3a40710d6ac6cc980256f664e6f0dd` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xa501e474431a4ff5b3746119a8d28e3997c8d0a2` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xa737051ed0046b174f21b28742e92888ae4378ad` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xa9cbeb32b510755809a9f17e0fef365fc19c9f61` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xb567331e99bfae218735c9461fdc5eec03463862` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xb59fdd64d0f8ec09bf531db1c0f66ca6818b28ac` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xba0e6deb9ea006c4c8c2d3af31fcc0195053cb56` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xc0296a31f38c7ac20e5bdbe52e69993599ec8b1c` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xc693e7ca813cec24235b6e8912a2ed51730415d2` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xc79d9d43d6d7c1edf697ce0080c0a8e7b249c5d5` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xd0103f4355c20e99174b72dc7c668be940e6e41c` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xddb3a64c7ca26c3cd5f09937353040ec77c42131` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xe18a2a424649b88abe2b803d81f73540385e0ae1` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xe79ad1aae046252b772b11ea5aa3b7f3264cc321` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xedd1f9e4e8dcf79fcc22794c3ce0b8003a8b45db` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xf7480f88cebd2b743f2a45e5635c518c35949e97` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |
| unverified unclassified | UnnamedContract<br>`0xfdc33c4bfb3962fdd19eb18670ce2598ab297cdb` | non_address_book | unknown | unknown | unverified | n/a | `0x37bd1bfc55d7337746fa9d8635488f74a7b62512` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [<>](https://www.beosin.com/audits/GULL_202404191729.pdf) | Beosin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [- [Audit]()](https://gullnetwork.gitbook.io/gullnetwork/contracts-and-security/audit.md) | unknown | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20492] <> — no match: Only one contract (GULL) is mentioned in findings and token info; no explicit scope table, but the audit clearly targets the GULL token contract.
- [20493] - [Audit]() — no match: The provided text only mentions that contracts were audited by Beosin and includes a link to a PDF report, but does not list any contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| <> | GULL | unmatched — not counted | — | Findings reference GULL.sol lines; token name is GULL; ERC-20 contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta-pacific | `0x31a78894a2b5de2c4244cd41595cd0050a906db3` | GullV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20492] <>
- [20493] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
