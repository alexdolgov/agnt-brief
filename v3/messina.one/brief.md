# Agentic Audit Brief: Messina.one

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Messina.one (`messina.one`)
- Website: [https://messina.one](https://messina.one)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, optimism, polygon
- Contract surface: 308 unique implementations (308 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,016,483.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Messina.one in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc74303104e4aa5833a59767d59e958f4a0f308d4`, chain 1)
- UnnamedContract (`0x008e05f850bc3c7f495ba05e70e92d33fb3930e2`, chain 10)
- UnnamedContract (`0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef`, chain 25)
- UnnamedContract (`0xfa5b25a3a2faf613285afe6f74ed9a81387164d9`, chain 56)
- UnnamedContract (`0xa3039a86408c859adcc618dc6bf00cafb13ff8ad`, chain 137)
- UnnamedContract (`0xc2109f2b4a31c837e0f987b47fb819b7b4311627`, chain 137)
- UnnamedContract (`0x0f7ba1632447ded5dd18ceb65755e3d36aff4587`, chain 8453)
- UnnamedContract (`0x537816fbb8ec6078fb8b51f3bc35d5444edcb361`, chain 42161)
- UnnamedContract (`0x201a2f5e03b83b542e617b3004379c8691254c0a`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 299 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 9 of 308 unique; 299 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 308
- Unique implementations: 308
- Raw deployments: 308
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (308)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389004 | `0xc74303104e4aa5833a59767d59e958f4a0f308d4` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-389005 | `0x008e05f850bc3c7f495ba05e70e92d33fb3930e2` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-389010 | `0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-389006 | `0xa3039a86408c859adcc618dc6bf00cafb13ff8ad` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389011 | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389008 | `0x537816fbb8ec6078fb8b51f3bc35d5444edcb361` | ❓ Unverified |
| Proxy (impl: 0x97bb8ce1db85a3aeef7292b5f02645ca0d3490ee) | unknown | project_anchor | own_supporting | 1 | polygon | unit-389007 | `0xc2109f2b4a31c837e0f987b47fb819b7b4311627` | ❓ Unverified |
| Proxy (impl: 0xd1ada3a8c21adf45a0d2d46decb68eb203a63311) | unknown | project_anchor | own_supporting | 1 | avalanche | unit-389009 | `0x201a2f5e03b83b542e617b3004379c8691254c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c0f1c37edbc92b1c23b350b89775b5324009b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0433cfaeb5bdb520156a44dbdc76213599ef3d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061ba30ab5bac5b2e5d3b9523d7102f0535f22d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ffd8d39115e1f48eecf68c92df379917fcb0058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1482039d0fc40ecc60a7f7c7050d000af8a6d79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16effe76955a7fd275bf347617bef4a22d9c5641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a184381f5e13724913054d1bdc38b3403cf734c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6efd8018c7a2b8309d03c1b170580543fd2674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dd93b0d9125b6d2bbaf89706ce4929dbedf172a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201a2f5e03b83b542e617b3004379c8691254c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204e85c09f7bbd80ea99f6793258a7420f371f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcd7c67cfe73043c41a28a3ed600e4d67e37080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x304dda2235601c7bb6006500130701bacd1214c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x306c928361d67edc78c832f0918adfefc80deccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30cb238a7af7ac2013d87e270548d6c78739300f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a44848e151de243e4ea7f02d9953c4f5ef95445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b7e414f8cc079947a7373cbce7672b4994bb94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3b7f62bf8a119eca3f1bff0d2a946bf331de89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4123ec1283fa50e84450d6c0b420821d6d6f0ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x416dcb81d2bd6faed980cd388e6487241d6c2385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42384b7a4d3a7be8a139a8c0a208347d6bb98419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4803055a6ae5b450d63d1990510edbf00c026677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7b30cb01eecb3055b8c6418deb2ffa0c9c0b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f30a551e5c51e926f5f2690247ac6044e32676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b5522cb9a05e0de88bed60aa105b81b03fe99c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f23432da2da120816ae033ee729541997eff75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e3983d55b0f975fa8be296c681459978c24a037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f82bc62232e74263da584987a93ca802e864d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb23258183ec5ec0585d713c8474b25f8015b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71e190dcddf95f6fe5e66e8e1e6616db5299158c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7227bdcf2b706668529991015023c40b958ef1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x725b6625f85d1113b17c24bad3123dc6a570dc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7309a2bbf9d67ea83092a92a9afd29b4d9f6dda7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7475e43c92e1c7b83e60f4292358ba06c7863fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78a40645e4bd124cf7eb041cbac4bf1109ed8a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a42bea3e09e12deed60761657f00dec083db39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9f2a0be2ac8c92ef35810287e8ffd50b730b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae10c38ded84dd8428ed1e82878c26b96ac4015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82a8bd9a53eb945b107a4a83f3504222e200d792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b1aa5cc114b20928734d6bfe47f876dfcfd36dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91687b8532bdc6d04a068336793770311df51299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94351acc87a32ab54ee9711baf961d74b724b368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97dfa22c6e77c348db7c24fb693bb8408a4e2992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d95f968323a4b9f831af7ede109d06fe749ece4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd19fcdabe9734bddd67160bce990ee2f3129d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97202c88be127fdf534ec69e2303b021c606412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa54fd261a6142583513c05fc5b262a6835e10ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac66a36a2dd878d60f629e636df59ad7f3eaad0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb20941aefdaea1d00ff398015af852b69791b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb299c4b63906a40067b85eb3184f506da0560be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5d022124b3e9f1289dae30e11ab964455aa698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc908703e09d579c8af18e7d5ffdf17657088789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf69197ffdd312a32548c9983323d1e83988577f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7842979a8778c3784d6b8579139e3ebdea6e69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3c09c07ed5371ca76511ad1ff4cf357d7dbc108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ec1e4ffa462c7a102a00e8e7259c74bcaf8998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ca7e646e17083abf3cb983c632dba83509c02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe094fabd7d4f35420bd125214d2c5d6af23995f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d3aa4be68896f91da4ede9517e95251af640e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed375fbc37345a608d4074805d32af9e424bc2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef091f3cf1457ea3da1f38f193ea1ff2c3d7b2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95ff7f4947fd6d98b12d8e7385e8dce4d7fe1b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaf6d5262946d050e4cd467a6c37c1a1746b30e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00346113973cb9db78ccaa522d671abe50f00a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07829ac5f26b807df18ca9469d2d27beaf126c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c975dbeaea8404ca0e1aea4121d65cb76a614c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a184381f5e13724913054d1bdc38b3403cf734c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f444e9fb735b2438bee3b841efea060d235abf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x204e85c09f7bbd80ea99f6793258a7420f371f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x279d94feba6304a4e5f98819541e3f5784ae030f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b97af8b9e6018e3ca457115130e7e7b76e25b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b3ef6345d23d8031ab1a65d6deafc7d7d4ecbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3cbeac5709043bce17f7eb224e300a6ac5f664dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x567c41d4b04a225056d6141c5485beec2ad419b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d55904943e32efc5a4d0022c489c731635862a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6621da29f31c31ee4d663419e56b86f74d6ec08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7227bdcf2b706668529991015023c40b958ef1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94351acc87a32ab54ee9711baf961d74b724b368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9893278dec6a65125feb07daedf7764be7d3d760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb04bbb08b204b7416ede4709cc6e30b44b761316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb26fe758461552d69cf6093de90aaac5bfbc48b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc7842979a8778c3784d6b8579139e3ebdea6e69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb9fd44231c8753a01f80048eba0531d069de409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd5ddb8b10ae5eebc2af7f594196170a26d1c133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe59228600938aed4a6e667457c32a15ea90f6f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-389003 | `0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c975dbeaea8404ca0e1aea4121d65cb76a614c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a184381f5e13724913054d1bdc38b3403cf734c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x304dda2235601c7bb6006500130701bacd1214c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42ed0089b64caa21952543f86122003321d0d600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x567c41d4b04a225056d6141c5485beec2ad419b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e3983d55b0f975fa8be296c681459978c24a037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87f0bcca9acc31094343af4ca77ebe1e0b0e1772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99bb28a5efe89c142bada0c5d436fac71b0ea841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb93aa2c83fafbe00cb854aa1b9e06f41f277e103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe65ca9b98f03c8cca6b72cfbeae0f0d62da0bc89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0d9deb9ea8d3c83403289bd98839c37983b91ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf662ffba820fbc89457d264d404fa5414047a108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x059ee96dfd280705c51886654c48339cc3b8a920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x063b323a23c53d5db2e519d8715a2c5d6f095b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c027cce214a3d3812ac1c824681eb76e13b3b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c66242ae59137663e5249724fe905b67272852e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cb8b73f2472b0458657d364dd13a26e959dba3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1196da086047e1ccb3be3573fe7cc1140320a180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12a859e5e42e5b1028efbd1591ebeef829f4029a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17a9383f753c9511f37cc45f919ccfa5733b49e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18550d81929e202ba318c1a8dc0a2f9744dc4aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x201a2f5e03b83b542e617b3004379c8691254c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d3a92f8d14a3257ca985fc66e990cacf8b0df3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3273bec5997f4ac0fb29e5961554f3b30e1afbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36ca07f03ea7a5b8ea3f3f3a72e4aea7ac0b95e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f3b7f62bf8a119eca3f1bff0d2a946bf331de89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40a8ae14eae320e2d22817662271c156a2a3e468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46abb0227e49771c7179d166002a95403a461eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d11dcd79e64bc79e235d543944458e03dbe00c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d61e12c9cfa3a9f5de0bd9b6e25c527cbee7640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d7c373108e24202943d2d4bc9d3cf923067ea58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ee91495132be217d5087e636d31a646cc2611fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53ee53f0556f94482071e8d0655e3784488f69fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d55904943e32efc5a4d0022c489c731635862a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7227bdcf2b706668529991015023c40b958ef1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75f3ed4a3b05ba33e74a0bd6e68bdc04753f2c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fb4defae4547e7809d4f7ddd07bb5c5085e5d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81396117085f5149706f5b793957415a5f283c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x838c8060b491b89283d32aaf3ba84b3b7993642d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8464e51fa6662c4e7aef64bd3006e7caf76102b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87f0bcca9acc31094343af4ca77ebe1e0b0e1772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a1b1c68fa61f70f113d54dfa8bc4e04c58dd6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b1aa5cc114b20928734d6bfe47f876dfcfd36dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c82197792f6f0dcd8aa75a68e9266bcd5e067d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d260ab4c33c4f8e9b1d2cc5cbc190ad5d83982d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9332070de7ecee2f6451cbfd3841eef8eea70703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97bb8ce1db85a3aeef7292b5f02645ca0d3490ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4e2d4b7f1f57788f19e79cabaf77a21a6d01fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa577c6f4a8ba0e7bbc15c431e8afae71fd188e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac11d3cf3643125b0fca9c57d3f1f868053c5997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafa8d1b83a5210cf9c011e7e14a37e33a8af5bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb098f5ec67fcf93fa66efc17994b0c2635247bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb24109fb7a1a396bb0c003d62e579a55e70516dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb845f719039d4f4f8a92a93565c13051e4a3dd68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8aee99db9b2283ccf9f3028eb45a32f97da22e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9ddecf4b0a49e1bc8281669618798c3aa637033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbbf37bd91d597d88920a223d5f13ff429bf83a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe0c48de044e21a3d1476bb7790050598b93cbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2aa5e10374f7a73a293979ed6a5875b47501800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc80b4fc6a7f680f7221b29089a4c21305eed6a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc86c47ea349ca52b17018c5f430c093b69c4a818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcccde52ef8f7d74d73ee033f7daccfafe29edd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd24d5a9420d3b60f6c4a2e84ea6770d12a4dfa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd35c7e3b23e3f9eac204b9e36bc97acf4747835f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5816620241d1ce34ded157c45a5d83f66fdbc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7e9d33c49859d4720d73881cd8605ce9aef20bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd91de77ca91c097432c7fb57037e5b9e058c8cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc42b1fa568672ddfd9f0b6abd1fff2b1fbb3678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd51191fffc02ab2cd0bb72506601a376fe9a6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe59228600938aed4a6e667457c32a15ea90f6f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebba6b626bd7284fe13b98bc3f8cfab80335e33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebe4bd7829398c787105fe2503c0716a976fb139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0af7cd00dbd52fb0f3e900f3e956d18ddf52c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0d9deb9ea8d3c83403289bd98839c37983b91ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0dc9f19fa8f793a02d9b35df3c19b533b718efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5345bb3483f3bfcc3c6fe84df29e2592904b288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfdd2e2e5013f43946298ddbb65734d0bf23589fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00346113973cb9db78ccaa522d671abe50f00a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x118a14bd824a7099e8c5279216ff410a7e5472bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1196da086047e1ccb3be3573fe7cc1140320a180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a184381f5e13724913054d1bdc38b3403cf734c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c9e818fc515cc722cc198c6c2d538b105caf025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4193f5a6247ab56494f78e3d074dc9cfcdbaaba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45713a3beacb296e9e57adb99c175b094cc12ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f2ac292e314aea6571e913ce781f4cd883cbb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66b8fb81a4c672e4c6edd4cd49cfdae75a110e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ddc0d15613054699c75e3d52cd67eac5c5566df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7227bdcf2b706668529991015023c40b958ef1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93b5f4277514169f86b93b2eaacf81438030775c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x956a6d12d036c3deaf22ef5f7fccb9a94eae0880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3039a86408c859adcc618dc6bf00cafb13ff8ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa91c0aa0a3e7b88dccde76cd7037c4248ff918ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb24109fb7a1a396bb0c003d62e579a55e70516dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8aee99db9b2283ccf9f3028eb45a32f97da22e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc908703e09d579c8af18e7d5ffdf17657088789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf542017e6c68229b76f56181f8b2aeb385226c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb9fd44231c8753a01f80048eba0531d069de409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3c09c07ed5371ca76511ad1ff4cf357d7dbc108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00a6e4b816ee10b462a359664d17e70a07e2d24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x059ee96dfd280705c51886654c48339cc3b8a920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x064ce30218cc368907744aba4c528deed382a57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06ef53cae51e9c806d08debd754a0932a33bc728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c5fa0e07949f941a6c2c29a008252db1527d6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10f5ea201865ddc780db1978d8ef3d429e973ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x127a197fb7c89d5d2d951dfedb35d462f2d93146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a184381f5e13724913054d1bdc38b3403cf734c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bbc0961c0a56f28c3827cddd06244bd7a3f077a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c698ec3e7707bd39006dfd470590cf54bc009f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f693a24e48f5ee9e7b17fab4add07334b83d69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fe68ba5e0c81582c95abc879b058a940a06bd69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x201a2f5e03b83b542e617b3004379c8691254c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f2b4bc9fb0daca9d3a0158445426b6a8a2da5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x304dda2235601c7bb6006500130701bacd1214c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30cb238a7af7ac2013d87e270548d6c78739300f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ba2caa83ad9250565470dea8ff48ea70ae0f197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62f22dba1f1ce9489fe4f10562997d4a9b1093ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e3983d55b0f975fa8be296c681459978c24a037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7227bdcf2b706668529991015023c40b958ef1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7369e36c02b06996fd89bc827d45889219c76046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a42bea3e09e12deed60761657f00dec083db39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b525dde54190d7d4574e81728c61cbb4a33606e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93b5f4277514169f86b93b2eaacf81438030775c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b3fb3b1b5d994750d66dcc5ad7a6c7477b00bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f5fa0ae2696d2d5d7013abc5e67ed3cc403c322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f8313b62435d95aafdf5cc9cac27ae0e2ec7206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa00b6cba860846c9f81c1d105ffb9ff36492acef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa577c6f4a8ba0e7bbc15c431e8afae71fd188e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb26fe758461552d69cf6093de90aaac5bfbc48b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb93aa2c83fafbe00cb854aa1b9e06f41f277e103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1205e21ca4b42510efa119692b35cfde6a069f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2109f2b4a31c837e0f987b47fb819b7b4311627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7842979a8778c3784d6b8579139e3ebdea6e69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd59b3309a0a0cbd9955d7e2cd2e1dfc7e5436c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe59228600938aed4a6e667457c32a15ea90f6f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0dc9f19fa8f793a02d9b35df3c19b533b718efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3508ca2a82ccebfd52d5fc35edd0ccd7775ab13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf605a17c516cf4112d5ecae147680beaa4500b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff75de75b1f86b0b0267b2d702bf3de0928a7eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00346113973cb9db78ccaa522d671abe50f00a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x008e05f850bc3c7f495ba05e70e92d33fb3930e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00a6e4b816ee10b462a359664d17e70a07e2d24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x064ce30218cc368907744aba4c528deed382a57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06ef53cae51e9c806d08debd754a0932a33bc728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09d09d3433580b00f6d7ed0920af4f9b6af1ff65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c5fa0e07949f941a6c2c29a008252db1527d6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d53cef97bcccb41815bad6409279c71bb6de923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x127a197fb7c89d5d2d951dfedb35d462f2d93146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b1b939e32ce5c62196bfe9746b4bd56293aef87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bbc0961c0a56f28c3827cddd06244bd7a3f077a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29c64ee6d28d263308bb5142c4959fbfbd0b6e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f2b4bc9fb0daca9d3a0158445426b6a8a2da5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ba2caa83ad9250565470dea8ff48ea70ae0f197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46abb0227e49771c7179d166002a95403a461eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d7c373108e24202943d2d4bc9d3cf923067ea58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x537816fbb8ec6078fb8b51f3bc35d5444edcb361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x567c41d4b04a225056d6141c5485beec2ad419b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c75ef77c99d3dc90af601eea2a66e8962700366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x619e848eb1859d86abb70459d3487b8d341a66af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6753b66c72ef045b266bdc05941e808c77da8f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a8f599078fb4d7e169b3eef1e695610150ac338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c44e09737ac84bcf27633883daf7487898e4e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7227bdcf2b706668529991015023c40b958ef1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x753c132e1f95fad6e72feec8a52eb106f62bf23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a42bea3e09e12deed60761657f00dec083db39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x849615a7672e329c4942b86fdc6ac797abe4c991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87a207f5bc901e21d0bb87759f0ab3d50c39e7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b525dde54190d7d4574e81728c61cbb4a33606e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x936335192a2fb493cb913a0f4c1721f3ceee1704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x969c01ae0f005bc45f70dec2e3313ddc25e54678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96c66389e4d3500a45d39e8ff3da33d1cfd2f9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97bb8ce1db85a3aeef7292b5f02645ca0d3490ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b3fb3b1b5d994750d66dcc5ad7a6c7477b00bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b98c928733ac55193ca31e717bd946f17fad19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f5fa0ae2696d2d5d7013abc5e67ed3cc403c322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8313b62435d95aafdf5cc9cac27ae0e2ec7206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa577c6f4a8ba0e7bbc15c431e8afae71fd188e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2a7cba37552888cef808e88cdbebc72f91fd94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb8e609dc152d20f7f57a4c2c7d6542ec92871c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbe3e6a253bd87ce977189c0e90008a516825078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc86c47ea349ca52b17018c5f430c093b69c4a818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd59b3309a0a0cbd9955d7e2cd2e1dfc7e5436c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdee61030e94083cf45891980ae02eaf4b945bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1ada3a8c21adf45a0d2d46decb68eb203a63311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd29ac19ff86e3f2d119c8bb58165a3c661c876ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe11e44c16aa8df6da61277ef6b9aac91a4310c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf014a33bd8ab261174519735ee672813bf5e0906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 299
- Live contracts: 0
- Unknown liveness contracts: 299
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=299

Showing first 200 of 299 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00c0f1c37edbc92b1c23b350b89775b5324009b6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0433cfaeb5bdb520156a44dbdc76213599ef3d97` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x061ba30ab5bac5b2e5d3b9523d7102f0535f22d5` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0ffd8d39115e1f48eecf68c92df379917fcb0058` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1482039d0fc40ecc60a7f7c7050d000af8a6d79c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x16effe76955a7fd275bf347617bef4a22d9c5641` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1a184381f5e13724913054d1bdc38b3403cf734c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1b6efd8018c7a2b8309d03c1b170580543fd2674` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1dd93b0d9125b6d2bbaf89706ce4929dbedf172a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x201a2f5e03b83b542e617b3004379c8691254c0a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x204e85c09f7bbd80ea99f6793258a7420f371f15` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x2dcd7c67cfe73043c41a28a3ed600e4d67e37080` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x304dda2235601c7bb6006500130701bacd1214c4` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x306c928361d67edc78c832f0918adfefc80deccd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x30cb238a7af7ac2013d87e270548d6c78739300f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3a44848e151de243e4ea7f02d9953c4f5ef95445` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3b7e414f8cc079947a7373cbce7672b4994bb94e` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3f3b7f62bf8a119eca3f1bff0d2a946bf331de89` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4123ec1283fa50e84450d6c0b420821d6d6f0ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x416dcb81d2bd6faed980cd388e6487241d6c2385` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x42384b7a4d3a7be8a139a8c0a208347d6bb98419` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4803055a6ae5b450d63d1990510edbf00c026677` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4f7b30cb01eecb3055b8c6418deb2ffa0c9c0b30` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x52f30a551e5c51e926f5f2690247ac6044e32676` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x5b5522cb9a05e0de88bed60aa105b81b03fe99c5` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x5f23432da2da120816ae033ee729541997eff75c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x6e3983d55b0f975fa8be296c681459978c24a037` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x6f82bc62232e74263da584987a93ca802e864d4a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x6fb23258183ec5ec0585d713c8474b25f8015b96` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x71e190dcddf95f6fe5e66e8e1e6616db5299158c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7227bdcf2b706668529991015023c40b958ef1ea` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x725b6625f85d1113b17c24bad3123dc6a570dc7d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7309a2bbf9d67ea83092a92a9afd29b4d9f6dda7` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7475e43c92e1c7b83e60f4292358ba06c7863fbb` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x78a40645e4bd124cf7eb041cbac4bf1109ed8a6d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7a42bea3e09e12deed60761657f00dec083db39a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7a9f2a0be2ac8c92ef35810287e8ffd50b730b38` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7ae10c38ded84dd8428ed1e82878c26b96ac4015` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x82a8bd9a53eb945b107a4a83f3504222e200d792` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x8b1aa5cc114b20928734d6bfe47f876dfcfd36dd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x91687b8532bdc6d04a068336793770311df51299` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x94351acc87a32ab54ee9711baf961d74b724b368` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x97dfa22c6e77c348db7c24fb693bb8408a4e2992` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x9d95f968323a4b9f831af7ede109d06fe749ece4` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x9fd19fcdabe9734bddd67160bce990ee2f3129d1` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xa97202c88be127fdf534ec69e2303b021c606412` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xaa54fd261a6142583513c05fc5b262a6835e10ae` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xac66a36a2dd878d60f629e636df59ad7f3eaad0e` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xadb20941aefdaea1d00ff398015af852b69791b9` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb299c4b63906a40067b85eb3184f506da0560be5` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbc5d022124b3e9f1289dae30e11ab964455aa698` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbc908703e09d579c8af18e7d5ffdf17657088789` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbf69197ffdd312a32548c9983323d1e83988577f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xc7842979a8778c3784d6b8579139e3ebdea6e69a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd3c09c07ed5371ca76511ad1ff4cf357d7dbc108` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd3ec1e4ffa462c7a102a00e8e7259c74bcaf8998` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd5ca7e646e17083abf3cb983c632dba83509c02d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xe094fabd7d4f35420bd125214d2c5d6af23995f0` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xe9d3aa4be68896f91da4ede9517e95251af640e4` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xed375fbc37345a608d4074805d32af9e424bc2ff` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xef091f3cf1457ea3da1f38f193ea1ff2c3d7b2a6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf95ff7f4947fd6d98b12d8e7385e8dce4d7fe1b3` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xfaf6d5262946d050e4cd467a6c37c1a1746b30e7` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x00346113973cb9db78ccaa522d671abe50f00a25` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x07829ac5f26b807df18ca9469d2d27beaf126c8d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0c975dbeaea8404ca0e1aea4121d65cb76a614c3` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1a184381f5e13724913054d1bdc38b3403cf734c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1f444e9fb735b2438bee3b841efea060d235abf1` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x204e85c09f7bbd80ea99f6793258a7420f371f15` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x279d94feba6304a4e5f98819541e3f5784ae030f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x2b97af8b9e6018e3ca457115130e7e7b76e25b23` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3b3ef6345d23d8031ab1a65d6deafc7d7d4ecbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3cbeac5709043bce17f7eb224e300a6ac5f664dc` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x567c41d4b04a225056d6141c5485beec2ad419b8` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x5d55904943e32efc5a4d0022c489c731635862a6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x6621da29f31c31ee4d663419e56b86f74d6ec08f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7227bdcf2b706668529991015023c40b958ef1ea` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x94351acc87a32ab54ee9711baf961d74b724b368` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x9893278dec6a65125feb07daedf7764be7d3d760` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb04bbb08b204b7416ede4709cc6e30b44b761316` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb26fe758461552d69cf6093de90aaac5bfbc48b3` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xc7842979a8778c3784d6b8579139e3ebdea6e69a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xcb9fd44231c8753a01f80048eba0531d069de409` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xdd5ddb8b10ae5eebc2af7f594196170a26d1c133` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xe59228600938aed4a6e667457c32a15ea90f6f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0c975dbeaea8404ca0e1aea4121d65cb76a614c3` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1a184381f5e13724913054d1bdc38b3403cf734c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x304dda2235601c7bb6006500130701bacd1214c4` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x42ed0089b64caa21952543f86122003321d0d600` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x567c41d4b04a225056d6141c5485beec2ad419b8` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x6e3983d55b0f975fa8be296c681459978c24a037` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x87f0bcca9acc31094343af4ca77ebe1e0b0e1772` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x99bb28a5efe89c142bada0c5d436fac71b0ea841` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb93aa2c83fafbe00cb854aa1b9e06f41f277e103` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xe65ca9b98f03c8cca6b72cfbeae0f0d62da0bc89` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf0d9deb9ea8d3c83403289bd98839c37983b91ad` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf662ffba820fbc89457d264d404fa5414047a108` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x059ee96dfd280705c51886654c48339cc3b8a920` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x063b323a23c53d5db2e519d8715a2c5d6f095b89` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0c027cce214a3d3812ac1c824681eb76e13b3b51` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0c66242ae59137663e5249724fe905b67272852e` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0cb8b73f2472b0458657d364dd13a26e959dba3d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1196da086047e1ccb3be3573fe7cc1140320a180` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x12a859e5e42e5b1028efbd1591ebeef829f4029a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x17a9383f753c9511f37cc45f919ccfa5733b49e8` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x18550d81929e202ba318c1a8dc0a2f9744dc4aca` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x201a2f5e03b83b542e617b3004379c8691254c0a` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x2d3a92f8d14a3257ca985fc66e990cacf8b0df3f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3273bec5997f4ac0fb29e5961554f3b30e1afbf9` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x36ca07f03ea7a5b8ea3f3f3a72e4aea7ac0b95e6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3f3b7f62bf8a119eca3f1bff0d2a946bf331de89` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x40a8ae14eae320e2d22817662271c156a2a3e468` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x46abb0227e49771c7179d166002a95403a461eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4d11dcd79e64bc79e235d543944458e03dbe00c1` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4d61e12c9cfa3a9f5de0bd9b6e25c527cbee7640` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4d7c373108e24202943d2d4bc9d3cf923067ea58` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4ee91495132be217d5087e636d31a646cc2611fc` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x53ee53f0556f94482071e8d0655e3784488f69fb` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x5d55904943e32efc5a4d0022c489c731635862a6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7227bdcf2b706668529991015023c40b958ef1ea` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x75f3ed4a3b05ba33e74a0bd6e68bdc04753f2c23` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7fb4defae4547e7809d4f7ddd07bb5c5085e5d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x81396117085f5149706f5b793957415a5f283c7d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x838c8060b491b89283d32aaf3ba84b3b7993642d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x8464e51fa6662c4e7aef64bd3006e7caf76102b6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x87f0bcca9acc31094343af4ca77ebe1e0b0e1772` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x8a1b1c68fa61f70f113d54dfa8bc4e04c58dd6d7` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x8b1aa5cc114b20928734d6bfe47f876dfcfd36dd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x8c82197792f6f0dcd8aa75a68e9266bcd5e067d9` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x8d260ab4c33c4f8e9b1d2cc5cbc190ad5d83982d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x9332070de7ecee2f6451cbfd3841eef8eea70703` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x97bb8ce1db85a3aeef7292b5f02645ca0d3490ee` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x97fba28745b4591a4c608ffd7e72c5d268a8a9a0` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xa4e2d4b7f1f57788f19e79cabaf77a21a6d01fab` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xa577c6f4a8ba0e7bbc15c431e8afae71fd188e89` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xac11d3cf3643125b0fca9c57d3f1f868053c5997` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xafa8d1b83a5210cf9c011e7e14a37e33a8af5bbe` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb098f5ec67fcf93fa66efc17994b0c2635247bd6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb24109fb7a1a396bb0c003d62e579a55e70516dd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb845f719039d4f4f8a92a93565c13051e4a3dd68` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb8aee99db9b2283ccf9f3028eb45a32f97da22e1` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb9ddecf4b0a49e1bc8281669618798c3aa637033` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbbbf37bd91d597d88920a223d5f13ff429bf83a5` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbe0c48de044e21a3d1476bb7790050598b93cbc6` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xc2aa5e10374f7a73a293979ed6a5875b47501800` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xc80b4fc6a7f680f7221b29089a4c21305eed6a22` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xc86c47ea349ca52b17018c5f430c093b69c4a818` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xcccde52ef8f7d74d73ee033f7daccfafe29edd45` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd24d5a9420d3b60f6c4a2e84ea6770d12a4dfa7f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd35c7e3b23e3f9eac204b9e36bc97acf4747835f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd5816620241d1ce34ded157c45a5d83f66fdbc55` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd7e9d33c49859d4720d73881cd8605ce9aef20bf` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xd91de77ca91c097432c7fb57037e5b9e058c8cde` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xdc42b1fa568672ddfd9f0b6abd1fff2b1fbb3678` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xdd51191fffc02ab2cd0bb72506601a376fe9a6ee` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xe59228600938aed4a6e667457c32a15ea90f6f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xebba6b626bd7284fe13b98bc3f8cfab80335e33d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xebe4bd7829398c787105fe2503c0716a976fb139` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf0af7cd00dbd52fb0f3e900f3e956d18ddf52c73` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf0d9deb9ea8d3c83403289bd98839c37983b91ad` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf0dc9f19fa8f793a02d9b35df3c19b533b718efe` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xf5345bb3483f3bfcc3c6fe84df29e2592904b288` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xfdd2e2e5013f43946298ddbb65734d0bf23589fd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x00346113973cb9db78ccaa522d671abe50f00a25` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x06defc6bf66f97a5d6ca552df2d0e04cdd17e83d` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x118a14bd824a7099e8c5279216ff410a7e5472bd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1196da086047e1ccb3be3573fe7cc1140320a180` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x1a184381f5e13724913054d1bdc38b3403cf734c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x3c9e818fc515cc722cc198c6c2d538b105caf025` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x4193f5a6247ab56494f78e3d074dc9cfcdbaaba1` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x45713a3beacb296e9e57adb99c175b094cc12ead` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x496a6c57dbc1c7770cb9afe118e3268f979bc53f` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x5f2ac292e314aea6571e913ce781f4cd883cbb9c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x66b8fb81a4c672e4c6edd4cd49cfdae75a110e49` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x6ddc0d15613054699c75e3d52cd67eac5c5566df` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x7227bdcf2b706668529991015023c40b958ef1ea` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x93b5f4277514169f86b93b2eaacf81438030775c` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0x956a6d12d036c3deaf22ef5f7fccb9a94eae0880` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xa3039a86408c859adcc618dc6bf00cafb13ff8ad` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xa91c0aa0a3e7b88dccde76cd7037c4248ff918ea` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb24109fb7a1a396bb0c003d62e579a55e70516dd` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xb8aee99db9b2283ccf9f3028eb45a32f97da22e1` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbc908703e09d579c8af18e7d5ffdf17657088789` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |
| unverified unclassified | UnnamedContract<br>`0xbf542017e6c68229b76f56181f8b2aeb385226c4` | non_address_book | unknown | unknown | unverified | n/a | `0x467d8b5401296194c60fdd978a293ec09e431228` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 308 |

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
