# Agentic Audit Brief: Stakehouse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 24 across 6 audit(s)
- Eligible audit results: 12 (6 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Stakehouse (`stakehouse`)
- Website: [https://blockswap.network/](https://blockswap.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, goerli
- Contract surface: 169 unique implementations (170 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $101,495.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Stakehouse in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00000000219ab540356cbb839cbe05303d7705fa`, chain 1)
- UnnamedContract (`0x00ee7ea7ca2b5cc47908f0cad1f296efbde1402e`, chain 1)
- UnnamedContract (`0x03f4310bfe3968934bc11dfa17b8df809d7dea80`, chain 1)
- UnnamedContract (`0x04e5c93f4b96d2fdb2cde4c9826c373e5656796e`, chain 1)
- UnnamedContract (`0x1d1f35aa28ac454da4b11b89971f5f8e6b207d37`, chain 1)
- UnnamedContract (`0x1eb1046949e7e1235495dfd672ab3bb71091984d`, chain 1)
- UnnamedContract (`0x2a86d26ea4779c3046023eb76b4ae2c9e07abfff`, chain 1)
- UnnamedContract (`0x3d1e5cf16077f349e999d6b21a4f646e83cd90c5`, chain 1)
- UnnamedContract (`0x53975f264a02eb415602a780af632bc132a20ca7`, chain 1)
- UnnamedContract (`0x64f4fcfb8377deaabf334ed42ac113e6813a55d0`, chain 1)
- UnnamedContract (`0x6edd4dda4f879541a67366bca844b2d78cc3850a`, chain 1)
- UnnamedContract (`0x8035a7ab484d57a5a82469e0d6a38b2c942afbef`, chain 1)
- UnnamedContract (`0x88e6c7072b867f9546a232548a5d3271986b3c0c`, chain 1)
- UnnamedContract (`0x8f6839b0acd8d7c7d2f01c1c7ecca982ca354333`, chain 1)
- UnnamedContract (`0x9cbc2bf747510731ee3a38bf209a299261038369`, chain 1)
- UnnamedContract (`0xc01dc3c7f83b12cfdf6c0aaa09c880eb45c48569`, chain 1)
- UnnamedContract (`0xc6306c52ea0405d3630249f202751ae3043056bd`, chain 1)
- UnnamedContract (`0xcf74685c9865e959329b846a7785c2e126b67f03`, chain 1)
- UnnamedContract (`0xdd6e67942a9566a70446f7400a21240c5f71377c`, chain 1)
- UnnamedContract (`0xf5d92b01c478273bd13aa8efb130d98e131ecbb9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 20 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 20 of 169 unique; 149 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 166
- Unique implementations: 169
- Raw deployments: 170
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0ff7e21be837c2a952a2bbbf10da074fca001a33`; ethereum `0x98c47ac224d5c7d5bb45bda70e0f83ab08fb5ca0` | ⚠️ Unaudited |
| SimpleMerkleVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fda7c05da37aebc00d7bed5d6518e62ae3f4ce` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x534d1f5e617e0f72a6b06a04aa599839af776a5e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (166)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256862 | `0x00000000219ab540356cbb839cbe05303d7705fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256863 | `0x00ee7ea7ca2b5cc47908f0cad1f296efbde1402e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01efec3e88604a87be4dfaa6e9dac7699b2829d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256864 | `0x03f4310bfe3968934bc11dfa17b8df809d7dea80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256865 | `0x04e5c93f4b96d2fdb2cde4c9826c373e5656796e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061d5372d18b16fff40d31e61cda74e3ae0bd597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8a4dd48be33302c906f7d62dc938c4bf83de34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dd9f67e4ba5361844283b6f8fb569aa89d7e33e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc94b5a79eb6ff2e051369d8e8e0eb6274c5b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc9f568b84761d4fca150c671183c3dcfbdf9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140d0d4fcf34bdc27ffbdcc366e36a6e703c454a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161c4718cda5af236cee2215c69f69d5d8fb32f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a687ce073b1d213d564c0e2334934f39fafe9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1768c6489744db8196ac0fd71c52ad4d95332d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5a3b84e1aa429c7dbff6ac57e7519931ec0a4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256866 | `0x1d1f35aa28ac454da4b11b89971f5f8e6b207d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dba8bf629e9d677d193d9340574ef0cfd4301a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256867 | `0x1eb1046949e7e1235495dfd672ab3bb71091984d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20fd48b12e3e5a1f07832a271eeae13d16bad221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2495db42d2272861f07a3fc8b749a681abd99e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2567d929478dbff39eb87b2e92da9e1fc491a779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285b641859717abe77f372dc088915ee3a0c3de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2970a0c13bc77c178491f3160d9ec0eebba99672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256868 | `0x2a86d26ea4779c3046023eb76b4ae2c9e07abfff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8092d8a1e9083dcae5c38070027620ff81a526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33978f71544d5328c269536bb2ef72fe84d4ce40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f08ad5be17f7abc76913621c9fe9737919d3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3564a47e2f1b8450f50b51a023a8427ae7b62eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f75c280964bca465623f5f34b10373553e7609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370fcbefb4a81438f97f58bbee53b27c8b1e99a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4826ea2ba304b6a231ad66947d821c7b040b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8bf8da7239f6f2e46bcfd6fc25ad3015f53203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b64635945f264ae6f9f3deda8985b979d3dfa7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc7bf6d6a2d314d4ad20980c5cf8bde901fbded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256869 | `0x3d1e5cf16077f349e999d6b21a4f646e83cd90c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4077f60f46dd0dff7e95dc8dbc6fccc46d08a12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4242424242424242424242424242424242424242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442ee2a70c1466bf95f9e112e34796fea583057a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4773ce9c3962b9e1f734f9316efe5d0dcb3b06e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bfc9573a96b883c477eed548b5fcc30c5dfeb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1fd37b47afb6a31c14cc16253891c95740862f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7af9bddac5bd3bee9cd2aa2feeeee7610f5a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9df1d855e104d1377e8299f7ce681493f0a630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe7d25c1f59e7e3b34e39de17cfa043f5a8becb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509c0a85e5e23bab829b441ed5390452def827e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256870 | `0x53975f264a02eb415602a780af632bc132a20ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e3dd12c445379b9c9a46eb0bb0b2d9ced9fe4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a3e20dcd40dcad02095aba23ac3c221eafabbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58b2a7795faba1be745d23a90eada7d22ec591bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593e5e3567d75aeb01a61c33df5f64c13b24bb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d003ef2700cc5458589e775cdc61cda98ba342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b5fed50ffe048daad844a745d63b493b7c3bcd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c075f268d42be8df2aca58326f8775a1cdee7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c29fd0c9f6bcd0a459dcdef0be2f8a7dcd3933e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cecfaf8f8c2983a3336adbe836af39192a72895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cae0b2887fb1497807977603bf671159d35558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611b496d230af825ce0fc6dc4b76b1c670caa411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62593f21f2d19c9cfb2bac8e25e17a9f0c1d9a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63aa1d3a98987806f579e03d1a3ffad7d99820e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6482f8b27cd519be008d1412b54c3eae1648f5aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256871 | `0x64f4fcfb8377deaabf334ed42ac113e6813a55d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6560832b1d44b0bbc07d14678cb97d029ae5c8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65bec3d99a6016cb944b756b296ec5237f098415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6930f6c44a3c505c80bd07e81d157476b648258c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256872 | `0x6edd4dda4f879541a67366bca844b2d78cc3850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71453351aca880a70f7e7efab2f0c36d90dd2e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78310f358485344945d914a07477e131c6a9ff8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae7e48c2f287228aa094f9aa18769616891a116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b374de8aea68d6bf5ef810038e11c3d6594515c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c458c4841c22e5b96bed4915c22ec69ee7d6351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e30089243e412291e9e5b981f9018ca40e84eed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-256873 | `0x7f79a6ea8094e63b49b508a60a7b333b51d043cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256874 | `0x8035a7ab484d57a5a82469e0d6a38b2c942afbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8419b74013d53a8a1d5b7c2bdb387f0bfba27188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84bf9dc2d407840501b0b7249d7ce1cb5a6a01a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851e7f2cc34816056ddb2fb400d15c7e3c6f4165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85347f965d01fdecc746b7057963e6292f48209d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c13381ecd08ac7bc8242faaef2548bc2bab7fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256875 | `0x88e6c7072b867f9546a232548a5d3271986b3c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8900cfa096ca9480176f06de6436b782ad91bf8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d28ffdb4c791d4d0dfd9c7217e315ce1637926c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dbdcbc776ae05e6bb2479c29d3c1dd554b699d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256876 | `0x8f6839b0acd8d7c7d2f01c1c7ecca982ca354333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe319408b5cd7c0cbc994cb5bca91a6fc708561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90d9536c2ca4a3673ce9492af162b532be0427e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91e3c7be9d4594599e9c4f5f2db67ee4e91f02fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9227cb6d3388c7247f4726cbbb9c6f1f1def1504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941b9c0d0b9c60aaa1a94e2d08c508456e9f824a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94b868300b70b7ba14f2e7b88392e7542224283d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x952a868c89b38f6a15a0de38d80f77e225f4cfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a0f65f1c2ea92da82ef070ab947862b8799c103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af4c3ff515e9d2217ed8a6de99f79d20f8d33ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b06e43724d7db8b06d46d4d884379de6b840ec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256877 | `0x9cbc2bf747510731ee3a38bf209a299261038369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00b8f897ff004e794967ebb9a54aadbf76bc321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa060a5f83db8bf08b45cf56db370c9383b7b895c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa189714e003fba1fc74c3e922c71513bf2312714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38042b7109bb777e6de177c065e98465039b81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3fc9c5e5e82496002036d470cc1a235af82607f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa503508450a21a82f2031d38d7c4ac786b41adf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab68353651583bf1e38577c8fc5c26927910ea86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcc870141a41120a707ff78a7c0c5b0960ceef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4d61d73d4f66ad07132fd71b073ba67f67db149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54d60fc5250548af3690e010f3df5e45da83ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb766d4203ff8895d39ce3367181dc7586e5c39e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81e696eeeb7d8570a0cf9fc48eeed8ed103fbf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba459271cb1d821f8505abe809c20a4c2bba44b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba7996f73657f9c2a6c2f207a48adc63e5d2d9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba86e2917a98c4d6bcb171516252348f1e06fffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcb6f4effb9eb8ed31453cc8bdae9703c6d1ff9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1788621c4213c3434d3aa4746fbc66ad6cad77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256878 | `0xc01dc3c7f83b12cfdf6c0aaa09c880eb45c48569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc24cd71d357af96f7d697617d73545ed38b1cb2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5565c09acf6643ac1558ebc8cadafeccea97c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc58351f53e58f3a8928ae49b531c67761e833865` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256879 | `0xc6306c52ea0405d3630249f202751ae3043056bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc861fde48246a4b78c90a0d2b9d4907873a3100a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaec5524f4f333e0c2e05330071d990b1fc74012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf658d9d259fe03f7801e922cb87803e2e2856fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256880 | `0xcf74685c9865e959329b846a7785c2e126b67f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd214240b8c61a278c76a1741d6af46021b56fbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4d4aacd1677369de6c7b087d77eed74d7de1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58962a19983eb0047c00136014ce299d9229bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64a5f12bb81dcd81321ef1a81914598c3de94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd67d5fbabc3abc8db9a540fdb4abe102e7ee814b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d58b06eb52e78c6f8ecbd86e9ac475d2bfe47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d62803ad87a0d0e54a4e61e2f1f8790dd124c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72ac68482a5d45ebc7d98b8eba7a538e26a4bff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-256881 | `0xd7beffcd21d22b11269cc78240717a136f0341e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1837da5d8e5a4c332b871820c43f594aa0d2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc23dabaff30073356365286a012480a3ececb8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256882 | `0xdd6e67942a9566a70446f7400a21240c5f71377c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf39face16519376e47bba3b9be15e69d8a66f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe01e2065f6468004c9abda7c4832a8138cf4b854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c28a5a2da3920946e8bf821f61f7bea311048b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2500991b3fbe6dd1ba2eb0ef784506119ef9ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2f3110777b041696944b3e1a91bdfd575d65bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe543dfababee1142e319f01295c1aa2a2884fe51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8c25aaf42547e1d08d33305733ccab24e20510b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9482a9b8f3ea7400d4b07c798287d94b036be5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe950159ccdf36f6dc661dec0e0de75113455bf63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe960b415236a408b6e4e12fb111db8088bbadb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc9e12c89cc2a17113d3dde982537ca4d734940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb570550d62c7f7dbfa59ffdbdf4c35312146b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2909587fcb223727ba2a368680a4fdb83703d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d21065a25bebd2357288978fe0e3083736e2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf51fc5ae556f5b8c6dcf50f70167b81ceb02a2b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256883 | `0xf5d92b01c478273bd13aa8efb130d98e131ecbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e60e7317db9eaed1335bb5b515019310911cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc40c203d6b0976526dd169f2c21af53b8f2a372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd66453e82ac14a6611bb96ecff1b9b4910391d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe46785236029f286cc0419e10e8aed07455d81a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7b3c6d58dc66f993a4dbd767e6d8cd82aa9770` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256884 | `0x1a86d0fe29c57e19f340c5af34de82946f22ec5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256885 | `0x3be1e832d82525dbf76292433ee70ca8080e41d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256886 | `0x4acb708eb8def5d66ff8da7ee4796c4b3edb44a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256887 | `0x506c2b850d519065a4005b04b9ceed946a64cb6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256888 | `0x55fa81847c1b399cefe890ef4f7389e0e16a9c19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256889 | `0x6bc3266716df5881a9856491ab93303f725a3047` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256890 | `0x952295078a226bf40c8cb076c16e0e7229f77b28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256891 | `0x9ef3bb02cada3e332bbaa27cd750541c5ffb5b03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256892 | `0xc38ee0ecc213293757dc5a30cf253d3f40726e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256893 | `0xc4b44383c15e4afed9845393b215a75d44d3d24b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256894 | `0xf0be479a19a5553fc736e7208879b9019b07de85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256895 | `0xfd989ff9133bd5bb8c20b5b707296272a9fa2fbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256896 | `0xff50ed3d0ec03ac01d4c79aad74928bff48a7b2b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 104
- Live contracts: 0
- Unknown liveness contracts: 104
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=104

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x061d5372d18b16fff40d31e61cda74e3ae0bd597` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x0c8a4dd48be33302c906f7d62dc938c4bf83de34` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x0dd9f67e4ba5361844283b6f8fb569aa89d7e33e` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x0fc94b5a79eb6ff2e051369d8e8e0eb6274c5b3d` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x0fc9f568b84761d4fca150c671183c3dcfbdf9a3` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x140d0d4fcf34bdc27ffbdcc366e36a6e703c454a` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x16a687ce073b1d213d564c0e2334934f39fafe9a` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x1768c6489744db8196ac0fd71c52ad4d95332d09` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x1a5a3b84e1aa429c7dbff6ac57e7519931ec0a4b` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x1dba8bf629e9d677d193d9340574ef0cfd4301a8` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x20fd48b12e3e5a1f07832a271eeae13d16bad221` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x2495db42d2272861f07a3fc8b749a681abd99e3f` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x2567d929478dbff39eb87b2e92da9e1fc491a779` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x285b641859717abe77f372dc088915ee3a0c3de8` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x2970a0c13bc77c178491f3160d9ec0eebba99672` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x2f8092d8a1e9083dcae5c38070027620ff81a526` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x33978f71544d5328c269536bb2ef72fe84d4ce40` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x33f08ad5be17f7abc76913621c9fe9737919d3d8` | non_address_book | unknown | unknown | unverified | n/a | `0xec9aed08e08c095aadc43985902530c842a4ee59` |
| unverified unclassified | UnnamedContract<br>`0x3a4826ea2ba304b6a231ad66947d821c7b040b29` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x3a8bf8da7239f6f2e46bcfd6fc25ad3015f53203` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x3b64635945f264ae6f9f3deda8985b979d3dfa7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x3bc7bf6d6a2d314d4ad20980c5cf8bde901fbded` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x4077f60f46dd0dff7e95dc8dbc6fccc46d08a12b` | non_address_book | unknown | unknown | unverified | n/a | `0xec9aed08e08c095aadc43985902530c842a4ee59` |
| unverified unclassified | UnnamedContract<br>`0x442ee2a70c1466bf95f9e112e34796fea583057a` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x4773ce9c3962b9e1f734f9316efe5d0dcb3b06e9` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x4c1fd37b47afb6a31c14cc16253891c95740862f` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x4c9df1d855e104d1377e8299f7ce681493f0a630` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x4fe7d25c1f59e7e3b34e39de17cfa043f5a8becb` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x55e3dd12c445379b9c9a46eb0bb0b2d9ced9fe4f` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x58a3e20dcd40dcad02095aba23ac3c221eafabbd` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x593e5e3567d75aeb01a61c33df5f64c13b24bb5d` | non_address_book | unknown | unknown | unverified | n/a | `0xec9aed08e08c095aadc43985902530c842a4ee59` |
| unverified unclassified | UnnamedContract<br>`0x5b5fed50ffe048daad844a745d63b493b7c3bcd0` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x5c075f268d42be8df2aca58326f8775a1cdee7c1` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x60cae0b2887fb1497807977603bf671159d35558` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x611b496d230af825ce0fc6dc4b76b1c670caa411` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x62593f21f2d19c9cfb2bac8e25e17a9f0c1d9a6b` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x63aa1d3a98987806f579e03d1a3ffad7d99820e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x6482f8b27cd519be008d1412b54c3eae1648f5aa` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x6560832b1d44b0bbc07d14678cb97d029ae5c8c7` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x65bec3d99a6016cb944b756b296ec5237f098415` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x6930f6c44a3c505c80bd07e81d157476b648258c` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x71453351aca880a70f7e7efab2f0c36d90dd2e26` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x78310f358485344945d914a07477e131c6a9ff8a` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x7ae7e48c2f287228aa094f9aa18769616891a116` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x7b374de8aea68d6bf5ef810038e11c3d6594515c` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x7c458c4841c22e5b96bed4915c22ec69ee7d6351` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x8419b74013d53a8a1d5b7c2bdb387f0bfba27188` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x84bf9dc2d407840501b0b7249d7ce1cb5a6a01a2` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x851e7f2cc34816056ddb2fb400d15c7e3c6f4165` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x85347f965d01fdecc746b7057963e6292f48209d` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x86c13381ecd08ac7bc8242faaef2548bc2bab7fe` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x8900cfa096ca9480176f06de6436b782ad91bf8c` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x8d28ffdb4c791d4d0dfd9c7217e315ce1637926c` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x8dbdcbc776ae05e6bb2479c29d3c1dd554b699d9` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x8fe319408b5cd7c0cbc994cb5bca91a6fc708561` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x90d9536c2ca4a3673ce9492af162b532be0427e5` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x91e3c7be9d4594599e9c4f5f2db67ee4e91f02fc` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x9227cb6d3388c7247f4726cbbb9c6f1f1def1504` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x941b9c0d0b9c60aaa1a94e2d08c508456e9f824a` | non_address_book | unknown | unknown | unverified | n/a | `0xec9aed08e08c095aadc43985902530c842a4ee59` |
| unverified unclassified | UnnamedContract<br>`0x94b868300b70b7ba14f2e7b88392e7542224283d` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x98c47ac224d5c7d5bb45bda70e0f83ab08fb5ca0` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0x9a0f65f1c2ea92da82ef070ab947862b8799c103` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x9af4c3ff515e9d2217ed8a6de99f79d20f8d33ac` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0x9b06e43724d7db8b06d46d4d884379de6b840ec2` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xa00b8f897ff004e794967ebb9a54aadbf76bc321` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xa189714e003fba1fc74c3e922c71513bf2312714` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xa3fc9c5e5e82496002036d470cc1a235af82607f` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xab68353651583bf1e38577c8fc5c26927910ea86` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xafcc870141a41120a707ff78a7c0c5b0960ceef2` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xb4d61d73d4f66ad07132fd71b073ba67f67db149` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xb54d60fc5250548af3690e010f3df5e45da83ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xb81e696eeeb7d8570a0cf9fc48eeed8ed103fbf5` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xba459271cb1d821f8505abe809c20a4c2bba44b8` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xba7996f73657f9c2a6c2f207a48adc63e5d2d9dd` | non_address_book | unknown | unknown | unverified | n/a | `0xec9aed08e08c095aadc43985902530c842a4ee59` |
| unverified unclassified | UnnamedContract<br>`0xba86e2917a98c4d6bcb171516252348f1e06fffd` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xbcb6f4effb9eb8ed31453cc8bdae9703c6d1ff9b` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xbf1788621c4213c3434d3aa4746fbc66ad6cad77` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xc5565c09acf6643ac1558ebc8cadafeccea97c64` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0xc58351f53e58f3a8928ae49b531c67761e833865` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xcaec5524f4f333e0c2e05330071d990b1fc74012` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xcf658d9d259fe03f7801e922cb87803e2e2856fe` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xd4d4aacd1677369de6c7b087d77eed74d7de1f24` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xd58962a19983eb0047c00136014ce299d9229bdb` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xd64a5f12bb81dcd81321ef1a81914598c3de94ed` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xd67d5fbabc3abc8db9a540fdb4abe102e7ee814b` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xd6d62803ad87a0d0e54a4e61e2f1f8790dd124c0` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xd72ac68482a5d45ebc7d98b8eba7a538e26a4bff` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xdc23dabaff30073356365286a012480a3ececb8c` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xdf39face16519376e47bba3b9be15e69d8a66f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xe01e2065f6468004c9abda7c4832a8138cf4b854` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xe2500991b3fbe6dd1ba2eb0ef784506119ef9ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x0e8989c69678b44db1aabc1b2ad10016bf977228` |
| unverified unclassified | UnnamedContract<br>`0xe2f3110777b041696944b3e1a91bdfd575d65bc5` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xe543dfababee1142e319f01295c1aa2a2884fe51` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xe8c25aaf42547e1d08d33305733ccab24e20510b` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xe950159ccdf36f6dc661dec0e0de75113455bf63` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xe960b415236a408b6e4e12fb111db8088bbadb77` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xebc9e12c89cc2a17113d3dde982537ca4d734940` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xecb570550d62c7f7dbfa59ffdbdf4c35312146b9` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xed2909587fcb223727ba2a368680a4fdb83703d8` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0xf51fc5ae556f5b8c6dcf50f70167b81ceb02a2b2` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xf8e60e7317db9eaed1335bb5b515019310911cad` | non_address_book | unknown | unknown | unverified | n/a | `0x5b6de84a9e8155fcddaefb21b5310589b510c138` |
| unverified unclassified | UnnamedContract<br>`0xfc40c203d6b0976526dd169f2c21af53b8f2a372` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xfe46785236029f286cc0419e10e8aed07455d81a` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |
| unverified unclassified | UnnamedContract<br>`0xfe7b3c6d58dc66f993a4dbd767e6d8cd82aa9770` | non_address_book | unknown | unknown | unverified | n/a | `0x64522bf668846761d5b8da8de1053f474c0b7b4d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Solidified - Audit 1 - Stakehouse - Nov 2021](https://github.com/stakehouse-dev/Audits/blob/main/Solidified_Stakehouse_Smart_Contracts_Audit_Report.pdf) | Solidified | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Halborn - Audit 2 - Stakehouse - Dec 2021](https://github.com/stakehouse-dev/Audits/blob/main/Halborn_Stakehouse_Smart_Contract_Security_Audit_Report.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 24 | high |
| [Runtime Verification - Formal Audit - Stakehouse - Apr 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_Stakehouse_Smart_Contracts_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 16 | high |
| [Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_Stakehouse_Smart_Contracts_2nd_Audit_Report.pdf) | Runtime Verification | Audit | 2022-06 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 15 | high |
| [Runtime Verification - Formal Audit - dETH Gateway - Oct 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_dETH_Gateway_Smart_Contracts_Audit_Report.pdf) | Runtime Verification | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [code4rena - LSD Network Audit Contest - Nov 2022](https://github.com/stakehouse-dev/Audits/blob/main/code4rena%20-%20LSD%20Network%20Audit%20Contest.pdf) | Code4rena | Contest | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Contract properties - LSD - Jul 2023](https://github.com/stakehouse-dev/Audits/blob/main/Contract%20properties-LSD.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Stakehouse withdrawal - Stakehouse - Jul 2023](https://github.com/stakehouse-dev/Audits/blob/main/Stakehouse%20_Withdrawal_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [Protocol properties - kETH - Oct 2023](https://github.com/stakehouse-dev/Audits/blob/main/Protocol%20properties-kETH.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Contract properties - LSD withdrawals - Oct 2023](https://github.com/stakehouse-dev/Audits/blob/main/Contract%20properties-LSD%20withdrawals.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Certora_Stakehouse_Report.pdf](https://github.com/stakehouse-dev/Audits/blob/main/Certora_Stakehouse_Report.pdf) | Certora | Audit | 2022-07 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 3 | high |
| [Formal Verification - LSD syndicate](https://github.com/stakehouse-dev/Audits/blob/main/Formal%20Verification%20-%20LSD%20syndicate.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24500] Solidified - Audit 1 - Stakehouse - Nov 2021 — matched: Contracts extracted from findings sections; scope section mentions repository but not individual files; all contracts referenced in findings are in scope.
- [24501] Halborn - Audit 2 - Stakehouse - Dec 2021 — matched: Extracted 28 contract names from the scope section (page 11) and findings. Audit date is the end date of the engagement (December 7th, 2021).
- [24502] Runtime Verification - Formal Audit - Stakehouse - Apr 2022 — matched: Extracted 21 contract names from the Scope section (pages 7-8) and the audit date from the cover page.
- [24503] Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 — matched: Extracted 22 contract names from the 'Scope' section listing. Audit date from cover page 'Delivered: 2022-06-06'.
- [24504] Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 — no match: Scope section explicitly lists 7 smart contracts. Audit date found on cover page: 'Delivered: 2022-10-17'.
- [24505] code4rena - LSD Network Audit Contest - Nov 2022 — no match: Extracted 10 contracts from scope and findings. Audit date from contest end date (November 18, 2022).
- [24506] Contract properties - LSD - Jul 2023 — no match: Extracted contract names from the audit report text. No file paths or dates provided.
- [24507] Stakehouse withdrawal - Stakehouse - Jul 2023 — matched: Extracted 9 contracts from the Scope section. Audit date from cover page.
- [24508] Protocol properties - kETH - Oct 2023 — no match: No explicit scope section or file paths found. Contract names extracted from property sections in the formal verification document.
- [24509] Contract properties - LSD withdrawals - Oct 2023 — no match: The provided text is garbled and does not contain clear contract names or a scope section. It appears to be a corrupted or misformatted document.
- [24510] Certora_Stakehouse_Report.pdf — matched: Scope section lists 7 contracts plus StakeHouseUniverseFactory is verified in a separate section.
- [24511] Formal Verification - LSD syndicate — no match: The document is a list of Certora verification results with rule names and links, but no explicit contract names or scope section. The date 'May 2023' is inferred from the header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Solidified - Audit 1 - Stakehouse - Nov 2021 | TransactionManager | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | CarefulMath | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | Exponential | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | ExponentialNoError | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | skLOOTFactory | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5cf16077f349e999d6b21a4f646e83cd90c5` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseAccessControls | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseRegistry | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseUniverse | own contract | 0xc6306c… (selected) `0xc6306c52ea0405d3630249f202751ae3043056bd` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | Banking | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | CollateralisedSlotManager | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | SlotSettlementPool | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | SlotToken | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5cf16077f349e999d6b21a4f646e83cd90c5` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | sETH | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | savETH | own contract | 0x00ee7e… (selected) `0x00ee7ea7ca2b5cc47908f0cad1f296efbde1402e` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | savETHReservePool | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | savETHManager | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BrandCentral | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BrandNFT | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | skLOOT | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | skLOOTFactory | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | ModuleGuards | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | FlagHelper | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67942a9566a70446f7400a21240c5f71377c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | TransactionManager | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | Streamer | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | ETH2ReportValidator | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | ETH2ValidationLib | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | UniverseUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BrandCentralClaimAuction | unmatched — not counted | — | mentioned in findings as a contract with issues | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67942a9566a70446f7400a21240c5f71377c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | Streamer | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | TransactionManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | Banking | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | CollateralisedSlotManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | SlotSettlementRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5cf16077f349e999d6b21a4f646e83cd90c5` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | sETH | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | savETH | own contract | 0x00ee7e… (selected) `0x00ee7ea7ca2b5cc47908f0cad1f296efbde1402e` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | savETHManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7072b867f9546a232548a5d3271986b3c0c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | DKGRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | SafeBoxManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | ModuleGuards | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseUUPSCoreModule | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseAccessControls | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseUniverse | own contract | 0xc6306c… (selected) `0xc6306c52ea0405d3630249f202751ae3043056bd` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | SlotSettlementRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7072b867f9546a232548a5d3271986b3c0c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | savETH | own contract | 0x00ee7e… (selected) `0x00ee7ea7ca2b5cc47908f0cad1f296efbde1402e` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | CollateralisedSlotManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | sETH | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | Banking | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5cf16077f349e999d6b21a4f646e83cd90c5` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | savETHManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | Streamer | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67942a9566a70446f7400a21240c5f71377c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | TransactionRouter | own contract | 0x03f431… (selected) `0x03f4310bfe3968934bc11dfa17b8df809d7dea80` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseUUPSCoreModule | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | BaseModuleGuards | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | ModuleGuards | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | SafeBox | own contract | 0x8035a7… (selected) `0x8035a7ab484d57a5a82469e0d6a38b2c942afbef` — deployed 2022-09-22 21:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | DKGRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseUniverse | own contract | 0xc6306c… (selected) `0xc6306c52ea0405d3630249f202751ae3043056bd` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseAccessControls | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHDestinationGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHDestinationReporter | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHGatewaySignatureValidator | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHOriginGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHRegistryDestinationGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | StakeHouseUniverseDestinationGateway | unmatched — not counted | — | listed in scope section | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantMevAndFeesPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | SyndicateRewardsProcessor | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantLP | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | Syndicate | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | LiquidStakingManager | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantSavETHVaultPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantPoolBase | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | StakingFundsVault | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | LPToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | SavETHVault | unmatched — not counted | — | listed in scope and findings | no |
| Contract properties - LSD - Jul 2023 | ETHPoolFactory | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | SavETHVault | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | StakingFundsVault | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | Syndicate | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | LPToken | unmatched — not counted | — | Listed as contract in scope with properties | no |
| Contract properties - LSD - Jul 2023 | SyndicateRewardsProcessor | unmatched — not counted | — | Mentioned as contract state and invariants | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | ExitedUnknownSweeps | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | FullWithdrawals | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | PartialWithdrawals | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | QueueFlushETHClaim | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | ShanghaiSweepReporting | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | WithdrawalsDataStructures | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67942a9566a70446f7400a21240c5f71377c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7072b867f9546a232548a5d3271986b3c0c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Protocol properties - kETH - Oct 2023 | kETHVault | unmatched — not counted | — | Properties of KETHVault section | no |
| Protocol properties - kETH - Oct 2023 | DEthVault | unmatched — not counted | — | Properties of DETHVault section | no |
| Protocol properties - kETH - Oct 2023 | SavETHManagerHandler | unmatched — not counted | — | Properties of SavETHManagerHandler section | no |
| Protocol properties - kETH - Oct 2023 | SavETHManager | unmatched — not counted | — | Referenced in SavETHManagerHandler properties | no |
| Protocol properties - kETH - Oct 2023 | KETHStrategy | unmatched — not counted | — | Properties of KETHStrategy section | no |
| Protocol properties - kETH - Oct 2023 | ISwapper | unmatched — not counted | — | Properties of ISwapper section | no |
| Certora_Stakehouse_Report.pdf | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7072b867f9546a232548a5d3271986b3c0c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | SlotRegistry | own contract | 0xc01dc3… (selected) `0xc01dc3c7f83b12cfdf6c0aaa09c880eb45c48569` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | StakehouseRegistry | unmatched — not counted | — | listed in scope | no |
| Certora_Stakehouse_Report.pdf | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67942a9566a70446f7400a21240c5f71377c` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | Safebox | own contract | 0x8035a7… (selected) `0x8035a7ab484d57a5a82469e0d6a38b2c942afbef` — deployed 2022-09-22 21:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | TransactionRouter | own contract | 0x03f431… (selected) `0x03f4310bfe3968934bc11dfa17b8df809d7dea80` — deployed 2022-09-20 10:20:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Certora_Stakehouse_Report.pdf | StakeHouseUniverseFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 166 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 24 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 99 unmatched
- Matched-own operational status: 24 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=2, medium=1
- Match method counts: unique_name=24

Zero-match audit list:

- [24504] Runtime Verification - Formal Audit - dETH Gateway - Oct 2022
- [24505] code4rena - LSD Network Audit Contest - Nov 2022
- [24506] Contract properties - LSD - Jul 2023
- [24508] Protocol properties - kETH - Oct 2023
- [24509] Contract properties - LSD withdrawals - Oct 2023
- [24511] Formal Verification - LSD syndicate

Fork inheritance lineage and inherited audits are included when available.
